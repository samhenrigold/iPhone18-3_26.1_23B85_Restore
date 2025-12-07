uint64_t sub_4ABFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4AC4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

double sub_4ACA8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = (a2 - 1);
  }

  return result;
}

unint64_t sub_4ACEC()
{
  result = qword_1C6C00;
  if (!qword_1C6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6C00);
  }

  return result;
}

uint64_t sub_4AD40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_16C71C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_4AE34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_466D8();
}

uint64_t sub_4AED0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LoggingCorrectionsFlow(0);

  return sub_16C37C();
}

uint64_t sub_4AFB8()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_4B010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_8B38();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_4B060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_8B38();
  (*(v6 + 40))(v4, v5);
  return v4;
}

unint64_t sub_4B0B0()
{
  result = qword_1C6C50;
  if (!qword_1C6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6C50);
  }

  return result;
}

uint64_t sub_4B13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_4B254()
{
  v2 = v0[3];

  return sub_2D20(v0, v2);
}

uint64_t sub_4B270(uint64_t a1)
{

  return sub_16E6BC();
}

void sub_4B31C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_4B33C()
{

  return swift_slowAlloc();
}

BOOL sub_4B38C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_4B3A8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_4B3F0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_4B43C(uint64_t a1)
{

  return sub_8748(a1, v1, v2);
}

void *sub_4B454()
{
  v2 = v0[3];

  return sub_2D20(v0, v2);
}

uint64_t sub_4B470()
{

  return sub_8388(v0, v1 - 128);
}

uint64_t sub_4B488()
{

  return sub_2D64((v0 - 128));
}

uint64_t sub_4B52C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_4B564()
{
}

uint64_t sub_4B57C()
{
  sub_8A88();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 40) = v3;
  *(v0 + 240) = v4;
  v5 = sub_16DBEC();
  sub_5D41C(v5);
  *(v0 + 72) = v6;
  *(v0 + 80) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

void sub_4B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_5DA2C();
  a23 = v25;
  a24 = v26;
  sub_5DB0C();
  a22 = v24;
  v27 = *(v24 + 240);
  if (!(!v29 & v28))
  {
    switch(*(v24 + 240))
    {
      case 'Y':
        v32 = swift_task_alloc();
        *(v24 + 88) = v32;
        *v32 = v24;
        sub_5D31C(v32);
        sub_4B510();

        sub_4D300();
        return;
      case 'Z':
        v58 = swift_task_alloc();
        *(v24 + 96) = v58;
        *v58 = v24;
        sub_5D31C(v58);
        sub_4B510();

        sub_4D88C();
        return;
      case '[':
      case '\\':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'h':
      case 'j':
        goto LABEL_23;
      case ']':
        v56 = swift_task_alloc();
        *(v24 + 104) = v56;
        *v56 = v24;
        sub_5D31C(v56);
        sub_4B510();

        sub_4DCF4();
        return;
        v50 = swift_task_alloc();
        *(v24 + 112) = v50;
        *v50 = v24;
        sub_5D31C(v50);
        sub_4B510();

        sub_4E4C4();
        return;
      case 'a':
        v60 = swift_task_alloc();
        *(v24 + 120) = v60;
        *v60 = v24;
        sub_5D31C(v60);
        sub_4B510();

        sub_4EE7C();
        return;
      case 'g':
        v54 = swift_task_alloc();
        *(v24 + 128) = v54;
        *v54 = v24;
        sub_5D31C(v54);
        sub_4B510();

        sub_4F2E4();
        return;
      case 'i':
        v48 = swift_task_alloc();
        *(v24 + 136) = v48;
        *v48 = v24;
        sub_5D31C(v48);
        sub_4B510();

        sub_4F944();
        return;
      case 'k':
        v52 = swift_task_alloc();
        *(v24 + 144) = v52;
        *v52 = v24;
        sub_5D31C(v52);
        sub_4B510();

        sub_5091C();
        return;
      default:
        JUMPOUT(0);
    }
  }

  switch(v27)
  {
    case 159:
      v70 = swift_task_alloc();
      *(v24 + 184) = v70;
      *v70 = v24;
      sub_5D31C(v70);
      sub_4B510();

      sub_5254C();
      break;
    case 162:
      v74 = swift_task_alloc();
      *(v24 + 192) = v74;
      *v74 = v24;
      sub_5D31C(v74);
      sub_4B510();

      sub_52A88();
      break;
    case 170:
      v72 = swift_task_alloc();
      *(v24 + 200) = v72;
      *v72 = v24;
      sub_5D31C(v72);
      sub_4B510();

      sub_539F4();
      break;
    case 173:
      v62 = swift_task_alloc();
      *(v24 + 208) = v62;
      *v62 = v24;
      sub_5D31C(v62);
      sub_4B510();

      sub_53F30();
      break;
    case 174:
      v68 = swift_task_alloc();
      *(v24 + 216) = v68;
      *v68 = v24;
      sub_5D31C(v68);
      sub_4B510();

      sub_54398();
      break;
    case 184:
      v64 = swift_task_alloc();
      v65 = sub_5DBE0(v64);
      *v65 = v66;
      sub_5D31C(v65);
      sub_4B510();

      sub_54C6C();
      break;
    case 193:
      v30 = swift_task_alloc();
      *(v24 + 232) = v30;
      *v30 = v24;
      sub_5D31C(v30);
      sub_4B510();

      sub_550D4();
      break;
    default:
LABEL_23:
      v34 = sub_16DBBC();
      sub_5D954(v34);
      v35 = sub_38B40();
      v36(v35);
      v37 = sub_16DBDC();
      v38 = sub_16E37C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v24 + 240);
        v40 = sub_8BD8();
        v41 = swift_slowAlloc();
        a12 = v41;
        *v40 = 136315138;
        v42 = sub_208C0(v39);
        v44 = sub_3AB7C(v42, v43, &a12);

        *(v40 + 4) = v44;
        _os_log_impl(&def_259DC, v37, v38, "No pattern execution defined for %s", v40, 0xCu);
        sub_2D64(v41);
        sub_5D970();
        sub_8A2C(v40);
      }

      v45 = sub_C9F8();
      v46(v45);
      v47 = *(v24 + 240);
      a12 = 0;
      a13 = 0xE000000000000000;
      sub_16E47C(35);

      a12 = 0xD000000000000021;
      a13 = 0x800000000017DD40;
      v76._countAndFlagsBits = sub_208C0(v47);
      sub_16E26C(v76);

      sub_16E53C();
      sub_4B510();
      break;
  }
}

uint64_t sub_4C04C()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C148()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C244()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C340()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C43C()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C538()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C634()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C730()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C82C()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4C928()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4CA24()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4CB20()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4CC1C()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4CD18()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4CE14()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4CF10()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4D00C()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4D108()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4D204()
{
  sub_8A88();
  sub_5D690();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_5D680();

  return v4(v3);
}

uint64_t sub_4D300()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_4D768(uint64_t a1)
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v4 = v3;
  *v4 = *v2;

  sub_5DA54();
  if (v1)
  {
  }

  else
  {
    sub_5DED8();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v5);
}

uint64_t sub_4D88C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_4DCF4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_4E15C(uint64_t a1)
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v4 = v3;
  *v4 = *v2;

  sub_5DA54();
  if (v1)
  {
  }

  else
  {
    sub_5DED8();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v5);
}

uint64_t sub_4E280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  sub_5DB0C();
  v31 = v16[29];

  v27 = v16[17];
  v28 = v16[16];
  v17 = v16[13];
  v29 = v16[12];
  v30 = v16[10];
  sub_5CFC8(v16[21], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v17, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_4B510();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, a14, a15, a16);
}

uint64_t sub_4E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  sub_5DB0C();

  v27 = v16[17];
  v28 = v16[16];
  v17 = v16[13];
  v29 = v16[12];
  v30 = v16[10];
  sub_5CFC8(v16[21], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v17, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_4B510();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, v29, v30, a14, a15, a16);
}

uint64_t sub_4E4C4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  v0[11] = sub_8BC0();
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[12] = v7;
  sub_4348(v7);
  v8 = sub_8C38();
  v0[14] = sub_5E054(v8);
  v9 = sub_16BF5C();
  v0[15] = v9;
  sub_888C(v9);
  v0[16] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE60(v11);
  v13 = sub_5DD24(v12);
  v0[20] = sub_5DF7C(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[22] = sub_5E09C(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DD0C(v17);
  v19 = sub_5DCDC(v18);
  v0[26] = sub_5DF18(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_4EAC4(uint64_t a1)
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v5 = v4;
  *v5 = *v3;

  sub_5DA54();
  if (v2)
  {
  }

  else
  {
    *(v4 + 240) = v1;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v6);
}

uint64_t sub_4EBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v35 = v18[30];

  v30 = v18[19];
  v31 = v18[18];
  v19 = v18[14];
  v32 = v18[17];
  v33 = v18[13];
  v20 = v18[11];
  v34 = v18[10];
  sub_5CFC8(v18[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v20, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v19, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5DFC8();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, a16, a17, a18);
}

uint64_t sub_4ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  sub_5DB0C();

  v28 = v16[19];
  v29 = v16[18];
  v17 = v16[14];
  v30 = v16[17];
  v31 = v16[13];
  v18 = v16[11];
  v32 = v16[10];
  sub_5CFC8(v16[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v18, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v17, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_4B510();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, a14, a15, a16);
}

uint64_t sub_4EE7C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_4F2E4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v6 = sub_8BC0();
  v7 = sub_5E0FC(v6);
  v0[11] = v7;
  sub_888C(v7);
  v0[12] = v8;
  v9 = sub_8C38();
  v10 = sub_5E054(v9);
  v11 = sub_5DF48(v10);
  v0[16] = sub_5E03C(v11);
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v12;
  sub_4348(v12);
  v13 = sub_8C38();
  v14 = sub_5DD24(v13);
  v0[20] = sub_5DF7C(v14);
  v15 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v15);
  v16 = sub_8C38();
  v0[22] = sub_5E09C(v16);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v18 = sub_8C38();
  v19 = sub_5DD0C(v18);
  v20 = sub_5DCDC(v19);
  v21 = sub_5DF18(v20);
  v0[27] = sub_5DF30(v21);
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_4F820(uint64_t a1)
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v4 = v3;
  *v4 = *v2;

  sub_5DA54();
  if (v1)
  {
  }

  else
  {
    sub_5E0CC();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v5);
}

uint64_t sub_4F944()
{
  sub_8A88();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_2440(&qword_1C6C68, &qword_172958);
  v0[11] = v4;
  sub_888C(v4);
  v0[12] = v5;
  v6 = sub_8C38();
  v7 = sub_5E054(v6);
  v8 = sub_5DF48(v7);
  v9 = sub_5E03C(v8);
  v0[17] = sub_5DE18(v9);
  v10 = sub_16DBEC();
  v0[18] = v10;
  sub_888C(v10);
  v0[19] = v11;
  v12 = sub_8C38();
  v0[21] = sub_5DDB4(v12);
  v13 = sub_16BF5C();
  v0[22] = v13;
  sub_888C(v13);
  v0[23] = v14;
  v15 = sub_8C38();
  v16 = sub_5DCDC(v15);
  v17 = sub_5DF18(v16);
  v0[27] = sub_5DF30(v17);
  v18 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[28] = v18;
  sub_4348(v18);
  v0[29] = sub_8C38();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v19 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v19);
  v0[32] = sub_8C38();
  v0[33] = swift_task_alloc();
  v20 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v20);
  v0[34] = sub_8C38();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v21 = sub_17960();

  return _swift_task_switch(v21);
}

uint64_t sub_4FB8C()
{
  v108 = v0;
  v3 = *(v0 + 72);
  [v3 minimum];
  v5 = v4;
  [v3 maximum];
  v6 = sub_5D928();
  if (v6)
  {
    v3 = v6;
    sub_16BF3C();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 64);
  sub_5DCC4(*(v0 + 304), v8, v7, *(v0 + 176));
  v10 = [v9 end];
  if (v10)
  {
    v13 = v10;
    sub_16BF3C();

    v3 = 0;
  }

  v14 = *(v0 + 72);
  sub_5DC74(*(v0 + 296), v11, v12, *(v0 + 176));
  v15 = [v14 sampleStartDate];
  if (v15)
  {
    v3 = v15;
    sub_16BF3C();
  }

  v18 = sub_5D6A0(*(v0 + 288), v16, v17, *(v0 + 176));
  if (v18)
  {
    v21 = v18;
    sub_16BF3C();

    v3 = 0;
  }

  v22 = *(v0 + 64);
  sub_5DC74(*(v0 + 280), v19, v20, *(v0 + 176));
  type metadata accessor for WellnessTime(0);
  sub_5D600();
  v106 = v23;
  *(v0 + 312) = v23;
  v24 = sub_16BD9C();
  v25 = sub_5D350(v24);
  if (v25)
  {
    v26 = v25;
    v27 = *(v0 + 64);
    sub_16BF3C();

    v28 = [v27 end];
    if (v28)
    {
      v29 = v28;
      v98 = *(v0 + 264);
      v101 = v3;
      v103 = *(v0 + 216);
      v105 = *(v0 + 248);
      v30 = *(v0 + 184);
      v31 = *(v0 + 192);
      v32 = *(v0 + 176);
      v33 = *(v0 + 208);
      sub_16BF3C();

      v34 = *(v30 + 16);
      v35 = sub_5DBEC();
      v34(v35);
      (v34)(v31, v33, v32);
      sub_16BD5C();
      v22 = &dword_16F320;
      sub_5CFC8(v98, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v36, v37, v38, v101);
      sub_5E1D8();
      sub_12093C(105, v98, v105);
      v39 = *(v30 + 8);
      v39(v33, v32);
      v39(v103, v32);
      goto LABEL_18;
    }

    (*(*(v0 + 184) + 8))(*(v0 + 216), *(v0 + 176));
  }

  v40 = [*(v0 + 72) *(v1 + 2728)];
  if (v40)
  {
    v42 = v40;
    sub_16BF3C();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = *(v0 + 272);
  sub_5D8D0(v40, v43, v41, *(v0 + 176));
  sub_1218BC(105, v44, v45);
  v46 = sub_5CFC8(v44, &qword_1C57E0, &unk_171C60);
  sub_5DF94(v46, v47, &qword_1C57F8, &unk_172510);
LABEL_18:
  v48 = *(v0 + 168);
  v49 = *(v0 + 144);
  v50 = *(v0 + 152);
  v51 = sub_16DBBC();
  sub_5D954(v51);
  v104 = v51;
  v102 = *(v50 + 16);
  v102(v48, v51, v49);
  v52 = sub_C9C8();
  sub_372FC(v52, v53);
  v54 = sub_16DBDC();
  v55 = sub_16E36C();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 232);
  if (v56)
  {
    v99 = *(v0 + 168);
    v59 = *(v0 + 144);
    v58 = *(v0 + 152);
    sub_8BD8();
    v107 = sub_5D98C();
    *v22 = 136315138;
    v60 = sub_16E3DC();
    v62 = v61;
    sub_5CFC8(v57, &qword_1C57F8, &unk_172510);
    sub_3AB7C(v60, v62, &v107);
    sub_5DCF4();
    *(v22 + 1) = v57;
    _os_log_impl(&def_259DC, v54, v55, "Deep Link punch out: %s", v22, 0xCu);
    sub_5D6EC();
    sub_5D970();

    v63 = *(v58 + 8);
    v63(v99, v59);
  }

  else
  {
    v64 = *(v0 + 152);

    sub_5CFC8(v57, &qword_1C57F8, &unk_172510);
    v63 = *(v64 + 8);
    v65 = sub_C9E0();
    (v63)(v65);
  }

  sub_A6F70(*(v0 + 72));
  if (!v66)
  {
    sub_5CFC8(*(v0 + 264), &qword_1C5690, &dword_16F320);

    sub_5DB5C();
    sub_5CFC8(v57, &qword_1C57F8, &unk_172510);

    sub_5D8AC();
    sub_5E24C();

    __asm { BRAA            X2, X16 }
  }

  v97 = *(v0 + 144);
  v100 = v63;
  v95 = *(v0 + 120);
  v96 = *(v0 + 160);
  v67 = *(v0 + 112);
  v94 = *(v0 + 104);
  v69 = *(v0 + 88);
  v68 = *(v0 + 96);
  v70 = *(v0 + 72);
  sub_25908(0, &qword_1C6C70, NSUnitMass_ptr);
  sub_38B40();
  v71 = sub_9C23C();
  *(v0 + 320) = v71;
  [v70 minimum];
  v72 = v71;
  sub_16BCEC();
  [v70 maximum];
  v73 = v72;
  sub_16BCEC();
  v74 = objc_opt_self();
  v75 = [v74 poundsMass];
  sub_16BD1C();

  v76 = [v74 poundsMass];
  sub_16BD1C();

  sub_16BD0C();
  v77 = *(v68 + 8);
  *(v0 + 328) = v77;
  *(v0 + 336) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77(v94, v69);
  v77(v67, v69);
  sub_16BCFC();
  v79 = v78;
  v77(v95, v69);
  swift_beginAccess();
  v102(v96, v104, v97);
  v80 = sub_16DBDC();
  v81 = sub_16E36C();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 134218240;
    *(v82 + 4) = v79;
    *(v82 + 12) = 1024;
    *(v82 + 14) = v79 < 0.5;
    _os_log_impl(&def_259DC, v80, v81, "Weight difference is %f lbs, isDifferenceNegligible: %{BOOL}d", v82, 0x12u);
    sub_8A2C(v82);
  }

  v83 = *(v0 + 248);
  v85 = *(v0 + 72);
  v84 = *(v0 + 80);
  v86 = *(v0 + 64);

  v87 = sub_C9E0();
  v100(v87);
  sub_2D20((v84 + 120), *(v84 + 144));
  v88 = swift_task_alloc();
  *(v0 + 344) = v88;
  *(v88 + 16) = v106;
  *(v88 + 24) = v5 == v2;
  *(v88 + 32) = v85;
  *(v88 + 40) = 105;
  *(v88 + 48) = v86;
  *(v88 + 56) = v83;
  v89 = swift_task_alloc();
  *(v0 + 352) = v89;
  *v89 = v0;
  v89[1] = sub_504B8;
  sub_5E24C();

  return sub_740D8();
}

uint64_t sub_504B8(uint64_t a1)
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v5 = v4;
  *v5 = *v3;

  sub_5DA54();
  if (v2)
  {
  }

  else
  {
    *(v4 + 360) = v1;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v6);
}

uint64_t sub_505E4()
{
  v7 = v0[45];
  v2 = v0[40];

  v3 = sub_5E000();
  v1(v3);
  v4 = sub_C9F8();
  v1(v4);
  sub_5CFC8(v2, &qword_1C5690, &dword_16F320);
  sub_5CFC8(v0[31], &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v5(v7);
}

uint64_t sub_5079C()
{
  v2 = *(v0 + 320);

  v3 = sub_5E000();
  v1(v3);
  v4 = sub_C9F8();
  v1(v4);
  sub_5CFC8(v2, &qword_1C5690, &dword_16F320);
  sub_5DB5C();
  sub_5CFC8(v2, &qword_1C57F8, &unk_172510);

  v5 = sub_5D8AC();

  return v6(v5);
}

uint64_t sub_5091C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  v0[11] = sub_8BC0();
  v7 = sub_16BF5C();
  v0[12] = v7;
  sub_888C(v7);
  v0[13] = v8;
  v9 = sub_8C38();
  v10 = sub_5DF48(v9);
  v11 = sub_5E03C(v10);
  v0[17] = sub_5DE18(v11);
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[18] = v12;
  sub_4348(v12);
  v13 = sub_8C38();
  v14 = sub_5DF7C(v13);
  v0[21] = sub_5DDB4(v14);
  v15 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v15);
  v16 = sub_8C38();
  v0[23] = sub_5DE78(v16);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v18 = sub_8C38();
  v19 = sub_5DCDC(v18);
  v20 = sub_5DF18(v19);
  v0[27] = sub_5DF30(v20);
  v0[28] = swift_task_alloc();
  v21 = sub_17960();

  return _swift_task_switch(v21);
}

uint64_t sub_50FC4(uint64_t a1)
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v5 = v4;
  *v5 = *v3;

  sub_5DA54();
  if (v2)
  {
  }

  else
  {
    *(v4 + 256) = v1;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v6);
}

uint64_t sub_510F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v39 = v20[32];

  v21 = v20[21];
  v32 = v20[20];
  v33 = v20[19];
  v34 = v20[17];
  v35 = v20[16];
  v36 = v20[15];
  v37 = v20[14];
  v22 = v20[11];
  v38 = v20[10];
  sub_5CFC8(v20[23], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v21, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, v35, v36, v37, v38, v39, a18, a19, a20);
}

uint64_t sub_51254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();

  v19 = v18[21];
  v30 = v18[20];
  v31 = v18[19];
  v32 = v18[17];
  v33 = v18[16];
  v34 = v18[15];
  v35 = v18[14];
  v20 = v18[11];
  v36 = v18[10];
  sub_5CFC8(v18[23], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v20, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v19, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_5DFC8();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, a16, a17, a18);
}

uint64_t sub_513AC()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_51814()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_51C7C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_520E4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_5254C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v6 = sub_8BC0();
  v7 = sub_5E0FC(v6);
  v0[11] = v7;
  sub_888C(v7);
  v0[12] = v8;
  v9 = sub_8C38();
  v10 = sub_5E054(v9);
  v11 = sub_5DF48(v10);
  v0[16] = sub_5E03C(v11);
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v12;
  sub_4348(v12);
  v13 = sub_8C38();
  v14 = sub_5DD24(v13);
  v0[20] = sub_5DF7C(v14);
  v15 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v15);
  v16 = sub_8C38();
  v0[22] = sub_5E09C(v16);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v18 = sub_8C38();
  v19 = sub_5DD0C(v18);
  v20 = sub_5DCDC(v19);
  v21 = sub_5DF18(v20);
  v0[27] = sub_5DF30(v21);
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_52A88()
{
  sub_8A88();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v0[11] = sub_8BC0();
  v5 = sub_16DBEC();
  v0[12] = v5;
  sub_888C(v5);
  v0[13] = v6;
  v7 = sub_8C38();
  v0[15] = sub_5DF48(v7);
  v8 = sub_16BF5C();
  v0[16] = v8;
  sub_888C(v8);
  v0[17] = v9;
  v10 = sub_8C38();
  v11 = sub_5DD24(v10);
  v12 = sub_5DF7C(v11);
  v0[21] = sub_5DDB4(v12);
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[22] = v13;
  sub_4348(v13);
  v14 = sub_8C38();
  v15 = sub_5DD0C(v14);
  v0[25] = sub_5DCDC(v15);
  v16 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v16);
  v17 = sub_8C38();
  v0[27] = sub_5DF30(v17);
  v18 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v18);
  v0[28] = sub_8C38();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v19 = sub_17960();

  return _swift_task_switch(v19);
}

uint64_t sub_52C7C()
{
  v137 = v1;
  sub_5DA48();
  v5 = [v3 v4];
  if (v5)
  {
    v0 = v5;
    sub_16BF3C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v1 + 64);
  sub_5DCC4(*(v1 + 256), v7, v6, *(v1 + 128));
  v9 = [v8 end];
  if (v9)
  {
    v12 = v9;
    sub_16BF3C();

    v0 = 0;
  }

  v13 = *(v1 + 72);
  sub_5DC74(*(v1 + 248), v10, v11, *(v1 + 128));
  v14 = [v13 sampleStartDate];
  if (v14)
  {
    v0 = v14;
    sub_16BF3C();
  }

  v17 = sub_5D6A0(*(v1 + 240), v15, v16, *(v1 + 128));
  if (v17)
  {
    v20 = v17;
    sub_16BF3C();

    v0 = 0;
  }

  sub_5DC74(*(v1 + 232), v18, v19, *(v1 + 128));
  type metadata accessor for WellnessTime(0);
  sub_5D600();
  v135 = v21;
  *(v1 + 264) = v21;
  v22 = sub_16BD9C();
  v23 = sub_5D350(v22);
  if (v23)
  {
    v24 = v23;
    v25 = *(v1 + 64);
    sub_16BF3C();

    v26 = [v25 end];
    if (v26)
    {
      v27 = v26;
      v123 = *(v1 + 216);
      v126 = v0;
      v129 = *(v1 + 168);
      v132 = *(v1 + 200);
      v28 = *(v1 + 136);
      v29 = *(v1 + 144);
      v30 = *(v1 + 128);
      v31 = *(v1 + 160);
      sub_16BF3C();

      v32 = *(v28 + 16);
      v33 = sub_5DBEC();
      v32(v33);
      (v32)(v29, v31, v30);
      sub_16BD5C();
      sub_5CFC8(v123, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v34, v35, v36, v126);
      sub_5E1D8();
      sub_12093C(162, v123, v132);
      v37 = *(v28 + 8);
      v37(v31, v30);
      v37(v129, v30);
      goto LABEL_18;
    }

    (*(*(v1 + 136) + 8))(*(v1 + 168), *(v1 + 128));
  }

  v38 = [*(v1 + 72) *(v2 + 2728)];
  if (v38)
  {
    v40 = v38;
    sub_16BF3C();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = *(v1 + 224);
  sub_5D8D0(v38, v41, v39, *(v1 + 128));
  sub_1218BC(162, v42, v43);
  v44 = sub_5CFC8(v42, &qword_1C57E0, &unk_171C60);
  sub_5DF94(v44, v45, &qword_1C57F8, &unk_172510);
LABEL_18:
  v46 = *(v1 + 120);
  v47 = *(v1 + 96);
  v48 = *(v1 + 104);
  v49 = sub_16DBBC();
  sub_5D954(v49);
  v50 = *(v48 + 16);
  v50(v46, v49, v47);
  v51 = sub_C9C8();
  sub_372FC(v51, v52);
  v53 = sub_16DBDC();
  v54 = sub_16E36C();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v1 + 184);
  if (v55)
  {
    v133 = v49;
    v57 = *(v1 + 104);
    v124 = *(v1 + 96);
    v127 = *(v1 + 120);
    v58 = sub_8BD8();
    v130 = v50;
    v59 = swift_slowAlloc();
    v136 = v59;
    *v58 = 136315138;
    v60 = sub_16E3DC();
    v62 = v61;
    sub_5CFC8(v56, &qword_1C57F8, &unk_172510);
    v63 = v60;
    v49 = v133;
    v64 = sub_3AB7C(v63, v62, &v136);

    *(v58 + 4) = v64;
    _os_log_impl(&def_259DC, v53, v54, "Deep Link punch out: %s", v58, 0xCu);
    sub_2D64(v59);
    v65 = v59;
    v50 = v130;
    sub_8A2C(v65);
    sub_8A2C(v58);

    v68 = *(v57 + 8);
    v66 = (v57 + 8);
    v67 = v68;
    (v68)(v127, v124);
  }

  else
  {
    v69 = *(v1 + 120);
    v70 = *(v1 + 96);
    v71 = *(v1 + 104);

    sub_5CFC8(v56, &qword_1C57F8, &unk_172510);
    v72 = *(v71 + 8);
    v66 = (v71 + 8);
    v67 = v72;
    (v72)(v69, v70);
  }

  v73 = sub_A6F70(*(v1 + 72));
  v75 = sub_13A5C4(v73, v74);
  v77 = v76;
  *(v1 + 272) = v76;

  if (!v77)
  {
    v116 = *(v1 + 112);
    v117 = *(v1 + 96);
    swift_beginAccess();
    v50(v116, v49, v117);
    v118 = sub_16DBDC();
    v119 = sub_16E37C();
    if (os_log_type_enabled(v118, v119))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&def_259DC, v118, v119, "Failed to execute height pattern: no unit found in intent response.", v66, 2u);
      sub_8A2C(v66);
    }

    v120 = sub_C9F8();
    v67(v120);
    sub_5DB24();
    sub_5CFC8(v66, &qword_1C5690, &dword_16F320);
    sub_5CFC8(v67, &qword_1C57F8, &unk_172510);

    sub_5D8AC();
    sub_5E228();

    __asm { BRAA            X2, X16 }
  }

  v128 = *(v1 + 80);
  v78 = *(v1 + 72);
  v131 = *(v1 + 64);
  v134 = *(v1 + 200);
  [v78 minimum];
  v79 = sub_A6F70(v78);
  sub_5E080(v79, v80);

  [v78 maximum];
  v81 = sub_A6F70(v78);
  sub_5E080(v81, v82);

  sub_5840C(v78);
  v83 = sub_A6F70(v78);
  v85 = sub_5E080(v83, v84);

  v86 = sub_16D2DC();
  sub_8D14(v86);
  sub_16D2CC();
  sub_16D40C();

  sub_C9E0();
  sub_16E23C();
  v87 = sub_16D5CC();
  sub_388E4();
  sub_214C(v88, v89, v90, v87);
  sub_16D3FC();

  v125 = v75;
  v91 = sub_5DB18();
  sub_5CFC8(v91, v92, v93);
  v94 = sub_16D3EC();
  *(v1 + 280) = v94;

  swift_allocObject();
  sub_16D2CC();
  sub_16D40C();

  sub_C9E0();
  sub_16E23C();
  sub_388E4();
  sub_214C(v95, v96, v97, v87);
  sub_16D3FC();

  v98 = sub_5DB18();
  sub_5CFC8(v98, v99, &unk_16F510);
  v100 = sub_16D3EC();
  *(v1 + 288) = v100;

  [v78 minimum];
  [v78 maximum];
  v101 = sub_A6F70(v78);
  if (v102)
  {
    v109 = v102;
  }

  else
  {
    v101 = 0;
    v109 = 0xE000000000000000;
  }

  sub_5845C(v101, v109, v103, v104, v105, v106, v107, v108);
  v111 = v110;

  sub_2D20((v128 + 120), *(v128 + 144));
  v112 = swift_task_alloc();
  *(v1 + 296) = v112;
  *(v112 + 16) = v135;
  *(v112 + 24) = v111 & 1;
  *(v112 + 32) = v94;
  *(v112 + 40) = v100;
  *(v112 + 48) = v85;
  *(v112 + 56) = v125;
  *(v112 + 64) = v77;
  *(v112 + 72) = v131;
  *(v112 + 80) = v78;
  *(v112 + 88) = v134;
  v113 = swift_task_alloc();
  *(v1 + 304) = v113;
  *v113 = v1;
  v113[1] = sub_535EC;
  sub_5E228();

  return sub_71A7C();
}

uint64_t sub_535EC()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {

    v6 = sub_538C4;
  }

  else
  {

    *(v4 + 312) = v3;

    v6 = sub_53758;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_53758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v39 = v20[39];

  v21 = v20[25];
  v31 = v20[23];
  v32 = v20[21];
  v33 = v20[20];
  v34 = v20[19];
  v35 = v20[18];
  v36 = v20[15];
  v37 = v20[14];
  v38 = v20[11];
  sub_5CFC8(v20[27], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v21, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, a18, a19, a20);
}

uint64_t sub_538C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();

  sub_5DB24();
  sub_5CFC8(v20, &qword_1C5690, &dword_16F320);
  sub_5CFC8(v21, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_5E1A0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_539F4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v6 = sub_8BC0();
  v7 = sub_5E0FC(v6);
  v0[11] = v7;
  sub_888C(v7);
  v0[12] = v8;
  v9 = sub_8C38();
  v10 = sub_5E054(v9);
  v11 = sub_5DF48(v10);
  v0[16] = sub_5E03C(v11);
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v12;
  sub_4348(v12);
  v13 = sub_8C38();
  v14 = sub_5DD24(v13);
  v0[20] = sub_5DF7C(v14);
  v15 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v15);
  v16 = sub_8C38();
  v0[22] = sub_5E09C(v16);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v18 = sub_8C38();
  v19 = sub_5DD0C(v18);
  v20 = sub_5DCDC(v19);
  v21 = sub_5DF18(v20);
  v0[27] = sub_5DF30(v21);
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_53F30()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_54398()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v6 = sub_8BC0();
  v7 = sub_5E0FC(v6);
  v0[11] = v7;
  sub_888C(v7);
  v0[12] = v8;
  v9 = sub_8C38();
  v10 = sub_5E054(v9);
  v11 = sub_5DF48(v10);
  v0[16] = sub_5E03C(v11);
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v12;
  sub_4348(v12);
  v13 = sub_8C38();
  v14 = sub_5DD24(v13);
  v0[20] = sub_5DF7C(v14);
  v15 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v15);
  v16 = sub_8C38();
  v0[22] = sub_5E09C(v16);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v18 = sub_8C38();
  v19 = sub_5DD0C(v18);
  v20 = sub_5DCDC(v19);
  v21 = sub_5DF18(v20);
  v0[27] = sub_5DF30(v21);
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_548D4(uint64_t a1)
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v4 = v3;
  *v4 = *v2;

  sub_5DA54();
  if (v1)
  {
  }

  else
  {
    sub_5E0CC();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v5);
}

uint64_t sub_549F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v35 = v18[31];

  v19 = v18[20];
  v29 = v18[18];
  v30 = v18[16];
  v31 = v18[15];
  v32 = v18[14];
  v33 = v18[13];
  v34 = v18[10];
  sub_5CFC8(v18[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v19, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5DFC8();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, v33, v34, v35, a16, a17, a18);
}

uint64_t sub_54B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();

  v19 = v18[20];
  v29 = v18[18];
  v30 = v18[16];
  v31 = v18[15];
  v32 = v18[14];
  v33 = v18[13];
  v34 = v18[10];
  sub_5CFC8(v18[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v19, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_5DFC8();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, v31, v32, v33, v34, a16, a17, a18);
}

uint64_t sub_54C6C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v0[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v6);
  v7 = sub_8C38();
  v8 = sub_5DEA8(v7);
  v9 = sub_5DEC0(v8);
  v0[14] = v9;
  sub_888C(v9);
  v0[15] = v10;
  v11 = sub_8C38();
  v12 = sub_5DE18(v11);
  v13 = sub_5DE60(v12);
  v0[19] = sub_5DD24(v13);
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v15 = sub_8C38();
  v0[21] = sub_5DDB4(v15);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v16);
  v17 = sub_8C38();
  v18 = sub_5DE78(v17);
  v19 = sub_5DD0C(v18);
  v0[25] = sub_5DCDC(v19);
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_550D4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v6 = sub_8BC0();
  v7 = sub_5E0FC(v6);
  v0[11] = v7;
  sub_888C(v7);
  v0[12] = v8;
  v9 = sub_8C38();
  v10 = sub_5E054(v9);
  v11 = sub_5DF48(v10);
  v0[16] = sub_5E03C(v11);
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v12;
  sub_4348(v12);
  v13 = sub_8C38();
  v14 = sub_5DD24(v13);
  v0[20] = sub_5DF7C(v14);
  v15 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v15);
  v16 = sub_8C38();
  v0[22] = sub_5E09C(v16);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v18 = sub_8C38();
  v19 = sub_5DD0C(v18);
  v20 = sub_5DCDC(v19);
  v21 = sub_5DF18(v20);
  v0[27] = sub_5DF30(v21);
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_55610(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, void *a5, uint64_t a6)
{
  v75 = a6;
  v72 = a5;
  v70 = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  v76 = &v67 - v10;
  v11 = sub_16BF5C();
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v68 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57E0, &unk_171C60);
  v14 = __chkstk_darwin(v13 - 8);
  v71 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v73 = &v67 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v67 - v19;
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v23 = sub_2440(&qword_1C5800, &unk_16F510);
  v24 = __chkstk_darwin(v23 - 8);
  v74 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v67 - v26;
  active = type metadata accessor for WellnessQueryingActiveEnergyParameters(0);
  v29 = active[8];

  *(a1 + v29) = a2;
  v30 = a1;
  [a3 average];
  v32 = v31;
  v33 = sub_A6F70(a3);
  v34 = v70;
  v36 = sub_99F0C(v33, v35, v70, v32);

  v37 = v30 + active[5];
  *v37 = v36;
  *(v37 + 8) = 0;
  [a3 total];
  v39 = v38;
  v40 = sub_A6F70(a3);
  v42 = sub_99F0C(v40, v41, v34, v39);

  v43 = v30 + active[9];
  *v43 = v42;
  *(v43 + 8) = 0;
  sub_A6F70(a3);
  if (v44)
  {
    sub_16E23C();

    v45 = sub_16D5CC();
    v46 = 0;
  }

  else
  {
    v45 = sub_16D5CC();
    v46 = 1;
  }

  v47 = 1;
  sub_214C(v27, v46, 1, v45);
  sub_8640(v27, v30 + active[10]);
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v48 = v72;
  v49 = [v72 start];
  if (v49)
  {
    v50 = v49;
    sub_16BF3C();

    v47 = 0;
  }

  sub_214C(v20, v47, 1, v11);
  sub_5D03C(v20, v22, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v22, 1, v11))
  {
    sub_5CFC8(v22, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v51 = v68;
    v52 = v69;
    (*(v69 + 16))(v68, v22, v11);
    sub_5CFC8(v22, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v52 + 8))(v51, v11);
  }

  v53 = v73;
  sub_16D35C();

  v54 = [v48 end];
  if (v54)
  {
    v55 = v54;
    v56 = v71;
    sub_16BF3C();

    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v71;
  }

  sub_214C(v56, v57, 1, v11);
  sub_5D03C(v56, v53, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v53, 1, v11))
  {
    sub_5CFC8(v53, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v58 = v68;
    v59 = v69;
    (*(v69 + 16))(v68, v53, v11);
    sub_5CFC8(v53, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v59 + 8))(v58, v11);
  }

  sub_16D34C();

  v60 = sub_16D36C();

  v61 = active[7];

  *(v30 + v61) = v60;
  v62 = v76;
  sub_372FC(v75, v76);
  v63 = sub_16BE9C();
  if (sub_369C(v62, 1, v63) == 1)
  {
    sub_5CFC8(v62, &qword_1C57F8, &unk_172510);
    v64 = sub_16D5CC();
    v65 = v74;
    sub_214C(v74, 1, 1, v64);
  }

  else
  {
    v65 = v74;
    sub_61120(v74);
    (*(*(v63 - 8) + 8))(v62, v63);
  }

  return sub_8640(v65, v30);
}

uint64_t sub_55CC4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v106 = a7;
  v103 = a6;
  v108 = a5;
  v95 = a4;
  v10 = sub_16BF5C();
  v105 = *(v10 - 8);
  __chkstk_darwin(v10);
  v104 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v100 = &v93 - v16;
  v17 = __chkstk_darwin(v15);
  v97 = &v93 - v18;
  v19 = __chkstk_darwin(v17);
  v98 = &v93 - v20;
  v21 = __chkstk_darwin(v19);
  v93 = &v93 - v22;
  v23 = __chkstk_darwin(v21);
  v94 = &v93 - v24;
  v25 = __chkstk_darwin(v23);
  v96 = &v93 - v26;
  __chkstk_darwin(v25);
  v28 = &v93 - v27;
  v29 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v29 - 8);
  v31 = &v93 - v30;
  v32 = sub_2440(&qword_1C5800, &unk_16F510);
  v33 = __chkstk_darwin(v32 - 8);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v93 - v36;
  v102 = a2;
  sub_208C0(a2);
  sub_16E23C();

  v38 = sub_16D5CC();
  sub_214C(v37, 0, 1, v38);
  v39 = type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters(0);
  sub_8640(v37, a1 + *(v39 + 20));
  v107 = v39;
  v40 = *(v39 + 32);

  v101 = a3;
  *(a1 + v40) = a3;
  sub_372FC(v95, v31);
  v41 = sub_16BE9C();
  if (sub_369C(v31, 1, v41) == 1)
  {
    sub_5CFC8(v31, &qword_1C57F8, &unk_172510);
    sub_214C(v35, 1, 1, v38);
  }

  else
  {
    sub_61120(v35);
    (*(*(v41 - 8) + 8))(v31, v41);
  }

  sub_8640(v35, a1);
  v42 = sub_16D2AC();
  swift_allocObject();
  sub_16D29C();
  v43 = v108;
  [v108 average];
  v44 = &selRef_mostRecent;
  if (v45 > 0.0)
  {
    v44 = &selRef_average;
  }

  [v43 *v44];
  v47 = v46;
  v48 = sub_A6F70(v43);
  v49 = v102;
  v50 = a1;
  sub_99F0C(v48, v51, v102, v47);

  sub_16D43C();

  sub_16D42C();

  v52 = sub_16D41C();

  v53 = *(v107 + 28);

  v95 = v52;
  *(a1 + v53) = v52;
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v54 = [v106 start];
  if (v54)
  {
    v55 = v54;
    v56 = v96;
    sub_16BF3C();

    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v96;
  }

  sub_214C(v56, v57, 1, v10);
  sub_5D03C(v56, v28, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v28, 1, v10))
  {
    sub_5CFC8(v28, &qword_1C57E0, &unk_171C60);
    v58 = [v108 sampleEndDate];
    if (v58)
    {
      v59 = v58;
      v60 = v93;
      sub_16BF3C();

      v61 = 0;
      v62 = v99;
    }

    else
    {
      v61 = 1;
      v62 = v99;
      v60 = v93;
    }

    sub_214C(v60, v61, 1, v10);
    v65 = v94;
    sub_5D03C(v60, v94, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v65, 1, v10))
    {
      sub_5CFC8(v65, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v66 = v105;
      v67 = *(v105 + 16);
      v99 = v42;
      v68 = v104;
      v67(v104, v65, v10);
      sub_5CFC8(v65, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v66 + 8))(v68, v10);
    }
  }

  else
  {
    v63 = v104;
    v64 = v105;
    (*(v105 + 16))(v104, v28, v10);
    sub_5CFC8(v28, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v64 + 8))(v63, v10);
    v62 = v99;
  }

  sub_16D35C();

  v69 = [v106 end];
  if (v69)
  {
    v70 = v69;
    v71 = v97;
    sub_16BF3C();

    v72 = v71;
    v73 = 0;
    v74 = v100;
  }

  else
  {
    v73 = 1;
    v74 = v100;
    v72 = v97;
  }

  sub_214C(v72, v73, 1, v10);
  v75 = v72;
  v76 = v98;
  sub_5D03C(v75, v98, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v76, 1, v10))
  {
    v80 = v105;
    v81 = *(v105 + 16);
    v74 = v76;
LABEL_28:
    v82 = v104;
    v81(v104, v74, v10);
    sub_5CFC8(v74, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v80 + 8))(v82, v10);
    goto LABEL_29;
  }

  sub_5CFC8(v76, &qword_1C57E0, &unk_171C60);
  v77 = [v108 sampleEndDate];
  if (v77)
  {
    v78 = v77;
    sub_16BF3C();

    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  sub_214C(v62, v79, 1, v10);
  sub_5D03C(v62, v74, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v74, 1, v10))
  {
    v80 = v105;
    v81 = *(v105 + 16);
    goto LABEL_28;
  }

  sub_5CFC8(v74, &qword_1C57E0, &unk_171C60);
LABEL_29:
  sub_16D34C();

  v83 = sub_16D36C();

  v84 = *(v107 + 24);

  *(v50 + v84) = v83;
  v85 = sub_15EE1C();
  if (v85 < 3u || (result = sub_15C380(v85), (result & 1) != 0))
  {
    swift_allocObject();
    sub_16D29C();
    v87 = v108;
    [v108 average];
    v89 = v88;
    v90 = sub_A6F70(v87);
    sub_99F0C(v90, v91, v49, v89);

    sub_16D43C();

    sub_16D42C();

    v92 = sub_16D41C();

    *(v50 + v53) = v92;
  }

  return result;
}

uint64_t sub_566FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  v120 = a6;
  v121 = a7;
  v112 = a5;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v11 - 8);
  v122 = &v109 - v12;
  v13 = sub_16BF5C();
  v14 = *(v13 - 8);
  v116 = v13;
  v117 = v14;
  __chkstk_darwin(v13);
  v123 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  v17 = __chkstk_darwin(v16 - 8);
  v119 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v110 = &v109 - v20;
  v21 = __chkstk_darwin(v19);
  v111 = &v109 - v22;
  v23 = __chkstk_darwin(v21);
  v114 = &v109 - v24;
  v25 = __chkstk_darwin(v23);
  v115 = &v109 - v26;
  v27 = __chkstk_darwin(v25);
  v109 = &v109 - v28;
  v29 = __chkstk_darwin(v27);
  v113 = &v109 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v109 - v32;
  __chkstk_darwin(v31);
  v35 = &v109 - v34;
  v36 = sub_2440(&qword_1C5800, &unk_16F510);
  v37 = __chkstk_darwin(v36 - 8);
  v118 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v109 - v39;
  v41 = type metadata accessor for WellnessQueryingBloodGlucoseParameters(0);
  v42 = v41[10];

  *(a1 + v42) = a2;
  [a3 mostRecent];
  v44 = v43;
  v45 = sub_A6F70(a3);
  v47 = sub_99F0C(v45, v46, a4, v44);

  v48 = a1 + v41[12];
  *v48 = v47;
  *(v48 + 8) = 0;
  [a3 maximum];
  v50 = v49;
  v51 = sub_A6F70(a3);
  v53 = sub_99F0C(v51, v52, a4, v50);

  v54 = a1 + v41[8];
  *v54 = v53;
  *(v54 + 8) = 0;
  [a3 minimum];
  v56 = v55;
  v57 = sub_A6F70(a3);
  v59 = sub_99F0C(v57, v58, a4, v56);

  v124 = v41;
  v60 = v41[9];
  v61 = a1;
  v62 = a1 + v60;
  *v62 = v59;
  *(v62 + 8) = 0;
  if ((v112 & 1) == 0)
  {
    [a3 average];
    v64 = v63;
    v65 = sub_A6F70(a3);
    v67 = sub_99F0C(v65, v66, a4, v64);

    v68 = a1 + v124[5];
    *v68 = v67;
    *(v68 + 8) = 0;
  }

  sub_A6F70(a3);
  if (v69)
  {
    sub_16E23C();

    v70 = sub_16D5CC();
    v71 = 0;
  }

  else
  {
    v70 = sub_16D5CC();
    v71 = 1;
  }

  v72 = v120;
  v73 = v116;
  v74 = v113;
  v75 = 1;
  sub_214C(v40, v71, 1, v70);
  sub_8640(v40, v61 + v124[11]);
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v76 = [v72 start];
  if (v76)
  {
    v77 = v76;
    sub_16BF3C();

    v75 = 0;
  }

  sub_214C(v33, v75, 1, v73);
  sub_5D03C(v33, v35, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v35, 1, v73))
  {
    sub_5CFC8(v35, &qword_1C57E0, &unk_171C60);
    v78 = [a3 sampleEndDate];
    v79 = v117;
    if (v78)
    {
      v80 = v78;
      v81 = v109;
      sub_16BF3C();

      v82 = v81;
      v83 = 0;
      v84 = v114;
    }

    else
    {
      v83 = 1;
      v84 = v114;
      v82 = v109;
    }

    sub_214C(v82, v83, 1, v73);
    sub_5D03C(v82, v74, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v74, 1, v73))
    {
      sub_5CFC8(v74, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v86 = v123;
      (*(v79 + 16))(v123, v74, v73);
      sub_5CFC8(v74, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v79 + 8))(v86, v73);
    }
  }

  else
  {
    v79 = v117;
    v85 = v123;
    (*(v117 + 16))(v123, v35, v73);
    sub_5CFC8(v35, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v79 + 8))(v85, v73);
    v84 = v114;
  }

  sub_16D35C();

  v87 = [v72 end];
  if (v87)
  {
    v88 = v87;
    sub_16BF3C();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = v115;
  sub_214C(v84, v89, 1, v73);
  sub_5D03C(v84, v90, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v90, 1, v73))
  {
    sub_5CFC8(v90, &qword_1C57E0, &unk_171C60);
    v91 = [a3 sampleEndDate];
    if (v91)
    {
      v92 = v91;
      v93 = v110;
      sub_16BF3C();

      v94 = 0;
    }

    else
    {
      v94 = 1;
      v93 = v110;
    }

    v95 = v111;
    sub_214C(v93, v94, 1, v73);
    sub_5D03C(v93, v95, &qword_1C57E0, &unk_171C60);
    v98 = sub_369C(v95, 1, v73);
    v97 = v122;
    if (v98)
    {
      sub_5CFC8(v95, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v99 = v123;
      (*(v79 + 16))(v123, v95, v73);
      sub_5CFC8(v95, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v79 + 8))(v99, v73);
    }
  }

  else
  {
    v96 = v123;
    (*(v79 + 16))(v123, v90, v73);
    sub_5CFC8(v90, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v79 + 8))(v96, v73);
    v97 = v122;
  }

  sub_16D34C();

  v100 = sub_16D36C();

  v101 = v124[7];

  *(v61 + v101) = v100;
  v102 = [v72 start];
  if (v102)
  {
    v103 = v119;
    sub_16BF3C();

    v104 = 0;
  }

  else
  {
    v104 = 1;
    v103 = v119;
  }

  sub_214C(v103, v104, 1, v73);
  sub_5CFC8(v103, &qword_1C57E0, &unk_171C60);
  *(v61 + v124[13]) = v102 == 0;
  sub_372FC(v121, v97);
  v105 = sub_16BE9C();
  if (sub_369C(v97, 1, v105) == 1)
  {
    sub_5CFC8(v97, &qword_1C57F8, &unk_172510);
    v106 = sub_16D5CC();
    v107 = v118;
    sub_214C(v118, 1, 1, v106);
  }

  else
  {
    v107 = v118;
    sub_61120(v118);
    (*(*(v105 - 8) + 8))(v97, v105);
  }

  return sub_8640(v107, v61);
}

uint64_t sub_571A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8)
{
  v101 = a8;
  v106 = a7;
  v95 = a6;
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v12 - 8);
  v102 = &v91 - v13;
  v14 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v14 - 8);
  v103 = &v91 - v15;
  v16 = sub_16BF5C();
  v100 = *(v16 - 8);
  __chkstk_darwin(v16);
  v99 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2440(&qword_1C57E0, &unk_171C60);
  v19 = __chkstk_darwin(v18 - 8);
  v93 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v94 = &v91 - v22;
  v23 = __chkstk_darwin(v21);
  v97 = &v91 - v24;
  v25 = __chkstk_darwin(v23);
  v98 = &v91 - v26;
  v27 = __chkstk_darwin(v25);
  v91 = &v91 - v28;
  v29 = __chkstk_darwin(v27);
  v92 = &v91 - v30;
  v31 = __chkstk_darwin(v29);
  v96 = &v91 - v32;
  __chkstk_darwin(v31);
  v34 = &v91 - v33;
  v35 = type metadata accessor for WellnessQueryingBodyTemperatureParameters(0);
  v36 = v35[10];

  *(a1 + v36) = a2;
  sub_16D2AC();
  swift_allocObject();
  sub_16D29C();
  [a3 mostRecent];
  v38 = v37;
  v39 = sub_A6F70(a3);
  sub_99F0C(v39, v40, a4, v38);

  sub_16D43C();

  sub_16D42C();

  v41 = sub_16D41C();

  v42 = v35[11];

  *(a1 + v42) = v41;
  swift_allocObject();
  sub_16D29C();
  [a3 maximum];
  v44 = v43;
  v45 = sub_A6F70(a3);
  sub_99F0C(v45, v46, a4, v44);

  sub_16D43C();

  sub_16D42C();

  v47 = sub_16D41C();

  v48 = v35[8];

  *(a1 + v48) = v47;
  swift_allocObject();
  sub_16D29C();
  [a3 minimum];
  v50 = v49;
  v105 = a3;
  v51 = sub_A6F70(a3);
  sub_99F0C(v51, v52, a4, v50);

  sub_16D43C();

  sub_16D42C();

  v53 = sub_16D41C();

  v104 = v35;
  v54 = v35[9];

  *(a1 + v54) = v53;
  if ((v95 & 1) == 0)
  {
    swift_allocObject();
    sub_16D29C();
    v55 = v105;
    [v105 average];
    v57 = v56;
    v58 = sub_A6F70(v55);
    sub_99F0C(v58, v59, a4, v57);

    sub_16D43C();

    sub_16D42C();

    v60 = sub_16D41C();

    v61 = v104[5];

    *(a1 + v61) = v60;
  }

  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v62 = [v106 start];
  if (v62)
  {
    v63 = v62;
    v64 = v96;
    sub_16BF3C();

    v65 = 0;
    v67 = v99;
    v66 = v100;
  }

  else
  {
    v65 = 1;
    v67 = v99;
    v66 = v100;
    v64 = v96;
  }

  sub_214C(v64, v65, 1, v16);
  sub_5D03C(v64, v34, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v34, 1, v16))
  {
    sub_5CFC8(v34, &qword_1C57E0, &unk_171C60);
    v68 = [v105 sampleEndDate];
    if (v68)
    {
      v69 = v68;
      v70 = v91;
      sub_16BF3C();

      v71 = 0;
      v72 = v102;
    }

    else
    {
      v71 = 1;
      v72 = v102;
      v70 = v91;
    }

    sub_214C(v70, v71, 1, v16);
    v73 = v92;
    sub_5D03C(v70, v92, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v73, 1, v16))
    {
      sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v66 + 16))(v67, v73, v16);
      sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v66 + 8))(v67, v16);
    }
  }

  else
  {
    (*(v66 + 16))(v67, v34, v16);
    sub_5CFC8(v34, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v66 + 8))(v67, v16);
    v72 = v102;
  }

  sub_16D35C();

  v74 = [v106 end];
  if (v74)
  {
    v75 = v74;
    v76 = v97;
    sub_16BF3C();

    v77 = v76;
    v78 = 0;
    v79 = v103;
  }

  else
  {
    v78 = 1;
    v79 = v103;
    v77 = v97;
  }

  sub_214C(v77, v78, 1, v16);
  v80 = v77;
  v81 = v98;
  sub_5D03C(v80, v98, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v81, 1, v16) && ((sub_5CFC8(v81, &qword_1C57E0, &unk_171C60), (v82 = [v105 sampleEndDate]) == 0) ? (v85 = 1, v84 = v93) : (v83 = v82, v84 = v93, sub_16BF3C(), v83, v85 = 0), sub_214C(v84, v85, 1, v16), v81 = v94, sub_5D03C(v84, v94, &qword_1C57E0, &unk_171C60), sub_369C(v81, 1, v16)))
  {
    sub_5CFC8(v81, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    (*(v66 + 16))(v67, v81, v16);
    sub_5CFC8(v81, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v66 + 8))(v67, v16);
  }

  sub_16D34C();

  v86 = sub_16D36C();

  v87 = v104[7];

  *(a1 + v87) = v86;
  sub_372FC(v101, v72);
  v88 = sub_16BE9C();
  if (sub_369C(v72, 1, v88) == 1)
  {
    sub_5CFC8(v72, &qword_1C57F8, &unk_172510);
    v89 = sub_16D5CC();
    sub_214C(v79, 1, 1, v89);
  }

  else
  {
    sub_61120(v79);
    (*(*(v88 - 8) + 8))(v72, v88);
  }

  return sub_8640(v79, a1);
}

void sub_57C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_5DF60();
  v9 = v8;
  v118 = v10;
  v120 = v11;
  LODWORD(v121) = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v19);
  sub_433C();
  __chkstk_darwin(v20);
  sub_13088();
  v119 = v21;
  v22 = sub_16BF5C();
  sub_42F0();
  v116 = v23;
  __chkstk_darwin(v24);
  sub_12FD4();
  v115 = v25;
  v26 = sub_2440(&qword_1C57E0, &unk_171C60);
  v27 = sub_4348(v26);
  __chkstk_darwin(v27);
  sub_38634();
  v111 = v28;
  sub_89B4();
  __chkstk_darwin(v29);
  sub_8AC0();
  v112 = v30;
  sub_89B4();
  __chkstk_darwin(v31);
  sub_8AC0();
  v113 = v32;
  sub_89B4();
  __chkstk_darwin(v33);
  sub_8AC0();
  v114 = v34;
  sub_89B4();
  __chkstk_darwin(v35);
  sub_8AC0();
  v109 = v36;
  sub_89B4();
  __chkstk_darwin(v37);
  sub_8AC0();
  v110 = v38;
  sub_89B4();
  __chkstk_darwin(v39);
  sub_5DC10();
  __chkstk_darwin(v40);
  v42 = &v108 - v41;
  v43 = sub_2440(&qword_1C5800, &unk_16F510);
  v44 = sub_4348(v43);
  __chkstk_darwin(v44);
  sub_38634();
  v117 = v45;
  sub_89B4();
  __chkstk_darwin(v46);
  v48 = &v108 - v47;
  v49 = v9(0);
  v50 = v49[8];

  *(v18 + v50) = v16;
  [v14 total];
  v52 = v51;
  v53 = sub_A6F70(v14);
  v54 = v121;
  sub_99F0C(v53, v55, v121, v52);
  sub_5E194();

  sub_5DC68(v18 + v49[9]);
  [v14 average];
  v57 = v56;
  v58 = sub_A6F70(v14);
  sub_99F0C(v58, v59, v54, v57);
  sub_5E194();

  v121 = v49;
  v60 = v49[5];
  v61 = v14;
  sub_5DC68(v18 + v60);
  sub_A6F70(v14);
  if (v62)
  {
    sub_16E23C();

    v63 = sub_16D5CC();
    v64 = 0;
  }

  else
  {
    v63 = sub_16D5CC();
    v64 = 1;
  }

  v65 = 1;
  sub_214C(v48, v64, 1, v63);
  v66 = v18;
  sub_8640(v48, v18 + v121[10]);
  v67 = sub_16D38C();
  sub_8D14(v67);
  sub_16D37C();
  v68 = [v120 start];
  if (v68)
  {
    v69 = v68;
    sub_16BF3C();

    v65 = 0;
  }

  v70 = v115;
  sub_5DDCC(v7, v65);
  sub_5D03C(v7, v42, &qword_1C57E0, &unk_171C60);
  v71 = sub_5DA00();
  if (sub_369C(v71, v72, v22))
  {
    sub_5CFC8(v42, &qword_1C57E0, &unk_171C60);
    v73 = [v61 sampleStartDate];
    v74 = v116;
    if (v73)
    {
      v75 = v73;
      v76 = v109;
      sub_16BF3C();

      v77 = 0;
      v78 = v113;
    }

    else
    {
      v77 = 1;
      v78 = v113;
      v76 = v109;
    }

    sub_5DDCC(v76, v77);
    v83 = v110;
    sub_5D03C(v76, v110, &qword_1C57E0, &unk_171C60);
    if (sub_5DDE4(v83))
    {
      sub_5CFC8(v83, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
    }

    else
    {
      v84 = sub_5DF08();
      v85(v84, v83, v22);
      sub_5CFC8(v83, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v86 = sub_5E024();
      v87(v86);
      sub_5DC04();
    }
  }

  else
  {
    v74 = v116;
    v79 = sub_5DF08();
    v80(v79, v42, v22);
    sub_5CFC8(v42, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v81 = sub_5E024();
    v82(v81);
    sub_5DC04();
    v78 = v113;
  }

  v88 = sub_16D35C();

  v89 = [v120 end];
  if (v89)
  {
    v90 = v89;
    sub_16BF3C();

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v66;
  sub_5DDCC(v78, v91);
  v93 = v114;
  sub_5D03C(v78, v114, &qword_1C57E0, &unk_171C60);
  if (sub_5DDE4(v93) && ((sub_5CFC8(v93, &qword_1C57E0, &unk_171C60), (v94 = [v61 sampleEndDate]) == 0) ? (v97 = 1, v96 = v111) : (v95 = v94, v96 = v111, sub_16BF3C(), v95, v97 = 0), sub_5DDCC(v96, v97), v98 = v96, v93 = v112, sub_5D03C(v98, v112, &qword_1C57E0, &unk_171C60), sub_5DDE4(v93)))
  {
    sub_5CFC8(v93, &qword_1C57E0, &unk_171C60);
    _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  }

  else
  {
    v99 = sub_5DF08();
    v100(v99, v93, v22);
    sub_5CFC8(v93, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v74 + 8))(v70, v22);
    sub_5DC04();
  }

  sub_16D34C();

  sub_16D36C();
  sub_5E188();

  v101 = v121[7];

  *(v92 + v101) = v88;
  v102 = v119;
  sub_372FC(v118, v119);
  sub_16BE9C();
  v103 = sub_5E188();
  if (sub_369C(v103, 1, v88) == 1)
  {
    sub_5CFC8(v102, &qword_1C57F8, &unk_172510);
    v104 = sub_16D5CC();
    v105 = v117;
    sub_214C(v117, 1, 1, v104);
  }

  else
  {
    v105 = v117;
    sub_61120(v117);
    sub_5DE54();
    v106 = sub_38B40();
    v107(v106);
  }

  sub_8640(v105, v92);
  sub_5DFAC();
}

void sub_5845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_5DF60();
  v10 = v9;
  v12 = v11;
  v13 = sub_2440(&qword_1C6C58, &qword_1728B0);
  sub_42F0();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  sub_5E160();
  __chkstk_darwin(v20);
  sub_8AC0();
  v37 = v21;
  sub_89B4();
  __chkstk_darwin(v22);
  sub_5DC10();
  __chkstk_darwin(v23);
  v25 = &v34 - v24;
  sub_25908(0, &qword_1C6C60, NSUnitLength_ptr);

  v26 = sub_5CED0(v12, v10);
  sub_16BCEC();
  v27 = v26;
  v35 = v8;
  v36 = v27;
  sub_16BCEC();
  v28 = objc_opt_self();
  v29 = [v28 inches];
  sub_16BD1C();

  v30 = [v28 inches];
  sub_16BD1C();

  sub_16BD0C();
  v31 = *(v15 + 8);
  v31(v19, v13);
  v32 = sub_5DB18();
  (v31)(v32);
  sub_16BCFC();

  v33 = sub_C9C8();
  (v31)(v33);
  v31(v35, v13);
  v31(v25, v13);
  sub_5DFAC();
}

uint64_t sub_586E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, void *a10, uint64_t a11)
{
  v90 = a8;
  v84 = a7;
  v81 = a6;
  v76 = a4;
  v77 = a5;
  LODWORD(v89) = a3;
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v13 - 8);
  v88 = &v75 - v14;
  v15 = sub_16BF5C();
  v86 = *(v15 - 8);
  __chkstk_darwin(v15);
  v85 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  v18 = __chkstk_darwin(v17 - 8);
  v79 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v80 = &v75 - v21;
  v22 = __chkstk_darwin(v20);
  v82 = &v75 - v23;
  v24 = __chkstk_darwin(v22);
  v83 = &v75 - v25;
  v26 = __chkstk_darwin(v24);
  v78 = &v75 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v75 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v75 - v32;
  __chkstk_darwin(v31);
  v35 = &v75 - v34;
  v36 = sub_2440(&qword_1C5800, &unk_16F510);
  v37 = __chkstk_darwin(v36 - 8);
  v87 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v75 - v39;
  v41 = type metadata accessor for WellnessQueryingHeightParameters(0);
  v42 = *(v41 + 48);

  *(a1 + v42) = a2;
  v43 = v41;
  if ((v89 & 1) == 0)
  {
    v44 = *(v41 + 40);
    v45 = v76;

    *(a1 + v44) = v45;
    v46 = *(v43 + 36);
    v47 = v77;

    *(a1 + v46) = v47;
  }

  v89 = a10;
  sub_16D2DC();
  swift_allocObject();
  sub_16D2CC();
  sub_16D40C();

  sub_16E23C();
  v48 = 1;
  v81 = sub_16D5CC();
  sub_214C(v40, 0, 1, v81);
  sub_16D3FC();

  sub_5CFC8(v40, &qword_1C5800, &unk_16F510);
  v49 = sub_16D3EC();

  v84 = v43;
  v50 = *(v43 + 32);

  *(a1 + v50) = v49;
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v51 = [v90 start];
  if (v51)
  {
    v52 = v51;
    sub_16BF3C();

    v48 = 0;
  }

  v54 = v85;
  v53 = v86;
  sub_214C(v33, v48, 1, v15);
  sub_5D03C(v33, v35, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v35, 1, v15))
  {
    sub_5CFC8(v35, &qword_1C57E0, &unk_171C60);
    v55 = [v89 sampleEndDate];
    if (v55)
    {
      v56 = v55;
      v57 = v78;
      sub_16BF3C();

      v58 = 0;
    }

    else
    {
      v58 = 1;
      v57 = v78;
    }

    sub_214C(v57, v58, 1, v15);
    sub_5D03C(v57, v30, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v30, 1, v15))
    {
      sub_5CFC8(v30, &qword_1C57E0, &unk_171C60);
      goto LABEL_14;
    }

    (*(v53 + 16))(v54, v30, v15);
    v59 = v30;
  }

  else
  {
    (*(v53 + 16))(v54, v35, v15);
    v59 = v35;
  }

  sub_5CFC8(v59, &qword_1C57E0, &unk_171C60);
  sub_16BF2C();
  (*(v53 + 8))(v54, v15);
LABEL_14:
  sub_16D35C();

  v60 = [v90 end];
  if (v60)
  {
    v61 = v60;
    v62 = v82;
    sub_16BF3C();

    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v82;
  }

  sub_214C(v62, v63, 1, v15);
  v64 = v83;
  sub_5D03C(v62, v83, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v64, 1, v15) && ((sub_5CFC8(v64, &qword_1C57E0, &unk_171C60), (v65 = [v89 sampleEndDate]) == 0) ? (v68 = 1, v67 = v79) : (v66 = v65, v67 = v79, sub_16BF3C(), v66, v68 = 0), sub_214C(v67, v68, 1, v15), v64 = v80, sub_5D03C(v67, v80, &qword_1C57E0, &unk_171C60), sub_369C(v64, 1, v15)))
  {
    sub_5CFC8(v64, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    (*(v53 + 16))(v54, v64, v15);
    sub_5CFC8(v64, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v53 + 8))(v54, v15);
  }

  sub_16D34C();

  v69 = sub_16D36C();

  v70 = *(v84 + 44);

  *(a1 + v70) = v69;
  v71 = v88;
  sub_372FC(a11, v88);
  v72 = sub_16BE9C();
  if (sub_369C(v71, 1, v72) == 1)
  {
    sub_5CFC8(v71, &qword_1C57F8, &unk_172510);
    v73 = v87;
    sub_214C(v87, 1, 1, v81);
  }

  else
  {
    v73 = v87;
    sub_61120(v87);
    (*(*(v72 - 8) + 8))(v71, v72);
  }

  return sub_8640(v73, a1);
}

uint64_t sub_58FA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  v98 = a7;
  v102 = a6;
  v92 = a5;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v11 - 8);
  v99 = &v89 - v12;
  v13 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v13 - 8);
  v100 = &v89 - v14;
  v15 = sub_16BF5C();
  v97 = *(v15 - 8);
  __chkstk_darwin(v15);
  v96 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  v18 = __chkstk_darwin(v17 - 8);
  v90 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v91 = &v89 - v21;
  v22 = __chkstk_darwin(v20);
  v94 = &v89 - v23;
  v24 = __chkstk_darwin(v22);
  v95 = &v89 - v25;
  v26 = __chkstk_darwin(v24);
  v93 = &v89 - v27;
  v28 = __chkstk_darwin(v26);
  v89 = &v89 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v89 - v31;
  __chkstk_darwin(v30);
  v34 = &v89 - v33;
  v35 = type metadata accessor for WellnessQueryingBloodOxygenParameters(0);
  v36 = v35[10];

  *(a1 + v36) = a2;
  [a3 mostRecent];
  v38 = v37 * 100.0;
  v39 = sub_A6F70(a3);
  v41 = sub_99F0C(v39, v40, a4, v38);

  v42 = a1 + v35[12];
  *v42 = v41;
  *(v42 + 8) = 0;
  [a3 maximum];
  v44 = v43 * 100.0;
  v45 = sub_A6F70(a3);
  v47 = sub_99F0C(v45, v46, a4, v44);

  v48 = a1 + v35[8];
  *v48 = v47;
  *(v48 + 8) = 0;
  [a3 minimum];
  v50 = v49 * 100.0;
  v51 = sub_A6F70(a3);
  v53 = sub_99F0C(v51, v52, a4, v50);

  v101 = v35;
  v54 = v35[9];
  v55 = a1;
  v56 = a1 + v54;
  *v56 = v53;
  *(v56 + 8) = 0;
  if ((v92 & 1) == 0)
  {
    [a3 average];
    v58 = v57 * 100.0;
    v59 = sub_A6F70(a3);
    v61 = sub_99F0C(v59, v60, a4, v58);

    v62 = a1 + v101[5];
    *v62 = v61;
    *(v62 + 8) = 0;
  }

  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v63 = [v102 start];
  if (v63)
  {
    v64 = v63;
    sub_16BF3C();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = v96;
  v67 = v93;
  sub_214C(v32, v65, 1, v15);
  sub_5D03C(v32, v34, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v34, 1, v15))
  {
    sub_5CFC8(v34, &qword_1C57E0, &unk_171C60);
    v68 = [a3 sampleEndDate];
    v69 = v97;
    if (v68)
    {
      v70 = v68;
      sub_16BF3C();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v72 = v94;
    sub_214C(v67, v71, 1, v15);
    v73 = v89;
    sub_5D03C(v67, v89, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v73, 1, v15))
    {
      sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v69 + 16))(v66, v73, v15);
      sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v69 + 8))(v66, v15);
    }
  }

  else
  {
    v69 = v97;
    (*(v97 + 16))(v66, v34, v15);
    sub_5CFC8(v34, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v69 + 8))(v66, v15);
    v72 = v94;
  }

  sub_16D35C();

  v74 = [v102 end];
  if (v74)
  {
    v75 = v74;
    sub_16BF3C();

    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  v77 = v99;
  sub_214C(v72, v76, 1, v15);
  v78 = v95;
  sub_5D03C(v72, v95, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v78, 1, v15) && ((sub_5CFC8(v78, &qword_1C57E0, &unk_171C60), (v79 = [a3 sampleEndDate]) == 0) ? (v82 = 1, v81 = v90) : (v80 = v79, v81 = v90, sub_16BF3C(), v80, v82 = 0), sub_214C(v81, v82, 1, v15), v78 = v91, sub_5D03C(v81, v91, &qword_1C57E0, &unk_171C60), sub_369C(v78, 1, v15)))
  {
    sub_5CFC8(v78, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    (*(v69 + 16))(v66, v78, v15);
    sub_5CFC8(v78, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v69 + 8))(v66, v15);
  }

  sub_16D34C();

  v83 = sub_16D36C();

  v84 = v101[7];

  *(v55 + v84) = v83;
  sub_372FC(v98, v77);
  v85 = sub_16BE9C();
  if (sub_369C(v77, 1, v85) == 1)
  {
    sub_5CFC8(v77, &qword_1C57F8, &unk_172510);
    v86 = sub_16D5CC();
    v87 = v100;
    sub_214C(v100, 1, 1, v86);
  }

  else
  {
    v87 = v100;
    sub_61120(v100);
    (*(*(v85 - 8) + 8))(v77, v85);
  }

  return sub_8640(v87, v55);
}

void sub_598C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_5DF60();
  v9 = v8;
  v111 = v10;
  v114 = v11;
  LODWORD(v108) = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v19);
  sub_433C();
  __chkstk_darwin(v20);
  sub_13088();
  v112 = v21;
  v22 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v22);
  sub_433C();
  __chkstk_darwin(v23);
  sub_13088();
  v113 = v24;
  v25 = sub_16BF5C();
  sub_42F0();
  v110 = v26;
  __chkstk_darwin(v27);
  sub_12FD4();
  v109 = v28;
  v29 = sub_2440(&qword_1C57E0, &unk_171C60);
  v30 = sub_4348(v29);
  __chkstk_darwin(v30);
  sub_38634();
  v102 = v31;
  sub_89B4();
  __chkstk_darwin(v32);
  sub_8AC0();
  v103 = v33;
  sub_89B4();
  __chkstk_darwin(v34);
  sub_8AC0();
  v105 = v35;
  sub_89B4();
  __chkstk_darwin(v36);
  sub_8AC0();
  v106 = v37;
  sub_89B4();
  __chkstk_darwin(v38);
  sub_8AC0();
  v104 = v39;
  sub_89B4();
  __chkstk_darwin(v40);
  sub_5DC10();
  v42 = __chkstk_darwin(v41);
  v44 = &v101 - v43;
  __chkstk_darwin(v42);
  v46 = &v101 - v45;
  v47 = v9(0);
  v48 = v47[8];

  *(v18 + v48) = v16;
  [v14 total];
  v50 = v49;
  v51 = sub_A6F70(v14);
  v52 = v108;
  sub_99F0C(v51, v53, v108, v50);
  sub_5E194();

  sub_5DC68(v18 + v47[9]);
  [v14 average];
  v55 = v54;
  v107 = v14;
  v56 = sub_A6F70(v14);
  sub_99F0C(v56, v57, v52, v55);
  sub_5E194();
  v58 = v18;

  v108 = v47;
  sub_5DC68(v18 + v47[5]);
  v59 = sub_16D38C();
  sub_8D14(v59);
  sub_16D37C();
  v60 = [v114 start];
  if (v60)
  {
    v61 = v60;
    sub_16BF3C();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  sub_5DDCC(v44, v62);
  sub_5D03C(v44, v46, &qword_1C57E0, &unk_171C60);
  v63 = sub_5DA00();
  v65 = sub_369C(v63, v64, v25);
  v66 = v113;
  v67 = v110;
  v68 = v104;
  if (v65)
  {
    sub_5CFC8(v46, &qword_1C57E0, &unk_171C60);
    v69 = v107;
    v70 = [v107 sampleStartDate];
    if (v70)
    {
      v71 = v70;
      sub_16BF3C();

      v72 = 0;
    }

    else
    {
      v72 = 1;
    }

    sub_5DDCC(v68, v72);
    sub_5D03C(v68, v7, &qword_1C57E0, &unk_171C60);
    if (sub_5DDE4(v7))
    {
      sub_5CFC8(v7, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
      v14 = v109;
    }

    else
    {
      v77 = sub_5E174();
      v78(v77, v7, v25);
      sub_5CFC8(v7, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v79 = sub_5DBEC();
      v80(v79);
      sub_5DC04();
    }
  }

  else
  {
    v73 = sub_5E174();
    v74(v73, v46, v25);
    sub_5CFC8(v46, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v75 = sub_5DBEC();
    v76(v75);
    sub_5DC04();
    v69 = v107;
  }

  sub_16D35C();

  v81 = [v114 end];
  if (v81)
  {
    v82 = v81;
    v83 = v105;
    sub_16BF3C();

    v84 = 0;
  }

  else
  {
    v84 = 1;
    v83 = v105;
  }

  sub_5DDCC(v83, v84);
  v85 = v106;
  sub_5D03C(v83, v106, &qword_1C57E0, &unk_171C60);
  if (sub_5DDE4(v85) && ((sub_5CFC8(v85, &qword_1C57E0, &unk_171C60), (v86 = [v69 sampleEndDate]) == 0) ? (v89 = 1, v88 = v102) : (v87 = v86, v88 = v102, sub_16BF3C(), v87, v89 = 0), sub_5DDCC(v88, v89), v85 = v103, sub_5D03C(v88, v103, &qword_1C57E0, &unk_171C60), sub_5DDE4(v85)))
  {
    sub_5CFC8(v85, &qword_1C57E0, &unk_171C60);
    _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  }

  else
  {
    (*(v67 + 16))(v14, v85, v25);
    sub_5CFC8(v85, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v90 = sub_5DBEC();
    v91(v90);
    sub_5DC04();
  }

  sub_16D34C();

  v92 = sub_16D36C();

  v93 = v108[7];

  *(v58 + v93) = v92;
  v94 = v112;
  sub_372FC(v111, v112);
  v95 = sub_16BE9C();
  if (sub_369C(v94, 1, v95) == 1)
  {
    sub_5CFC8(v94, &qword_1C57F8, &unk_172510);
    v96 = sub_16D5CC();
    sub_214C(v66, 1, 1, v96);
  }

  else
  {
    sub_61120(v66);
    sub_5DE54();
    v97 = sub_C9C8();
    v98(v97);
  }

  v99 = sub_C9E0();
  sub_8640(v99, v100);
  sub_5DFAC();
}

uint64_t sub_5A014(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  v112 = a7;
  v117 = a6;
  v106 = a5;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v11 - 8);
  v113 = &v104 - v12;
  v13 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v13 - 8);
  v114 = &v104 - v14;
  v15 = sub_16BF5C();
  v116 = *(v15 - 8);
  __chkstk_darwin(v15);
  v115 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  v18 = __chkstk_darwin(v17 - 8);
  v111 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v104 = &v104 - v21;
  v22 = __chkstk_darwin(v20);
  v105 = &v104 - v23;
  v24 = __chkstk_darwin(v22);
  v109 = &v104 - v25;
  v26 = __chkstk_darwin(v24);
  v110 = &v104 - v27;
  v28 = __chkstk_darwin(v26);
  v107 = &v104 - v29;
  v30 = __chkstk_darwin(v28);
  v108 = &v104 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v104 - v33;
  __chkstk_darwin(v32);
  v36 = &v104 - v35;
  v37 = type metadata accessor for WellnessQueryingRespiratoryRateParameters(0);
  v38 = v37[10];

  *(a1 + v38) = a2;
  [a3 mostRecent];
  v40 = v39;
  v41 = sub_A6F70(a3);
  v43 = sub_99F0C(v41, v42, a4, v40);

  v44 = a1 + v37[12];
  *v44 = v43;
  *(v44 + 8) = 0;
  [a3 maximum];
  v46 = v45;
  v47 = sub_A6F70(a3);
  v49 = sub_99F0C(v47, v48, a4, v46);

  v50 = a1 + v37[8];
  *v50 = v49;
  *(v50 + 8) = 0;
  [a3 minimum];
  v52 = v51;
  v53 = sub_A6F70(a3);
  v55 = sub_99F0C(v53, v54, a4, v52);

  v56 = v37;
  v57 = v37[9];
  v58 = a1;
  v59 = a1 + v57;
  *v59 = v55;
  *(v59 + 8) = 0;
  if ((v106 & 1) == 0)
  {
    [a3 average];
    v61 = v60;
    v62 = sub_A6F70(a3);
    v64 = sub_99F0C(v62, v63, a4, v61);

    v65 = a1 + v56[5];
    *v65 = v64;
    *(v65 + 8) = 0;
  }

  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v66 = [v117 start];
  if (v66)
  {
    v67 = v66;
    sub_16BF3C();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = v107;
  v70 = v108;
  sub_214C(v34, v68, 1, v15);
  sub_5D03C(v34, v36, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v36, 1, v15))
  {
    sub_5CFC8(v36, &qword_1C57E0, &unk_171C60);
    v71 = [a3 sampleEndDate];
    if (v71)
    {
      v72 = v71;
      sub_16BF3C();

      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    v76 = v109;
    sub_214C(v69, v73, 1, v15);
    sub_5D03C(v69, v70, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v70, 1, v15))
    {
      sub_5CFC8(v70, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v77 = v115;
      v78 = v116;
      (*(v116 + 16))(v115, v70, v15);
      sub_5CFC8(v70, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v78 + 8))(v77, v15);
    }
  }

  else
  {
    v74 = v115;
    v75 = v116;
    (*(v116 + 16))(v115, v36, v15);
    sub_5CFC8(v36, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v75 + 8))(v74, v15);
    v76 = v109;
  }

  sub_16D35C();

  v79 = [v117 end];
  v80 = v114;
  if (v79)
  {
    v81 = v79;
    sub_16BF3C();

    v82 = 0;
  }

  else
  {
    v82 = 1;
  }

  v83 = v110;
  sub_214C(v76, v82, 1, v15);
  sub_5D03C(v76, v83, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v83, 1, v15))
  {
    sub_5CFC8(v83, &qword_1C57E0, &unk_171C60);
    v84 = [a3 sampleEndDate];
    if (v84)
    {
      v85 = v84;
      v86 = v104;
      sub_16BF3C();

      v87 = 0;
    }

    else
    {
      v87 = 1;
      v86 = v104;
    }

    v88 = v105;
    sub_214C(v86, v87, 1, v15);
    sub_5D03C(v86, v88, &qword_1C57E0, &unk_171C60);
    v93 = sub_369C(v88, 1, v15);
    v91 = v113;
    v92 = v58;
    if (v93)
    {
      sub_5CFC8(v88, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v95 = v115;
      v94 = v116;
      (*(v116 + 16))(v115, v88, v15);
      sub_5CFC8(v88, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v94 + 8))(v95, v15);
    }
  }

  else
  {
    v89 = v115;
    v90 = v116;
    (*(v116 + 16))(v115, v83, v15);
    sub_5CFC8(v83, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v90 + 8))(v89, v15);
    v91 = v113;
    v92 = v58;
  }

  sub_16D34C();

  v96 = sub_16D36C();

  v97 = v56[7];

  *(v92 + v97) = v96;
  v98 = [v117 start];
  if (v98)
  {
    v99 = v111;
    sub_16BF3C();

    v100 = 0;
  }

  else
  {
    v100 = 1;
    v99 = v111;
  }

  sub_214C(v99, v100, 1, v15);
  sub_5CFC8(v99, &qword_1C57E0, &unk_171C60);
  *(v92 + v56[13]) = v98 == 0;
  sub_372FC(v112, v91);
  v101 = sub_16BE9C();
  if (sub_369C(v91, 1, v101) == 1)
  {
    sub_5CFC8(v91, &qword_1C57F8, &unk_172510);
    v102 = sub_16D5CC();
    sub_214C(v80, 1, 1, v102);
  }

  else
  {
    sub_61120(v80);
    (*(*(v101 - 8) + 8))(v91, v101);
  }

  return sub_8640(v80, v92);
}

uint64_t sub_5AA14(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v95 = a6;
  v97 = a5;
  LODWORD(v98) = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  v96 = &v85 - v10;
  v11 = sub_16BF5C();
  v93 = *(v11 - 8);
  __chkstk_darwin(v11);
  v92 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57E0, &unk_171C60);
  v14 = __chkstk_darwin(v13 - 8);
  v88 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v89 = &v85 - v17;
  v18 = __chkstk_darwin(v16);
  v90 = &v85 - v19;
  v20 = __chkstk_darwin(v18);
  v91 = &v85 - v21;
  v22 = __chkstk_darwin(v20);
  v86 = &v85 - v23;
  v24 = __chkstk_darwin(v22);
  v87 = &v85 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v85 - v27;
  __chkstk_darwin(v26);
  v30 = &v85 - v29;
  v31 = sub_2440(&qword_1C5800, &unk_16F510);
  v32 = __chkstk_darwin(v31 - 8);
  v94 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v85 - v34;
  v36 = type metadata accessor for WellnessQueryingRestingEnergyParameters(0);
  v37 = v36[8];

  *(a1 + v37) = a2;
  [a3 average];
  v39 = v38;
  v40 = sub_A6F70(a3);
  v41 = v98;
  v43 = sub_99F0C(v40, v42, v98, v39);

  v44 = a1 + v36[5];
  *v44 = v43;
  *(v44 + 8) = 0;
  [a3 total];
  v46 = v45;
  v47 = sub_A6F70(a3);
  v49 = sub_99F0C(v47, v48, v41, v46);

  v98 = v36;
  v50 = v36[9];
  v51 = a3;
  v52 = a1 + v50;
  *v52 = v49;
  *(v52 + 8) = 0;
  sub_A6F70(a3);
  if (v53)
  {
    sub_16E23C();

    v54 = sub_16D5CC();
    v55 = 0;
  }

  else
  {
    v54 = sub_16D5CC();
    v55 = 1;
  }

  v56 = 1;
  sub_214C(v35, v55, 1, v54);
  v57 = a1;
  sub_8640(v35, a1 + v98[10]);
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v58 = [v97 start];
  if (v58)
  {
    v59 = v58;
    sub_16BF3C();

    v56 = 0;
  }

  v61 = v92;
  v60 = v93;
  sub_214C(v28, v56, 1, v11);
  sub_5D03C(v28, v30, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v30, 1, v11))
  {
    sub_5CFC8(v30, &qword_1C57E0, &unk_171C60);
    v62 = [v51 sampleStartDate];
    if (v62)
    {
      v63 = v62;
      v64 = v86;
      sub_16BF3C();

      v65 = 0;
      v66 = v90;
    }

    else
    {
      v65 = 1;
      v66 = v90;
      v64 = v86;
    }

    sub_214C(v64, v65, 1, v11);
    v67 = v87;
    sub_5D03C(v64, v87, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v67, 1, v11))
    {
      sub_5CFC8(v67, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v60 + 16))(v61, v67, v11);
      sub_5CFC8(v67, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v60 + 8))(v61, v11);
    }
  }

  else
  {
    (*(v60 + 16))(v61, v30, v11);
    sub_5CFC8(v30, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v60 + 8))(v61, v11);
    v66 = v90;
  }

  sub_16D35C();

  v68 = [v97 end];
  if (v68)
  {
    v69 = v68;
    sub_16BF3C();

    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v57;
  sub_214C(v66, v70, 1, v11);
  v72 = v91;
  sub_5D03C(v66, v91, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v72, 1, v11) && ((sub_5CFC8(v72, &qword_1C57E0, &unk_171C60), (v73 = [v51 sampleEndDate]) == 0) ? (v76 = 1, v75 = v88) : (v74 = v73, v75 = v88, sub_16BF3C(), v74, v76 = 0), sub_214C(v75, v76, 1, v11), v77 = v75, v72 = v89, sub_5D03C(v77, v89, &qword_1C57E0, &unk_171C60), sub_369C(v72, 1, v11)))
  {
    sub_5CFC8(v72, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    (*(v60 + 16))(v61, v72, v11);
    sub_5CFC8(v72, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v60 + 8))(v61, v11);
  }

  sub_16D34C();

  v78 = sub_16D36C();

  v79 = v98[7];

  *(v71 + v79) = v78;
  v80 = v96;
  sub_372FC(v95, v96);
  v81 = sub_16BE9C();
  if (sub_369C(v80, 1, v81) == 1)
  {
    sub_5CFC8(v80, &qword_1C57F8, &unk_172510);
    v82 = sub_16D5CC();
    v83 = v94;
    sub_214C(v94, 1, 1, v82);
  }

  else
  {
    v83 = v94;
    sub_61120(v94);
    (*(*(v81 - 8) + 8))(v80, v81);
  }

  return sub_8640(v83, v71);
}

uint64_t sub_5B30C(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v87 = a6;
  v90 = a5;
  LODWORD(v84) = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  v88 = &v77 - v10;
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v11 - 8);
  v89 = &v77 - v12;
  v13 = sub_16BF5C();
  v86 = *(v13 - 8);
  __chkstk_darwin(v13);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  v16 = __chkstk_darwin(v15 - 8);
  v78 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v79 = &v77 - v19;
  v20 = __chkstk_darwin(v18);
  v81 = &v77 - v21;
  v22 = __chkstk_darwin(v20);
  v82 = &v77 - v23;
  v24 = __chkstk_darwin(v22);
  v80 = &v77 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v77 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v77 - v30;
  __chkstk_darwin(v29);
  v33 = &v77 - v32;
  v34 = type metadata accessor for WellnessQueryingStepsParameters(0);
  v35 = v34[9];

  *(a1 + v35) = a2;
  [a3 total];
  v37 = v36;
  v38 = sub_A6F70(a3);
  v39 = v84;
  v41 = sub_99F0C(v38, v40, v84, v37);

  v42 = a1 + v34[10];
  *v42 = v41;
  *(v42 + 8) = 0;
  [a3 average];
  v44 = v43;
  v83 = a3;
  v45 = sub_A6F70(a3);
  v47 = sub_99F0C(v45, v46, v39, v44);
  v48 = a1;

  v84 = v34;
  v49 = a1 + v34[5];
  *v49 = v47;
  *(v49 + 8) = 0;
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v50 = [v90 start];
  if (v50)
  {
    v51 = v50;
    sub_16BF3C();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  sub_214C(v31, v52, 1, v13);
  sub_5D03C(v31, v33, &qword_1C57E0, &unk_171C60);
  v53 = sub_369C(v33, 1, v13);
  v54 = v89;
  v55 = v86;
  v56 = v80;
  if (v53)
  {
    sub_5CFC8(v33, &qword_1C57E0, &unk_171C60);
    v57 = v83;
    v58 = [v83 sampleStartDate];
    if (v58)
    {
      v59 = v58;
      sub_16BF3C();

      v60 = 0;
    }

    else
    {
      v60 = 1;
    }

    sub_214C(v56, v60, 1, v13);
    sub_5D03C(v56, v28, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v28, 1, v13))
    {
      sub_5CFC8(v28, &qword_1C57E0, &unk_171C60);
      v61 = v85;
    }

    else
    {
      v61 = v85;
      (*(v55 + 16))(v85, v28, v13);
      sub_5CFC8(v28, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v55 + 8))(v61, v13);
    }
  }

  else
  {
    v61 = v85;
    (*(v86 + 16))(v85, v33, v13);
    sub_5CFC8(v33, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v55 + 8))(v61, v13);
    v57 = v83;
  }

  sub_16D35C();

  v62 = [v90 end];
  if (v62)
  {
    v63 = v62;
    v64 = v81;
    sub_16BF3C();

    v65 = 0;
  }

  else
  {
    v65 = 1;
    v64 = v81;
  }

  sub_214C(v64, v65, 1, v13);
  v66 = v82;
  sub_5D03C(v64, v82, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v66, 1, v13) && ((sub_5CFC8(v66, &qword_1C57E0, &unk_171C60), (v67 = [v57 sampleEndDate]) == 0) ? (v70 = 1, v69 = v78) : (v68 = v67, v69 = v78, sub_16BF3C(), v68, v70 = 0), sub_214C(v69, v70, 1, v13), v66 = v79, sub_5D03C(v69, v79, &qword_1C57E0, &unk_171C60), sub_369C(v66, 1, v13)))
  {
    sub_5CFC8(v66, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    (*(v55 + 16))(v61, v66, v13);
    sub_5CFC8(v66, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v55 + 8))(v61, v13);
  }

  sub_16D34C();

  v71 = sub_16D36C();

  v72 = v84[7];

  *(v48 + v72) = v71;
  v73 = v88;
  sub_372FC(v87, v88);
  v74 = sub_16BE9C();
  if (sub_369C(v73, 1, v74) == 1)
  {
    sub_5CFC8(v73, &qword_1C57F8, &unk_172510);
    v75 = sub_16D5CC();
    sub_214C(v54, 1, 1, v75);
  }

  else
  {
    sub_61120(v54);
    (*(*(v74 - 8) + 8))(v73, v74);
  }

  return sub_8640(v54, v48);
}

void sub_5BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_5DF60();
  v10 = v9;
  v142 = v11;
  v143 = v12;
  LODWORD(v135) = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v20);
  sub_433C();
  __chkstk_darwin(v21);
  sub_13088();
  v144 = v22;
  sub_16BF5C();
  sub_42F0();
  v146 = v24;
  v147 = v23;
  __chkstk_darwin(v23);
  sub_12FD4();
  v145 = v25;
  v26 = sub_2440(&qword_1C57E0, &unk_171C60);
  v27 = sub_4348(v26);
  __chkstk_darwin(v27);
  sub_38634();
  v141 = v28;
  sub_89B4();
  __chkstk_darwin(v29);
  sub_8AC0();
  v133 = v30;
  sub_89B4();
  __chkstk_darwin(v31);
  sub_8AC0();
  v134 = v32;
  sub_89B4();
  v34 = __chkstk_darwin(v33);
  v36 = &v130 - v35;
  __chkstk_darwin(v34);
  sub_8AC0();
  v139 = v37;
  sub_89B4();
  __chkstk_darwin(v38);
  sub_8AC0();
  v131 = v39;
  sub_89B4();
  __chkstk_darwin(v40);
  sub_8AC0();
  v132 = v41;
  sub_89B4();
  __chkstk_darwin(v42);
  sub_8AC0();
  v136 = v43;
  sub_89B4();
  __chkstk_darwin(v44);
  v137 = &v130 - v45;
  v46 = sub_2440(&qword_1C5800, &unk_16F510);
  v47 = sub_4348(v46);
  __chkstk_darwin(v47);
  sub_38634();
  v140 = v48;
  sub_89B4();
  __chkstk_darwin(v49);
  sub_5E160();
  __chkstk_darwin(v50);
  v52 = &v130 - v51;
  v53 = v10(0);
  v54 = v53[10];

  *(v19 + v54) = v17;
  [v15 mostRecent];
  v55 = sub_5E1F8();
  sub_5DDFC(v55, v56);
  sub_5E210();
  sub_5DC68(v19 + v53[12]);
  [v15 maximum];
  v57 = sub_5E1F8();
  sub_5DDFC(v57, v58);
  sub_5E210();
  sub_5DC68(v19 + v53[8]);
  [v15 minimum];
  v59 = sub_5E1F8();
  sub_5DDFC(v59, v60);
  sub_5E210();
  v61 = v53[9];
  v148 = v19;
  sub_5DC68(v19 + v61);
  if ((v135 & 1) == 0)
  {
    [v15 average];
    v62 = sub_5E1F8();
    sub_5DDFC(v62, v63);
    sub_5E210();
    sub_5DC68(v148 + v53[5]);
  }

  sub_A6F70(v15);
  if (v64)
  {
    sub_16E21C();

    sub_16E23C();

    v65 = sub_16D5CC();
    sub_388E4();
    sub_214C(v66, v67, v68, v65);
    sub_5DE54();
    (*(v69 + 32))(v52, v8, v65);
  }

  else
  {
    v65 = sub_16D5CC();
    v70 = sub_5DA00();
    sub_214C(v70, v71, 1, v65);
    sub_16E23C();
    v72 = sub_5DA00();
    if (sub_369C(v72, v73, v65) != 1)
    {
      sub_5CFC8(v8, &qword_1C5800, &unk_16F510);
    }
  }

  sub_16D5CC();
  v74 = 1;
  sub_388E4();
  v135 = v65;
  sub_214C(v75, v76, v77, v65);
  sub_8640(v52, v148 + v53[11]);
  v78 = sub_16D38C();
  sub_8D14(v78);
  sub_16D37C();
  v79 = v142;
  v80 = [v142 start];
  v138 = v53;
  if (v80)
  {
    v81 = v80;
    v82 = v36;
    v83 = v136;
    sub_16BF3C();

    v74 = 0;
  }

  else
  {
    v82 = v36;
    v83 = v136;
  }

  v84 = v147;
  sub_214C(v83, v74, 1, v147);
  v85 = v83;
  v86 = v137;
  sub_5D03C(v85, v137, &qword_1C57E0, &unk_171C60);
  if (sub_5DDE4(v86))
  {
    sub_5CFC8(v86, &qword_1C57E0, &unk_171C60);
    v87 = [v15 sampleEndDate];
    if (v87)
    {
      v88 = v87;
      v89 = v131;
      sub_16BF3C();

      v90 = 0;
      v84 = v147;
    }

    else
    {
      v90 = 1;
      v84 = v147;
      v89 = v131;
    }

    sub_5DDCC(v89, v90);
    v93 = v132;
    sub_5D03C(v89, v132, &qword_1C57E0, &unk_171C60);
    if (sub_5DDE4(v93))
    {
      sub_5CFC8(v93, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
      goto LABEL_19;
    }

    v94 = v146;
    v95 = v145;
    (*(v146 + 16))(v145, v93, v84);
    sub_5CFC8(v93, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v94 + 8))(v95, v84);
  }

  else
  {
    v91 = v145;
    v92 = v146;
    (*(v146 + 16))(v145, v86, v84);
    sub_5CFC8(v86, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v92 + 8))(v91, v84);
  }

  sub_5DC04();
LABEL_19:
  v96 = sub_16D35C();

  v97 = [v79 end];
  if (v97)
  {
    v98 = v97;
    sub_16BF3C();

    v99 = 0;
  }

  else
  {
    v99 = 1;
  }

  v100 = v139;
  sub_5DDCC(v82, v99);
  sub_5D03C(v82, v100, &qword_1C57E0, &unk_171C60);
  v101 = sub_5DA00();
  if (sub_369C(v101, v102, v84))
  {
    sub_5CFC8(v100, &qword_1C57E0, &unk_171C60);
    v103 = [v15 sampleEndDate];
    if (v103)
    {
      v104 = v103;
      v105 = v133;
      sub_16BF3C();

      v106 = 0;
    }

    else
    {
      v106 = 1;
      v105 = v133;
    }

    v107 = v134;
    sub_5DDCC(v105, v106);
    sub_5D03C(v105, v107, &qword_1C57E0, &unk_171C60);
    v114 = sub_5DA00();
    v116 = sub_369C(v114, v115, v84);
    v112 = v148;
    v113 = v138;
    if (v116)
    {
      sub_5CFC8(v107, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
    }

    else
    {
      v118 = v145;
      v117 = v146;
      v119 = sub_5E138();
      v120(v119);
      sub_5CFC8(v107, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v117 + 8))(v118, v84);
      sub_5DC04();
    }
  }

  else
  {
    v108 = v145;
    v109 = v146;
    v110 = sub_5E138();
    v111(v110);
    sub_5CFC8(v100, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v109 + 8))(v108, v84);
    sub_5DC04();
    v112 = v148;
    v113 = v138;
  }

  sub_16D34C();

  sub_16D36C();
  sub_5E188();

  v121 = v113[7];

  *(v112 + v121) = v96;
  v122 = [v79 start];
  if (v122)
  {
    v123 = v141;
    sub_16BF3C();

    v124 = 0;
  }

  else
  {
    v124 = 1;
    v123 = v141;
  }

  sub_5DDCC(v123, v124);
  sub_5CFC8(v123, &qword_1C57E0, &unk_171C60);
  *(v112 + v113[13]) = v122 == 0;
  v125 = v144;
  sub_372FC(v143, v144);
  sub_16BE9C();
  v126 = sub_5E188();
  if (sub_369C(v126, 1, v123) == 1)
  {
    sub_5CFC8(v125, &qword_1C57F8, &unk_172510);
    v127 = v140;
    sub_214C(v140, 1, 1, v135);
  }

  else
  {
    v127 = v140;
    sub_61120(v140);
    sub_5DE54();
    v128 = sub_38B40();
    v129(v128);
  }

  sub_8640(v127, v112);
  sub_5DFAC();
}

uint64_t sub_5C55C(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v101 = a7;
  v103 = a6;
  v104 = a4;
  v94 = a3;
  v10 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v10 - 8);
  v102 = &v91 - v11;
  v12 = sub_16BF5C();
  v99 = *(v12 - 8);
  __chkstk_darwin(v12);
  v98 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2440(&qword_1C57E0, &unk_171C60);
  v15 = __chkstk_darwin(v14 - 8);
  v97 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v93 = &v91 - v18;
  v19 = __chkstk_darwin(v17);
  v95 = &v91 - v20;
  v21 = __chkstk_darwin(v19);
  v96 = &v91 - v22;
  v23 = __chkstk_darwin(v21);
  v91 = &v91 - v24;
  v25 = __chkstk_darwin(v23);
  v92 = &v91 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v91 - v28;
  __chkstk_darwin(v27);
  v31 = &v91 - v30;
  v32 = sub_2440(&qword_1C5800, &unk_16F510);
  v33 = __chkstk_darwin(v32 - 8);
  v100 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v91 - v35;
  v37 = type metadata accessor for WellnessQueryingWeightParameters(0);
  v38 = v37[10];

  *(a1 + v38) = a2;
  v39 = v104;
  v40 = a1;
  v41 = v37;
  if ((v94 & 1) == 0)
  {
    [v104 minimum];
    v43 = v42;
    v44 = sub_A6F70(v39);
    v46 = sub_99F0C(v44, v45, a5, v43);

    v47 = v40 + v37[9];
    *v47 = v46;
    *(v47 + 8) = 0;
    [v39 maximum];
    v49 = v48;
    v50 = sub_A6F70(v39);
    v52 = sub_99F0C(v50, v51, a5, v49);

    v53 = v40 + v37[8];
    *v53 = v52;
    *(v53 + 8) = 0;
  }

  sub_5840C(v39);
  v55 = v54;
  v56 = sub_A6F70(v39);
  v58 = sub_99F0C(v56, v57, a5, v55);

  v59 = v40 + v37[12];
  *v59 = v58;
  *(v59 + 8) = 0;
  sub_A6F70(v39);
  if (v60)
  {
    sub_16E23C();

    v61 = sub_16D5CC();
    v62 = 0;
  }

  else
  {
    v61 = sub_16D5CC();
    v62 = 1;
  }

  v63 = v98;
  v64 = 1;
  sub_214C(v36, v62, 1, v61);
  sub_8640(v36, v40 + v41[11]);
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v65 = [v103 start];
  if (v65)
  {
    v66 = v65;
    sub_16BF3C();

    v64 = 0;
  }

  sub_214C(v29, v64, 1, v12);
  sub_5D03C(v29, v31, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v31, 1, v12))
  {
    sub_5CFC8(v31, &qword_1C57E0, &unk_171C60);
    v67 = [v104 sampleEndDate];
    v68 = v99;
    if (v67)
    {
      v69 = v67;
      v70 = v91;
      sub_16BF3C();

      v71 = 0;
      v72 = v97;
    }

    else
    {
      v71 = 1;
      v72 = v97;
      v70 = v91;
    }

    sub_214C(v70, v71, 1, v12);
    v73 = v92;
    sub_5D03C(v70, v92, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v73, 1, v12))
    {
      sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v68 + 16))(v63, v73, v12);
      sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v68 + 8))(v63, v12);
    }
  }

  else
  {
    v68 = v99;
    (*(v99 + 16))(v63, v31, v12);
    sub_5CFC8(v31, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v68 + 8))(v63, v12);
    v72 = v97;
  }

  sub_16D35C();

  v74 = [v103 end];
  if (v74)
  {
    v75 = v74;
    v76 = v95;
    sub_16BF3C();

    v77 = 0;
  }

  else
  {
    v77 = 1;
    v76 = v95;
  }

  sub_214C(v76, v77, 1, v12);
  v78 = v96;
  sub_5D03C(v76, v96, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v78, 1, v12))
  {
    sub_5CFC8(v78, &qword_1C57E0, &unk_171C60);
    v79 = [v104 sampleEndDate];
    if (v79)
    {
      v80 = v79;
      sub_16BF3C();

      v81 = 0;
    }

    else
    {
      v81 = 1;
    }

    v83 = v93;
    sub_214C(v72, v81, 1, v12);
    sub_5D03C(v72, v83, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v83, 1, v12))
    {
      sub_5CFC8(v83, &qword_1C57E0, &unk_171C60);
      goto LABEL_28;
    }

    (*(v68 + 16))(v63, v83, v12);
    v82 = v83;
  }

  else
  {
    (*(v68 + 16))(v63, v78, v12);
    v82 = v78;
  }

  sub_5CFC8(v82, &qword_1C57E0, &unk_171C60);
  sub_16BF2C();
  (*(v68 + 8))(v63, v12);
LABEL_28:
  sub_16D34C();

  v84 = sub_16D36C();

  v85 = v41[6];

  *(v40 + v85) = v84;
  v86 = v102;
  sub_372FC(v101, v102);
  v87 = sub_16BE9C();
  if (sub_369C(v86, 1, v87) == 1)
  {
    sub_5CFC8(v86, &qword_1C57F8, &unk_172510);
    v88 = sub_16D5CC();
    v89 = v100;
    sub_214C(v100, 1, 1, v88);
  }

  else
  {
    v89 = v100;
    sub_61120(v100);
    (*(*(v87 - 8) + 8))(v86, v87);
  }

  return sub_8640(v89, v40);
}

id sub_5CED0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_16E1AC();

  v4 = [v2 initWithSymbol:v3];

  return v4;
}

uint64_t sub_5CFC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2440(a2, a3);
  sub_5DE54();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_5D03C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2440(a3, a4);
  sub_5DE54();
  (*(v6 + 32))(a2, a1);
  return a2;
}

id sub_5D350(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  v4 = *(v3 + 2704);

  return [v2 v4];
}

uint64_t sub_5D390()
{
  sub_214C(*(v1 + 176), v0, 1, *(v1 + 112));

  return type metadata accessor for WellnessTime(0);
}

uint64_t sub_5D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_214C(v12, 0, 1, a10);

  return sub_5D03C(v12, v11, v10, v13);
}

id sub_5D430(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  sub_214C(v2[25], a2, 1, v2[14]);

  return [v3 end];
}

uint64_t sub_5D4A0()
{
  sub_2D20((*(v0 + 56) + 120), *(*(v0 + 56) + 144));

  return swift_task_alloc();
}

uint64_t sub_5D4E0(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214C(v5, v4, 1, a4);

  return type metadata accessor for WellnessTime(0);
}

uint64_t sub_5D564(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 216) = result;
  *(result + 16) = a12;
  *(result + 24) = v13;
  return result;
}

uint64_t sub_5D578(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5D5B0()
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 112);

  return sub_214C(v3, v0, 1, v4);
}

uint64_t sub_5D5D8()
{
  v3 = *(v1 + 192);
  v4 = *(v1 + 112);

  return sub_214C(v3, v0, 1, v4);
}

void sub_5D600()
{

  sub_15BF80();
}

uint64_t sub_5D63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_214C(v14, 0, 1, a11);

  return sub_5D03C(v14, v12, v11, v13);
}

id sub_5D6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214C(a1, v4, 1, a4);

  return [v5 sampleEndDate];
}

uint64_t sub_5D6EC()
{
  sub_2D64(v0);
}

uint64_t sub_5D740()
{

  return swift_slowAlloc();
}

void sub_5D7D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_5D7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_214C(a1, v4, 1, a4);
}

uint64_t sub_5D814@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 32) = a2;
  *(result + 40) = v3;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_5D824(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_5D864()
{

  return swift_slowAlloc();
}

uint64_t sub_5D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_5CFC8(a11, v11, v12);
}

uint64_t sub_5D8BC@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 32) = a2;
  *(result + 33) = v2;
  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t sub_5D8F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 232) = result;
  *(result + 16) = a14;
  *(result + 24) = v15;
  return result;
}

uint64_t sub_5D904(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 216);
  v5 = *(v2 + 88);

  return sub_214C(v4, a2, 1, v5);
}

id sub_5D928()
{

  return [v0 start];
}

uint64_t sub_5D954(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_5D970()
{
}

uint64_t sub_5D98C()
{

  return swift_slowAlloc();
}

uint64_t sub_5D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;

  return sub_16DBEC();
}

BOOL sub_5D9E4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_5DA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_5CFC8(a10, v10, v11);
}

unint64_t sub_5DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_3AB7C(v8, v9, va);
}

uint64_t sub_5DA88()
{

  return sub_16BD5C();
}

uint64_t sub_5DAA4(uint64_t a1)
{
  *(v1 + 208) = a1;

  return sub_16BD9C();
}

uint64_t sub_5DAC0(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5DADC(uint64_t a1)
{

  return sub_16DBBC();
}

unint64_t sub_5DC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_3AB7C(v12, v13, va);
}

uint64_t sub_5DC40()
{

  return sub_16BD5C();
}

uint64_t sub_5DC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_214C(a1, v4, 1, a4);
}

uint64_t sub_5DC8C(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5DCA8(uint64_t a1)
{
  *(v1 + 224) = a1;

  return sub_16BD9C();
}

uint64_t sub_5DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_214C(a1, a2, 1, a4);
}

uint64_t sub_5DCDC(uint64_t a1)
{
  *(v1 + 192) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DCF4()
{
}

uint64_t sub_5DD0C(uint64_t a1)
{
  *(v1 + 184) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DD24(uint64_t a1)
{
  *(v1 + 144) = a1;

  return swift_task_alloc();
}

void sub_5DD3C()
{
}

uint64_t sub_5DD54(float a1)
{
  *v1 = a1;

  return sub_16E3DC();
}

uint64_t sub_5DD6C(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5DD84(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5DD9C(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5DDB4(uint64_t a1)
{
  *(v1 + 160) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DDCC(uint64_t a1, uint64_t a2)
{

  return sub_214C(a1, a2, 1, v2);
}

uint64_t sub_5DDE4(uint64_t a1)
{

  return sub_369C(a1, 1, v1);
}

double sub_5DDFC(uint64_t a1, uint64_t a2)
{

  return sub_99F0C(a1, a2, v2, v4);
}

uint64_t sub_5DE18(uint64_t a1)
{
  *(v1 + 128) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DE60(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DE78(uint64_t a1)
{
  *(v1 + 176) = a1;

  return swift_task_alloc();
}

id sub_5DE90()
{
  v3 = *(v1 + 2712);

  return [v0 v3];
}

uint64_t sub_5DEA8(uint64_t a1)
{
  *(v1 + 96) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DEC0(uint64_t a1)
{
  *(v1 + 104) = a1;

  return sub_16BF5C();
}

uint64_t sub_5DED8()
{
  *(v1 + 232) = v0;
}

uint64_t sub_5DEF0(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5DF18(uint64_t a1)
{
  *(v1 + 200) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF30(uint64_t a1)
{
  *(v1 + 208) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF48(uint64_t a1)
{
  *(v1 + 112) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF7C(uint64_t a1)
{
  *(v1 + 152) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_5D03C(v5, v4, a3, a4);
}

uint64_t sub_5E03C(uint64_t a1)
{
  *(v1 + 120) = a1;

  return swift_task_alloc();
}

uint64_t sub_5E054(uint64_t a1)
{
  *(v1 + 104) = a1;

  return swift_task_alloc();
}

double sub_5E080(uint64_t a1, uint64_t a2)
{

  return sub_99F0C(a1, a2, 162, v3);
}

uint64_t sub_5E09C(uint64_t a1)
{
  *(v1 + 168) = a1;

  return swift_task_alloc();
}

id sub_5E0B4()
{
  v3 = *(v0 + 48);
  v4 = *(v1 + 2728);

  return [v3 v4];
}

uint64_t sub_5E0CC()
{
  *(v1 + 248) = v0;
}

uint64_t sub_5E0E4(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5E0FC(uint64_t a1)
{
  *(v1 + 80) = a1;

  return sub_16BF5C();
}

uint64_t sub_5E114(uint64_t a1)
{

  return sub_16BF3C();
}

uint64_t sub_5E1D8()
{

  return sub_5D03C(v3, v0, v1, v2);
}

uint64_t sub_5E1F8()
{

  return sub_A6F70(v0);
}

uint64_t sub_5E210()
{
}

uint64_t sub_5E270()
{
  sub_8A88();
  *(v0 + 168) = v1;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  v4 = sub_16DBEC();
  *(v0 + 136) = v4;
  sub_888C(v4);
  *(v0 + 144) = v5;
  *(v0 + 152) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_5E318()
{
  v1 = *(v0 + 168);
  v2 = (v1 - 89) > 0x3E || ((1 << (v1 - 89)) & 0x6400000000054181) == 0;
  if (v2 && ((v3 = v1 - 155, v4 = v3 > 0x22, v5 = (1 << v3) & 0x4200C8091, !v4) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_5E750(v0 + 16, v0 + 56);
    v9 = *(v0 + 80);
    sub_8748(v0 + 56, &qword_1C5ED0, &qword_171090);
    if (v9)
    {
      sub_60248();
    }

    else
    {
      v10 = sub_16DBBC();
      sub_8B48(v10, v0 + 96);
      v11 = sub_3BD68();
      v12(v11);
      v13 = sub_16DBDC();
      v14 = sub_16E37C();
      if (sub_1BA1C(v14))
      {
        v15 = sub_1BA38();
        sub_1BA50(v15);
        sub_1B9D0(&def_259DC, v16, v17, "#GenerateLoggingResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
        sub_1BA00();
      }

      v18 = *(v0 + 120);

      v19 = sub_60238();
      v20(v19);
      sub_8748(v0 + 16, &qword_1C5ED0, &qword_171090);
      sub_60260();
      *(v18 + 32) = 0;
    }

    sub_C9BC();

    return v21();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_5E530;

    return sub_5E7C0();
  }
}

uint64_t sub_5E530()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_5E614()
{
  sub_5E750(v0 + 16, v0 + 56);
  v1 = *(v0 + 80);
  sub_8748(v0 + 56, &qword_1C5ED0, &qword_171090);
  if (v1)
  {
    sub_60248();
  }

  else
  {
    v2 = sub_16DBBC();
    sub_8B48(v2, v0 + 96);
    v3 = sub_3BD68();
    v4(v3);
    v5 = sub_16DBDC();
    v6 = sub_16E37C();
    if (sub_1BA1C(v6))
    {
      v7 = sub_1BA38();
      sub_1BA50(v7);
      sub_1B9D0(&def_259DC, v8, v9, "#GenerateLoggingResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
      sub_1BA00();
    }

    v10 = *(v0 + 120);

    v11 = sub_60238();
    v12(v11);
    sub_8748(v0 + 16, &qword_1C5ED0, &qword_171090);
    sub_60260();
    *(v10 + 32) = 0;
  }

  sub_C9BC();

  return v13();
}

uint64_t sub_5E750(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5ED0, &qword_171090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E7C0()
{
  sub_8A88();
  *(v0 + 528) = v1;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v4);
  *(v0 + 184) = sub_8BC0();
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  *(v0 + 192) = sub_8C38();
  *(v0 + 200) = swift_task_alloc();
  *(v0 + 208) = swift_task_alloc();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  *(v0 + 216) = sub_8BC0();
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v7);
  *(v0 + 224) = sub_8BC0();
  v8 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v8);
  *(v0 + 232) = sub_8BC0();
  v9 = type metadata accessor for HealthDataLogModel(0);
  *(v0 + 240) = v9;
  sub_4348(v9);
  *(v0 + 248) = sub_8C38();
  *(v0 + 256) = swift_task_alloc();
  *(v0 + 264) = swift_task_alloc();
  *(v0 + 272) = swift_task_alloc();
  v10 = sub_16DBEC();
  *(v0 + 280) = v10;
  sub_888C(v10);
  *(v0 + 288) = v11;
  *(v0 + 296) = sub_8C38();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  v12 = type metadata accessor for SnippetHeaderModel(0);
  *(v0 + 328) = v12;
  sub_4348(v12);
  *(v0 + 336) = sub_8C38();
  *(v0 + 344) = swift_task_alloc();
  *(v0 + 352) = swift_task_alloc();
  v13 = sub_16BF5C();
  *(v0 + 360) = v13;
  sub_888C(v13);
  *(v0 + 368) = v14;
  *(v0 + 376) = sub_8BC0();
  v15 = sub_17960();

  return _swift_task_switch(v15);
}

uint64_t sub_5EA50()
{
  sub_8A88();
  sub_208C0(*(v0 + 528));
  *(v0 + 384) = v1;
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  v2[1] = sub_5EAF4;

  return sub_66E84();
}

uint64_t sub_5EAF4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;
  *(v7 + 400) = v5;
  *(v7 + 408) = v6;

  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_5EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v77 = v12;
  if (sub_208C0(*(v12 + 528)) == 0xD000000000000028 && 0x800000000017CF90 == v13)
  {
  }

  else
  {
    v15 = sub_16E6BC();

    if ((v15 & 1) == 0)
    {
      [*(v12 + 176) doubleValue];
      v17 = v16;
      goto LABEL_9;
    }
  }

  [*(v12 + 176) doubleValue];
  v17 = v18 * 100.0;
LABEL_9:
  v19 = *(v12 + 176);
  v20 = *(v12 + 528);
  v21 = sub_5FF28(v19);
  *(v12 + 416) = sub_99F0C(v21, v22, v20, v17);

  v23 = sub_5FE84(v20, v19);
  v25 = v24;
  *(v12 + 424) = v23;
  *(v12 + 432) = v24;
  v26 = [v19 start];
  if (v26)
  {
    v27 = v26;
    sub_16BF3C();

    if (v25 && *(v12 + 408))
    {
      v29 = *(v12 + 344);
      v28 = *(v12 + 352);
      v30 = *(v12 + 320);
      v31 = *(v12 + 328);
      v32 = *(v12 + 280);
      v33 = *(v12 + 288);
      v34 = *(v12 + 528);
      sub_16E23C();

      v35 = sub_25948(v34);
      v37 = v36;
      v38 = sub_208C0(v34);
      v39 = (v28 + *(v31 + 20));
      *v39 = v35;
      v39[1] = v37;
      v40 = (v28 + *(v31 + 24));
      *v40 = v38;
      v40[1] = v41;
      v42 = sub_16DBBC();
      *(v12 + 440) = v42;
      sub_8B48(v42, v12 + 80);
      v43 = *(v33 + 16);
      *(v12 + 448) = v43;
      *(v12 + 456) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43(v30, v42, v32);
      sub_60220();
      sub_600D0(v28, v29, v44);
      v45 = sub_16DBDC();
      v46 = sub_16E36C();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v12 + 344);
      if (v47)
      {
        v49 = *(v12 + 336);
        v50 = *(v12 + 288);
        v74 = *(v12 + 280);
        v75 = *(v12 + 320);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136315138;
        sub_600D0(v48, v49, type metadata accessor for SnippetHeaderModel);
        v53 = sub_16E1EC();
        v55 = v54;
        sub_60130(v48, type metadata accessor for SnippetHeaderModel);
        v56 = sub_3AB7C(v53, v55, &v76);

        *(v51 + 4) = v56;
        _os_log_impl(&def_259DC, v45, v46, "#GenerateLoggingResponseOutput: Snippet header model %s", v51, 0xCu);
        sub_2D64(v52);
        sub_8A2C(v52);
        sub_8A2C(v51);

        (*(v50 + 8))(v75, v74);
      }

      else
      {

        sub_601F0();
        sub_60130(v48, v70);
        v71 = sub_60238();
        v72(v71);
      }

      sub_16D4CC();
      swift_allocObject();
      sub_16D4BC();
      sub_16BF2C();
      sub_16D4AC();

      *(v12 + 464) = sub_16D49C();

      v73 = swift_task_alloc();
      *(v12 + 472) = v73;
      *v73 = v12;
      v73[1] = sub_5F1B8;

      return sub_66A84(0x646567676F6CLL, 0xE600000000000000);
    }

    (*(*(v12 + 368) + 8))(*(v12 + 376), *(v12 + 360));
  }

  else
  {
  }

  v57 = sub_16DBBC();
  sub_8B48(v57, v12 + 56);
  v58 = sub_3BD68();
  v59(v58);
  v60 = sub_16DBDC();
  v61 = sub_16E37C();
  if (sub_1BA1C(v61))
  {
    v62 = sub_1BA38();
    sub_1BA50(v62);
    sub_1B9D0(&def_259DC, v63, v64, "#GenerateLoggingResponseOutput: Response start is nil. or unit/category labels are nil");
    sub_1BA00();
  }

  v65 = *(v12 + 168);

  v66 = sub_60238();
  v67(v66);
  *(v65 + 32) = 0;
  sub_60260();
  sub_60188();

  sub_C9BC();

  return v68();
}

uint64_t sub_5F1B8()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 480) = v3;
  *(v1 + 488) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_5F2A4()
{
  v85 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v74 = *(v0 + 480);
  v76 = *(v0 + 432);
  v81 = *(v0 + 424);
  v83 = *(v0 + 416);
  v3 = *(v0 + 328);
  v4 = *(v0 + 264);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v71 = *(v0 + 208);
  v9 = *(v0 + 528);
  sub_60220();
  sub_600D0(v10, v6, v11);
  sub_214C(v6, 0, 1, v3);
  v12 = sub_16BD9C();
  sub_214C(v8, 1, 1, v12);
  sub_12093C(v9, v8, v7);
  sub_8748(v8, &qword_1C5690, &dword_16F320);
  v79 = v1;
  v13 = 0x646567676F4CLL;
  if (v1)
  {
    v13 = v74;
  }

  v75 = v13;
  sub_214C(v4, 1, 1, v3);
  v14 = v5[5];
  v15 = (v4 + v5[8]);
  v16 = (v4 + v5[9]);
  v17 = v5[10];
  v72 = sub_16C11C();
  v73 = v17;
  sub_214C(v4 + v17, 1, 1, v72);

  sub_5FF8C(v6, v4);
  *(v4 + v14) = v2;
  *v15 = v81;
  v15[1] = v76;
  v77 = v4;
  *v16 = sub_94294(v83, 0);
  v16[1] = v18;
  sub_16D45C();
  v19 = sub_16D5CC();
  if (sub_369C(v71, 1, v19) == 1)
  {
    sub_8748(*(v0 + 208), &qword_1C5800, &unk_16F510);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = *(v0 + 208);
    v23 = sub_16D5BC();
    v25 = v24;
    (*(*(v19 - 8) + 8))(v22, v19);
    *(v0 + 152) = v23;
    *(v0 + 160) = v25;
    sub_9854();
    v20 = sub_16E3FC();
    v21 = v26;
  }

  v27 = *(v0 + 200);
  v28 = (*(v0 + 264) + *(*(v0 + 240) + 24));
  *v28 = v20;
  v28[1] = v21;
  sub_16D46C();
  v29 = sub_369C(v27, 1, v19);
  v30 = *(v0 + 200);
  v82 = v19;
  if (v29 == 1)
  {
    sub_8748(v30, &qword_1C5800, &unk_16F510);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = sub_16D5BC();
    v32 = v33;
    (*(*(v19 - 8) + 8))(v30, v19);
  }

  v34 = *(v0 + 440);
  v66 = *(v0 + 488);
  v67 = *(v0 + 312);
  v35 = *(v0 + 272);
  v68 = *(v0 + 280);
  v69 = *(v0 + 448);
  v36 = *(v0 + 264);
  v70 = *(v0 + 256);
  v38 = *(v0 + 232);
  v37 = *(v0 + 240);
  v39 = *(v0 + 224);
  v40 = *(v0 + 184);
  v41 = (v36 + *(v37 + 28));
  v42 = (v36 + *(v37 + 44));
  *v41 = v31;
  v41[1] = v32;
  sub_14A3C8(v39);
  sub_8748(v39, &qword_1C57F8, &unk_172510);
  sub_8748(v38, &dword_1C63F8, &qword_171800);
  sub_214C(v40, 0, 1, v72);
  sub_5FFFC(v40, v77 + v73);
  v43 = 0xE600000000000000;
  if (v79)
  {
    v43 = v66;
  }

  *v42 = v75;
  v42[1] = v43;
  sub_6006C(v36, v35);
  sub_8B48(v34, v0 + 104);
  v69(v67, v34, v68);
  sub_60208();
  sub_600D0(v35, v70, v44);
  v45 = sub_16DBDC();
  v46 = sub_16E36C();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 312);
  v49 = *(v0 + 280);
  v50 = *(v0 + 288);
  v51 = *(v0 + 256);
  if (v47)
  {
    v80 = *(v0 + 280);
    v52 = *(v0 + 248);
    v53 = swift_slowAlloc();
    v78 = v48;
    v54 = swift_slowAlloc();
    v84 = v54;
    *v53 = 136315138;
    sub_600D0(v51, v52, type metadata accessor for HealthDataLogModel);
    v55 = sub_16E1EC();
    v57 = v56;
    sub_60130(v51, type metadata accessor for HealthDataLogModel);
    v58 = sub_3AB7C(v55, v57, &v84);

    *(v53 + 4) = v58;
    _os_log_impl(&def_259DC, v45, v46, "#GenerateLoggingResponseOutput: Snippet model %s", v53, 0xCu);
    sub_2D64(v54);
    sub_8A2C(v54);
    sub_8A2C(v53);

    v59 = *(v50 + 8);
    v59(v78, v80);
  }

  else
  {

    sub_601D8();
    sub_60130(v51, v60);
    v59 = *(v50 + 8);
    v59(v48, v49);
  }

  *(v0 + 496) = v59;
  v61 = *(v0 + 192);
  sub_16E23C();

  sub_214C(v61, 0, 1, v82);
  v62 = swift_task_alloc();
  *(v0 + 504) = v62;
  *v62 = v0;
  v62[1] = sub_5F898;
  v63 = *(v0 + 192);
  v64 = *(v0 + 528);

  return sub_61474(v64, v83, 0, v63, 2, 0);
}

uint64_t sub_5F898()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 192);
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 512) = v7;

  sub_8748(v4, &qword_1C5800, &unk_16F510);
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_5F9AC()
{
  if (!v0[64])
  {
    v7 = v0[56];
    v8 = v0[55];
    v9 = v0[38];
    v10 = v0[35];
    sub_8B48(v8, (v0 + 16));
    v7(v9, v8, v10);
    v11 = sub_16DBDC();
    v12 = sub_16E37C();
    if (sub_1BA1C(v12))
    {
      v13 = sub_1BA38();
      sub_1BA50(v13);
      sub_1B9D0(&def_259DC, v14, v15, "#GenerateLoggingResponseOutput: Invalid unit or dialog or response start value");
      sub_1BA00();
    }

    v16 = v0[62];
    v17 = v0[46];
    v27 = v0[45];
    v28 = v0[47];
    v26 = v0[44];
    v18 = v0[38];
    v19 = v0[35];
    v20 = v0[34];
    v21 = v0[21];

    v16(v18, v19);
    sub_601D8();
    sub_60130(v20, v22);
    sub_601F0();
    sub_60130(v26, v23);
    (*(v17 + 8))(v28, v27);
    *(v21 + 32) = 0;
    sub_60260();
    sub_60188();

    sub_C9BC();
    sub_5E1A0();

    __asm { BRAA            X1, X16 }
  }

  v1 = v0[34];
  v0[5] = type metadata accessor for WellnessSnippets(0);
  v0[6] = sub_17548();
  v2 = sub_9910(v0 + 2);
  sub_60208();
  sub_600D0(v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_5FC54;
  sub_5E1A0();

  return sub_672C0();
}

uint64_t sub_5FC54()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 16));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_5FD3C()
{
  v1 = v0[64];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[34];

  sub_601D8();
  sub_60130(v6, v7);
  sub_601F0();
  sub_60130(v5, v8);
  (*(v3 + 8))(v2, v4);
  sub_60188();

  sub_C9BC();
  sub_5E1A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_5FE84(unsigned __int8 a1, void *a2)
{
  switch(a1)
  {
    case 0x9Bu:
      return 0x73726F6F6C66;
    case 0xA2u:
      v3 = sub_5FF28(a2);
      v2 = sub_13A5C4(v3, v4);

      break;
    case 0xADu:
      return 0x736568737570;
    default:
      return sub_5FF28(a2);
  }

  return v2;
}

uint64_t sub_5FF28(void *a1)
{
  v1 = [a1 units];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_5FF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_5FFFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6006C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDataLogModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_600D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_60130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_60188()
{
}

__n128 sub_60248()
{
  v1 = *(v0 + 120);
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double sub_60260()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

Swift::Bool __swiftcall isMedDosageUnitSynonym(userSuppliedUnit:systemSuppliedUnit:)(Swift::String userSuppliedUnit, Swift::String systemSuppliedUnit)
{
  object = systemSuppliedUnit._object;
  countAndFlagsBits = systemSuppliedUnit._countAndFlagsBits;
  v4 = userSuppliedUnit._object;
  v5 = userSuppliedUnit._countAndFlagsBits;
  v6 = systemSuppliedUnit._countAndFlagsBits == 0x746163696C707061 && systemSuppliedUnit._object == 0xEB000000006E6F69;
  if (!v6 && (sub_610C8(0x746163696C707061, 0xEB000000006E6F69) & 1) == 0)
  {
    v7 = countAndFlagsBits == 7496034 && object == 0xE300000000000000;
    if (!v7 && (sub_610C8(7496034, 0xE300000000000000) & 1) == 0)
    {
      v8 = countAndFlagsBits == 0x6764697274726163 && object == 0xE900000000000065;
      if (!v8 && (sub_610C8(0x6764697274726163, 0xE900000000000065) & 1) == 0)
      {
        v9 = countAndFlagsBits == 0x656369766564 && object == 0xE600000000000000;
        if (!v9 && (sub_610C8(0x656369766564, 0xE600000000000000) & 1) == 0 && (countAndFlagsBits != 1668508004 || object != 0xE400000000000000))
        {
          v11 = sub_610C8(1668508004, 0xE400000000000000);
          v12 = countAndFlagsBits == 1886351972 && object == 0xE400000000000000;
          v13 = v12;
          if ((v11 & 1) == 0 && !v13 && (sub_610C8(1886351972, 0xE400000000000000) & 1) == 0)
          {
            v14 = countAndFlagsBits == 0x616D656E65 && object == 0xE500000000000000;
            if (!v14 && (sub_610C8(0x616D656E65, 0xE500000000000000) & 1) == 0 && (countAndFlagsBits != 0x656C75626F6C67 || object != 0xE700000000000000))
            {
              v16 = sub_610C8(0x656C75626F6C67, 0xE700000000000000);
              v17 = countAndFlagsBits == 0x746E616C706D69 && object == 0xE700000000000000;
              v18 = v17;
              if ((v16 & 1) == 0 && !v18)
              {
                v19 = sub_610C8(0x746E616C706D69, 0xE700000000000000);
                v20 = countAndFlagsBits == 0x747265736E69 && object == 0xE600000000000000;
                v21 = v20;
                if ((v19 & 1) == 0 && !v21)
                {
                  v22 = sub_610C8(0x747265736E69, 0xE600000000000000);
                  v23 = countAndFlagsBits == 7629163 && object == 0xE300000000000000;
                  v24 = v23;
                  if ((v22 & 1) == 0 && !v24)
                  {
                    v25 = sub_610C8(7629163, 0xE300000000000000);
                    v26 = countAndFlagsBits == 0x74656B636170 && object == 0xE600000000000000;
                    v27 = v26;
                    if ((v25 & 1) == 0 && !v27)
                    {
                      v28 = sub_610C8(0x74656B636170, 0xE600000000000000);
                      v29 = countAndFlagsBits == 0x6863746170 && object == 0xE500000000000000;
                      v30 = v29;
                      if ((v28 & 1) == 0 && !v30)
                      {
                        v31 = sub_610C8(0x6863746170, 0xE500000000000000);
                        v32 = countAndFlagsBits == 0x6563656970 && object == 0xE500000000000000;
                        v33 = v32;
                        if ((v31 & 1) == 0 && !v33 && (sub_610C8(0x6563656970, 0xE500000000000000) & 1) == 0 && (countAndFlagsBits != 0x656C636973706F70 || object != 0xE800000000000000))
                        {
                          v35 = sub_610C8(0x656C636973706F70, 0xE800000000000000);
                          v36 = countAndFlagsBits == 0x706F6F6373 && object == 0xE500000000000000;
                          v37 = v36;
                          if ((v35 & 1) == 0 && !v37)
                          {
                            v38 = sub_610C8(0x706F6F6373, 0xE500000000000000);
                            v39 = countAndFlagsBits == 0x65676E6F7073 && object == 0xE600000000000000;
                            v40 = v39;
                            if ((v38 & 1) == 0 && !v40)
                            {
                              v41 = sub_610C8(0x65676E6F7073, 0xE600000000000000);
                              v42 = countAndFlagsBits == 0x7961727073 && object == 0xE500000000000000;
                              v43 = v42;
                              if ((v41 & 1) == 0 && !v43)
                              {
                                v44 = sub_610C8(0x7961727073, 0xE500000000000000);
                                v45 = countAndFlagsBits == 0x6B63697473 && object == 0xE500000000000000;
                                v46 = v45;
                                if ((v44 & 1) == 0 && !v46)
                                {
                                  v47 = sub_610C8(0x6B63697473, 0xE500000000000000);
                                  v48 = countAndFlagsBits == 0x7069727473 && object == 0xE500000000000000;
                                  v49 = v48;
                                  if ((v47 & 1) == 0 && !v49 && (sub_610C8(0x7069727473, 0xE500000000000000) & 1) == 0 && (countAndFlagsBits != 0x7469736F70707573 || object != 0xEB0000000079726FLL))
                                  {
                                    v51 = sub_610C8(0x7469736F70707573, 0xEB0000000079726FLL);
                                    v52 = countAndFlagsBits == 0x6E6F706D6174 && object == 0xE600000000000000;
                                    v53 = v52;
                                    if ((v51 & 1) == 0 && !v53 && (sub_610C8(0x6E6F706D6174, 0xE600000000000000) & 1) == 0 && (countAndFlagsBits != 0x6E656D7461657274 || object != 0xE900000000000074))
                                    {
                                      v55 = sub_610C8(0x6E656D7461657274, 0xE900000000000074);
                                      v56 = countAndFlagsBits == 1953066613 && object == 0xE400000000000000;
                                      v57 = v56;
                                      if ((v55 & 1) == 0 && !v57)
                                      {
                                        v58 = sub_610C8(1953066613, 0xE400000000000000);
                                        v59 = countAndFlagsBits == 1801677175 && object == 0xE400000000000000;
                                        v60 = v59;
                                        if ((v58 & 1) == 0 && !v60 && (sub_610C8(1801677175, 0xE400000000000000) & 1) == 0)
                                        {
                                          v64 = countAndFlagsBits == 0x6974616C61686E69 && object == 0xEA00000000006E6FLL;
                                          if (v64 || (sub_610C8(0x6974616C61686E69, 0xEA00000000006E6FLL) & 1) != 0)
                                          {
                                            sub_2440(&qword_1C6828, &qword_1767D0);
                                            inited = swift_initStackObject();
                                            *(inited + 16) = xmmword_172970;
                                            *(inited + 32) = 0x6974616C61686E69;
                                            *(inited + 40) = 0xEA00000000006E6FLL;
                                            *(inited + 48) = 0x72656C61686E69;
                                            *(inited + 56) = 0xE700000000000000;
                                            *(inited + 64) = 1717990768;
                                            *(inited + 72) = 0xE400000000000000;
                                            sub_610F0();
                                            v66[10] = v67;
                                            v66[11] = v68;
                                            v66[12] = 6448494;
                                            v66[13] = 0xE300000000000000;
                                            sub_610E4();
                                            __chkstk_darwin(v69);
                                            sub_610B0();
                                            v71 = sub_61094;
LABEL_186:
                                            v63 = sub_60E68(v71, v70, inited);
                                            swift_setDeallocating();
                                            sub_60CFC();
                                            return v63;
                                          }

                                          v72 = countAndFlagsBits == 0x6F697463656A6E69 && object == 0xE90000000000006ELL;
                                          if (v72 || (sub_610C8(0x6F697463656A6E69, 0xE90000000000006ELL) & 1) != 0)
                                          {
                                            sub_2440(&qword_1C6828, &qword_1767D0);
                                            swift_initStackObject();
                                            sub_61108();
                                            *(v73 + 16) = xmmword_1712E0;
                                            *(v73 + 32) = 0x6F697463656A6E69;
                                            *(v73 + 40) = 0xE90000000000006ELL;
                                            *(v73 + 48) = 1953458291;
                                            *(v73 + 56) = 0xE400000000000000;
                                            sub_610E4();
                                            __chkstk_darwin(v74);
                                            sub_610B0();
                                          }

                                          else
                                          {
                                            v76 = countAndFlagsBits == 0x65676E657A6F6CLL && object == 0xE700000000000000;
                                            if (v76 || (sub_610C8(0x65676E657A6F6CLL, 0xE700000000000000) & 1) != 0)
                                            {
                                              sub_2440(&qword_1C6828, &qword_1767D0);
                                              swift_initStackObject();
                                              sub_61108();
                                              *(v77 + 16) = xmmword_172980;
                                              *(v77 + 32) = 0x65676E657A6F6CLL;
                                              *(v77 + 40) = 0xE700000000000000;
                                              *(v77 + 48) = 1886351972;
                                              *(v77 + 56) = 0xE400000000000000;
                                              *(v77 + 64) = 0x6568636F7274;
                                              *(v77 + 72) = 0xE600000000000000;
                                              *(v77 + 80) = 0x656C6C6974736170;
                                              *(v77 + 88) = 0xE800000000000000;
                                              sub_610E4();
                                              __chkstk_darwin(v78);
                                              sub_610B0();
                                            }

                                            else
                                            {
                                              v79 = countAndFlagsBits == 19565 && object == 0xE200000000000000;
                                              if (v79 || (sub_610C8(19565, 0xE200000000000000) & 1) != 0)
                                              {
                                                sub_2440(&qword_1C6828, &qword_1767D0);
                                                swift_initStackObject();
                                                sub_61108();
                                                *(v80 + 16) = xmmword_16F2F0;
                                                *(v80 + 32) = 19565;
                                                *(v80 + 40) = 0xE200000000000000;
                                                *(v80 + 48) = 0x74696C696C6C696DLL;
                                                *(v80 + 56) = 0xEA00000000007265;
                                                *(v80 + 64) = 0x74694C696C6C696DLL;
                                                *(v80 + 72) = 0xEA00000000007265;
                                                sub_610E4();
                                                __chkstk_darwin(v81);
                                                sub_610B0();
                                              }

                                              else
                                              {
                                                v82 = countAndFlagsBits == 26477 && object == 0xE200000000000000;
                                                if (v82 || (sub_610C8(26477, 0xE200000000000000) & 1) != 0)
                                                {
                                                  sub_2440(&qword_1C6828, &qword_1767D0);
                                                  swift_initStackObject();
                                                  sub_61108();
                                                  *(v83 + 16) = xmmword_1712E0;
                                                  *(v83 + 32) = 26477;
                                                  *(v83 + 40) = 0xE200000000000000;
                                                  *(v83 + 48) = 0x617267696C6C696DLL;
                                                  *(v83 + 56) = 0xE90000000000006DLL;
                                                  sub_610E4();
                                                  __chkstk_darwin(v84);
                                                  sub_610B0();
                                                }

                                                else
                                                {
                                                  v85 = countAndFlagsBits == 0x74656C626174 && object == 0xE600000000000000;
                                                  if (!v85 && (sub_610C8(0x74656C626174, 0xE600000000000000) & 1) == 0)
                                                  {
                                                    if (countAndFlagsBits != 1818323318 || object != 0xE400000000000000)
                                                    {
                                                      v63 = 0;
                                                      if ((sub_610C8(1818323318, 0xE400000000000000) & 1) == 0)
                                                      {
                                                        return v63;
                                                      }
                                                    }

                                                    sub_2440(&qword_1C6828, &qword_1767D0);
                                                    inited = swift_initStackObject();
                                                    *(inited + 16) = xmmword_16F2F0;
                                                    sub_610F0();
                                                    v89[4] = v90;
                                                    v89[5] = v91;
                                                    v89[6] = 6448494;
                                                    v89[7] = 0xE300000000000000;
                                                    v89[8] = 0x6974616C61686E69;
                                                    v89[9] = 0xEA00000000006E6FLL;
                                                    sub_610E4();
                                                    __chkstk_darwin(v92);
                                                    sub_610B0();
                                                    v71 = sub_61018;
                                                    goto LABEL_186;
                                                  }

                                                  sub_2440(&qword_1C6828, &qword_1767D0);
                                                  swift_initStackObject();
                                                  sub_61108();
                                                  *(v86 + 16) = xmmword_172970;
                                                  *(v86 + 32) = 0x74656C626174;
                                                  *(v86 + 40) = 0xE600000000000000;
                                                  *(v86 + 48) = 6447476;
                                                  *(v86 + 56) = 0xE300000000000000;
                                                  *(v86 + 64) = 1819044208;
                                                  *(v86 + 72) = 0xE400000000000000;
                                                  *(v86 + 80) = 7364963;
                                                  *(v86 + 88) = 0xE300000000000000;
                                                  *(v86 + 96) = 0x656C7573706163;
                                                  *(v86 + 104) = 0xE700000000000000;
                                                  sub_610E4();
                                                  __chkstk_darwin(v87);
                                                  sub_610B0();
                                                }
                                              }
                                            }
                                          }

                                          v63 = sub_60E68(sub_61094, v75, countAndFlagsBits);
                                          swift_setDeallocating();
                                          sub_60CFC();
                                          return v63;
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
      }
    }
  }

  if (countAndFlagsBits == v5 && object == v4)
  {
    return 1;
  }

  return sub_16E6BC();
}

uint64_t sub_60CFC()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_60D40()
{
  sub_2440(&qword_1C57E0, &unk_171C60);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_60DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_16E6BC() & 1;
  }
}

uint64_t sub_60E08(uint64_t a1, uint64_t a2)
{
  sub_16D26C();
  sub_61038();
  return sub_16E19C() & 1;
}

BOOL sub_60E68(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_60F18(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_16D26C() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

unint64_t sub_61038()
{
  result = qword_1C6C78;
  if (!qword_1C6C78)
  {
    sub_16D26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6C78);
  }

  return result;
}

uint64_t sub_610C8(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

uint64_t sub_61114@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

void sub_61120(uint64_t a1@<X8>)
{
  v2 = sub_16BFAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_16BE6C(v7);
  v9 = v8;
  [v6 setPunchOutUri:v8];

  v10 = v6;
  sub_16BF9C();
  v11 = sub_16BF6C();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  sub_613B8(v11, v13, v10);

  v14 = [v10 dictionary];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v28 = 0;
    v17 = [v16 dataWithPropertyList:v15 format:200 options:0 error:&v28];
    v18 = v28;
    if (v17)
    {
      v19 = sub_16BEBC();
      v21 = v20;

      sub_16BEAC(0);
      sub_16E23C();

      sub_6141C(v19, v21);

      v22 = sub_16D5CC();
      v23 = a1;
      v24 = 0;
    }

    else
    {
      v26 = v18;
      sub_16BE3C();

      swift_willThrow();

      v22 = sub_16D5CC();
      v23 = a1;
      v24 = 1;
    }

    sub_214C(v23, v24, 1, v22);
  }

  else
  {
    v25 = sub_16D5CC();
    sub_214C(a1, 1, 1, v25);
  }
}

void sub_613B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();

  [a3 setAceId:v4];
}

uint64_t sub_6141C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_61474(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 177) = a3;
  *(v6 + 16) = a2;
  *(v6 + 176) = a1;
  sub_2440(&qword_1C5800, &unk_16F510);
  *(v6 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_6151C);
}

uint64_t sub_6151C()
{
  sub_5E06C();
  sub_C9EC();
  v1 = *(v0 + 176);
  if ((v1 - 159) > 0x1E)
  {
    goto LABEL_2;
  }

  if (((1 << (v1 + 97)) & 0x42008801) != 0)
  {
LABEL_11:
    if (qword_1C55B8 != -1)
    {
      sub_62684(&qword_1C55B8);
      LOBYTE(v1) = *(v0 + 176);
    }

    v5 = *(v0 + 40);
    *(v0 + 48) = qword_1D7168;
    sub_208C0(v1);

    sub_16E23C();

    v6 = sub_16D5CC();
    sub_214C(v5, 0, 1, v6);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_61BAC;
    sub_38F74();

    return sub_1654B0();
  }

  if (v1 == 162)
  {
    if (qword_1C55B8 != -1)
    {
      sub_62684(&qword_1C55B8);
    }

    *(v0 + 144) = qword_1D7168;

    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_622EC;
    sub_38F74();

    return sub_165CBC();
  }

  else
  {
    if (v1 != 173)
    {
LABEL_2:
      if ((v1 - 89) > 0x12)
      {
LABEL_16:
        switch(*(v0 + 176))
        {
          case 0x93:
            if (qword_1C55B8 != -1)
            {
              sub_62684(&qword_1C55B8);
            }

            *(v0 + 80) = qword_1D7168;

            v9 = swift_task_alloc();
            *(v0 + 88) = v9;
            *v9 = v0;
            sub_626A4(v9);
            sub_38F74();

            result = sub_164CF0();
            break;
          case 0x96:
            if (qword_1C55B8 != -1)
            {
              sub_62684(&qword_1C55B8);
            }

            *(v0 + 96) = qword_1D7168;

            v15 = swift_task_alloc();
            *(v0 + 104) = v15;
            *v15 = v0;
            sub_626A4(v15);
            sub_38F74();

            result = sub_164EE0();
            break;
          case 0x97:
            if (qword_1C55B8 != -1)
            {
              sub_62684(&qword_1C55B8);
            }

            *(v0 + 112) = qword_1D7168;

            v17 = swift_task_alloc();
            *(v0 + 120) = v17;
            *v17 = v0;
            sub_626A4(v17);
            sub_38F74();

            result = sub_1650D0();
            break;
          case 0x9B:
            if (qword_1C55B8 != -1)
            {
              sub_62684(&qword_1C55B8);
            }

            *(v0 + 128) = qword_1D7168;

            v13 = swift_task_alloc();
            *(v0 + 136) = v13;
            *v13 = v0;
            sub_626A4(v13);
            sub_38F74();

            result = sub_1652C0();
            break;
          default:

            sub_38F74();

            result = v23(v21, v22, v23, v24, v25, v26, v27, v28);
            break;
        }

        return result;
      }

      if (((1 << (v1 - 89)) & 0x44181) == 0)
      {
        if (v1 == 105)
        {
          if (qword_1C55B8 != -1)
          {
            sub_62684(&qword_1C55B8);
          }

          *(v0 + 64) = qword_1D7168;

          v2 = swift_task_alloc();
          *(v0 + 72) = v2;
          *v2 = v0;
          sub_626A4(v2);
          sub_38F74();

          return sub_1685BC();
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (qword_1C55B8 != -1)
    {
      sub_62684(&qword_1C55B8);
    }

    *(v0 + 160) = qword_1D7168;

    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    sub_626A4(v11);
    sub_38F74();

    return sub_16727C();
  }
}

uint64_t sub_61BAC()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;

  v8 = *(v4 + 40);
  if (v0)
  {

    sub_6261C(v8);

    return _swift_task_switch(sub_6252C);
  }

  else
  {
    sub_6261C(v8);

    v9 = *(v7 + 8);

    return v9(v3);
  }
}

uint64_t sub_61D4C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  sub_626BC();
  sub_38F74();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_61E6C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  sub_626BC();
  sub_38F74();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_61F8C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  sub_626BC();
  sub_38F74();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_620AC()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  sub_626BC();
  sub_38F74();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_621CC()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  sub_626BC();
  sub_38F74();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_622EC()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  sub_626BC();
  sub_38F74();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_6240C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  sub_C990();
  *v3 = v2;
  *v3 = *v1;

  sub_5DA54();
  if (v0)
  {
  }

  sub_626BC();
  sub_38F74();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_6252C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_62590()
{
  v0 = sub_16D63C();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for WellnessLoggingCATsSimple(0);
  sub_16D62C();
  result = sub_16D5FC();
  qword_1D7168 = result;
  return result;
}

uint64_t sub_6261C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_62684(uint64_t a1)
{

  return swift_once();
}

uint64_t type metadata accessor for WellnessUnsupportedCATs(uint64_t a1)
{
  result = qword_1C6C80;
  if (!qword_1C6C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_627E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16D63C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  sub_372FC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16D56C();
  (*(v6 + 8))(a2, v5);
  sub_45D08(a1);
  return v11;
}

uint64_t GenericBinaryButtonModel.invocationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericBinaryButtonModel.invocationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenericBinaryButtonModel.primaryButtonLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GenericBinaryButtonModel.primaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GenericBinaryButtonModel.secondaryButtonLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GenericBinaryButtonModel.secondaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall GenericBinaryButtonModel.init(invocationIdentifier:primaryButtonLabel:secondaryButtonLabel:isSmartEnabled:)(WellnessFlowPlugin::GenericBinaryButtonModel *__return_ptr retstr, Swift::String invocationIdentifier, Swift::String primaryButtonLabel, Swift::String secondaryButtonLabel, Swift::Bool isSmartEnabled)
{
  retstr->invocationIdentifier = invocationIdentifier;
  retstr->primaryButtonLabel = primaryButtonLabel;
  retstr->secondaryButtonLabel = secondaryButtonLabel;
  retstr->isSmartEnabled = isSmartEnabled;
}

uint64_t sub_62AB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000000017DDE0 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017DE00 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000000017DE20 == a2;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_16E6BC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_62C28(char a1)
{
  result = 0x457472616D537369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_62CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_62AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_62D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_62C20();
  *a1 = result;
  return result;
}

uint64_t sub_62D28(uint64_t a1)
{
  v2 = sub_62F24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_62D64(uint64_t a1)
{
  v2 = sub_62F24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C6CD0, &qword_1729F0);
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v18[-v9];
  sub_2D20(a1, a1[3]);
  sub_62F24();
  sub_16E77C();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_635F0(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    sub_635F0(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    sub_635F0(v15, v16, &v19);
    v18[12] = 3;
    sub_16E65C();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_62F24()
{
  result = qword_1C6CD8;
  if (!qword_1C6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CD8);
  }

  return result;
}

uint64_t GenericBinaryButtonModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2440(&qword_1C6CE0, &qword_1729F8);
  sub_42F0();
  __chkstk_darwin(v5);
  sub_2D20(a1, a1[3]);
  sub_62F24();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  sub_635E0();
  v6 = sub_16E5BC();
  v19 = v7;
  sub_635E0();
  v8 = sub_16E5BC();
  v18 = v9;
  v16 = v8;
  v15 = sub_16E5BC();
  v17 = v10;
  sub_635E0();
  v11 = sub_16E5CC();
  v12 = sub_635D0();
  v13(v12);

  sub_2D64(a1);

  *a2 = v6;
  *(a2 + 8) = v19;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v11 & 1;
  return result;
}

double sub_63218@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  GenericBinaryButtonModel.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

__n128 sub_63280(uint64_t a1, uint64_t a2)
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

uint64_t sub_6329C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_632DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x63490);
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

unint64_t sub_634CC()
{
  result = qword_1C6CE8;
  if (!qword_1C6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CE8);
  }

  return result;
}

unint64_t sub_63524()
{
  result = qword_1C6CF0;
  if (!qword_1C6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CF0);
  }

  return result;
}

unint64_t sub_6357C()
{
  result = qword_1C6CF8;
  if (!qword_1C6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CF8);
  }

  return result;
}

uint64_t sub_635F0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16E64C();
}

uint64_t sub_6362C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_16D63C();
  __chkstk_darwin(v3 - 8);
  sub_C1F30(a1);
  type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_64574();
  sub_16D62C();
  v4 = sub_16D58C();
  a1[8] = v1;
  a1[9] = &off_1BA5B0;
  a1[5] = v4;
  type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_64574();
  sub_16D62C();
  v5 = sub_16D58C();
  a1[13] = v1;
  a1[14] = &off_1BC5D0;
  a1[10] = v5;
  type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_64574();
  sub_16D62C();
  result = sub_16D58C();
  a1[18] = v1;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_63728(uint64_t a1, uint64_t a2)
{
  sub_82E0();

  return sub_16C33C();
}

uint64_t sub_6377C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_16C38C();
  v2[13] = v3;
  sub_888C(v3);
  v2[14] = v4;
  v2[15] = swift_task_alloc();
  v5 = sub_16C46C();
  v2[16] = v5;
  sub_888C(v5);
  v2[17] = v6;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = sub_16C7BC();
  v2[20] = v7;
  sub_888C(v7);
  v2[21] = v8;
  v2[22] = swift_task_alloc();
  v9 = sub_16DBEC();
  v2[23] = v9;
  sub_888C(v9);
  v2[24] = v10;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_63954);
}

uint64_t sub_63954(uint64_t a1)
{
  v19 = v1;
  v2 = v1[27];
  v3 = v1[23];
  v4 = v1[24];
  v5 = sub_16DBBC();
  v1[28] = v5;
  swift_beginAccess();
  v6 = *(v4 + 16);
  v1[29] = v6;
  v1[30] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_16DBDC();
  v8 = sub_16E37C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[27];
  v11 = v1[23];
  v12 = v1[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_3AB7C(0xD000000000000010, 0x8000000000172C50, &v18);
    _os_log_impl(&def_259DC, v7, v8, "Executing %s", v13, 0xCu);
    sub_2D64(v14);
    sub_8A2C(v14);
    sub_8A2C(v13);
  }

  v15 = *(v12 + 8);
  v15(v10, v11);
  v1[31] = v15;
  sub_2D20((v1[12] + 40), *(v1[12] + 64));
  v16 = swift_task_alloc();
  v1[32] = v16;
  *v16 = v1;
  v16[1] = sub_63B30;

  return sub_7AA38();
}

uint64_t sub_63B30(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  *(v4 + 264) = v1;

  if (v1)
  {
    v7 = sub_63E14;
  }

  else
  {
    *(v4 + 272) = a1;
    v7 = sub_63C50;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_63C50(uint64_t a1)
{
  v2 = v1[34];
  v4 = v1[18];
  v3 = v1[19];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  v8 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20(v7, v7[3]);
  sub_16C2FC();
  sub_64574();
  sub_16C4FC();

  (*(v1[21] + 8))(v1[22], v1[20]);

  v9 = v1[1];

  return v9();
}

uint64_t sub_63E14()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  swift_beginAccess();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_16DBDC();
  v6 = sub_16E37C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&def_259DC, v5, v6, "%@", v7, 0xCu);
    sub_6450C(v8);
    sub_8A2C(v8);
    sub_8A2C(v7);
  }

  else
  {
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  v12 = *(v0 + 200);
  v13 = *(v0 + 184);
  (*(v0 + 248))(*(v0 + 208), v13);
  swift_beginAccess();
  v11(v12, v10, v13);
  v14 = sub_16DBDC();
  v15 = sub_16E37C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&def_259DC, v14, v15, "Sending to info domains because dialog pattern failed", v16, 2u);
    sub_8A2C(v16);
  }

  v17 = *(v0 + 248);
  v18 = *(v0 + 200);
  v19 = *(v0 + 184);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);

  v17(v18, v19);
  (*(v21 + 104))(v20, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v22);
  sub_16C51C();
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_6410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_641BC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_641BC(uint64_t a1)
{
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_642B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6434C;

  return sub_6377C(a1);
}

uint64_t sub_6434C()
{
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_64438(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_64498(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_6450C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57B8, &qword_1715A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WellnessQueryingCATs(uint64_t a1)
{
  result = qword_1C6D00;
  if (!qword_1C6D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_64660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16D63C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  sub_372FC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16D56C();
  (*(v6 + 8))(a2, v5);
  sub_45D08(a1);
  return v11;
}

uint64_t type metadata accessor for BodyMassQueryModel(uint64_t a1)
{
  result = qword_1C6DD0;
  if (!qword_1C6DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BodyMassQueryModel.averageValueString.getter()
{
  type metadata accessor for BodyMassQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.averageValueString.setter()
{
  sub_66A14();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BodyMassQueryModel.maxValueString.getter()
{
  type metadata accessor for BodyMassQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.maxValueString.setter()
{
  sub_66A14();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BodyMassQueryModel.minValueString.getter()
{
  type metadata accessor for BodyMassQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.minValueString.setter()
{
  sub_66A14();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BodyMassQueryModel.valueString.getter()
{
  type metadata accessor for BodyMassQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.valueString.setter()
{
  sub_66A14();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_64F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_4378();
  v5 = sub_8B9C();
  v6(v5);
  return v4;
}

uint64_t sub_64F94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_4378();
  v5 = sub_8B9C();
  v6(v5);
  return v4;
}

uint64_t sub_65018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_16E6BC();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_653E8(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v3 = 1450729837;
      return v3 | 0x65756C6100000000;
    case 3:
      v3 = 1450076525;
      return v3 | 0x65756C6100000000;
    case 4:
      return 0x65756C6176;
    case 5:
      return 0x6562614C65746164;
    case 6:
      return 0xD000000000000012;
    case 7:
      v4 = 1450729837;
      goto LABEL_15;
    case 8:
      v4 = 1450076525;
LABEL_15:
      result = v4 | 0x65756C6100000000;
      break;
    case 9:
      result = 0x72745365756C6176;
      break;
    case 10:
      result = 0x6972745374696E75;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_65578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_65018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_655A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_653E0();
  *a1 = result;
  return result;
}

uint64_t sub_655C8(uint64_t a1)
{
  v2 = sub_659C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_65604(uint64_t a1)
{
  v2 = sub_659C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BodyMassQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1C6D50, &qword_172D58);
  sub_42F0();
  v5 = v4;
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  sub_2D20(a1, a1[3]);
  sub_659C8();
  sub_16E77C();
  v17[31] = 0;
  sub_16C11C();
  sub_669A8();
  sub_66264(v9, v10, &protocol conformance descriptor for AppPunchout);
  sub_205DC();
  sub_16E63C();
  if (!v1)
  {
    Model = type metadata accessor for BodyMassQueryModel(0);
    sub_669D0(Model[5]);
    v17[30] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v17[29] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v17[28] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v17[27] = 4;
    sub_20584();
    sub_16E62C();
    v17[26] = 5;
    sub_16D5CC();
    sub_66990();
    sub_66264(v12, v13, &protocol conformance descriptor for SpeakableString);
    sub_205DC();
    sub_16E63C();
    sub_66A40(Model[10]);
    v17[25] = 6;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[11]);
    v17[24] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v17[15] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v17[14] = 9;
    sub_20584();
    sub_16E61C();
    v17[13] = 10;
    sub_205DC();
    sub_16E63C();
    v17[12] = 11;
    type metadata accessor for SnippetHeaderModel(0);
    sub_66978();
    sub_66264(v14, v15, &protocol conformance descriptor for SnippetHeaderModel);
    sub_205DC();
    sub_16E63C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_659C8()
{
  result = qword_1C6D58;
  if (!qword_1C6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6D58);
  }

  return result;
}

uint64_t BodyMassQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v85 = a2;
  sub_2440(&dword_1C63F8, &qword_171800);
  sub_433C();
  __chkstk_darwin(v2);
  v87 = &v80 - v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  v5 = __chkstk_darwin(v4 - 8);
  v96 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = &v80 - v7;
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_433C();
  __chkstk_darwin(v8);
  v97 = &v80 - v9;
  sub_2440(&qword_1C6D60, &qword_172D60);
  sub_42F0();
  v98 = v11;
  v99 = v10;
  sub_433C();
  __chkstk_darwin(v12);
  v102 = &v80 - v13;
  Model = type metadata accessor for BodyMassQueryModel(0);
  v15 = (Model - 8);
  __chkstk_darwin(Model);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v94 = v18;
  sub_214C(v19, v20, v21, v18);
  sub_66A4C(v15[7]);
  v93 = v22;
  *(v22 + 8) = 1;
  sub_66A4C(v15[8]);
  v91 = v23;
  *(v23 + 8) = 1;
  sub_66A4C(v15[9]);
  v90 = v24;
  *(v24 + 8) = 1;
  sub_66A4C(v15[10]);
  v89 = v25;
  *(v25 + 8) = 1;
  v26 = v15[11];
  v27 = sub_16D5CC();
  v88 = v26;
  sub_8AB4();
  sub_214C(v28, v29, v30, v27);
  v31 = &v17[v15[12]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v17[v15[13]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v17[v15[14]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v17[v15[15]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v86 = v15[16];
  sub_8AB4();
  v92 = v27;
  sub_214C(v35, v36, v37, v27);
  v38 = v15[17];
  v39 = type metadata accessor for SnippetHeaderModel(0);
  v101 = v17;
  sub_8AB4();
  sub_214C(v40, v41, v42, v39);
  sub_2D20(v103, v103[3]);
  sub_659C8();
  v43 = v100;
  sub_16E76C();
  if (v43)
  {
    v74 = v101;
  }

  else
  {
    v100 = v31;
    v84 = v32;
    v83 = v33;
    v82 = v34;
    v44 = v95;
    v81 = v38;
    v45 = v96;
    v115 = 0;
    sub_669A8();
    sub_66264(v46, v47, &protocol conformance descriptor for AppPunchout);
    v48 = v97;
    sub_16E5AC();
    v50 = v48;
    v51 = v101;
    sub_64F94(v50, v101, &qword_1C63F0, &unk_1717F0);
    v114 = 1;
    sub_669F0();
    v52 = sub_16E59C();
    sub_669C0(v52, v53);
    v113 = 2;
    sub_669F0();
    v54 = sub_16E59C();
    sub_669C0(v54, v55);
    v112 = 3;
    sub_669F0();
    v56 = sub_16E59C();
    sub_669C0(v56, v57);
    v111 = 4;
    sub_669F0();
    v58 = sub_16E59C();
    sub_669C0(v58, v59);
    v110 = 5;
    sub_66990();
    sub_66264(v60, v61, &protocol conformance descriptor for SpeakableString);
    sub_66A58();
    sub_16E5AC();
    sub_64F94(v44, v51 + v88, &qword_1C5800, &unk_16F510);
    v109 = 6;
    sub_669F0();
    v62 = sub_16E58C();
    v63 = v100;
    *v100 = v62;
    v63[1] = v64;
    v108 = 7;
    sub_669F0();
    v65 = sub_16E58C();
    v66 = v84;
    *v84 = v65;
    v66[1] = v67;
    v107[0] = 8;
    sub_669F0();
    v68 = sub_16E58C();
    v69 = v83;
    *v83 = v68;
    v69[1] = v70;
    v106 = 9;
    sub_669F0();
    v71 = sub_16E58C();
    v72 = v82;
    *v82 = v71;
    v72[1] = v73;
    v105 = 10;
    sub_66A58();
    sub_16E5AC();
    v74 = v101;
    sub_64F94(v45, &v101[v86], &qword_1C5800, &unk_16F510);
    v104 = 11;
    sub_66978();
    sub_66264(v75, v76, &protocol conformance descriptor for SnippetHeaderModel);
    v77 = v99;
    sub_16E5AC();
    v78 = sub_66A30();
    v79(v78, v77);
    sub_64F94(v87, v74 + v81, &dword_1C63F8, &qword_171800);
    sub_66170(v74, v85);
  }

  sub_2D64(v103);
  return sub_66114(v74);
}

uint64_t sub_66114(uint64_t a1)
{
  Model = type metadata accessor for BodyMassQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_66170(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BodyMassQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_66264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_662F0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_369C(v9, a2, v8);
  }

  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[9];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = sub_2440(&dword_1C63F8, &qword_171800);
    v12 = a3[15];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[10] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_66444(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[10] + 8) = a2;
        return;
      }

      v10 = sub_2440(&dword_1C63F8, &qword_171800);
      v14 = a4[15];
    }

    v11 = a1 + v14;
  }

  sub_214C(v11, a2, a2, v10);
}

uint64_t sub_66574(uint64_t a1)
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8, &type metadata for String);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x66838);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_66874()
{
  result = qword_1C6E30;
  if (!qword_1C6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6E30);
  }

  return result;
}

unint64_t sub_668CC()
{
  result = qword_1C6E38;
  if (!qword_1C6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6E38);
  }

  return result;
}

unint64_t sub_66924()
{
  result = qword_1C6E40;
  if (!qword_1C6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6E40);
  }

  return result;
}

uint64_t sub_669C0(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_669FC()
{

  return type metadata accessor for BodyMassQueryModel(0);
}

uint64_t sub_66A14()
{

  return type metadata accessor for BodyMassQueryModel(0);
}

uint64_t sub_66A6C()
{
}

uint64_t sub_66A84(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_680E8();
}

uint64_t sub_66A98()
{
  sub_8A88();
  if (qword_1C55C8 != -1)
  {
    sub_680A0(&qword_1C55C8);
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_66B48;

  return sub_3EAF0();
}

uint64_t sub_66B48()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

void sub_66C48()
{
  v1 = [*(v0 + 72) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  v3 = sub_3B35C(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v13 = *(v0 + 72);

      sub_68104();
      goto LABEL_12;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_16E48C();
    }

    else
    {
      if (i >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = [v5 id];
    v10 = sub_16E1BC();
    v12 = v11;

    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = v7;
    *(v0 + 40) = v8;
    sub_9854();
    LOBYTE(v9) = sub_16E40C();

    if (v9)
    {
      break;
    }
  }

  v14 = *(v0 + 72);

  v15 = [v6 fullPrint];
  sub_16E1BC();
  sub_680F8();

LABEL_12:
  v16 = sub_680D4();

  v17(v16);
}

uint64_t sub_66E2C()
{
  sub_8A88();

  v0 = sub_680C0();

  return v1(v0);
}

uint64_t sub_66E84()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  sub_2440(&qword_1C5800, &unk_16F510);
  v0[4] = swift_task_alloc();
  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_66F14()
{
  sub_8A88();
  if (qword_1C55C8 != -1)
  {
    sub_680A0(&qword_1C55C8);
  }

  v1 = *(v0 + 32);
  sub_16E23C();
  v2 = sub_16D5CC();
  sub_214C(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_66FF8;

  return sub_3E928();
}

uint64_t sub_66FF8()
{
  sub_386A8();
  v2 = *v1;
  v3 = *v1;
  sub_38440();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = *(v2 + 32);
  if (v0)
  {
  }

  sub_6261C(v7);
  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_67138()
{
  sub_386A8();
  v1 = [*(v0 + 48) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  if (sub_3B35C(v2))
  {
    sub_3B360();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16E48C();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 48);

    v6 = [v4 fullPrint];

    sub_16E1BC();
    sub_680F8();
  }

  else
  {
    v7 = *(v0 + 48);

    sub_68104();
  }

  v8 = sub_680D4();

  return v9(v8);
}

uint64_t sub_67268()
{
  sub_8A88();

  v0 = sub_680C0();

  return v1(v0);
}

uint64_t sub_672C0()
{
  sub_8A88();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_16C46C();
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v5 = sub_16C7BC();
  v0[9] = v5;
  v0[10] = *(v5 - 8);
  v0[11] = swift_task_alloc();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_673E0(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[4];
  sub_16C43C();
  (*(v5 + 16))(v3, v2, v4);
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  v7 = [v6 catId];
  sub_16E1BC();

  sub_16C76C();
  if (qword_1C55D0 != -1)
  {
    swift_once();
  }

  v8 = v1[4];
  sub_2D20(qword_1D71A0, qword_1D71B8);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v9 = swift_allocObject();
  v1[12] = v9;
  *(v9 + 16) = xmmword_170F70;
  *(v9 + 32) = v8;
  v10 = v8;
  v11 = swift_task_alloc();
  v1[13] = v11;
  *v11 = v1;
  v11[1] = sub_675D0;
  v12 = v1[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v12);
}

uint64_t sub_675D0()
{
  sub_8A88();
  sub_C9D4();

  v0 = sub_17960();

  return _swift_task_switch(v0);
}

uint64_t sub_676D8()
{
  sub_386A8();
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_677AC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v5 = sub_16D63C();
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_16D62C();
  result = sub_16D5FC();
  *a3 = result;
  return result;
}

uint64_t sub_67848()
{
  v0 = sub_16C58C();
  swift_allocObject();
  result = sub_16C57C();
  qword_1D71B8 = v0;
  unk_1D71C0 = &protocol witness table for ResponseFactory;
  qword_1D71A0[0] = result;
  return result;
}

uint64_t sub_6789C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return sub_680E8();
}

uint64_t sub_678B4()
{
  sub_386A8();
  if (qword_1C55C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_6798C;
  v4 = *(v0 + 48);

  return sub_AE694(v1, v4, v2);
}

uint64_t sub_6798C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {

    v5 = sub_680C0();

    return v6(v5);
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}