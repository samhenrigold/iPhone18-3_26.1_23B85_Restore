void *FMFAlert.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_24A3C9CEC(&qword_27EF3F688, &qword_24A4B5BF8);
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);
  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24A376000, v12, v13, "FMAlert: initialized with coder", v14, 2u);
    MEMORY[0x24C219130](v14, -1, -1);
  }

  sub_24A37EACC(a1, a1[3]);
  sub_24A3E73B8();
  sub_24A4AC3C0();
  if (v2)
  {
    sub_24A3C8470((v3 + 2));
    type metadata accessor for FMFAlert(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = 0;
    v3[4] = sub_24A4AC120();
    v3[5] = v15;
    v30 = 1;
    v3[6] = sub_24A4AC120();
    v3[7] = v16;
    v29 = 2;
    v3[8] = sub_24A4AC120();
    v3[9] = v17;
    v28 = 3;
    v3[10] = sub_24A4AC120();
    v3[11] = v18;
    v27 = 5;
    v3[12] = sub_24A4AC120();
    v3[13] = v19;
    v26 = 4;
    sub_24A4AC120();
    sub_24A4AA9C0();

    sub_24A3996FC(v7, v3 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
    v25 = 6;
    sub_24A4AC120();
    sub_24A4AA9C0();

    sub_24A3996FC(v7, v3 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
    v24 = 7;
    v20._countAndFlagsBits = sub_24A4AC120();
    FMFAlertType.init(rawValue:)(v20);
    (*(v22 + 8))(v10, v8);
    *(v3 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v23;
  }

  sub_24A37EEE0(a1);
  return v3;
}

void *FMFAlert.__allocating_init(alertId:title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:alertType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v19 = swift_allocObject();
  v20 = *a13;
  v19[3] = 0;
  swift_unknownObjectWeakInit();
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;
  v19[10] = a7;
  v19[11] = a8;
  v19[12] = a10;
  v19[13] = a11;
  sub_24A3996FC(a9, v19 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(a12, v19 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v19 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v20;
  return v19;
}

void *FMFAlert.init(alertId:title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:alertType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v23 = *a13;
  v13[3] = 0;
  swift_unknownObjectWeakInit();
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  v13[9] = a6;
  v13[10] = a7;
  v13[11] = a8;
  v13[12] = a10;
  v13[13] = a11;
  sub_24A3996FC(a9, v13 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(a12, v13 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v13 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v23;
  return v13;
}

uint64_t sub_24A3E698C(void (*a1)(_BYTE *))
{
  v3 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_24A4AA9D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v10 == 5 || !swift_unknownObjectWeakLoadStrong() || (v14 = v10, v11 = sub_24A43B354(&v14), result = swift_unknownObjectRelease(), (v11 & 1) == 0))
  {
    sub_24A39990C(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_24A3D9248(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      a1(v9);
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_24A3E6B78(void (*a1)(char *))
{
  v3 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_24A4AA9D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    sub_24A39990C(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_24A3D9248(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      a1(v9);
      return (*(v7 + 8))(v9, v6);
    }
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_24A3E6D58()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v45[0] = 60;
  v45[1] = 0xE100000000000000;
  v8 = sub_24A4AC420();
  MEMORY[0x24C217D50](v8);

  MEMORY[0x24C217D50](0x3A656C746974203ALL, 0xE900000000000020);
  if (v0[7])
  {
    v9 = v0[6];
    v10 = v0[7];
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x24C217D50](v9, v10);

  MEMORY[0x24C217D50](0x6567617373656D20, 0xE90000000000003ALL);
  if (v0[9])
  {
    v11 = v0[8];
    v12 = v0[9];
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x24C217D50](v11, v12);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v14 = v45[0];
  v13 = v45[1];
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v45, "okButtonLabel:");
  HIBYTE(v45[1]) = -18;
  if (v0[11])
  {
    v15 = v0[10];
    v16 = v0[11];
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x24C217D50](v15, v16);

  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4AFE80);
  v17 = v0[13];
  v44 = v4;
  if (v17)
  {
    v18 = v0[12];
    v19 = v17;
  }

  else
  {
    v19 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x24C217D50](v18, v19);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v20 = v45[0];
  v21 = v45[1];
  v45[0] = v14;
  v45[1] = v13;

  MEMORY[0x24C217D50](v20, v21);

  v22 = v45[0];
  v23 = v45[1];
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v45[0] = 0xD000000000000011;
  v45[1] = 0x800000024A4AFEA0;
  sub_24A39990C(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL, v7);
  v24 = sub_24A4AA9D0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v7, 1, v24) == 1)
  {
    sub_24A3D9248(v7);
    v27 = 0xE300000000000000;
    v28 = 7104878;
  }

  else
  {
    v29 = sub_24A4AA960();
    v27 = v30;
    (*(v25 + 8))(v7, v24);
    v28 = v29;
  }

  MEMORY[0x24C217D50](v28, v27);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v31 = v45[0];
  v32 = v45[1];
  v45[0] = v22;
  v45[1] = v23;

  MEMORY[0x24C217D50](v31, v32);

  v34 = v45[0];
  v33 = v45[1];
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v45, "okButtonURL: ");
  HIWORD(v45[1]) = -4864;
  v35 = v44;
  sub_24A39990C(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL, v44);
  if (v26(v35, 1, v24) == 1)
  {
    sub_24A3D9248(v35);
    v36 = 0xE300000000000000;
    v37 = 7104878;
  }

  else
  {
    v38 = sub_24A4AA960();
    v36 = v39;
    (*(v25 + 8))(v35, v24);
    v37 = v38;
  }

  MEMORY[0x24C217D50](v37, v36);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v40 = v45[0];
  v41 = v45[1];
  v45[0] = v34;
  v45[1] = v33;

  MEMORY[0x24C217D50](v40, v41);

  return v45[0];
}

void *FMFAlert.deinit()
{
  sub_24A3C8470(v0 + 16);

  sub_24A3D9248(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3D9248(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  return v0;
}

uint64_t FMFAlert.__deallocating_deinit()
{
  FMFAlert.deinit();

  return swift_deallocClassInstance();
}

void *sub_24A3E7338@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMFAlert(0);
  v5 = swift_allocObject();
  result = FMFAlert.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A3E73B8()
{
  result = qword_27EF3F690;
  if (!qword_27EF3F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F690);
  }

  return result;
}

unint64_t sub_24A3E7410()
{
  result = qword_27EF3F6A8;
  if (!qword_27EF3F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlertAddressType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlertAddressType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A3E77E8()
{
  result = qword_27EF3F6C8;
  if (!qword_27EF3F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6C8);
  }

  return result;
}

unint64_t sub_24A3E7840()
{
  result = qword_27EF3F6D0;
  if (!qword_27EF3F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6D0);
  }

  return result;
}

unint64_t sub_24A3E7898()
{
  result = qword_27EF3F6D8;
  if (!qword_27EF3F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6D8);
  }

  return result;
}

unint64_t sub_24A3E78EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t static FMFDemoContent.load(from:)()
{
  result = sub_24A4AA9E0();
  if (!v2)
  {
    v5 = v4;
    v6 = result;
    if (qword_27EF3EBA0 != -1)
    {
      swift_once();
    }

    sub_24A3D9304();
    sub_24A4AA740();
    return sub_24A386E10(v6, v5);
  }

  return result;
}

uint64_t sub_24A3E79F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69776F6C6C6F66;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x7463657269646962;
    v4 = 0xED00006C616E6F69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7265776F6C6C6F66;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E69776F6C6C6F66;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x7463657269646962;
    v8 = 0xED00006C616E6F69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7265776F6C6C6F66;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3E7B18()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3E7BCC(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3E7C6C(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A3E7D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3E9388(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A3E7D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E69776F6C6C6F66;
  if (v2 != 1)
  {
    v5 = 0x7463657269646962;
    v4 = 0xED00006C616E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265776F6C6C6F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A3E7E6C(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3F740, &qword_24A4B6208);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v13 = *v1;
  v12 = *(v1 + 16);
  v7 = *(v1 + 5);
  v8 = *(v1 + 9);
  v25 = *(v1 + 7);
  v26 = v8;
  v27 = *(v1 + 11);
  v23 = *(v1 + 3);
  v24 = v7;
  memcpy(v28, v1 + 13, 0x130uLL);
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E8FB4();
  sub_24A4AC3D0();
  v15[0] = 0;
  v9 = v29;
  sub_24A4AC1B0();
  if (!v9)
  {
    v15[0] = v12;
    v14[0] = 1;
    sub_24A3E9008();
    sub_24A4AC1F0();
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v18 = v23;
    v19 = v24;
    v17 = 2;
    sub_24A3E905C(&v23, v15);
    sub_24A3E90B8();
    sub_24A4AC1F0();
    v16[2] = v20;
    v16[3] = v21;
    v16[4] = v22;
    v16[0] = v18;
    v16[1] = v19;
    sub_24A3E910C(v16);
    memcpy(v15, v28, sizeof(v15));
    v14[311] = 3;
    sub_24A3E5340(v28, v14);
    sub_24A3D72BC();
    sub_24A4AC1F0();
    memcpy(v14, v15, 0x130uLL);
    sub_24A3D785C(v14);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24A3E8168@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = sub_24A3C9CEC(&qword_27EF3F760, &unk_24A4B6210);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v16 - v6;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E8FB4();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v8 = v5;
  LOBYTE(v20[0]) = 0;
  v9 = sub_24A4AC120();
  v11 = v10;
  v18 = v9;
  LOBYTE(v19[0]) = 1;
  sub_24A3E9160();
  sub_24A4AC160();
  v12 = LOBYTE(v20[0]);
  v28[311] = 2;
  sub_24A3E91B4();
  sub_24A4AC160();
  v17 = v12;
  *&v35[23] = v30;
  *&v35[39] = v31;
  *&v35[55] = v32;
  *&v35[71] = v33;
  *&v35[7] = v29;
  v27[311] = 3;
  sub_24A3D7088();
  sub_24A4AC160();
  (*(v8 + 8))(v7, v36);
  memcpy(v34, v28, sizeof(v34));
  *(&v19[6] + 1) = *&v35[32];
  *(&v19[8] + 1) = *&v35[48];
  *(&v19[10] + 1) = *&v35[64];
  *(&v19[2] + 1) = *v35;
  v13 = v18;
  v19[0] = v18;
  v19[1] = v11;
  v14 = v17;
  LOBYTE(v19[2]) = v17;
  v19[12] = *&v35[79];
  *(&v19[4] + 1) = *&v35[16];
  memcpy(&v19[13], v28, 0x130uLL);
  memcpy(a2, v19, 0x198uLL);
  sub_24A3E5290(v19, v20);
  sub_24A37EEE0(a1);
  v24 = *&v35[32];
  v25 = *&v35[48];
  *v26 = *&v35[64];
  v22 = *v35;
  v20[0] = v13;
  v20[1] = v11;
  v21 = v14;
  *&v26[15] = *&v35[79];
  v23 = *&v35[16];
  memcpy(v27, v34, 0x130uLL);
  return sub_24A3E52EC(v20);
}

unint64_t sub_24A3E8554()
{
  v1 = 0x656C646E6168;
  v2 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x73736572646461;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_24A3E85D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A3E93D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A3E8604(uint64_t a1)
{
  v2 = sub_24A3E8FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3E8640(uint64_t a1)
{
  v2 = sub_24A3E8FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3E86AC()
{
  sub_24A4AA760();
  swift_allocObject();
  result = sub_24A4AA750();
  qword_27EF3F6E0 = result;
  return result;
}

uint64_t sub_24A3E8700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A4AC270();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A3E8790(uint64_t a1)
{
  v2 = sub_24A3E89AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3E87CC(uint64_t a1)
{
  v2 = sub_24A3E89AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFDemoContent.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3F6E8, &qword_24A4B5F20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E89AC();

  sub_24A4AC3D0();
  v9[1] = v7;
  sub_24A3C9CEC(&qword_27EF3F6F8, &qword_24A4B5F28);
  sub_24A3E8C04(&qword_27EF3F700, sub_24A3E8A00, MEMORY[0x277D83948]);
  sub_24A4AC1F0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24A3E89AC()
{
  result = qword_27EF3F6F0;
  if (!qword_27EF3F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6F0);
  }

  return result;
}

unint64_t sub_24A3E8A00()
{
  result = qword_27EF3F708;
  if (!qword_27EF3F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F708);
  }

  return result;
}

uint64_t FMFDemoContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3F710, &qword_24A4B5F30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E89AC();
  sub_24A4AC3C0();
  if (!v2)
  {
    sub_24A3C9CEC(&qword_27EF3F6F8, &qword_24A4B5F28);
    sub_24A3E8C04(&qword_27EF3F718, sub_24A3E8C7C, MEMORY[0x277D83978]);
    sub_24A4AC160();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_24A37EEE0(a1);
}

uint64_t sub_24A3E8C04(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F6F8, &qword_24A4B5F28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A3E8C7C()
{
  result = qword_27EF3F720;
  if (!qword_27EF3F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F720);
  }

  return result;
}

uint64_t sub_24A3E8D00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24A3E8D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3E8D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
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

uint64_t sub_24A3E8DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A3E8EB0()
{
  result = qword_27EF3F728;
  if (!qword_27EF3F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F728);
  }

  return result;
}

unint64_t sub_24A3E8F08()
{
  result = qword_27EF3F730;
  if (!qword_27EF3F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F730);
  }

  return result;
}

unint64_t sub_24A3E8F60()
{
  result = qword_27EF3F738;
  if (!qword_27EF3F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F738);
  }

  return result;
}

unint64_t sub_24A3E8FB4()
{
  result = qword_27EF3F748;
  if (!qword_27EF3F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F748);
  }

  return result;
}

unint64_t sub_24A3E9008()
{
  result = qword_27EF3F750;
  if (!qword_27EF3F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F750);
  }

  return result;
}

unint64_t sub_24A3E90B8()
{
  result = qword_27EF3F758;
  if (!qword_27EF3F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F758);
  }

  return result;
}

unint64_t sub_24A3E9160()
{
  result = qword_27EF3F768;
  if (!qword_27EF3F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F768);
  }

  return result;
}

unint64_t sub_24A3E91B4()
{
  result = qword_27EF3F770;
  if (!qword_27EF3F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F770);
  }

  return result;
}

unint64_t sub_24A3E922C()
{
  result = qword_27EF3F778;
  if (!qword_27EF3F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F778);
  }

  return result;
}

unint64_t sub_24A3E9284()
{
  result = qword_27EF3F780;
  if (!qword_27EF3F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F780);
  }

  return result;
}

unint64_t sub_24A3E92DC()
{
  result = qword_27EF3F788;
  if (!qword_27EF3F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F788);
  }

  return result;
}

unint64_t sub_24A3E9334()
{
  result = qword_27EF3F790;
  if (!qword_27EF3F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F790);
  }

  return result;
}

unint64_t sub_24A3E9388(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A3E93D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_24A4AC270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A4AE480 == a2 || (sub_24A4AC270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_24A4AC270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A4AC270();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_24A3E953C()
{
  result = qword_27EF3F798;
  if (!qword_27EF3F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F798);
  }

  return result;
}

uint64_t FMFActionURLInfo.firstName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFActionURLInfo(0) + 20));

  return v1;
}

uint64_t type metadata accessor for FMFActionURLInfo(uint64_t a1)
{
  result = qword_27EF3F7A8;
  if (!qword_27EF3F7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFActionURLInfo.lastName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFActionURLInfo(0) + 24));

  return v1;
}

uint64_t FMFActionURLInfo.email.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFActionURLInfo(0) + 28));

  return v1;
}

uint64_t FMFActionURLInfo.currentUserId.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFActionURLInfo(0) + 36));

  return v1;
}

void sub_24A3E97C4(uint64_t a1)
{
  sub_24A3A72D8(319, &qword_27EF3F6C0, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_24A3A732C();
    if (v2 <= 0x3F)
    {
      sub_24A3A72D8(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_24A3A72D8(319, &qword_27EF3F7B8, type metadata accessor for FMFLocationAlert);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for FMFSavePrefsRequest(uint64_t a1)
{
  result = qword_27EF3F7D8;
  if (!qword_27EF3F7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3E9984()
{
  v1 = v0;
  v33 = *MEMORY[0x277D85DE8];
  v2 = (v0 + qword_27EF3F7D0);
  v3 = *(v0 + qword_27EF3F7D0 + 8);
  if (v3)
  {
    v4 = *v2;
    v32 = MEMORY[0x277D837D0];
    *&v30 = v4;
    *(&v30 + 1) = v3;
    swift_beginAccess();

    sub_24A3A6CEC(&v30, 0x656369766544656DLL, 0xEA00000000006449);
    swift_endAccess();
  }

  else
  {
    sub_24A4AA790();
    swift_allocObject();
    sub_24A4AA780();
    v5 = *(v1 + qword_27EF3F7C0 + 8);
    v6 = *(v1 + qword_27EF3F7C0 + 16);
    v7 = *(v1 + qword_27EF3F7C0 + 24);
    *&v30 = *(v1 + qword_27EF3F7C0);
    *(&v30 + 1) = v5;
    v31 = v6;
    v32 = v7;
    sub_24A388B00(v30, v5, v6, v7);
    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A3EA014();
    v8 = sub_24A4AA770();
    v10 = v9;
    sub_24A37F110(v30, *(&v30 + 1), v31, v32);

    v11 = objc_opt_self();
    v12 = sub_24A4AAA00();
    v27[0] = 0;
    v13 = [v11 JSONObjectWithData:v12 options:0 error:v27];

    v14 = v27[0];
    if (v13)
    {
      sub_24A4ABE70();
      swift_unknownObjectRelease();
      sub_24A3A60B4(&v28, &v30);
      sub_24A37EE84(&v30, &v28);
      v15 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
      if (swift_dynamicCast())
      {
        v16 = v27[0];
        v26 = v27[0];
        v17 = *(v1 + qword_27EF3F7C8);
        if (v17 == 2 || (v17 & 1) == 0)
        {
          sub_24A4A4198(0x61636F4C65646968, 0xEC0000006E6F6974, &v28);
          sub_24A37EF2C(&v28, &qword_27EF3F808, &unk_24A4BA6D0);
          sub_24A4A4198(0x657469726F766166, 0xE900000000000073, &v28);
          sub_24A37EF2C(&v28, &qword_27EF3F808, &unk_24A4BA6D0);
          *(&v29 + 1) = v15;
          *&v28 = v26;
          swift_beginAccess();

          sub_24A3A6CEC(&v28, 0x7366657270, 0xE500000000000000);
          v28 = 0u;
          v29 = 0u;
          v23 = 0x656369766544656DLL;
          v24 = 0xEA00000000006449;
        }

        else
        {
          sub_24A3C9CEC(&qword_27EF3F810, &qword_24A4B6540);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24A4B4E10;
          strcpy((inited + 32), "hideLocation");
          *(inited + 45) = 0;
          *(inited + 46) = -5120;
          if (v16[2] && (v19 = sub_24A39B2C8(0x61636F4C65646968, 0xEC0000006E6F6974), (v20 & 1) != 0))
          {
            sub_24A37EE84(v16[7] + 32 * v19, inited + 48);
          }

          else
          {
            *(inited + 48) = 0u;
            *(inited + 64) = 0u;
          }

          v25 = sub_24A431168(inited);
          swift_setDeallocating();
          sub_24A37EF2C(inited + 32, &qword_27EF3F818, &qword_24A4B6548);
          *(&v29 + 1) = sub_24A3C9CEC(&qword_27EF3F820, &unk_24A4B6550);
          *&v28 = v25;
          swift_beginAccess();
          v23 = 0x7366657270;
          v24 = 0xE500000000000000;
        }

        sub_24A3A6CEC(&v28, v23, v24);
        swift_endAccess();
        sub_24A386E10(v8, v10);
        sub_24A37EEE0(&v30);
      }

      else
      {
        sub_24A37EEE0(&v30);
        sub_24A386E10(v8, v10);
      }
    }

    else
    {
      v21 = v14;
      v22 = sub_24A4AA950();

      swift_willThrow();
      sub_24A386E10(v8, v10);
    }
  }
}

uint64_t sub_24A3E9E70()
{
  sub_24A37F110(*(v0 + qword_27EF3F7C0), *(v0 + qword_27EF3F7C0 + 8), *(v0 + qword_27EF3F7C0 + 16), *(v0 + qword_27EF3F7C0 + 24));
}

uint64_t sub_24A3E9EBC()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24A37F110(*(v0 + qword_27EF3F7C0), *(v0 + qword_27EF3F7C0 + 8), *(v0 + qword_27EF3F7C0 + 16), *(v0 + qword_27EF3F7C0 + 24));

  return v0;
}

uint64_t sub_24A3E9FB8()
{
  sub_24A3E9EBC();

  return swift_deallocClassInstance();
}

unint64_t sub_24A3EA014()
{
  result = qword_27EF3F7F0;
  if (!qword_27EF3F7F0)
  {
    sub_24A3CBC9C(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A38CDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F7F0);
  }

  return result;
}

uint64_t sub_24A3EA098()
{

  return swift_deallocClassInstance();
}

FMFCore::FMFLocationSource_optional __swiftcall FMFLocationSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMFLocation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMFLocation.motionActivityState.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t FMFLocation.poiIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMFLocation(0) + 32);

  return sub_24A3EA218(a1, v3);
}

uint64_t sub_24A3EA218(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMFLocation.isLivePending.setter(char a1)
{
  result = type metadata accessor for FMFLocation(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FMFLocation.isLivePaused.setter(char a1)
{
  result = type metadata accessor for FMFLocation(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t FMFLocation.isInaccurate.getter()
{
  v1 = type metadata accessor for FMFLocation(0);
  memcpy(__dst, (v0 + *(v1 + 44)), 0x161uLL);
  v2 = sub_24A3B9C24(__dst) == 1;
  return (v2 | __dst[352]) & 1;
}

uint64_t FMFLocation.displayLabel.getter()
{
  v1 = type metadata accessor for FMFLocation(0);
  memcpy(__dst, (v0 + *(v1 + 44)), 0x161uLL);
  v2 = sub_24A3B9C24(__dst);
  result = 0;
  if (v2 != 1)
  {
    memcpy(v4, __dst, sizeof(v4));
    return sub_24A3D67B0();
  }

  return result;
}

BOOL FMFLocation.isOld.getter()
{
  v1 = sub_24A4AAAD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMFLocation(0);
  memcpy(v12, (v0 + *(v5 + 44)), 0x161uLL);
  if (sub_24A3B9C24(v12) == 1)
  {
    return 0;
  }

  v7 = v12[38];
  v8 = [v7 timestamp];
  sub_24A4AAAA0();

  sub_24A4AAA70();
  v10 = v9;

  (*(v2 + 8))(v4, v1);
  return v10 < -300.0;
}

uint64_t sub_24A3EA664()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3EA71C(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3EA7C0(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A3EA874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3EE62C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A3EA8A4(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x800000024A4AE2F0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x6E6F697461636F6CLL;
    v4 = 0xEE00656372756F53;
  }

  if (*v1)
  {
    v3 = 0x6E6F697461636F6CLL;
    v2 = 0xE800000000000000;
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

unint64_t sub_24A3EA918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3EE62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3EA940(uint64_t a1)
{
  v2 = sub_24A3B2B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3EA97C@<X0>(uint64_t a1@<X0>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for FMFLocation(0);
  v8 = v7[8];
  v9 = sub_24A4AAB20();
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v10;
  v11 = v7[11];
  memcpy(__dst, (a1 + v11), 0x161uLL);
  memcpy((a4 + v7[11]), (a1 + v11), 0x161uLL);
  v12 = v7[8];

  sub_24A37B740(__dst, v20, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A3EE6D0(a1 + v12, a4 + v8);
  *(a4 + 33) = *(a1 + 33);
  v13 = *(a1 + 32);
  *(a4 + 24) = *(a1 + 24);
  *(a4 + 32) = v13;
  *(a4 + 16) = *(a1 + 16);
  if (a3 == 1)
  {
  }

  else
  {
    v14 = sub_24A4AC270();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v15 = *(a1 + 33) != 3;
LABEL_5:
  *(a4 + v7[9]) = v15;
  if (a3 < 2u)
  {
    v16 = sub_24A4AC270();

    if ((v16 & 1) == 0)
    {
      result = sub_24A3EE16C(a1, type metadata accessor for FMFLocation);
      v19 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v17 = *(a1 + 33);
  result = sub_24A3EE16C(a1, type metadata accessor for FMFLocation);
  v19 = v17 != 3;
LABEL_10:
  *(a4 + v7[10]) = v19;
  return result;
}

void *FMFLocation.init(from:address:label:labels:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 8);
  *(a5 + 24) = 0;
  *(a5 + 32) = 1;
  v12 = type metadata accessor for FMFLocation(0);
  v13 = v12[8];
  v14 = sub_24A4AAB20();
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  memcpy(__dst, a2, 0x130uLL);
  __dst[38] = a1;
  LOBYTE(__dst[39]) = 0;
  __dst[40] = v9;
  __dst[41] = v10;
  LOWORD(__dst[42]) = v11;
  __dst[43] = a4;
  LOBYTE(__dst[44]) = 0;
  nullsub_1();
  result = memcpy((a5 + v12[11]), __dst, 0x161uLL);
  *(a5 + 33) = 0;
  *(a5 + v12[9]) = 0;
  *(a5 + v12[10]) = 0;
  return result;
}

uint64_t FMFLocation.init(from:shiftedLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FMFLocation(0);
  v7 = v6[8];
  v8 = sub_24A4AAB20();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 33) = *(a1 + 33);
  v10 = v6[11];
  memcpy(__dst, (a1 + v10), 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1)
  {
    sub_24A3BAFB0(__src);
  }

  else
  {
    sub_24A37B740(__dst, v23, &unk_27EF404E0, &unk_24A4B5230);
    memcpy(__src, __dst, sizeof(__src));
  }

  memcpy(v23, (a1 + v10), 0x161uLL);
  if (sub_24A3B9C24(v23) == 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v11 = v23[40];
    v12 = v23[41];
    v13 = v23[42];
  }

  memcpy(v22, (a1 + v10), 0x161uLL);
  if (sub_24A3B9C24(v22) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v22[43];
  }

  memcpy(v21, (a1 + v10), 0x161uLL);
  v15 = sub_24A3B9C24(v21) != 1;
  v16 = v15 & v21[352];
  memcpy(v20, __src, 0x130uLL);
  v20[38] = a2;
  LOBYTE(v20[39]) = 0;
  v20[40] = v11;
  v20[41] = v12;
  LOWORD(v20[42]) = v13;
  v20[43] = v14;
  LOBYTE(v20[44]) = v16;
  nullsub_1();
  memcpy((a3 + v6[11]), v20, 0x161uLL);
  v17 = *(a1 + 32);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 32) = v17;
  *(a3 + v6[9]) = *(a1 + v6[9]);
  v18 = *(a1 + v6[10]);

  result = sub_24A3EE16C(a1, type metadata accessor for FMFLocation);
  *(a3 + v6[10]) = v18;
  return result;
}

uint64_t sub_24A3EAF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v180 = a2;
  v181 = sub_24A4AB4E0();
  v168 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v167 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4AAD80();
  v165 = *(v6 - 8);
  v166 = v6;
  MEMORY[0x28223BE20](v6);
  v164 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AAE10();
  v162 = *(v8 - 8);
  v163 = v8;
  MEMORY[0x28223BE20](v8);
  v161 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A3C9CEC(&qword_27EF3F488, &unk_24A4B6920);
  MEMORY[0x28223BE20](v10 - 8);
  v177 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v160 = &v143 - v13;
  MEMORY[0x28223BE20](v14);
  v159 = &v143 - v15;
  MEMORY[0x28223BE20](v16);
  v157 = &v143 - v17;
  MEMORY[0x28223BE20](v18);
  v176 = &v143 - v19;
  MEMORY[0x28223BE20](v20);
  v175 = &v143 - v21;
  MEMORY[0x28223BE20](v22);
  v174 = &v143 - v23;
  MEMORY[0x28223BE20](v24);
  v173 = &v143 - v25;
  MEMORY[0x28223BE20](v26);
  v172 = &v143 - v27;
  MEMORY[0x28223BE20](v28);
  v171 = &v143 - v29;
  MEMORY[0x28223BE20](v30);
  v170 = &v143 - v31;
  MEMORY[0x28223BE20](v32);
  v169 = &v143 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v143 - v35;
  v153 = sub_24A4AB410();
  v37 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v39 = &v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A4AAAD0();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for FMFLocation(0);
  v44 = v178[8];
  v45 = sub_24A4AAB20();
  v46 = *(*(v45 - 8) + 56);
  v179 = a3;
  v46(a3 + v44, 1, 1, v45);
  sub_24A4AB4B0();
  v48 = v47;
  sub_24A4AB4C0();
  v50 = v49;
  sub_24A4AB4A0();
  v52 = v51;
  sub_24A4AB440();
  v54 = v53;
  sub_24A4AB430();
  v56 = v55;
  sub_24A4AB470();
  v58 = v57;
  sub_24A4AB4D0();
  sub_24A4AAA80();
  v59 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v60 = sub_24A4AAA60();
  v158 = [v59 initWithCoordinate:v60 altitude:v48 horizontalAccuracy:v50 verticalAccuracy:v52 course:v54 courseAccuracy:v56 speed:0.0 speedAccuracy:0.0 timestamp:{v58, 0}];

  (*(v41 + 8))(v43, v40);
  v61 = sub_24A4AB480();
  if (!v61[2])
  {

    goto LABEL_8;
  }

  v62 = v61[4];
  v63 = v61[5];

  if (!v63)
  {
LABEL_8:
    v155 = 0;
    v156 = 0;
    v154 = 0;
    goto LABEL_9;
  }

  v155 = v63;
  v156 = v62;
  v64._countAndFlagsBits = v62;
  v64._object = v63;
  FMFDefaultLabel.init(rawValue:)(v64);
  if (LOBYTE(v184[0]) == 5)
  {
    v65 = 259;
  }

  else
  {
    v65 = 3;
  }

  v154 = v65;
LABEL_9:
  v67 = v159;
  v66 = v160;
  v68 = sub_24A4AB210();
  v69 = v179;
  *v179 = v68;
  v69[1] = v70;
  v71 = v153;
  (*(v37 + 104))(v39, *MEMORY[0x277D094B8], v153);
  v72 = sub_24A4AB460();
  v159 = v73;
  v160 = v72;
  (*(v37 + 8))(v39, v71);
  sub_24A4AB490();
  v74 = sub_24A4AB5D0();
  v75 = *(v74 - 8);
  v76 = *(v75 + 48);
  if (v76(v36, 1, v74) == 1)
  {
    sub_24A37EF2C(v36, &qword_27EF3F488, &unk_24A4B6920);
    v153 = 0;
  }

  else
  {
    v153 = sub_24A4AB570();
    (*(v75 + 8))(v36, v74);
  }

  sub_24A4AB490();
  v77 = v169;
  v78 = v76(v169, 1, v74);
  v79 = v157;
  if (v78 == 1)
  {
    sub_24A37EF2C(v77, &qword_27EF3F488, &unk_24A4B6920);
    v151 = 0;
    v152 = 0;
  }

  else
  {
    v80 = sub_24A4AB580();
    v151 = v81;
    v152 = v80;
    (*(v75 + 8))(v77, v74);
  }

  sub_24A4AB490();
  v82 = v170;
  if (v76(v170, 1, v74) == 1)
  {
    sub_24A37EF2C(v82, &qword_27EF3F488, &unk_24A4B6920);
    v169 = 0;
    v150 = 0;
  }

  else
  {
    v169 = sub_24A4AB500();
    v150 = v83;
    (*(v75 + 8))(v82, v74);
  }

  sub_24A4AB490();
  v84 = v171;
  if (v76(v171, 1, v74) == 1)
  {
    sub_24A37EF2C(v84, &qword_27EF3F488, &unk_24A4B6920);
    v170 = 0;
    v149 = 0;
  }

  else
  {
    v170 = sub_24A4AB550();
    v149 = v85;
    (*(v75 + 8))(v84, v74);
  }

  sub_24A4AB490();
  v86 = v172;
  if (v76(v172, 1, v74) == 1)
  {
    sub_24A37EF2C(v86, &qword_27EF3F488, &unk_24A4B6920);
    v171 = 0;
    v148 = 0;
  }

  else
  {
    v171 = sub_24A4AB5A0();
    v148 = v87;
    (*(v75 + 8))(v86, v74);
  }

  sub_24A4AB490();
  v88 = v173;
  if (v76(v173, 1, v74) == 1)
  {
    sub_24A37EF2C(v88, &qword_27EF3F488, &unk_24A4B6920);
    v172 = 0;
    v147 = 0;
  }

  else
  {
    v172 = sub_24A4AB5B0();
    v147 = v89;
    (*(v75 + 8))(v88, v74);
  }

  sub_24A4AB490();
  v90 = v174;
  if (v76(v174, 1, v74) == 1)
  {
    sub_24A37EF2C(v90, &qword_27EF3F488, &unk_24A4B6920);
    v173 = 0;
    v146 = 0;
  }

  else
  {
    v173 = sub_24A4AB560();
    v146 = v91;
    (*(v75 + 8))(v90, v74);
  }

  sub_24A4AB490();
  v92 = v175;
  if (v76(v175, 1, v74) == 1)
  {
    sub_24A37EF2C(v92, &qword_27EF3F488, &unk_24A4B6920);
    v174 = 0;
    v145 = 0;
  }

  else
  {
    v174 = sub_24A4AB530();
    v145 = v93;
    (*(v75 + 8))(v92, v74);
  }

  sub_24A4AB490();
  v94 = v176;
  if (v76(v176, 1, v74) == 1)
  {
    sub_24A37EF2C(v94, &qword_27EF3F488, &unk_24A4B6920);
    v175 = 0;
    v144 = 0;
  }

  else
  {
    v175 = sub_24A4AB550();
    v144 = v95;
    (*(v75 + 8))(v94, v74);
  }

  sub_24A4AB490();
  if (v76(v79, 1, v74) == 1)
  {
    sub_24A37EF2C(v79, &qword_27EF3F488, &unk_24A4B6920);
    v176 = 0;
    v143 = 0;
  }

  else
  {
    v176 = sub_24A4AB520();
    v143 = v96;
    (*(v75 + 8))(v79, v74);
  }

  sub_24A4AB490();
  if (v76(v67, 1, v74) == 1)
  {
    sub_24A37EF2C(v67, &qword_27EF3F488, &unk_24A4B6920);
    v157 = 0;
    v97 = 0;
  }

  else
  {
    v157 = sub_24A4AB540();
    v97 = v98;
    (*(v75 + 8))(v67, v74);
  }

  sub_24A4AB490();
  if (v76(v66, 1, v74) == 1)
  {
    sub_24A37EF2C(v66, &qword_27EF3F488, &unk_24A4B6920);
    v99 = 0;
    v100 = 0;
  }

  else
  {
    v101 = sub_24A4AB510();
    v102 = v66;
    v99 = v101;
    v100 = v103;
    (*(v75 + 8))(v102, v74);
  }

  sub_24A4AB490();
  v104 = v177;
  if (v76(v177, 1, v74) == 1)
  {
    sub_24A37EF2C(v104, &qword_27EF3F488, &unk_24A4B6920);
    v105 = 0;
    v106 = 0;
  }

  else
  {
    v107 = v104;
    v105 = sub_24A4AB4F0();
    v106 = v108;
    (*(v75 + 8))(v107, v74);
  }

  v109 = v181;
  v110 = v161;
  v183[0] = v153;
  v183[1] = v152;
  v183[2] = v151;
  v183[3] = 0;
  v183[4] = 0;
  v183[5] = v169;
  v183[6] = v150;
  v183[7] = v170;
  v183[8] = v149;
  v183[9] = v171;
  v183[10] = v148;
  v183[11] = v172;
  v183[12] = v147;
  memset(&v183[13], 0, 32);
  v183[17] = v173;
  v183[18] = v146;
  v183[19] = 0;
  v183[20] = 0;
  v183[21] = MEMORY[0x277D84F90];
  v183[22] = 0;
  v183[23] = 0;
  v183[24] = v160;
  v183[25] = v159;
  v183[26] = v174;
  v183[27] = v145;
  v183[28] = v175;
  v183[29] = v144;
  v183[30] = v176;
  v183[31] = v143;
  v183[32] = v157;
  v183[33] = v97;
  v183[34] = v99;
  v183[35] = v100;
  v183[36] = v105;
  v183[37] = v106;
  nullsub_1();
  memcpy(v184, v183, 0x130uLL);
  v111 = v158;
  v184[38] = v158;
  LOBYTE(v184[39]) = 0;
  v184[40] = v156;
  v184[41] = v155;
  LOWORD(v184[42]) = v154;
  v184[43] = 0;
  LOBYTE(v184[44]) = 0;
  nullsub_1();
  v112 = v179;
  memcpy(v179 + v178[11], v184, 0x161uLL);
  *(v112 + 16) = 0;
  v177 = v111;
  sub_24A4AB450();
  v114 = v162;
  v113 = v163;
  v115 = (*(v162 + 88))(v110, v163);
  v116 = 0;
  v117 = v167;
  v119 = v164;
  v118 = v165;
  if (v115 != *MEMORY[0x277D090F8])
  {
    if (v115 == *MEMORY[0x277D090E0])
    {
      v116 = 1;
    }

    else if (v115 == *MEMORY[0x277D09100])
    {
      v116 = 2;
    }

    else if (v115 == *MEMORY[0x277D090F0])
    {
      v116 = 3;
    }

    else if (v115 == *MEMORY[0x277D090E8])
    {
      v116 = 4;
    }

    else if (v115 == *MEMORY[0x277D090D8])
    {
      v116 = 5;
    }

    else
    {
      (*(v114 + 8))(v110, v113);
      v116 = 0;
    }
  }

  v112[3] = v116;
  *(v112 + 32) = 0;
  sub_24A4AB420();
  v120 = v166;
  v121 = (*(v118 + 88))(v119, v166);
  v122 = 0;
  if (v121 != *MEMORY[0x277D09088])
  {
    if (v121 == *MEMORY[0x277D09078])
    {
LABEL_62:
      v122 = 1;
      goto LABEL_67;
    }

    if (v121 == *MEMORY[0x277D09080])
    {
      v122 = 2;
    }

    else
    {
      if (v121 != *MEMORY[0x277D09090])
      {
        (*(v118 + 8))(v119, v120);
        goto LABEL_62;
      }

      v122 = 3;
    }
  }

LABEL_67:
  *(v112 + 33) = v122;
  v123 = v178;
  *(v112 + v178[9]) = 0;
  *(v112 + v123[10]) = 0;
  v124 = FMFLocation.debugDescription.getter();
  v126 = v125;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v127 = sub_24A4AB630();
  sub_24A378E18(v127, qword_27EF4E260);
  v128 = v168;
  (*(v168 + 16))(v117, a1, v109);

  v129 = sub_24A4AB600();
  v130 = sub_24A4ABCE0();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v182 = v132;
    *v131 = 136315394;
    v133 = sub_24A37BD58(v124, v126, &v182);

    *(v131 + 4) = v133;
    *(v131 + 12) = 2080;
    v134 = sub_24A4AB480();
    if (v134[2])
    {
      v136 = v134[4];
      v135 = v134[5];
    }

    else
    {
      v135 = 0xE300000000000000;
      v136 = 7104878;
    }

    v140 = *(v168 + 8);
    v140(v167, v181);
    v141 = sub_24A37BD58(v136, v135, &v182);

    *(v131 + 14) = v141;
    _os_log_impl(&dword_24A376000, v129, v130, "👀 FMFLocation: created from FMLLocation %s with secure label: '%s'", v131, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v132, -1, -1);
    MEMORY[0x24C219130](v131, -1, -1);

    v142 = sub_24A4AB220();
    (*(*(v142 - 8) + 8))(v180, v142);
    return (v140)(a1, v181);
  }

  else
  {

    v137 = sub_24A4AB220();
    (*(*(v137 - 8) + 8))(v180, v137);
    v138 = *(v128 + 8);
    v138(a1, v109);
    return (v138)(v117, v109);
  }
}

void sub_24A3EC26C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v61[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for FMFLocation(0);
  v8 = *(v60 + 32);
  v9 = sub_24A4AAB20();
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  [a1 latitude];
  v11 = v10;
  [a1 longitude];
  v13 = v12;
  [a1 altitude];
  v15 = v14;
  [a1 horizontalAccuracy];
  v17 = v16;
  [a1 verticalAccuracy];
  v19 = v18;
  [a1 course];
  v21 = v20;
  [a1 speed];
  v23 = v22;
  v24 = [a1 timestamp];
  sub_24A4AAAA0();

  v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v26 = sub_24A4AAA60();
  v27 = [v25 initWithCoordinate:v26 altitude:v11 horizontalAccuracy:v13 verticalAccuracy:v15 course:v17 courseAccuracy:v19 speed:v21 speedAccuracy:0.0 timestamp:{v23, 0}];

  (*(v5 + 8))(v7, v4);
  v28 = [a1 locationLabel];
  if (!v28)
  {
    v30 = 0;
    v32 = 0;
LABEL_8:
    v34 = 0;
    goto LABEL_9;
  }

  v29 = v28;
  v30 = sub_24A4AB850();
  v32 = v31;

  if (!v32)
  {
    v30 = 0;
    goto LABEL_8;
  }

  v33._countAndFlagsBits = v30;
  v33._object = v32;
  FMFDefaultLabel.init(rawValue:)(v33);
  if (LOBYTE(v63[0]) == 5)
  {
    v34 = 259;
  }

  else
  {
    v34 = 3;
  }

LABEL_9:
  v35 = [a1 findMyId];
  v36 = sub_24A4AB850();
  v38 = v37;

  *a2 = v36;
  *(a2 + 8) = v38;
  sub_24A3BAFB0(v62);
  memcpy(v63, v62, 0x130uLL);
  v63[38] = v27;
  LOBYTE(v63[39]) = 0;
  v63[40] = v30;
  v63[41] = v32;
  LOWORD(v63[42]) = v34;
  v63[43] = 0;
  LOBYTE(v63[44]) = 0;
  nullsub_1();
  v39 = v60;
  memcpy((a2 + *(v60 + 44)), v63, 0x161uLL);
  *(a2 + 16) = 0;
  v40 = v27;
  *(a2 + 24) = [a1 motionActivityState];
  *(a2 + 32) = 0;
  v41 = sub_24A4AA700();
  v61[3] = v41;
  v61[4] = sub_24A3EE678();
  v42 = sub_24A38D3BC(v61);
  (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D089E0], v41);
  LOBYTE(v41) = sub_24A4AA6C0();
  sub_24A37EEE0(v61);
  if ((v41 & 1) != 0 && [a1 publishReason] == 8)
  {
    v43 = 3;
  }

  else if ([a1 publishReason] == 7)
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  *(a2 + 33) = v43;
  *(a2 + *(v39 + 36)) = 0;
  *(a2 + *(v39 + 40)) = 0;
  v44 = FMFLocation.debugDescription.getter();
  v46 = v45;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v47 = sub_24A4AB630();
  sub_24A378E18(v47, qword_27EF4E260);

  v48 = a1;
  v49 = sub_24A4AB600();
  v50 = sub_24A4ABCE0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v61[0] = v52;
    *v51 = 136315394;
    v53 = sub_24A37BD58(v44, v46, v61);

    *(v51 + 4) = v53;
    *(v51 + 12) = 2080;
    v54 = [v48 locationLabel];
    if (v54)
    {
      v55 = v54;
      v56 = sub_24A4AB850();
      v58 = v57;
    }

    else
    {
      v58 = 0xE300000000000000;
      v56 = 7104878;
    }

    v59 = sub_24A37BD58(v56, v58, v61);

    *(v51 + 14) = v59;
    _os_log_impl(&dword_24A376000, v49, v50, "👀 FMFLocation: created %s with secure label: '%s'", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v52, -1, -1);
    MEMORY[0x24C219130](v51, -1, -1);
  }

  else
  {
  }
}

void FMFLocation.init(from:location:locationSource:locationLabel:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = type metadata accessor for FMFLocation(0);
  v15 = v14[8];
  v16 = sub_24A4AAB20();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  if (a6)
  {

    v17._countAndFlagsBits = a5;
    v17._object = a6;
    FMFDefaultLabel.init(rawValue:)(v17);
    if (LOBYTE(__dst[0]) == 5)
    {
      v18 = 259;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    a5 = 0;
    v18 = 0;
  }

  *a7 = a1;
  *(a7 + 8) = a2;
  sub_24A3BAFB0(__src);
  memcpy(__dst, __src, 0x130uLL);
  __dst[38] = a3;
  LOBYTE(__dst[39]) = 0;
  __dst[40] = a5;
  __dst[41] = a6;
  LOWORD(__dst[42]) = v18;
  __dst[43] = 0;
  LOBYTE(__dst[44]) = 0;
  nullsub_1();
  memcpy((a7 + v14[11]), __dst, 0x161uLL);
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 32) = 1;
  *(a7 + 33) = v13;
  *(a7 + v14[9]) = 0;
  *(a7 + v14[10]) = 0;
  v19 = a3;
  v20 = FMFLocation.debugDescription.getter();
  v22 = v21;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A4AB630();
  sub_24A378E18(v23, qword_27EF4E260);

  v24 = sub_24A4AB600();
  v25 = sub_24A4ABCE0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v26 = 136315138;
    v28 = sub_24A37BD58(v20, v22, &v29);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_24A376000, v24, v25, "👀 FMFLocation: created %s'", v26, 0xCu);
    sub_24A37EEE0(v27);
    MEMORY[0x24C219130](v27, -1, -1);
    MEMORY[0x24C219130](v26, -1, -1);
  }

  else
  {
  }
}

uint64_t FMFLocation.init(from:updatedLocation:address:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  memcpy(v58, a3, 0x130uLL);
  *(v12 + 3) = 0;
  v12[32] = 1;
  v13 = v8[8];
  v14 = sub_24A4AAB20();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = *a1;
  v16 = a1[1];
  v50 = a1;
  v17 = *(a2 + 8);
  if (!v16)
  {
    goto LABEL_7;
  }

  if (!v17 || (v15 != *a2 || v16 != v17) && (sub_24A4AC270() & 1) == 0)
  {
    do
    {
      sub_24A4AC050();
      __break(1u);
LABEL_7:
      ;
    }

    while (v17);
  }

  *v12 = v15;
  *(v12 + 1) = v16;
  v12[16] = *(a2 + 16);
  v12[33] = *(a2 + 33);
  v18 = v8[11];
  memcpy(v57, (a2 + v18), 0x161uLL);
  v19 = sub_24A3B9C24(v57);
  v49 = a4;
  if (v19 == 1)
  {

    sub_24A37EF2C(v58, &unk_27EF404E0, &unk_24A4B5230);
    memcpy(v56, (a2 + v18), 0x161uLL);
    memcpy(&v12[v8[11]], (a2 + v18), 0x161uLL);
    sub_24A37B740(v56, v55, &qword_27EF3F840, &qword_24A4B6598);
    goto LABEL_23;
  }

  v20 = v57[38];
  memcpy(v56, (a2 + v18), 0x161uLL);
  if (sub_24A3B9C24(v56) == 1)
  {
    v47 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v47 = v56[40];
    v21 = v56[41];
    v22 = v56[42];
  }

  memcpy(v55, (a2 + v18), 0x161uLL);
  if (sub_24A3B9C24(v55) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v55[43];
  }

  memcpy(v54, v58, sizeof(v54));
  if (sub_24A3D77F8(v54) != 1)
  {
    v24 = v58;
LABEL_21:
    memcpy(v53, v24, sizeof(v53));
    goto LABEL_22;
  }

  memcpy(v52, (a2 + v18), 0x161uLL);
  if (sub_24A3B9C24(v52) != 1)
  {
    sub_24A37B740(v52, v51, &unk_27EF404E0, &unk_24A4B5230);
    v24 = v52;
    goto LABEL_21;
  }

  sub_24A3BAFB0(v53);
LABEL_22:
  memcpy(v52, v50 + v8[11], 0x161uLL);
  v25 = sub_24A3B9C24(v52) != 1;
  v26 = v25 & v52[352];
  memcpy(v51, v53, 0x130uLL);
  v51[38] = v20;
  LOBYTE(v51[39]) = 0;
  v51[40] = v47;
  v51[41] = v21;
  LOWORD(v51[42]) = v22;
  v51[43] = v23;
  LOBYTE(v51[44]) = v26;
  nullsub_1();
  memcpy(&v12[v8[11]], v51, 0x161uLL);
  v27 = *(a2 + 32);
  *(v12 + 3) = *(a2 + 24);
  v12[32] = v27;

  v28 = v20;
  a4 = v49;
LABEL_23:
  v12[v8[9]] = *(a2 + v8[9]);
  v12[v8[10]] = *(a2 + v8[10]);
  v29 = FMFLocation.debugDescription.getter();
  v31 = v30;
  v32 = v48;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v33 = sub_24A4AB630();
  sub_24A378E18(v33, qword_27EF4E260);
  sub_24A3EE104(a2, v32, type metadata accessor for FMFLocation);

  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v29;
    v37 = v32;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v38 = 136315394;
    v40 = sub_24A37BD58(v36, v31, v56);

    *(v38 + 4) = v40;
    *(v38 + 12) = 2080;
    v41 = FMFLocation.debugDescription.getter();
    v43 = v42;
    sub_24A3EE16C(v37, type metadata accessor for FMFLocation);
    v44 = sub_24A37BD58(v41, v43, v56);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_24A376000, v34, v35, "👀 FMFLocation: updated %sfrom %s", v38, 0x16u);
    swift_arrayDestroy();
    v45 = v39;
    a4 = v49;
    MEMORY[0x24C219130](v45, -1, -1);
    MEMORY[0x24C219130](v38, -1, -1);
  }

  else
  {

    sub_24A3EE16C(v32, type metadata accessor for FMFLocation);
  }

  sub_24A3EE16C(v50, type metadata accessor for FMFLocation);
  sub_24A39CA50(v12, a4, type metadata accessor for FMFLocation);
  return sub_24A3EE16C(a2, type metadata accessor for FMFLocation);
}

uint64_t FMFLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F848, &unk_24A4B65A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7 - 8];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B2B60();
  sub_24A4AC3D0();
  v15 = *v3;
  v18 = 0;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();
  if (!v2)
  {
    v9 = *(type metadata accessor for FMFLocation(0) + 44);
    memcpy(v14, v3 + v9, 0x161uLL);
    memcpy(v13, v3 + v9, sizeof(v13));
    v17 = 1;
    sub_24A37B740(v14, v12, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A3C9CEC(&qword_27EF3F840, &qword_24A4B6598);
    sub_24A3EE02C();
    sub_24A4AC1F0();
    memcpy(v12, v13, 0x161uLL);
    sub_24A37EF2C(v12, &qword_27EF3F840, &qword_24A4B6598);
    v16 = 3;
    sub_24A4AC1E0();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::OpaquePointer_optional __swiftcall FMFLocation.labels(with:)(FMFCore::FMFLabelSourceType with)
{
  v2 = with;
  v3 = type metadata accessor for FMFLabelledLocation(0);
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = *v2;
  v12 = type metadata accessor for FMFLocation(0);
  memcpy(v48, (v1 + *(v12 + 44)), 0x161uLL);
  if (sub_24A3B9C24(v48) == 1 || (v14 = v48[43]) == 0)
  {
    v32 = 0;
  }

  else
  {
    v15 = *(v48[43] + 16);

    v45 = v15;
    if (v15)
    {
      v17 = 0;
      v18 = MEMORY[0x277D84F90];
      v43 = v11;
      while (1)
      {
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }

        v19 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v20 = *(v46 + 72);
        sub_24A3EE104(v14 + v19 + v20 * v17, v10, type metadata accessor for FMFLabelledLocation);
        v21 = v10[32];
        if (*(v10 + 3))
        {
          v22 = v21 == 3;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (v11 == 3)
          {
            goto LABEL_39;
          }

          goto LABEL_5;
        }

        if (v11 == 3)
        {
          goto LABEL_5;
        }

        v23 = 0x736573696D657270;
        if (v21 == 1)
        {
          v23 = 0x646E65697266;
        }

        v24 = 0xE600000000000000;
        if (v21 != 1)
        {
          v24 = 0xE800000000000000;
        }

        if (v10[32])
        {
          v25 = v23;
        }

        else
        {
          v25 = 0x6C61636F6CLL;
        }

        if (v10[32])
        {
          v26 = v24;
        }

        else
        {
          v26 = 0xE500000000000000;
        }

        if (v11)
        {
          if (v11 == 1)
          {
            v27 = 0x646E65697266;
          }

          else
          {
            v27 = 0x736573696D657270;
          }

          if (v11 == 1)
          {
            v28 = 0xE600000000000000;
          }

          else
          {
            v28 = 0xE800000000000000;
          }

          if (v25 == v27)
          {
LABEL_36:
            if (v26 == v28)
            {

LABEL_39:
              sub_24A39CA50(v10, v44, type metadata accessor for FMFLabelledLocation);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v47 = v18;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_24A3DBD2C(0, *(v18 + 16) + 1, 1);
                v18 = v47;
              }

              v31 = *(v18 + 16);
              v30 = *(v18 + 24);
              if (v31 >= v30 >> 1)
              {
                sub_24A3DBD2C((v30 > 1), v31 + 1, 1);
                v18 = v47;
              }

              *(v18 + 16) = v31 + 1;
              v16 = sub_24A39CA50(v44, v18 + v19 + v31 * v20, type metadata accessor for FMFLabelledLocation);
              v11 = v43;
              goto LABEL_6;
            }
          }
        }

        else
        {
          v28 = 0xE500000000000000;
          if (v25 == 0x6C61636F6CLL)
          {
            goto LABEL_36;
          }
        }

        v42 = sub_24A4AC270();

        v11 = v43;
        if (v42)
        {
          goto LABEL_39;
        }

LABEL_5:
        v16 = sub_24A3EE16C(v10, type metadata accessor for FMFLabelledLocation);
LABEL_6:
        if (v45 == ++v17)
        {
          goto LABEL_46;
        }
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_46:

    v33 = *(v18 + 16);
    if (v33)
    {
      v34 = v18 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v46 = *(v46 + 72);
      v32 = MEMORY[0x277D84F90];
      v45 = v18;
      do
      {
        sub_24A3EE104(v34, v7, type metadata accessor for FMFLabelledLocation);
        v36 = *(v7 + 2);
        v37 = *(v7 + 3);
        v38 = *(v7 + 16);

        sub_24A3EE16C(v7, type metadata accessor for FMFLabelledLocation);
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_24A3BE94C(0, *(v32 + 2) + 1, 1, v32, &qword_27EF3F548, &qword_24A4B5788, &type metadata for FMFLabel);
          }

          v40 = *(v32 + 2);
          v39 = *(v32 + 3);
          if (v40 >= v39 >> 1)
          {
            v32 = sub_24A3BE94C((v39 > 1), v40 + 1, 1, v32, &qword_27EF3F548, &qword_24A4B5788, &type metadata for FMFLabel);
          }

          *(v32 + 2) = v40 + 1;
          v35 = &v32[24 * v40];
          *(v35 + 4) = v36;
          *(v35 + 5) = v37;
          *(v35 + 24) = v38;
        }

        v34 += v46;
        --v33;
      }

      while (v33);
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }
  }

  v16 = v32;
LABEL_59:
  result.value._rawValue = v16;
  result.is_nil = v13;
  return result;
}

char *sub_24A3ED900(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A3EDA58(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A3C9CEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A3C9CEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24A3EDB8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A3EDCB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_24A3C9CEC(&qword_27EF3F8C8, &qword_24A4B8C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24A3EDDB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_24A3C9CEC(&qword_27EF3F8D8, &qword_24A4B6948);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_24A3EDEF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_24A3C9CEC(&qword_27EF3F550, &qword_24A4B6940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24A3EE02C()
{
  result = qword_27EF3F850;
  if (!qword_27EF3F850)
  {
    sub_24A3CBC9C(&qword_27EF3F840, &qword_24A4B6598);
    sub_24A3EE0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F850);
  }

  return result;
}

unint64_t sub_24A3EE0B0()
{
  result = qword_27EF3F858;
  if (!qword_27EF3F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F858);
  }

  return result;
}

uint64_t sub_24A3EE104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3EE16C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7FMFCore11FMFLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = v1[1];
  v6 = *(v3 + 8);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = *v1 == *v3 && v5 == v6;
    if (!v7 && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v6)
  {
    goto LABEL_21;
  }

  v8 = type metadata accessor for FMFLocation(0);
  v9 = v8[11];
  memcpy(__dst, v4 + v9, 0x161uLL);
  v10 = v8[11];
  memcpy(v22, (v3 + v10), 0x161uLL);
  memcpy(__src, v4 + v9, 0x161uLL);
  memcpy(&__src[360], (v3 + v10), 0x161uLL);
  memcpy(v23, v4 + v9, 0x161uLL);
  if (sub_24A3B9C24(v23) != 1)
  {
    memcpy(v19, v4 + v9, 0x161uLL);
    memcpy(v17, v4 + v9, 0x161uLL);
    memcpy(v18, (v3 + v10), 0x161uLL);
    if (sub_24A3B9C24(v18) == 1)
    {
      memcpy(v16, v4 + v9, 0x161uLL);
      sub_24A37B740(__dst, v15, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v22, v15, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v19, v15, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A3C36E0(v16);
      goto LABEL_16;
    }

    memcpy(v16, (v3 + v10), 0x161uLL);
    sub_24A37B740(__dst, v15, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v22, v15, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v19, v15, &qword_27EF3F840, &qword_24A4B6598);
    v12 = sub_24A3D7468(v17, v16);
    memcpy(v14, v16, 0x161uLL);
    sub_24A3C36E0(v14);
    memcpy(v15, v17, 0x161uLL);
    sub_24A3C36E0(v15);
    memcpy(v16, v4 + v9, 0x161uLL);
    sub_24A37EF2C(v16, &qword_27EF3F840, &qword_24A4B6598);
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_21:
    v11 = 0;
    return v11 & 1;
  }

  memcpy(v18, (v3 + v10), 0x161uLL);
  if (sub_24A3B9C24(v18) == 1)
  {
    memcpy(v19, v4 + v9, 0x161uLL);
    sub_24A37B740(__dst, v17, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v22, v17, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37EF2C(v19, &qword_27EF3F840, &qword_24A4B6598);
LABEL_18:
    if (*(v4 + 16) == *(v3 + 16) && *(v4 + 33) == *(v3 + 33) && *(v4 + v8[10]) == *(v3 + v8[10]))
    {
      v11 = *(v4 + v8[9]) ^ *(v3 + v8[9]) ^ 1;
      return v11 & 1;
    }

    goto LABEL_21;
  }

  sub_24A37B740(__dst, v19, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A37B740(v22, v19, &qword_27EF3F840, &qword_24A4B6598);
LABEL_16:
  memcpy(v18, __src, 0x2C9uLL);
  sub_24A37EF2C(v18, &qword_27EF3F8E0, &unk_24A4B6950);
  v11 = 0;
  return v11 & 1;
}

unint64_t sub_24A3EE580()
{
  result = qword_27EF3F860;
  if (!qword_27EF3F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F860);
  }

  return result;
}

unint64_t sub_24A3EE5D8()
{
  result = qword_27EF3F890;
  if (!qword_27EF3F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F890);
  }

  return result;
}

unint64_t sub_24A3EE62C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A3EE678()
{
  result = qword_27EF40910;
  if (!qword_27EF40910)
  {
    sub_24A4AA700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40910);
  }

  return result;
}

uint64_t sub_24A3EE6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void FMFLocationAlert.location.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-v5];
  v7 = sub_24A4AAAD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = CLLocationCoordinate2DMake(v2[2], v2[3]);
  v12 = v2[4];
  v13 = type metadata accessor for FMFLocationAlert(0);
  sub_24A37B740(v2 + v13[26], v6, &qword_27EF3F460, &unk_24A4B53B0);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    sub_24A4AAA40();
    if (v14(v6, 1, v7) != 1)
    {
      sub_24A37EF2C(v6, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v15 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v16 = sub_24A4AAA60();
  v17 = [v15 initWithCoordinate:v16 altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 course:v12 speed:0.0 timestamp:{0.0, 0.0}];

  (*(v8 + 8))(v10, v7);
  memcpy(v26, v2 + v13[23], 0x130uLL);
  v18 = v2 + v13[20];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = *(v18 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v22 = type metadata accessor for FMFLocation(0);
  v23 = v22[8];
  v24 = sub_24A4AAB20();
  (*(*(v24 - 8) + 56))(a1 + v23, 1, 1, v24);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  memcpy(v30, v26, 0x130uLL);
  v30[38] = v17;
  LOBYTE(v30[39]) = 0;
  *(&v30[39] + 1) = *v29;
  HIDWORD(v30[39]) = *&v29[3];
  v30[40] = v20;
  v30[41] = v19;
  LOWORD(v30[42]) = v21;
  *(&v30[42] + 2) = v27;
  HIWORD(v30[42]) = v28;
  v30[43] = 0;
  LOBYTE(v30[44]) = 0;
  nullsub_1();
  memcpy((a1 + v22[11]), v30, 0x161uLL);
  *(a1 + 33) = 0;
  *(a1 + v22[9]) = 0;
  *(a1 + v22[10]) = 0;
  (*(*(v22 - 1) + 56))(a1, 0, 1, v22);
  sub_24A37B740(v26, v25, &unk_27EF404E0, &unk_24A4B5230);
}

uint64_t FMFLocationAlertTarget.rawValue.getter()
{
  if (*v0)
  {
    return 0x744F796669746F4ELL;
  }

  else
  {
    return 0x654D796669746F4ELL;
  }
}

uint64_t FMFLocationAlertTriggerType.rawValue.getter()
{
  v1 = 0x7265746E65;
  v2 = 0x74616964656D6D69;
  if (*v0 != 2)
  {
    v2 = 0x656C756465686373;
  }

  if (*v0)
  {
    v1 = 1953069157;
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

uint64_t FMFLocationAlertAcceptanceStatus.rawValue.getter()
{
  v1 = 0x676E69646E6550;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636341;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646948;
  }
}

uint64_t FMFLocationAlert.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:schedule:phoneNumbers:emails:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:muteEndDate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, uint64_t a20)
{
  v108 = a2;
  v109 = a7;
  v101 = a6;
  v106 = a4;
  v107 = a3;
  v110 = a12;
  v24 = a11;
  v25 = a10;
  v26 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v26 - 8);
  v104 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v105 = &v101 - v29;
  v30 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v101 - v34;
  memcpy(v115, a5, sizeof(v115));
  LODWORD(v102) = *a8;
  v36 = *a19;
  v37 = *(a1 + 8);
  *a9 = *a1;
  *(a9 + 8) = v37;
  v111 = a1;
  if (a10 == 2)
  {
    v25 = *(a1 + 42);
  }

  *(a9 + 42) = v25 & 1;
  LODWORD(v103) = v36;
  if (a11 == 2)
  {
    v24 = *(v111 + 43);
  }

  *(a9 + 43) = v24 & 1;
  sub_24A37B740(v110, v32, &qword_27EF3F470, &qword_24A4B6960);
  v38 = type metadata accessor for FMFSchedule(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if (v40(v32, 1, v38) == 1)
  {
    v41 = type metadata accessor for FMFLocationAlert(0);
    sub_24A37B740(v111 + *(v41 + 48), v35, &qword_27EF3F470, &qword_24A4B6960);
    v42 = v40(v32, 1, v38);

    if (v42 != 1)
    {
      sub_24A37EF2C(v32, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    sub_24A3F4460(v32, v35);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v43 = a16;
  v45 = type metadata accessor for FMFLocationAlert(0);
  sub_24A37BE24(v35, a9 + v45[12], &qword_27EF3F470, &qword_24A4B6960);
  v46 = v111;
  *(a9 + 40) = *(v111 + 40);
  v47 = v102;
  if (v102 == 4)
  {
    v47 = *(v46 + 41);
  }

  v48 = a18;
  *(a9 + 41) = v47;
  v50 = v45[13];
  if (!a16)
  {
    a15 = *(v46 + v50);
    v43 = *(v46 + v50 + 8);
  }

  v51 = (a9 + v50);
  *v51 = a15;
  v51[1] = v43;
  v52 = v45[14];
  if (!a18)
  {
    a17 = *(v46 + v52);
    v48 = *(v46 + v52 + 8);
  }

  v53 = a13;
  v54 = (a9 + v52);
  *v54 = a17;
  v54[1] = v48;
  v55 = v45[15];
  v56 = v103;
  v57 = v104;
  if (v103 == 3)
  {
    v56 = *(v46 + v55);
  }

  v58 = a14;
  *(a9 + v55) = v56;
  v59 = v45[16];
  if (!a13)
  {
  }

  *(a9 + v59) = v53;
  v60 = v45[17];
  if (!a14)
  {
    v58 = *(v46 + v60);
  }

  *(a9 + v60) = v58;
  v61 = v45[18];
  v102 = *(v46 + v61);
  v103 = a20;
  *(a9 + v61) = v102;
  v62 = v45[19];
  v63 = *(v46 + v62);
  v64 = *(v46 + v62 + 8);
  v65 = (a9 + v62);
  *v65 = v63;
  v65[1] = v64;
  sub_24A37B740(a20, v57, &qword_27EF3F460, &unk_24A4B53B0);
  v66 = sub_24A4AAAD0();
  v67 = *(v66 - 8);
  v68 = *(v67 + 48);
  if (v68(v57, 1, v66) == 1)
  {
    v69 = v46 + v45[27];
    v70 = v105;
    sub_24A37B740(v69, v105, &qword_27EF3F460, &unk_24A4B53B0);
    v71 = v68(v57, 1, v66);

    if (v71 != 1)
    {
      sub_24A37EF2C(v57, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v70 = v105;
    (*(v67 + 32))(v105, v57, v66);
    (*(v67 + 56))(v70, 0, 1, v66);
  }

  sub_24A37BE24(v70, a9 + v45[27], &qword_27EF3F460, &unk_24A4B53B0);
  v72 = v108;
  if (v108)
  {
    v73 = v108;
    [v73 coordinate];
    *(a9 + 16) = v74;
    [v73 coordinate];
    *(a9 + 24) = v75;
    v76 = v45[26];
    v77 = [v73 timestamp];
    sub_24A4AAAA0();

    (*(v67 + 56))(a9 + v76, 0, 1, v66);
    v78 = v111;
  }

  else
  {
    v78 = v111;
    *(a9 + 16) = *(v111 + 16);
    sub_24A37B740(v78 + v45[26], a9 + v45[26], &qword_27EF3F460, &unk_24A4B53B0);
  }

  v79 = v103;
  v80 = v107;
  if (v106)
  {
    v80 = *(v78 + 32);
  }

  *(a9 + 32) = v80;
  memcpy(v114, v115, sizeof(v114));
  if (sub_24A3D77F8(v114) != 1)
  {
    memcpy((a9 + v45[23]), v115, 0x130uLL);
    memcpy(v113, v114, sizeof(v113));
    v91 = FMFAddress.displayAddress.getter();
    v92 = (a9 + v45[22]);
    *v92 = v91;
    v92[1] = v93;
    v86 = v109;
    if (v109)
    {
      goto LABEL_32;
    }

LABEL_37:

    sub_24A37EF2C(v79, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v110, &qword_27EF3F470, &qword_24A4B6960);
    v94 = v45[20];
    v96 = *(v78 + v94);
    v95 = *(v78 + v94 + 8);
    v97 = *(v78 + v94 + 16);
    v98 = a9 + v94;
    *v98 = v96;
    *(v98 + 8) = v95;
    *(v98 + 16) = v97;

    goto LABEL_38;
  }

  v81 = v45[23];
  memcpy(v113, (v78 + v81), sizeof(v113));
  memcpy((a9 + v45[23]), (v78 + v81), 0x130uLL);
  v82 = v45[22];
  v83 = *(v78 + v82);
  v84 = *(v78 + v82 + 8);
  v85 = (a9 + v82);
  *v85 = v83;
  v85[1] = v84;
  sub_24A37B740(v113, &v112, &unk_27EF404E0, &unk_24A4B5230);

  v86 = v109;
  if (!v109)
  {
    goto LABEL_37;
  }

LABEL_32:

  v87 = v101;
  v88._countAndFlagsBits = v101;
  v88._object = v86;
  FMFDefaultLabel.init(rawValue:)(v88);

  sub_24A37EF2C(v79, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v110, &qword_27EF3F470, &qword_24A4B6960);
  if (v113[0] == 5)
  {
    v89 = 259;
  }

  else
  {
    v89 = 3;
  }

  v90 = a9 + v45[20];
  *v90 = v87;
  *(v90 + 8) = v86;
  *(v90 + 16) = v89;
LABEL_38:
  *(a9 + v45[21]) = *(v78 + v45[21]);
  *(a9 + v45[24]) = *(v78 + v45[24]);
  v99 = *(v78 + v45[25]);
  result = sub_24A3B593C(v78, type metadata accessor for FMFLocationAlert);
  *(a9 + v45[25]) = v99;
  return result;
}

uint64_t FMFLocationAlert.init(identifier:location:address:addressType:radius:label:locationAlertTarget:triggerType:repeating:schedule:phoneNumbers:emails:followerIds:friendId:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:muteEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, const void *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, unsigned __int8 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  v48 = *a5;
  v46 = a6[1];
  v47 = *a6;
  v45 = *(a6 + 8);
  v25 = *a7;
  v26 = *a8;
  v27 = *a22;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 42) = 1;
  *(a9 + 43) = a11;
  v28 = type metadata accessor for FMFLocationAlert(0);
  sub_24A37B740(a12, a9 + v28[12], &qword_27EF3F470, &qword_24A4B6960);
  *(a9 + 40) = v25;
  *(a9 + 41) = v26;
  v29 = 1;
  v30 = (a9 + v28[13]);
  *v30 = a18;
  v30[1] = a19;
  v31 = (a9 + v28[14]);
  *v31 = a20;
  v31[1] = a21;
  *(a9 + v28[15]) = v27;
  *(a9 + v28[16]) = a13;
  *(a9 + v28[17]) = a14;
  *(a9 + v28[18]) = a15;
  v32 = (a9 + v28[19]);
  *v32 = a16;
  v32[1] = a17;
  [a3 coordinate];
  *(a9 + 16) = v33;
  [a3 coordinate];
  *(a9 + 24) = v34;
  v35 = v28[26];
  v36 = [a3 timestamp];
  sub_24A4AAAA0();

  v37 = sub_24A4AAAD0();
  (*(*(v37 - 8) + 56))(a9 + v35, 0, 1, v37);
  *(a9 + 32) = a10;
  memcpy(__dst, a4, sizeof(__dst));
  nullsub_1();
  memcpy((a9 + v28[23]), __dst, 0x130uLL);
  memcpy(v49, a4, sizeof(v49));
  v38 = FMFAddress.displayAddress.getter();
  v39 = (a9 + v28[22]);
  *v39 = v38;
  v39[1] = v40;
  v41 = a9 + v28[20];
  *v41 = v47;
  *(v41 + 8) = v46;
  *(v41 + 16) = v45;
  *(a9 + v28[21]) = v48;
  sub_24A37B740(a23, a9 + v28[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(a9 + v28[24]) = 1;
  if (v25 != 1)
  {
    v29 = sub_24A4AC270();
  }

  sub_24A37EF2C(a23, &qword_27EF3F460, &unk_24A4B53B0);
  result = sub_24A37EF2C(a12, &qword_27EF3F470, &qword_24A4B6960);
  *(a9 + v28[25]) = v29 & 1;
  return result;
}

uint64_t sub_24A3EF74C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A4AAF60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *(v5 + 16);
  v12(&v26 - v10, a1, v4, v9);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D09220])
  {
    v14 = 0;
LABEL_17:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v14;
    return result;
  }

  if (v13 == *MEMORY[0x277D09200])
  {
    v14 = 1;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D091F8])
  {
    v14 = 2;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D09208])
  {
    v14 = 3;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D091F0])
  {
    v14 = 4;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D09218])
  {
    v14 = 5;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D091E8])
  {
    v14 = 6;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D09210])
  {
    v14 = 7;
    goto LABEL_17;
  }

  v27 = v5;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  (v12)(v7, a1, v4);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_24A3F5824(&qword_27EF3F9A8, MEMORY[0x277D09228], MEMORY[0x277D09230]);
    v21 = sub_24A4AC240();
    v23 = v22;
    (*(v27 + 8))(v7, v4);
    v24 = sub_24A37BD58(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24A376000, v17, v18, "Unrecognized source variant %s", v19, 0xCu);
    sub_24A37EEE0(v20);
    MEMORY[0x24C219130](v20, -1, -1);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v7, v4);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_24A4ABF50();

  v28 = 0xD00000000000001CLL;
  v29 = 0x800000024A4B0150;
  sub_24A3F5824(&qword_27EF3F9A8, MEMORY[0x277D09228], MEMORY[0x277D09230]);
  v25 = sub_24A4AC240();
  MEMORY[0x24C217D50](v25);

  result = sub_24A4AC050();
  __break(1u);
  return result;
}

FMFCore::FMFLocationAlertAddressType_optional __swiftcall FMFLocationAlertAddressType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24A3EFBFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A4AB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *(v5 + 16);
  v12(&v26 - v10, a1, v4, v9);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D09268])
  {
    v14 = 0;
LABEL_5:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v14;
    return result;
  }

  if (v13 == *MEMORY[0x277D09260])
  {
    v14 = 1;
    goto LABEL_5;
  }

  v27 = v5;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  (v12)(v7, a1, v4);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_24A3F5824(&qword_27EF3F998, MEMORY[0x277D09270], MEMORY[0x277D09278]);
    v21 = sub_24A4AC240();
    v23 = v22;
    (*(v27 + 8))(v7, v4);
    v24 = sub_24A37BD58(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24A376000, v17, v18, "Unrecognized trigger variant %s", v19, 0xCu);
    sub_24A37EEE0(v20);
    MEMORY[0x24C219130](v20, -1, -1);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v7, v4);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_24A4ABF50();

  v28 = 0xD00000000000001DLL;
  v29 = 0x800000024A4B0110;
  sub_24A3F5824(&qword_27EF3F998, MEMORY[0x277D09270], MEMORY[0x277D09278]);
  v25 = sub_24A4AC240();
  MEMORY[0x24C217D50](v25);

  result = sub_24A4AC050();
  __break(1u);
  return result;
}

FMFCore::FMFLocationAlertTriggerType_optional __swiftcall FMFLocationAlertTriggerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A3F0050()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F0114(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3F01C4(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A3F0290(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265746E65;
  v4 = 0xE900000000000065;
  v5 = 0x74616964656D6D69;
  if (*v1 != 2)
  {
    v5 = 0x656C756465686373;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 1953069157;
    v2 = 0xE400000000000000;
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

FMFCore::FMFLocationAlertTarget_optional __swiftcall FMFLocationAlertTarget.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A3F0374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x744F796669746F4ELL;
  }

  else
  {
    v3 = 0x654D796669746F4ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC00000073726568;
  }

  if (*a2)
  {
    v5 = 0x744F796669746F4ELL;
  }

  else
  {
    v5 = 0x654D796669746F4ELL;
  }

  if (*a2)
  {
    v6 = 0xEC00000073726568;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3F0424()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F04B0(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3F0528(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F05B0@<X0>(char *a2@<X8>)
{
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24A3F0610(uint64_t *a1@<X8>)
{
  v2 = 0x654D796669746F4ELL;
  if (*v1)
  {
    v2 = 0x744F796669746F4ELL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEC00000073726568;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A3F0658@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A4AAFC0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D09238])
  {
    v10 = 0;
LABEL_7:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v10;
    return result;
  }

  if (v9 == *MEMORY[0x277D09240])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D09248])
  {
    v10 = 2;
    goto LABEL_7;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_24A4ABF50();

  v13 = 0xD00000000000001CLL;
  v14 = 0x800000024A4B0130;
  sub_24A3F5824(&qword_27EF3F9A0, MEMORY[0x277D09250], MEMORY[0x277D09258]);
  v12 = sub_24A4AC240();
  MEMORY[0x24C217D50](v12);

  result = sub_24A4AC050();
  __break(1u);
  return result;
}

FMFCore::FMFLocationAlertAcceptanceStatus_optional __swiftcall FMFLocationAlertAcceptanceStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A3F08E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6550;
  if (v2 != 1)
  {
    v4 = 0x6465747065636341;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6564646948;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E69646E6550;
  if (*a2 != 1)
  {
    v8 = 0x6465747065636341;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6564646948;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3F09E0()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F0A80(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3F0B0C(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A3F0BB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E69646E6550;
  if (v2 != 1)
  {
    v5 = 0x6465747065636341;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6564646948;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FMFLocationAlert.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMFLocationAlert.ckRecordName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFLocationAlert(0) + 52));

  return v1;
}

uint64_t FMFLocationAlert.ckRecordZoneOwnerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFLocationAlert(0) + 56));

  return v1;
}

uint64_t FMFLocationAlert.acceptanceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMFLocationAlert(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

double FMFLocationAlert.phoneNumbers.getter()
{
  type metadata accessor for FMFLocationAlert(0);

  return result;
}

double FMFLocationAlert.emails.getter()
{
  type metadata accessor for FMFLocationAlert(0);

  return result;
}

double FMFLocationAlert.followerIds.getter()
{
  type metadata accessor for FMFLocationAlert(0);

  return result;
}

uint64_t FMFLocationAlert.friendId.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFLocationAlert(0) + 76));

  return v1;
}

double FMFLocationAlert.label.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFLocationAlert(0) + 80));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

uint64_t FMFLocationAlert.addressType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMFLocationAlert(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t FMFLocationAlert.address.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFLocationAlert(0) + 88));

  return v1;
}

uint64_t FMFLocationAlert.fullAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FMFLocationAlert(0) + 92);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x130uLL);
  return sub_24A37B740(__dst, &v5, &unk_27EF404E0, &unk_24A4B5230);
}

uint64_t FMFLocationAlert.displayLabel.getter()
{
  v1 = type metadata accessor for FMFLocationAlert(0);
  v2 = (v0 + v1[20]);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5._countAndFlagsBits = sub_24A4AB880();
    FMFDefaultLabel.init(rawValue:)(v5);
    if (__dst[0] == 5)
    {

      v6 = v4;
      v7 = v3;
    }

    else
    {
      v6 = FMFDefaultLabel.localizedLabel.getter();
      v7 = v8;
    }

    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10._countAndFlagsBits = sub_24A4AB880();
      FMFDefaultLabel.init(rawValue:)(v10);
      if (__dst[0] != 5)
      {
        return FMFDefaultLabel.localizedLabel.getter();
      }

      goto LABEL_14;
    }
  }

  v12 = (v0 + v1[22]);
  v13 = v12[1];
  if (v13)
  {
    v4 = *v12;
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
LABEL_14:

      return v4;
    }
  }

  memcpy(__dst, (v0 + v1[23]), sizeof(__dst));
  if (sub_24A3D77F8(__dst) != 1)
  {
    memcpy(v16, __dst, sizeof(v16));
    return FMFAddress.displayAddress.getter();
  }

  return 0;
}

unint64_t sub_24A3F11F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656475746974616CLL;
      break;
    case 2:
      result = 0x64757469676E6F6CLL;
      break;
    case 3:
      result = 0x737569646172;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0x72656767697274;
      break;
    case 6:
      result = 1850700649;
      break;
    case 7:
      result = 0x6F656D6974656E6FLL;
      break;
    case 8:
      result = 0x6D695465636E6566;
      break;
    case 9:
      result = 0x64726F6365526B63;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6954657461647075;
      break;
    case 13:
      result = 0x6D754E656E6F6870;
      break;
    case 14:
      result = 0x736C69616D65;
      break;
    case 15:
      result = 0x7265776F6C6C6F66;
      break;
    case 16:
      result = 0x6449646E65697266;
      break;
    case 17:
      result = 0x6C6562616CLL;
      break;
    case 18:
      result = 0x6E6F697461636F6CLL;
      break;
    case 19:
      result = 0x73736572646461;
      break;
    case 20:
      result = 0x726464416C6C7566;
      break;
    case 21:
      result = 0x44646E456574756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A3F1464(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A3F11F0(*a1);
  v5 = v4;
  if (v3 == sub_24A3F11F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3F14EC()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3F11F0(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F1550(uint64_t a1)
{
  sub_24A3F11F0(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A3F15A4(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A3F11F0(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A3F1604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3F57D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A3F1634@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A3F11F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A3F1668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3F57D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3F169C(uint64_t a1)
{
  v2 = sub_24A3F44C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3F16D8(uint64_t a1)
{
  v2 = sub_24A3F44C4();

  return MEMORY[0x2821FE720](a1, v2);
}

char FMFLocationAlert.init(from:)@<W0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v3 - 8);
  v124 = v120 - v4;
  v5 = sub_24A4AAAD0();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v120 - v9;
  v11 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v120 - v12;
  v14 = sub_24A3C9CEC(&qword_27EF3F8E8, &qword_24A4B6968);
  v127 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v120 - v15;
  v130 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v130);
  v131 = v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v128 = a1;
  sub_24A37EACC(a1, v18);
  sub_24A3F44C4();
  v19 = v129;
  sub_24A4AC3C0();
  if (!v19)
  {
    v129 = v13;
    v121 = v7;
    v122 = v10;
    LOBYTE(v133[0]) = 0;
    v20 = sub_24A4AC120();
    v40 = v14;
    v41 = v131;
    *v131 = v20;
    *(v41 + 8) = v42;
    LOBYTE(v133[0]) = 6;
    *(v41 + 42) = sub_24A4AC130() & 1;
    LOBYTE(v133[0]) = 7;
    *(v41 + 43) = (sub_24A4AC130() & 1) == 0;
    v43 = type metadata accessor for FMFSchedule(0);
    LOBYTE(v133[0]) = 8;
    sub_24A3F5824(&qword_27EF3F8F8, type metadata accessor for FMFSchedule, &protocol conformance descriptor for FMFSchedule);
    v44 = v129;
    sub_24A4AC160();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    sub_24A37BE24(v44, v131 + v130[12], &qword_27EF3F470, &qword_24A4B6960);
    LOBYTE(v133[0]) = 9;
    v45 = sub_24A4AC120();
    v46 = v40;
    v48 = v130;
    v47 = v131;
    v49 = (v131 + v130[13]);
    *v49 = v45;
    v49[1] = v50;
    LOBYTE(v133[0]) = 10;
    v51 = sub_24A4AC120();
    v52 = (v47 + v48[14]);
    *v52 = v51;
    v52[1] = v53;
    LOBYTE(v133[0]) = 11;
    sub_24A4AC0E0();
    if (v54)
    {
      v55 = sub_24A4AC0C0();

      v56 = 3;
      if (v55 < 3)
      {
        v56 = v55;
      }
    }

    else
    {
      v56 = 3;
    }

    *(v47 + v48[15]) = v56;
    LOBYTE(v133[0]) = 4;
    sub_24A4AC120();
    v58 = v57;
    v59 = sub_24A4AC0C0();
    if (v59 <= 1)
    {
      *(v47 + 40) = v59;
      LOBYTE(v133[0]) = 5;
      sub_24A4AC120();
      v129 = 0;
      v61 = v60;
      v120[2] = v58;

      v62 = sub_24A4AC0C0();

      if (v62 > 3)
      {
        __break(1u);
      }

      else
      {
        *(v47 + 41) = v62;
        sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
        LOBYTE(v134) = 13;
        sub_24A382908(&qword_27EF3F110, MEMORY[0x277D83808], MEMORY[0x277D83978]);
        v63 = v129;
        sub_24A4AC160();
        if (v63)
        {

          v64 = 0;
        }

        else
        {
          v64 = v133[0];
        }

        *(v131 + v130[16]) = v64;
        LOBYTE(v134) = 14;
        sub_24A4AC160();
        *(v131 + v130[17]) = v133[0];
        LOBYTE(v134) = 15;
        sub_24A4AC160();
        v65 = v130;
        v66 = v131;
        *(v131 + v130[18]) = v133[0];
        LOBYTE(v133[0]) = 16;
        v67 = sub_24A4AC120();
        v120[1] = v61;
        v68 = (v66 + v65[19]);
        *v68 = v67;
        v68[1] = v69;
        LOBYTE(v133[0]) = 1;
        v70 = COERCE_DOUBLE(sub_24A4AC0F0());
        v71 = MEMORY[0x277CE4278];
        v72 = *MEMORY[0x277CE4278];
        if ((v73 & 1) == 0)
        {
          v72 = v70;
        }

        *(v66 + 16) = v72;
        LOBYTE(v133[0]) = 2;
        v74 = COERCE_DOUBLE(sub_24A4AC0F0());
        v75 = *(v71 + 8);
        if ((v76 & 1) == 0)
        {
          v75 = v74;
        }

        *(v66 + 24) = v75;
        LOBYTE(v133[0]) = 3;
        v77 = COERCE_DOUBLE(sub_24A4AC0F0());
        if (v78)
        {
          v77 = -1.0;
        }

        *(v131 + 32) = v77;
        LOBYTE(v133[0]) = 12;
        v129 = v16;
        v79 = sub_24A4AC170();
        v80 = [objc_opt_self() fm:v79 dateFromEpoch:?];
        v81 = v122;
        sub_24A4AAAA0();

        v82 = v131;
        v83 = v130[26];
        v84 = v125;
        v85 = v81;
        v86 = v126;
        (*(v125 + 16))(v131 + v83, v85, v126);
        v87 = *(v84 + 56);
        v87(v82 + v83, 0, 1, v86);
        LOBYTE(v133[0]) = 21;
        sub_24A3F5824(&qword_27EF3F900, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
        sub_24A4AC160();
        v88 = v124;
        v89 = v126;
        v120[0] = v87;
        v87(v124, 0, 1, v126);
        v90 = *(v125 + 32);
        v91 = v121;
        v90(v121, v88, v89);
        v92 = v90;
        v93 = v131;
        v94 = v130[27];
        v92(v131 + v94, v91, v89);
        (v120[0])(v93 + v94, 0, 1, v89);
        LOBYTE(v133[0]) = 19;
        v95 = sub_24A4AC120();
        v96 = (v131 + v130[22]);
        *v96 = v95;
        v96[1] = v97;
        v132 = 20;
        sub_24A3D7088();
        sub_24A4AC110();
        memcpy((v131 + v130[23]), v133, 0x130uLL);
        LOBYTE(v134) = 17;
        v98 = sub_24A4AC120();
        v100 = v99;

        v101._countAndFlagsBits = v98;
        v101._object = v100;
        FMFDefaultLabel.init(rawValue:)(v101);
        if (v134 == 5)
        {
          v102 = 259;
        }

        else
        {
          v102 = 3;
        }

        v103 = v131 + v130[20];
        *v103 = v98;
        *(v103 + 8) = v100;
        *(v103 + 16) = v102;
        LOBYTE(v134) = 18;
        v104 = sub_24A4AC120();
        v106 = sub_24A3F2954(v104, v105);
        if (v107)
        {
          v106 = 0;
        }

        result = FMFLocationAlertAddressType.init(rawValue:)(v106).value;
        v108 = v134;
        if (v134 != 8)
        {

          v109 = v130;
          v110 = v131;
          *(v131 + v130[21]) = v108;
          *(v110 + v109[24]) = 1;
          *(v110 + v109[25]) = 1;
          v130 = FMFLocationAlert.debugDescription.getter();
          v47 = v111;
          if (qword_27EF3EBF8 == -1)
          {
LABEL_36:
            v112 = sub_24A4AB630();
            sub_24A378E18(v112, qword_27EF4E260);

            v113 = sub_24A4AB600();
            v114 = sub_24A4ABCE0();

            v115 = v114;
            if (os_log_type_enabled(v113, v114))
            {
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              v134 = v117;
              *v116 = 136315138;
              v118 = sub_24A37BD58(v130, v47, &v134);

              *(v116 + 4) = v118;
              _os_log_impl(&dword_24A376000, v113, v115, "FMFFence: initialized with coder %s", v116, 0xCu);
              sub_24A37EEE0(v117);
              MEMORY[0x24C219130](v117, -1, -1);
              MEMORY[0x24C219130](v116, -1, -1);
            }

            else
            {
            }

            (*(v125 + 8))(v122, v126);
            (*(v127 + 8))(v129, v46);
            v119 = v131;
            sub_24A3DE9CC(v131, v123);
            sub_24A37EEE0(v128);
            return sub_24A3B593C(v119, type metadata accessor for FMFLocationAlert);
          }

LABEL_41:
          swift_once();
          goto LABEL_36;
        }
      }

      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  v21 = 0;
  LODWORD(v127) = 0;
  v22 = 0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A4AB630();
  sub_24A378E18(v23, qword_27EF4E260);
  v24 = v19;
  v25 = sub_24A4AB600();
  v26 = sub_24A4ABCC0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    LODWORD(v125) = 0;
    v28 = v27;
    v29 = swift_slowAlloc();
    LODWORD(v126) = 0;
    v129 = v19;
    v30 = v29;
    v133[0] = v29;
    *v28 = 136315138;
    v134 = v129;
    v31 = v129;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    v32 = sub_24A4AB870();
    v34 = sub_24A37BD58(v32, v33, v133);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_24A376000, v25, v26, "FMFFence: Could not decode. Error - %s", v28, 0xCu);
    sub_24A37EEE0(v30);
    v22 = v126;
    MEMORY[0x24C219130](v30, -1, -1);
    v35 = v28;
    v21 = v125;
    MEMORY[0x24C219130](v35, -1, -1);
  }

  v37 = v130;
  v36 = v131;
  v38 = v128;
  swift_willThrow();
  result = sub_24A37EEE0(v38);
  if (v21)
  {

    if (!v127)
    {
      goto LABEL_9;
    }
  }

  else if (!v127)
  {
    goto LABEL_9;
  }

  sub_24A37EF2C(v36 + v37[12], &qword_27EF3F470, &qword_24A4B6960);

LABEL_9:
  if (v22)
  {

    memcpy(v133, (v36 + v37[23]), 0x130uLL);
    return sub_24A37EF2C(v133, &unk_27EF404E0, &unk_24A4B5230);
  }

  return result;
}

unint64_t sub_24A3F2954(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24A4ABF90();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24A49D860(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t FMFLocationAlert.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v2);
  v4 = &v78 - v3;
  v5 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v78 - v6;
  v8 = type metadata accessor for FMFLocationAlert(0);
  v9 = *(v8 + 108);
  v79 = v8;
  sub_24A37B740(v0 + v9, v7, &qword_27EF3F460, &unk_24A4B53B0);
  v10 = sub_24A4AB870();
  v82 = v11;
  v83 = v10;
  sub_24A37B740(v0 + *(v8 + 48), v4, &qword_27EF3F470, &qword_24A4B6960);
  v12 = sub_24A4AB870();
  v80 = v13;
  v81 = v12;
  v90[0] = 0;
  v90[1] = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B6960);
  MEMORY[0x24C217D50](0x69746E656469203ALL, 0xEE00203A72656966);
  v14 = *(v0 + 8);
  v87[0] = *v0;
  v87[1] = v14;

  v84 = sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v15 = sub_24A4AB870();
  MEMORY[0x24C217D50](v15);

  MEMORY[0x24C217D50](0x6475746974616C20, 0xEB00000000203A65);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x757469676E6F6C20, 0xEC000000203A6564);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v78 = v90[0];
  v16 = v90[1];
  v90[0] = 0;
  v90[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v91 = v90[0];
  v92 = v90[1];
  MEMORY[0x24C217D50](0x203A737569646172, 0xE800000000000000);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x203A6E4F736920, 0xE700000000000000);
  if (*(v0 + 42))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v0 + 42))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v17, v18);

  MEMORY[0x24C217D50](0x6974616570657220, 0xEC000000203A676ELL);
  if (*(v0 + 43))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v0 + 43))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v19, v20);

  MEMORY[0x24C217D50](0x754E656E6F687020, 0xEF203A737265626DLL);
  v21 = v79;
  v90[0] = *(v0 + v79[16]);

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v22 = sub_24A4AB870();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v23 = v91;
  v24 = v92;
  v90[0] = v78;
  v90[1] = v16;

  MEMORY[0x24C217D50](v23, v24);

  v25 = v90[0];
  v26 = v90[1];
  v90[0] = 0;
  v90[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v90[0] = 0x203A736C69616D65;
  v90[1] = 0xE800000000000000;
  v87[0] = *(v0 + v21[17]);

  v27 = sub_24A4AB870();
  MEMORY[0x24C217D50](v27);

  MEMORY[0x24C217D50](0x49646E6569726620, 0xEB00000000203A64);
  v28 = (v0 + v21[19]);
  v29 = v28[1];
  v87[0] = *v28;
  v87[1] = v29;

  v30 = sub_24A4AB870();
  MEMORY[0x24C217D50](v30);

  MEMORY[0x24C217D50](0x65776F6C6C6F6620, 0xEE00203A73644972);
  v87[0] = *(v0 + v21[18]);

  v31 = sub_24A4AB870();
  MEMORY[0x24C217D50](v31);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v32 = v90[0];
  v33 = v90[1];
  v90[0] = v25;
  v90[1] = v26;

  MEMORY[0x24C217D50](v32, v33);

  v34 = v90[0];
  v35 = v90[1];
  v90[0] = 0;
  v90[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v87[0] = v90[0];
  v87[1] = v90[1];
  MEMORY[0x24C217D50](0x203A6C6562616CLL, 0xE700000000000000);
  v36 = (v0 + v21[20]);
  v38 = *v36;
  v37 = v36[1];
  LOWORD(v36) = *(v36 + 8);
  v90[0] = v38;
  v90[1] = v37;
  LOWORD(v90[2]) = v36;

  sub_24A3C9CEC(&qword_27EF3F908, &qword_24A4B7D00);
  v39 = sub_24A4AB870();
  MEMORY[0x24C217D50](v39);

  MEMORY[0x24C217D50](0x7373657264646120, 0xEE00203A65707954);
  LOBYTE(v90[0]) = *(v0 + v21[21]);
  sub_24A4AC030();
  MEMORY[0x24C217D50](0x7373657264646120, 0xEA0000000000203ALL);
  v40 = (v0 + v21[22]);
  v41 = v40[1];
  v90[0] = *v40;
  v90[1] = v41;

  v42 = sub_24A4AB870();
  MEMORY[0x24C217D50](v42);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v43 = v87[0];
  v44 = v87[1];
  v90[0] = v34;
  v90[1] = v35;

  MEMORY[0x24C217D50](v43, v44);

  v45 = v90[0];
  v46 = v90[1];
  v90[0] = 0;
  v90[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v88 = v90[0];
  v89 = v90[1];
  MEMORY[0x24C217D50](0x726464416C6C7566, 0xED0000203A737365);
  v47 = v21[23];
  memcpy(v90, (v1 + v47), sizeof(v90));
  memcpy(v87, (v1 + v47), sizeof(v87));
  sub_24A37B740(v90, &v85, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  v48 = sub_24A4AB870();
  MEMORY[0x24C217D50](v48);

  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4B0090);
  LOBYTE(v87[0]) = *(v1 + 40);
  sub_24A4AC030();
  MEMORY[0x24C217D50](0x7265676769727420, 0xEE00203A65707954);
  LOBYTE(v87[0]) = *(v1 + 41);
  sub_24A4AC030();
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v49 = v88;
  v50 = v89;
  v87[0] = v45;
  v87[1] = v46;

  MEMORY[0x24C217D50](v49, v50);

  v51 = v87[1];
  v78 = v87[0];
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v87, "setOnMe: ");
  WORD1(v87[1]) = 0;
  HIDWORD(v87[1]) = -385875968;
  if (*(v1 + v21[25]))
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (*(v1 + v21[25]))
  {
    v53 = 0xE400000000000000;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v52, v53);

  MEMORY[0x24C217D50](0x654D794274657320, 0xEA0000000000203ALL);
  if (*(v1 + v21[24]))
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (*(v1 + v21[24]))
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v54, v55);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  MEMORY[0x24C217D50](0x656C756465686373, 0xE800000000000000);
  MEMORY[0x24C217D50](8250, 0xE200000000000000);
  MEMORY[0x24C217D50](v81, v80);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v56 = v87[0];
  v57 = v87[1];
  v87[0] = v78;
  v87[1] = v51;

  MEMORY[0x24C217D50](v56, v57);

  v59 = v87[0];
  v58 = v87[1];
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v87, "ckRecordName: ");
  HIBYTE(v87[1]) = -18;
  v60 = (v1 + v21[13]);
  v61 = v60[1];
  v85 = *v60;
  v86 = v61;

  v62 = sub_24A4AB870();
  MEMORY[0x24C217D50](v62);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4B00B0);
  v63 = (v1 + v21[14]);
  v64 = v63[1];
  v85 = *v63;
  v86 = v64;

  v65 = sub_24A4AB870();
  MEMORY[0x24C217D50](v65);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v66 = v87[0];
  v67 = v87[1];
  v87[0] = v59;
  v87[1] = v58;

  MEMORY[0x24C217D50](v66, v67);

  v69 = v87[0];
  v68 = v87[1];
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v87[0] = 0xD000000000000012;
  v87[1] = 0x800000024A4B00D0;
  LOBYTE(v85) = *(v1 + v21[15]);
  sub_24A3C9CEC(&qword_27EF3F910, &qword_24A4B69A0);
  v70 = sub_24A4AB870();
  MEMORY[0x24C217D50](v70);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v71 = v87[0];
  v72 = v87[1];
  v87[0] = v69;
  v87[1] = v68;

  MEMORY[0x24C217D50](v71, v72);

  v74 = v87[0];
  v73 = v87[1];
  strcpy(v87, "muteEndDate: ");
  HIWORD(v87[1]) = -4864;
  MEMORY[0x24C217D50](v83, v82);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v75 = v87[0];
  v76 = v87[1];
  v87[0] = v74;
  v87[1] = v73;

  MEMORY[0x24C217D50](v75, v76);

  return v87[0];
}

void FMFLocationAlert.encode(to:)(void *a1)
{
  v2 = sub_24A4AAAD0();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = sub_24A3C9CEC(&qword_27EF3F918, &qword_24A4B69A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3F44C4();
  v14 = v49;
  sub_24A4AC3D0();
  v55[0] = *v14;
  v54[0] = 0;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v15 = sub_24A38D258();
  v16 = v58;
  sub_24A4AC1F0();
  if (v16)
  {
    goto LABEL_2;
  }

  v43 = v6;
  v44 = v9;
  v45 = v11;
  LOBYTE(v55[0]) = 6;
  sub_24A4AC1C0();
  v42 = v15;
  LOBYTE(v55[0]) = 7;
  sub_24A4AC1C0();
  v58 = 0;
  v11 = v45;
  v17 = type metadata accessor for FMFLocationAlert(0);
  LOBYTE(v55[0]) = 8;
  sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  sub_24A3F4518();
  v16 = v58;
  sub_24A4AC1F0();
  if (v16)
  {
    goto LABEL_2;
  }

  v41 = v17;
  LOBYTE(v55[0]) = 4;
  sub_24A4AC1B0();
  v58 = 0;

  v18 = v58;
  LOBYTE(v55[0]) = 5;
  sub_24A4AC1B0();
  v58 = v18;
  if (v18)
  {
    (*(v11 + 8))(v13, v10);
LABEL_6:

    return;
  }

  v19 = v41;
  v55[0] = *(v14 + v41[13]);
  v54[0] = 9;
  v16 = v58;
  sub_24A4AC1F0();
  if (v16)
  {
    goto LABEL_2;
  }

  v55[0] = *(v14 + v19[14]);
  v54[0] = 10;
  sub_24A4AC1F0();
  if (*(v14 + v19[15]) <= 2u)
  {
    LOBYTE(v55[0]) = 11;
    sub_24A4AC1B0();
    v58 = 0;

    v16 = v58;
  }

  LOBYTE(v55[0]) = 1;
  sub_24A4AC1D0();
  if (v16)
  {
LABEL_2:
    v58 = v16;
    (*(v11 + 8))(v13, v10);
    return;
  }

  v20 = v14;
  LOBYTE(v55[0]) = 2;
  sub_24A4AC1D0();
  v58 = 0;
  LOBYTE(v55[0]) = 3;
  v40 = v10;
  v21 = v13;
  sub_24A4AC1D0();
  v58 = 0;
  v22 = v44;
  sub_24A37B740(v14 + v41[26], v44, &qword_27EF3F460, &unk_24A4B53B0);
  v23 = *(v47 + 48);
  v24 = v23(v22, 1, v48);
  if (v24 != 1)
  {
    v25 = v44;
    v26 = sub_24A4AAA60();
    (*(v47 + 8))(v25, v48);
    [v26 fm_epoch];
    LOBYTE(v55[0]) = 12;
    v27 = v58;
    sub_24A4AC200();
    v58 = v27;
    if (v27)
    {
      (*(v45 + 8))(v21, v40);

      return;
    }
  }

  v28 = v43;
  sub_24A37B740(v14 + v41[27], v43, &qword_27EF3F460, &unk_24A4B53B0);
  if (v23(v28, 1, v48) == 1)
  {
    sub_24A37EF2C(v43, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    (*(v47 + 32))(v46, v43, v48);
    LOBYTE(v55[0]) = 21;
    sub_24A3F5824(&qword_27EF3F400, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v29 = v58;
    sub_24A4AC1F0();
    v58 = v29;
    if (v29)
    {
      (*(v47 + 8))(v46, v48);
LABEL_12:
      (*(v45 + 8))(v21, v40);
      return;
    }

    (*(v47 + 8))(v46, v48);
  }

  *&v55[0] = *(v14 + v41[16]);
  v54[0] = 13;
  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  sub_24A38CA78();
  v30 = v58;
  sub_24A4AC1F0();
  v58 = v30;
  if (v30)
  {
    goto LABEL_12;
  }

  *&v55[0] = *(v14 + v41[17]);
  v54[0] = 14;
  sub_24A4AC1F0();
  v58 = 0;
  *&v55[0] = *(v14 + v41[18]);
  v54[0] = 15;
  sub_24A4AC1F0();
  v58 = 0;
  v55[0] = *(v14 + v41[19]);
  v54[0] = 16;
  sub_24A4AC1F0();
  v58 = 0;
  v57 = *(v14 + v41[22]);
  v56 = 19;
  sub_24A4AC1F0();
  v58 = 0;
  v31 = v41[23];
  memcpy(v55, v14 + v31, sizeof(v55));
  memcpy(v54, v14 + v31, sizeof(v54));
  v53[311] = 20;
  sub_24A37B740(v55, v53, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  sub_24A3D7238();
  v32 = v58;
  sub_24A4AC1F0();
  v58 = v32;
  if (v32)
  {
    memcpy(v53, v54, 0x130uLL);
    sub_24A37EF2C(v53, &unk_27EF404E0, &unk_24A4B5230);
    goto LABEL_12;
  }

  memcpy(v53, v54, 0x130uLL);
  sub_24A37EF2C(v53, &unk_27EF404E0, &unk_24A4B5230);
  v33 = v41[21];
  LOBYTE(v51) = *(v20 + v33);
  sub_24A4AB870();
  LOBYTE(v51) = 18;
  v34 = v58;
  sub_24A4AC1B0();
  v58 = v34;
  if (!v34)
  {

    v35 = (v20 + v41[20]);
    v37 = *v35;
    v36 = v35[1];
    if (!v36)
    {
      v37 = 0;
    }

    v51 = v37;
    v52 = v36;
    v50 = 17;
    v38 = v58;
    sub_24A4AC1F0();
    v58 = v38;
    if (!v38)
    {
      v51 = *(v20 + v33);
      sub_24A4AC240();
      LOBYTE(v51) = 18;
      v39 = v58;
      sub_24A4AC1B0();
      v58 = v39;
      (*(v45 + 8))(v21, v40);
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  (*(v45 + 8))(v21, v40);
}

uint64_t sub_24A3F4460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFSchedule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A3F44C4()
{
  result = qword_27EF3F8F0;
  if (!qword_27EF3F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F8F0);
  }

  return result;
}

unint64_t sub_24A3F4518()
{
  result = qword_27EF3F920;
  if (!qword_27EF3F920)
  {
    sub_24A3CBC9C(&qword_27EF3F470, &qword_24A4B6960);
    sub_24A3F5824(&qword_27EF3F928, type metadata accessor for FMFSchedule, &protocol conformance descriptor for FMFSchedule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F920);
  }

  return result;
}

uint64_t _s7FMFCore16FMFLocationAlertV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFSchedule(0);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v97 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v90 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3F9B0, &unk_24A4B6F90);
  MEMORY[0x28223BE20](v9);
  v96 = &v90 - v10;
  v11 = sub_24A4AAAD0();
  v98 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v90 - v15;
  v17 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - v18;
  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v21)
  {
    goto LABEL_13;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 42) != *(a2 + 42) || *(a1 + 43) != *(a2 + 43))
  {
    goto LABEL_13;
  }

  v24 = type metadata accessor for FMFLocationAlert(0);
  v25 = v24[16];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_13;
    }

    v93 = v24;
    v28 = sub_24A38B37C(v26, v27);
    v24 = v93;
    if ((v28 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v27)
  {
    goto LABEL_13;
  }

  v29 = v24[17];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_13;
    }

    v93 = v24;
    v32 = sub_24A38B37C(v30, v31);
    v24 = v93;
    if ((v32 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v31)
  {
    goto LABEL_13;
  }

  v33 = v24[18];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34)
  {
    if (!v35)
    {
      goto LABEL_13;
    }

    v93 = v24;
    v36 = sub_24A38B37C(v34, v35);
    v24 = v93;
    if ((v36 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v35)
  {
    goto LABEL_13;
  }

  v37 = v24[19];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_13;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v93 = v24;
      v42 = sub_24A4AC270();
      v24 = v93;
      if ((v42 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v41)
  {
    goto LABEL_13;
  }

  v43 = v24[20];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (!v45)
  {
    v93 = v24;
    if (!v47)
    {

      v24 = v93;
      goto LABEL_46;
    }

LABEL_44:

    goto LABEL_13;
  }

  if (!v47)
  {
    goto LABEL_44;
  }

  if (*v44 != *v46 || v45 != v47)
  {
    v93 = v24;
    v48 = sub_24A4AC270();
    v24 = v93;
    if ((v48 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_46:
  if (*(a1 + v24[21]) == *(a2 + v24[21]))
  {
    v93 = v24;
    v49 = v24[22];
    v50 = (a1 + v49);
    v51 = *(a1 + v49 + 8);
    v52 = (a2 + v49);
    v53 = v52[1];
    if (v51)
    {
      if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_24A4AC270() & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_54:
      v92 = v93[23];
      memcpy(v106, (a1 + v92), sizeof(v106));
      v91 = v93[23];
      memcpy(v107, v91 + a2, sizeof(v107));
      memcpy(v105, (a1 + v92), 0x130uLL);
      memcpy(&v105[304], v91 + a2, 0x130uLL);
      memcpy(v108, (a1 + v92), 0x130uLL);
      if (sub_24A3D77F8(v108) == 1)
      {
        memcpy(v103, &v105[304], 0x130uLL);
        if (sub_24A3D77F8(v103) == 1)
        {
          memcpy(v104, v105, sizeof(v104));
          sub_24A37B740(v106, v102, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37B740(v107, v102, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37EF2C(v104, &unk_27EF404E0, &unk_24A4B5230);
LABEL_63:
          if (*(a1 + 40))
          {
            v57 = 0x744F796669746F4ELL;
          }

          else
          {
            v57 = 0x654D796669746F4ELL;
          }

          if (*(a1 + 40))
          {
            v58 = 0xEC00000073726568;
          }

          else
          {
            v58 = 0xE800000000000000;
          }

          if (*(a2 + 40))
          {
            v59 = 0x744F796669746F4ELL;
          }

          else
          {
            v59 = 0x654D796669746F4ELL;
          }

          if (*(a2 + 40))
          {
            v60 = 0xEC00000073726568;
          }

          else
          {
            v60 = 0xE800000000000000;
          }

          v92 = v60;
          if (v57 == v59 && v58 == v92)
          {
          }

          else
          {
            v90 = v58;
            LODWORD(v91) = sub_24A4AC270();

            if ((v91 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if ((sub_24A3DF050(*(a1 + 41), *(a2 + 41)) & 1) == 0 || *(a1 + v93[25]) != *(a2 + v93[25]) || *(a1 + v93[24]) != *(a2 + v93[24]))
          {
            goto LABEL_13;
          }

          v61 = v93[13];
          v62 = (a1 + v61);
          v63 = *(a1 + v61 + 8);
          v64 = (a2 + v61);
          v65 = v64[1];
          if (v63)
          {
            if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_24A4AC270() & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          else if (v65)
          {
            goto LABEL_13;
          }

          v66 = v93[14];
          v67 = (a1 + v66);
          v68 = *(a1 + v66 + 8);
          v69 = (a2 + v66);
          v70 = v69[1];
          if (v68)
          {
            if (!v70 || (*v67 != *v69 || v68 != v70) && (sub_24A4AC270() & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          else if (v70)
          {
            goto LABEL_13;
          }

          v71 = v93[15];
          v72 = *(a1 + v71);
          v73 = *(a2 + v71);
          if (v72 == 3)
          {
            if (v73 != 3)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v73 == 3)
            {
              goto LABEL_13;
            }

            v74 = 0x6E6564646948;
            if (v72)
            {
              if (v72 == 1)
              {
                v75 = 0xE700000000000000;
                v76 = 0x676E69646E6550;
              }

              else
              {
                v75 = 0xE800000000000000;
                v76 = 0x6465747065636341;
              }
            }

            else
            {
              v75 = 0xE600000000000000;
              v76 = 0x6E6564646948;
            }

            if (v73)
            {
              if (v73 == 1)
              {
                v92 = 0xE700000000000000;
                v74 = 0x676E69646E6550;
              }

              else
              {
                v92 = 0xE800000000000000;
                v74 = 0x6465747065636341;
              }
            }

            else
            {
              v92 = 0xE600000000000000;
            }

            if (v76 == v74 && v75 == v92)
            {
            }

            else
            {
              v90 = v75;
              LODWORD(v91) = sub_24A4AC270();

              if ((v91 & 1) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          v92 = v93[27];
          v77 = *(v17 + 48);
          sub_24A37B740(a1 + v92, v19, &qword_27EF3F460, &unk_24A4B53B0);
          v78 = a2 + v92;
          v92 = v77;
          sub_24A37B740(v78, &v19[v77], &qword_27EF3F460, &unk_24A4B53B0);
          v91 = *(v98 + 48);
          if (v91(v19, 1, v11) == 1)
          {
            if (v91(&v19[v92], 1, v11) == 1)
            {
              sub_24A37EF2C(v19, &qword_27EF3F460, &unk_24A4B53B0);
LABEL_121:
              v81 = v93[12];
              v82 = *(v9 + 48);
              v83 = a1 + v81;
              v84 = v96;
              sub_24A37B740(v83, v96, &qword_27EF3F470, &qword_24A4B6960);
              sub_24A37B740(a2 + v81, v84 + v82, &qword_27EF3F470, &qword_24A4B6960);
              v85 = *(v94 + 48);
              if (v85(v84, 1, v95) == 1)
              {
                if (v85(&v96[v82], 1, v95) == 1)
                {
                  sub_24A37EF2C(v96, &qword_27EF3F470, &qword_24A4B6960);
                  v22 = 1;
                  return v22 & 1;
                }
              }

              else
              {
                v86 = v96;
                sub_24A37B740(v96, v8, &qword_27EF3F470, &qword_24A4B6960);
                if (v85((v86 + v82), 1, v95) != 1)
                {
                  v87 = v96;
                  v88 = &v96[v82];
                  v89 = v97;
                  sub_24A3F4460(v88, v97);
                  v22 = static FMFSchedule.== infix(_:_:)();
                  sub_24A3B593C(v89, type metadata accessor for FMFSchedule);
                  sub_24A3B593C(v8, type metadata accessor for FMFSchedule);
                  sub_24A37EF2C(v87, &qword_27EF3F470, &qword_24A4B6960);
                  return v22 & 1;
                }

                sub_24A3B593C(v8, type metadata accessor for FMFSchedule);
              }

              v54 = &qword_27EF3F9B0;
              v55 = &unk_24A4B6F90;
              v56 = v96;
              goto LABEL_61;
            }
          }

          else
          {
            sub_24A37B740(v19, v16, &qword_27EF3F460, &unk_24A4B53B0);
            if (v91(&v19[v92], 1, v11) != 1)
            {
              v79 = v98;
              (*(v98 + 32))(v13, &v19[v92], v11);
              sub_24A3F5824(&qword_27EF3F3C0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
              LODWORD(v92) = sub_24A4AB810();
              v80 = *(v79 + 8);
              v80(v13, v11);
              v80(v16, v11);
              sub_24A37EF2C(v19, &qword_27EF3F460, &unk_24A4B53B0);
              if ((v92 & 1) == 0)
              {
                goto LABEL_13;
              }

              goto LABEL_121;
            }

            (*(v98 + 8))(v16, v11);
          }

          v54 = &qword_27EF3F3B8;
          v55 = &qword_24A4B5480;
          v56 = v19;
LABEL_61:
          sub_24A37EF2C(v56, v54, v55);
          goto LABEL_13;
        }

        sub_24A37B740(v106, v104, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A37B740(v107, v104, &unk_27EF404E0, &unk_24A4B5230);
      }

      else
      {
        memcpy(v104, v105, sizeof(v104));
        memcpy(v102, v105, sizeof(v102));
        memcpy(v103, &v105[304], 0x130uLL);
        if (sub_24A3D77F8(v103) != 1)
        {
          memcpy(v101, &v105[304], sizeof(v101));
          LODWORD(v92) = _s7FMFCore10FMFAddressV2eeoiySbAC_ACtFZ_0(v102, v101);
          memcpy(v99, v101, sizeof(v99));
          sub_24A37B740(v106, v100, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37B740(v107, v100, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37B740(v104, v100, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A3D785C(v99);
          memcpy(v100, v102, sizeof(v100));
          sub_24A3D785C(v100);
          memcpy(v101, v105, sizeof(v101));
          sub_24A37EF2C(v101, &unk_27EF404E0, &unk_24A4B5230);
          if ((v92 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_63;
        }

        memcpy(v101, v105, sizeof(v101));
        sub_24A37B740(v106, v100, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A37B740(v107, v100, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A37B740(v104, v100, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A3D785C(v101);
      }

      memcpy(v103, v105, sizeof(v103));
      v54 = &qword_27EF3F350;
      v55 = &unk_24A4B5250;
      v56 = v103;
      goto LABEL_61;
    }

    if (!v53)
    {
      goto LABEL_54;
    }
  }

LABEL_13:
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_24A3F53DC()
{
  result = qword_27EF3F930;
  if (!qword_27EF3F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F930);
  }

  return result;
}

unint64_t sub_24A3F5434()
{
  result = qword_27EF3F938;
  if (!qword_27EF3F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F938);
  }

  return result;
}

unint64_t sub_24A3F548C()
{
  result = qword_27EF3F940;
  if (!qword_27EF3F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F940);
  }

  return result;
}

unint64_t sub_24A3F54E4()
{
  result = qword_27EF3F948;
  if (!qword_27EF3F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F948);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlert.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlert.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A3F56CC()
{
  result = qword_27EF3F980;
  if (!qword_27EF3F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F980);
  }

  return result;
}

unint64_t sub_24A3F5724()
{
  result = qword_27EF3F988;
  if (!qword_27EF3F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F988);
  }

  return result;
}

unint64_t sub_24A3F577C()
{
  result = qword_27EF3F990;
  if (!qword_27EF3F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F990);
  }

  return result;
}

unint64_t sub_24A3F57D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC290();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A3F5824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 FMFUpdatePrefsAction.__allocating_init(prefs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  result = *(a1 + 8);
  v7 = *(a1 + 24);
  v2[1].n128_u8[8] = *a1;
  v2[1].n128_u8[9] = v3;
  v2[1].n128_u8[10] = v4;
  v2[1].n128_u8[11] = v5;
  v2[2] = result;
  v2[3].n128_u64[0] = v7;
  v2[1].n128_u8[0] = 0;
  return result;
}

uint64_t FMFUpdatePrefsAction.init(prefs:)(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(v1 + 24) = *a1;
  *(v1 + 25) = v2;
  *(v1 + 26) = v3;
  *(v1 + 27) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v6;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A3F590C()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x203A736665727020, 0xE800000000000000);
  sub_24A4AC030();
  return 0;
}

uint64_t sub_24A3F5A9C()
{
}

uint64_t FMFUpdatePrefsAction.deinit()
{

  return v0;
}

uint64_t FMFUpdatePrefsAction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A3F5BAC(uint64_t a1)
{
  v30 = sub_24A4AB220();
  MEMORY[0x28223BE20](v30);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v24[1] = v1;
  v33 = MEMORY[0x277D84F90];
  v8 = v3;
  sub_24A3C0C34(0, v6, 0);
  v7 = v33;
  v32 = a1 + 56;
  result = sub_24A4ABEA0();
  v10 = result;
  v11 = 0;
  v28 = v8 + 32;
  v29 = v8;
  v25 = a1;
  v26 = a1 + 64;
  v27 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v32 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    v31 = *(a1 + 36);

    sub_24A4AB200();
    v33 = v7;
    v14 = v5;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_24A3C0C34((v15 > 1), v16 + 1, 1);
      v7 = v33;
    }

    *(v7 + 16) = v16 + 1;
    result = (*(v29 + 32))(v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v16, v14, v30);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_23;
    }

    v17 = *(v32 + 8 * v13);
    if ((v17 & (1 << v10)) == 0)
    {
      goto LABEL_24;
    }

    if (v31 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v5 = v14;
    v18 = v17 & (-2 << (v10 & 0x3F));
    if (v18)
    {
      v12 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v13 << 6;
      v20 = v13 + 1;
      v21 = (v26 + 8 * v13);
      while (v20 < (v12 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_24A406830(v10, v31, 0);
          a1 = v25;
          v12 = __clz(__rbit64(v22)) + v19;
          goto LABEL_19;
        }
      }

      result = sub_24A406830(v10, v31, 0);
      a1 = v25;
LABEL_19:
      v5 = v14;
    }

    ++v11;
    v10 = v12;
    if (v11 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24A3F5ED8()
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A3F5F2C(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A3F5F74(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

uint64_t sub_24A3F5FA4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_24A3F60BC, v2, 0);
}

uint64_t sub_24A3F60BC()
{
  v1 = v0;
  v2 = v0[5];
  *(v0[6] + 112) = v0[19];

  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[8];
    v25 = v1[9];
    v26 = MEMORY[0x277D84F90];
    v6 = v1[5];
    sub_24A3DBDA8(0, v3, 0);
    v4 = v26;
    v7 = v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v9 = v1[9];
      sub_24A3A0ADC(v7, v9);
      v10 = *v9;
      v11 = *(v25 + 8);

      sub_24A39A638(v9, type metadata accessor for FMFFriend);
      v13 = *(v26 + 16);
      v12 = *(v26 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24A3DBDA8((v12 > 1), v13 + 1, 1);
      }

      *(v26 + 16) = v13 + 1;
      v14 = v26 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v7 += v8;
      --v3;
    }

    while (v3);
  }

  v15 = v1[12];
  v16 = v1[13];
  v17 = v1[10];
  v18 = v1[11];
  v19 = v1[6];
  (*(v15 + 104))(v16, *MEMORY[0x277D08FE0], v18);
  sub_24A3FF864(1, v4, v16);

  (*(v15 + 8))(v16, v18);
  sub_24A4AAAC0();
  v20 = sub_24A4AAAD0();
  (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  v21 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A3A87F4(v17, v19 + v21);
  swift_endAccess();
  v22 = swift_task_alloc();
  v1[20] = v22;
  *v22 = v1;
  v22[1] = sub_24A3F6344;
  v23 = v1[5];

  return sub_24A3FA1B8(v23);
}

uint64_t sub_24A3F6344()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 168) = v6;
    *v6 = v3;
    v6[1] = sub_24A3F64FC;

    return sub_24A3F83A4();
  }
}

uint64_t sub_24A3F64FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_24A3F6680, v6, 0);
  }
}

uint64_t sub_24A3F6680()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_24A4ABB70();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v3;

  *(v2 + 136) = sub_24A432D64(0, 0, v1, &unk_24A4B7348, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24A3F6808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = *(type metadata accessor for FMFFriend(0) - 8);
  v5[10] = swift_task_alloc();
  v6 = sub_24A4AAD40();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_24A4AC010();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F697C, 0, 0);
}

uint64_t sub_24A3F697C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v0[6] = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v2 + 16) = 4;
    *(v2 + 24) = v0 + 6;
    sub_24A4ABD70();

    v3 = sub_24A4AC3E0();
    v5 = v4;
    sub_24A4AC2E0();
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_24A3F6B74;

    return sub_24A405F7C(v3, v5, 0, 0, 1);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24A3F6B74()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_24A3F6FA0;
  }

  else
  {
    v3 = sub_24A3F6CDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A3F6CDC()
{
  v1 = v0[19];
  sub_24A4ABBB0();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A4AB630();
    sub_24A378E18(v4, qword_27EF4E260);
    v5 = sub_24A4AB600();
    v6 = sub_24A4ABCE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A376000, v5, v6, "FMFSecureLocationCtrl: Stop remaining locating spinners", v7, 2u);
      MEMORY[0x24C219130](v7, -1, -1);
    }

    v8 = v0[8];

    v9 = *(v8 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v11 = v0[9];
      v22 = v0[10];
      v23 = MEMORY[0x277D84F90];
      v12 = v0[8];
      sub_24A3DBDA8(0, v9, 0);
      v10 = v23;
      v13 = v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v21 = *(v11 + 72);
      do
      {
        v14 = v0[10];
        sub_24A3A0ADC(v13, v14);
        v15 = *v14;
        v16 = *(v22 + 8);

        sub_24A39A638(v14, type metadata accessor for FMFFriend);
        v18 = *(v23 + 16);
        v17 = *(v23 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_24A3DBDA8((v17 > 1), v18 + 1, 1);
        }

        *(v23 + 16) = v18 + 1;
        v19 = v23 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        v13 += v21;
        --v9;
      }

      while (v9);
    }

    v0[20] = v10;
    v20 = v0[17];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D08FE0], v0[11]);

    return MEMORY[0x2822009F8](sub_24A3F7324, v20, 0);
  }
}

uint64_t sub_24A3F6FA0()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFSecureLocationCtrl: Shallow loading task cancelled", v7, 2u);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  sub_24A4ABBB0();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  sub_24A378E18(v2, qword_27EF4E260);
  v8 = sub_24A4AB600();
  v9 = sub_24A4ABCE0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A376000, v8, v9, "FMFSecureLocationCtrl: Stop remaining locating spinners", v10, 2u);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  v11 = v0[8];

  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v1[9];
    v27 = v1[10];
    v28 = MEMORY[0x277D84F90];
    v15 = v1[8];
    sub_24A3DBDA8(0, v12, 0);
    v13 = v28;
    v16 = v15 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    do
    {
      v18 = v1;
      v19 = v1[10];
      sub_24A3A0ADC(v16, v19);
      v20 = *v19;
      v21 = *(v27 + 8);

      sub_24A39A638(v19, type metadata accessor for FMFFriend);
      v23 = *(v28 + 16);
      v22 = *(v28 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24A3DBDA8((v22 > 1), v23 + 1, 1);
      }

      *(v28 + 16) = v23 + 1;
      v24 = v28 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v16 += v17;
      --v12;
      v1 = v18;
    }

    while (v12);
  }

  v1[20] = v13;
  v25 = v1[17];
  (*(v1[12] + 104))(v1[13], *MEMORY[0x277D08FE0], v1[11]);

  return MEMORY[0x2822009F8](sub_24A3F7324, v25, 0);
}

uint64_t sub_24A3F7324()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_24A3FF864(0, v0[20], v1);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_24A3F73D4, 0, 0);
}

uint64_t sub_24A3F73D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3F7458()
{
  v1[17] = v0;
  sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v1[18] = swift_task_alloc();
  v2 = sub_24A4AB3F0();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_24A4AB400();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F75AC, v0, 0);
}

uint64_t sub_24A3F75AC()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[25] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFSecureLocationCtrl: stop refreshing", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[17];

  swift_beginAccess();
  v6 = MEMORY[0x277D84F98];
  v5[15] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v5[16] = v6;

  swift_beginAccess();
  v5[19] = v6;

  swift_beginAccess();
  v5[20] = v6;

  if (v5[17])
  {

    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4ABBA0();
  }

  v7 = v0[17];
  if (*(v7 + 144))
  {

    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4ABBA0();

    v7 = v0[17];
  }

  v8 = *(v7 + 112);
  v0[26] = v8;
  if (v8)
  {
    v9 = objc_opt_self();

    v10 = [v9 mainBundle];
    v11 = [v10 bundleIdentifier];

    if (v11)
    {
      sub_24A4AB850();
    }

    (*(v0[20] + 104))(v0[21], *MEMORY[0x277D094A8], v0[19]);
    sub_24A4AB3E0();
    v17 = swift_task_alloc();
    v0[27] = v17;
    *v17 = v0;
    v17[1] = sub_24A3F79C0;
    v18 = v0[24];

    return MEMORY[0x28215FB08](v18);
  }

  else
  {
    v12 = v0[18];
    v13 = sub_24A4AAAD0();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
    swift_beginAccess();
    sub_24A3A87F4(v12, v7 + v14);
    swift_endAccess();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_24A3F79C0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_24A3F7F20;
  }

  else
  {
    v7 = sub_24A3F7B6C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24A3F7B6C()
{
  v1 = v0[17];
  v2 = *(v1 + 112);
  v0[29] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[30] = v3;
    *v3 = v0;
    v3[1] = sub_24A3F7CF8;

    return MEMORY[0x28215FAD8]();
  }

  else
  {
    v4 = v0[18];
    v5 = sub_24A4AAAD0();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
    swift_beginAccess();
    sub_24A3A87F4(v4, v1 + v6);
    swift_endAccess();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24A3F7CF8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_24A3F81A4;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_24A3F7E20;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24A3F7E20()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = sub_24A4AAAD0();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A3A87F4(v1, v2 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24A3F7F20()
{
  v1 = v0[28];
  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFSecureLocationCtrl: Stop refreshing location failed with error: %@", v7, 0xCu);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[17];
  v12 = *(v11 + 112);
  v0[29] = v12;
  if (v12)
  {

    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_24A3F7CF8;

    return MEMORY[0x28215FAD8]();
  }

  else
  {
    v14 = v0[18];
    v15 = sub_24A4AAAD0();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
    swift_beginAccess();
    sub_24A3A87F4(v14, v11 + v16);
    swift_endAccess();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24A3F81A4()
{
  v1 = v0[31];

  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFSecureLocationCtrl: Stop updating friends failed with error: %@", v7, 0xCu);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[17];
  v11 = v0[18];
  v13 = sub_24A4AAAD0();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A3A87F4(v11, v12 + v14);
  swift_endAccess();

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A3F83A4()
{
  v1[2] = v0;
  sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v1[3] = swift_task_alloc();
  v2 = *(sub_24A3C9CEC(&qword_27EF3FA98, &qword_24A4B7308) - 8);
  v1[4] = v2;
  v1[5] = *(v2 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F84B8, v0, 0);
}

uint64_t sub_24A3F84B8()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[8] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_24A3F8778;
    v4 = v0[7];

    return MEMORY[0x28215FAF0](v4, 0);
  }

  else
  {
    v5 = v0[6];
    v6 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    v10 = sub_24A3C9CEC(&qword_27EF3FAA0, &qword_24A4B7310);
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = sub_24A4ABB70();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_24A37B740(v6, v5, &qword_27EF3FA98, &qword_24A4B7308);
    v12 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController, &unk_24A4B7218);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    *(v15 + 24) = v12;
    sub_24A37BE24(v5, v15 + v13, &qword_27EF3FA98, &qword_24A4B7308);
    *(v15 + v14) = v1;
    swift_retain_n();
    sub_24A432D64(0, 0, v9, &unk_24A4B7320, v15);

    sub_24A37EF2C(v6, &qword_27EF3FA98, &qword_24A4B7308);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_24A3F8778()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_24A3F8AC0;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_24A3F88A0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24A3F88A0()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_24A3C9CEC(&qword_27EF3FAA0, &qword_24A4B7310);
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = sub_24A4ABB70();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_24A37B740(v2, v1, &qword_27EF3FA98, &qword_24A4B7308);
  v9 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController, &unk_24A4B7218);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v9;
  sub_24A37BE24(v1, v12 + v10, &qword_27EF3FA98, &qword_24A4B7308);
  *(v12 + v11) = v6;
  swift_retain_n();
  sub_24A432D64(0, 0, v5, &unk_24A4B7320, v12);

  sub_24A37EF2C(v2, &qword_27EF3FA98, &qword_24A4B7308);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A3F8AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3F8B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = sub_24A4AAD40();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = sub_24A4AAD60();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v9 = sub_24A4AB220();
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = sub_24A4AB1E0();
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();
  v11 = sub_24A4AAE00();
  v5[32] = v11;
  v5[33] = *(v11 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3FAA8, &qword_24A4B7328);
  v5[39] = swift_task_alloc();
  v12 = sub_24A3C9CEC(&qword_27EF3FAB0, &unk_24A4B7330);
  v5[40] = v12;
  v5[41] = *(v12 - 8);
  v5[42] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3FA98, &qword_24A4B7308);
  v5[43] = swift_task_alloc();
  v13 = sub_24A3C9CEC(&qword_27EF3FAA0, &qword_24A4B7310);
  v5[44] = v13;
  v5[45] = *(v13 - 8);
  v5[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F8EFC, a5, 0);
}

uint64_t sub_24A3F8EFC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  sub_24A37B740(*(v0 + 136), v3, &qword_27EF3FA98, &qword_24A4B7308);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24A37EF2C(*(v0 + 344), &qword_27EF3FA98, &qword_24A4B7308);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 344), *(v0 + 352));
    sub_24A4ABB80();
    *(v0 + 376) = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController, &unk_24A4B7218);
    swift_beginAccess();
    *(v0 + 432) = *MEMORY[0x277D090C0];
    *(v0 + 436) = *MEMORY[0x277D09030];
    *(v0 + 440) = *MEMORY[0x277D08FE0];
    *(v0 + 384) = 0;
    v6 = *(v0 + 376);
    v7 = *(v0 + 144);
    v8 = swift_task_alloc();
    *(v0 + 392) = v8;
    *v8 = v0;
    v8[1] = sub_24A3F91B8;
    v9 = *(v0 + 312);
    v10 = *(v0 + 320);

    return MEMORY[0x2822003E8](v9, v7, v6, v10);
  }
}

uint64_t sub_24A3F91B8()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_24A3F92C8, v1, 0);
}

uint64_t sub_24A3F92C8()
{
  v119 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 352);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    (*(v5 + 8))(v4, v6);

    v7 = *(v0 + 8);
LABEL_5:

    return v7();
  }

  v8 = *(v0 + 384);
  (*(v3 + 32))(*(v0 + 304), v1, v2);
  sub_24A4ABBB0();
  if (v8)
  {
    v10 = *(v0 + 360);
    v9 = *(v0 + 368);
    v11 = *(v0 + 352);
    v13 = *(v0 + 328);
    v12 = *(v0 + 336);
    v14 = *(v0 + 320);
    (*(*(v0 + 264) + 8))(*(v0 + 304), *(v0 + 256));
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);

    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 296);
  v16 = *(v0 + 304);
  v18 = *(v0 + 256);
  v19 = *(v0 + 264);
  v20 = sub_24A4AB630();
  sub_24A378E18(v20, qword_27EF4E260);
  v21 = *(v19 + 16);
  v21(v17, v16, v18);
  v22 = sub_24A4AB600();
  v23 = sub_24A4ABCB0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 296);
  v117 = v21;
  if (v24)
  {
    v26 = *(v0 + 288);
    v28 = *(v0 + 256);
    v27 = *(v0 + 264);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v118[0] = v30;
    *v29 = 136315138;
    v117(v26, v25, v28);
    v31 = sub_24A4AB870();
    v33 = v32;
    v34 = v28;
    v35 = *(v27 + 8);
    v35(v25, v34);
    v36 = v31;
    v21 = v117;
    v37 = sub_24A37BD58(v36, v33, v118);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_24A376000, v22, v23, "FMFSecureLocationCtrl: friendship stream update - %s", v29, 0xCu);
    sub_24A37EEE0(v30);
    MEMORY[0x24C219130](v30, -1, -1);
    MEMORY[0x24C219130](v29, -1, -1);
  }

  else
  {
    v39 = *(v0 + 256);
    v38 = *(v0 + 264);

    v35 = *(v38 + 8);
    v35(v25, v39);
  }

  *(v0 + 400) = v35;
  v40 = *(v0 + 432);
  v41 = *(v0 + 280);
  v42 = *(v0 + 256);
  v43 = *(v0 + 264);
  v21(v41, *(v0 + 304), v42);
  if ((*(v43 + 88))(v41, v42) == v40)
  {
    v115 = v35;
    v44 = *(v0 + 280);
    v45 = *(v0 + 240);
    v46 = *(v0 + 248);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v49 = *(v0 + 208);
    v50 = *(v0 + 216);
    (*(*(v0 + 264) + 96))(v44, *(v0 + 256));
    (*(v45 + 32))(v46, v44, v47);
    sub_24A4AB1D0();
    v51 = sub_24A4AB210();
    v53 = v52;
    (*(v50 + 8))(v48, v49);
    if (v53)
    {
      v114 = v51;
      v54 = *(v0 + 436);
      v56 = *(v0 + 192);
      v55 = *(v0 + 200);
      v58 = *(v0 + 176);
      v57 = *(v0 + 184);
      sub_24A4AB1C0();
      (*(v57 + 104))(v56, v54, v58);
      v59 = sub_24A4AAD50();
      v60 = *(v57 + 8);
      v60(v56, v58);
      v60(v55, v58);
      if (v59)
      {
        v61 = *(*(v0 + 144) + 120);
        if (*(v61 + 16))
        {

          v62 = sub_24A39B2C8(v114, v53);
          if (v63)
          {
            v64 = *(v0 + 304);
            v65 = *(v0 + 272);
            v66 = *(v0 + 256);
            v67 = *(v61 + 56) + 32 * v62;
            v111 = *v67;
            v68 = *(v67 + 16);
            v109 = *(v67 + 25);
            v110 = *(v67 + 24);
            v108 = *(v67 + 26);
            v113 = *(v67 + 8);

            v112 = v68;

            v117(v65, v64, v66);
            v69 = sub_24A4AB600();
            v70 = sub_24A4ABCE0();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = *(v0 + 288);
              v72 = *(v0 + 272);
              v73 = *(v0 + 256);
              v74 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v118[0] = v116;
              *v74 = 136315138;
              v117(v71, v72, v73);
              v75 = sub_24A4AB870();
              v77 = v76;
              v115(v72, v73);
              v78 = sub_24A37BD58(v75, v77, v118);

              *(v74 + 4) = v78;
              _os_log_impl(&dword_24A376000, v69, v70, "FMFSecureLocationCtrl: stream friend added but we already started locating them. Restart. - %s", v74, 0xCu);
              sub_24A37EEE0(v116);
              MEMORY[0x24C219130](v116, -1, -1);
              MEMORY[0x24C219130](v74, -1, -1);
            }

            else
            {
              v91 = *(v0 + 272);
              v92 = *(v0 + 256);

              v115(v91, v92);
            }

            swift_beginAccess();
            v93 = sub_24A39B2C8(v114, v53);
            v95 = v94;

            if (v95)
            {
              v96 = *(v0 + 144);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v98 = *(v96 + 120);
              *(v0 + 128) = v98;
              *(v96 + 120) = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_24A4A863C();
                v98 = *(v0 + 128);
              }

              v99 = *(v0 + 144);

              sub_24A4A7078(v93, v98, v100);
              *(v99 + 120) = v98;
            }

            v101 = *(v0 + 440);
            v103 = *(v0 + 160);
            v102 = *(v0 + 168);
            v104 = *(v0 + 152);
            swift_endAccess();
            sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
            inited = swift_initStackObject();
            *(v0 + 408) = inited;
            *(inited + 16) = xmmword_24A4B4E10;
            *(inited + 32) = v111;
            *(inited + 40) = v113;
            *(inited + 48) = v112;
            *(inited + 56) = v110;
            *(inited + 57) = v109;
            *(inited + 58) = v108;
            (*(v103 + 104))(v102, v101, v104);
            v106 = swift_task_alloc();
            *(v0 + 416) = v106;
            *v106 = v0;
            v106[1] = sub_24A3F9D70;
            v107 = *(v0 + 168);

            return sub_24A404CA4(inited, v107);
          }
        }
      }

      v81 = *(v0 + 400);
      v82 = *(v0 + 304);
      v83 = *(v0 + 256);
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      v81(v82, v83);
    }

    else
    {
      v84 = *(v0 + 304);
      v85 = *(v0 + 256);
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      v115(v84, v85);
    }
  }

  else
  {
    v79 = *(v0 + 280);
    v80 = *(v0 + 256);
    v35(*(v0 + 304), v80);
    v35(v79, v80);
  }

  *(v0 + 384) = 0;
  v86 = *(v0 + 376);
  v87 = *(v0 + 144);
  v88 = swift_task_alloc();
  *(v0 + 392) = v88;
  *v88 = v0;
  v88[1] = sub_24A3F91B8;
  v89 = *(v0 + 312);
  v90 = *(v0 + 320);

  return MEMORY[0x2822003E8](v89, v87, v86, v90);
}

uint64_t sub_24A3F9D70()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = v2[21];
  v4 = v2[20];
  v5 = v2[19];
  v6 = v2[18];
  (*(v4 + 8))(v3, v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v0)
  {
    v7 = sub_24A3FA01C;
  }

  else
  {
    v7 = sub_24A3F9F1C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24A3F9F1C()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[38];
  v4 = v0[32];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2(v3, v4);
  v0[48] = v1;
  v5 = v0[47];
  v6 = v0[18];
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_24A3F91B8;
  v8 = v0[39];
  v9 = v0[40];

  return MEMORY[0x2822003E8](v8, v6, v5, v9);
}

uint64_t sub_24A3FA01C()
{
  v1 = v0[50];
  v2 = v0[45];
  v11 = v0[46];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[32];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24A3FA1B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v2[7] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v2[8] = swift_task_alloc();
  v2[9] = sub_24A3C9CEC(&qword_27EF3FA28, &qword_24A4B72A0);
  v2[10] = swift_task_alloc();
  v3 = *(sub_24A3C9CEC(&qword_27EF3FA30, &qword_24A4B72A8) - 8);
  v2[11] = v3;
  v2[12] = *(v3 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_24A4AAD40();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for FMFFriend(0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3C0160, v1, 0);
}

uint64_t sub_24A3FA428()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[6];
  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = sub_24A3FA8E8;
  }

  else
  {
    v7 = sub_24A3FA5E4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24A3FA5E4()
{
  sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
  sub_24A378704(&qword_27EF3FA40, &qword_27EF3FA28, &qword_24A4B72A0, MEMORY[0x277D857C0]);
  sub_24A4AC230();
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  v6 = v0[6];
  v7 = sub_24A3C9CEC(&qword_27EF3FA48, &qword_24A4B72C0);
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = sub_24A4ABB70();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_24A37B740(v2, v1, &qword_27EF3FA30, &qword_24A4B72A8);
  v9 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController, &unk_24A4B7218);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v9;
  sub_24A37BE24(v1, v12 + v10, &qword_27EF3FA30, &qword_24A4B72A8);
  *(v12 + v11) = v6;
  swift_retain_n();
  sub_24A432D64(0, 0, v5, &unk_24A4B72D0, v12);

  sub_24A37EF2C(v2, &qword_27EF3FA30, &qword_24A4B72A8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A3FA8E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3FA9D4(uint64_t a1, uint64_t a2)
{
  v2[48] = a1;
  v2[49] = a2;
  v2[50] = type metadata accessor for FMFLocation(0);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v3 = sub_24A4AB220();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v4 = sub_24A4AB4E0();
  v2[58] = v4;
  v2[59] = *(v4 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v5 = sub_24A4AAE30();
  v2[62] = v5;
  v2[63] = *(v5 - 8);
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FABAC, 0, 0);
}

uint64_t sub_24A3FABAC()
{
  v60 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v2 + 16))(v1, v0[49], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D09130])
  {
    v5 = v0[64];
    v6 = v0[61];
    v7 = v0[59];
    v9 = v0[57];
    v8 = v0[58];
    v55 = v0[56];
    v11 = v0[53];
    v10 = v0[54];
    v56 = v0[60];
    v57 = v0[52];
    v58 = v0[48];
    (*(v0[63] + 96))(v5, v0[62]);
    v12 = *(sub_24A3C9CEC(&qword_27EF3FA90, &qword_24A4B7300) + 48);
    (*(v7 + 32))(v6, v5, v8);
    v13 = *(v10 + 32);
    v13(v9, v5 + v12, v11);
    (*(v7 + 16))(v56, v6, v8);
    (*(v10 + 16))(v55, v9, v11);
    sub_24A3EAF90(v56, v55, v57);
    (*(v7 + 8))(v6, v8);
    v14 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
    v15 = *(v14 + 48);
    sub_24A39976C(v57, v58, type metadata accessor for FMFLocation);
    v13(v58 + v15, v9, v11);
    (*(*(v14 - 8) + 56))(v58, 0, 1, v14);
  }

  else
  {
    v17 = v0[63];
    v16 = v0[64];
    v18 = v0[62];
    if (v4 == *MEMORY[0x277D09128])
    {
      v20 = v0[54];
      v19 = v0[55];
      v21 = v0[53];
      (*(v17 + 96))(v0[64], v0[62]);
      v22 = *(v20 + 32);
      v22(v19, v16, v21);
      v23 = sub_24A4AB210();
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v28 = v0[50];
        v27 = v0[51];
        v29 = v28[8];
        v30 = sub_24A4AAB20();
        (*(*(v30 - 8) + 56))(v27 + v29, 1, 1, v30);
        *v27 = v25;
        *(v27 + 8) = v26;
        sub_24A3B4ACC((v0 + 2));
        memcpy((v27 + v28[11]), v0 + 2, 0x161uLL);
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 32) = 257;
        *(v27 + v28[9]) = 0;
        *(v27 + v28[10]) = 0;
        v31 = FMFLocation.debugDescription.getter();
        v33 = v32;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v34 = sub_24A4AB630();
        sub_24A378E18(v34, qword_27EF4E260);

        v35 = sub_24A4AB600();
        v36 = sub_24A4ABCE0();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v59 = v38;
          *v37 = 136315394;
          v39 = sub_24A37BD58(v31, v33, &v59);

          *(v37 + 4) = v39;
          *(v37 + 12) = 2080;
          v0[47] = 0;
          sub_24A3C9CEC(&qword_27EF3FA88, &qword_24A4B72F8);
          v40 = sub_24A4ABDE0();
          v42 = sub_24A37BD58(v40, v41, &v59);

          *(v37 + 14) = v42;
          _os_log_impl(&dword_24A376000, v35, v36, "👀 FMFLocation: created %s with location: '%s'", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C219130](v38, -1, -1);
          MEMORY[0x24C219130](v37, -1, -1);
        }

        else
        {
        }

        v47 = v0[55];
        v48 = v0[53];
        v49 = v0[51];
        v50 = v0[48];
        v51 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
        v52 = *(v51 + 48);
        sub_24A39976C(v49, v50, type metadata accessor for FMFLocation);
        v22(v50 + v52, v47, v48);
        (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      }

      else
      {
        v45 = v0[48];
        (*(v0[54] + 8))(v0[55], v0[53]);
        v46 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
        (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
      }
    }

    else
    {
      v43 = v0[48];
      v44 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      (*(v17 + 8))(v16, v18);
    }
  }

  v53 = v0[1];

  return v53();
}

uint64_t sub_24A3FB240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[148] = a5;
  v5[147] = a4;
  sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v5[149] = swift_task_alloc();
  v5[150] = swift_task_alloc();
  v7 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
  v5[151] = v7;
  v5[152] = *(v7 - 8);
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v8 = type metadata accessor for FMFLocation(0);
  v5[165] = v8;
  v5[166] = *(v8 - 8);
  v5[167] = swift_task_alloc();
  v5[168] = sub_24A3C9CEC(&qword_27EF3FA58, &qword_24A4B72D8);
  v5[169] = swift_task_alloc();
  v5[170] = sub_24A3C9CEC(&qword_27EF3FA60, &qword_24A4B72E0);
  v5[171] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3FA30, &qword_24A4B72A8);
  v5[172] = swift_task_alloc();
  v9 = sub_24A3C9CEC(&qword_27EF3FA48, &qword_24A4B72C0);
  v5[173] = v9;
  v5[174] = *(v9 - 8);
  v5[175] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FB550, a5, 0);
}

uint64_t sub_24A3FB550()
{
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1376);
  sub_24A37B740(*(v0 + 1176), v3, &qword_27EF3FA30, &qword_24A4B72A8);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_24A37EF2C(*(v0 + 1376), &qword_27EF3FA30, &qword_24A4B72A8);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 1352);
    v7 = *(v0 + 1344);
    (*(*(v0 + 1392) + 32))(*(v0 + 1400), *(v0 + 1376), *(v0 + 1384));
    sub_24A4AC2E0();
    *(v6 + *(v7 + 36)) = xmmword_24A4B6FF0;
    v8 = v6 + *(v7 + 40);
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    sub_24A3C9CEC(&qword_27EF3FA68, &qword_24A4B72E8);
    sub_24A4AC010();
    sub_24A378704(&qword_27EF3FA70, &qword_27EF3FA48, &qword_24A4B72C0, MEMORY[0x277D859D8]);
    sub_24A4069B8(&qword_27EF3FA18, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24A378704(&qword_27EF3FA78, &qword_27EF3FA68, &qword_24A4B72E8, MEMORY[0x277D83990]);
    sub_24A4ABBC0();
    sub_24A37EF2C(v6, &qword_27EF3FA58, &qword_24A4B72D8);
    v9 = sub_24A4AB5E0();
    *(v0 + 1408) = v10;
    *(v0 + 1096) = v9;
    *(v0 + 1104) = v12;
    *(v0 + 1112) = v10;
    *(v0 + 1120) = v11 & 1;
    *(v0 + 1416) = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController, &unk_24A4B7218);
    *(v0 + 1424) = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate;
    v13 = swift_task_alloc();
    *(v0 + 1432) = v13;
    v14 = sub_24A3C9CEC(&qword_27EF3FA80, &qword_24A4B72F0);
    *v13 = v0;
    v13[1] = sub_24A3FB994;

    return MEMORY[0x282141C70](v0 + 1152, v14);
  }
}

uint64_t sub_24A3FB994()
{
  v2 = *v1;
  v2[180] = v0;

  v3 = v2[148];
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24A4ABB40();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24A3FCD14;
  }

  else
  {
    v2[181] = v2[144];
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_24A4ABB40();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_24A3FBB34;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_24A3FBB50(uint64_t a1)
{
  v149 = v1;
  v2 = *(v1 + 1448);
  if (!v2)
  {

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A4AB630();
    sub_24A378E18(v9, qword_27EF4E260);
    v10 = sub_24A4AB600();
    v11 = sub_24A4ABCE0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v1 + 1400);
    v14 = *(v1 + 1392);
    v15 = *(v1 + 1384);
    v16 = *(v1 + 1368);
    if (v12)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A376000, v10, v11, "FMFSecureLocationCtrl: location stream - ending", v17, 2u);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    sub_24A37EF2C(v16, &qword_27EF3FA60, &qword_24A4B72E0);
    (*(v14 + 8))(v13, v15);

    v8 = *(v1 + 8);
    goto LABEL_9;
  }

  v3 = *(v1 + 1440);
  sub_24A4ABBB0();
  if (v3)
  {
    v4 = *(v1 + 1400);
    v5 = *(v1 + 1392);
    v6 = *(v1 + 1384);
    v7 = *(v1 + 1368);

    sub_24A37EF2C(v7, &qword_27EF3FA60, &qword_24A4B72E0);
    (*(v5 + 8))(v4, v6);

    v8 = *(v1 + 8);
LABEL_9:

    return v8();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A4AB630();
  sub_24A378E18(v19, qword_27EF4E260);

  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v2 + 16);

    _os_log_impl(&dword_24A376000, v20, v21, "FMFSecureLocationCtrl: location stream update - updating %ld locations", v22, 0xCu);
    MEMORY[0x24C219130](v22, -1, -1);
  }

  else
  {
  }

  v23 = v2;

  v126 = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v2 + 16);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v26 = v23;
      v27 = *(v1 + 1216);
      *(v1 + 1168) = MEMORY[0x277D84F90];
      sub_24A3B57CC(0, v24, 0);
      v25 = *(v1 + 1168);
      v28 = v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v142 = *(v27 + 72);
      do
      {
        v145 = v24;
        v29 = *(v1 + 1336);
        v30 = *(v1 + 1312);
        v31 = *(v1 + 1304);
        v32 = *(v1 + 1208);
        sub_24A37B740(v28, v30, &qword_27EF3FA38, &qword_24A4B72B8);
        sub_24A37BE24(v30, v31, &qword_27EF3FA38, &qword_24A4B72B8);
        v33 = *(v32 + 48);
        sub_24A39976C(v31, v29, type metadata accessor for FMFLocation);
        v34 = sub_24A4AB220();
        (*(*(v34 - 8) + 8))(v31 + v33, v34);
        *(v1 + 1168) = v25;
        v36 = v25[2];
        v35 = v25[3];
        if (v36 >= v35 >> 1)
        {
          sub_24A3B57CC((v35 > 1), v36 + 1, 1);
          v25 = *(v1 + 1168);
        }

        v37 = *(v1 + 1336);
        v38 = *(v1 + 1328);
        v25[2] = v36 + 1;
        sub_24A39976C(v37, v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, type metadata accessor for FMFLocation);
        v28 += v142;
        --v24;
      }

      while (v145 != 1);
    }

    sub_24A43E62C(v25);
    swift_unknownObjectRelease();

    v23 = v126;
  }

  v39 = *(v23 + 16);
  if (v39)
  {
    v40 = v23;
    v41 = *(v1 + 1216);
    v128 = *(*(v1 + 1208) + 48);
    v129 = *(v1 + 1296);
    v42 = v40 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    swift_beginAccess();
    v127 = *(v41 + 72);
    v137 = v39 - 1;
    for (i = v1; ; v1 = i)
    {
      v43 = *(v1 + 1296);
      v44 = *(v1 + 1288);
      v45 = *(v1 + 1280);
      v46 = *(v1 + 1272);
      v47 = *(v1 + 1208);
      sub_24A37B740(v42, v43, &qword_27EF3FA38, &qword_24A4B72B8);
      v48 = *(v47 + 48);
      sub_24A39976C(v43, v44, type metadata accessor for FMFLocation);
      v49 = sub_24A4AB220();
      v146 = *(v49 - 8);
      (*(v146 + 32))(v44 + v48, v129 + v128, v49);
      sub_24A37B740(v44, v45, &qword_27EF3FA38, &qword_24A4B72B8);
      sub_24A37B740(v44, v46, &qword_27EF3FA38, &qword_24A4B72B8);
      v50 = sub_24A4AB600();
      v51 = sub_24A4ABCE0();
      v138 = v42;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = *(v1 + 1312);
        v53 = *(v1 + 1280);
        v54 = *(v1 + 1272);
        v55 = *(v1 + 1208);
        v56 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v148[0] = v143;
        *v56 = 136315394;
        sub_24A37B740(v53, v52, &qword_27EF3FA38, &qword_24A4B72B8);
        loga = v50;
        v57 = v49;
        v58 = *(v55 + 48);
        v139 = v51;
        v59 = sub_24A4AB1F0();
        v61 = v60;
        sub_24A37EF2C(v53, &qword_27EF3FA38, &qword_24A4B72B8);
        v131 = *(v146 + 8);
        v131(v52 + v58, v57);
        sub_24A39A638(v52, type metadata accessor for FMFLocation);
        v62 = sub_24A37BD58(v59, v61, v148);

        *(v56 + 4) = v62;
        *(v56 + 12) = 2080;
        sub_24A37B740(v54, v52, &qword_27EF3FA38, &qword_24A4B72B8);
        v63 = *(v55 + 48);
        v64 = FMFLocation.debugDescription.getter();
        v66 = v65;
        sub_24A37EF2C(v54, &qword_27EF3FA38, &qword_24A4B72B8);
        sub_24A39A638(v52, type metadata accessor for FMFLocation);
        v131(v52 + v63, v57);
        v67 = sub_24A37BD58(v64, v66, v148);

        *(v56 + 14) = v67;
        _os_log_impl(&dword_24A376000, loga, v139, "FMFSecureLocationCtrl: location stream update - %s: %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v143, -1, -1);
        MEMORY[0x24C219130](v56, -1, -1);
      }

      else
      {
        v68 = *(v1 + 1280);
        v69 = *(v1 + 1272);

        sub_24A37EF2C(v69, &qword_27EF3FA38, &qword_24A4B72B8);
        sub_24A37EF2C(v68, &qword_27EF3FA38, &qword_24A4B72B8);
        v57 = v49;
      }

      v70 = *(v1 + 1320);
      v71 = *(v1 + 1288);
      v72 = *(v1 + 1264);
      v73 = *(v1 + 1256);
      v74 = *(v1 + 1208);
      sub_24A37B740(v71, v72, &qword_27EF3FA38, &qword_24A4B72B8);
      v75 = *(v74 + 48);
      v140 = sub_24A4AB210();
      v144 = v76;
      v77 = v72 + v75;
      v78 = *(v146 + 8);
      v78(v77, v57);
      sub_24A37B740(v71, v73, &qword_27EF3FA38, &qword_24A4B72B8);
      v79 = *(v74 + 48);
      memmove((v1 + 16), (v73 + *(v70 + 44)), 0x161uLL);
      v80 = sub_24A3B9C24(v1 + 16);
      v81 = *(v1 + 1256);
      v82 = *(v1 + 1200);
      if (v80 == 1)
      {
        sub_24A39A638(*(v1 + 1256), type metadata accessor for FMFLocation);
        v78(v73 + v79, v57);
        v83 = sub_24A4AAAD0();
        (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
      }

      else
      {
        v84 = *(v1 + 320);
        sub_24A39A638(v81, type metadata accessor for FMFLocation);
        v85 = [v84 timestamp];

        sub_24A4AAAA0();
        v86 = sub_24A4AAAD0();
        (*(*(v86 - 8) + 56))(v82, 0, 1, v86);
        v78(v73 + v79, v57);
      }

      v87 = v57;
      v88 = *(v1 + 1320);
      v89 = *(v1 + 1312);
      v130 = *(i + 1288);
      logb = *(i + 1264);
      v90 = *(i + 1208);
      v132 = v90;
      v91 = *(i + 1200);
      sub_24A37B740(v130, v89, &qword_27EF3FA38, &qword_24A4B72B8);
      v92 = *(v90 + 48);
      memcpy((i + 376), (v89 + *(v88 + 44)), 0x161uLL);
      LODWORD(v90) = sub_24A3B9C24(i + 376) == 0;
      sub_24A39A638(v89, type metadata accessor for FMFLocation);
      v78(v89 + v92, v87);
      sub_24A4244D4(v140, v144, v91, v90);

      sub_24A37EF2C(v91, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A39A638(logb, type metadata accessor for FMFLocation);
      sub_24A37B740(v130, v89, &qword_27EF3FA38, &qword_24A4B72B8);
      v93 = *(v132 + 48);
      LODWORD(v92) = *(v89 + 33);
      sub_24A39A638(v89, type metadata accessor for FMFLocation);
      v141 = v87;
      v78(v89 + v93, v87);
      if (v92 == 2)
      {
        v94 = *(i + 1320);
        v95 = *(i + 1288);
        v96 = *(i + 1248);
        v97 = *(i + 1240);
        v98 = *(i + 1208);
        sub_24A37B740(v95, v96, &qword_27EF3FA38, &qword_24A4B72B8);
        v99 = *(v98 + 48);
        v133 = sub_24A4AB210();
        log = v100;
        v78(v96 + v99, v141);
        sub_24A37B740(v95, v97, &qword_27EF3FA38, &qword_24A4B72B8);
        v101 = *(v98 + 48);
        memmove((i + 736), (v97 + *(v94 + 44)), 0x161uLL);
        v102 = sub_24A3B9C24(i + 736);
        v103 = *(i + 1240);
        v104 = *(i + 1192);
        if (v102 == 1)
        {
          sub_24A39A638(*(i + 1240), type metadata accessor for FMFLocation);
          v78(v97 + v101, v141);
          v105 = sub_24A4AAAD0();
          (*(*(v105 - 8) + 56))(v104, 1, 1, v105);
        }

        else
        {
          v106 = *(i + 1040);
          sub_24A39A638(v103, type metadata accessor for FMFLocation);
          v107 = [v106 timestamp];

          sub_24A4AAAA0();
          v108 = sub_24A4AAAD0();
          (*(*(v108 - 8) + 56))(v104, 0, 1, v108);
          v78(v97 + v101, v141);
        }

        v109 = *(i + 1248);
        v110 = *(i + 1192);
        v111 = *(*(i + 1184) + 128);

        sub_24A424CB4(v133, log, v110, v111);

        sub_24A37EF2C(v110, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A39A638(v109, type metadata accessor for FMFLocation);
      }

      v112 = *(i + 1232);
      sub_24A37B740(*(i + 1288), v112, &qword_27EF3FA38, &qword_24A4B72B8);
      v113 = *(v112 + 33);
      sub_24A39A638(v112, type metadata accessor for FMFLocation);
      v114 = *(i + 1288);
      if (v113 == 2)
      {
        v115 = *(i + 1224);
        v116 = *(i + 1208);
        sub_24A37B740(v114, v115, &qword_27EF3FA38, &qword_24A4B72B8);
        v117 = *(v116 + 48);
        v118 = sub_24A4AB210();
        v120 = *(i + 1288);
        v121 = *(i + 1224);
        if (v119)
        {
          v122 = v118;
          v123 = v119;
          v78(v115 + v117, v141);
          sub_24A39A638(v121, type metadata accessor for FMFLocation);
          sub_24A3FEB38(v122, v123);

          sub_24A37EF2C(v120, &qword_27EF3FA38, &qword_24A4B72B8);
        }

        else
        {
          sub_24A37EF2C(*(i + 1288), &qword_27EF3FA38, &qword_24A4B72B8);
          v78(v115 + v117, v141);
          sub_24A39A638(v121, type metadata accessor for FMFLocation);
        }

        v78(*(i + 1232) + *(*(i + 1208) + 48), v141);
      }

      else
      {
        sub_24A37EF2C(v114, &qword_27EF3FA38, &qword_24A4B72B8);
        v78(*(i + 1232) + *(*(i + 1208) + 48), v141);
      }

      if (!v137)
      {
        break;
      }

      --v137;
      v42 = v138 + v127;
    }

    v1 = i;
  }

  else
  {
  }

  v124 = swift_task_alloc();
  *(v1 + 1432) = v124;
  v125 = sub_24A3C9CEC(&qword_27EF3FA80, &qword_24A4B72F0);
  *v124 = v1;
  v124[1] = sub_24A3FB994;

  return MEMORY[0x282141C70](v1 + 1152, v125);
}

uint64_t sub_24A3FCD14()
{
  *(v0 + 1160) = *(v0 + 1440);
  sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_24A3FCDA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FMFFriend(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FCE7C, v2, 0);
}

uint64_t sub_24A3FCE7C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v3 + 72);
    v7 = v1 + v5;
    v8 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = v0[9];
      sub_24A3A0ADC(v7, v10);
      v11 = v0[9];
      if ((*(v10 + *(v4 + 36)) & 2) != 0)
      {
        sub_24A39976C(v11, v0[8], type metadata accessor for FMFFriend);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24A39E574(0, *(v9 + 16) + 1, 1);
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        v14 = v9;
        if (v13 >= v12 >> 1)
        {
          sub_24A39E574((v12 > 1), v13 + 1, 1);
          v14 = v9;
        }

        v15 = v0[8];
        *(v14 + 16) = v13 + 1;
        sub_24A39976C(v15, v14 + v5 + v13 * v6, type metadata accessor for FMFFriend);
        v9 = v14;
      }

      else
      {
        sub_24A39A638(v11, type metadata accessor for FMFFriend);
      }

      v7 += v6;
      --v2;
    }

    while (v2);
    v16 = *(v9 + 16);
    if (v16)
    {
      v30 = v0[7];
      sub_24A3DBDC8(0, v16, 0);
      v17 = v8;
      v18 = v9 + v5;
      v31 = v6;
      v32 = v0;
      do
      {
        v19 = v0[7];
        sub_24A3A0ADC(v18, v19);
        v20 = *v19;
        v21 = *(v30 + 8);
        v22 = *(v30 + 32);

        sub_24A39A638(v19, type metadata accessor for FMFFriend);
        v24 = *(v8 + 16);
        v23 = *(v8 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_24A3DBDC8((v23 > 1), v24 + 1, 1);
        }

        *(v8 + 16) = v24 + 1;
        v25 = v8 + 32 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v21;
        *(v25 + 48) = v22;
        *(v25 + 56) = 0;
        *(v25 + 58) = 0;
        v0 = v32;
        v18 += v31;
        --v16;
      }

      while (v16);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v0[10] = v17;
    v28 = swift_task_alloc();
    v0[11] = v28;
    *v28 = v0;
    v28[1] = sub_24A3FD1B8;
    v29 = v0[3];

    return sub_24A3FFDAC(v17, v29);
  }

  else
  {

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_24A3FD1B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24A3FD324(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for FMFFriend(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_24A4AAD40();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FD468, v2, 0);
}

uint64_t sub_24A3FD468()
{
  v79 = v0;
  v1 = *(v0[8] + 16);
  if (v1)
  {
    if (qword_27EF3EBF8 != -1)
    {
LABEL_45:
      swift_once();
    }

    v2 = v0[19];
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[9];
    v6 = sub_24A4AB630();
    sub_24A378E18(v6, qword_27EF4E260);
    v74 = *(v4 + 16);
    v74(v2, v5, v3);
    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[19];
    v11 = v0[16];
    v12 = v0[17];
    v75 = v1;
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v78 = v14;
      *v13 = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
      v15 = sub_24A4AC240();
      v17 = v16;
      v73 = *(v12 + 8);
      v73(v10, v11);
      v18 = sub_24A37BD58(v15, v17, &v78);
      v1 = v75;

      *(v13 + 4) = v18;
      _os_log_impl(&dword_24A376000, v7, v8, "FMFSecureLocationCtrl: startLocating called, with priority: %s", v13, 0xCu);
      sub_24A37EEE0(v14);
      MEMORY[0x24C219130](v14, -1, -1);
      MEMORY[0x24C219130](v13, -1, -1);
    }

    else
    {

      v73 = *(v12 + 8);
      v73(v10, v11);
    }

    v21 = 0;
    v23 = v0[11];
    v22 = v0[12];
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = *(v22 + 72);
    v26 = v0[8] + v24;
    v27 = MEMORY[0x277D84F90];
    v77 = v25;
    do
    {
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v29 = v0[15];
      sub_24A3A0ADC(v26, v29);
      v30 = v0[15];
      if ((*(v29 + *(v23 + 36)) & 2) != 0)
      {
        sub_24A39976C(v30, v0[14], type metadata accessor for FMFFriend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A39E574(0, *(v27 + 16) + 1, 1);
          v27 = v78;
        }

        v33 = *(v27 + 16);
        v32 = *(v27 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_24A39E574((v32 > 1), v33 + 1, 1);
          v27 = v78;
        }

        v34 = v0[14];
        *(v27 + 16) = v33 + 1;
        v25 = v77;
        sub_24A39976C(v34, v27 + v24 + v33 * v77, type metadata accessor for FMFFriend);
        v1 = v75;
      }

      else
      {
        sub_24A39A638(v30, type metadata accessor for FMFFriend);
      }

      v26 += v25;
      ++v21;
    }

    while (v28 != v1);
    v35 = *(v27 + 16);
    v76 = v0;
    if (v35)
    {
      v36 = v0[13];
      v78 = MEMORY[0x277D84F90];
      sub_24A3DBDC8(0, v35, 0);
      v37 = v78;
      v38 = v27 + v24;
      do
      {
        v39 = v0[13];
        sub_24A3A0ADC(v38, v39);
        v40 = *v39;
        v41 = *(v36 + 8);
        v42 = *(v36 + 32);

        sub_24A39A638(v39, type metadata accessor for FMFFriend);
        v78 = v37;
        v44 = *(v37 + 16);
        v43 = *(v37 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_24A3DBDC8((v43 > 1), v44 + 1, 1);
          v37 = v78;
        }

        *(v37 + 16) = v44 + 1;
        v45 = v37 + 32 * v44;
        *(v45 + 32) = v40;
        *(v45 + 40) = v41;
        *(v45 + 48) = v42;
        *(v45 + 56) = 0;
        *(v45 + 58) = 0;
        v0 = v76;
        v38 += v77;
        --v35;
      }

      while (v35);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v46 = v0;
    v49 = v0 + 17;
    v48 = v0[17];
    v47 = v49[1];
    v50 = v46[16];
    v74(v47, v46[9], v50);
    v51 = (*(v48 + 88))(v47, v50);
    if (v51 == *MEMORY[0x277D08FE0])
    {
      v52 = v46[10];
      swift_beginAccess();
      v53 = *(v52 + 120);
      v54 = *(v53 + 16);
      if (!v54)
      {
LABEL_34:
        v55 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }

      v55 = sub_24A40B3F8(*(v53 + 16), 0);
      v56 = sub_24A40C0A8(&v78, (v55 + 4), v54, v53);
      v57 = v78;

      v51 = sub_24A3A13C0(v57);
      if (v56 == v54)
      {
LABEL_35:
        v63 = v76;
        v64 = sub_24A489CD4(v55);

        goto LABEL_37;
      }

      __break(1u);
    }

    if (v51 != *MEMORY[0x277D08FD8])
    {
      v63 = v76;
      v73(v76[18], v76[16]);
      v64 = MEMORY[0x277D84FA0];
LABEL_37:
      v65 = sub_24A489CD4(v37);

      v66 = sub_24A475F30(v65, v64);
      v67 = v66;
      v68 = *(v66 + 16);
      if (v68)
      {
        v69 = sub_24A40B3F8(*(v66 + 16), 0);
        v70 = sub_24A40BF10(&v78, (v69 + 4), v68, v67);
        sub_24A3A13C0(v78);
        if (v70 == v68)
        {
LABEL_41:
          v63[20] = v69;
          v71 = swift_task_alloc();
          v63[21] = v71;
          *v71 = v63;
          v71[1] = sub_24A3FDBDC;
          v72 = v63[9];

          return sub_24A3FFDAC(v69, v72);
        }

        __break(1u);
      }

      v69 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v58 = v76[10];
    swift_beginAccess();
    v59 = *(v58 + 128);
    v60 = *(v59 + 16);
    if (!v60)
    {
      goto LABEL_34;
    }

    v55 = sub_24A40B3F8(*(v59 + 16), 0);
    v61 = sub_24A40C0A8(&v78, (v55 + 4), v60, v59);
    v62 = v78;

    sub_24A3A13C0(v62);
    if (v61 != v60)
    {
      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v19 = v0[1];

  return v19();
}