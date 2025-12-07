uint64_t sub_22D879384(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  v7 = a1 >> 32;
  switch(v3)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_6:
      if (v8 == v9)
      {
        v6 = 0;
        v4 = 1;
        return v6 | (v4 << 8);
      }

      if (v3 == 2)
      {
        v7 = *(a1 + 24);
      }

      goto LABEL_10;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        v6 = 0;
        return v6 | (v4 << 8);
      }

      v7 = BYTE6(a2);
LABEL_10:
      result = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        v6 = sub_22D8B079C();
        v4 = 0;
        return v6 | (v4 << 8);
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_22D879444(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_22D87949C()
{
  result = qword_27DA0D7D8;
  if (!qword_27DA0D7D8)
  {
    sub_22D8B0A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0D7D8);
  }

  return result;
}

uint64_t sub_22D879554()
{

  return sub_22D8B07DC();
}

uint64_t sub_22D879578()
{

  return sub_22D8B19CC();
}

uint64_t sub_22D8795C4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 1684099177;
      break;
    case 2:
      result = 0x656E6F685069;
      break;
    case 3:
      result = 0x746B73654463616DLL;
      break;
    case 4:
      result = 0x6174726F5063616DLL;
      break;
    case 5:
      result = 30324;
      break;
    case 6:
      result = 0x6863746177;
      break;
    case 7:
      result = 0x646F50656D6F68;
      break;
    case 8:
      result = 0x6E6F69736976;
      break;
    default:
      return result;
  }

  return result;
}

char *sub_22D8796A8()
{
  result = [objc_opt_self() platform];
  if ((result - 1) < 8)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  byte_281459268 = v1;
  return result;
}

id sub_22D87970C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22D8B19CC();

  v4 = [v2 initWithMachServiceName_];

  return v4;
}

uint64_t sub_22D8797EC(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_22D87984C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_22D8798F4@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_22D879950(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t static ModelCatalogDaemon.start(using:)(NSObject *a1)
{
  v54[5] = *MEMORY[0x277D85DE8];
  v2 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  MEMORY[0x28223BE20](v2 - 8);
  v48[0] = v48 - v3;
  sub_22D84E308();
  sub_22D8B1C9C();
  sub_22D84D7DC();
  v52 = v5;
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22D84CFA4();
  v51 = v7 - v6;
  sub_22D84E308();
  v49 = sub_22D8B1C8C();
  MEMORY[0x28223BE20](v49);
  sub_22D84CFA4();
  v50 = v9 - v8;
  sub_22D84E308();
  v10 = sub_22D8B18FC();
  MEMORY[0x28223BE20](v10 - 8);
  sub_22D84CFA4();
  v48[1] = v12 - v11;
  sub_22D84E308();
  v13 = sub_22D8B073C();
  sub_22D84D7DC();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22D84CFA4();
  v19 = v18 - v17;
  v20 = [objc_opt_self() defaultManager];
  sub_22D8B12CC();
  v21 = sub_22D8B06CC();
  v22 = *(v15 + 8);
  v22(v19, v13);
  v54[0] = 0;
  v23 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v54];

  v24 = v54[0];
  if (v23 && (v25 = v54[0], sub_22D8B12DC(), v26 = sub_22D8B06CC(), v22(v19, v13), v54[0] = 0, v27 = [v20 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v54], v26, v24 = v54[0], v27))
  {
    v28 = v54[0];
  }

  else
  {
    v29 = v24;
    v30 = sub_22D8B069C();

    swift_willThrow();
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60(&qword_2814589E0);
    }

    v31 = sub_22D8B178C();
    sub_22D84C6FC(v31, qword_281459298);
    v32 = v30;
    v33 = sub_22D8B176C();
    v34 = sub_22D8B1C4C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v30;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_22D84A000, v33, v34, "Failed to create required directories: %@", v35, 0xCu);
      sub_22D858120(v36, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
    }
  }

  sub_22D8B0CAC();
  v54[3] = &type metadata for AssetManager.CoherenceTokenProvider;
  v54[4] = sub_22D87A0EC();
  sub_22D8B0C9C();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v39 = sub_22D8B178C();
  sub_22D84C6FC(v39, qword_281459298);
  v40 = sub_22D8B176C();
  v41 = sub_22D8B1C6C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22D84A000, v40, v41, "starting XPC services", v42, 2u);
    sub_22D84C3D8();
  }

  sub_22D87A140(a1);
  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  sub_22D85BDA8();
  type metadata accessor for SubscriptionEvaluationXPCServiceServer();
  sub_22D87C474(&qword_281458A88, type metadata accessor for SubscriptionEvaluationXPCServiceServer);
  sub_22D84D794();
  sub_22D8B136C();
  sub_22D85AFB0(0, &qword_2814588C0, 0x277D85C78);
  sub_22D8B18EC();
  v54[0] = MEMORY[0x277D84F90];
  sub_22D87C474(&unk_2814588C8, MEMORY[0x277D85230]);
  sub_22D8580D8(&qword_27DA0D6E0, &qword_22D8B3890);
  sub_22D87C430(&qword_281458910, &qword_27DA0D6E0, &qword_22D8B3890);
  sub_22D8B1DAC();
  (*(v52 + 104))(v51, *MEMORY[0x277D85260], v53);
  v43 = sub_22D8B1CBC();
  sub_22D868528(v43, a1);
  v44 = sub_22D8B1B9C();
  v45 = v48[0];
  sub_22D84C4F8(v48[0], 1, 1, v44);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  sub_22D87AD28(0, 0, v45, &unk_22D8B4048, v46);

  return sub_22D858120(v45, &qword_27DA0D628, "l\x1B");
}

unint64_t sub_22D87A0EC()
{
  result = qword_281459008;
  if (!qword_281459008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281459008);
  }

  return result;
}

void sub_22D87A140(uint64_t a1)
{
  v2 = sub_22D8B178C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D85AFB0(0, &unk_2814588E0, 0x277CCAE98);
  sub_22D8B0A2C();
  v6 = sub_22D8B0A8C();
  v8 = sub_22D87970C(v6, v7);
  v9 = qword_281459490;
  qword_281459490 = v8;
  v15 = v8;

  if (v15)
  {
    qword_281459498 = [objc_allocWithZone(sub_22D8580D8(&qword_27DA0D9C8 &qword_22D8B4108))];
    swift_unknownObjectRelease();
    [v15 _setQueue_];
    [v15 setDelegate_];
    [v15 resume];
    v10 = v15;
  }

  else
  {
    sub_22D8B0AAC();
    v11 = sub_22D8B176C();
    v12 = sub_22D8B1C5C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22D84A000, v11, v12, "Failed to create Internal XPC service", v13, 2u);
      MEMORY[0x2318D50E0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_22D87A398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D87A424;

  return sub_22D87A75C();
}

uint64_t sub_22D87A424()
{
  sub_22D84D198();
  sub_22D84C734();
  v2 = *v1;
  sub_22D84CED0();
  *v3 = v2;
  *(v4 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22D87A544, 0, 0);
  }

  else
  {
    sub_22D84D800();

    return v5();
  }
}

uint64_t sub_22D87A544()
{
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v1 = *(v0 + 24);
  v2 = sub_22D8B178C();
  sub_22D84C6FC(v2, qword_281459298);
  v3 = v1;
  v4 = sub_22D8B176C();
  v5 = sub_22D8B1C4C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22D84A000, v4, v5, "Error monitoring asset updates: %@", v8, 0xCu);
    sub_22D858120(v9, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  else
  {
  }

  sub_22D84D800();

  return v12();
}

uint64_t sub_22D87A6C4()
{
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  v1[1] = sub_22D851A18;
  sub_22D84D860();

  return sub_22D87A398();
}

uint64_t sub_22D87A75C()
{
  v1 = sub_22D8580D8(&qword_27DA0D708, &qword_22D8B3950);
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D87A824, 0, 0);
}

uint64_t sub_22D87A824()
{
  sub_22D8580D8(qword_27DA0D710, qword_22D8B3958);
  sub_22D8B1CCC();
  *(swift_allocObject() + 16) = xmmword_22D8B4030;
  v1 = [objc_opt_self() defaultCenter];
  if (qword_2814584B0 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v2 = sub_22D84D73C();
  if (qword_2814584B8 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v3 = sub_22D84D73C();
  if (qword_27DA0D408 != -1)
  {
    sub_22D84DCA0(&qword_27DA0D408);
  }

  sub_22D8B1CDC();

  v4 = sub_22D84D73C();
  if (qword_2814584C0 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v5 = sub_22D84D73C();
  if (qword_2814584A8 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v6 = sub_22D84D73C();
  if (qword_2814584D0 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  sub_22D87C474(&unk_2814588A0, MEMORY[0x277CC9DB0]);
  sub_22D8B186C();
  sub_22D87C430(&qword_281458948, &qword_27DA0D708, &qword_22D8B3950);
  qword_281458768 = sub_22D8B18CC();

  type metadata accessor for BackgroundScheduler();
  swift_initStackObject();
  sub_22D87CC64(0xD000000000000036, 0x800000022D8B8800, &unk_22D8B4100, 0);
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_281459298);
  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22D84A000, v8, v9, "Starting monitoring asset updates", v10, 2u);
    sub_22D84C3D8();
  }

  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];

  (*(v12 + 8))(v11, v13);

  sub_22D84D800();

  return v14();
}

uint64_t sub_22D87AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_22D87C278(a3, v24 - v10);
  v12 = sub_22D8B1B9C();
  v13 = sub_22D84D0C0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_22D858120(v11, &qword_27DA0D628, "l\x1B");
  }

  else
  {
    sub_22D8B1B8C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22D8B1B3C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22D8B1A5C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22D87AFDC()
{
  sub_22D8B09DC();
  sub_22D84D794();
  v1 = sub_22D8B094C();
  v0[8] = v1;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v1;
    v14 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v2, 0);
    v3 = v14;
    v5 = v4 + 32;
    do
    {
      sub_22D84E234(v5, (v0 + 2));
      sub_22D84E124(v0 + 2, v0[5]);
      v6 = sub_22D8B0A5C();
      v8 = v7;
      sub_22D84D8A0(v0 + 2);
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22D87B9A8((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  v0[9] = v3;
  sub_22D8B0CAC();
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_22D87B17C;

  return MEMORY[0x282188168](v3);
}

uint64_t sub_22D87B17C()
{
  sub_22D84D198();
  sub_22D84C734();
  *(v2 + 88) = v1;
  *(v2 + 96) = v0;

  if (v0)
  {
    v3 = sub_22D87B4A8;
  }

  else
  {

    v3 = sub_22D87B290;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D87B290()
{
  *(v0 + 104) = 0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0 + 104;
  sub_22D8B0C8C();
  if (v2)
  {

    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60(&qword_2814589E0);
    }

    v5 = sub_22D8B178C();
    sub_22D84C6FC(v5, qword_281459298);
    v6 = v2;
    v7 = sub_22D8B176C();
    v8 = sub_22D8B1C6C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_22D84A000, v7, v8, "essentialResourcesReady returning false due to inability to acquire lock: %@", v9, 0xCu);
      sub_22D858120(v10, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
    }

    v13 = 0;
  }

  else
  {

    v13 = *(v0 + 104);
  }

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_22D87B4A8()
{
  sub_22D84D198();

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_22D87B514(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_22D8B09DC();
  v4 = sub_22D8B098C();
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v5 = sub_22D8B178C();
  sub_22D84C6FC(v5, qword_281459298);
  v6 = sub_22D8B176C();
  v7 = sub_22D8B1C6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = v4 ^ 1;
    *(v8 + 4) = v9 & 1;
    _os_log_impl(&dword_22D84A000, v6, v7, "essentialResourcesReady: %{BOOL}d", v8, 8u);
    MEMORY[0x2318D50E0](v8, -1, -1);
  }

  else
  {

    v9 = v4 ^ 1;
  }

  *a3 = v9 & 1;
}

uint64_t sub_22D87B650(uint64_t a1)
{
  v2 = sub_22D8B061C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v6 = sub_22D8B178C();
  sub_22D84C6FC(v6, qword_281459298);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_22D8B176C();
  v8 = sub_22D8B1C6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_22D87C474(&qword_2814587B8, MEMORY[0x277CC8900]);
    v11 = sub_22D8B1F5C();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_22D84C63C(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22D84A000, v7, v8, "monitorAssetUpdates received new asset update notification: %s", v9, 0xCu);
    sub_22D84D8A0(v10);
    MEMORY[0x2318D50E0](v10, -1, -1);
    MEMORY[0x2318D50E0](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return sub_22D8B08BC();
}

uint64_t sub_22D87B8E0()
{
  sub_22D84D198();
  v0 = [objc_opt_self() defaultCenter];
  if (qword_27DA0D408 != -1)
  {
    sub_22D84DCA0(&qword_27DA0D408);
  }

  [v0 postNotificationName:qword_27DA0EB40 object:0];

  sub_22D84D800();

  return v1();
}

void *sub_22D87B9A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87BC88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelCatalogDaemon(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ModelCatalogDaemon(_BYTE *result, int a2, int a3)
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

char *sub_22D87BAEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87BD88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D87BB0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D820, &unk_22D8B3E00, MEMORY[0x282221AF0], sub_22D88C6F4);
  *v3 = result;
  return result;
}

void *sub_22D87BB58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D998, &qword_22D8B4098, MEMORY[0x282221950], sub_22D88C700);
  *v3 = result;
  return result;
}

void *sub_22D87BBA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D9B0, &unk_22D8B40C0, MEMORY[0x282221978], sub_22D88C724);
  *v3 = result;
  return result;
}

void *sub_22D87BBF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D9C0, &unk_22D8B40D8, type metadata accessor for SubscriptionDecision, sub_22D88C70C);
  *v3 = result;
  return result;
}

uint64_t sub_22D87BC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87C048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22D87BC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D87C160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D87BC88(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22D88C6D4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22D87BD88(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_22D8580D8(&qword_27DA0D990, &qword_22D8B4090);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22D88C6B4(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22D87BE80(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22D8580D8(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_22D87C048(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22D8580D8(&qword_27DA0D9A0, &unk_22D8B40A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22D891524((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87C160(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22D8580D8(&qword_27DA0D9A8, &unk_22D8B40B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22D891524((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87C278(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D87C2E8()
{
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  v1[1] = sub_22D851AF8;
  v3 = sub_22D84D860();

  return v4(v3);
}

uint64_t sub_22D87C38C()
{
  v0 = swift_task_alloc();
  v1 = sub_22D84D1FC(v0);
  *v1 = v2;
  v1[1] = sub_22D851A18;
  v3 = sub_22D84D860();

  return v4(v3);
}

uint64_t sub_22D87C430(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22D85EE94(a2, a3);
    sub_22D84D794();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D87C474(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22D84D794();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22D87C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = objc_opt_self();
  v11 = [v10 sharedScheduler];
  v12 = sub_22D8B19CC();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  aBlock[4] = sub_22D87D288;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  sub_22D87D3F4();
  aBlock[2] = v14;
  aBlock[3] = &unk_2840E38B0;
  v15 = _Block_copy(aBlock);

  [v11 registerForTaskWithIdentifier:v12 usingQueue:0 launchHandler:v15];
  _Block_release(v15);

  sub_22D87D294();

  v16 = sub_22D87CBF0(a1, a2);
  [v16 setPriority_];
  [v16 setRequiresNetworkConnectivity_];
  [v16 setRequiresExternalPower_];
  [v16 setScheduleAfter_];
  v17 = [v10 sharedScheduler];
  aBlock[0] = 0;
  LOBYTE(a1) = [v17 submitTaskRequest:v16 error:aBlock];

  if (a1)
  {
    v18 = aBlock[0];
  }

  else
  {
    v19 = aBlock[0];
    sub_22D8B069C();

    swift_willThrow();
  }
}

uint64_t sub_22D87C71C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_22D8B1B9C();
  sub_22D84C4F8(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a1;
  *(v12 + 56) = a4;

  v13 = a1;
  sub_22D892E94();
}

uint64_t sub_22D87C82C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a1;
  *(v7 + 24) = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v7 + 40) = v8;
  *v8 = v7;
  v8[1] = sub_22D87C948;

  return v10();
}

uint64_t sub_22D87C948()
{
  sub_22D84D198();
  *(*v0 + 48) = v1;

  return MEMORY[0x2822009F8](sub_22D87CA70, 0, 0);
}

uint64_t sub_22D87CA70()
{
  if (*(v0 + 48) != 1)
  {
    [*(v0 + 24) setTaskCompleted];
    goto LABEL_5;
  }

  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) setTaskExpiredWithRetryAfter:v0 + 16 error:*(v0 + 32)];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v2;
LABEL_5:
    sub_22D84D800();
    goto LABEL_7;
  }

  v5 = v2;
  sub_22D8B069C();

  swift_willThrow();
  sub_22D84D800();
LABEL_7:

  return v4();
}

void sub_22D87CB88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_22D87CBF0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22D8B19CC();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

void sub_22D87CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_22D8B19CC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v15 = sub_22D87D0EC;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  sub_22D87D3F4();
  v13 = v9;
  v14 = &unk_2840E3838;
  v10 = _Block_copy(&v11);

  [v6 registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:{v10, v11, v12}];
  _Block_release(v10);
}

uint64_t sub_22D87CD8C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_22D8B1B9C();
  sub_22D84C4F8(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;

  v11 = a1;
  sub_22D8930E4();
}

uint64_t sub_22D87CE8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_22D87CF78;

  return v9();
}

uint64_t sub_22D87CF78()
{
  sub_22D84D198();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_22D87D068, 0, 0);
}

uint64_t sub_22D87D068()
{
  sub_22D84D198();
  [*(v0 + 16) setTaskCompleted];
  sub_22D84D800();

  return v1();
}

uint64_t sub_22D87D0F4()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_22D84DF3C(v3);

  return sub_22D87CE8C(v4, v5, v6, v7, v8, v2);
}

uint64_t sub_22D87D1A4()
{
  sub_22D84D198();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  sub_22D84D800();

  return v3();
}

unint64_t sub_22D87D294()
{
  result = qword_281458498;
  if (!qword_281458498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281458498);
  }

  return result;
}

uint64_t sub_22D87D2D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22D87D32C()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_22D84DF3C(v4);

  return sub_22D87C82C(v3, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_22D87D408(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_22D8B088C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = *(type metadata accessor for SubscriptionDecision(0) - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D87D544, 0, 0);
}

uint64_t sub_22D87D544()
{
  v116 = v0;
  v1 = *(v0 + 80);
  sub_22D84E124(v1 + 15, v1[18]);
  v2 = *v1;
  *(v0 + 152) = *v1;
  v3 = v1[1];
  *(v0 + 160) = v3;
  v4 = *(sub_22D86725C(v2, v3) + 2);
  v107 = v0;
  if (v4)
  {
    v115[0] = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v4, 0);
    v5 = v115[0];
    sub_22D8B0F3C();
    sub_22D84D7DC();
    v7 = v6;
    while (1)
    {
      swift_task_alloc();
      (*(v7 + 16))();
      sub_22D8B0F1C();
      v8 = sub_22D84E400();
      v9(v8);

      v115[0] = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = sub_22D84C4D0(v10);
        sub_22D87B9A8(v12, v11 + 1, 1);
        v5 = v115[0];
      }

      sub_22D852B0C();
    }
  }

  v13 = sub_22D851EAC(MEMORY[0x277D84F90]);
  *(v0 + 168) = v13;
  if (qword_2814589E8 != -1)
  {
LABEL_63:
    sub_22D862DC0();
    swift_once();
  }

  v14 = sub_22D8B178C();
  *(v0 + 176) = sub_22D84C6FC(v14, qword_2814592B0);

  v15 = sub_22D8B176C();
  v16 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v16))
  {
    v17 = sub_22D84DD3C();
    sub_22D8516BC(v17, 3.9122e-34);
    sub_22D84D22C(&dword_22D84A000, v18, v19, "SubscriptionWriter found %{public}ld current subscriptions:");
    sub_22D84C3D8();
  }

  else
  {
  }

  v20 = v13 + 56;
  sub_22D84E484();
  v0 = v22 & v21;
  v24 = (63 - v23) >> 6;
  v105 = v13;

  v25 = 0;
  while (v0)
  {
    v26 = v25;
LABEL_16:
    v27 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    v28 = (*(v105 + 48) + ((v26 << 10) | (16 * v27)));
    v29 = *v28;
    v13 = v28[1];

    v30 = sub_22D8B176C();
    v31 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v31))
    {
      v32 = sub_22D84DD3C();
      v33 = sub_22D84CE7C();
      v115[0] = v33;
      *v32 = 136446210;
      v34 = sub_22D84C63C(v29, v13, v115);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_22D84A000, v30, v31, " - %{public}s", v32, 0xCu);
      sub_22D84D8A0(v33);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
    }

    v25 = v26;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v26 >= v24)
    {
      break;
    }

    v0 = *(v20 + 8 * v26);
    ++v25;
    if (v0)
    {
      goto LABEL_16;
    }
  }

  v35 = v107[9];

  v107[8] = MEMORY[0x277D84FA0];
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v107[14];
    v109 = *(v107[10] + 32);
    v38 = v107[9] + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v108 = *(v37 + 72);
    v106 = MEMORY[0x277D84F90];
    do
    {
      v110 = v38;
      v111 = v36;
      sub_22D85F0D4(v38, v107[18]);
      v39 = sub_22D8B0E1C();
      sub_22D84D7DC();
      v41 = v40;
      v42 = swift_task_alloc();
      v112 = sub_22D8B0D8C();
      sub_22D84D7DC();
      v44 = v43;
      v45 = swift_task_alloc();
      sub_22D8B127C();
      v46 = sub_22D88794C();
      sub_22D86EE34(v45, v46, v109, v42);
      (*(v44 + 8))(v45, v112);

      v47 = v107[8];

      v48 = sub_22D8B0DBC();
      v50 = sub_22D893390(v48, v49, v47);

      if (v50)
      {
        v51 = v107[18];
        (*(v41 + 8))(v42, v39);
        v52 = v51;
      }

      else
      {
        v53 = swift_task_alloc();
        (*(v41 + 16))(v53, v42, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22D88BF64();
          v106 = v59;
        }

        v55 = *(v106 + 16);
        v54 = *(v106 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_22D84C4D0(v54);
          sub_22D88BF64();
          v106 = v60;
        }

        v56 = v107[18];
        *(v106 + 16) = v55 + 1;
        (*(v41 + 32))(v106 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v55, v53, v39);

        v57 = sub_22D8B0DBC();
        sub_22D851F6C(v115, v57, v58);

        (*(v41 + 8))(v42, v39);
        v52 = v56;
      }

      sub_22D85F138(v52);

      v13 = 0;
      v38 = v110 + v108;
      v36 = v111 - 1;
    }

    while (v111 != 1);
  }

  else
  {
    v106 = MEMORY[0x277D84F90];
  }

  v107[23] = v106;
  v61 = sub_22D8B176C();
  v0 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v0))
  {
    v62 = sub_22D84DD3C();
    *v62 = 134349056;
    swift_beginAccess();
    *(v62 + 4) = *(v107[8] + 16);
    sub_22D84D22C(&dword_22D84A000, v63, v64, "SubscriptionWriter determined %{public}ld subscriptions that should be subscribed:");
    sub_22D84C3D8();
  }

  swift_beginAccess();
  v65 = v107[8];
  v66 = v107;
  v107[24] = v65;
  v67 = v65 + 56;
  sub_22D84E484();
  v70 = v69 & v68;
  v72 = (63 - v71) >> 6;

  v73 = 0;
  v113 = v65;
  while (v70)
  {
    v74 = v73;
LABEL_40:
    v75 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v76 = (*(v65 + 48) + ((v74 << 10) | (16 * v75)));
    v13 = *v76;
    v0 = v76[1];

    v77 = sub_22D8B176C();
    v78 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v78))
    {
      v79 = sub_22D84DD3C();
      v80 = sub_22D84CE7C();
      v115[0] = v80;
      *v79 = 136446210;
      v13 = sub_22D84C63C(v13, v0, v115);

      *(v79 + 4) = v13;
      _os_log_impl(&dword_22D84A000, v77, v78, " + %{public}s", v79, 0xCu);
      sub_22D84D8A0(v80);
      v66 = v107;
      sub_22D84C3D8();
      v65 = v113;
      sub_22D84C3D8();
    }

    else
    {
    }

    v73 = v74;
  }

  while (1)
  {
    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_61;
    }

    if (v74 >= v72)
    {
      break;
    }

    v70 = *(v67 + 8 * v74);
    ++v73;
    if (v70)
    {
      goto LABEL_40;
    }
  }

  v81 = sub_22D87F3AC();

  v82 = sub_22D87F00C(MEMORY[0x277D84FA0], v105, v66 + 8, v81);
  v66[25] = v82;

  v83 = sub_22D8B176C();
  v84 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v84))
  {
    v85 = sub_22D84DD3C();
    *v85 = 134349056;
    *(v85 + 4) = *(v82 + 16);

    sub_22D84D22C(&dword_22D84A000, v86, v87, "SubscriptionWriter determined %{public}ld subscriptions to remove:");
    sub_22D84C3D8();
  }

  else
  {
  }

  v88 = v82 + 56;
  sub_22D84E484();
  v91 = v90 & v89;
  v0 = (63 - v92) >> 6;

  v93 = 0;
  v114 = v82;
  while (v91)
  {
    v13 = v93;
LABEL_53:
    v94 = __clz(__rbit64(v91));
    v91 &= v91 - 1;
    v95 = (*(v82 + 48) + ((v13 << 10) | (16 * v94)));
    v97 = *v95;
    v96 = v95[1];

    v98 = sub_22D8B176C();
    v99 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v99))
    {
      v100 = sub_22D84DD3C();
      v101 = sub_22D84CE7C();
      v115[0] = v101;
      *v100 = 136315138;
      v102 = sub_22D84C63C(v97, v96, v115);

      *(v100 + 4) = v102;
      _os_log_impl(&dword_22D84A000, v98, v99, " - %s", v100, 0xCu);
      sub_22D84D8A0(v101);
      v66 = v107;
      sub_22D84C3D8();
      v82 = v114;
      sub_22D84C3D8();
    }

    else
    {
    }

    v93 = v13;
  }

  while (1)
  {
    v13 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_62;
    }

    if (v13 >= v0)
    {
      break;
    }

    v91 = *(v88 + 8 * v13);
    ++v93;
    if (v91)
    {
      goto LABEL_53;
    }
  }

  sub_22D8B087C();
  v103 = swift_task_alloc();
  v66[26] = v103;
  *v103 = v66;
  v103[1] = sub_22D87E3AC;

  return sub_22D87069C();
}

uint64_t sub_22D87E3AC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_22D87ED14;
  }

  else
  {
    v2 = sub_22D87E4C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D87E4C0()
{

  v1 = sub_22D8B176C();
  v2 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v2))
  {
    v3 = sub_22D84DD3C();
    sub_22D8516BC(v3, 3.9122e-34);
    sub_22D84CF2C(&dword_22D84A000, v4, v5, "SubscriptionWriter successfully subscribed to %{public}ld subscriptions");
    sub_22D84D6DC();
  }

  else
  {
  }

  v6 = *(v0[23] + 16);
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v6, 0);
    sub_22D8B0E1C();
    sub_22D84D7DC();
    sub_22D84EB6C();
    while (1)
    {
      swift_task_alloc();
      sub_22D84DAEC();
      v7();
      sub_22D8B0DBC();
      v8 = sub_22D84E400();
      v9(v8);

      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = sub_22D84C4D0(v10);
        sub_22D87B9A8(v12, v11 + 1, 1);
      }

      sub_22D852B0C();
    }
  }

  sub_22D880CF8(v0[13], 1, MEMORY[0x277D84F90], 0);

  sub_22D84E124((v0[10] + 120), *(v0[10] + 144));
  sub_22D851E74();

  v0[28] = sub_22D892E04(v13);
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  sub_22D84DE00(v14);

  return sub_22D8667B4();
}

uint64_t sub_22D87E738()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_22D87EA84;
  }

  else
  {
    v2 = sub_22D87E86C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D87E86C()
{

  v1 = sub_22D8B176C();
  v2 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v2))
  {
    v3 = sub_22D84DD3C();
    sub_22D8516BC(v3, 3.9122e-34);
    sub_22D84CF2C(&dword_22D84A000, v4, v5, "SubscriptionWriter successfully unsubscribed from %{public}ld subscriptions");
    sub_22D84D6DC();
  }

  else
  {
  }

  v6 = v0[13];
  v7 = sub_22D892E04(v0[25]);
  sub_22D880CF8(v6, 0, v7, 0);

  v8 = v0[24];
  v9 = v0[21];
  v10 = sub_22D87FC20();
  sub_22D8ADFEC(v10, v9);
  v12 = v11;

  v13 = sub_22D87FC20();
  sub_22D8ADFEC(v13, v8);
  sub_22D851E74();

  sub_22D88826C(v12, v8);
  v15 = v14;

  v16 = sub_22D8B176C();
  v17 = sub_22D8B1C6C();
  v18 = sub_22D84CEE0(v17);
  if (v15)
  {
    if (v18)
    {
      v19 = sub_22D85225C();
      sub_22D84C544(v19);
      sub_22D84C424(&dword_22D84A000, v20, v21, "SubscriptionWriter NOT notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }
  }

  else
  {
    if (v18)
    {
      v22 = sub_22D85225C();
      sub_22D84C544(v22);
      sub_22D84C424(&dword_22D84A000, v23, v24, "SubscriptionWriter notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }

    sub_22D8B08BC();
  }

  v25 = sub_22D84D7A0();
  v26(v25);

  v27 = v0[1];

  return v27();
}

uint64_t sub_22D87EA84()
{
  v2 = v0[30];
  v3 = v2;
  v4 = sub_22D8B176C();
  v5 = sub_22D8B1C4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    sub_22D84DD3C();
    v7 = sub_22D84C600();
    *v1 = 138543362;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22D84A000, v4, v5, "SubscriptionWriter received asset manager error when unsubscribing: %{public}@", v1, 0xCu);
    sub_22D84D014(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84D6DC();
  }

  v10 = v0[30];
  v11 = v0[25];
  v12 = v0[13];

  v13 = sub_22D892E04(v11);
  v14 = v10;
  sub_22D880CF8(v12, 0, v13, v10);

  v15 = v0[24];
  v16 = v0[21];
  v17 = sub_22D87FC20();
  sub_22D8ADFEC(v17, v16);
  v19 = v18;

  v20 = sub_22D87FC20();
  sub_22D8ADFEC(v20, v15);
  sub_22D851E74();

  sub_22D88826C(v19, v15);
  v22 = v21;

  v23 = sub_22D8B176C();
  v24 = sub_22D8B1C6C();
  v25 = sub_22D84CEE0(v24);
  if (v22)
  {
    if (v25)
    {
      v26 = sub_22D85225C();
      sub_22D84C544(v26);
      sub_22D84C424(&dword_22D84A000, v27, v28, "SubscriptionWriter NOT notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }
  }

  else
  {
    if (v25)
    {
      v29 = sub_22D85225C();
      sub_22D84C544(v29);
      sub_22D84C424(&dword_22D84A000, v30, v31, "SubscriptionWriter notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }

    sub_22D8B08BC();
  }

  v32 = sub_22D84D7A0();
  v33(v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_22D87ED14()
{
  v2 = v0;
  v3 = v0[27];
  v4 = v3;
  v5 = sub_22D8B176C();
  v6 = sub_22D8B1C4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[27];
    sub_22D84DD3C();
    v8 = sub_22D84C600();
    *v1 = 138543362;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    sub_22D84CF2C(&dword_22D84A000, v11, v12, "SubscriptionWriter received asset manager error when subscribing: %{public}@");
    sub_22D84D014(v8, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84D6DC();
  }

  v13 = v0[23];

  v14 = *(v13 + 16);
  v15 = v2[23];
  if (v14)
  {
    v31 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v14, 0);
    v16 = v31;
    sub_22D8B0E1C();
    v17 = 0;
    sub_22D84D7DC();
    sub_22D84EB6C();
    do
    {
      swift_task_alloc();
      sub_22D84DAEC();
      v18();
      sub_22D8B0DBC();
      v19 = sub_22D84E400();
      v20(v19);

      v22 = *(v31 + 16);
      v21 = *(v31 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = sub_22D84C4D0(v21);
        sub_22D87B9A8(v24, v22 + 1, 1);
      }

      ++v17;
      *(v31 + 16) = v22 + 1;
      v23 = v31 + 16 * v22;
      *(v23 + 32) = v15;
      *(v23 + 40) = v2;
    }

    while (v14 != v17);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v25 = v2[27];
  v26 = v2[13];
  v27 = v25;
  sub_22D880CF8(v26, 1, v16, v25);

  sub_22D84E124((v2[10] + 120), *(v2[10] + 144));
  sub_22D851E74();

  v2[28] = sub_22D892E04(v28);
  v29 = swift_task_alloc();
  v2[29] = v29;
  *v29 = v2;
  sub_22D84DE00(v29);

  return sub_22D8667B4();
}

uint64_t sub_22D87F00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v37 = a1;
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a2 + 56);

  result = swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  v35 = a4 + 56;
  v33 = v7;
  v34 = a4;
  v32 = v6;
LABEL_5:
  while (v10)
  {
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v6 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *a3;
    if (*(*a3 + 16))
    {
      sub_22D8B201C();

      sub_22D8B1A6C();
      v20 = sub_22D8B205C();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(v19 + 48) + 16 * v22);
        if (*v23 != v18 || v23[1] != v17)
        {
          v25 = sub_22D8B1F8C();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        v6 = v32;
        v7 = v33;
        goto LABEL_5;
      }

      v6 = v32;
    }

    else
    {
    }

    if (*(v34 + 16))
    {
      sub_22D8B201C();
      sub_22D8B1A6C();
      v26 = sub_22D8B205C();
      v27 = ~(-1 << *(v34 + 32));
      while (1)
      {
        v28 = v26 & v27;
        if (((*(v35 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
        {
          break;
        }

        v29 = (*(v34 + 48) + 16 * v28);
        if (*v29 != v18 || v29[1] != v17)
        {
          v31 = sub_22D8B1F8C();
          v26 = v28 + 1;
          if ((v31 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_31;
      }
    }

    sub_22D851F6C(&v36, v18, v17);

LABEL_31:

    v7 = v33;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return v37;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87F2D4@<X0>(uint64_t a1@<X8>)
{
  sub_22D8B09DC();
  v2 = sub_22D8B09CC();
  v3 = sub_22D8B08FC();
  v4 = sub_22D8B08CC();
  *(a1 + 64) = &type metadata for GenerativeExperiencesNotifier;
  *(a1 + 72) = &off_2840E39B8;
  v5 = sub_22D86287C();
  *(a1 + 104) = &type metadata for AIReportingEventReporter;
  *(a1 + 112) = &off_2840E33E0;
  *(a1 + 80) = v5;
  v6 = type metadata accessor for UnifiedAssetInterface();
  result = swift_allocObject();
  *(a1 + 144) = v6;
  *(a1 + 152) = &off_2840E33F0;
  *(a1 + 120) = result;
  strcpy(a1, "model-catalog");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

void *sub_22D87F3AC()
{
  v87 = 0;
  v94 = MEMORY[0x277D84FA0];
  v1 = sub_22D8B0E8C();
  v83 = *(v1 + 16);
  if (v83)
  {
    v72[1] = v0;
    v2 = sub_22D8B0EBC();
    v3 = 0;
    sub_22D84C740();
    v7 = *(v5 + 16);
    v5 += 16;
    v6 = v7;
    v8 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v72[0] = v1;
    v82 = v8;
    v81 = v1 + v8;
    v9 = *(v5 + 56);
    v84 = *(v5 + 48);
    v85 = v5;
    v80 = (v5 - 8);
    *&v10 = 136446466;
    v73 = v10;
    v78 = v7;
    do
    {
      v86 = v72;
      ++v3;
      MEMORY[0x28223BE20](v4);
      v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v6(v12);
      v13 = sub_22D8B0E7C();
      v14 = v13 + v82;
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        sub_22D8822C4();
        v14 += v9;
        if (sub_22D8B19AC())
        {
          goto LABEL_13;
        }
      }

      v16 = v87;
      v17 = sub_22D86D65C(v12);
      v87 = v16;
      if (!v16)
      {
        v39 = v17;
        v40 = v18;
        v88 = v17;
        v89 = v18;

        MEMORY[0x2318D4340](0x6E6972697078652DLL, 0xE900000000000067);
        v41 = v88;
        v42 = v3;
        v43 = v89;
        sub_22D851F6C(&v88, v39, v40);

        v44 = v43;
        v3 = v42;
        v6 = v78;
        sub_22D851F6C(&v88, v41, v44);
LABEL_13:

        sub_22D84F52C();
        v4 = v45(v12, v2);
        continue;
      }

      v79 = v3;
      if (qword_2814589E8 != -1)
      {
        sub_22D862DC0();
        swift_once();
      }

      v19 = sub_22D8B178C();
      v20 = sub_22D84C6FC(v19, qword_2814592B0);
      MEMORY[0x28223BE20](v20);
      v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (v6)(v22, v12, v2);
      v23 = v87;
      v24 = v87;
      v25 = sub_22D8B176C();
      v26 = sub_22D8B1C6C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v76 = sub_22D84CE7C();
        v88 = v76;
        *v27 = v73;
        v74 = v25;
        v28 = sub_22D8B0EAC();
        v77 = v72;
        v30 = v29;
        v31 = *v80;
        (*v80)(v22, v2);
        v32 = sub_22D84C63C(v28, v30, &v88);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2114;
        v33 = v87;
        v34 = v87;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v35;
        v36 = v75;
        *v75 = v35;
        v37 = v26;
        v38 = v74;
        _os_log_impl(&dword_22D84A000, v74, v37, "SubscriptionWriter could not determine subscription names for request resource key: %{public}s with error: %{public}@", v27, 0x16u);
        sub_22D84D014(v36, &qword_27DA0D4D0, &qword_22D8B3400);
        sub_22D84C3D8();
        sub_22D84D8A0(v76);
        sub_22D84C3D8();
        v6 = v78;
        sub_22D84C3D8();

        v4 = (v31)(v12, v2);
      }

      else
      {

        v46 = *v80;
        (*v80)(v22, v2);
        v4 = (v46)(v12, v2);
      }

      v87 = 0;
      v3 = v79;
    }

    while (v3 != v83);
  }

  else
  {
  }

  result = sub_22D8B09BC();
  v48 = result;
  v49 = result[2];
  if (v49)
  {
    v50 = 0;
    v51 = (result + 4);
    v52 = &qword_27DA0D688;
    v85 = result[2];
    v84 = result + 4;
    v86 = result;
    while (v50 < *(v48 + 16))
    {
      sub_22D84E234(v51 + 40 * v50, v93);
      sub_22D84E234(v93, &v88);
      sub_22D8580D8(v52, &unk_22D8B36B0);
      sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
      if (swift_dynamicCast())
      {
        v53 = v52;
        sub_22D85F350(v90, v92);
        v54 = sub_22D8B125C();
        sub_22D84E124(v93, v93[3]);
        v55 = sub_22D8B0A4C();
        v57 = v56;
        if (*(v54 + 16))
        {
          v58 = v55;
          sub_22D8B201C();
          sub_22D8B1A6C();
          v59 = sub_22D8B205C();
          v49 = ~(-1 << *(v54 + 32));
          while (1)
          {
            v51 = v59 & v49;
            if (((*(v54 + 56 + (((v59 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v59 & v49)) & 1) == 0)
            {
              break;
            }

            v60 = (*(v54 + 48) + 16 * v51);
            if (*v60 != v58 || v60[1] != v57)
            {
              v62 = sub_22D8B1F8C();
              v59 = v51 + 1;
              if ((v62 & 1) == 0)
              {
                continue;
              }
            }

            sub_22D84E124(v92, v92[3]);
            v63 = sub_22D8B0C6C();
            v51 = v72;
            sub_22D84D7DC();
            v65 = v64;
            MEMORY[0x28223BE20](v66);
            sub_22D84CFA4();
            v69 = v68 - v67;
            sub_22D8B0E4C();
            v49 = sub_22D8B0C3C();
            v71 = v70;
            (*(v65 + 8))(v69, v63);
            sub_22D851F6C(&v88, v49, v71);

            sub_22D84D8A0(v92);
            sub_22D852298();
            goto LABEL_35;
          }

          sub_22D852298();
        }

        sub_22D84D8A0(v92);
LABEL_35:
        v52 = v53;
        v48 = v86;
      }

      else
      {
        v91 = 0;
        memset(v90, 0, sizeof(v90));
        sub_22D84D014(v90, &qword_27DA0D698, &qword_22D8B36C0);
      }

      ++v50;
      result = sub_22D84D8A0(v93);
      if (v50 == v49)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    return v94;
  }

  return result;
}

uint64_t sub_22D87FC20()
{
  v1 = *(v0 + 32);
  v14 = MEMORY[0x277D84F98];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; i = v7)
  {
    v7 = i;
LABEL_8:
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v9 = (*(v1 + 48) + 16 * v8);
    v10 = v9[1];
    v11 = *(*(v1 + 56) + 8 * v8);
    v13[0] = *v9;
    v13[1] = v10;
    v13[2] = v11;

    sub_22D87FD78(&v14, v13);
    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v14;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++i;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_22D87FD78(void *result, uint64_t *a2)
{
  v35 = a2[2];
  v34 = *(v35 + 16);
  if (v34)
  {
    v2 = result;
    v3 = 0;
    v4 = *a2;
    v32 = a2[1];
    v33 = v4;
    v5 = v35 + 40;
    v31 = result;
    while (v3 < *(v35 + 16))
    {
      v38 = v5;
      v39 = v3;
      v6 = sub_22D8B0E1C();
      v37 = &v30;
      v7 = *(v6 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x28223BE20](v6);
      v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_22D8B0DCC();
      v10 = sub_22D8B0DBC();
      v12 = v11;
      v36 = &v30;
      MEMORY[0x28223BE20](v10);
      v13 = *(v7 + 16);
      v40 = v9;
      v42 = v6;
      v13();
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *v2;
      v14 = v43;
      v41 = v10;
      v15 = sub_22D852D10(v10, v12);
      if (__OFADD__(v14[2], (v16 & 1) == 0))
      {
        goto LABEL_15;
      }

      v17 = v15;
      v18 = v16;
      sub_22D8580D8(&qword_27DA0D9D0, &qword_22D8B41A0);
      if (sub_22D8B1EAC())
      {
        v19 = sub_22D852D10(v41, v12);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_17;
        }

        v17 = v19;
      }

      if (v18)
      {

        v21 = v43;
        v22 = v42;
        (*(v7 + 40))(v43[7] + *(v7 + 72) * v17, v40, v42);
        result = (*(v7 + 8))(v9, v22);
      }

      else
      {
        v21 = v43;
        v43[(v17 >> 6) + 8] |= 1 << v17;
        v23 = (v21[6] + 16 * v17);
        v24 = v40;
        *v23 = v41;
        v23[1] = v12;
        v25 = v42;
        (*(v7 + 32))(v21[7] + *(v7 + 72) * v17, v24, v42);
        result = (*(v7 + 8))(v9, v25);
        v26 = v21[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_16;
        }

        v21[2] = v28;
      }

      v29 = v38;
      v3 = v39 + 1;
      v2 = v31;
      *v31 = v21;
      v5 = v29 + 16;
      if (v34 == v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_22D8B1FBC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22D8800C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D8B0E0C();
  v5 = sub_22D8B0D8C();
  sub_22D84D7DC();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22D84CFA4();
  v11 = v10 - v9;
  v12 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  sub_22D8B0DDC();
  sub_22D8B0D7C();
  if (sub_22D84D0C0(v14, 1, v5) == 1)
  {

    sub_22D84D014(v14, qword_27DA0D9F0, &unk_22D8B4DE0);
    if (qword_2814589E8 != -1)
    {
      sub_22D862DC0();
      swift_once();
    }

    v15 = sub_22D8B178C();
    sub_22D84C6FC(v15, qword_2814592B0);
    v16 = sub_22D8B0E1C();
    sub_22D84D7DC();
    v18 = v17;
    MEMORY[0x28223BE20](v19);
    sub_22D84CFA4();
    v22 = v21 - v20;
    (*(v18 + 16))(v21 - v20, a1, v16);
    v23 = sub_22D8B176C();
    v24 = sub_22D8B1C4C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_22D84DD3C();
      v26 = sub_22D84CE7C();
      v38 = v26;
      *v25 = 136315138;
      v27 = sub_22D8B0DDC();
      v29 = v28;
      (*(v18 + 8))(v22, v16);
      v30 = sub_22D84C63C(v27, v29, &v38);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22D84A000, v23, v24, "SubscriptionWriter: allResourcesForSubscription found an invalid use case identifier: %s", v25, 0xCu);
      sub_22D84D8A0(v26);
      sub_22D84C3D8();
      sub_22D84D6DC();
    }

    else
    {

      (*(v18 + 8))(v22, v16);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v7 + 32))(v11, v14, v5);
    v31 = sub_22D8B09BC();
    MEMORY[0x28223BE20](v31);
    *(&v37 - 2) = v11;
    v32 = sub_22D86A4FC(sub_22D88226C, (&v37 - 4), v31);

    MEMORY[0x28223BE20](v33);
    *(&v37 - 2) = v4;
    *(&v37 - 1) = v2;
    sub_22D86A644(sub_22D882288, (&v37 - 4), v32);
    v35 = v34;

    (*(v7 + 8))(v11, v5);
  }

  return v35;
}

uint64_t sub_22D8804C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22D84E234(a1, v46);
  sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
  sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
  if (swift_dynamicCast())
  {
    sub_22D85F350(v44, v47);
    sub_22D84E124(v47, v47[3]);
    v6 = sub_22D8B0A7C();
    v37 = sub_22D8B12BC();
    MEMORY[0x28223BE20](v37);
    v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *(v6 + 16);
    if (v10)
    {
      v33[1] = v33;
      v34 = a2;
      v35 = a3;
      v36 = v3;
      v12 = *(v7 + 16);
      v11 = v7 + 16;
      v41 = v12;
      v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
      v33[0] = v6;
      v14 = v6 + v13;
      v15 = *(v11 + 56);
      v39 = (v11 - 8);
      v40 = v15;
      v43 = MEMORY[0x277D84F90];
      v16 = v37;
      v42 = v11;
      do
      {
        v41(v9, v14, v16);
        v17 = sub_22D8B0D8C();
        v47[7] = v33;
        v18 = *(v17 - 8);
        v19 = MEMORY[0x28223BE20](v17);
        v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v19);
        v23 = v33 - v22;
        if (sub_22D8B128C())
        {
          (*v39)(v9, v16);
        }

        else
        {
          sub_22D8B127C();
          (*v39)(v9, v16);
          v38 = *(v18 + 32);
          v38(v21, v23, v17);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v24 = v43;
          }

          else
          {
            sub_22D853C84();
            v24 = v27;
          }

          v25 = *(v24 + 16);
          if (v25 >= *(v24 + 24) >> 1)
          {
            sub_22D853C84();
            v24 = v28;
          }

          *(v24 + 16) = v25 + 1;
          v26 = (*(v18 + 80) + 32) & ~*(v18 + 80);
          v43 = v24;
          v38((v24 + v26 + *(v18 + 72) * v25), v21, v17);
          v16 = v37;
        }

        v14 += v40;
        --v10;
      }

      while (v10);

      a3 = v35;
      a2 = v34;
      v31 = v43;
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v30);
    v33[-2] = a2;
    v32 = sub_22D89347C(sub_22D8822A4, &v33[-4], v31);

    if (v32)
    {
      sub_22D84E234(v47, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return sub_22D84D8A0(v47);
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    result = sub_22D84D014(v44, &qword_27DA0D698, &qword_22D8B36C0);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_22D88097C(void *a1@<X0>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v35 = a3;
  v37 = a4;
  v6 = sub_22D8B073C();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D8B0AFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D84E124(a1, a1[3]);
  sub_22D8B0A4C();

  sub_22D8B0ADC();
  if (v4)
  {

    v14 = v37;
    v37[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
  }

  else
  {
    v12 = v34;
    sub_22D8B0AEC();
    sub_22D8B09DC();
    v13 = sub_22D8B097C();
    v15 = *(v12 + 8);
    v34 = v16;
    v35 = v13;
    v17 = v36;
    v33 = v18;
    v36 = v19;
    v15(v17, v6);
    v20 = a1[3];
    v31 = a1[4];
    v32 = v8;
    sub_22D84E124(a1, v20);
    v21 = sub_22D8B0C6C();
    v22 = *(v21 - 8);
    MEMORY[0x28223BE20](v21);
    v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_22D8B0E4C();
    v25 = sub_22D8B0C2C();
    v27 = v26;
    (*(v22 + 8))(v24, v21);
    (*(v9 + 8))(v11, v32);
    v28 = v37;
    *v37 = v25;
    v28[1] = v27;
    v29 = v34;
    v28[2] = v35;
    v28[3] = v29;
    v30 = v36;
    v28[4] = v33;
    v28[5] = v30;
  }
}

uint64_t sub_22D880CF8(uint64_t a1, int a2, char *a3, void *a4)
{
  v197 = a4;
  v211 = a3;
  LODWORD(v204) = a2;
  v205 = a1;
  v196 = sub_22D8B151C();
  sub_22D84D7DC();
  v203 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22D84DCC0();
  sub_22D850804(v7);
  v162 = sub_22D8B154C();
  sub_22D84D7DC();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22D84D6C8();
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v11);
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v12);
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v13);
  sub_22D850804(&v153 - v14);
  v193 = sub_22D8B149C();
  sub_22D84D7DC();
  v202 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22D84DCC0();
  sub_22D850804(v17);
  v191 = sub_22D8B14EC();
  sub_22D84D7DC();
  v201 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22D84DCC0();
  sub_22D850804(v20);
  v209 = sub_22D8B150C();
  sub_22D84D7DC();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22D84DCC0();
  v208 = v24;
  v189 = sub_22D8B14AC();
  sub_22D84D7DC();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22D84DCC0();
  sub_22D850804(v28);
  v187 = sub_22D8B14BC();
  sub_22D84D7DC();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22D84DCC0();
  sub_22D850804(v32);
  v207 = sub_22D8B14DC();
  sub_22D84D7DC();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22D84DCC0();
  v206 = v36;
  v37 = sub_22D8580D8(&qword_27DA0D9D8, &qword_22D8B41A8);
  MEMORY[0x28223BE20](v37 - 8);
  sub_22D84D6C8();
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v38);
  v212 = &v153 - v39;
  v40 = sub_22D8B088C();
  sub_22D84D7DC();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  sub_22D84CFA4();
  v46 = v45 - v44;
  v200 = sub_22D8B159C();
  sub_22D84D7DC();
  v154 = v47;
  MEMORY[0x28223BE20](v48);
  sub_22D84D6C8();
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v49);
  v51 = &v153 - v50;
  v210 = v4;
  v198 = sub_22D87FC20();
  (*(v42 + 16))(v46, v205, v40);
  v199 = v51;
  sub_22D8B158C();
  v183 = *(v211 + 2);
  if (v183)
  {
    v53 = 0;
    v205 = 0;
    v182 = v211 + 32;
    v181 = v30 + 104;
    v180 = v26 + 104;
    v179 = v154 + 16;
    v178 = *MEMORY[0x277CEDF48];
    v177 = v201 + 104;
    v176 = v34 + 16;
    v175 = v202 + 104;
    v174 = v22 + 16;
    v173 = *MEMORY[0x277CEDF68];
    v172 = v203 + 13;
    v171 = v203 + 1;
    v170 = *MEMORY[0x277CEDF18];
    v160 = (v9 + 32);
    v163 = (v9 + 16);
    v169 = *MEMORY[0x277CEDFB0];
    v159 = (v9 + 8);
    v168 = v22 + 8;
    v167 = v34 + 8;
    v54 = 0x7263736275736E75;
    if (v204)
    {
      v54 = 0x6269726373627573;
    }

    v158 = v54;
    v55 = 0xEB00000000656269;
    if (v204)
    {
      v55 = 0xE900000000000065;
    }

    v157 = v55;
    if (v204)
    {
      v56 = MEMORY[0x277CEDF40];
    }

    else
    {
      v56 = MEMORY[0x277CEDF38];
    }

    v166 = *v56;
    v57 = MEMORY[0x277D84F90];
    *&v52 = 136315906;
    v155 = v52;
    *&v52 = 136315650;
    v156 = v52;
    do
    {
      v204 = v53;
      v58 = &v182[16 * v53];
      v60 = *v58;
      v59 = v58[1];
      v61 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
      v203 = &v153;
      MEMORY[0x28223BE20](v61 - 8);
      v63 = &v153 - v62;

      v201 = v60;
      v202 = v59;
      sub_22D872EB0(v60, v59, v198, v63);
      v211 = v63;
      v64 = sub_22D881E90(v63);
      v65 = *(v64 + 16);
      if (v65)
      {
        v215 = v57;
        sub_22D87B9A8(0, v65, 0);
        v66 = v215;
        v67 = (v64 + 72);
        v68 = v65;
        do
        {
          v69 = *(v67 - 2);
          v70 = *(v67 - 1);
          v71 = *v67;
          v213 = *(v67 - 3);
          v214 = v69;
          swift_bridgeObjectRetain_n();

          MEMORY[0x2318D4340](46, 0xE100000000000000);
          MEMORY[0x2318D4340](v70, v71);

          v72 = v213;
          v73 = v214;
          v215 = v66;
          v75 = *(v66 + 16);
          v74 = *(v66 + 24);
          if (v75 >= v74 >> 1)
          {
            v77 = sub_22D84C4D0(v74);
            sub_22D87B9A8(v77, v75 + 1, 1);
            v66 = v215;
          }

          v67 += 6;
          *(v66 + 16) = v75 + 1;
          v76 = v66 + 16 * v75;
          *(v76 + 32) = v72;
          *(v76 + 40) = v73;
          --v68;
        }

        while (v68);
        v213 = MEMORY[0x277D84F90];
        sub_22D87B9A8(0, v65, 0);
        v78 = v213;
        v79 = (v64 + 40);
        do
        {
          v81 = *(v79 - 1);
          v80 = *v79;
          v213 = v78;
          v83 = *(v78 + 16);
          v82 = *(v78 + 24);

          if (v83 >= v82 >> 1)
          {
            sub_22D87B9A8((v82 > 1), v83 + 1, 1);
            v78 = v213;
          }

          *(v78 + 16) = v83 + 1;
          v84 = v78 + 16 * v83;
          *(v84 + 32) = v81;
          *(v84 + 40) = v80;
          v79 += 6;
          --v65;
        }

        while (v65);

        v57 = MEMORY[0x277D84F90];
      }

      else
      {

        v78 = v57;
        v66 = v57;
      }

      sub_22D851EAC(v78);
      sub_22D882034(v211, v212);
      v213 = v57;
      v86 = v196;
      v85 = v197;
      v87 = v195;
      if (v197)
      {
        sub_22D8B148C();
        v88 = v85;
        sub_22D8B147C();
        MEMORY[0x2318D4380]();
        v89 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v89 >> 1)
        {
          sub_22D84C4D0(v89);
          sub_22D8B1AFC();
        }

        sub_22D8B1B1C();
      }

      sub_22D84F52C();
      v90(v186, v178, v187);
      sub_22D84F52C();
      v91(v188, v166, v189);
      sub_22D84F52C();
      v92(v184, v199, v200);
      v93 = v206;
      sub_22D8B14CC();
      sub_22D84F52C();
      v94(v190, v173, v191);
      sub_22D85F1E8(v212, v185, &qword_27DA0D9D8, &qword_22D8B41A8);

      sub_22D892E04(v95);
      sub_22D84F52C();
      v96 = v192;
      v97(v192, v93, v207);
      sub_22D84F52C();
      v98(v96, v170, v193);
      v99 = v208;
      sub_22D8B14FC();
      v100 = v210[13];
      v101 = v210[14];
      sub_22D84E124(v210 + 10, v100);
      sub_22D84F52C();
      v102(v87, v99, v209);
      sub_22D84F52C();
      v103(v87, v169, v86);
      v104 = v205;
      v105 = v194;
      (*(v101 + 8))(v87, v194, v100, v101);
      if (v104)
      {
        sub_22D84F52C();
        v106(v87, v86);

        v107 = *v160;
        v108 = v161;
        v109 = v162;
        (*v160)(v161, v105, v162);
        v110 = v164;
        v107(v164, v108, v109);
        v111 = v163;
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        v112 = sub_22D8B178C();
        sub_22D84C6FC(v112, qword_2814592B0);
        v113 = *v111;
        v114 = v165;
        (*v111)(v165, v110, v109);
        v115 = v202;

        v116 = sub_22D8B176C();
        v117 = sub_22D8B1C4C();

        v118 = v117;
        v119 = os_log_type_enabled(v116, v117);
        v205 = 0;
        if (v119)
        {
          v120 = sub_22D84CE7C();
          v121 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          *v120 = v156;
          v122 = sub_22D84CFCC();
          v125 = sub_22D84C63C(v122, *(v123 - 256), v124);

          *(v120 + 4) = v125;
          *(v120 + 12) = 2080;
          v126 = sub_22D84C63C(v201, v115, &v215);

          *(v120 + 14) = v126;
          *(v120 + 22) = 2112;
          sub_22D882214();
          swift_allocError();
          v127 = v165;
          v113(v128, v165, v109);
          v129 = _swift_stdlib_bridgeErrorToNSError();
          v130 = v109;
          v131 = *v159;
          (*v159)(v127, v130);
          *(v120 + 24) = v129;
          *v121 = v129;
          _os_log_impl(&dword_22D84A000, v116, v118, "SubscriptionWriter could not emit apple intelligence event for subscription %s: %s with error: %@", v120, 0x20u);
          sub_22D84D014(v121, &qword_27DA0D4D0, &qword_22D8B3400);
          sub_22D84C3D8();
          swift_arrayDestroy();
          sub_22D84C3D8();
          sub_22D84C3D8();

          v131(v164, v130);
        }

        else
        {

          v149 = *v159;
          (*v159)(v114, v109);
          v149(v110, v109);
        }
      }

      else
      {
        sub_22D84F52C();
        v132(v87, v86);
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        v133 = sub_22D8B178C();
        sub_22D84C6FC(v133, qword_2814592B0);
        v134 = v202;

        v135 = sub_22D8B176C();
        v136 = sub_22D8B1C6C();

        v137 = os_log_type_enabled(v135, v136);
        v205 = 0;
        if (v137)
        {
          v138 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          *v138 = v155;
          v139 = sub_22D84CFCC();
          v142 = sub_22D84C63C(v139, *(v140 - 256), v141);

          *(v138 + 4) = v142;
          *(v138 + 12) = 2080;
          v143 = sub_22D84C63C(v201, v134, &v215);

          *(v138 + 14) = v143;
          *(v138 + 22) = 2080;
          v144 = sub_22D8B1BFC();
          v146 = v145;

          v147 = sub_22D84C63C(v144, v146, &v215);

          *(v138 + 24) = v147;
          *(v138 + 32) = 2048;
          v148 = *(v66 + 16);

          *(v138 + 34) = v148;

          _os_log_impl(&dword_22D84A000, v135, v136, "UAFSubscriptionWriter: reportSubscribedSubscriptions wrote %s event for subscription: %s, asset set identifiers: %s, and %ld resources", v138, 0x2Au);
          swift_arrayDestroy();
          sub_22D84C3D8();
          sub_22D84C3D8();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }
      }

      sub_22D84F52C();
      v150(v208, v209);
      sub_22D84F52C();
      v151(v206, v207);
      sub_22D84D014(v212, &qword_27DA0D9D8, &qword_22D8B41A8);
      sub_22D84D014(v211, &qword_27DA0D9E0, &unk_22D8B41B0);
      v57 = MEMORY[0x277D84F90];
      v53 = v204 + 1;
    }

    while (v204 + 1 != v183);
  }

  return (*(v154 + 8))(v199, v200);
}

uint64_t sub_22D881E90(uint64_t a1)
{
  v2 = sub_22D8B0E1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_22D85F1E8(a1, &v11 - v7, &qword_27DA0D9E0, &unk_22D8B41B0);
  if (sub_22D84D0C0(v8, 1, v2) == 1)
  {
    sub_22D84D014(v8, &qword_27DA0D9E0, &unk_22D8B41B0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_22D8800C8(v5);
    (*(v3 + 8))(v5, v2);
  }

  return v9;
}

uint64_t sub_22D882034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22D8B0E1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_22D85F1E8(a1, &v15 - v9, &qword_27DA0D9E0, &unk_22D8B41B0);
  if (sub_22D84D0C0(v10, 1, v4) == 1)
  {
    sub_22D84D014(v10, &qword_27DA0D9E0, &unk_22D8B41B0);
    v11 = sub_22D8B153C();
    v12 = a2;
    v13 = 1;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_22D8B0DDC();
    sub_22D8B0E0C();
    sub_22D8B152C();
    (*(v5 + 8))(v7, v4);
    v11 = sub_22D8B153C();
    v12 = a2;
    v13 = 0;
  }

  return sub_22D84C4F8(v12, v13, 1, v11);
}

unint64_t sub_22D882214()
{
  result = qword_27DA0D9E8;
  if (!qword_27DA0D9E8)
  {
    sub_22D8B154C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0D9E8);
  }

  return result;
}

unint64_t sub_22D8822C4()
{
  result = qword_281459200;
  if (!qword_281459200)
  {
    sub_22D8B0EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281459200);
  }

  return result;
}

uint64_t sub_22D882328(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_22D882368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22D8823E8(uint64_t a1)
{
  result = sub_22D8B1D7C();
  if (v2 <= 0x3F)
  {
    result = sub_22D882870();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22D882470(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_31:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = sub_22D84D0C0(result, v5, v4);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v7;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

LABEL_27:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v7 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_22D8825E0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 < a3)
  {
    v13 = a3 - v10;
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_58:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v9 < 0x7FFFFFFF)
          {
            v21 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v21 = a2 & 0x7FFFFFFF;
              v21[1] = 0;
            }

            else
            {
              *v21 = a2 - 1;
            }
          }

          else if (v9 >= a2)
          {
            v22 = a2 + 1;

            sub_22D84C4F8(a1, v22, v8, v7);
          }

          else
          {
            if (v11 <= 3)
            {
              v18 = ~(-1 << (8 * v11));
            }

            else
            {
              v18 = -1;
            }

            if (v11)
            {
              v19 = v18 & (~v9 + a2);
              if (v11 <= 3)
              {
                v20 = v11;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v11);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v12);
      *a1 = v17;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_22D882870()
{
  result = qword_27DA0DA78;
  if (!qword_27DA0DA78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DA0DA78);
  }

  return result;
}

uint64_t sub_22D88292C()
{
  v1 = sub_22D8580D8(&qword_27DA0DAE0, &unk_22D8B4350);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v30 = type metadata accessor for SubscriptionDecision(0);
  sub_22D84D7DC();
  v26 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v24 - v8;
  v9 = sub_22D8B16FC();
  sub_22D84D7DC();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22D84DF5C();
  v13 = sub_22D8B171C();
  v14 = 0;
  v15 = *(v13 + 16);
  v16 = (v11 + 8);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {

      return v29;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    (*(v11 + 16))(v0, v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, v9);
    sub_22D883560(v0, v3);
    (*v16)(v0, v9);
    if (sub_22D84D0C0(v3, 1, v30) == 1)
    {
      sub_22D858120(v3, &qword_27DA0DAE0, &unk_22D8B4350);
      ++v14;
    }

    else
    {
      sub_22D883F50(v3, v27);
      sub_22D883F50(v27, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D88BB0C();
        v29 = v21;
      }

      v17 = *(v29 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v29 + 24) >> 1)
      {
        v24 = *(v29 + 16);
        v25 = v17 + 1;
        sub_22D88BB0C();
        v17 = v24;
        v18 = v25;
        v29 = v22;
      }

      ++v14;
      v19 = v28;
      v20 = v29;
      *(v29 + 16) = v18;
      sub_22D883F50(v19, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17);
    }
  }

  __break(1u);

  (*v16)(v0, v9);

  __break(1u);
  return result;
}

uint64_t sub_22D882C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v6 = 0;
  v7 = sub_22D8580D8(&qword_27DA0DAF0, qword_22D8B4370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_22D8B16FC();
  sub_22D84D7DC();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22D84DF5C();
  v14 = type metadata accessor for SubscriptionDecision(0) - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    v37 = v12;
    v39 = (v12 + 32);
    v21 = MEMORY[0x277D84F90];
    v36 = v4;
    do
    {
      v22 = sub_22D85F0D4(v19, v17);
      MEMORY[0x28223BE20](v22);
      *(&v33 - 2) = v17;
      sub_22D8B175C();
      sub_22D84C4F8(v9, 0, 1, v10);
      sub_22D85F138(v17);
      if (sub_22D84D0C0(v9, 1, v10) == 1)
      {
        sub_22D858120(v9, &qword_27DA0DAF0, qword_22D8B4370);
      }

      else
      {
        v38 = v6;
        v23 = v20;
        v24 = *v39;
        (*v39)(v4, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22D88BBE4();
          v21 = v27;
        }

        v25 = *(v21 + 16);
        if (v25 >= *(v21 + 24) >> 1)
        {
          sub_22D88BBE4();
          v21 = v28;
        }

        *(v21 + 16) = v25 + 1;
        v26 = v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25;
        v4 = v36;
        v24(v26, v36, v10);
        v20 = v23;
        v6 = v38;
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v29 = sub_22D8B173C();
  MEMORY[0x28223BE20](v29);
  v31 = v33;
  v30 = v34;
  *(&v33 - 4) = v21;
  *(&v33 - 3) = v31;
  *(&v33 - 2) = v30;
  sub_22D8B175C();
}

uint64_t sub_22D883004(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D8B16EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - v9;
  v10 = sub_22D8580D8(&qword_27DA0DAE8, &unk_22D8B4360);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_22D8B167C();
  v38 = a2;
  sub_22D8B175C();
  v39 = v2;
  sub_22D84C4F8(v12, 0, 1, v13);
  v33 = a1;
  sub_22D8B169C();
  result = type metadata accessor for SubscriptionDecision(0);
  v15 = 0;
  v30 = result;
  v16 = *(result + 20);
  v32 = a2;
  v17 = *(a2 + v16);
  v18 = *(v17 + 16);
  v35 = v17;
  v36 = v18;
  v34 = v6 + 32;
  v19 = (v17 + 56);
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v36 == v15)
    {
      sub_22D8B162C();
      sub_22D884438(v32 + *(v30 + 24), v31);
      return sub_22D8B164C();
    }

    if (v15 >= *(v35 + 16))
    {
      break;
    }

    v21 = *v19;
    v22 = *(v19 - 2);
    MEMORY[0x28223BE20](result);
    *(&v30 - 4) = v23;
    *(&v30 - 3) = v22;
    *(&v30 - 2) = v24;
    *(&v30 - 1) = v21;

    v25 = v39;
    sub_22D8B175C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22D88C02C();
      v20 = v28;
    }

    v27 = *(v20 + 16);
    if (v27 >= *(v20 + 24) >> 1)
    {
      sub_22D88C02C();
      v20 = v29;
    }

    *(v20 + 16) = v27 + 1;
    result = (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v37, v5);
    v19 += 4;
    ++v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D883390()
{
  v0 = sub_22D8B0D8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D8B127C();
  sub_22D8B0D1C();
  (*(v1 + 8))(v3, v0);
  return sub_22D8B166C();
}

uint64_t sub_22D883490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_22D8B16BC();

  return sub_22D8B16DC();
}

uint64_t sub_22D883500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_22D8B172C();

  return sub_22D8B170C();
}

uint64_t sub_22D883560@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v4 = sub_22D8B16FC();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D8B16EC();
  v91 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v70 - v10;
  v11 = sub_22D8580D8(&qword_27DA0DAE8, &unk_22D8B4360);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - v14;
  sub_22D8B168C();
  v16 = sub_22D8B167C();
  if (sub_22D84D0C0(v15, 1, v16) == 1)
  {
    sub_22D858120(v15, &qword_27DA0DAE8, &unk_22D8B4360);
    goto LABEL_6;
  }

  v86 = v6;
  sub_22D8B165C();
  v18 = v17;
  (*(*(v16 - 8) + 8))(v15, v16);
  if (!v18)
  {
LABEL_6:
    if (qword_2814589E8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v25 = sub_22D8B178C();
    sub_22D84C6FC(v25, qword_2814592B0);
    v26 = v81;
    v27 = v82;
    v28 = v83;
    (*(v82 + 16))(v81, a1, v83);
    v29 = sub_22D8B176C();
    v30 = sub_22D8B1C4C();
    if (!os_log_type_enabled(v29, v30))
    {

      (*(v27 + 8))(v26, v28);
      v34 = v80;
LABEL_15:
      v41 = type metadata accessor for SubscriptionDecision(0);
      return sub_22D84C4F8(v34, 1, 1, v41);
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v87 = v32;
    *v31 = 136315138;
    v33 = v79;
    sub_22D8B168C();
    if (sub_22D84D0C0(v33, 1, v16) == 1)
    {
      sub_22D858120(v33, &qword_27DA0DAE8, &unk_22D8B4360);
    }

    else
    {
      v35 = sub_22D8B165C();
      v36 = v33;
      v37 = v35;
      v39 = v38;
      (*(*(v16 - 8) + 8))(v36, v16);
      if (v39)
      {
        (*(v82 + 8))(v81, v83);
LABEL_14:
        v34 = v80;
        v40 = sub_22D84C63C(v37, v39, &v87);

        *(v31 + 4) = v40;
        _os_log_impl(&dword_22D84A000, v29, v30, "Could not re-create use case from biome use case identifier: %s", v31, 0xCu);
        sub_22D84D8A0(v32);
        MEMORY[0x2318D50E0](v32, -1, -1);
        MEMORY[0x2318D50E0](v31, -1, -1);

        goto LABEL_15;
      }
    }

    (*(v82 + 8))(v81, v83);

    v39 = 0xE300000000000000;
    v37 = 7104878;
    goto LABEL_14;
  }

  v84 = v8;
  v77 = a1;
  a1 = v2;
  v19 = sub_22D8B0D8C();
  v85 = &v70;
  v76 = *(v19 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v19);
  v75 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v70 - v75;
  v22 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70 - v23;
  sub_22D8B0D7C();
  if (sub_22D84D0C0(v24, 1, v19) == 1)
  {
    sub_22D858120(v24, qword_27DA0D9F0, &unk_22D8B4DE0);
    a1 = v77;
    goto LABEL_6;
  }

  v43 = v76;
  (*(v76 + 32))(v21, v24, v19);
  v73 = sub_22D8B12BC();
  v74 = &v70;
  v72 = *(v73 - 8);
  v44 = MEMORY[0x28223BE20](v73);
  v46 = &v70 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = *(v43 + 16);
  v48 = &v70 - v75;
  v75 = v21;
  v79 = v19;
  v47(v48, v21, v19);
  v49 = sub_22D8B129C();
  MEMORY[0x28223BE20](v49);
  (*(v51 + 104))(&v70 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D29CC8]);
  v71 = v46;
  sub_22D8B126C();
  sub_22D8B163C();
  v16 = sub_22D8B161C();
  v52 = 0;
  v53 = *(v16 + 16);
  v82 = v91 + 16;
  v83 = v53;
  v54 = (v91 + 8);
  v81 = MEMORY[0x277D84F90];
  v55 = v43;
  while (1)
  {
    v56 = v86;
    if (v83 == v52)
    {
      (*(v55 + 8))(v75, v79);

      v68 = v80;
      (*(v72 + 32))(v80, v71, v73);
      v69 = type metadata accessor for SubscriptionDecision(0);
      *(v68 + *(v69 + 20)) = v81;
      sub_22D884350(v78, v68 + *(v69 + 24));
      return sub_22D84C4F8(v68, 0, 1, v69);
    }

    if (v52 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v57 = v84;
    (*(v91 + 16))(v84, v16 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v52, v86);
    sub_22D883FB4(v57, &v87);
    if (v2)
    {
      break;
    }

    (*v54)(v57, v56);
    v59 = v87;
    v58 = v88;
    v60 = v89;
    v61 = v90;
    if (v88)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D88C104();
        v81 = v66;
      }

      v62 = *(v81 + 2);
      v63 = (v62 + 1);
      if (v62 >= *(v81 + 3) >> 1)
      {
        v76 = *(v81 + 2);
        v77 = (v62 + 1);
        sub_22D88C104();
        v62 = v76;
        v63 = v77;
        v81 = v67;
      }

      ++v52;
      v64 = v81;
      *(v81 + 2) = v63;
      v65 = &v64[32 * v62];
      *(v65 + 4) = v59;
      *(v65 + 5) = v58;
      *(v65 + 6) = v60;
      *(v65 + 7) = v61;
    }

    else
    {
      sub_22D88430C(v87, 0);
      ++v52;
    }
  }

  (*v54)(v57, v56);

  __break(1u);
  return result;
}

uint64_t sub_22D883F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionDecision(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22D883FB4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22D8B16EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-v10];
  v12 = sub_22D8B16AC();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_22D8B16CC();
    if (v17)
    {
      *a2 = v14;
      a2[1] = v15;
      a2[2] = v16;
      a2[3] = v17;
      return;
    }
  }

  v41 = a2;
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v18 = sub_22D8B178C();
  sub_22D84C6FC(v18, qword_2814592B0);
  v19 = *(v6 + 16);
  v19(v11, a1, v5);
  v19(v9, a1, v5);
  v20 = sub_22D8B176C();
  v21 = sub_22D8B1C4C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v22 = 136315394;
    v23 = sub_22D8B16AC();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 7104878;
    }

    v38 = v21;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v40 = v2;
    v27 = *(v6 + 8);
    v27(v11, v5);
    v28 = sub_22D84C63C(v25, v26, &v42);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = sub_22D8B16CC();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 7104878;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v27(v9, v5);
    v33 = sub_22D84C63C(v31, v32, &v42);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_22D84A000, v20, v38, "Could not re-create subscription parameter from biome parameter with name: %s value: %s", v22, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x2318D50E0](v34, -1, -1);
    MEMORY[0x2318D50E0](v22, -1, -1);
  }

  else
  {

    v35 = *(v6 + 8);
    v35(v9, v5);
    v35(v11, v5);
  }

  v36 = v41;
  *v41 = 0u;
  *(v36 + 1) = 0u;
}

uint64_t sub_22D88430C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22D884350(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D884438(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_22D8844A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22D8844BC(uint64_t a1, int a2)
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

uint64_t sub_22D8844FC(uint64_t result, int a2, int a3)
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

uint64_t sub_22D884564(unsigned __int8 a1)
{
  sub_22D8B201C();
  sub_22D8B204C();
  return sub_22D8B205C();
}

uint64_t sub_22D8845D4(uint64_t a1, unsigned __int8 a2)
{
  sub_22D8B201C();
  sub_22D8B204C();
  return sub_22D8B205C();
}

unint64_t ExitReason.description.getter()
{
  result = 0x73736563637573;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

ModelCatalogRuntime::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 6)
  {
    v2 = 6;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22D884734@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_22D884778()
{
  result = qword_27DA0DAF8;
  if (!qword_27DA0DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DAF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Exit(_BYTE *result, int a2, int a3)
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

uint64_t sub_22D884A00(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22D8B1EDC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_22D884A4C()
{
  v0 = sub_22D8B178C();
  sub_22D858E88(v0, qword_27DA0EB28);
  v1 = sub_22D84C6FC(v0, qword_27DA0EB28);
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22D84C6FC(v0, qword_2814592B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_22D884B14()
{
  if (qword_27DA0D3E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA0EB18;

  return v1;
}

uint64_t sub_22D884B70()
{
  v0 = qword_27DA0DB00;

  return v0;
}

uint64_t sub_22D884BA8()
{
  v0 = qword_27DA0DB10;

  return v0;
}

double sub_22D884BE0()
{
  if (qword_27DA0D3F0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_22D884C3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA0D3F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22D8B178C();
  v3 = sub_22D84C6FC(v2, qword_27DA0EB28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22D884CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SubscriptionEvaluationXPCClient.Delegate();

  return MEMORY[0x2821A2850](a1, v5, a3);
}

uint64_t SubscriptionEvaluationXPCClient.__allocating_init()()
{
  sub_22D84DCE0();
  v0 = swift_allocObject();
  SubscriptionEvaluationXPCClient.init()();
  return v0;
}

uint64_t SubscriptionEvaluationXPCClient.init()()
{
  type metadata accessor for SubscriptionEvaluationXPCClient.Delegate();
  *(v0 + 24) = swift_allocObject();
  sub_22D886BD4(&qword_27DA0DB20, 255, type metadata accessor for SubscriptionEvaluationXPCClient.Delegate, &unk_22D8B4678);
  sub_22D8580D8(&qword_27DA0DB28, &unk_22D8B44F0);
  swift_allocObject();

  *(v0 + 16) = sub_22D8B13CC();
  return v0;
}

uint64_t sub_22D884E78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D884E9C, 0, 0);
}

uint64_t sub_22D884E9C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D884F7C;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2821A27B8](v0 + 8, sub_22D8851D4, v3, v5);
}

uint64_t sub_22D884F7C()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  v4 = *v1;
  sub_22D84CED0();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_22D8850A4;
  }

  else
  {

    v6 = sub_22D885088;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22D8850A4()
{
  sub_22D84D198();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22D885108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22D886C70;
  *(v11 + 24) = v10;

  sub_22D8851DC(a4, a5, sub_22D886CA8, v11, a1);
}

void sub_22D8851DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_22D8B19CC();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22D8852B0;
  v10[3] = &unk_2840E3E28;
  v9 = _Block_copy(v10);

  [a5 runEvaluationWithReason:v8 with:v9];
  _Block_release(v9);
}

void sub_22D8852B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t SubscriptionEvaluationXPCClient.deinit()
{

  return v0;
}

uint64_t SubscriptionEvaluationXPCClient.__deallocating_deinit()
{
  SubscriptionEvaluationXPCClient.deinit();
  v0 = sub_22D84DCE0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t dispatch thunk of SubscriptionEvaluationXPCClient.runEvaluation(reason:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22D8854F4;

  return v8(a1, a2);
}

uint64_t sub_22D8854F4()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

id sub_22D885624(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22D8B142C();
  v8 = &v3[OBJC_IVAR____TtCC19ModelCatalogRuntime38SubscriptionEvaluationXPCServiceServer6Server_clientApplicationIdentifier];
  *v8 = v7;
  v8[1] = v9;
  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  sub_22D85ECF4(&unk_2814592E0, &v3[OBJC_IVAR____TtCC19ModelCatalogRuntime38SubscriptionEvaluationXPCServiceServer6Server_manager]);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  v11 = sub_22D8B143C();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_22D88571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_22D8B1B9C();
  sub_22D84C4F8(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;

  sub_22D8930E4();
}

uint64_t sub_22D885824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22D885848, 0, 0);
}

uint64_t sub_22D885848()
{
  v16 = v0;
  if (qword_281458AD8 != -1)
  {
    swift_once();
  }

  sub_22D860388();
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v1 = sub_22D8B178C();
  sub_22D84C6FC(v1, qword_2814592B0);

  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_22D84C63C(v5, v4, &v15);
    _os_log_impl(&dword_22D84A000, v2, v3, "Triggered Subscription Evaluation based on xpc request with reason: %s", v6, 0xCu);
    sub_22D84D8A0(v7);
    MEMORY[0x2318D50E0](v7, -1, -1);
    MEMORY[0x2318D50E0](v6, -1, -1);
  }

  if (sub_22D884A00(MEMORY[0x277D84F90]))
  {
    v8 = sub_22D8868A0(MEMORY[0x277D84F90]);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  v10 = v0[2];
  v9 = v0[3];
  v11 = swift_allocObject();
  v0[6] = v11;
  *(v11 + 16) = v8;
  v12 = swift_task_alloc();
  v0[7] = v12;
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = v11;
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_22D885AF0;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22D885AF0()
{
  sub_22D84D198();
  sub_22D84C734();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_22D885BF8, 0, 0);
}

uint64_t sub_22D885BF8()
{
  sub_22D84D198();
  (*(v0 + 32))(1, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D885C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D8580D8(&qword_27DA0DB48, &qword_22D8B4758);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  v15[1] = qword_281459460;
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], v11, v8);

  sub_22D8580D8(&qword_27DA0D650, &qword_22D8B4760);
  sub_22D886B70();
  sub_22D8B18CC();

  swift_beginAccess();
  sub_22D8B187C();
  swift_endAccess();
}

uint64_t sub_22D885E84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_2814592B0);

  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_22D84C63C(a2, a3, v13);
    _os_log_impl(&dword_22D84A000, v8, v9, "Received Subscription Evaluation completion for xpc request with reason: %s", v10, 0xCu);
    sub_22D84D8A0(v11);
    MEMORY[0x2318D50E0](v11, -1, -1);
    MEMORY[0x2318D50E0](v10, -1, -1);
  }

  swift_beginAccess();
  *(a4 + 16) = MEMORY[0x277D84FA0];

  sub_22D8580D8(&qword_27DA0DB48, &qword_22D8B4758);
  return sub_22D8B1B5C();
}

void sub_22D88610C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22D8B068C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_22D8861DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22D8855E0(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_22D886318()
{
  result = qword_281458A98;
  if (!qword_281458A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458A98);
  }

  return result;
}

uint64_t sub_22D88636C()
{
  swift_beginAccess();
  v0 = qword_2814592C8;
  v1 = qword_2814592C8;
  return v0;
}

void sub_22D8863B8(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_2814592C8;
  qword_2814592C8 = a1;
}

uint64_t sub_22D8864A8(uint64_t a1)
{
  swift_beginAccess();
  qword_2814592D0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22D886558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D88662C;

  return sub_22D885824(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D88662C()
{
  sub_22D84D198();
  sub_22D84C734();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_22D886710(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1E0C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_22D8B201C();

    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_22D8B1F8C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22D8868A0(unint64_t a1)
{
  v1 = a1;
  if (sub_22D884A00(a1))
  {
    sub_22D8580D8(&qword_27DA0DB58, &qword_22D8B4768);
    v2 = sub_22D8B1E0C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_22D884A00(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      sub_22D8ADE18(v3, v17 == 0, v1);
      if (v17)
      {
        result = MEMORY[0x2318D4700](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_22D8B188C();
      sub_22D886BD4(&qword_27DA0DB60, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      result = sub_22D8B196C();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_22D886BD4(&qword_27DA0DB68, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
        if (sub_22D8B19AC())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_22D886AEC(uint64_t a1)
{
  sub_22D8580D8(&qword_27DA0DB48, &qword_22D8B4758);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return sub_22D885E84(a1, v3, v4, v5);
}

unint64_t sub_22D886B70()
{
  result = qword_27DA0DB50;
  if (!qword_27DA0DB50)
  {
    sub_22D85EE94(&qword_27DA0D650, &qword_22D8B4760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DB50);
  }

  return result;
}

uint64_t sub_22D886BD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22D886C70(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *sub_22D886CD8(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v5)
    {
      return v6;
    }

    v7 = *(sub_22D8B12BC() - 8);
    result = a1(&v19, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

      return v6;
    }

    v9 = v19;
    v10 = *(v19 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      sub_22D88BB0C();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = type metadata accessor for SubscriptionDecision(0);
      if (v13 < v10)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v14 = *(v6 + 16);
        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v16;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22D886EC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22D8914D0();
  result = MEMORY[0x2318D44D0](v2, &type metadata for SubscriptionParameter, v3);
  v5 = 0;
  v13 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);

    sub_22D88C94C(&v12, v11, v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D886FB4(uint64_t a1)
{
  result = MEMORY[0x2318D44D0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v13 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  if ((v5 & *(a1 + 64)) != 0)
  {
    while (1)
    {
LABEL_7:
      sub_22D891564();
      v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
      v10 = *v9;
      v11 = v9[1];

      sub_22D851F6C(&v12, v10, v11);
    }
  }

  while (1)
  {
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v6 >= ((v4 + 63) >> 6))
    {

      return v13;
    }

    ++v3;
    if (*(a1 + 64 + 8 * v6))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_22D8870C4()
{
  sub_22D851698();
  sub_22D84DDA0();
  v1 = sub_22D8B12BC();
  sub_22D8915C4(&qword_281458778);
  v2 = sub_22D891528();
  v3 = MEMORY[0x2318D44D0](v2, v1);
  sub_22D8538D4(v3);
  if (v0)
  {
    sub_22D891598();
    do
    {
      sub_22D89158C();
      MEMORY[0x28223BE20](v4);
      sub_22D84DCF0();
      v6 = MEMORY[0x28223BE20](v5);
      v14 = sub_22D84D880(v6, v7, v8, v9, v10, v11, v12, v13, v21);
      v15(v14);
      v16 = sub_22D84C7A4();
      sub_22D88CB20(v16, v17);
      v18 = sub_22D84F900();
      v19(v18);
      sub_22D84F538();
    }

    while (!v20);
  }

  else
  {
    sub_22D84C59C();
  }

  sub_22D8915A4();
  sub_22D84D1C0();
}

void sub_22D8871C4()
{
  sub_22D851698();
  sub_22D84DDA0();
  v1 = sub_22D8B0C6C();
  sub_22D84D680(&qword_281458798, MEMORY[0x282221988], MEMORY[0x2822219A0]);
  v2 = sub_22D891528();
  v3 = MEMORY[0x2318D44D0](v2, v1);
  sub_22D8538D4(v3);
  if (v0)
  {
    sub_22D891598();
    do
    {
      sub_22D89158C();
      MEMORY[0x28223BE20](v4);
      sub_22D84DCF0();
      v6 = MEMORY[0x28223BE20](v5);
      v14 = sub_22D84D880(v6, v7, v8, v9, v10, v11, v12, v13, v21);
      v15(v14);
      v16 = sub_22D84C7A4();
      sub_22D88CE38(v16, v17);
      v18 = sub_22D84F900();
      v19(v18);
      sub_22D84F538();
    }

    while (!v20);
  }

  else
  {
    sub_22D84C59C();
  }

  sub_22D8915A4();
  sub_22D84D1C0();
}

void sub_22D887314(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v44 = *(a3 + 16);
  v7 = 0;
  v46 = sub_22D8B0C6C();
  sub_22D84D7DC();
  v45 = *(v9 + 64);
  v41 = v10 + 16;
  v42 = v10;
  v37 = v10 + 8;
  v40 = v10 + 32;
  v43 = MEMORY[0x277D84F90];
  v34 = a1;
  v35 = a2;
  v36 = v4;
  while (1)
  {
    MEMORY[0x28223BE20](v8);
    sub_22D84EB84();
    v13 = v11 - v12;
    if (v44 == v7)
    {

      return;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    v14 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v15 = *(v42 + 72);
    (*(v42 + 16))(v13, v4 + v14 + v15 * v7, v46);
    v16 = a1(v13);
    if (v3)
    {
      v31 = sub_22D891578();
      v32(v31);

      return;
    }

    if (v16)
    {
      v39 = &v33;
      MEMORY[0x28223BE20](v16);
      sub_22D84EB84();
      v19 = v17 - v18;
      v20 = sub_22D854F6C();
      v38 = v21;
      (v21)(v20);
      v22 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_22D84DD28();
        sub_22D87BBA4(v24, v25, v26);
        v22 = v47;
      }

      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22D87BBA4((v27 > 1), v28 + 1, 1);
        v22 = v47;
      }

      *(v22 + 16) = v28 + 1;
      v43 = v22;
      v8 = v38(v22 + v14 + v28 * v15, v19, v46);
      v4 = v36;
      a1 = v34;
    }

    else
    {
      v29 = sub_22D891578();
      v8 = v30(v29);
    }

    ++v7;
  }

  __break(1u);
}

unint64_t sub_22D8875C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v5 = type metadata accessor for SubscriptionDecision(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v12)
    {

      return v26;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_22D85F0D4(a3 + v14 + v15 * v12, v11);
    v16 = v27(v11);
    if (v3)
    {
      sub_22D85F138(v11);
      v22 = v26;

      return v22;
    }

    if (v16)
    {
      sub_22D883F50(v11, v25);
      v17 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22D87BBF0(0, *(v17 + 16) + 1, 1);
        v17 = v29;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v26 = v20 + 1;
        v24 = v20;
        sub_22D87BBF0((v19 > 1), v20 + 1, 1);
        v21 = v26;
        v20 = v24;
        v17 = v29;
      }

      ++v12;
      *(v17 + 16) = v21;
      v26 = v17;
      result = sub_22D883F50(v25, v17 + v14 + v20 * v15);
    }

    else
    {
      result = sub_22D85F138(v11);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22D8877F0(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v17 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_22D84E234(v8, v19);
    v10 = v5(v19);
    if (v3)
    {
      sub_22D84D8A0(v19);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_22D85F350(v19, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_22D84DD28();
        sub_22D87BC48(v12, v13, v14);
        v9 = v20;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22D87BC48(v15 > 1, v16 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v16 + 1;
      result = sub_22D85F350(v18, v9 + 40 * v16 + 32);
      v5 = v17;
    }

    else
    {
      result = sub_22D84D8A0(v19);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

void *sub_22D88794C()
{
  v1 = type metadata accessor for SubscriptionDecision(0);
  v2 = 0;
  v3 = *(v0 + *(v1 + 20));
  v24 = *(v3 + 16);
  v4 = MEMORY[0x277D84F98];
  v23 = v3;
  for (i = (v3 + 56); ; i += 4)
  {
    if (v24 == v2)
    {
      return v4;
    }

    if (v2 >= *(v23 + 16))
    {
      break;
    }

    v25 = v2;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_22D852D10(v7, v6);
    if (__OFADD__(v4[2], (v11 & 1) == 0))
    {
      goto LABEL_15;
    }

    v12 = v10;
    v13 = v11;
    sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
    if (sub_22D8B1EAC())
    {
      v14 = sub_22D852D10(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_17;
      }

      v12 = v14;
    }

    if (v13)
    {

      v16 = (v4[7] + 16 * v12);
      *v16 = v8;
      v16[1] = v9;
    }

    else
    {
      v4[(v12 >> 6) + 8] |= 1 << v12;
      v17 = (v4[6] + 16 * v12);
      *v17 = v7;
      v17[1] = v6;
      v18 = (v4[7] + 16 * v12);
      *v18 = v8;
      v18[1] = v9;

      v19 = v4[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_16;
      }

      v4[2] = v21;
    }

    v2 = v25 + 1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22D8B1FBC();
  __break(1u);
  return result;
}

uint64_t static SubscriptionParameter.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22D8B1F8C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22D8B1F8C();
    }
  }

  return result;
}

uint64_t SubscriptionParameter.hash(into:)(uint64_t a1)
{
  sub_22D8B1A6C();

  return sub_22D8B1A6C();
}

uint64_t SubscriptionParameter.hashValue.getter()
{
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  return sub_22D8B205C();
}

uint64_t sub_22D887CB0(uint64_t a1)
{
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  return sub_22D8B205C();
}

void static SubscriptionDecision.== infix(_:_:)()
{
  sub_22D851698();
  v1 = v0;
  v3 = v2;
  v4 = sub_22D8B083C();
  sub_22D84D7DC();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22D84CFA4();
  v10 = v9 - v8;
  v11 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v11);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_22D8580D8(&qword_27DA0DB70, &qword_22D8B4798);
  sub_22D84C740();
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  if (sub_22D8B12AC())
  {
    v33 = v10;
    v34 = v6;
    v19 = type metadata accessor for SubscriptionDecision(0);

    v21 = sub_22D886EC8(v20);

    v23 = sub_22D886EC8(v22);
    v24 = sub_22D888030(v21, v23);

    if (v24)
    {
      v25 = *(v19 + 24);
      v26 = *(v15 + 48);
      sub_22D890E88(v3 + v25, v18, &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D890E88(v1 + v25, &v18[v26], &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D8915FC(v18);
      if (!v27)
      {
        sub_22D890E88(v18, v14, &qword_27DA0D608, &unk_22D8B3DB0);
        sub_22D8915FC(&v18[v26]);
        if (!v27)
        {
          v29 = v33;
          v28 = v34;
          (*(v34 + 32))(v33, &v18[v26], v4);
          sub_22D84CF4C();
          sub_22D891090(v30, v31, MEMORY[0x277CC9598]);
          sub_22D8B19AC();
          v32 = *(v28 + 8);
          v32(v29, v4);
          v32(v14, v4);
          sub_22D84D014(v18, &qword_27DA0D608, &unk_22D8B3DB0);
          goto LABEL_12;
        }

        (*(v34 + 8))(v14, v4);
LABEL_11:
        sub_22D84D014(v18, &qword_27DA0DB70, &qword_22D8B4798);
        goto LABEL_12;
      }

      sub_22D8915FC(&v18[v26]);
      if (!v27)
      {
        goto LABEL_11;
      }

      sub_22D84D014(v18, &qword_27DA0D608, &unk_22D8B3DB0);
    }
  }

LABEL_12:
  sub_22D84D1C0();
}

uint64_t sub_22D888030(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v26 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a2 + 56;
  v27 = v7;
  v28 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v29 = (v6 - 1) & v6;
LABEL_13:
      v11 = (*(result + 48) + 32 * (v8 | (v3 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      sub_22D8B201C();

      sub_22D8B1A6C();
      sub_22D8B1A6C();
      v16 = sub_22D8B205C();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      v20 = *(a2 + 48);
      while (1)
      {
        v21 = (v20 + 32 * v18);
        v22 = v21[2];
        v23 = v21[3];
        v24 = *v21 == v13 && v21[1] == v12;
        if (v24 || (sub_22D8B1F8C() & 1) != 0)
        {
          v25 = v22 == v15 && v23 == v14;
          if (v25 || (sub_22D8B1F8C() & 1) != 0)
          {
            break;
          }
        }

        v18 = (v18 + 1) & v19;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v6 = v29;
      v2 = a2;
      v7 = v27;
      result = v28;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v26 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v29 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22D88826C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 56;
    sub_22D84EB34();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    v24 = v5;
    if ((v7 & v6) != 0)
    {
      while (2)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_10:
        v15 = (*(v5 + 48) + 16 * (v11 | (v3 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_22D8B201C();

        sub_22D8B1A6C();
        v18 = sub_22D8B205C();
        v19 = ~(-1 << *(a2 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return;
          }

          v21 = (*(a2 + 48) + 16 * v20);
          if (*v21 == v17 && v21[1] == v16)
          {
            break;
          }

          v23 = sub_22D8B1F8C();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v5 = v24;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      ++v12;
      if (*(v4 + 8 * v3))
      {
        sub_22D84E214();
        v8 = v14 & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void SubscriptionDecision.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22D851698();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22D8B083C();
  sub_22D84D7DC();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22D84CFA4();
  v31 = v30 - v29;
  v32 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v32);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_22D8B12BC();
  sub_22D8915C4(&qword_281458778);
  sub_22D8B197C();
  v36 = type metadata accessor for SubscriptionDecision(0);
  sub_22D890B64(v24, *(v20 + *(v36 + 20)));
  sub_22D890E88(v20 + *(v36 + 24), v35, &qword_27DA0D608, &unk_22D8B3DB0);
  if (sub_22D84D0C0(v35, 1, v25) == 1)
  {
    sub_22D8B203C();
  }

  else
  {
    (*(v27 + 32))(v31, v35, v25);
    sub_22D8B203C();
    sub_22D84CF4C();
    sub_22D891090(v37, v38, MEMORY[0x277CC9588]);
    sub_22D8B197C();
    (*(v27 + 8))(v31, v25);
  }

  sub_22D84D1C0();
}

uint64_t SubscriptionDecision.hashValue.getter()
{
  sub_22D8B201C();
  SubscriptionDecision.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_22D8B205C();
}

uint64_t sub_22D888654(char a1)
{
  sub_22D8B201C();
  MEMORY[0x2318D48F0](a1 & 1);
  return sub_22D8B205C();
}

uint64_t sub_22D8886A8(uint64_t a1)
{
  sub_22D8B201C();
  SubscriptionDecision.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_22D8B205C();
}

uint64_t sub_22D888700(uint64_t a1)
{
  v2 = *v1;
  sub_22D8B201C();
  MEMORY[0x2318D48F0](v2);
  return sub_22D8B205C();
}

uint64_t SubscriptionEvaluator.init()@<X0>(void *a1@<X8>)
{
  sub_22D8B19CC();
  sub_22D84C868();
  v3 = type metadata accessor for BiomeSQLDatabase();
  swift_allocObject();
  v4 = v1;
  v9[3] = v3;
  v9[4] = &off_2840E3628;
  v9[0] = sub_22D86905C(v4);
  sub_22D8B09DC();
  v5 = sub_22D8B09CC();
  v6 = sub_22D8B08FC();
  v7 = sub_22D8B08CC();
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  sub_22D84E234(v9, a1);

  sub_22D890C08(a1);

  return sub_22D84D8A0(v9);
}

void *sub_22D88883C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = SubscriptionEvaluator.evaluate(useCase:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionDecision(uint64_t a1)
{
  result = qword_2814586B0;
  if (!qword_2814586B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SubscriptionEvaluator.evaluate(useCase:)(void *a1)
{
  sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0);
  sub_22D84D7DC();
  v117 = v2;
  v118 = v3;
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v4);
  v114 = (&v99 - v5);
  type metadata accessor for SubscriptionDecision(0);
  sub_22D84D7DC();
  v115 = v7;
  v116 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22D84CFA4();
  v113 = v9 - v8;
  v10 = sub_22D8B0CEC();
  sub_22D84D7DC();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22D84CFA4();
  v16 = v15 - v14;
  v17 = sub_22D8580D8(&qword_27DA0DB90, &unk_22D8B47A8);
  sub_22D84C3FC(v17);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v18);
  v20 = &v99 - v19;
  v21 = sub_22D8B0D8C();
  sub_22D84D7DC();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v104 = v25;
  v26 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  sub_22D8B127C();
  sub_22D8B0D6C();
  v27 = *(v23 + 8);
  v108 = (v23 + 8);
  v109 = v21;
  v27(v26, v21);
  v28 = sub_22D84D0C0(v20, 1, v10);
  v107 = v27;
  if (v28 == 1)
  {
    sub_22D84D014(v20, &qword_27DA0DB90, &unk_22D8B47A8);
    if (qword_2814589E8 == -1)
    {
LABEL_3:
      v29 = sub_22D8B178C();
      sub_22D84C6FC(v29, qword_2814592B0);
      sub_22D84C868();
      v30 = sub_22D8B12BC();
      sub_22D84D7DC();
      MEMORY[0x28223BE20](v31);
      sub_22D84CFA4();
      v33 = sub_22D851E80(v32);
      v34(v33);
      v35 = sub_22D8B176C();
      v36 = sub_22D8B1C6C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = sub_22D84DD3C();
        v118 = v37;
        v38 = sub_22D84CE7C();
        v119 = v38;
        v117 = &v99;
        v120 = v38;
        *v37 = 136446210;
        MEMORY[0x28223BE20](v38);
        sub_22D84EB84();
        v41 = v39 - v40;
        sub_22D8B127C();
        v42 = sub_22D8B0D1C();
        v44 = v43;
        v107(v41, v109);
        v45 = sub_22D855880();
        v46(v45, v30);
        v47 = sub_22D84C63C(v42, v44, &v120);

        v48 = v118;
        *(v118 + 1) = v47;
        _os_log_impl(&dword_22D84A000, v35, v36, "SubscriptionEvaluator found no download condition for use case: %{public}s", v48, 0xCu);
        sub_22D84D8A0(v119);
        sub_22D84C3D8();
        sub_22D84C3D8();
      }

      else
      {

        v73 = sub_22D855880();
        v74(v73, v30);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_25:
    sub_22D862DC0();
    swift_once();
    goto LABEL_3;
  }

  v49 = v106;
  v102 = v16;
  v103 = v12;
  v50 = *(v12 + 32);
  v100 = v10;
  v50(v16, v20, v10);
  if (qword_2814589E8 != -1)
  {
    sub_22D862DC0();
    swift_once();
  }

  v51 = sub_22D8B178C();
  sub_22D84C6FC(v51, qword_2814592B0);
  sub_22D84C868();
  v52 = sub_22D8B12BC();
  v101 = &v99;
  sub_22D84D7DC();
  MEMORY[0x28223BE20](v53);
  sub_22D84CFA4();
  v55 = sub_22D851E80(v54);
  v110 = v57;
  v111 = v56;
  v57(v55);
  v58 = sub_22D8B176C();
  v59 = sub_22D8B1C6C();
  v60 = os_log_type_enabled(v58, v59);
  v112 = v52;
  if (v60)
  {
    v61 = sub_22D84DD3C();
    v62 = sub_22D84CE7C();
    v99 = v62;
    v120 = v62;
    *v61 = 136446210;
    MEMORY[0x28223BE20](v62);
    sub_22D84EB84();
    v65 = v63 - v64;
    LODWORD(v104) = v59;
    sub_22D8B127C();
    v66 = sub_22D8B0D1C();
    v68 = v67;
    v107(v65, v109);
    v69 = sub_22D855880();
    v70(v69, v52);
    v71 = v106;
    v72 = sub_22D84C63C(v66, v68, &v120);

    *(v61 + 4) = v72;
    _os_log_impl(&dword_22D84A000, v58, v104, "SubscriptionEvaluator evaluating download condition for use case: %{public}s", v61, 0xCu);
    v49 = v99;
    sub_22D84D8A0(v99);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  else
  {
    v71 = v49;

    v75 = sub_22D855880();
    v76(v75, v52);
  }

  v78 = v102;
  v77 = v103;
  v79 = sub_22D8B0CDC();
  v80 = v105;
  v82 = SubscriptionEvaluator.evaluate(downloadConditionSQL:)(v79, v81);
  if (v71)
  {
    (*(v77 + 8))(v78, v100);

    return v49;
  }

  v83 = v82;

  v84 = v83[2];
  if (v84)
  {
    v106 = 0;
    v120 = MEMORY[0x277D84F90];
    sub_22D87BBF0(0, v84, 0);
    v85 = 0;
    sub_22D84D24C();
    v108 = v83;
    v109 = v83 + v86;
    v87 = v120;
    v107 = v84;
    while (v85 < v83[2])
    {
      v88 = v114;
      sub_22D890E88(v109 + *(v118 + 9) * v85, v114, &qword_27DA0DB88, &qword_22D8B47A0);
      v89 = *v88;
      v90 = *(v117 + 12);
      v91 = v113;
      v110(v113, v119, v112);
      v92 = v116;
      sub_22D890E88(v88 + v90, v91 + *(v116 + 24), &qword_27DA0D608, &unk_22D8B3DB0);
      *(v91 + *(v92 + 20)) = v89;

      sub_22D84D014(v88, &qword_27DA0DB88, &qword_22D8B47A0);
      v120 = v87;
      v94 = *(v87 + 16);
      v93 = *(v87 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_22D87BBF0((v93 > 1), v94 + 1, 1);
        v87 = v120;
      }

      ++v85;
      *(v87 + 16) = v94 + 1;
      sub_22D84D24C();
      sub_22D883F50(v91, v87 + v95 + *(v96 + 72) * v94);
      v83 = v108;
      if (v107 == v85)
      {

        v80 = v105;
        v78 = v102;
        v77 = v103;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v87 = MEMORY[0x277D84F90];
LABEL_22:
  v120 = MEMORY[0x277D84FA0];
  MEMORY[0x28223BE20](v97);
  *(&v99 - 2) = v80;
  *(&v99 - 1) = &v120;
  v49 = sub_22D8875C0(sub_22D890ED8, (&v99 - 4), v87);
  (*(v77 + 8))(v78, v100);

  return v49;
}

void *SubscriptionEvaluator.evaluate(downloadCondition:)(uint64_t a1)
{
  v1 = sub_22D8B0CDC();
  v3 = SubscriptionEvaluator.evaluate(downloadConditionSQL:)(v1, v2);

  return v3;
}

uint64_t sub_22D889250(uint64_t a1, uint64_t a2, char *a3)
{
  v88 = a3;
  v5 = type metadata accessor for SubscriptionDecision(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v92 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v83 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v83 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - v12;
  v14 = sub_22D8B0E1C();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - v18;
  v20 = sub_22D8B0D8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v89 = v22;
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D8B127C();
  v91 = a1;
  v24 = sub_22D88794C();
  v25 = v94;
  sub_22D86EE34(v23, v24, *(a2 + 56), v19);
  if (v25)
  {

    v28 = *(v21 + 8);
    v27 = (v21 + 8);
    v26 = v28;
    (v28)(v23, v20);
    sub_22D84C4F8(v19, 1, 1, v14);
    sub_22D84D014(v19, &qword_27DA0D9E0, &unk_22D8B41B0);
    v29 = v20;
    if (qword_2814589E8 != -1)
    {
      swift_once();
    }

    v30 = sub_22D8B178C();
    sub_22D84C6FC(v30, qword_2814592B0);
    v32 = v90;
    v31 = v91;
    sub_22D85F0D4(v91, v90);
    v33 = v92;
    sub_22D85F0D4(v31, v92);
    v34 = sub_22D8B176C();
    v35 = sub_22D8B1C6C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v94 = v27;
      v88 = v26;
      v37 = v36;
      v38 = swift_slowAlloc();
      v91 = v38;
      v93 = v38;
      *v37 = 136446466;
      MEMORY[0x28223BE20](v38);
      v40 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      v41 = sub_22D8B0D1C();
      v42 = v32;
      v44 = v43;
      (v88)(v40, v29);
      sub_22D85F138(v42);
      v45 = sub_22D84C63C(v41, v44, &v93);

      *(v37 + 4) = v45;
      *(v37 + 12) = 2082;
      v46 = v92;
      sub_22D88794C();
      v47 = sub_22D8B192C();
      v49 = v48;

      sub_22D85F138(v46);
      v50 = sub_22D84C63C(v47, v49, &v93);

      *(v37 + 14) = v50;
      _os_log_impl(&dword_22D84A000, v34, v35, " - SubscriptionEvaluator omitting subscription for decision: %{public}s %{public}s, did not find usage alias subscription with corresponding argument values", v37, 0x16u);
      v51 = v91;
      swift_arrayDestroy();
      MEMORY[0x2318D50E0](v51, -1, -1);
      MEMORY[0x2318D50E0](v37, -1, -1);
    }

    else
    {

      sub_22D85F138(v33);
      sub_22D85F138(v32);
    }

    return 0;
  }

  else
  {
    v92 = 0;
    v52 = *(v21 + 8);
    v90 = v20;
    v94 = (v21 + 8);
    v85 = v52;
    v52(v23, v20);

    sub_22D84C4F8(v19, 0, 1, v14);
    v53 = v87;
    (*(v87 + 32))(v16, v19, v14);
    v54 = *v88;

    v55 = sub_22D8B0DBC();
    v57 = sub_22D893390(v55, v56, v54);

    if (v57)
    {
      v88 = v16;
      if (qword_2814589E8 != -1)
      {
        swift_once();
      }

      v58 = sub_22D8B178C();
      sub_22D84C6FC(v58, qword_2814592B0);
      v59 = v91;
      v60 = v13;
      sub_22D85F0D4(v91, v13);
      v61 = v86;
      sub_22D85F0D4(v59, v86);
      v62 = sub_22D8B176C();
      v63 = sub_22D8B1C6C();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v90;
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v91 = v67;
        v83 = &v83;
        v93 = v67;
        *v66 = 136446466;
        MEMORY[0x28223BE20](v67);
        v84 = v63;
        v69 = &v83 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_22D8B127C();
        v70 = sub_22D8B0D1C();
        v89 = v14;
        v71 = v53;
        v73 = v72;
        v85(v69, v65);
        sub_22D85F138(v60);
        v74 = sub_22D84C63C(v70, v73, &v93);

        *(v66 + 4) = v74;
        *(v66 + 12) = 2082;
        sub_22D88794C();
        v75 = sub_22D8B192C();
        v77 = v76;

        sub_22D85F138(v61);
        v78 = sub_22D84C63C(v75, v77, &v93);

        *(v66 + 14) = v78;
        _os_log_impl(&dword_22D84A000, v62, v84, " - SubscriptionEvaluator omitting subscription for decision: %{public}s %{public}s, argument values map to previously returned subscription", v66, 0x16u);
        v79 = v91;
        swift_arrayDestroy();
        MEMORY[0x2318D50E0](v79, -1, -1);
        MEMORY[0x2318D50E0](v66, -1, -1);

        (*(v71 + 8))(v88, v89);
      }

      else
      {

        sub_22D85F138(v61);
        sub_22D85F138(v60);
        (*(v53 + 8))(v88, v14);
      }

      return 0;
    }

    else
    {
      v81 = sub_22D8B0DBC();
      sub_22D851F6C(&v93, v81, v82);

      (*(v53 + 8))(v16, v14);
      return 1;
    }
  }
}

void *SubscriptionEvaluator.evaluate(downloadConditionSQL:)(void *a1, uint64_t a2)
{
  sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0);
  sub_22D84D7DC();
  v144 = v6;
  v145 = v5;
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v7);
  v146 = &v133 - v8;
  v9 = sub_22D8B083C();
  sub_22D84D7DC();
  v153 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v142 = &v133 - v15;
  v16 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v17 = sub_22D84C3FC(v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v133 - v24;
  sub_22D84E124(v2, v2[3]);
  v152 = a1;
  v26 = a2;
  sub_22D8690A4(v162);
  sub_22D84E124(v162, v163);
  v27 = sub_22D868FC8();
  if (v27)
  {
    v29 = v27;
    if (qword_2814589E8 != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_3;
  }

  v150 = v23;
  v151 = v25;
  v140 = v20;
  v147 = v9;
  v137 = (v153 + 32);
  v138 = v14;
  v136 = (v153 + 16);
  v42 = (v153 + 8);
  v43 = MEMORY[0x277D84F90];
  v44 = &off_278772000;
  v45 = 0x281458000uLL;
  *&v28 = 136446210;
  v141 = v28;
  *&v28 = 136446466;
  v135 = v28;
  v143 = MEMORY[0x277D84F90];
  do
  {
LABEL_8:
    if (![*(*sub_22D84E124(v162 v163) + 16)])
    {
      sub_22D84D8A0(v162);
      return v143;
    }

    sub_22D84E124(v162, v163);
    v46 = sub_22D868F58();
  }

  while (!v46);
  v47 = v46;
  if (*(v45 + 1280) != -1)
  {
    swift_once();
  }

  v139 = sub_22D8B178C();
  sub_22D84C6FC(v139, qword_281459270);

  v48 = sub_22D8B176C();
  v29 = sub_22D8B1C3C();

  v49 = os_log_type_enabled(v48, v29);
  v134 = v42;
  if (v49)
  {
    v50 = sub_22D84DD3C();
    v51 = sub_22D84CE7C();
    *__dst = v51;
    *v50 = v141;
    v52 = sub_22D8B192C();
    v54 = sub_22D84C63C(v52, v53, __dst);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_22D84A000, v48, v29, "SubscriptionEvaluator received row result: %{public}s", v50, 0xCu);
    sub_22D84D8A0(v51);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  v55 = v150;
  v56 = v47;
  v161 = v43;
  sub_22D84C4F8(v151, 1, 1, v147);
  v26 = 0;
  v152 = v56;
  v57 = (v56 + 8);
  sub_22D84EB34();
  v58 = v43;
  v61 = v60 & v59;
  v63 = (v62 + 63) >> 6;
  v153 = v58;
  while (v61)
  {
LABEL_20:
    sub_22D891564();
    v67 = v66 | (v65 << 6);
    v68 = v152;
    sub_22D8794E8(v152[6] + 40 * v67, v157);
    sub_22D84DB94(v68[7] + 32 * v67, v156);
    v159[0] = v157[0];
    v159[1] = v157[1];
    *&v159[2] = v158;
    sub_22D855C0C(v156, (&v159[2] + 8));
LABEL_21:
    memcpy(__dst, v159, sizeof(__dst));
    if (!*&__dst[24])
    {

      v84 = v140;
      sub_22D890E88(v151, v140, &qword_27DA0D608, &unk_22D8B3DB0);
      v85 = v147;
      if (sub_22D84D0C0(v84, 1, v147) == 1)
      {
        sub_22D84D014(v84, &qword_27DA0D608, &unk_22D8B3DB0);
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        sub_22D84C6FC(v139, qword_2814592B0);
        v86 = sub_22D8B176C();
        v87 = sub_22D8B1C6C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = sub_22D84DD3C();
          v89 = sub_22D84CE7C();
          *__dst = v89;
          *v88 = v141;
          v90 = v153;

          v92 = MEMORY[0x2318D43B0](v91, &type metadata for SubscriptionParameter);
          v57 = v93;

          v94 = sub_22D84C63C(v92, v57, __dst);

          *(v88 + 4) = v94;
          _os_log_impl(&dword_22D84A000, v86, v87, " - SubscriptionEvaluator received row with parameters: %{public}s", v88, 0xCu);
          sub_22D84D8A0(v89);
          sub_22D84C3D8();
          sub_22D84C3D8();

          sub_22D853A2C();
          v42 = v134;
          goto LABEL_56;
        }

        sub_22D853A2C();
        v42 = v134;
LABEL_59:
        v43 = MEMORY[0x277D84F90];
        v44 = &off_278772000;
        v90 = v153;
      }

      else
      {
        v96 = v142;
        (*v137)(v142, v84, v85);
        v57 = v138;
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        sub_22D84C6FC(v139, qword_2814592B0);
        (*v136)(v57, v96, v85);
        v97 = sub_22D8B176C();
        v98 = sub_22D8B1C6C();
        if (!os_log_type_enabled(v97, v98))
        {

          v42 = v134;
          v109 = *v134;
          (*v134)(v57, v85);
          v109(v96, v85);
          sub_22D853A2C();
          goto LABEL_59;
        }

        v99 = swift_slowAlloc();
        v152 = sub_22D84CE7C();
        *__dst = v152;
        *v99 = v135;
        v90 = v153;

        v101 = MEMORY[0x2318D43B0](v100, &type metadata for SubscriptionParameter);
        v103 = v102;

        v104 = sub_22D84C63C(v101, v103, __dst);

        *(v99 + 4) = v104;
        *(v99 + 12) = 2048;
        sub_22D8B081C();
        v106 = v105;
        v107 = v134;
        v108 = *v134;
        (*v134)(v57, v85);
        *(v99 + 14) = v106;
        _os_log_impl(&dword_22D84A000, v97, v98, " - SubscriptionEvaluator received row with parameters: %{public}s, expirationDate: %f", v99, 0x16u);
        sub_22D84D8A0(v152);
        sub_22D84C3D8();
        v42 = v107;
        sub_22D84C3D8();

        v108(v142, v85);
        sub_22D853A2C();
LABEL_56:
        v43 = MEMORY[0x277D84F90];
        v44 = &off_278772000;
      }

      v110 = *(v145 + 48);
      *v95 = v90;
      sub_22D890E88(v151, v95 + v110, &qword_27DA0D608, &unk_22D8B3DB0);

      v111 = v143;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_22D891534();
        v111 = sub_22D88C1D8(v116, v117, v118, v119);
      }

      v113 = v111[2];
      v112 = v111[3];
      v143 = v111;
      if (v113 >= v112 >> 1)
      {
        v120 = sub_22D854F8C(v112);
        v143 = sub_22D88C1D8(v120, v121, v122, v143);
      }

      sub_22D84D014(v151, &qword_27DA0D608, &unk_22D8B3DB0);
      v143[2] = v113 + 1;
      sub_22D84D24C();
      sub_22D890FA0(v146, v115 + v114 + *(v57 + 72) * v113, &qword_27DA0DB88, &qword_22D8B47A0);

      v45 = 0x281458000;
      goto LABEL_8;
    }

    v159[0] = *__dst;
    v159[1] = *&__dst[16];
    *&v159[2] = *&__dst[32];
    sub_22D855C0C(&__dst[40], v156);
    sub_22D8794E8(v159, v157);
    if (!swift_dynamicCast())
    {

      if (qword_2814589E8 != -1)
      {
        sub_22D862DC0();
        swift_once();
      }

      sub_22D84C6FC(v139, qword_2814592B0);
      sub_22D8794E8(v159, v157);
      v123 = sub_22D8B176C();
      v124 = sub_22D8B1C4C();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = sub_22D84DD3C();
        v126 = sub_22D84CE7C();
        v154 = v126;
        *v125 = v141;
        v127 = sub_22D8B1DDC();
        v129 = v128;
        sub_22D890EF8(v157);
        v130 = sub_22D84C63C(v127, v129, &v154);

        *(v125 + 4) = v130;
        _os_log_impl(&dword_22D84A000, v123, v124, "SubscriptionEvaluator received invalid parameter name: %{public}s", v125, 0xCu);
        sub_22D84D8A0(v126);
        sub_22D84C3D8();
        sub_22D84C3D8();
      }

      else
      {

        sub_22D890EF8(v157);
      }

      v131 = v151;
      sub_22D890F4C();
      swift_allocError();
      *v132 = 1;
      swift_willThrow();

      sub_22D850960();
      sub_22D84D014(v131, &qword_27DA0D608, &unk_22D8B3DB0);

      return sub_22D84D8A0(v162);
    }

    v69 = v154;
    v29 = v155;
    v70 = v154 == 0x6974617269707865 && v155 == 0xEE00657461446E6FLL;
    if (v70 || (sub_22D8B1F8C()) && (sub_22D84DB94(v156, v157), sub_22D84DB64(), (swift_dynamicCast()))
    {

      sub_22D8B07EC();
      sub_22D850960();
      v71 = v151;
      v29 = &qword_27DA0D608;
      sub_22D84D014(v151, &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D84C4F8(v55, 0, 1, v147);
      sub_22D890FA0(v55, v71, &qword_27DA0D608, &unk_22D8B3DB0);
    }

    else
    {
      sub_22D84DB94(v156, v157);
      sub_22D84DB64();
      if (swift_dynamicCast())
      {
        v73 = v154;
        v72 = v155;
        goto LABEL_42;
      }

      sub_22D84DB94(v156, v157);
      sub_22D84DB64();
      if (swift_dynamicCast())
      {
        *&v157[0] = 0;
        *(&v157[0] + 1) = 0xE000000000000000;
        if (v154)
        {
          v74 = 1702195828;
        }

        else
        {
          v74 = 0x65736C6166;
        }

        if (v154)
        {
          v75 = 0xE400000000000000;
        }

        else
        {
          v75 = 0xE500000000000000;
        }

        MEMORY[0x2318D4340](v74, v75);

        v72 = *(&v157[0] + 1);
        v73 = *&v157[0];
LABEL_42:
        v149 = v73;
        v148 = v72;
        swift_beginAccess();
        v76 = v153;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22D891534();
          sub_22D88C104();
          v76 = v82;
        }

        v78 = *(v76 + 16);
        v77 = *(v76 + 24);
        v153 = v76;
        if (v78 >= v77 >> 1)
        {
          sub_22D854F8C(v77);
          sub_22D88C104();
          v153 = v83;
        }

        v79 = v153;
        *(v153 + 16) = v78 + 1;
        v80 = (v79 + 32 * v78);
        v80[4] = v69;
        v80[5] = v29;
        v81 = v148;
        v80[6] = v149;
        v80[7] = v81;
        v161 = v79;
        swift_endAccess();
        sub_22D850960();
        v55 = v150;
      }

      else
      {

        sub_22D850960();
      }
    }
  }

  while (1)
  {
    v64 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v64 >= v63)
    {
      v61 = 0;
      memset(v159, 0, 72);
      goto LABEL_21;
    }

    v61 = *(v57 + 8 * v64);
    ++v26;
    if (v61)
    {
      v26 = v64;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_73:
  sub_22D862DC0();
  swift_once();
LABEL_3:
  v30 = sub_22D8B178C();
  sub_22D84C6FC(v30, qword_2814592B0);
  v31 = v29;
  v32 = v26;

  v33 = sub_22D8B176C();
  v34 = sub_22D8B1C4C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = sub_22D84CE7C();
    *__dst = v37;
    *v35 = 138543618;
    v38 = v29;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v39;
    *v36 = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_22D84C63C(v152, v32, __dst);
    _os_log_impl(&dword_22D84A000, v33, v34, "SubscriptionEvaluator received error: %{public}@ while evaluating download condition: %s", v35, 0x16u);
    sub_22D84D014(v36, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84D8A0(v37);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  sub_22D890F4C();
  swift_allocError();
  *v40 = 0;
  swift_willThrow();

  return sub_22D84D8A0(v162);
}

void sub_22D88A9B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) != 1)
  {
    goto LABEL_14;
  }

  sub_22D84DB94(a1 + 32, v15);
  v3 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = v13 == 0xD000000000000013 && 0x800000022D8B8C70 == v14;
  if (v4 || (sub_22D8B1F8C() & 1) != 0)
  {

    v5 = [objc_opt_self() aneArchitectureType];
    v6 = sub_22D8B19FC();
    v8 = v7;

    *(a2 + 24) = v3;
    *a2 = v6;
    *(a2 + 8) = v8;
    return;
  }

  if (v13 == 0xD00000000000001CLL && 0x800000022D8B8C90 == v14)
  {

    goto LABEL_17;
  }

  v10 = sub_22D8B1F8C();

  if (v10)
  {
LABEL_17:
    v11 = sub_22D892804();
    *(a2 + 24) = v3;
    *a2 = v11;
    *(a2 + 8) = v12;
    return;
  }

LABEL_14:
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

void sub_22D88AB20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    sub_22D84DB94(a1 + 32, v21);
    v3 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      v4 = v19 == 0xD000000000000024 && 0x800000022D8B8C20 == v20;
      if (v4 || (sub_22D8B1F8C() & 1) != 0)
      {
        v5 = MobileGestalt_get_current_device();
        if (v5)
        {
          v6 = v5;

          deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

          *(a2 + 24) = MEMORY[0x277D839B0];
          *a2 = deviceSupportsGenerativeModelSystems;
          return;
        }

        __break(1u);
        goto LABEL_29;
      }

      v8 = v19 == 0xD000000000000010 && 0x800000022D8B8C50 == v20;
      if (!v8 && (sub_22D8B1F8C() & 1) == 0)
      {
        v15 = v19 == 0x444970696863 && v20 == 0xE600000000000000;
        if (!v15 && (sub_22D8B1F8C() & 1) == 0)
        {
          *a2 = 0u;
          *(a2 + 16) = 0u;

          return;
        }

        v16 = MobileGestalt_get_current_device();
        if (v16)
        {
          v17 = v16;

          chipID = MobileGestalt_get_chipID();

          *(a2 + 24) = MEMORY[0x277D84A28];
          *a2 = chipID;
          return;
        }

        goto LABEL_30;
      }

      v9 = MobileGestalt_get_current_device();
      if (!v9)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v10 = v9;

      v11 = MobileGestalt_copy_hardwarePlatform_obj();

      if (v11)
      {
        v12 = sub_22D8B19FC();
        v14 = v13;

        *(a2 + 24) = v3;
        *a2 = v12;
        *(a2 + 8) = v14;
        return;
      }
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_22D88AD48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) != 1)
  {
    goto LABEL_14;
  }

  sub_22D84DB94(result + 32, v10);
  v3 = MEMORY[0x277D837D0];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = v8 == 0x6E7265746E497369 && v9 == 0xEF646C6975426C61;
  if (v4 || (sub_22D8B1F8C() & 1) != 0)
  {

    result = [objc_opt_self() isInternalBuild];
    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = result;
    return result;
  }

  if (v8 == 0x7954656369766564 && v9 == 0xEA00000000006570)
  {
  }

  else
  {
    v6 = sub_22D8B1F8C();

    if ((v6 & 1) == 0)
    {
LABEL_14:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  if (qword_2814584F0 != -1)
  {
    swift_once();
  }

  result = sub_22D8795C4(byte_281459268);
  *(a2 + 24) = v3;
  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

double sub_22D88AED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    sub_22D84DB94(a1 + 32, v16);
    if (swift_dynamicCast())
    {
      if ([objc_opt_self() isInternalBuild])
      {
        v3 = v14 == 7169633 && v15 == 0xE300000000000000;
        if (v3 || (sub_22D8B1F8C() & 1) != 0)
        {

          sub_22D8B146C();
          v4 = sub_22D8B145C();
          if ((v4 & 1) == 0)
          {
LABEL_16:
            *(a2 + 24) = MEMORY[0x277D839B0];
            *a2 = v4 & 1;
            return result;
          }

          if (qword_2814589E8 != -1)
          {
            swift_once();
          }

          v6 = sub_22D8B178C();
          sub_22D84C6FC(v6, qword_2814592B0);
          v7 = sub_22D8B176C();
          v8 = sub_22D8B1C6C();
          if (!os_log_type_enabled(v7, v8))
          {
LABEL_15:

            goto LABEL_16;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "GMBypass.gmEligibilityBypass returned true";
LABEL_14:
          _os_log_impl(&dword_22D84A000, v7, v8, v10, v9, 2u);
          MEMORY[0x2318D50E0](v9, -1, -1);
          goto LABEL_15;
        }

        if (v14 == 7169121 && v15 == 0xE300000000000000)
        {

LABEL_26:
          sub_22D8B146C();
          v4 = sub_22D8B144C();
          if ((v4 & 1) == 0)
          {
            goto LABEL_16;
          }

          if (qword_2814589E8 != -1)
          {
            swift_once();
          }

          v13 = sub_22D8B178C();
          sub_22D84C6FC(v13, qword_2814592B0);
          v7 = sub_22D8B176C();
          v8 = sub_22D8B1C6C();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_15;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "GMBypass.admBypassState returned true";
          goto LABEL_14;
        }

        v12 = sub_22D8B1F8C();

        if (v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_22D88B194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) != 2)
  {
    goto LABEL_19;
  }

  sub_22D84DB94(a1 + 32, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_22D84DB94(a1 + 64, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_19:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v5 = sub_22D8ACDF8(v19, v20);
  if (!v5)
  {

    if (qword_2814589E8 != -1)
    {
      swift_once();
    }

    v10 = sub_22D8B178C();
    sub_22D84C6FC(v10, qword_2814592B0);

    v11 = sub_22D8B176C();
    v12 = sub_22D8B1C4C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v21[0] = v14;
      *v13 = 136315138;
      v15 = sub_22D84C63C(v19, v20, v21);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_22D84A000, v11, v12, "SubscriptionEvaluator user defaults UDF could not initialize userDefaults with suiteName: %s", v13, 0xCu);
      sub_22D84D8A0(v14);
      MEMORY[0x2318D50E0](v14, -1, -1);
      MEMORY[0x2318D50E0](v13, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }

  v6 = v5;

  v7 = v19 == 0xD000000000000016 && 0x800000022D8B8C00 == v20;
  if (v7 || (sub_22D8B1F8C() & 1) != 0)
  {
    v8 = sub_22D8B19CC();
    v9 = [v6 objectForKey_];

    if (!v9)
    {

      memset(v21, 0, sizeof(v21));
      sub_22D84D014(v21, &qword_27DA0D590, &unk_22D8B31B0);
      *(a2 + 24) = MEMORY[0x277D839B0];

      *a2 = 1;
      return;
    }

    sub_22D8B1D8C();
    swift_unknownObjectRelease();
    sub_22D84D014(v21, &qword_27DA0D590, &unk_22D8B31B0);
    goto LABEL_26;
  }

  v16 = v19 == 0x44796C6C61636F4CLL && v20 == 0xEF64656C62617369;
  if (v16 || (sub_22D8B1F8C() & 1) != 0)
  {
LABEL_26:
    v17 = sub_22D8B19CC();

    v18 = [v6 BOOLForKey_];

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v18;
    return;
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_22D88B550@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) == 1)
  {
    sub_22D84DB94(result + 32, v16);
    result = swift_dynamicCast();
    if (result)
    {
      v4 = v16[5];
      v3 = v16[6];
      v5 = sub_22D8B114C();
      v6 = *(v5 - 8);
      MEMORY[0x28223BE20](v5);
      v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = sub_22D8B0BDC();
      v10 = sub_22D8580D8(&qword_27DA0DC10, &unk_22D8B4A88);
      MEMORY[0x28223BE20](v10 - 8);
      v12 = &v16[-1] - v11;
      sub_22D872EBC(v4, v3, v9, &v16[-1] - v11);

      if (sub_22D84D0C0(v12, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v12, v5);
        v16[3] = v5;
        v16[4] = sub_22D84D680(&qword_281458780, MEMORY[0x282221C38], MEMORY[0x282221C30]);
        v13 = sub_22D858D74(v16);
        (*(v6 + 16))(v13, v8, v5);
        v14 = sub_22D8B089C();
        sub_22D84D8A0(v16);
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v14 & 1;
        return (*(v6 + 8))(v8, v5);
      }

      result = sub_22D84D014(v12, &qword_27DA0DC10, &unk_22D8B4A88);
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_22D88B7C8()
{
  sub_22D84CFE0();
  if (v3)
  {
    sub_22D84D754();
    if (v5 != v6)
    {
      sub_22D84CEA4();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    v9 = sub_22D8580D8(&qword_27DA0D990, &qword_22D8B4090);
    v10 = sub_22D89154C(v9);
    j__malloc_size(v10);
    sub_22D8522AC();
    *(v10 + 2) = v7;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[8 * v7] <= v12)
    {
      memmove(v12, v13, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v7);
  }
}

void sub_22D88B8A4()
{
  sub_22D84CFE0();
  if (v4)
  {
    sub_22D84D754();
    if (v5 != v6)
    {
      sub_22D84CEA4();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  sub_22D84DB0C();
  if (v3)
  {
    v7 = sub_22D8580D8(&qword_27DA0DC58, &unk_22D8B4AE0);
    v8 = sub_22D89154C(v7);
    sub_22D8519DC(v8);
    sub_22D8522AC();
    v3[2] = v2;
    v3[3] = v9;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = (v3 + 4);
  v11 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22D88B97C()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0DBC0, &qword_22D8B4A08, MEMORY[0x282221930]);
  sub_22D84F5AC();
  sub_22D8B0B6C();
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v7, MEMORY[0x282221938]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BA44()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0D9B8, &qword_22D8B40D0, MEMORY[0x282221D10]);
  sub_22D84F5AC();
  sub_22D8B12BC();
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v7, MEMORY[0x282221CF8]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BB0C()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22D8915E4(v2, v5, &qword_27DA0D9C0, &unk_22D8B40D8);
  v8 = sub_22D84F5AC();
  type metadata accessor for SubscriptionDecision(v8);
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v9, type metadata accessor for SubscriptionDecision);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BBE4()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22D8915E4(v2, v5, &qword_27DA0DC40, &qword_22D8B4AC0);
  sub_22D84F5AC();
  sub_22D8B16FC();
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v8, MEMORY[0x277D20638]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BCBC()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0D9B0, &unk_22D8B40C0, MEMORY[0x282221980]);
  sub_22D84F5AC();
  sub_22D8B0C6C();
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v7, MEMORY[0x282221990]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BD84()
{
  sub_22D84CFE0();
  if (v4)
  {
    sub_22D84D754();
    if (v5 != v6)
    {
      sub_22D84CEA4();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  sub_22D84DB0C();
  if (v3)
  {
    sub_22D8580D8(&qword_27DA0DC30, &qword_22D8B4AA8);
    v7 = swift_allocObject();
    sub_22D8519DC(v7);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v8 / 48);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 48 * v2 <= (v3 + 32))
    {
      v10 = sub_22D854F6C();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D8580D8(&qword_27DA0DC38, &unk_22D8B4AB0);
    sub_22D854F6C();
    swift_arrayInitWithCopy();
  }
}

void sub_22D88BE8C()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22D8915E4(v2, v5, &qword_27DA0DBB8, &qword_22D8B4A00);
  sub_22D84F5AC();
  sub_22D8B150C();
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v8, MEMORY[0x277CEDFA8]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88BF64()
{
  sub_22D84E438();
  if (v3)
  {
    sub_22D84E4C0();
    if (v5 != v6)
    {
      sub_22D84C4DC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_22D88C4B4(*(v0 + 16), v4, &qword_27DA0DC28, &qword_22D8B4AA0, MEMORY[0x282221A40]);
  sub_22D84F5AC();
  sub_22D8B0E1C();
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v7, MEMORY[0x282221A48]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88C02C()
{
  sub_22D84E438();
  if (v4)
  {
    sub_22D84E4C0();
    if (v6 != v7)
    {
      sub_22D84C4DC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22D84DAA8();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22D8915E4(v2, v5, &qword_27DA0DC48, &unk_22D8B4AC8);
  sub_22D84F5AC();
  sub_22D8B16EC();
  sub_22D8516DC();
  sub_22D84D24C();
  if (v1)
  {
    sub_22D84D7C0(v8, MEMORY[0x277D20628]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22D84DE20();
  }
}

void sub_22D88C104()
{
  sub_22D84CFE0();
  if (v4)
  {
    sub_22D84D754();
    if (v5 != v6)
    {
      sub_22D84CEA4();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  sub_22D84DB0C();
  if (v3)
  {
    v7 = sub_22D8580D8(&qword_27DA0DBF8, &qword_22D8B4A68);
    v8 = sub_22D89154C(v7);
    sub_22D8519DC(v8);
    sub_22D8522AC();
    v3[2] = v2;
    v3[3] = v9;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = (v3 + 4);
  v11 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_22D88C1D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_22D88C5AC(v8, v7);
  v10 = *(sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_22D88C7FC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_22D88C318(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_22D84D754();
    if (v13 != v14)
    {
      sub_22D84CEA4();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_22D84C450();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    v17 = sub_22D8580D8(a5, a6);
    v18 = sub_22D89154C(v17);
    j__malloc_size(v18);
    sub_22D8522AC();
    v18[2] = v15;
    v18[3] = v19;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v18 != a4 || &a4[v15 + 4] <= v18 + 4)
    {
      memmove(v18 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22D8580D8(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_22D88C428(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  v5 = sub_22D89154C(v4);
  j__malloc_size(v5);
  sub_22D8522AC();
  v5[2] = a1;
  v5[3] = v6;
  return v5;
}

void *sub_22D88C4B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22D8580D8(a3, a4);
  v8 = sub_22D84F5AC();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22D88C5AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22D8580D8(&qword_27DA0DC00, &unk_22D8B4A70);
  v4 = *(sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_22D88C6B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22D850834(a3, result);
  }

  return result;
}

char *sub_22D88C6D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22D850834(a3, result);
  }

  return result;
}

void sub_22D88C73C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_22D84C740(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_22D8915B0();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_22D8915B0();

    MEMORY[0x2821FE820](v9);
  }
}

uint64_t sub_22D88C7FC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0);

    return MEMORY[0x2821FE828](a3);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3);
  }

  return result;
}

uint64_t sub_22D88C8E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22D8B4780;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22D88C94C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  v11 = sub_22D8B205C();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_22D8B1F8C() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_22D8B1F8C() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v24 = (*(v28 + 48) + 32 * v14);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    *a1 = *v24;
    a1[1] = v25;
    a1[2] = v26;
    a1[3] = v27;

    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_22D88E90C(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

BOOL sub_22D88CB20(char *a1, char *a2)
{
  v29 = a1;
  v4 = sub_22D8B12BC();
  v28 = v2;
  v5 = *v2;
  sub_22D84D680(&qword_281458778, MEMORY[0x282221D00], MEMORY[0x282221D28]);
  v34 = a2;
  v6 = sub_22D8B196C();
  v32 = ~(-1 << *(v5 + 32));
  v33 = v5 + 56;
  v30 = v5;
  v31 = v4 - 8;
  while (1)
  {
    v7 = v6 & v32;
    v8 = *(v33 + (((v6 & v32) >> 3) & 0xFFFFFFFFFFFFFF8));
    v9 = (1 << (v6 & v32)) & v8;
    if (!v9)
    {
      v19 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = isUniquelyReferenced_nonNull_native;
      v22 = *(v4 - 8);
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v24 = &v27 - v23;
      v25 = v34;
      (*(v22 + 16))(&v27 - v23, v34, v4);
      v36 = *v19;
      sub_22D88EAD4(v24, v7, v21);
      *v19 = v36;
      (*(v22 + 32))(v29, v25, v4);
      return v9 == 0;
    }

    v10 = (1 << v7) & v8;
    v35 = &v27;
    v11 = *(v4 - 8);
    MEMORY[0x28223BE20](v6);
    v13 = &v27 - v12;
    v15 = *(v14 + 72) * v7;
    v16 = *(v11 + 16);
    v16(&v27 - v12, *(v30 + 48) + v15, v4);
    sub_22D84D680(&qword_281458770, MEMORY[0x282221D00], MEMORY[0x282221D30]);
    v17 = sub_22D8B19AC();
    v18 = *(v11 + 8);
    v18(v13, v4);
    if (v17)
    {
      break;
    }

    v6 = v7 + 1;
  }

  v18(v34, v4);
  v16(v29, *(v30 + 48) + v15, v4);
  v9 = v10;
  return v9 == 0;
}

BOOL sub_22D88CE38(char *a1, char *a2)
{
  v29 = a1;
  v4 = sub_22D8B0C6C();
  v28 = v2;
  v5 = *v2;
  sub_22D84D680(&qword_281458798, MEMORY[0x282221988], MEMORY[0x2822219A0]);
  v34 = a2;
  v6 = sub_22D8B196C();
  v32 = ~(-1 << *(v5 + 32));
  v33 = v5 + 56;
  v30 = v5;
  v31 = v4 - 8;
  while (1)
  {
    v7 = v6 & v32;
    v8 = *(v33 + (((v6 & v32) >> 3) & 0xFFFFFFFFFFFFFF8));
    v9 = (1 << (v6 & v32)) & v8;
    if (!v9)
    {
      v19 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = isUniquelyReferenced_nonNull_native;
      v22 = *(v4 - 8);
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v24 = &v27 - v23;
      v25 = v34;
      (*(v22 + 16))(&v27 - v23, v34, v4);
      v36 = *v19;
      sub_22D88ED74(v24, v7, v21);
      *v19 = v36;
      (*(v22 + 32))(v29, v25, v4);
      return v9 == 0;
    }

    v10 = (1 << v7) & v8;
    v35 = &v27;
    v11 = *(v4 - 8);
    MEMORY[0x28223BE20](v6);
    v13 = &v27 - v12;
    v15 = *(v14 + 72) * v7;
    v16 = *(v11 + 16);
    v16(&v27 - v12, *(v30 + 48) + v15, v4);
    sub_22D84D680(&qword_281458790, MEMORY[0x282221988], MEMORY[0x2822219A8]);
    v17 = sub_22D8B19AC();
    v18 = *(v11 + 8);
    v18(v13, v4);
    if (v17)
    {
      break;
    }

    v6 = v7 + 1;
  }

  v18(v34, v4);
  v16(v29, *(v30 + 48) + v15, v4);
  v9 = v10;
  return v9 == 0;
}

void sub_22D88D150()
{
  sub_22D851698();
  v2 = v1;
  v25 = v3;
  v4 = sub_22D8B0F6C();
  v24 = v0;
  v5 = *v0;
  sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10], MEMORY[0x282221B20]);
  sub_22D891528();
  v30 = v2;
  v6 = sub_22D8B196C();
  v28 = ~(-1 << *(v5 + 32));
  v29 = v5 + 56;
  v26 = v5;
  v27 = v4 - 8;
  while (1)
  {
    v7 = v6 & v28;
    if (((1 << (v6 & v28)) & *(v29 + (((v6 & v28) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v16 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v4 - 8);
      sub_22D84C5F4();
      MEMORY[0x28223BE20](v19);
      v21 = &v23 - v20;
      v22 = v30;
      (*(v18 + 16))(&v23 - v20, v30, v4);
      v32 = *v16;
      sub_22D88F014(v21, v7, isUniquelyReferenced_nonNull_native);
      *v16 = v32;
      (*(v18 + 32))(v25, v22, v4);
      goto LABEL_7;
    }

    v31 = &v23;
    v8 = *(v4 - 8);
    MEMORY[0x28223BE20](v6);
    v10 = &v23 - v9;
    v12 = *(v11 + 72) * v7;
    v13 = *(v8 + 16);
    v13(&v23 - v9, *(v26 + 48) + v12, v4);
    sub_22D84D680(&qword_2814591F0, MEMORY[0x282221B10], MEMORY[0x282221B28]);
    v14 = sub_22D8B19AC();
    v15 = *(v8 + 8);
    v15(v10, v4);
    if (v14)
    {
      break;
    }

    v6 = v7 + 1;
  }

  v15(v30, v4);
  v13(v25, *(v26 + 48) + v12, v4);
LABEL_7:
  sub_22D84D1C0();
}

uint64_t sub_22D88D450(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DC20, &qword_22D8B4A98);
  result = sub_22D8B1DFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v31 = v2;
  v32 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_22D88C8E8(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_22D8B201C();
    v33 = v17;
    sub_22D8B1A6C();
    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v21 = -1 << *(v5 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v5 + 48) + 32 * v24);
    v3 = v32;
    *v29 = v33;
    v29[1] = v18;
    v29[2] = v19;
    v29[3] = v20;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v12 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22D88D6D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1DFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_22D88C8E8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22D8B201C();
    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}