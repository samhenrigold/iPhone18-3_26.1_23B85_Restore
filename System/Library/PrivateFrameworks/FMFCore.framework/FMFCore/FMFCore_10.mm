id FMFMyLocationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMFMyLocationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFMyLocationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A45C5FC(void *a1)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = a1;
  oslog = sub_24A4AB600();
  v4 = sub_24A4ABCC0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_24A4AC310();
    v9 = sub_24A37BD58(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, oslog, v4, "FMFMyLocationController: location manager failed with error: %s", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t FMFNotNowAction.__allocating_init(friend:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A423930(a1, v2 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);
  *(v2 + 16) = 0;
  return v2;
}

uint64_t FMFNotNowAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A45C874()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend(0);
  sub_24A4AC030();
  return 0;
}

uint64_t FMFNotNowAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFNotNowAction(uint64_t a1)
{
  result = qword_27EF40918;
  if (!qword_27EF40918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_24A45CB10(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A4AA7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  sub_24A4AA7B0();
  sub_24A4AA7D0();
  v9 = sub_24A45D260(a1, a2, v7);
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return 1;
  }

  if (v9 != a1 || v11 != a2)
  {
    v14 = sub_24A4AC270();

    return (v14 & 1) == 0;
  }

  return 0;
}

id sub_24A45CCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_24A4AB850();
  a4(v5);

  v6 = sub_24A4AB820();

  return v6;
}

id FMPhoneNumberUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMPhoneNumberUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FMPhoneNumberUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A45D034()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = sub_24A4AB850();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = sub_24A4AB850();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = sub_24A4AB850();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = sub_24A4AB850();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_24A45D170(uint64_t a1, uint64_t a2)
{
  sub_24A45D034();
  v3 = sub_24A4AB820();
  v4 = sub_24A4AB820();

  v5 = CFPhoneNumberCreate();

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:

    return a1;
  }

  v8 = String;
  a1 = sub_24A4AB850();

  return a1;
}

uint64_t sub_24A45D260(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = sub_24A4AA7F0();
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  v29 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v10;
  if (v10)
  {
    v11 = 0;
    v23 = a2 & 0xFFFFFFFFFFFFFFLL;
    v21[1] = v3;
    v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v12 = (v7 + 16);
    v13 = (v7 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_24A4ABF40();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = v29;
          v26[1] = v23;
          v15 = v26 + v11;
        }

        else
        {
          v14 = v22;
          if ((v29 & 0x1000000000000000) == 0)
          {
            v14 = sub_24A4ABF90();
          }

          v15 = (v14 + v11);
        }

        if ((*v15 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v19 = (__clz(*v15 ^ 0xFF) - 24);
        if (v19 <= 2)
        {
          if (v19 != 1)
          {
            v17 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v17 = 1;
          goto LABEL_15;
        }

        if (v19 == 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4;
        }
      }

LABEL_15:
      (*v12)(v9, v25, v6);
      v18 = sub_24A4AA7E0();
      (*v13)(v9, v6);
      if (v18)
      {
        sub_24A4AB8D0();
      }

      v11 += v17;
      if (v11 >= v24)
      {
        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_24A45D4E4(uint64_t a1, uint64_t a2)
{
  if (qword_27EF3EBC0 != -1)
  {
    swift_once();
  }

  v4 = qword_27EF4E198;
  v5 = sub_24A4AB820();
  LOBYTE(v4) = [v4 evaluateWithObject_];

  if (v4)
  {
  }

  else
  {
    a1 = sub_24A45D170(a1, a2);
    v7 = v6;

    v8 = sub_24A4AB9C0();

    if ((v8 & 1) == 0 && sub_24A4AB910() >= 2)
    {
      MEMORY[0x24C217D50](a1, v7);

      return 43;
    }
  }

  return a1;
}

unint64_t FMDemoManager.DemoContext.assetFilename.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t FMDemoManager.DemoContext.userDefaultsKey.getter()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t FMDemoManager.DemoContext.hashValue.getter()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](v1);
  return sub_24A4AC3A0();
}

id static FMDemoManager.hasDemoModeUserDefault(for:)(_BYTE *a1)
{
  v1 = objc_opt_self();
  v2 = sub_24A4AB820();

  v3 = sub_24A4AB820();
  v4 = [v1 BOOLForKey:v2 inDomain:v3];

  return v4;
}

void sub_24A45D81C()
{
  type metadata accessor for FMDemoManager();
  v4 = 1;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v0 = objc_opt_self();
    v1 = sub_24A4AB820();
    v2 = sub_24A4AB820();
    v3 = [v0 BOOLForKey:v1 inDomain:v2];
  }

  else
  {
    v3 = 0;
  }

  byte_27EF40929 = v3;
}

uint64_t sub_24A45D90C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t sub_24A45D970()
{
  result = qword_27EF40950;
  if (!qword_27EF40950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40950);
  }

  return result;
}

unint64_t sub_24A45DA00()
{
  result = qword_27EF40958;
  if (!qword_27EF40958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40958);
  }

  return result;
}

uint64_t static FMDiskIO.getOrCreateCacheKey<A>(account:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a6;
  v11 = sub_24A4AA710();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A4AAD10();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AACE0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5[11];
  v20 = a5[12];
  v21 = a5[10];
  v50 = type metadata accessor for FMDiskIO.KeyPair(0, v21, v19, v20);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v39 - v24;
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v26 = sub_24A4AA730();
  v28 = v27;
  if (v27 >> 60 == 15)
  {
    type metadata accessor for FMDiskIO.FMDiskIOError(0, v21, v19, v20);
    swift_getWitnessTable();
    v51 = swift_allocError();
    swift_willThrow();
  }

  else
  {
    v36 = v26;
    sub_24A4AA830();
    swift_allocObject();
    sub_24A4AA820();
    v51 = 0;
    swift_getWitnessTable();
    v37 = v51;
    sub_24A4AA810();
    if (!v37)
    {
      sub_24A386DFC(v36, v28);

      v29 = v50;
      return (*(v48 + 32))(v49, v25, v29);
    }

    v51 = v37;
    sub_24A386DFC(v36, v28);
  }

  sub_24A4AACD0();
  sub_24A4AAD00();
  v25 = v47;
  sub_24A45E5FC(v18, v15, v21, v19, v20, v47);
  sub_24A4AA860();
  swift_allocObject();
  sub_24A4AA850();
  v29 = v50;
  swift_getWitnessTable();
  v30 = sub_24A4AA840();
  v32 = v31;

  v52 = v30;
  v53 = v32;
  v34 = v45;
  v33 = v46;
  v35 = v40;
  (*(v45 + 104))(v40, *MEMORY[0x277D08A30], v46);
  sub_24A454A64();
  sub_24A4AA720();
  (*(v34 + 8))(v35, v33);

  sub_24A386E10(v30, v32);
  return (*(v48 + 32))(v49, v25, v29);
}

uint64_t FMDiskIO.__allocating_init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  FMDiskIO.init(root:fileName:keyPair:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_24A45E0DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965;
  if (v4 || (sub_24A4AC270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697274656D6D7973 && a2 == 0xEC00000079654B63)
  {

    return 1;
  }

  else
  {
    v6 = sub_24A4AC270();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24A45E1EC(char a1)
{
  sub_24A4AC360();
  MEMORY[0x24C218780](a1 & 1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A45E274(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A45E1C4(v3, *v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A45E2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A45E0DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A45E2F4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24A4615EC();
  *a2 = result;
  return result;
}

uint64_t sub_24A45E328(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24A45E37C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FMDiskIO.KeyPair.encode(to:)(void *a1, uint64_t *a2)
{
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys(255, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  v3 = sub_24A4AC210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  sub_24A37EACC(a1, a1[3]);
  sub_24A4AC3D0();
  v11 = 0;
  sub_24A4AACE0();
  sub_24A386C30(&qword_27EF40960, MEMORY[0x277D08EF0], MEMORY[0x277D08EF8]);
  v7 = v9[1];
  sub_24A4AC1F0();
  if (!v7)
  {
    v10 = 1;
    sub_24A4AAD10();
    sub_24A386C30(&qword_27EF40968, MEMORY[0x277D08F08], MEMORY[0x277D08F10]);
    sub_24A4AC1F0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24A45E5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_24A4AACE0();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = *(type metadata accessor for FMDiskIO.KeyPair(0, a3, a4, a5) + 44);
  v14 = sub_24A4AAD10();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a2, v14);
}

uint64_t sub_24A45E6F4()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  MEMORY[0x24C217D50](v1, v2);
  return v4;
}

char *FMDiskIO.init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a5;
  v27 = a4;
  v28 = a1;
  v7 = *v5;
  v29 = a2;
  v30 = v7;
  v26 = sub_24A4ABD50();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v11);
  v12 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24A3785D4();
  v25[0] = "FriendCacheData.data";
  v25[1] = v13;
  sub_24A4AB6B0();
  v33 = MEMORY[0x277D84F90];
  sub_24A386C30(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v8 + 104))(v10, *MEMORY[0x277D85260], v26);
  *(v5 + 2) = sub_24A4ABD90();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A4AB630();
  sub_24A378E18(v14, qword_27EF4E260);
  v15 = v27;

  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315138;
    v20 = v31;
    *(v18 + 4) = sub_24A37BD58(v31, v15, &v33);
    _os_log_impl(&dword_24A376000, v16, v17, "FMDiskIO: init with file name: %s", v18, 0xCu);
    sub_24A37EEE0(v19);
    MEMORY[0x24C219130](v19, -1, -1);
    MEMORY[0x24C219130](v18, -1, -1);
  }

  else
  {

    v20 = v31;
  }

  v21 = v29;
  *(v6 + 3) = v28;
  *(v6 + 4) = v21;
  *(v6 + 5) = v20;
  *(v6 + 6) = v15;
  v22 = *(*v6 + 128);
  type metadata accessor for FMDiskIO.KeyPair(255, v30[10], v30[11], v30[12]);
  v23 = sub_24A4ABDF0();
  (*(*(v23 - 8) + 32))(&v6[v22], v32, v23);
  return v6;
}

uint64_t sub_24A45EB5C(uint64_t a1)
{
  result = sub_24A4600F8();
  if ((result & 1) == 0)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A4AB630();
    sub_24A378E18(v3, qword_27EF4E260);
    v4 = sub_24A4AB600();
    v5 = sub_24A4ABCE0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A376000, v4, v5, "FMDiskIO: creating to disk", v6, 2u);
      MEMORY[0x24C219130](v6, -1, -1);
    }

    return sub_24A45EC74(a1);
  }

  return result;
}

uint64_t sub_24A45EC74(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v32 = v4;
  v5 = sub_24A4AB690();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v10;
    v20 = v7;
    v21 = a1;
    v22 = v19;
    *v19 = 0;
    _os_log_impl(&dword_24A376000, v17, v18, "FMDiskIO: save to disk", v19, 2u);
    v23 = v22;
    a1 = v21;
    v7 = v20;
    v10 = v31;
    MEMORY[0x24C219130](v23, -1, -1);
  }

  (*(v12 + 16))(v15, a1, v11);
  v24 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v11;
  v26 = v32;
  *(v25 + 3) = *(v32 + 88);
  *(v25 + 4) = *(v26 + 96);
  *(v25 + 5) = v2;
  (*(v12 + 32))(&v25[v24], v15, v11);
  aBlock[4] = sub_24A461448;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A4D8;
  v27 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v37 = MEMORY[0x277D84F90];
  sub_24A386C30(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v28 = v36;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v7, v27);
  _Block_release(v27);
  (*(v35 + 8))(v7, v28);
  (*(v33 + 8))(v10, v34);
}

uint64_t sub_24A45F108(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = aBlock - v6;
  v8 = v1[2];
  (*(v4 + 16))(aBlock - v6, v5);
  v9 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v3;
  *(v10 + 3) = *(v2 + 88);
  *(v10 + 4) = *(v2 + 96);
  *(v10 + 5) = v1;
  (*(v4 + 32))(&v10[v9], v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A4615FC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_24A37CE34;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A37CDDC;
  aBlock[3] = &unk_285D8A550;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_24A45F35C(uint64_t a1)
{
  v3 = MEMORY[0x24C2189A0]();
  sub_24A45F3B8(v1, a1);

  objc_autoreleasePoolPop(v3);
}

void sub_24A45F3B8(char *a1, uint64_t a2)
{
  v99 = a2;
  v2 = a1;
  v102[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v88 = sub_24A4AAD30();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v3[11];
  v6 = v3[12];
  v98 = v3[10];
  v7 = type metadata accessor for FMDiskIO.KeyPair(255, v98, v5, v6);
  v93 = sub_24A4ABDF0();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v86 - v8;
  v94 = v7;
  v95 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v90 = &v86 - v10;
  v11 = sub_24A4AA9D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = 0;
  v97 = objc_opt_self();
  v15 = [v97 defaultManager];
  v96 = v2;
  v16 = sub_24A4AB820();
  LOBYTE(v2) = [v15 fileExistsAtPath:v16 isDirectory:&v101];

  if (v2)
  {
LABEL_4:
    sub_24A4AA860();
    swift_allocObject();
    v21 = sub_24A4AA850();
    v22 = v100;
    v23 = sub_24A4AA840();
    if (v22)
    {

      v25 = v22;
LABEL_21:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v68 = sub_24A4AB630();
      sub_24A378E18(v68, qword_27EF4E260);
      v69 = v25;
      v70 = sub_24A4AB600();
      v71 = sub_24A4ABCC0();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v102[0] = v73;
        *v72 = 136315138;
        swift_getErrorValue();
        v74 = sub_24A4AC310();
        v76 = sub_24A37BD58(v74, v75, v102);

        *(v72 + 4) = v76;
        _os_log_impl(&dword_24A376000, v70, v71, "FMDiskIO: Could not save objects to disk %s", v72, 0xCu);
        sub_24A37EEE0(v73);
        MEMORY[0x24C219130](v73, -1, -1);
        MEMORY[0x24C219130](v72, -1, -1);
      }

      else
      {
      }

      return;
    }

    v26 = v23;
    v100 = v21;
    v27 = v24;
    v28 = v92;
    v29 = v91;
    v30 = v93;
    (*(v92 + 16))(v91, &v96[*(*v96 + 128)], v93);
    v31 = v95;
    v32 = v94;
    if ((*(v95 + 48))(v29, 1, v94) == 1)
    {
      (*(v28 + 8))(v29, v30);
      v33 = v27;
      v34 = sub_24A4AAA00();
      sub_24A45E6F4();
      v35 = sub_24A4AB820();

      v36 = [v34 writeToFile:v35 atomically:1];

      if (v36)
      {
LABEL_8:
        v99 = v26;
        v37 = [v97 defaultManager];
        sub_24A3C9CEC(&qword_27EF40598, &unk_24A4BACB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A4B4E10;
        v39 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v40 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v41;
        *(inited + 40) = v40;
        v42 = v39;
        v43 = v40;
        sub_24A3A9E3C(inited);
        swift_setDeallocating();
        sub_24A37EF2C(inited + 32, &qword_27EF40358, &qword_24A4BA148);
        type metadata accessor for FileAttributeKey(0);
        sub_24A386C30(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey, &unk_24A4B403C);
        v44 = sub_24A4AB760();

        sub_24A45E6F4();
        v45 = sub_24A4AB820();

        v102[0] = 0;
        LODWORD(v40) = [v37 setAttributes:v44 ofItemAtPath:v45 error:v102];

        if (!v40)
        {
          v67 = v102[0];
          v25 = sub_24A4AA950();

          swift_willThrow();
          sub_24A386E10(v99, v33);

          goto LABEL_21;
        }

        v46 = qword_27EF3EBF8;
        v47 = v102[0];
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = sub_24A4AB630();
        sub_24A378E18(v48, qword_27EF4E260);

        v49 = sub_24A4AB600();
        v50 = sub_24A4ABCE0();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v102[0] = v52;
          *v51 = 136315138;
          v53 = sub_24A45E6F4();
          v55 = sub_24A37BD58(v53, v54, v102);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_24A376000, v49, v50, "FMDiskIO: Successfully wrote object to disk @ %s", v51, 0xCu);
          sub_24A37EEE0(v52);
          MEMORY[0x24C219130](v52, -1, -1);
          MEMORY[0x24C219130](v51, -1, -1);
        }

        sub_24A386E10(v99, v33);

LABEL_32:

        return;
      }
    }

    else
    {
      (*(v31 + 32))(v90, v29, v32);
      sub_24A4AACF0();
      v33 = v27;
      sub_24A386C30(&qword_27EF405A0, MEMORY[0x277D08F20], MEMORY[0x277D08F28]);
      v66 = v88;
      v77 = sub_24A4AA840();
      v79 = v78;
      v80 = sub_24A4AAA00();
      sub_24A386E10(v77, v79);
      sub_24A45E6F4();
      v81 = sub_24A4AB820();

      LODWORD(v77) = [v80 writeToFile:v81 atomically:1];

      (*(v87 + 8))(v89, v66);
      (*(v95 + 8))(v90, v94);
      if (v77)
      {
        goto LABEL_8;
      }
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v82 = sub_24A4AB630();
    sub_24A378E18(v82, qword_27EF4E260);
    v83 = sub_24A4AB600();
    v84 = sub_24A4ABCE0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_24A376000, v83, v84, "FMDiskIO: Could not save objects to disk", v85, 2u);
      MEMORY[0x24C219130](v85, -1, -1);
    }

    sub_24A386E10(v26, v33);

    goto LABEL_32;
  }

  v17 = [v97 defaultManager];
  sub_24A4AA970();
  v18 = sub_24A4AA980();
  (*(v12 + 8))(v14, v11);
  v102[0] = 0;
  v19 = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v102];

  if (v19)
  {
    v20 = v102[0];
    goto LABEL_4;
  }

  v56 = v102[0];
  v57 = sub_24A4AA950();

  swift_willThrow();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v58 = sub_24A4AB630();
  sub_24A378E18(v58, qword_27EF4E260);

  v59 = sub_24A4AB600();
  v60 = sub_24A4ABCE0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v102[0] = v62;
    *v61 = 136315138;
    v63 = sub_24A45E6F4();
    v65 = sub_24A37BD58(v63, v64, v102);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_24A376000, v59, v60, "FMDiskIO: Could not create directory for content: %s", v61, 0xCu);
    sub_24A37EEE0(v62);
    MEMORY[0x24C219130](v62, -1, -1);
    MEMORY[0x24C219130](v61, -1, -1);
  }
}

id sub_24A4600F8()
{
  v0 = [objc_opt_self() defaultManager];
  sub_24A45E6F4();
  v1 = sub_24A4AB820();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_24A46017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = sub_24A4ABDF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_24A460300(&v12 - v8);
  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) != 1)
  {
    return (*(v10 + 32))(a2, v9, v5);
  }

  (*(v7 + 8))(v9, v6);
  sub_24A45EC74(a1);
  return (*(v10 + 16))(a2, a1, v5);
}

uint64_t sub_24A460300@<X0>(uint64_t a1@<X8>)
{
  (*(*(*(*v1 + 80) - 8) + 56))(a1, 1, 1);
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A4614A8;
  *(v5 + 24) = v4;
  v9[4] = sub_24A37CE3C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A37CDDC;
  v9[3] = &unk_285D8A5C8;
  v6 = _Block_copy(v9);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_24A46049C(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v3 = *a1;
  v4 = sub_24A4AACB0();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_24A4AAD30();
  v73 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v3[10];
  v76 = sub_24A4ABDF0();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v78 = &v65[-v10];
  v11 = v3[11];
  v12 = v3[12];
  v81 = v7;
  v79 = v11;
  v13 = type metadata accessor for FMDiskIO.KeyPair(255, v7, v11, v12);
  v14 = sub_24A4ABDF0();
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v65[-v15];
  v86 = *(v13 - 8);
  MEMORY[0x28223BE20](v17);
  v85 = &v65[-v18];
  v19 = sub_24A4AA9D0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A4AB630();
  v87 = sub_24A378E18(v23, qword_27EF4E260);
  v24 = sub_24A4AB600();
  v25 = sub_24A4ABCE0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24A376000, v24, v25, "FMDiskIO: read from disk", v26, 2u);
    MEMORY[0x24C219130](v26, -1, -1);
  }

  if (sub_24A4600F8())
  {
    v70 = v4;
    sub_24A45E6F4();
    sub_24A4AA970();

    v34 = sub_24A4AA9E0();
    v36 = v35;
    (*(v20 + 8))(v22, v19);

    sub_24A380530(v34, v36);
    v37 = sub_24A4AB600();
    v38 = sub_24A4ABCE0();

    sub_24A386E10(v34, v36);
    v39 = os_log_type_enabled(v37, v38);
    v69 = v36;
    v68 = v34;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v88 = v67;
      *v40 = 136315394;
      v66 = v38;
      v41 = sub_24A45E6F4();
      v43 = sub_24A37BD58(v41, v42, &v88);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = sub_24A4AA9F0();
      v46 = sub_24A37BD58(v44, v45, &v88);

      *(v40 + 14) = v46;
      _os_log_impl(&dword_24A376000, v37, v66, "FMDiskIO: file: %s data: %s", v40, 0x16u);
      v47 = v67;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v47, -1, -1);
      MEMORY[0x24C219130](v40, -1, -1);
    }

    v48 = v86;
    v49 = v83;
    sub_24A4AA830();
    swift_allocObject();
    sub_24A4AA820();
    v50 = v84;
    (*(v49 + 16))(v16, a1 + *(*a1 + 128), v84);
    v51 = (*(v48 + 48))(v16, 1, v13);
    v52 = v70;
    if (v51 == 1)
    {
      (*(v49 + 8))(v16, v50);
      v53 = v78;
      v54 = v81;
      v55 = v68;
      v56 = v69;
      sub_24A4AA810();
      sub_24A386E10(v55, v56);

      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    }

    else
    {
      (*(v48 + 32))(v85, v16, v13);
      sub_24A386C30(&qword_27EF405B8, MEMORY[0x277D08F20], MEMORY[0x277D08F30]);
      sub_24A4AA810();
      v57 = v72;
      sub_24A4AACC0();
      v58 = v57;
      v59 = sub_24A4AAD20();
      v61 = v60;
      (*(v74 + 8))(v58, v52);
      v53 = v71;
      v62 = v81;
      sub_24A4AA810();
      v63 = (v73 + 8);
      v64 = (v86 + 8);
      sub_24A386E10(v59, v61);

      sub_24A386E10(v68, v69);
      (*v63)(v80, v82);
      (*v64)(v85, v13);
      (*(*(v62 - 8) + 56))(v53, 0, 1, v62);
    }

    (*(v75 + 40))(v77, v53, v76);
  }

  else
  {

    v87 = sub_24A4AB600();
    v27 = sub_24A4ABCC0();

    if (os_log_type_enabled(v87, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v88 = v29;
      *v28 = 136315138;
      v30 = sub_24A45E6F4();
      v32 = sub_24A37BD58(v30, v31, &v88);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_24A376000, v87, v27, "FMDiskIO: Disk archive does not exist at: %s", v28, 0xCu);
      sub_24A37EEE0(v29);
      MEMORY[0x24C219130](v29, -1, -1);
      MEMORY[0x24C219130](v28, -1, -1);
    }

    else
    {
      v33 = v87;
    }
  }
}

id *FMDiskIO.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 16);
  type metadata accessor for FMDiskIO.KeyPair(255, v1[10], v1[11], v1[12]);
  v3 = sub_24A4ABDF0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FMDiskIO.__deallocating_deinit()
{
  FMDiskIO.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A461384(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_24A4613BC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_24A461614@<X0>(char *a2@<X8>)
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

uint64_t sub_24A461674@<X0>(char *a3@<X8>)
{
  v4 = sub_24A4AC0C0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24A4616D8(uint64_t a1)
{
  v2 = sub_24A461B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A461714(uint64_t a1)
{
  v2 = sub_24A461B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A461750(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_24A3C9CEC(&qword_27EF40B90, &qword_24A4BBE10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  sub_24A37EACC(a1, a1[3]);
  sub_24A461B70();
  sub_24A4AC3D0();
  v14 = 0;
  sub_24A4AC1B0();
  if (!v4)
  {
    v13 = 1;
    sub_24A4AC1C0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24A4618E4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24A461998(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_24A461938(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24A4AC270();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_24A461998(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF40B80, &qword_24A4BBE08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A461B70();
  sub_24A4AC3C0();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_24A4AC120();
    v9[14] = 1;
    sub_24A4AC130();
    (*(v4 + 8))(v6, v3);
  }

  sub_24A37EEE0(a1);
  return v7;
}

unint64_t sub_24A461B70()
{
  result = qword_27EF40B88;
  if (!qword_27EF40B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40B88);
  }

  return result;
}

unint64_t sub_24A461BD8()
{
  result = qword_27EF40B98;
  if (!qword_27EF40B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40B98);
  }

  return result;
}

unint64_t sub_24A461C30()
{
  result = qword_27EF40BA0;
  if (!qword_27EF40BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BA0);
  }

  return result;
}

unint64_t sub_24A461C88()
{
  result = qword_27EF40BA8;
  if (!qword_27EF40BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BA8);
  }

  return result;
}

uint64_t FMFAskToFollowAction.__allocating_init(friend:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A423930(a1, v2 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend);
  *(v2 + 16) = 0;
  return v2;
}

uint64_t FMFAskToFollowAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A461D58()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend(0);
  sub_24A4AC030();
  return 0;
}

uint64_t FMFAskToFollowAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFAskToFollowAction(uint64_t a1)
{
  result = qword_27EF40BB0;
  if (!qword_27EF40BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall CLLocation.fmifIsNearBy(_:inBTRangeDistanceInMeters:)(CLLocation _, Swift::Double inBTRangeDistanceInMeters)
{
  isa = _.super.isa;
  [v2 distanceFromLocation_];
  v6 = v5;
  [v2 horizontalAccuracy];
  v8 = v7;
  [(objc_class *)isa horizontalAccuracy];
  return v6 / sqrt(inBTRangeDistanceInMeters * inBTRangeDistanceInMeters + v8 * v8 + v9 * v9) < 1.5;
}

void sub_24A462090(void *a1)
{
  v2 = sub_24A4AAAD0();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v8 = v7;
  [a1 coordinate];
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGEOCoordinate_];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [a1 timestamp];
  sub_24A4AAAA0();

  sub_24A4AAA90();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  [v11 setTimestamp_];
  [a1 horizontalAccuracy];
  [v11 setHorizontalAccuracy_];
  [a1 verticalAccuracy];
  [v11 setVerticalAccuracy_];
  [a1 course];
  [v11 setCourse_];
  [a1 courseAccuracy];
  [v11 setCourseAccuracy_];
  [a1 speed];
  [v11 setSpeed_];
  [a1 speedAccuracy];
  [v11 setSpeedAccuracy_];
  [a1 altitude];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 <= -2147483650.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 >= 2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v11 setAltitude_];
  v16 = [a1 floor];
  if (!v16)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v16 level];

  if (v18 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v18 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  [v11 setLevelOrdinal_];
  v19 = [a1 referenceFrame];
  if (v19 > 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = dword_24A4BBFA8[v19];
  }

  [v11 setReferenceFrame_];
}

void sub_24A4623D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24A3DBF08(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_24A4ABEA0();
    v5 = 0;
    v22 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 24 * v4);
      v9 = v8[1];
      v21 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_24A3DBF08((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 24 * v10;
      *(v12 + 32) = v21;
      *(v12 + 40) = v9;
      *(v12 + 48) = 1;
      *(v12 + 50) = 0;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_24A406830(v4, v22, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_24A406830(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

void sub_24A462638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24A3DBDA8(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_24A4ABEA0();
    v5 = 0;
    v22 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 24 * v4);
      v9 = v8[1];
      v21 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_24A3DBDA8((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v21;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_24A406830(v4, v22, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_24A406830(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

void sub_24A462880(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24A3DBEE8(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_24A4ABEA0();
    v5 = 0;
    v22 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 24 * v4);
      v9 = v8[1];
      v21 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_24A3DBEE8((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v21;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_24A406830(v4, v22, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_24A406830(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_24A462AC8(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 6515827;
      }

      if (a1 == 2)
      {
        return 0x6174537469736976;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      return 0x6165627472616568;
    }

    else
    {
      return 0x65646E6174737962;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 1702259052;
        case 8:
          return 0x656977657473;
        case 100:
          return 0x6F4C79636167656CLL;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 5)
    {
      return 0x646E616D65446E6FLL;
    }

    else
    {
      return 0x776F6C6C616873;
    }
  }
}

uint64_t sub_24A462C1C(uint64_t result, uint64_t a2)
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
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_24A4AC360();

    sub_24A4AB8F0();
    v16 = sub_24A4AC3A0();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A462DD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v28 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v35 = a2 + 56;
  v29 = v6;
  v30 = result;
  v32 = a2;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
    v7 = __clz(__rbit64(v5));
    v31 = (v5 - 1) & v5;
LABEL_13:
    v10 = *(result + 48) + 24 * (v7 | (v2 << 6));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 17);
    v15 = *(v10 + 18);
    v16 = a2;
    sub_24A4AC360();

    sub_24A4AB8F0();
    v34 = v13;
    sub_24A4AC380();
    v33 = v14;
    sub_24A4AC380();
    v17 = v15;
    sub_24A4AC380();
    v18 = sub_24A4AC3A0();
    v19 = -1 << *(v16 + 32);
    v20 = v18 & ~v19;
    if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_26:

      return 0;
    }

    v21 = ~v19;
    v22 = *(v32 + 48);
    while (1)
    {
      v23 = v22 + 24 * v20;
      v24 = *(v23 + 16);
      v25 = *(v23 + 17);
      v26 = v17 ^ *(v23 + 18);
      if (*v23 == v12 && *(v23 + 8) == v11)
      {
        break;
      }

      if (!((v34 ^ v24) & 1 | ((sub_24A4AC270() & 1) == 0) | ((v33 ^ v25) | v26) & 1))
      {
        goto LABEL_23;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if ((v34 ^ v24 | v33 ^ v25 | v26))
    {
      goto LABEL_16;
    }

LABEL_23:

    v6 = v29;
    result = v30;
    v5 = v31;
    a2 = v32;
  }

  while (v31);
LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v28 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A463040(uint64_t a1)
{
  if (qword_27EF3EC10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_27EF40778;
  if (*(off_27EF40778 + 2) && (v3 = sub_24A3AE6B8(a1), (v4 & 1) != 0))
  {
    sub_24A37EE84(v2[7] + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  swift_endAccess();
  sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  return swift_dynamicCast();
}

uint64_t sub_24A463148()
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  sub_24A4AC380();
  sub_24A4AC380();
  sub_24A4AC380();
  return sub_24A4AC3A0();
}

uint64_t sub_24A4631D4(uint64_t a1)
{
  sub_24A4AB8F0();
  sub_24A4AC380();
  sub_24A4AC380();
  return sub_24A4AC380();
}

uint64_t sub_24A463234(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();
  sub_24A4AC380();
  sub_24A4AC380();
  sub_24A4AC380();
  return sub_24A4AC3A0();
}

uint64_t sub_24A4632BC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
    if (v2 != v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_24A4AC270();
  result = 0;
  if ((v9 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return result;
}

uint64_t SPSecureLocationPublishReason.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 6515827;
      }

      if (a1 == 2)
      {
        return 0x6174537469736976;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      return 0x6165627472616568;
    }

    else
    {
      return 0x65646E6174737962;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 1702259052;
        case 8:
          return 0x656977657473;
        case 100:
          return 0x6F4C79636167656CLL;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 5)
    {
      return 0x646E616D65446E6FLL;
    }

    else
    {
      return 0x776F6C6C616873;
    }
  }
}

void *sub_24A463580(uint64_t a1, void *a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v37 = sub_24A4ABD50();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = MEMORY[0x277D84FA0];
  *(v2 + 32) = MEMORY[0x277D84FA0];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v9;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = v9;
  *(v2 + 88) = v9;
  v10 = MEMORY[0x277D84F98];
  *(v2 + 96) = MEMORY[0x277D84F98];
  *(v2 + 104) = v10;
  *(v2 + 112) = v10;
  *(v2 + 120) = 0;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *(v2 + 128) = FMLocationShifter.init()();
  v11 = sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v38 = "v16@?0@NSArray8";
  v39 = v11;
  sub_24A4AB6B0();
  v42 = MEMORY[0x277D84F90];
  v36[3] = sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v36[2] = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  v12 = *MEMORY[0x277D85260];
  v13 = v4 + 104;
  v14 = *(v4 + 104);
  v36[0] = v6;
  v36[1] = v13;
  v15 = v37;
  v14(v6, v12, v37);
  *(v2 + 136) = sub_24A4ABD90();
  v38 = "ocation.subscribe";
  sub_24A4AB6B0();
  v42 = MEMORY[0x277D84F90];
  sub_24A4ABE90();
  v14(v36[0], v12, v15);
  v16 = v40;
  *(v2 + 144) = sub_24A4ABD90();
  *(v2 + 152) = MEMORY[0x277D84F98];
  *(v2 + 160) = 0x402E000000000000;
  *(v2 + 176) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 192) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 200) = 0;
  *(v2 + 208) = 1;
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v2 + 216) = v17;
  v18 = v41;
  *(v2 + 16) = v16;
  *(v2 + 24) = v18;
  v19 = v17;

  v20 = v18;
  v21 = sub_24A4AB820();
  [v19 setLocalizedDateFormatFromTemplate_];

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E260);
  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_24A376000, v23, v24, "FMFSecureLocCtrl: initialized", v25, 2u);
    MEMORY[0x24C219130](v25, -1, -1);
  }

  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 isInternalBuild];

  if (v27)
  {
    v28 = [objc_opt_self() standardUserDefaults];
    v29 = sub_24A4AB820();
    [v28 doubleForKey_];
    v31 = v30;

    if (v31 > 0.0)
    {
      *(v3 + 200) = v31;
      *(v3 + 208) = 0;
      v32 = sub_24A4AB600();
      v33 = sub_24A4ABCE0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v31;
        _os_log_impl(&dword_24A376000, v32, v33, "FMFSecureLocCtrl: overriding liveAnimationTimeoutDuration %f", v34, 0xCu);
        MEMORY[0x24C219130](v34, -1, -1);
      }
    }
  }

  return v3;
}

void sub_24A463B90()
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
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "👀 FMFSecureLocCtrl: setting location update block", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v18 = sub_24A474FE4;
  v19 = v7;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24A4642E0;
  v17 = &unk_285D8B1B0;
  v8 = _Block_copy(&v14);
  v9 = v6;

  [v9 setLocationUpdateBlock_];
  _Block_release(v8);

  v10 = *(v1 + 24);
  v11 = swift_allocObject();
  swift_weakInit();
  v18 = sub_24A474FEC;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24A464820;
  v17 = &unk_285D8B1D8;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v13 startMonitoringFailedSubscriptions_];
  _Block_release(v12);
}

uint64_t sub_24A463DFC(unint64_t a1, uint64_t a2)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (a1 >> 62)
    {
      result = sub_24A4AC060();
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v7;
    v24 = v4;
    v22 = v8;
    if (!result)
    {
      goto LABEL_10;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C218380](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v13 = *(a1 + 32);
    }

    v14 = v13;
    v15 = [v13 publishReason];

    if (v15 == 7)
    {
      v16 = 1;
    }

    else
    {
LABEL_10:
      v16 = 0;
    }

    v17 = *(v12 + 136);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v12;
    *(v18 + 32) = v16;
    aBlock[4] = sub_24A474FFC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8B278;
    v19 = _Block_copy(aBlock);
    v20 = v17;

    sub_24A4AB6B0();
    v25 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v10, v6, v19);
    _Block_release(v19);

    (*(v24 + 8))(v6, v3);
    (*(v22 + 8))(v10, v23);
  }

  return result;
}

uint64_t sub_24A46418C(unint64_t a1, uint64_t a2, char a3)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A4AB630();
  sub_24A378E18(v5, qword_27EF4E260);

  v6 = sub_24A4AB600();
  v7 = sub_24A4ABCE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (a1 >> 62)
    {
      v9 = sub_24A4AC060();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&dword_24A376000, v6, v7, "👀 FMFSecureLocCtrl: %ld locations received from spd (location update block)", v8, 0xCu);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  else
  {
  }

  return sub_24A46A47C(a1, 0, a3 & 1);
}

uint64_t sub_24A4642E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A37B428(0, &qword_27EF3FE48, 0x277D496B8);
  v3 = sub_24A4ABA70();

  v2(v3);
}

uint64_t sub_24A464364(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = v4;
    v12 = *(result + 136);
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    v18[1] = v13;
    aBlock[4] = sub_24A474FF4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8B228;
    v15 = _Block_copy(aBlock);
    v16 = v12;
    v19 = v7;
    v17 = v16;

    sub_24A4AB6B0();
    v21 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v10, v6, v15);
    _Block_release(v15);

    (*(v20 + 8))(v6, v3);
    (*(v8 + 8))(v10, v19);
  }

  return result;
}

uint64_t sub_24A464674(uint64_t a1)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x24C217E90](a1, MEMORY[0x277D837D0]);
    v9 = sub_24A37BD58(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, v3, v4, "👀 FMFSecureLocCtrl: Failed subscription received from spd, no location for findMyIds: %s. Clear cached locations", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v11 = sub_24A3999E0(v10);

  sub_24A46A47C(MEMORY[0x277D84F90], v11, 0);
}

uint64_t sub_24A464820(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_24A4ABA70();

  v2(v3);
}

uint64_t sub_24A464890(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24A4AB6E0();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_24A3999E0(v10);

  swift_beginAccess();
  if (*(*(v3 + 80) + 16) <= *(v11 + 16) >> 3)
  {
    goto LABEL_6;
  }

  v13 = sub_24A472EF8(v12, v11);

  if (!*(v13 + 16))
  {
  }

  while (1)
  {
    swift_beginAccess();

    sub_24A464EF8(v14);
    swift_endAccess();
    v11 = *(v13 + 16);
    v44 = v7;
    if (!v11)
    {
      break;
    }

    v15 = sub_24A3A11D8(v11, 0);
    v16 = sub_24A3A1268(&aBlock, v15 + 4, v11, v13);
    sub_24A3A13C0(aBlock);
    if (v16 == v11)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_6:
    aBlock = v11;

    sub_24A472DCC(v17);

    v13 = aBlock;
    if (!*(aBlock + 16))
    {
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_9:
  v42 = v15;
  v19 = sub_24A464FFC(v15);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v20 = aBlock;
  aBlock = 91;
  v49 = 0xE100000000000000;
  v56[0] = 1;

  sub_24A474894(v19, v20, &aBlock, v56);
  swift_bridgeObjectRelease_n();
  v54 = aBlock;
  v55 = v49;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v22 = v54;
  v21 = v55;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v43 = v8;
  v23 = sub_24A4AB630();
  sub_24A378E18(v23, qword_27EF4E260);

  v24 = sub_24A4AB600();
  v25 = sub_24A4ABCE0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315394;
    v28 = a2 & 1;
    LOBYTE(v54) = a2 & 1;
    v29 = sub_24A4AB870();
    v41 = v5;
    v31 = sub_24A37BD58(v29, v30, &aBlock);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = sub_24A37BD58(v22, v21, &aBlock);

    *(v26 + 14) = v32;
    v5 = v41;
    _os_log_impl(&dword_24A376000, v24, v25, "👀 FMFSecureLocCtrl: telling FMFManager begin waiting for %s for %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v27, -1, -1);
    MEMORY[0x24C219130](v26, -1, -1);
  }

  else
  {

    v28 = a2 & 1;
  }

  v33 = *(v3 + 144);
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  v35 = v42;
  *(v34 + 24) = v3;
  *(v34 + 32) = v35;
  v52 = sub_24A474F9C;
  v53 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_24A388564;
  v51 = &unk_285D8B188;
  v36 = _Block_copy(&aBlock);
  v37 = v33;

  v38 = v45;
  sub_24A4AB6B0();
  v54 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v39 = v44;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v38, v39, v36);
  _Block_release(v36);

  (*(v47 + 8))(v39, v5);
  (*(v43 + 8))(v38, v46);
}

uint64_t sub_24A464EF8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_24A399A78(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24A464FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24A3DBEE8(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_24A3DBEE8((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24A465114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24A4AB6E0();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_24A3999E0(v11);

  swift_beginAccess();

  v14 = sub_24A473E64(v13, v12);

  if (v14[2])
  {
    swift_beginAccess();
    sub_24A472DCC(v14);
    swift_endAccess();
    v15 = v14[2];
    v46 = v10;
    if (v15)
    {
      v16 = sub_24A3A11D8(v15, 0);
      v17 = sub_24A3A1268(&aBlock, v16 + 4, v15, v14);
      sub_24A3A13C0(aBlock);
      if (v17 != v15)
      {
        __break(1u);
      }
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v44 = v16;
    v18 = sub_24A464FFC(v16);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v19 = aBlock;
    aBlock = 91;
    v50 = 0xE100000000000000;
    v57[0] = 1;

    sub_24A474894(v18, v19, &aBlock, v57);
    swift_bridgeObjectRelease_n();
    v55 = aBlock;
    v56 = v50;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v21 = v55;
    v20 = v56;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v45 = v8;
    v22 = sub_24A4AB630();
    sub_24A378E18(v22, qword_27EF4E260);

    v23 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v42 = v21;
      v26 = v25;
      v27 = swift_slowAlloc();
      v43 = v5;
      v28 = v27;
      aBlock = v27;
      *v26 = 136315394;
      v29 = a2 & 1;
      LOBYTE(v55) = v29;
      v30 = sub_24A4AB870();
      v32 = sub_24A37BD58(v30, v31, &aBlock);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v33 = sub_24A37BD58(v42, v20, &aBlock);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_24A376000, v23, v24, "👀 FMFSecureLocCtrl: telling FMFManager end waiting for %s for %s", v26, 0x16u);
      swift_arrayDestroy();
      v5 = v43;
      MEMORY[0x24C219130](v28, -1, -1);
      MEMORY[0x24C219130](v26, -1, -1);
    }

    else
    {

      v29 = a2 & 1;
    }

    v34 = v44;
    v35 = *(v3 + 144);
    v36 = swift_allocObject();
    *(v36 + 16) = v29;
    *(v36 + 24) = v3;
    *(v36 + 32) = v34;
    v53 = sub_24A474F14;
    v54 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_24A388564;
    v52 = &unk_285D8B138;
    v37 = _Block_copy(&aBlock);
    v38 = v35;

    v39 = v46;
    sub_24A4AB6B0();
    v55 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v39, v7, v37);
    _Block_release(v37);

    (*(v47 + 8))(v7, v5);
    (*(v45 + 8))(v39, v48);
  }
}

uint64_t sub_24A465740(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    a4(a3);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    a5(a3);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24A4657D4(uint64_t a1, int a2)
{
  v3 = v2;
  v53 = a2;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_24A3999E0(v12);

  swift_beginAccess();
  if (*(*(v3 + 88) + 16) <= *(v13 + 16) >> 3)
  {
    goto LABEL_6;
  }

  v15 = sub_24A472EF8(v14, v13);

  if (!*(v15 + 16))
  {
  }

  while (1)
  {
    swift_beginAccess();

    sub_24A464EF8(v16);
    swift_endAccess();
    v13 = *(v15 + 16);
    v52 = v11;
    if (!v13)
    {
      break;
    }

    v17 = sub_24A3A11D8(v13, 0);
    v18 = sub_24A3A1268(&aBlock, v17 + 4, v13, v15);
    sub_24A3A13C0(aBlock);
    if (v18 == v13)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_6:
    aBlock = v13;

    sub_24A472DCC(v19);

    v15 = aBlock;
    if (!*(aBlock + 16))
    {
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_9:
  v51 = v7;
  v48 = v17;
  v21 = sub_24A464FFC(v17);
  v49 = v3;

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v22 = aBlock;
  aBlock = 91;
  v55 = 0xE100000000000000;
  v62[0] = 1;

  sub_24A474894(v21, v22, &aBlock, v62);
  swift_bridgeObjectRelease_n();
  v60 = aBlock;
  v61 = v55;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v23 = v60;
  v24 = v61;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v50 = v9;
  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);

  v26 = sub_24A4AB600();
  v27 = sub_24A4ABCE0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v47 = v23;
    v30 = v29;
    aBlock = v29;
    *v28 = 136315394;
    LOBYTE(v60) = v53 & 1;
    v31 = sub_24A4AB870();
    v33 = v8;
    v34 = v5;
    v35 = v4;
    v36 = sub_24A37BD58(v31, v32, &aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2080;
    v37 = sub_24A37BD58(v47, v24, &aBlock);

    *(v28 + 14) = v37;
    v4 = v35;
    v5 = v34;
    v8 = v33;
    _os_log_impl(&dword_24A376000, v26, v27, "👀 FMFSecureLocCtrl: telling FMFManager to set fallback-to-legacy from %s for %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v30, -1, -1);
    MEMORY[0x24C219130](v28, -1, -1);
  }

  else
  {
  }

  v38 = v52;
  v39 = v49;
  v40 = *(v49 + 144);
  v41 = swift_allocObject();
  v42 = v48;
  *(v41 + 16) = v39;
  *(v41 + 24) = v42;
  v58 = sub_24A474EE4;
  v59 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_24A388564;
  v57 = &unk_285D8B0E8;
  v43 = _Block_copy(&aBlock);
  v44 = v40;

  sub_24A4AB6B0();
  v60 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v45 = v51;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v38, v45, v43);
  _Block_release(v43);

  (*(v5 + 8))(v45, v4);
  (*(v50 + 8))(v38, v8);
}

uint64_t sub_24A465E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24A4AB6E0();
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_24A3999E0(v11);

  swift_beginAccess();

  v14 = sub_24A473E64(v13, v12);

  if (!v14[2])
  {
  }

  swift_beginAccess();
  sub_24A472DCC(v14);
  swift_endAccess();
  v15 = v14[2];
  v43 = v10;
  if (!v15)
  {

    v19 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v16 = sub_24A3A11D8(v15, 0);
  v17 = sub_24A3A1268(&aBlock, v16 + 4, v15, v14);
  result = sub_24A3A13C0(aBlock);
  if (v17 == v15)
  {
    v19 = v16;
LABEL_7:
    v40 = v19;
    v41 = v8;
    v20 = sub_24A464FFC(v19);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v21 = aBlock;
    aBlock = 91;
    v47 = 0xE100000000000000;
    v54[0] = 1;

    sub_24A474894(v20, v21, &aBlock, v54);
    swift_bridgeObjectRelease_n();
    v52 = aBlock;
    v53 = v47;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v23 = v52;
    v22 = v53;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v42 = v7;
    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);

    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315394;
      LOBYTE(v52) = a2 & 1;
      v29 = sub_24A4AB870();
      v31 = sub_24A37BD58(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = sub_24A37BD58(v23, v22, &aBlock);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_24A376000, v25, v26, "👀 FMFSecureLocCtrl: telling FMFManager to clear fallback-to-legacy from %s for %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v28, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    else
    {
    }

    v33 = v43;
    v34 = *(v3 + 144);
    v35 = swift_allocObject();
    v36 = v40;
    *(v35 + 16) = v3;
    *(v35 + 24) = v36;
    v50 = sub_24A474EB4;
    v51 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_24A388564;
    v49 = &unk_285D8B098;
    v37 = _Block_copy(&aBlock);
    v38 = v34;

    sub_24A4AB6B0();
    v52 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v39 = v42;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v33, v39, v37);
    _Block_release(v37);

    (*(v44 + 8))(v39, v5);
    (*(v41 + 8))(v33, v45);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A466470(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A4664E0(unint64_t a1, char a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A4AC060())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C218380](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = v7;
      sub_24A4665D0(&v10, v2, a2 & 1);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_24A4665D0(id *a1, uint64_t a2, char a3)
{
  v6 = sub_24A4AAAD0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + 216);
  v13 = [*a1 timestamp];
  sub_24A4AAAA0();

  v14 = sub_24A4AAA60();
  (*(v7 + 8))(v10, v6);
  v15 = [v12 stringFromDate_];

  v16 = sub_24A4AB850();
  v18 = v17;

  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A4BBFC0;
  [v11 latitude];
  v20 = MEMORY[0x277D839F8];
  v21 = MEMORY[0x277D83A80];
  *(v19 + 56) = MEMORY[0x277D839F8];
  *(v19 + 64) = v21;
  *(v19 + 32) = v22;
  [v11 longitude];
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 72) = v23;
  v24 = MEMORY[0x277D837D0];
  *(v19 + 136) = MEMORY[0x277D837D0];
  v25 = sub_24A3ABD70();
  *(v19 + 144) = v25;
  *(v19 + 112) = v16;
  *(v19 + 120) = v18;
  v26 = [v11 locationLabel];
  if (v26)
  {
    v27 = v26;
    v28 = sub_24A4AB850();
    v30 = v29;

    v31 = (v19 + 152);
    *(v19 + 176) = v24;
    *(v19 + 184) = v25;
    if (v30)
    {
      *v31 = v28;
      goto LABEL_6;
    }
  }

  else
  {
    v31 = (v19 + 152);
    *(v19 + 176) = v24;
    *(v19 + 184) = v25;
  }

  *v31 = 7104878;
  v30 = 0xE300000000000000;
LABEL_6:
  *(v19 + 160) = v30;
  LOBYTE(v57) = a3 & 1;
  v32 = sub_24A4AB870();
  *(v19 + 216) = v24;
  *(v19 + 224) = v25;
  *(v19 + 192) = v32;
  *(v19 + 200) = v33;
  v34 = sub_24A462AC8([v11 publishReason]);
  *(v19 + 256) = v24;
  *(v19 + 264) = v25;
  *(v19 + 232) = v34;
  *(v19 + 240) = v35;
  v36 = sub_24A4AB860();
  v38 = v37;
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  v40 = [v11 findMyId];
  v41 = sub_24A4AB850();
  v43 = v42;

  *(inited + 32) = v41;
  *(inited + 40) = v43;

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v44 = v57;
  v57 = 91;
  v58 = 0xE100000000000000;
  v59 = 1;

  sub_24A474894(inited, v44, &v57, &v59);
  swift_bridgeObjectRelease_n();
  v55 = v57;
  v56 = v58;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  v46 = v55;
  v45 = v56;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v47 = sub_24A4AB630();
  sub_24A378E18(v47, qword_27EF4E260);

  v48 = sub_24A4AB600();
  v49 = sub_24A4ABCE0();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v50 = 136315394;
    v52 = sub_24A37BD58(v46, v45, &v57);

    *(v50 + 4) = v52;
    *(v50 + 12) = 2080;
    v53 = sub_24A37BD58(v36, v38, &v57);

    *(v50 + 14) = v53;
    _os_log_impl(&dword_24A376000, v48, v49, "👀 FMFSecureLocCtrl: spd location for %s: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v51, -1, -1);
    MEMORY[0x24C219130](v50, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A466B38(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A4AB690();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 136);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v4;
  *(v16 + 32) = a2 & 1;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  aBlock[4] = sub_24A4751F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B368;
  v17 = _Block_copy(aBlock);

  v18 = v15;

  sub_24A4AB6B0();
  v23 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v11, v17);
  _Block_release(v17);

  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

void sub_24A466E28(uint64_t a1, void *a2, int a3, unint64_t a4, void *a5)
{
  v108 = a4;
  v109 = a5;
  LODWORD(v5) = a3;
  v113 = a2;
  v7 = type metadata accessor for FMFFriend(0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  LODWORD(v115) = v5;
  v111 = v9;
  v112 = a1;
  if (v12)
  {
    v13 = *(v8 + 36);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v16 = MEMORY[0x277D84F90];
    v17 = v12;
    v114 = v15;
    do
    {
      sub_24A475078(v14, v11, type metadata accessor for FMFFriend);
      if ((*(v11 + v13) & 2) != 0)
      {
        v19 = *v11;
        v18 = v11[1];

        sub_24A4750E0(v11, type metadata accessor for FMFFriend);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_24A3ED900(0, *(v16 + 2) + 1, 1, v16);
        }

        v5 = *(v16 + 2);
        v20 = *(v16 + 3);
        if (v5 >= v20 >> 1)
        {
          v16 = sub_24A3ED900((v20 > 1), v5 + 1, 1, v16);
        }

        *(v16 + 2) = v5 + 1;
        v21 = &v16[16 * v5];
        *(v21 + 4) = v19;
        *(v21 + 5) = v18;
        LOBYTE(v5) = v115;
        v15 = v114;
      }

      else
      {
        sub_24A4750E0(v11, type metadata accessor for FMFFriend);
      }

      v14 += v15;
      --v17;
    }

    while (v17);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v22 = sub_24A464FFC(v16);

  v23 = v113;

  v24 = sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v25 = v117;
  v117 = 91;
  v118 = 0xE100000000000000;
  LOBYTE(v120) = 1;

  sub_24A474894(v22, v25, &v117, &v120);
  swift_bridgeObjectRelease_n();
  v121 = v117;
  v122 = v118;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v27 = v121;
  v26 = v122;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v28 = sub_24A4AB630();
  v29 = sub_24A378E18(v28, qword_27EF4E260);

  v30 = sub_24A4AB600();
  v31 = sub_24A4ABCE0();

  v32 = os_log_type_enabled(v30, v31);
  v114 = v24;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v110 = v29;
    v34 = v33;
    v35 = v27;
    v36 = swift_slowAlloc();
    v117 = v36;
    *v34 = 136315394;
    LOBYTE(v121) = v5 & 1;
    v37 = sub_24A4AB870();
    v39 = sub_24A37BD58(v37, v38, &v117);
    v23 = v113;

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v5 = sub_24A37BD58(v35, v26, &v117);

    *(v34 + 14) = v5;
    LOBYTE(v5) = v115;
    _os_log_impl(&dword_24A376000, v30, v31, "👀 FMFSecureLocCtrl: asked-subscribing %s for %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v36, -1, -1);
    v40 = v34;
    v29 = v110;
    MEMORY[0x24C219130](v40, -1, -1);
  }

  else
  {
  }

  v41 = v23[4];
  v42 = v23[7];
  v119 = v42;
  v120 = v41;

  if (v5)
  {
    if (v12)
    {
      v43 = (v112 + ((*(v111 + 80) + 32) & ~*(v111 + 80)));
      v44 = *(v111 + 72);
      do
      {
        sub_24A4684D0(v43, &v119, v23, 1);
        v43 = (v43 + v44);
        --v12;
      }

      while (v12);
      v42 = v119;
    }

    sub_24A462880(v45);
    v47 = sub_24A48A048(v46);

    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = sub_24A40B5A0(*(v47 + 16), 0);
      v50 = sub_24A40C3E0(&v117, v49 + 2, v48, v47);
      sub_24A3A13C0(v117);
      if (v50 != v48)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    sub_24A4ABD70();
    v57 = v117;
    v117 = 91;
    v118 = 0xE100000000000000;
    v116 = 1;

    sub_24A474894(v49, v57, &v117, &v116);
    swift_bridgeObjectRelease_n();
    v121 = v117;
    v122 = v118;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v59 = v121;
    v58 = v122;
    v60 = v23[7];

    LOBYTE(v57) = sub_24A462DD4(v42, v60);

    if (v57)
    {

      v61 = sub_24A4AB600();
      v62 = sub_24A4ABCA0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v117 = v64;
        *v63 = 136315394;
        LOBYTE(v121) = 1;
        v65 = sub_24A4AB870();
        v67 = sub_24A37BD58(v65, v66, &v117);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2048;
        *(v63 + 14) = *(v42 + 16);
        v68 = "👀 FMFSecureLocCtrl: no change for subscribing %s for %ld handles";
LABEL_42:
        _os_log_impl(&dword_24A376000, v61, v62, v68, v63, 0x16u);
        sub_24A37EEE0(v64);
        MEMORY[0x24C219130](v64, -1, -1);
        MEMORY[0x24C219130](v63, -1, -1);

LABEL_46:

        return;
      }

LABEL_45:

      goto LABEL_46;
    }

    v69 = sub_24A4AB600();
    v70 = sub_24A4ABCE0();

    v71 = os_log_type_enabled(v69, v70);
    v115 = v41;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v117 = v73;
      *v72 = 136315394;
      LOBYTE(v121) = 1;
      v74 = sub_24A4AB870();
      v76 = sub_24A37BD58(v74, v75, &v117);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v77 = sub_24A37BD58(v59, v58, &v117);

      *(v72 + 14) = v77;
      _os_log_impl(&dword_24A376000, v69, v70, "👀 FMFSecureLocCtrl: elected-subscribing %s for %s", v72, 0x16u);
      swift_arrayDestroy();
      v78 = v73;
      v23 = v113;
      MEMORY[0x24C219130](v78, -1, -1);
      MEMORY[0x24C219130](v72, -1, -1);
    }

    else
    {
    }

    sub_24A462638(v96);
    v98 = sub_24A3999E0(v97);

    v100 = v108;
    v99 = v109;
    sub_24A46C194(v98, 1, 0, 0xE000000000000000, v108, v109);

    sub_24A4623D8(v101);
    v103 = sub_24A489F6C(v102);

    swift_bridgeObjectRelease_n();
    v23[7] = v103;

    v23[8] = v100;
    v23[9] = v99;

    goto LABEL_51;
  }

LABEL_25:
  if (v12)
  {
    v51 = (v112 + ((*(v111 + 80) + 32) & ~*(v111 + 80)));
    v52 = *(v111 + 72);
    do
    {
      sub_24A467B94(v51, &v120, v23, 0);
      v51 = (v51 + v52);
      --v12;
    }

    while (v12);
    v41 = v120;
  }

  v53 = *(v41 + 16);
  if (!v53)
  {
    v54 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v110 = v29;
  v115 = v42;
  v54 = sub_24A3A11D8(v53, 0);
  v55 = sub_24A3A1268(&v117, v54 + 4, v53, v41);
  v56 = v117;

  sub_24A3A13C0(v56);
  if (v55 == v53)
  {
    v23 = v113;
LABEL_39:
    v79 = sub_24A464FFC(v54);

    sub_24A4ABD70();
    v80 = v117;
    v117 = 91;
    v118 = 0xE100000000000000;
    v116 = 1;

    sub_24A474894(v79, v80, &v117, &v116);
    swift_bridgeObjectRelease_n();
    v121 = v117;
    v122 = v118;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    v82 = v121;
    v81 = v122;
    v83 = v23[4];

    LOBYTE(v80) = sub_24A462C1C(v41, v83);

    if (v80)
    {

      v61 = sub_24A4AB600();
      v62 = sub_24A4ABCA0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v84 = v41;
        v64 = swift_slowAlloc();
        v117 = v64;
        *v63 = 136315394;
        LOBYTE(v121) = 0;
        v85 = sub_24A4AB870();
        v87 = sub_24A37BD58(v85, v86, &v117);

        *(v63 + 4) = v87;
        *(v63 + 12) = 2048;
        *(v63 + 14) = *(v84 + 16);
        v68 = "👀 FMFSecureLocCtrl: no change for subscribing %s %ld handles";
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    v88 = sub_24A4AB600();
    v89 = sub_24A4ABCE0();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117 = v115;
      *v90 = 136315394;
      LOBYTE(v121) = 0;
      v91 = sub_24A4AB870();
      v93 = sub_24A37BD58(v91, v92, &v117);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = sub_24A37BD58(v82, v81, &v117);

      *(v90 + 14) = v94;
      _os_log_impl(&dword_24A376000, v88, v89, "👀 FMFSecureLocCtrl: elected-subscribing %s for %s", v90, 0x16u);
      v95 = v115;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v95, -1, -1);
      MEMORY[0x24C219130](v90, -1, -1);
    }

    else
    {
    }

    v105 = v41;
    v107 = v108;
    v106 = v109;
    sub_24A46C194(v104, 0, 0, 0xE000000000000000, v108, v109);

    v23[4] = v105;

    v23[5] = v107;
    v23[6] = v106;

LABEL_51:

    return;
  }

  __break(1u);
}

int *sub_24A467B94(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  result = type metadata accessor for FMFFriend(0);
  v8 = result;
  if ((*(a1 + result[9]) & 2) != 0)
  {
    if (*(*(a3 + 16) + 672) == 1)
    {
      v25 = *(a1 + result[11]);
      if (v25 != 2 && (v25 & 1) != 0)
      {
        goto LABEL_27;
      }

      v26 = *(a1 + result[12]);
      if (v26 != 2 && (v26 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v27 = *(a1 + result[12]);
      if (v27 != 2 && (v27 & 1) != 0 && (*(a1 + result[13]) & 1) == 0)
      {
LABEL_27:
        v37 = *a1;
        v38 = a1[1];

        sub_24A399A78(&v57, v37, v38);
      }
    }

    v53 = a4;
    v28 = *a2;
    v29 = *a1;
    a1 = a1[1];

    v30 = sub_24A468208(v29, a1, v28);
    v32 = v31;
    v34 = v33;
    v35 = ~v33;

    if (v35)
    {
      sub_24A3C72C0(v30, v32, v34);
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A4B4E10;
      *(inited + 32) = v29;
      *(inited + 40) = a1;

      sub_24A465114(inited, v53 & 1);
      swift_setDeallocating();
      return swift_arrayDestroy();
    }

    sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
    v39 = swift_initStackObject();
    v52 = xmmword_24A4B4E10;
    *(v39 + 16) = xmmword_24A4B4E10;
    a2 = v29;
    *(v39 + 32) = v29;
    *(v39 + 40) = a1;
    swift_bridgeObjectRetain_n();

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v40 = v57;
    v57 = 91;
    v58 = 0xE100000000000000;
    v59 = 1;

    sub_24A474894(v39, v40, &v57, &v59);
    swift_bridgeObjectRelease_n();
    v55 = v57;
    v56 = v58;

    MEMORY[0x24C217D50](93, 0xE100000000000000);

    swift_setDeallocating();
    sub_24A37EF2C(v39 + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

    v9 = v55;
    v10 = v56;
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v53 = a4;
  *&v52 = a3;
  v9 = 0;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = *a2;
  v14 = 1 << *(*a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v17 = *(v13 + 56);
  v16 = v13 + 56;
  v18 = v15 & v17;
  v19 = (v14 + 63) >> 6;
  while (v18)
  {
LABEL_10:
    v21 = (*(v12 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v18)))));
    if (*v21 != v10 || v21[1] != v11)
    {
      v18 &= v18 - 1;
      result = sub_24A4AC270();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    sub_24A473468(v10, v11);

    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v23 = (*(*(v8 - 1) + 80) + 32) & ~*(*(v8 - 1) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24A4B4E10;
    sub_24A475078(a1, v24 + v23, type metadata accessor for FMFFriend);
    sub_24A468780(v24, v53 & 1);
  }

  while (1)
  {
    v20 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
      return result;
    }

    v18 = *(v16 + 8 * v20);
    ++v9;
    if (v18)
    {
      v9 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_29:
  v41 = sub_24A4AB630();
  sub_24A378E18(v41, qword_27EF4E260);

  v42 = sub_24A4AB600();
  v43 = sub_24A4ABCE0();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v44 = 136315394;
    v45 = v53 & 1;
    v46 = sub_24A4AB870();
    v48 = sub_24A37BD58(v46, v47, &v57);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = sub_24A37BD58(v9, v10, &v57);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_24A376000, v42, v43, "👀 FMFSecureLocCtrl: fallback to legacy (not capable) %s for %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v51, -1, -1);
    MEMORY[0x24C219130](v44, -1, -1);
  }

  else
  {

    v45 = v53 & 1;
  }

  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v50 = swift_initStackObject();
  *(v50 + 16) = v52;
  *(v50 + 32) = a2;
  *(v50 + 40) = a1;
  sub_24A4657D4(v50, v45);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

unint64_t sub_24A468208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24A4AC360();
  sub_24A4AB8F0();
  v6 = sub_24A4AC3A0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_24A468304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = a3 & 0x100;
    v8 = a3 & 0x10000;
    sub_24A4AC360();
    sub_24A4AB8F0();
    v30 = a3;
    sub_24A4AC380();
    sub_24A4AC380();
    sub_24A4AC380();
    v10 = sub_24A4AC3A0();
    v11 = a4 + 56;
    v12 = -1 << *(a4 + 32);
    v13 = v10 & ~v12;
    if ((*(a4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      v15 = *(a4 + 48);
      v16 = v30;
      v28 = v7;
      v29 = v8;
      do
      {
        v22 = v15 + 24 * v13;
        v23 = *(v22 + 16);
        v24 = *(v22 + 17);
        v25 = (v8 != 0) ^ *(v22 + 18);
        if (*v22 == a1 && *(v22 + 8) == a2)
        {
          if (((v23 ^ v16 | (v7 != 0) ^ v24 | v25) & 1) == 0)
          {
            return v13;
          }
        }

        else
        {
          v17 = a2;
          v18 = v11;
          v19 = v15;
          v20 = sub_24A4AC270();
          v15 = v19;
          v11 = v18;
          a2 = v17;
          v8 = v29;
          v16 = v30;
          v21 = (v7 != 0) ^ v24;
          v7 = v28;
          if (!((v23 ^ v30) & 1 | ((v20 & 1) == 0) | (v21 | v25) & 1))
          {
            return v13;
          }
        }

        v13 = (v13 + 1) & v14;
      }

      while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }
  }

  return 0;
}

int *sub_24A4684D0(void *a1, uint64_t *a2, uint64_t a3, char a4)
{
  result = type metadata accessor for FMFFriend(0);
  v9 = result;
  if ((*(a1 + result[9]) & 2) != 0)
  {
    if (*(*(a3 + 16) + 672) == 1)
    {
      v23 = *(a1 + result[11]);
      if (v23 == 2 || (v23 & 1) == 0)
      {
        v24 = *(a1 + result[12]);
        if (v24 == 2 || (v24 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      v25 = *(a1 + result[12]);
      if (v25 == 2 || (v25 & 1) == 0 || (*(a1 + result[13]) & 1) != 0)
      {
        return result;
      }
    }

    v26 = *(a3 + 56);
    v27 = 1 << *(v26 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    if ((v28 & *(v26 + 56)) == 0)
    {
      v29 = ((v27 + 63) >> 6) - 1;
      v30 = (v26 + 64);
      while (v29)
      {
        v31 = *v30++;
        --v29;
        if (v31)
        {
          return result;
        }
      }

      v33 = *a1;
      v32 = a1[1];

      sub_24A486200(v35, v33, v32, 0);
    }
  }

  else
  {
    v34 = a4;
    v10 = 0;
    v11 = *a1;
    v12 = a1[1];
    v13 = *a2;
    v14 = 1 << *(*a2 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
LABEL_10:
      v19 = (*(v13 + 48) + 24 * (__clz(__rbit64(v16)) | (v10 << 6)));
      if (*v19 != v11 || v19[1] != v12)
      {
        v16 &= v16 - 1;
        result = sub_24A4AC270();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
      v21 = (*(*(v9 - 1) + 80) + 32) & ~*(*(v9 - 1) + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24A4B4E10;
      sub_24A475078(a1, v22 + v21, type metadata accessor for FMFFriend);
      sub_24A468780(v22, v34 & 1);
    }

    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        return result;
      }

      v16 = *(v13 + 56 + 8 * v18);
      ++v10;
      if (v16)
      {
        v10 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A468780(uint64_t a1, char a2)
{
  v5 = sub_24A4AB690();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 136);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  *(v12 + 32) = a2 & 1;
  aBlock[4] = sub_24A47506C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B2C8;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_24A4AB6B0();
  v19 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v7, v13);
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

void sub_24A468A5C(uint64_t a1, void *a2, int a3)
{
  v135 = sub_24A4AB690();
  v139 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24A4AB6E0();
  v129 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFFriend(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v136 = (&v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v142 = (&v125 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v125 - v14);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  v137 = a2;
  v143 = v16;
  v140 = v9;
  v141 = a1;
  if (v16)
  {
    LODWORD(v138) = a3;
    aBlock = MEMORY[0x277D84F90];
    sub_24A3DBDA8(0, v16, 0);
    v17 = aBlock;
    v18 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = *(v9 + 72);
    do
    {
      sub_24A475078(v18, v15, type metadata accessor for FMFFriend);
      v21 = *v15;
      v20 = v15[1];

      sub_24A4750E0(v15, type metadata accessor for FMFFriend);
      aBlock = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24A3DBDA8((v22 > 1), v23 + 1, 1);
        v17 = aBlock;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v18 += v19;
      --v16;
    }

    while (v16);
    a2 = v137;
    LOBYTE(a3) = v138;
  }

  v25 = sub_24A464FFC(v17);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  v26 = 0;
  sub_24A4ABD70();
  v27 = aBlock;
  aBlock = 91;
  v145 = 0xE100000000000000;
  LOBYTE(v148) = 1;

  sub_24A474894(v25, v27, &aBlock, &v148);
  swift_bridgeObjectRelease_n();
  v149 = aBlock;
  v150 = v145;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v28 = v150;
  v127 = v149;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A4AB630();
  v30 = sub_24A378E18(v29, qword_27EF4E260);

  v128 = v30;
  v31 = sub_24A4AB600();
  v32 = sub_24A4ABCE0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    LODWORD(v131) = v32;
    v34 = v33;
    v138 = swift_slowAlloc();
    aBlock = v138;
    *v34 = 136315394;
    v35 = a3 & 1;
    LOBYTE(v149) = a3 & 1;
    v36 = sub_24A4AB870();
    v38 = sub_24A37BD58(v36, v37, &aBlock);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_24A37BD58(v127, v28, &aBlock);
    _os_log_impl(&dword_24A376000, v31, v131, "👀 FMFSecureLocCtrl: asked-unsubscribing %s for %s", v34, 0x16u);
    v39 = v138;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v39, -1, -1);
    MEMORY[0x24C219130](v34, -1, -1);
  }

  else
  {

    v35 = a3 & 1;
  }

  v41 = v142;
  v40 = v143;
  sub_24A465E4C(v17, v35);
  sub_24A465114(v17, v35);

  if ((a3 & 1) == 0)
  {
    v68 = a2[4];
    v149 = v68;
    v148 = MEMORY[0x277D84FA0];
    if (v40)
    {
      v69 = v141 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
      v70 = *(v140 + 72);

      v71 = 0;
      do
      {
        sub_24A475078(v69 + v70 * v71, v41, type metadata accessor for FMFFriend);
        v72 = v149;
        v73 = *v41;
        v74 = v41[1];
        if (*(v149 + 16))
        {
          sub_24A4AC360();

          sub_24A4AB8F0();
          v75 = sub_24A4AC3A0();
          v76 = -1 << *(v72 + 32);
          v77 = v75 & ~v76;
          if ((*(v72 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77))
          {
            v78 = ~v76;
            while (1)
            {
              v79 = (*(v72 + 48) + 16 * v77);
              v80 = *v79 == v73 && v79[1] == v74;
              if (v80 || (sub_24A4AC270() & 1) != 0)
              {
                break;
              }

              v77 = (v77 + 1) & v78;
              if (((*(v72 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            v81 = *(v72 + 36);

            sub_24A4745A8(v77, v81);
          }

LABEL_23:

          v41 = v142;
          v40 = v143;
        }

        ++v71;

        sub_24A399A78(&aBlock, v73, v74);

        sub_24A4750E0(v41, type metadata accessor for FMFFriend);
      }

      while (v71 != v40);
      v83 = v149;
      a2 = v137;
      v68 = v137[4];
    }

    else
    {

      v83 = v68;
    }

    v102 = sub_24A462C1C(v83, v68);

    if (v102)
    {

      v103 = sub_24A4AB600();
      v104 = sub_24A4ABCA0();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        aBlock = v106;
        *v105 = 136315394;
        LOBYTE(v147) = 0;
        v107 = sub_24A4AB870();
        v109 = sub_24A37BD58(v107, v108, &aBlock);

        *(v105 + 4) = v109;
        *(v105 + 12) = 2048;
        *(v105 + 14) = *(v83 + 16);
        _os_log_impl(&dword_24A376000, v103, v104, "👀 FMFSecureLocCtrl: no change for unsubscribing %s for %ld handles", v105, 0x16u);
        sub_24A37EEE0(v106);
        MEMORY[0x24C219130](v106, -1, -1);
        MEMORY[0x24C219130](v105, -1, -1);
      }
    }

    else
    {

      v110 = sub_24A4AB600();
      v111 = v28;
      v112 = sub_24A4ABCE0();

      if (os_log_type_enabled(v110, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock = v114;
        *v113 = 136315394;
        LOBYTE(v147) = 0;
        v115 = sub_24A4AB870();
        v117 = sub_24A37BD58(v115, v116, &aBlock);

        *(v113 + 4) = v117;
        *(v113 + 12) = 2080;
        v118 = sub_24A37BD58(v127, v111, &aBlock);

        *(v113 + 14) = v118;
        a2 = v137;
        _os_log_impl(&dword_24A376000, v110, v112, "👀 FMFSecureLocCtrl: unsubscribing %s for %s", v113, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v114, -1, -1);
        MEMORY[0x24C219130](v113, -1, -1);
      }

      else
      {
      }

      v122 = v148;
      v123 = a2[5];
      v124 = a2[6];

      sub_24A46D18C(v122, 0, 0, 0xE000000000000000, v123, v124);

      a2[4] = v83;
    }

    goto LABEL_57;
  }

  v42 = a2[7];
  v149 = v42;
  v148 = MEMORY[0x277D84FA0];
  if (v40)
  {
    v126 = v28;
    v43 = v141 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
    v138 = *(v140 + 72);
    v131 = v146;
    v130 = (v139 + 8);
    ++v129;

    v44 = v136;
    do
    {
      v143 = v40;
      v48 = sub_24A475078(v43, v44, type metadata accessor for FMFFriend);
      v49 = v149;
      MEMORY[0x28223BE20](v48);
      *(&v125 - 2) = v44;
      sub_24A432BC0(sub_24A431FF8, (&v125 - 4), v49);
      if (v51)
      {
        v53 = v50;
        v54 = v51;
        v55 = v52;
        v142 = v26;
        v56 = a2[18];
        v57 = swift_allocObject();
        *(v57 + 16) = a2;
        *(v57 + 24) = v53;
        *(v57 + 32) = v54;
        *(v57 + 40) = v55 & 1;
        *(v57 + 41) = BYTE1(v55) & 1;
        *(v57 + 42) = BYTE2(v55) & 1;
        v146[2] = sub_24A475140;
        v146[3] = v57;
        aBlock = MEMORY[0x277D85DD0];
        v145 = 1107296256;
        v146[0] = sub_24A388564;
        v146[1] = &unk_285D8B318;
        v58 = _Block_copy(&aBlock);
        v59 = v56;

        v140 = v53;
        v60 = v132;
        sub_24A4AB6B0();
        v147 = MEMORY[0x277D84F90];
        sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v139 = v49;
        sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
        sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
        v61 = v134;
        v62 = v135;
        sub_24A4ABE90();
        MEMORY[0x24C218190](0, v60, v61, v58);
        _Block_release(v58);

        (*v130)(v61, v62);
        (*v129)(v60, v133);

        LODWORD(v141) = v55 & 0x10101 | v141 & 0xFF000000;
        v63 = sub_24A468304(v140, v54, v141, v139);
        v65 = v64;
        v67 = v66;
        LODWORD(v56) = ~v66;

        if (v56)
        {
          sub_24A474494(v63, v65);
          sub_24A3C72C0(v63, v65, v67);
        }

        a2 = v137;
        v26 = v142;
        v45 = v143;
        v44 = v136;
      }

      else
      {
        v45 = v143;
      }

      v46 = *v44;
      v47 = v44[1];

      sub_24A399A78(&aBlock, v46, v47);

      sub_24A4750E0(v44, type metadata accessor for FMFFriend);
      v43 += v138;
      v40 = v45 - 1;
    }

    while (v40);
    v82 = v149;
    v42 = a2[7];
    v28 = v126;
  }

  else
  {

    v82 = v42;
  }

  v84 = sub_24A462DD4(v82, v42);

  if ((v84 & 1) == 0)
  {

    v93 = sub_24A4AB600();
    v94 = v28;
    v95 = sub_24A4ABCE0();

    if (os_log_type_enabled(v93, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      aBlock = v97;
      *v96 = 136315394;
      LOBYTE(v147) = 1;
      v98 = sub_24A4AB870();
      v100 = sub_24A37BD58(v98, v99, &aBlock);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2080;
      v101 = sub_24A37BD58(v127, v94, &aBlock);

      *(v96 + 14) = v101;
      a2 = v137;
      _os_log_impl(&dword_24A376000, v93, v95, "👀 FMFSecureLocCtrl: unsubscribing %s for %s", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v97, -1, -1);
      MEMORY[0x24C219130](v96, -1, -1);
    }

    else
    {
    }

    v119 = v148;
    v120 = a2[8];
    v121 = a2[9];

    sub_24A46D18C(v119, 1, 0, 0xE000000000000000, v120, v121);

    a2[7] = v82;
LABEL_57:

    return;
  }

  v85 = sub_24A4AB600();
  v86 = sub_24A4ABCA0();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock = v88;
    *v87 = 136315394;
    LOBYTE(v147) = 1;
    v89 = sub_24A4AB870();
    v91 = sub_24A37BD58(v89, v90, &aBlock);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2048;
    v92 = *(v82 + 16);

    *(v87 + 14) = v92;

    _os_log_impl(&dword_24A376000, v85, v86, "👀 FMFSecureLocCtrl: no change for unsubscribing %s for %ld handles", v87, 0x16u);
    sub_24A37EEE0(v88);
    MEMORY[0x24C219130](v88, -1, -1);
    MEMORY[0x24C219130](v87, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_24A469B78(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v4 = BYTE2(a4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A440C2C(a2, a3, v4 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A469BEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "👀 FMFSecureLocCtrl: start refreshing", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  sub_24A463B90();
  sub_24A466B38(a1, 0, 0, 0);
  v14 = *(v2 + 136);
  aBlock[4] = sub_24A474EAC;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B048;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v15);
  _Block_release(v15);

  (*(v20 + 8))(v6, v4);
  (*(v7 + 8))(v9, v19);
}

uint64_t sub_24A469F70(void *a1)
{

  sub_24A462638(v2);
  v4 = sub_24A3999E0(v3);

  v5 = a1[8];
  v6 = a1[9];

  sub_24A46C194(v4, 1, 0, 0xE000000000000000, v5, v6);
}

uint64_t sub_24A46A014()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);
  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A376000, v9, v10, "👀 FMFSecureLocCtrl: stop refreshing", v11, 2u);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v12 = *(v1 + 136);
  aBlock[4] = sub_24A474EA4;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B020;
  v13 = _Block_copy(aBlock);
  v14 = v12;

  sub_24A4AB6B0();
  v19 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v7, v4, v13);
  _Block_release(v13);

  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

uint64_t sub_24A46A378(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];

  sub_24A46D18C(v4, 0, 0, 0xE000000000000000, v2, v3);

  sub_24A462638(v5);
  v7 = sub_24A3999E0(v6);

  v8 = a1[8];
  v9 = a1[9];

  sub_24A46D18C(v7, 1, 0, 0xE000000000000000, v8, v9);

  v10 = MEMORY[0x277D84FA0];
  a1[4] = MEMORY[0x277D84FA0];

  a1[7] = v10;
}

uint64_t sub_24A46A47C(unint64_t a1, uint64_t a2, char a3)
{
  v160 = a2;
  v161 = type metadata accessor for FMFLocation(0);
  v179 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v174 = (v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v165 = v157 - v8;
  MEMORY[0x28223BE20](v9);
  v166 = v157 - v10;
  MEMORY[0x28223BE20](v11);
  v172 = v157 - v12;
  v163 = a3 & 1;
  sub_24A4664E0(a1, a3 & 1);
  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_125;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A4AC060())
  {
    v15 = MEMORY[0x277D84F90];
    v178 = v3;
    v182 = i;
    v158 = i & ~(i >> 63);
    if (i)
    {
      v187[0] = MEMORY[0x277D84F90];
      result = sub_24A3DBDA8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        return result;
      }

      v17 = 0;
      v15 = v187[0];
      v18 = a1;
      v19 = a1 & 0xC000000000000001;
      do
      {
        v20 = v15;
        if (v19)
        {
          v21 = MEMORY[0x24C218380](v17, v18);
        }

        else
        {
          v21 = *(v18 + 8 * v17 + 32);
        }

        v22 = v21;
        v23 = [v21 findMyId];
        v24 = sub_24A4AB850();
        v26 = v25;

        v15 = v20;
        v187[0] = v20;
        v27 = *(v20 + 16);
        v28 = *(v15 + 24);
        if (v27 >= v28 >> 1)
        {
          sub_24A3DBDA8((v28 > 1), v27 + 1, 1);
          v15 = v187[0];
        }

        ++v17;
        *(v15 + 16) = v27 + 1;
        v29 = v15 + 16 * v27;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
      }

      while (v182 != v17);
      a1 = v18;
      i = v182;
    }

    v30 = v15;
    v31 = v163;
    sub_24A465114(v15, v163);
    v159 = v30;
    sub_24A465E4C(v30, v31);
    if (v13)
    {
      break;
    }

    v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v172;
    if (!v32)
    {
      goto LABEL_74;
    }

LABEL_15:
    v33 = a1 & 0xC000000000000001;
    swift_beginAccess();
    v3 = 0;
    v171 = a1 & 0xFFFFFFFFFFFFFF8;
    v169 = 0;
    v170 = a1 + 32;
    v34 = &off_278FE1000;
    v177 = a1;
    v167 = a1 & 0xC000000000000001;
    v168 = v32;
    while (1)
    {
      if (v33)
      {
        v35 = MEMORY[0x24C218380](v3, a1);
      }

      else
      {
        if (v3 >= *(v171 + 16))
        {
          goto LABEL_124;
        }

        v35 = *(v170 + 8 * v3);
      }

      v36 = v35;
      v37 = __OFADD__(v3, 1);
      v3 = (v3 + 1);
      if (v37)
      {
        break;
      }

      v38 = [v35 v34[248]];
      v185 = v3;
      if (v38 == 6)
      {
        v39 = a1;
        v40 = [v36 findMyId];
        v41 = v36;
        v42 = sub_24A4AB850();
        v44 = v43;

        v45 = v178[13];
        if (*(v45 + 16))
        {

          v46 = sub_24A39B2C8(v42, v44);
          v48 = v47;

          if (v48)
          {
            v49 = *(*(v45 + 56) + 8 * v46);

            [v49 invalidate];
          }

          else
          {
          }

          v13 = v172;
        }

        else
        {
        }

        v3 = v185;
        v34 = &off_278FE1000;
        a1 = v39;
      }

      else
      {
        if ([v36 v34[248]] == 7)
        {
          v50 = a1;
          v51 = v178[7];
          v53 = *(v51 + 56);
          v13 = v51 + 56;
          v52 = v53;
          v54 = 1 << *(v178[7] + 32);
          if (v54 < 64)
          {
            v55 = ~(-1 << v54);
          }

          else
          {
            v55 = -1;
          }

          v56 = v55 & v52;
          a1 = (v54 + 63) >> 6;
          v183 = v178[7];

          v57 = 0;
          v58 = 0;
          v180 = v36;
          *&v181 = v13;
LABEL_32:
          v59 = v57;
          v60 = v58;
          if (!v56)
          {
            goto LABEL_34;
          }

          while (1)
          {
            v58 = v60;
LABEL_37:
            if (__OFADD__(v59, 1))
            {
              break;
            }

            v61 = a1;
            v173 = v59;
            v184 = v59 + 1;
            v62 = __clz(__rbit64(v56));
            v56 &= v56 - 1;
            v63 = *(v183 + 48) + 24 * (v62 | (v58 << 6));
            v64 = v36;
            v66 = *v63;
            v65 = *(v63 + 8);
            LODWORD(v176) = *(v63 + 16);
            v67 = *(v63 + 17);
            LODWORD(v175) = *(v63 + 18);
            swift_bridgeObjectRetain_n();
            v68 = [v64 findMyId];
            v69 = sub_24A4AB850();
            v71 = v70;

            if (v66 == v69 && v65 == v71)
            {
              v73 = v66;

              v76 = v177;
LABEL_46:
              v164 = v73;
              v77 = v178;
              if (v178[26])
              {
                v188 = 0x403E000000000000;
                if (qword_27EF3EC08 != -1)
                {
                  v75 = swift_once();
                }

                MEMORY[0x28223BE20](v75);
                LOBYTE(v157[-2]) = 3;
                v157[-1] = &v188;
                v78 = v169;
                sub_24A4ABD70();
                v169 = v78;
                v79 = *v187;
                v50 = v177;
                v77 = v178;
              }

              else
              {
                v79 = *(v178 + 25);
                v50 = v76;
              }

              a1 = v61;
              v80 = v176;
              if (v67)
              {
                v81 = 256;
              }

              else
              {
                v81 = 0;
              }

              v82 = v162 & 0xFF000000 | v176 | v81;
              if (v175)
              {
                v83 = 0x10000;
              }

              else
              {
                v83 = 0;
              }

              v162 = v82 | v83;
              sub_24A4714E4(v164, v65, v82 | v83, 1, v79);
              if ((v80 | v67))
              {
                v84 = v77[7];
                v85 = *(v84 + 16);
                v13 = v181;
                if (v85)
                {
                  sub_24A3C9CEC(&qword_27EF3F558, &unk_24A4B5790);
                  v86 = swift_allocObject();
                  v87 = j__malloc_size(v86);
                  v86[2] = v85;
                  v86[3] = 2 * ((v87 - 32) / 24);
                  v88 = sub_24A40C270(v187, (v86 + 4), v85, v84);
                  v89 = v187[0];
                  v175 = v187[2];
                  v176 = v187[1];
                  v157[0] = v187[4];
                  v157[1] = v187[3];

                  result = sub_24A3A13C0(v89);
                  if (v88 != v85)
                  {
                    goto LABEL_129;
                  }

                  v50 = v177;
                }

                else
                {
                  v86 = MEMORY[0x277D84F90];
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_24A473E50(v86);
                  v86 = result;
                }

                if (v173 >= v86[2])
                {
                  goto LABEL_128;
                }

                v90 = &v86[3 * v173];
                v90[4] = v164;
                v90[5] = v65;
                *(v90 + 24) = 0;
                *(v90 + 50) = 1;

                v91 = sub_24A489F6C(v86);

                v178[7] = v91;
                v34 = &off_278FE1000;
              }

              else
              {
                v34 = &off_278FE1000;
                v13 = v181;
              }

              v57 = v184;
              v3 = v185;
              v36 = v180;
              goto LABEL_32;
            }

            v73 = v66;
            v74 = sub_24A4AC270();

            v76 = v177;
            if (v74)
            {
              goto LABEL_46;
            }

            v59 = v184;
            v3 = v185;
            v60 = v58;
            v34 = &off_278FE1000;
            v36 = v180;
            v13 = v181;
            v50 = v76;
            a1 = v61;
            if (!v56)
            {
LABEL_34:
              while (1)
              {
                v58 = v60 + 1;
                if (__OFADD__(v60, 1))
                {
                  break;
                }

                if (v58 >= a1)
                {

                  v13 = v172;
                  v33 = v167;
                  v32 = v168;
                  a1 = v50;
                  i = v182;
                  goto LABEL_17;
                }

                v56 = *(v13 + 8 * v58);
                ++v60;
                if (v56)
                {
                  goto LABEL_37;
                }
              }

              __break(1u);
              break;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_17:
      if (v3 == v32)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    ;
  }

  v32 = sub_24A4AC060();
  v13 = v172;
  if (v32)
  {
    goto LABEL_15;
  }

LABEL_74:
  v169 = 0;
LABEL_75:
  v92 = MEMORY[0x277D84F90];
  if (i)
  {
    v187[0] = MEMORY[0x277D84F90];
    result = sub_24A3B57CC(0, v158, 0);
    if (i < 0)
    {
      goto LABEL_127;
    }

    v93 = 0;
    v92 = v187[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v94 = MEMORY[0x24C218380](v93, a1);
      }

      else
      {
        v94 = *(a1 + 8 * v93 + 32);
      }

      sub_24A3EC26C(v94, v13);
      v187[0] = v92;
      v96 = *(v92 + 16);
      v95 = *(v92 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_24A3B57CC((v95 > 1), v96 + 1, 1);
        v92 = v187[0];
      }

      ++v93;
      *(v92 + 16) = v96 + 1;
      sub_24A410DD8(v13, v92 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v96);
    }

    while (i != v93);
  }

  v97 = swift_allocObject();
  *(v97 + 16) = v92;
  v98 = v160;
  v185 = v97;
  if (v160 && !v163)
  {

    v99 = sub_24A3999E0(v159);

    v187[0] = v98;
    v3 = v187;
    sub_24A47467C(v99);
    v101 = 0;
    v103 = v187[0] + 56;
    v102 = *(v187[0] + 56);
    v184 = v187[0];
    v104 = 1 << *(v187[0] + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v13 = v105 & v102;
    v106 = (v104 + 63) >> 6;
    *&v100 = 136315394;
    v181 = v100;
    v182 = v106;
    v183 = v187[0] + 56;
    if ((v105 & v102) != 0)
    {
      goto LABEL_93;
    }

    while (1)
    {
      do
      {
        v107 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_123;
        }

        if (v107 >= v106)
        {

          goto LABEL_108;
        }

        v13 = *(v103 + 8 * v107);
        ++v101;
      }

      while (!v13);
      v101 = v107;
      do
      {
LABEL_93:
        v108 = (*(v184 + 48) + ((v101 << 10) | (16 * __clz(__rbit64(v13)))));
        v109 = *v108;
        v110 = v108[1];
        v188 = 0x403E000000000000;
        v111 = qword_27EF3EC08;

        if (v111 != -1)
        {
          v112 = swift_once();
        }

        MEMORY[0x28223BE20](v112);
        LOBYTE(v157[-2]) = 4;
        v157[-1] = &v188;
        v113 = v169;
        sub_24A4ABD70();
        v169 = v113;
        sub_24A470124(v109, v110, 0, *v187);
        v114 = v161;
        v115 = *(v161 + 32);
        v116 = sub_24A4AAB20();
        v117 = v166;
        (*(*(v116 - 8) + 56))(v166 + v115, 1, 1, v116);
        *v117 = v109;
        *(v117 + 8) = v110;
        sub_24A3B4ACC(v187);
        memcpy((v117 + v114[11]), v187, 0x161uLL);
        *(v117 + 16) = 0;
        *(v117 + 24) = 0;
        *(v117 + 32) = 1;
        *(v117 + v114[9]) = 0;
        *(v117 + v114[10]) = 0;
        v118 = FMFLocation.debugDescription.getter();
        v120 = v119;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v121 = sub_24A4AB630();
        sub_24A378E18(v121, qword_27EF4E260);

        v122 = sub_24A4AB600();
        a1 = sub_24A4ABCE0();

        if (os_log_type_enabled(v122, a1))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v188 = v124;
          *v123 = v181;
          v125 = sub_24A37BD58(v118, v120, &v188);

          *(v123 + 4) = v125;
          *(v123 + 12) = 2080;
          v186 = 0;
          sub_24A3C9CEC(&qword_27EF3FA88, &qword_24A4B72F8);
          v126 = sub_24A4ABDE0();
          v128 = sub_24A37BD58(v126, v127, &v188);

          *(v123 + 14) = v128;
          _os_log_impl(&dword_24A376000, v122, a1, "👀 FMFLocation: created %s with location: '%s'", v123, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C219130](v124, -1, -1);
          v129 = v123;
          v97 = v185;
          MEMORY[0x24C219130](v129, -1, -1);
        }

        else
        {
        }

        sub_24A475078(v166, v165, type metadata accessor for FMFLocation);
        v3 = *(v97 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v97 + 16) = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = sub_24A3B5C2C(0, v3[2] + 1, 1, v3);
          *(v97 + 16) = v3;
        }

        v132 = v3[2];
        v131 = v3[3];
        if (v132 >= v131 >> 1)
        {
          v3 = sub_24A3B5C2C((v131 > 1), v132 + 1, 1, v3);
          *(v97 + 16) = v3;
        }

        v13 &= v13 - 1;
        sub_24A4750E0(v166, type metadata accessor for FMFLocation);
        v3[2] = v132 + 1;
        sub_24A410DD8(v165, v3 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v132);
        *(v97 + 16) = v3;
        v106 = v182;
        v103 = v183;
      }

      while (v13);
    }
  }

LABEL_108:
  v133 = *(v97 + 16);
  v134 = *(v133 + 16);
  v135 = MEMORY[0x277D84F90];
  if (v134)
  {
    v187[0] = MEMORY[0x277D84F90];

    sub_24A3DBEE8(0, v134, 0);
    v135 = v187[0];
    v136 = *(v179 + 80);
    v184 = v133;
    v137 = v133 + ((v136 + 32) & ~v136);
    v138 = *(v179 + 72);
    do
    {
      v139 = v174;
      sub_24A475078(v137, v174, type metadata accessor for FMFLocation);
      v141 = *v139;
      v140 = v139[1];

      sub_24A4750E0(v139, type metadata accessor for FMFLocation);
      v187[0] = v135;
      v143 = *(v135 + 16);
      v142 = *(v135 + 24);
      if (v143 >= v142 >> 1)
      {
        sub_24A3DBEE8((v142 > 1), v143 + 1, 1);
        v135 = v187[0];
      }

      *(v135 + 16) = v143 + 1;
      v144 = v135 + 16 * v143;
      *(v144 + 32) = v141;
      *(v144 + 40) = v140;
      v137 += v138;
      --v134;
    }

    while (v134);

    v97 = v185;
  }

  v145 = v178;

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v146 = v187[0];
  v187[0] = 91;
  v187[1] = 0xE100000000000000;
  LOBYTE(v186) = 1;

  sub_24A474894(v135, v146, v187, &v186);
  swift_bridgeObjectRelease_n();
  v188 = v187[0];
  v189 = v187[1];

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v148 = v188;
  v147 = v189;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v149 = sub_24A4AB630();
  sub_24A378E18(v149, qword_27EF4E260);

  v150 = sub_24A4AB600();
  v151 = sub_24A4ABCE0();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v187[0] = v153;
    *v152 = 136315138;
    v154 = sub_24A37BD58(v148, v147, v187);

    *(v152 + 4) = v154;
    _os_log_impl(&dword_24A376000, v150, v151, "👀 FMFSecureLocCtrl: shifting locations for %s", v152, 0xCu);
    sub_24A37EEE0(v153);
    v145 = v178;
    MEMORY[0x24C219130](v153, -1, -1);
    MEMORY[0x24C219130](v152, -1, -1);
  }

  else
  {
  }

  v155 = *(v97 + 16);
  v156 = swift_allocObject();
  *(v156 + 16) = v145;
  *(v156 + 24) = v97;

  sub_24A3BCD18(v155, sub_24A474D68, v156);
}

uint64_t sub_24A46B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for FMFLocation(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB690();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v43 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x28223BE20](v18);
  v40 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v37 = v16;
    v38 = a3;
    v39 = v15;
    aBlock[0] = MEMORY[0x277D84F90];
    v21 = v5;
    sub_24A3B57CC(0, v20, 0);
    v22 = aBlock[0];
    v23 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v21 + 72);
    do
    {
      sub_24A474DA8(v23, v10);
      sub_24A474E18(v10, v7);
      v25 = *(v45 + 48);
      sub_24A410DD8(v7, v14);
      sub_24A37EF2C(&v7[v25], &qword_27EF3F480, &unk_24A4B8C20);
      aBlock[0] = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_24A3B57CC((v26 > 1), v27 + 1, 1);
        v22 = aBlock[0];
      }

      *(v22 + 16) = v27 + 1;
      sub_24A410DD8(v14, v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v27);
      v23 += v24;
      --v20;
    }

    while (v20);
    a3 = v38;
    v15 = v39;
    v16 = v37;
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
  }

  v29 = v44;
  v30 = *(v44 + 136);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v22;
  v31[4] = a3;
  aBlock[4] = sub_24A474E88;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8AFA8;
  v32 = _Block_copy(aBlock);
  v33 = v30;

  v34 = v40;
  sub_24A4AB6B0();
  v46 = v28;
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v35 = v43;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v34, v35, v32);
  _Block_release(v32);

  (*(v16 + 8))(v35, v15);
  (*(v41 + 8))(v34, v42);
}

uint64_t sub_24A46BAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a3;
  v4 = type metadata accessor for FMFLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AB6E0();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  v40 = a2;
  if (v14)
  {
    v35 = v11;
    v36 = v9;
    v37 = v8;
    aBlock = MEMORY[0x277D84F90];
    sub_24A3DBEE8(0, v14, 0);
    v15 = aBlock;
    v16 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    do
    {
      sub_24A475078(v16, v7, type metadata accessor for FMFLocation);
      v18 = *v7;
      v19 = v7[1];

      sub_24A4750E0(v7, type metadata accessor for FMFLocation);
      aBlock = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24A3DBEE8((v20 > 1), v21 + 1, 1);
        v15 = aBlock;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v16 += v17;
      --v14;
    }

    while (v14);
    v9 = v36;
    v8 = v37;
    v11 = v35;
  }

  v23 = v38;

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v24 = aBlock;
  aBlock = 91;
  v45 = 0xE100000000000000;
  v52[0] = 1;

  sub_24A474894(v15, v24, &aBlock, v52);
  swift_bridgeObjectRelease_n();
  v50 = aBlock;
  v51 = v45;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v25 = v50;
  v26 = v51;
  v27 = *(v23 + 144);
  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = v26;
  v30 = v39;
  v29 = v40;
  v28[4] = v23;
  v28[5] = v30;
  v28[6] = v29;
  v48 = sub_24A474E94;
  v49 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_24A388564;
  v47 = &unk_285D8AFF8;
  v31 = _Block_copy(&aBlock);
  v32 = v27;

  v33 = v41;
  sub_24A4AB6B0();
  v50 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v33, v11, v31);
  _Block_release(v31);

  (*(v9 + 8))(v11, v8);
  (*(v42 + 8))(v33, v43);
}

uint64_t sub_24A46BFE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_24A37BD58(a1, a2, v15);
    _os_log_impl(&dword_24A376000, v9, v10, "👀 FMFSecureLocCtrl: telling FMFManager we got locations for %s", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    sub_24A43FA4C(v14, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A46C194(uint64_t result, char a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  v8 = *(result + 16);
  if (!v8)
  {
    return result;
  }

  v10 = result;
  v11 = sub_24A3A11D8(v8, 0);
  v12 = sub_24A3A1268(&aBlock, v11 + 4, v8, v10);
  v13 = aBlock;
  v14 = v55;
  v51 = v10;

  sub_24A3A13C0(v13);
  if (v12 != v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  v48 = v11;
  v15 = sub_24A464FFC(v11);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v16 = aBlock;
  aBlock = 91;
  v54 = 0xE100000000000000;
  LOBYTE(v52) = 1;

  sub_24A474894(v15, v16, &aBlock, &v52);
  swift_bridgeObjectRelease_n();
  v59 = aBlock;
  v60 = v54;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v14 = v60;
  v50 = v59;
  if (qword_27EF3EBF8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);

  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_24A37BD58(a3, a4, &aBlock);
    *(v20 + 12) = 2080;
    v22 = a2;
    LOBYTE(v59) = a2 & 1;
    v23 = sub_24A4AB870();
    v25 = sub_24A37BD58(v23, v24, &aBlock);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_24A37BD58(v50, v14, &aBlock);
    _os_log_impl(&dword_24A376000, v18, v19, "👀 FMFSecureLocCtrl: %sregistering subscription %s for %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v21, -1, -1);
    MEMORY[0x24C219130](v20, -1, -1);
  }

  else
  {

    v22 = a2;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D496D0]) init];

  v27 = sub_24A4AB820();

  [v26 setClientApp_];

  if (v22)
  {
    [v26 setSubscriptionMode_];
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    v28 = sub_24A4AB760();
    [v26 setPushIdentifiers_];
  }

  else
  {
    [v26 setSubscriptionMode_];
  }

  v59 = MEMORY[0x277D84F90];
  v29 = v22 & 1;

  v30 = v26;
  sub_24A4749DC(v51, v7, &v59, v22 & 1, v30);

  v31 = v30;

  if (*(v59 + 2))
  {
    sub_24A464890(v59, v22 & 1);
  }

  v32 = sub_24A4AB600();
  v33 = sub_24A4ABCE0();

  v34 = v14;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136315394;
    LOBYTE(v52) = v29;
    v37 = sub_24A4AB870();
    v39 = v7;
    v40 = sub_24A37BD58(v37, v38, &aBlock);

    *(v35 + 4) = v40;
    v7 = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_24A37BD58(v50, v34, &aBlock);
    _os_log_impl(&dword_24A376000, v32, v33, "👀 FMFSecureLocCtrl: calling SPSecureLocMgr.subscribe %s for %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v36, -1, -1);
    MEMORY[0x24C219130](v35, -1, -1);
  }

  v41 = *(v7 + 24);
  v42 = sub_24A4ABA50();
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v29;
  *(v44 + 32) = v50;
  *(v44 + 40) = v34;
  *(v44 + 48) = v48;
  *(v44 + 56) = v51;
  v57 = sub_24A474D24;
  v58 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24A46D100;
  v56 = &unk_285D8AEB8;
  v45 = _Block_copy(&aBlock);

  [v41 subscribeAndFetchLocationForIds:v42 context:v31 completion:v45];
  _Block_release(v45);

  if ((v29 & 1) == 0)
  {
    v52 = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      v46 = swift_once();
    }

    MEMORY[0x28223BE20](v46);
    sub_24A4ABD70();
    sub_24A46F128(v48, 0, *&aBlock);
  }
}

uint64_t sub_24A46C938(void *a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a7;
  v35 = a8;
  v33 = a5;
  v12 = sub_24A4AB690();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AB6E0();
  v36 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = v13;
    v32 = v16;
    v20 = *(result + 136);
    v21 = result;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a4 & 1;
    v23 = v33;
    *(v22 + 32) = a2;
    *(v22 + 40) = v23;
    *(v22 + 48) = a6;
    v24 = v35;
    *(v22 + 56) = v34;
    *(v22 + 64) = v24;
    *(v22 + 72) = a1;
    aBlock[4] = sub_24A474D50;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AF08;
    v33 = _Block_copy(aBlock);
    v30 = v20;

    v25 = a2;

    v26 = a1;
    sub_24A4AB6B0();
    v37 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    v27 = v33;
    v28 = v30;
    MEMORY[0x24C218190](0, v18, v15, v33);
    _Block_release(v27);

    (*(v31 + 8))(v15, v12);
    (*(v36 + 8))(v18, v32);
  }

  return result;
}

void sub_24A46CC9C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a2 & 1;
  sub_24A46FFA8(a2 & 1);
  if (a3)
  {
    v15 = a3;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);
    v17 = a3;

    v18 = sub_24A4AB600();
    v19 = sub_24A4ABCE0();

    if (os_log_type_enabled(v18, v19))
    {
      v41 = a6;
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v20 = 136315650;
      v21 = sub_24A4AB870();
      v42 = a7;
      v23 = sub_24A37BD58(v21, v22, &v44);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_24A37BD58(a4, a5, &v44);
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v24 = sub_24A4AC310();
      v26 = sub_24A37BD58(v24, v25, &v44);

      *(v20 + 24) = v26;
      a7 = v42;
      _os_log_impl(&dword_24A376000, v18, v19, "👀 FMFSecureLocCtrl: failed SPSecureLocMgr.subscribe %s for %s: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v40, -1, -1);
      v27 = v20;
      a6 = v41;
      MEMORY[0x24C219130](v27, -1, -1);
    }

    sub_24A46DE28(v14, 15.0);
    sub_24A465114(a6, v14);
    sub_24A46A47C(MEMORY[0x277D84F90], a7, v14);
    if ((v14 & 1) == 0)
    {
      sub_24A4657D4(a6, 0);
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v28 = sub_24A4AB630();
    sub_24A378E18(v28, qword_27EF4E260);

    v29 = sub_24A4AB600();
    v30 = sub_24A4ABCE0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = a7;
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315394;
      v33 = sub_24A4AB870();
      v35 = sub_24A37BD58(v33, v34, &v44);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_24A37BD58(a4, a5, &v44);
      _os_log_impl(&dword_24A376000, v29, v30, "👀 FMFSecureLocCtrl: succeeded SPSecureLocMgr.subscribe %s for %s", v31, 0x16u);
      swift_arrayDestroy();
      v36 = v32;
      a7 = v43;
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v31, -1, -1);
    }

    v37 = [a8 locations];
    sub_24A37B428(0, &qword_27EF3FE48, 0x277D496B8);
    v38 = sub_24A4ABA70();

    [a8 expiresIn];
    sub_24A46DE28(v14, v39);
    sub_24A46A47C(v38, a7, v14);
  }
}

void sub_24A46D100(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_24A46D18C(uint64_t a1, char a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = sub_24A3A11D8(v11, 0);
    v14 = sub_24A3A1268(&aBlock, v13 + 4, v11, v10);
    v15 = aBlock;

    sub_24A3A13C0(v15);
    if (v14 != v11)
    {
      __break(1u);
      return;
    }

    v10 = a1;
    v9 = a3;
    v8 = a4;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = sub_24A464FFC(v13);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v17 = aBlock;
  aBlock = 91;
  v74 = 0xE100000000000000;
  v81[0] = 1;

  sub_24A474894(v16, v17, &aBlock, v81);
  swift_bridgeObjectRelease_n();
  v79 = aBlock;
  v80 = v74;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v18 = v80;
  v66 = v79;
  if (qword_27EF3EBF8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v19 = sub_24A4AB630();
  sub_24A378E18(v19, qword_27EF4E260);

  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();

  v22 = a2;
  v68 = v7;
  v65 = v18;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_24A37BD58(v9, v8, &aBlock);
    v7 = 2080;
    *(v23 + 12) = 2080;
    LOBYTE(v79) = a2 & 1;
    v25 = sub_24A4AB870();
    v27 = sub_24A37BD58(v25, v26, &aBlock);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_24A37BD58(v66, v18, &aBlock);
    _os_log_impl(&dword_24A376000, v20, v21, "👀 FMFSecureLocCtrl: %sunregistering subscription %s for %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v24, -1, -1);
    MEMORY[0x24C219130](v23, -1, -1);
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D496D0]) init];

  v29 = sub_24A4AB820();

  [v28 setClientApp_];

  v9 = &off_278FE1000;
  if (a2)
  {
    [v28 setSubscriptionMode_];
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    v30 = sub_24A4AB760();
    [v28 setPushIdentifiers_];
  }

  else
  {
    [v28 setSubscriptionMode_];
  }

  v18 = v10 + 56;
  v31 = 1 << *(v10 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v8 = v32 & *(v10 + 56);
  v33 = (v31 + 63) >> 6;

  v34 = 0;
  v72 = v28;
  while (v8)
  {
    v35 = v8;
LABEL_20:
    v8 = (v35 - 1) & v35;
    if (v22)
    {
      v37 = (*(v10 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v35)))));
      v38 = *v37;
      v39 = v37[1];
      swift_bridgeObjectRetain_n();

      v70 = sub_24A4493A0(v38, v39);

      v40 = [v72 pushIdentifiers];
      sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
      v41 = sub_24A4AB780();

      aBlock = v41;
      v42 = v38;
      v28 = v72;
      sub_24A4A3ADC(v70, v42, v39);
      v7 = aBlock;
      v22 = a2;
      v43 = sub_24A4AB760();

      [v72 setPushIdentifiers_];

      v10 = a1;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v36 >= v33)
    {
      break;
    }

    v35 = *(v18 + 8 * v36);
    ++v34;
    if (v35)
    {
      v34 = v36;
      goto LABEL_20;
    }
  }

  v44 = sub_24A4AB600();
  v45 = sub_24A4ABCE0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136315394;
    v9 = v22 & 1;
    LOBYTE(v79) = v22 & 1;
    v48 = sub_24A4AB870();
    v50 = sub_24A37BD58(v48, v49, &aBlock);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = v66;
    *(v46 + 14) = sub_24A37BD58(v66, v65, &aBlock);
    _os_log_impl(&dword_24A376000, v44, v45, "👀 FMFSecureLocCtrl: calling SPSecureLocMgr.unsubscribe %s for %s", v46, 0x16u);
    swift_arrayDestroy();
    v52 = v47;
    v28 = v72;
    MEMORY[0x24C219130](v52, -1, -1);
    MEMORY[0x24C219130](v46, -1, -1);

    v53 = v68;
  }

  else
  {

    v9 = v22 & 1;
    v53 = v68;
    v51 = v66;
  }

  v54 = *(v53 + 24);
  v55 = sub_24A4ABA50();

  v56 = swift_allocObject();
  *(v56 + 16) = v9;
  *(v56 + 24) = v51;
  *(v56 + 32) = v65;
  v77 = sub_24A474D18;
  v78 = v56;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_24A3D65E0;
  v76 = &unk_285D8AE68;
  v7 = _Block_copy(&aBlock);

  [v54 unsubscribeForIds:v55 context:v28 completion:v7];
  _Block_release(v7);

  sub_24A46EF5C(v9);
  v57 = 1 << *(v10 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v8 = v58 & *(v10 + 56);
  v59 = (v57 + 63) >> 6;

  v60 = 0;
  if (v8)
  {
    while (1)
    {
      v61 = v60;
LABEL_33:
      v62 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v63 = (*(v10 + 48) + ((v61 << 10) | (16 * v62)));
      v7 = *v63;
      v64 = v63[1];

      sub_24A471148(v7, v64, v9);

      if (!v8)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v61 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_37;
    }

    if (v61 >= v59)
    {
      break;
    }

    v8 = *(v18 + 8 * v61);
    ++v60;
    if (v8)
    {
      v60 = v61;
      goto LABEL_33;
    }
  }

  sub_24A46FFA8(v9);
}

void sub_24A46DA54(NSObject *a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);
    v9 = a1;

    v10 = sub_24A4AB600();
    v11 = sub_24A4ABCE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315650;
      v14 = sub_24A4AB870();
      v16 = sub_24A37BD58(v14, v15, &v29);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_24A37BD58(a3, a4, &v29);
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v17 = sub_24A4AC310();
      v19 = sub_24A37BD58(v17, v18, &v29);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_24A376000, v10, v11, "👀 FMFSecureLocCtrl: failed SPSecureLocMgr.unsubscribe %s for %s: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v13, -1, -1);
      MEMORY[0x24C219130](v12, -1, -1);

      return;
    }

    v27 = a1;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A4AB630();
    sub_24A378E18(v20, qword_27EF4E260);

    oslog = sub_24A4AB600();
    v21 = sub_24A4ABCE0();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315394;
      v24 = sub_24A4AB870();
      v26 = sub_24A37BD58(v24, v25, &v29);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24A37BD58(a3, a4, &v29);
      _os_log_impl(&dword_24A376000, oslog, v21, "👀 FMFSecureLocCtrl: succeeded SPSecureLocMgr.unsubscribe %s for %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v23, -1, -1);
      MEMORY[0x24C219130](v22, -1, -1);

      return;
    }

    v27 = oslog;
  }
}

void sub_24A46DE28(char a1, double a2)
{
  v3 = v2;
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v63 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24A4AB6E0();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    goto LABEL_5;
  }

  v11 = *(v3 + 32);

  v12 = *(v11 + 16);
  if (v12)
  {
    while (1)
    {
      v13 = sub_24A3A11D8(v12, 0);
      v14 = sub_24A3A1268(&aBlock, v13 + 4, v12, v11);
      sub_24A3A13C0(aBlock);
      if (v14 == v12)
      {
        break;
      }

      __break(1u);
LABEL_5:

      sub_24A462638(v15);
      v11 = sub_24A3999E0(v16);

      v12 = *(v11 + 16);
      if (!v12)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v13 = MEMORY[0x277D84F90];
  }

  v17 = a1 & 1;
  v18 = sub_24A464FFC(v13);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v19 = aBlock;
  aBlock = 91;
  v69 = 0xE100000000000000;
  LOBYTE(v67) = 1;

  sub_24A474894(v18, v19, &aBlock, &v67);
  swift_bridgeObjectRelease_n();
  v74 = aBlock;
  v75 = v69;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v20 = v75;
  v65 = v74;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  v22 = sub_24A378E18(v21, qword_27EF4E260);

  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  v25 = os_log_type_enabled(v23, v24);
  v66 = v17;
  if (!v25)
  {

    if (a2 <= 0.0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v60[1] = v22;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  aBlock = v27;
  *v26 = 134218498;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  *(v26 + 4) = a2;
  *(v26 + 12) = 2080;
  LOBYTE(v74) = v17;
  v61 = v20;
  v28 = v27;
  v29 = sub_24A4AB870();
  v31 = v3;
  v32 = v6;
  v33 = sub_24A37BD58(v29, v30, &aBlock);

  *(v26 + 14) = v33;
  v6 = v32;
  v3 = v31;
  *(v26 + 22) = 2080;
  *(v26 + 24) = sub_24A37BD58(v65, v61, &aBlock);
  _os_log_impl(&dword_24A376000, v23, v24, "👀 FMFSecureLocCtrl: setting up %ld-sec %s re-subscription timer for %s)", v26, 0x20u);
  swift_arrayDestroy();
  v34 = v28;
  v20 = v61;
  MEMORY[0x24C219130](v34, -1, -1);
  MEMORY[0x24C219130](v26, -1, -1);

  if (a2 <= 0.0)
  {
LABEL_14:

    v35 = sub_24A4AB600();
    v36 = sub_24A4ABCE0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315394;
      LOBYTE(v74) = v66;
      v39 = sub_24A4AB870();
      v41 = sub_24A37BD58(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = sub_24A37BD58(v65, v20, &aBlock);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_24A376000, v35, v36, "👀 FMFSecureLocCtrl: discarding (interval too short) %s re-subscription timer for %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v38, -1, -1);
      MEMORY[0x24C219130](v37, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_17:

  swift_beginAccess();
  v43 = *(v3 + 152);
  v44 = v66;
  if (*(v43 + 16))
  {
    v45 = sub_24A43014C(v66);
    if (v46)
    {
      [*(*(v43 + 56) + 8 * v45) invalidate];
    }
  }

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = v44;
  v72 = sub_24A474D00;
  v73 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_24A46EEF4;
  v71 = &unk_285D8AD78;
  v49 = _Block_copy(&aBlock);
  v50 = objc_opt_self();

  v51 = [v50 timerWithTimeInterval:0 repeats:v49 block:a2];
  _Block_release(v49);

  swift_beginAccess();
  v52 = v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v3 + 152);
  *(v3 + 152) = 0x8000000000000000;
  sub_24A430F00(v52, v44, isUniquelyReferenced_nonNull_native);
  *(v3 + 152) = v67;
  swift_endAccess();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v54 = sub_24A4ABD60();
  v55 = swift_allocObject();
  *(v55 + 16) = v52;
  v72 = sub_24A4752AC;
  v73 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_24A388564;
  v71 = &unk_285D8ADC8;
  v56 = _Block_copy(&aBlock);
  v57 = v52;

  sub_24A4AB6B0();
  aBlock = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v58 = v10;
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v59 = v63;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v58, v59, v56);
  _Block_release(v56);

  (*(v7 + 8))(v59, v6);
  (*(v62 + 8))(v58, v64);
}

uint64_t sub_24A46E760(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = v5;
    v13 = *(result + 136);
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = a3 & 1;
    *(v15 + 24) = v14;
    v19[1] = v14;
    aBlock[4] = sub_24A474D0C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AE18;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    v20 = v8;
    v18 = v17;

    sub_24A4AB6B0();
    v22 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v11, v7, v16);
    _Block_release(v16);

    (*(v21 + 8))(v7, v4);
    (*(v9 + 8))(v11, v20);
  }

  return result;
}

uint64_t sub_24A46EA74(char a1, void *a2)
{
  v2 = a2;
  if (a1)
  {

    sub_24A462638(v4);
    v3 = sub_24A3999E0(v5);
  }

  else
  {
    v3 = a2[4];
  }

  v6 = *(v3 + 16);
  v35 = v3;
  if (v6)
  {
    v7 = sub_24A3A11D8(v6, 0);
    v8 = sub_24A3A1268(&v40, v7 + 4, v6, v3);
    v9 = v40;

    result = sub_24A3A13C0(v9);
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v11 = a1 & 1;
  v12 = sub_24A464FFC(v7);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v13 = v40;
  v40 = 91;
  v41 = 0xE100000000000000;
  v39 = 1;

  sub_24A474894(v12, v13, &v40, &v39);
  swift_bridgeObjectRelease_n();
  v37 = v40;
  v38 = v41;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A4AB630();
  sub_24A378E18(v14, qword_27EF4E260);

  v15 = sub_24A4AB600();
  v16 = sub_24A4ABCE0();

  if (os_log_type_enabled(v15, v16))
  {
    v34 = v2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315394;
    v19 = sub_24A4AB870();
    v21 = sub_24A37BD58(v19, v20, &v40);

    *(v17 + 4) = v21;
    v11 = a1 & 1;
    *(v17 + 12) = 2080;
    v22 = sub_24A37BD58(v37, v38, &v40);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_24A376000, v15, v16, "👀 FMFSecureLocCtrl: 🔥 firing up %s re-subscription timer for %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v18, -1, -1);
    v23 = v17;
    v2 = v34;
    MEMORY[0x24C219130](v23, -1, -1);
  }

  else
  {
  }

  v24 = *(v35 + 16);
  if (!v24)
  {

    if (a1)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v25 = sub_24A3A11D8(*(v35 + 16), 0);
  v26 = sub_24A3A1268(&v40, v25 + 4, v24, v35);
  result = sub_24A3A13C0(v40);
  if (v26 == v24)
  {
    sub_24A465E4C(v25, v11);

    if (a1)
    {
LABEL_16:

      sub_24A462638(v27);
      v29 = sub_24A3999E0(v28);

      v30 = v2[8];
      v31 = v2[9];

      v32 = v29;
      v33 = 1;
LABEL_19:
      sub_24A46C194(v32, v33, 2975090, 0xE300000000000000, v30, v31);
    }

LABEL_18:
    v30 = v2[5];
    v31 = v2[6];

    v33 = 0;
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_24A46EEF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24A46EF5C(char a1)
{
  v2 = v1;
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
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    v9 = sub_24A4AB870();
    v11 = sub_24A37BD58(v9, v10, v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A376000, v5, v6, "👀 FMFSecureLocCtrl: cancelling %s re-subscription timer for all", v7, 0xCu);
    sub_24A37EEE0(v8);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  swift_beginAccess();
  v12 = *(v2 + 152);
  if (*(v12 + 16))
  {
    v13 = sub_24A43014C(a1 & 1);
    if (v14)
    {
      [*(*(v12 + 56) + 8 * v13) invalidate];
    }
  }

  swift_beginAccess();
  sub_24A4A3A1C(0, a1 & 1);
  return swift_endAccess();
}

void sub_24A46F128(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A464FFC(a1);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v14 = aBlock;
  aBlock = 91;
  v57 = 0xE100000000000000;
  v64[0] = 1;

  sub_24A474894(v13, v14, &aBlock, v64);
  swift_bridgeObjectRelease_n();
  v62 = aBlock;
  v63 = v57;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  v15 = v63;
  v55 = v62;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  v17 = sub_24A378E18(v16, qword_27EF4E260);

  v51 = v17;
  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();

  if (os_log_type_enabled(v18, v19))
  {
    v49 = a1;
    v50 = v10;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 134218498;
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        *(v20 + 4) = a3;
        *(v20 + 12) = 2080;
        LOBYTE(v62) = a2 & 1;
        v48 = v21;
        v22 = sub_24A4AB870();
        v24 = v4;
        v25 = sub_24A37BD58(v22, v23, &aBlock);

        *(v20 + 14) = v25;
        v4 = v24;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_24A37BD58(v55, v15, &aBlock);
        _os_log_impl(&dword_24A376000, v18, v19, "👀 FMFSecureLocCtrl: setting up %ld-sec no-result-when-subscribing %s->legacy fallback timer for %s", v20, 0x20u);
        v26 = v48;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v26, -1, -1);
        MEMORY[0x24C219130](v20, -1, -1);

        a1 = v49;
        v10 = v50;
        goto LABEL_9;
      }

LABEL_17:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  [*(v4 + 120) invalidate];
  if (a3 <= 0.0)
  {

    v39 = sub_24A4AB600();
    v40 = sub_24A4ABCE0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315394;
      LOBYTE(v62) = a2 & 1;
      v43 = sub_24A4AB870();
      v45 = sub_24A37BD58(v43, v44, &aBlock);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = sub_24A37BD58(v55, v15, &aBlock);

      *(v41 + 14) = v46;
      _os_log_impl(&dword_24A376000, v39, v40, "👀 FMFSecureLocCtrl: discarding (interval too short) no-result-when-subscribing %s->legacy fallback timer for %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v42, -1, -1);
      MEMORY[0x24C219130](v41, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2 & 1;
    *(v28 + 40) = v55;
    *(v28 + 48) = v15;
    v60 = sub_24A474CD8;
    v61 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_24A46EEF4;
    v59 = &unk_285D8AC88;
    v29 = _Block_copy(&aBlock);
    v30 = objc_opt_self();

    v31 = [v30 timerWithTimeInterval:0 repeats:v29 block:a3];
    _Block_release(v29);

    v32 = *(v4 + 120);
    *(v4 + 120) = v31;
    v33 = v31;

    sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
    v34 = sub_24A4ABD60();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    v60 = sub_24A4752AC;
    v61 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_24A388564;
    v59 = &unk_285D8ACD8;
    v36 = _Block_copy(&aBlock);
    v37 = v33;

    sub_24A4AB6B0();
    aBlock = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v38 = v54;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v12, v38, v36);
    _Block_release(v36);

    (*(v52 + 8))(v38, v8);
    (*(v53 + 8))(v12, v10);
  }
}

uint64_t sub_24A46F94C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB6E0();
  v26 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v11;
    v18 = *(result + 136);
    v19 = result;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a3;
    *(v20 + 32) = a4 & 1;
    *(v20 + 40) = a5;
    *(v20 + 48) = a6;
    aBlock[4] = sub_24A474CE8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AD28;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    sub_24A4AB6B0();
    v27 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v24 = v14;
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v16, v13, v21);
    _Block_release(v21);

    (*(v25 + 8))(v13, v10);
    (*(v26 + 8))(v16, v24);
  }

  return result;
}

uint64_t sub_24A46FC7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{

  v9 = sub_24A4495F8(a2);

  v11 = sub_24A464FFC(v10);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v12 = v27;
  v27 = 91;
  v28 = 0xE100000000000000;
  v26 = 1;

  sub_24A474894(v11, v12, &v27, &v26);
  swift_bridgeObjectRelease_n();
  v24 = v27;
  v25 = v28;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A4AB630();
  sub_24A378E18(v13, qword_27EF4E260);

  v14 = sub_24A4AB600();
  v15 = sub_24A4ABCE0();

  v23 = a3;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315650;
    v18 = sub_24A4AB870();
    v20 = sub_24A37BD58(v18, v19, &v27);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_24A37BD58(v24, v25, &v27);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_24A37BD58(a4, a5, &v27);
    _os_log_impl(&dword_24A376000, v14, v15, "👀 FMFSecureLocCtrl: 🔥 firing up no-result-when-subscribing (spd crash?) %s->legacy fallback timer for %s from %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v17, -1, -1);
    MEMORY[0x24C219130](v16, -1, -1);
  }

  else
  {
  }

  if (v9[2])
  {
    sub_24A4657D4(v9, v23 & 1);
  }
}

void sub_24A46FFA8(char a1)
{
  v2 = v1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_24A4AB870();
    v10 = sub_24A37BD58(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24A376000, v4, v5, "👀 FMFSecureLocCtrl: cancelling no-result-when-subscribing %s->legacy fallback timer for all", v6, 0xCu);
    sub_24A37EEE0(v7);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  [*(v2 + 120) invalidate];
  v11 = *(v2 + 120);
  *(v2 + 120) = 0;
}

void sub_24A470124(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v5 = v4;
  v64 = a3;
  v9 = sub_24A4AB690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24A4AB6E0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  v62 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v63 = a2;

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v15 = aBlock;
  aBlock = 91;
  v67 = 0xE100000000000000;
  LOBYTE(v65) = 1;

  sub_24A474894(inited, v15, &aBlock, &v65);
  swift_bridgeObjectRelease_n();
  v72 = aBlock;
  v73 = v67;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  v17 = v72;
  v16 = v73;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A4AB630();
  v19 = sub_24A378E18(v18, qword_27EF4E260);

  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();

  if (!os_log_type_enabled(v20, v21))
  {

    if (a4 <= 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v56[1] = v19;
  v57 = v5;
  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  aBlock = v23;
  *v22 = 134218498;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  *(v22 + 4) = a4;
  *(v22 + 12) = 2080;
  LOBYTE(v72) = v64 & 1;
  v58 = v16;
  v24 = v23;
  v25 = sub_24A4AB870();
  v27 = v17;
  v28 = sub_24A37BD58(v25, v26, &aBlock);

  *(v22 + 14) = v28;
  v17 = v27;
  *(v22 + 22) = 2080;
  *(v22 + 24) = sub_24A37BD58(v27, v58, &aBlock);
  _os_log_impl(&dword_24A376000, v20, v21, "👀 FMFSecureLocCtrl: setting up %ld-sec no-location %s->legacy fallback timer for %s", v22, 0x20u);
  swift_arrayDestroy();
  v29 = v24;
  v16 = v58;
  MEMORY[0x24C219130](v29, -1, -1);
  MEMORY[0x24C219130](v22, -1, -1);

  v5 = v57;
  if (a4 <= 0.0)
  {
LABEL_8:

    v30 = sub_24A4AB600();
    v31 = sub_24A4ABCE0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136315394;
      LOBYTE(v72) = v64 & 1;
      v34 = sub_24A4AB870();
      v36 = sub_24A37BD58(v34, v35, &aBlock);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = sub_24A37BD58(v17, v16, &aBlock);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_24A376000, v30, v31, "👀 FMFSecureLocCtrl: discarding (interval too short) no-location %s->legacy fallback timer for %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v33, -1, -1);
      MEMORY[0x24C219130](v32, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_11:

  swift_beginAccess();
  v38 = *(v5 + 104);
  if (*(v38 + 16))
  {

    v39 = sub_24A39B2C8(v62, v63);
    if (v40)
    {
      v41 = *(*(v38 + 56) + 8 * v39);

      [v41 invalidate];
    }

    else
    {
    }
  }

  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v44 = v62;
  *(v43 + 16) = v42;
  *(v43 + 24) = v44;
  v45 = v63;
  *(v43 + 32) = v63;
  *(v43 + 40) = v64 & 1;
  v70 = sub_24A474CB8;
  v71 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_24A46EEF4;
  v69 = &unk_285D8AB98;
  v46 = _Block_copy(&aBlock);
  v47 = objc_opt_self();

  v48 = [v47 timerWithTimeInterval:0 repeats:v46 block:a4];
  _Block_release(v46);

  swift_beginAccess();

  v49 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v5 + 104);
  *(v5 + 104) = 0x8000000000000000;
  sub_24A430D58(v49, v44, v45, isUniquelyReferenced_nonNull_native);

  *(v5 + 104) = v65;
  swift_endAccess();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v51 = sub_24A4ABD60();
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  v70 = sub_24A4752AC;
  v71 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_24A388564;
  v69 = &unk_285D8ABE8;
  v53 = _Block_copy(&aBlock);
  v54 = v49;

  sub_24A4AB6B0();
  aBlock = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v55 = v60;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v55, v53);
  _Block_release(v53);

  (*(v10 + 8))(v55, v9);
  (*(v59 + 8))(v13, v61);
}

uint64_t sub_24A470AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AB6E0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v9;
    v17 = *(result + 136);
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a3;
    v24 = v18;
    *(v19 + 32) = a4;
    *(v19 + 40) = a5 & 1;
    aBlock[4] = sub_24A474CC8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AC38;
    v20 = _Block_copy(aBlock);
    v21 = v17;

    sub_24A4AB6B0();
    v26 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v23 = v12;
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v15, v11, v20);
    _Block_release(v20);

    (*(v25 + 8))(v11, v8);
    (*(v13 + 8))(v15, v23);
  }

  return result;
}

uint64_t sub_24A470DDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v8 = sub_24A4495F8(inited);

  swift_setDeallocating();
  swift_arrayDestroy();

  v10 = sub_24A464FFC(v9);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v11 = v27;
  v27 = 91;
  v28 = 0xE100000000000000;
  v26 = 1;

  sub_24A474894(v10, v11, &v27, &v26);
  swift_bridgeObjectRelease_n();
  v24 = v27;
  v25 = v28;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  sub_24A378E18(v12, qword_27EF4E260);

  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315394;
    v17 = a4;
    v18 = sub_24A4AB870();
    v20 = sub_24A37BD58(v18, v19, &v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_24A37BD58(v24, v25, &v27);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_24A376000, v13, v14, "👀 FMFSecureLocCtrl: 🔥 firing up no-location %s->legacy fallback timer for %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v16, -1, -1);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  else
  {
    v17 = a4;
  }

  if (v8[2])
  {

    sub_24A4657D4(v22, v17 & 1);

    sub_24A465114(v8, v17 & 1);
  }
}

uint64_t sub_24A471148(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v8 = v28;
  v28 = 91;
  v29 = 0xE100000000000000;
  v30[0] = 1;

  sub_24A474894(inited, v8, &v28, v30);
  swift_bridgeObjectRelease_n();
  v26 = v28;
  v27 = v29;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);

  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = a2;
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v14 = sub_24A4AB870();
    v16 = a1;
    v17 = sub_24A37BD58(v14, v15, &v28);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = sub_24A37BD58(v26, v27, &v28);

    *(v12 + 14) = v18;
    a1 = v16;
    _os_log_impl(&dword_24A376000, v10, v11, "👀 FMFSecureLocCtrl: cancelling no-location %s->legacy fallback timer for %s", v12, 0x16u);
    swift_arrayDestroy();
    v19 = v13;
    a2 = v25;
    MEMORY[0x24C219130](v19, -1, -1);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v20 = *(v4 + 104);
  if (*(v20 + 16))
  {

    v21 = sub_24A39B2C8(a1, a2);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      [v23 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_24A4A38DC(0, a1, a2);
  return swift_endAccess();
}

void sub_24A4714E4(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v6 = v5;
  v64 = a4;
  v58 = a3;
  v55 = sub_24A4AB690();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24A4AB6E0();
  v60 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B4E10;
  v62 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v63 = a2;
  swift_bridgeObjectRetain_n();

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v13 = aBlock;
  aBlock = 91;
  v67 = 0xE100000000000000;
  LOBYTE(v65) = 1;

  sub_24A474894(inited, v13, &aBlock, &v65);
  swift_bridgeObjectRelease_n();
  v72 = aBlock;
  v73 = v67;

  MEMORY[0x24C217D50](93, 0xE100000000000000);

  swift_setDeallocating();
  sub_24A37EF2C(inited + 32, &unk_27EF3F4C0, &qword_24A4B7E60);

  v15 = v72;
  v14 = v73;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);

  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();

  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_8;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  aBlock = v20;
  *v19 = 134218498;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = v20;
  *(v19 + 4) = a5;
  *(v19 + 12) = 2080;
  LOBYTE(v72) = v64 & 1;
  v22 = sub_24A4AB870();
  v24 = v15;
  v25 = sub_24A37BD58(v22, v23, &aBlock);

  *(v19 + 14) = v25;
  v15 = v24;
  *(v19 + 22) = 2080;
  *(v19 + 24) = sub_24A37BD58(v24, v14, &aBlock);
  _os_log_impl(&dword_24A376000, v17, v18, "👀 FMFSecureLocCtrl: setting up %ld-sec %s pause timer for %s", v19, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C219130](v21, -1, -1);
  MEMORY[0x24C219130](v19, -1, -1);
LABEL_8:

  v26 = v63;
  if (a5 <= 0.0)
  {

    v31 = sub_24A4AB600();
    v32 = sub_24A4ABCE0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v33 = 136315394;
      LOBYTE(v72) = v64 & 1;
      v35 = sub_24A4AB870();
      v37 = sub_24A37BD58(v35, v36, &aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = sub_24A37BD58(v15, v14, &aBlock);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_24A376000, v31, v32, "👀 FMFSecureLocCtrl: discarding (interval too short) %s pause timer for %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v34, -1, -1);
      MEMORY[0x24C219130](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v27 = *(v6 + 96);
    if (*(v27 + 16))
    {

      v28 = sub_24A39B2C8(v62, v26);
      if (v29)
      {
        v30 = *(*(v27 + 56) + 8 * v28);

        [v30 invalidate];
      }

      else
      {
      }
    }

    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v64 & 1;
    *(v40 + 24) = v15;
    *(v40 + 32) = v14;
    v41 = v62;
    *(v40 + 40) = v39;
    *(v40 + 48) = v41;
    *(v40 + 56) = v26;
    v42 = v58;
    *(v40 + 64) = v58 & 1;
    *(v40 + 65) = BYTE1(v42) & 1;
    *(v40 + 66) = BYTE2(v42) & 1;
    v70 = sub_24A474940;
    v71 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_24A46EEF4;
    v69 = &unk_285D8AA58;
    v43 = _Block_copy(&aBlock);
    v44 = objc_opt_self();

    v45 = [v44 timerWithTimeInterval:0 repeats:v43 block:a5];
    _Block_release(v43);

    swift_beginAccess();
    v46 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v6 + 96);
    *(v6 + 96) = 0x8000000000000000;
    sub_24A430D58(v46, v41, v26, isUniquelyReferenced_nonNull_native);

    *(v6 + 96) = v65;
    swift_endAccess();
    sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
    v48 = sub_24A4ABD60();
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    v70 = sub_24A474980;
    v71 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_24A388564;
    v69 = &unk_285D8AAA8;
    v50 = _Block_copy(&aBlock);
    v51 = v46;

    v52 = v56;
    sub_24A4AB6B0();
    aBlock = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v53 = v61;
    v54 = v55;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v52, v53, v50);
    _Block_release(v50);

    (*(v59 + 8))(v53, v54);
    (*(v60 + 8))(v52, v57);
  }
}

uint64_t sub_24A471E80(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v44 = a7;
  v42 = a6;
  v12 = sub_24A4AB690();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24A4AB6E0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);

  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();

  v20 = os_log_type_enabled(v18, v19);
  v43 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v40 = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v13;
    v39 = v12;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315394;
    v50 = a2 & 1;
    v25 = sub_24A4AB870();
    v27 = a3;
    v28 = sub_24A37BD58(v25, v26, aBlock);

    *(v22 + 4) = v28;
    a3 = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_24A37BD58(v27, a4, aBlock);
    _os_log_impl(&dword_24A376000, v18, v19, "👀 FMFSecureLocCtrl: 🔥 firing up %s pause timer for %s", v22, 0x16u);
    swift_arrayDestroy();
    v29 = v24;
    v12 = v39;
    v13 = v41;
    MEMORY[0x24C219130](v29, -1, -1);
    v30 = v22;
    a8 = v40;
    MEMORY[0x24C219130](v30, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = *(result + 136);
    v33 = result;
    v34 = swift_allocObject();
    v35 = v42;
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    *(v34 + 32) = v44;
    *(v34 + 40) = a8 & 1;
    *(v34 + 41) = BYTE1(a8) & 1;
    *(v34 + 42) = BYTE2(a8) & 1;
    *(v34 + 43) = v43 & 1;
    *(v34 + 48) = a3;
    *(v34 + 56) = a4;
    aBlock[4] = sub_24A47499C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8AAF8;
    v36 = _Block_copy(aBlock);

    v37 = v32;

    sub_24A4AB6B0();
    v48 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v38 = v46;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v16, v38, v36);
    _Block_release(v36);

    (*(v13 + 8))(v38, v12);
    (*(v45 + 8))(v16, v47);
  }

  return result;
}

uint64_t sub_24A472358(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v59 = a6;
  v58 = a5;
  v61 = a4;
  v10 = sub_24A4AB690();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_24A4AB6E0();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v62 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 7);
  v17 = *(v14 + 56);
  v16 = v14 + 56;
  v15 = v17;
  v18 = 1 << *(*(a1 + 7) + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v74 = *(a1 + 7);

  v22 = 0;
  v23 = 0;
  v72 = a2;
  v73 = a1;
  while (1)
  {
    v24 = v22;
    if (!v20)
    {
      break;
    }

    ++v22;
    if (__OFADD__(v24, 1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_26;
    }

LABEL_6:
    v76 = v24;
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = (*(v74 + 48) + 24 * (v25 | (v23 << 6)));
    v27 = *v26 == a2 && v26[1] == a3;
    if (v27 || (sub_24A4AC270() & 1) != 0)
    {
      v75 = v22;
      a2 = *(a1 + 7);
      v28 = *(a2 + 16);
      if (v28)
      {
        sub_24A3C9CEC(&qword_27EF3F558, &unk_24A4B5790);
        v29 = swift_allocObject();
        v30 = j__malloc_size(v29);
        v29[2] = v28;
        v29[3] = 2 * ((v30 - 32) / 24);
        v31 = sub_24A40C270(&aBlock, (v29 + 4), v28, a2);
        v32 = aBlock;
        v70 = v79;
        v71 = v31;
        a1 = v80;
        v68 = v82;
        v69 = v81;

        sub_24A3A13C0(v32);
        if (v71 != v28)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a2 = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_24A473E50(v29);
      }

      a1 = v73;
      if (v76 >= v29[2])
      {
        goto LABEL_31;
      }

      v35 = &v29[3 * v76];
      v35[4] = a2;
      v35[5] = a3;
      *(v35 + 24) = 256;
      *(v35 + 50) = 0;

      v36 = sub_24A489F6C(v29);

      *(a1 + 7) = v36;

      v22 = v75;
    }
  }

  while (1)
  {
    v33 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v33 >= v21)
    {
      break;
    }

    v20 = *(v16 + 8 * v33);
    ++v23;
    if (v20)
    {
      v23 = v33;
      ++v22;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_30;
      }

      goto LABEL_6;
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_33;
  }

LABEL_26:
  v37 = sub_24A4AB630();
  sub_24A378E18(v37, qword_27EF4E260);
  v38 = v60;

  v39 = sub_24A4AB600();
  v40 = sub_24A4ABCE0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = a2;
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v41 = 136315394;
    LOBYTE(v77) = v58 & 1;
    v44 = sub_24A4AB870();
    v46 = sub_24A37BD58(v44, v45, &aBlock);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_24A37BD58(v59, v38, &aBlock);
    _os_log_impl(&dword_24A376000, v39, v40, "👀 FMFSecureLocCtrl: telling FMFManager pausing for %s for %s", v41, 0x16u);
    swift_arrayDestroy();
    v47 = v43;
    a2 = v42;
    MEMORY[0x24C219130](v47, -1, -1);
    MEMORY[0x24C219130](v41, -1, -1);
  }

  v48 = *(a1 + 18);
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  *(v49 + 24) = a2;
  *(v49 + 32) = a3;
  v50 = v61;
  *(v49 + 40) = v61 & 1;
  *(v49 + 41) = BYTE1(v50) & 1;
  *(v49 + 42) = BYTE2(v50) & 1;
  v82 = sub_24A474CA0;
  v83 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v79 = 1107296256;
  v80 = sub_24A388564;
  v81 = &unk_285D8AB48;
  v51 = _Block_copy(&aBlock);

  v52 = v48;

  v53 = v62;
  sub_24A4AB6B0();
  v77 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v54 = v65;
  v55 = v67;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v53, v54, v51);
  _Block_release(v51);

  (*(v66 + 8))(v54, v55);
  (*(v63 + 8))(v53, v64);
}

uint64_t sub_24A472A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    sub_24A440BE4(inited);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    return sub_24A406964(inited + 32);
  }

  return result;
}

void sub_24A472AD8(uint64_t a1)
{
  v2 = [objc_opt_self() currentRunLoop];
  [v2 addTimer:a1 forMode:*MEMORY[0x277CBE738]];
}

id *sub_24A472B54()
{

  sub_24A3C8470((v0 + 21));
  sub_24A3C8470((v0 + 23));

  return v0;
}

uint64_t sub_24A472C04()
{
  sub_24A472B54();

  return swift_deallocClassInstance();
}

__n128 sub_24A472C6C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_24A472C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_24A472CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A472D20()
{
  result = qword_27EF40BC0;
  if (!qword_27EF40BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BC0);
  }

  return result;
}

unint64_t sub_24A472D78()
{
  result = qword_27EF40BC8;
  if (!qword_27EF40BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BC8);
  }

  return result;
}

void sub_24A472DCC(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_24A473468(v12, v13);

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
        return;
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
}

uint64_t sub_24A472EF8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_24A4AC360();

    sub_24A4AB8F0();
    v23 = sub_24A4AC3A0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_24A4737DC(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_24A4AC360();

            sub_24A4AB8F0();
            v41 = sub_24A4AC3A0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_24A4AC270() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_24A4735A4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x24C219130](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_24A3A13C0(v13);
    return v5;
  }

  result = MEMORY[0x24C219130](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24A473468(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24A4AC360();
  sub_24A4AB8F0();
  v6 = sub_24A4AC3A0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24A487BF4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_24A473A00(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_24A4735A4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_24A4737DC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_24A4AC360();

        sub_24A4AB8F0();
        v19 = sub_24A4AC3A0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_24A4AC270() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_24A4737DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  result = sub_24A4ABF10();
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
    sub_24A4AC360();

    sub_24A4AB8F0();
    result = sub_24A4AC3A0();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}