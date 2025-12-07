uint64_t sub_2090(void *a1, uint64_t a2)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();

  return v4;
}

uint64_t sub_2124(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

void sub_2190(void *a1, id a2, void *a3)
{
  a2;

  a2;

  v6[0] = a2;
  v6[1] = a3;
  a1;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259D0();
  sub_2278(v6);
}

uint64_t sub_22B8(void *a1, uint64_t a2)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259E0();

  return v4;
}

uint64_t sub_23A4(void *a1, uint64_t a2)
{
  a1;

  v3 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2;
}

id sub_2424()
{
  v5 = 0;
  v6 = 0;
  updated = type metadata accessor for SystemUpdateCoordinator(0);
  sub_E13C();
  sub_24C8(updated, v4);
  v3 = v4[0];
  v2 = v4[1];
  v4[0];

  v5 = v3;
  v6 = v2;
  sub_2548(&v5);
  return v3;
}

uint64_t sub_2588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v14 = a1;
  v15 = a2;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v17 = type metadata accessor for SystemVersionList(0);
  v10 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17, v3);
  v20 = &v10 - v10;
  v22 = sub_2124(&qword_30A28, qword_28760);
  v12 = *(*(v22 - 8) + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v14, v15);
  v24 = &v10 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4, v5);
  v25 = &v10 - v13;
  v29 = &v10 - v13;
  v27 = v6;
  v28 = v7;
  sub_ACF8(v8);
  KeyPath = swift_getKeyPath();
  v14;

  v26[2] = v14;
  v26[3] = v15;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();
  v16 = v26[1];

  v18 = v26;
  v26[0] = v16;
  sub_292C();
  sub_258E0();
  sub_29AC(v18);

  sub_29E0(v20);
  v23 = sub_2BE0();
  sub_2B7C(v24, v22, v25);
  sub_2D84(v24);
  sub_2F18(v25, v24);
  sub_3208(v24, v22, v21);
  sub_2D84(v24);
  return sub_2D84(v25);
}

uint64_t sub_27F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v14 = sub_256D0();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14, v9);
  v15 = &v8 - v10;
  (*(v12 + 16))(&v8 - v10);
  v2 = sub_4E58();
  v3 = v12;
  v4 = v14;
  v5 = v2;
  v6 = v15;
  *v11 = v5;
  return (*(v3 + 8))(v6, v4);
}

unint64_t sub_292C()
{
  v2 = qword_30A30;
  if (!qword_30A30)
  {
    type metadata accessor for SystemVersionList(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29E0(uint64_t a1)
{
  v1 = sub_253B0();
  (*(*(v1 - 8) + 8))(a1);
  v4 = type metadata accessor for SystemVersionList(0);
  sub_2B34(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8) & 1);

  v5 = *(v4 + 32);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(a1 + v5);
  }

  else
  {
  }

  return a1;
}

void sub_2B34(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_2BE0()
{
  v2 = qword_30A40;
  if (!qword_30A40)
  {
    sub_2C88(&qword_30A28, qword_28760);
    sub_292C();
    sub_2CFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C88(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_2CFC()
{
  v2 = qword_30A48;
  if (!qword_30A48)
  {
    sub_2C88(&qword_30A50, &qword_27670);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2D84(uint64_t a1)
{
  v1 = sub_253B0();
  (*(*(v1 - 8) + 8))(a1);
  v5 = type metadata accessor for SystemVersionList(0);
  sub_2B34(*(a1 + *(v5 + 20)), *(a1 + *(v5 + 20) + 8) & 1);

  v6 = *(v5 + 32);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(a1 + v6);
  }

  else
  {
  }

  v4 = a1 + *(sub_2124(&qword_30A28, qword_28760) + 36);

  return a1;
}

uint64_t sub_2F18(uint64_t a1, uint64_t a2)
{
  v2 = sub_253B0();
  (*(*(v2 - 8) + 16))(a2, a1);
  v20 = type metadata accessor for SystemVersionList(0);
  v14 = v20[5];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  sub_31C0(v15, v16 & 1);
  v3 = a2 + v14;
  *v3 = v15;
  *(v3 + 8) = v16 & 1;
  v4 = v20[6];
  v17 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v18 = *(a1 + v4 + 8);

  *(v17 + 8) = v18;
  v5 = v20[7];
  v21 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v22 = *(a1 + v5 + 8);

  *(v21 + 8) = v22;
  v23 = v20[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 16))();
  }

  else
  {
    v13 = *(a1 + v23);

    *(a2 + v23) = v13;
  }

  swift_storeEnumTagMultiPayload();
  v7 = sub_2124(&qword_30A28, qword_28760);
  v11 = (a2 + *(v7 + 36));
  v10 = (a1 + *(v7 + 36));
  v9 = *v10;

  *v11 = v9;
  v12 = v10[1];
  v12;
  result = a2;
  v11[1] = v12;
  return result;
}

id sub_31C0(void *a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void *sub_32F0()
{
  v2 = *(v0 + OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView);
  v2;

  return v2;
}

Swift::Void __swiftcall SystemVersionSettingsController.viewDidLoad()()
{
  v25 = "Fatal error";
  v26 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v27 = "SystemVersionSettings/SystemVersionSettingsController.swift";
  ObjectType = swift_getObjectType();
  v61 = 0;
  v57 = 0;
  v52 = 0;
  v35 = 0;
  v28 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v37 = &v12 - v28;
  v2 = sub_25B70();
  v29 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2, v3);
  v34 = &v12 - v29;
  v61 = v0;
  v0;
  v60.receiver = v0;
  v60.super_class = ObjectType;
  objc_msgSendSuper2(&v60, "viewDidLoad");

  sub_2124(&qword_30A60, &qword_27678);
  v31 = *&v40[OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView];
  v32 = *&v40[OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView + 8];
  v31;

  v58 = v31;
  v59 = v32;
  v41 = sub_25780();
  v57 = v41;
  v40;
  v33 = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25B10();
  v36 = *sub_242E8();
  v36;
  sub_3A00();
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = v33 & 1;
  sub_25BA0();
  v38 = v4;
  v39 = sub_25B80();

  [v40 setTitle:v39];

  v41;
  v42 = [v41 view];
  if (v42)
  {
    v24 = v42;
    v22 = v42;
    v52 = v42;

    v40;
    v23 = [v40 view];

    if (v23)
    {
      v21 = v23;
    }

    else
    {
      sub_25E80();
      __break(1u);
    }

    v19 = v21;
    [v21 addSubview:v22];

    v40;
    v20 = [v40 view];

    if (v20)
    {
      v18 = v20;
    }

    else
    {
      sub_25E80();
      __break(1u);
    }

    v13 = v18;
    [v18 bounds];
    v48 = v5;
    v49 = v6;
    v50 = v7;
    v51 = v8;
    v14 = v7;
    v15 = v8;

    v44 = 0;
    v45 = 0;
    v46 = v14;
    v47 = v15;
    [v22 setFrame:{0.0, 0.0, v14, v15}];
    type metadata accessor for AutoresizingMask(0);
    v16 = 2;
    sub_25F00();
    v9 = v16;
    *v10 = 16;
    v10[1] = v9;
    sub_3AB0();
    v17 = v11;
    sub_3AF4();
    sub_25DC0();
    [v22 setAutoresizingMask:v43];
    [v40 addChildViewController:v41];
    v40;
    [v41 didMoveToParentViewController:v40];
  }

  else
  {
  }
}

unint64_t type metadata accessor for AutoresizingMask(uint64_t a1)
{
  v5 = qword_30A98;
  if (!qword_30A98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_30A98);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_3AF4()
{
  v2 = qword_30A68;
  if (!qword_30A68)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30A68);
    return WitnessTable;
  }

  return v2;
}

id SystemVersionSettingsController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_25B80();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName:? bundle:?];

  return v5;
}

id SystemVersionSettingsController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v19 = a1;
  v20 = a2;
  v18 = a3;
  v21 = v3;
  v15 = OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView;
  v4 = sub_2424();
  v5 = &v3[v15];
  *v5 = v4;
  *(v5 + 1) = v6;

  if (a2)
  {
    v10 = sub_25B80();

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v17.receiver = v21;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v11);

  v9;
  v21 = v9;

  return v9;
}

id SystemVersionSettingsController.__allocating_init(coder:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v4;
}

id SystemVersionSettingsController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v12 = a1;
  v13 = v1;
  v7 = OBJC_IVAR___SystemVersionSettingsController_systemVersionSettingsView;
  v2 = sub_2424();
  v3 = &v1[v7];
  *v3 = v2;
  *(v3 + 1) = v4;
  v11.receiver = v13;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  if (v10)
  {
    v10;
    v13 = v10;

    return v10;
  }

  else
  {

    return 0;
  }
}

id SystemVersionSettingsController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_4114(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_4120(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_4264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_448C(uint64_t a1)
{
  sub_4B78();
  sub_4BF8();
  return sub_25FF0();
}

uint64_t sub_4690(uint64_t a1, uint64_t a2)
{
  sub_4B78();
  sub_4BF8();
  return sub_25FE0();
}

uint64_t sub_46D4(uint64_t a1, uint64_t a2)
{
  sub_4B78();
  sub_4BF8();
  return sub_25FC0();
}

uint64_t sub_4718(uint64_t a1, uint64_t a2)
{
  sub_4B78();
  sub_4BF8();
  return sub_25FD0();
}

void sub_48F4(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

unint64_t sub_497C()
{
  v2 = qword_30AA0;
  if (!qword_30AA0)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4A60()
{
  v2 = qword_30AA8;
  if (!qword_30AA8)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4AF8()
{
  v2 = qword_30AB0;
  if (!qword_30AB0)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B78()
{
  v2 = qword_30AB8;
  if (!qword_30AB8)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BF8()
{
  v2 = qword_30AC0;
  if (!qword_30AC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AC0);
    return WitnessTable;
  }

  return v2;
}

void *sub_4C80(id *a1, void *a2)
{
  v3 = *a1;
  *a1;
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_4CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4CC0();
  *a1 = result;
  return result;
}

unint64_t sub_4D40()
{
  v2 = qword_30AC8;
  if (!qword_30AC8)
  {
    sub_2C88(&qword_30AD0, qword_27A20);
    sub_4DD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4DD8()
{
  v2 = qword_30AD8;
  if (!qword_30AD8)
  {
    type metadata accessor for SystemUpdateCoordinator(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30AD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4E58()
{
  sub_4EA4();
  sub_256E0();
  return v1;
}

unint64_t sub_4EA4()
{
  v2 = qword_315B0[0];
  if (!qword_315B0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_315B0);
    return WitnessTable;
  }

  return v2;
}

void sub_4F20(void *a1)
{
  a1;
  sub_4EA4();
  sub_256F0();
}

void (*sub_4FA0(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_4E58();
  return sub_4FFC;
}

void sub_4FFC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    *a1;
    sub_4F20(v2);
    sub_29AC(a1);
  }

  else
  {
    sub_4F20(*a1);
  }
}

uint64_t sub_5084@<X0>(uint64_t a1@<X8>)
{
  v6[0] = a1;
  v6[1] = "Fatal error";
  v6[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v6[3] = "SystemVersionSettings/SystemVersionList.swift";
  v14 = 0;
  v2 = sub_2124(&qword_30AE0, &unk_28050);
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2, v3);
  v10 = v6 - v7;
  v14 = v1;
  v9 = 1;
  sub_25BF0("settings-navigation://com.apple.Settings.General/About/SW_VERSION_SPECIFIER", 0x4BuLL, 1);
  v8 = v4;
  sub_253F0();

  v11 = sub_25400();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v10, v9) == 1)
  {
    sub_25E80();
    __break(1u);
  }

  return (*(v12 + 32))(v6[0], v10, v11);
}

void sub_5240(uint64_t a1@<X8>)
{
  v19 = a1;
  v21 = 0;
  v6 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v22 = &v6 - v6;
  v13 = sub_25400();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21, v2);
  v12 = &v6 - v7;
  v17 = sub_253A0();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21, v3);
  v23 = &v6 - v8;
  v4 = sub_25B70();
  v9 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4, v5);
  v20 = &v6 - v9;
  v18 = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25B10();
  v14 = *sub_242E8();
  v14;
  v24 = [v14 bundleURL];
  sub_253D0();
  (*(v10 + 32))(v23, v12, v13);

  (*(v15 + 104))(v23, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v17);
  sub_5518();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = v18 & 1;
  sub_253C0();
}

void sub_5590()
{
  v32 = 0;
  v22 = 0;
  v7 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v23 = &v6 - v7;
  v14 = sub_25400();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22, v2);
  v13 = &v6 - v8;
  v18 = sub_253A0();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v9 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22, v3);
  v24 = &v6 - v9;
  v10 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22, v4);
  v21 = &v6 - v10;
  v32 = v0;
  v27 = sub_253B0();
  v26 = sub_25F00();
  v20 = v5;
  v19 = 1;
  sub_25BF0("General", 7uLL, 1);
  sub_25B10();
  v15 = *sub_242E8();
  v15;
  v25 = [v15 bundleURL];
  sub_253D0();
  (*(v11 + 32))(v24, v13, v14);

  (*(v16 + 104))(v24, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v18);
  sub_5518();
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v19 & 1;
  sub_253C0();

  sub_3AB0();
}

uint64_t sub_58A0()
{
  v1 = v0 + *(type metadata accessor for SystemVersionList(0) + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_31C0(*v1, v4 & 1);
  sub_2124(&qword_30AE8, &qword_27B40);
  sub_255D0();
  sub_2B34(v3, v4 & 1);
  return v5;
}

uint64_t type metadata accessor for SystemVersionList(uint64_t a1)
{
  v2 = qword_316E0;
  if (!qword_316E0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_59B4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_255F0();
  return v3;
}

void *sub_59F0()
{
  v1 = v0 + *(type metadata accessor for SystemVersionList(0) + 20);
  v3 = *v1;
  sub_31C0(*v1, *(v1 + 8) & 1);
  return v3;
}

void sub_5A40(void *a1, char a2)
{
  sub_31C0(a1, a2 & 1);
  v3 = v2 + *(type metadata accessor for SystemVersionList(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_2B34(v4, v5 & 1);
  sub_2B34(a1, a2 & 1);
}

uint64_t sub_5B08()
{
  type metadata accessor for SystemVersionList(0);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259C0();

  return v1 & 1;
}

uint64_t sub_5B98(char a1)
{
  v2 = (v1 + *(type metadata accessor for SystemVersionList(0) + 24));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259D0();
  sub_5C44(v6);
}

uint64_t sub_5C7C()
{
  type metadata accessor for SystemVersionList(0);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();

  return v1;
}

uint64_t sub_5D24()
{
  v2 = *(v0 + *(type metadata accessor for SystemVersionList(0) + 24));

  return v2 & 1;
}

uint64_t sub_5D70(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SystemVersionList(0) + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_5E20()
{
  type metadata accessor for SystemVersionList(0);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259C0();

  return v1 & 1;
}

uint64_t sub_5EB0(char a1)
{
  v2 = (v1 + *(type metadata accessor for SystemVersionList(0) + 28));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259D0();
  sub_5C44(v6);
}

uint64_t sub_5F68()
{
  type metadata accessor for SystemVersionList(0);

  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();

  return v1;
}

uint64_t sub_6010()
{
  v2 = *(v0 + *(type metadata accessor for SystemVersionList(0) + 28));

  return v2 & 1;
}

uint64_t sub_605C(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SystemVersionList(0) + 28);
  *v3 = a1;
  *(v3 + 8) = a2;
}

void *sub_60B8@<X0>(void *a1@<X8>)
{
  v8 = a1;
  v9 = sub_2124(&qword_30AF8, &unk_27B80);
  v6 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9, v1);
  v2 = (&v5 - v6);
  v10 = (&v5 - v6);
  v3 = type metadata accessor for SystemVersionList(0);
  sub_6178((v7 + *(v3 + 32)), v2);
  sub_255D0();
  return sub_624C(v10);
}

void *sub_6178(uint64_t *a1, void *a2)
{
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_624C(void *a1)
{
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_25640();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_25640();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v2);
  v11 = v4 - v5;
  v15 = sub_256D0();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15, v6);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7);
  sub_25690();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_64AC(uint64_t a1)
{
  v3 = a1;
  v1 = sub_25640();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1, v3);
  v6 = &v3 - v4;
  (*(v5 + 16))();
  return sub_256A0();
}

void *sub_659C(void *a1)
{
  v9 = a1;
  v7 = (*(*(sub_2124(&qword_30AF8, &unk_27B80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v9, v2);
  v8 = (&v6 - v7);
  sub_6178(v3, (&v6 - v7));
  v4 = type metadata accessor for SystemVersionList(0);
  sub_664C(v8, (v1 + *(v4 + 32)));
  return sub_624C(v9);
}

void *sub_664C(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_6738(a2);
    v4 = sub_2124(&qword_30A38, &qword_28060);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_25640();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

void *sub_6738(void *a1)
{
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_25640();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_67D4@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v43 = sub_81CC;
  v53 = &opaque type descriptor for <<opaque return type of View.settingsListAppearance()>>;
  v78 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v89 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v118 = 0;
  v117 = 0;
  v73 = 0;
  v57 = sub_25400();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v29 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v56 = &v29 - v29;
  v62 = sub_253B0();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v30 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73, v2);
  v61 = &v29 - v30;
  v66 = sub_25AC0();
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v31 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v73, v3);
  v65 = (&v29 - v31);
  v5 = type metadata accessor for SystemVersionList(v4);
  v32 = *(v5 - 8);
  v39 = v32;
  v40 = *(v32 + 64);
  v33 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5, v6);
  v42 = &v29 - v33;
  v51 = sub_2124(&qword_30B00, &qword_27BC0);
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v34 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51, v7);
  v49 = &v29 - v34;
  v76 = sub_2124(&qword_30B08, &qword_27BC8);
  v67 = *(v76 - 8);
  v68 = v76 - 8;
  v35 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76, v8);
  v69 = &v29 - v35;
  v87 = sub_2124(&qword_30B10, &qword_27BD0);
  v84 = *(v87 - 8);
  v85 = v87 - 8;
  v36 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87, v9);
  v86 = &v29 - v36;
  v97 = sub_2124(&qword_30B18, &qword_27BD8);
  v91 = *(v97 - 8);
  v92 = v97 - 8;
  v37 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v50, v42);
  v95 = &v29 - v37;
  v38 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v10, v12);
  v96 = &v29 - v38;
  v118 = &v29 - v38;
  v117 = v13;
  sub_7C00(v13, v14);
  v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = swift_allocObject();
  sub_8020(v42, v44 + v41);
  v45 = sub_2124(&qword_30B20, &qword_27BE0);
  v46 = sub_9048();
  sub_9030();
  *&v79[1] = 1;
  sub_25580();
  v52 = sub_90D0();
  sub_25880();
  v15 = v50;
  (*(v47 + 8))(v49, v51);
  v16 = sub_25BF0("com.apple.graphic-icon.about-current-device", 0x2BuLL, v79[1] & 1);
  v17 = v63;
  v18 = v16;
  v19 = v65;
  *v65 = v18;
  v19[1] = v20;
  (*(v17 + 104))();
  (*(v59 + 16))(v61, v15, v62);
  sub_5590();
  v58 = v21;
  sub_5084(v56);
  v115 = v51;
  v116 = v52;
  v90 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_25890();
  (*(v54 + 8))(v56, v57);

  (*(v59 + 8))(v61, v62);
  (*(v63 + 8))(v65, v66);
  (*(v67 + 8))(v69, v76);
  sub_25BF0("OSName Version", 0xEuLL, v79[1] & 1);
  v75 = sub_25750();
  v70 = v22;
  v71 = v23;
  v72 = v24;
  v74 = *sub_242E8();
  v74;
  v112 = 0;
  v113 = 0;
  v114 = *v79 & 0x100;
  v108 = sub_25840();
  v109 = v25;
  v110 = v26;
  v111 = v27;
  v80 = v108;
  v81 = v25;
  v82 = v26;
  v83 = v27;
  v106 = v76;
  v107 = OpaqueTypeConformance2;
  v88 = swift_getOpaqueTypeConformance2();
  v102 = v80;
  v103 = v81;
  v104 = v82 & 1 & v79[1];
  v105 = v83;
  sub_25910();
  sub_9158(v80, v81, v82 & 1);

  (*(v84 + 8))(v86, v87);
  v100 = v87;
  v101 = v88;
  v94 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v95, v97, v96);
  v99 = *(v91 + 8);
  v98 = v91 + 8;
  v99(v95, v97);
  (*(v91 + 16))(v95, v96, v97);
  sub_3208(v95, v97, v93);
  v99(v95, v97);
  return (v99)(v96, v97);
}

uint64_t sub_73C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v24 = a1;
  v44 = a2;
  v31 = &unk_29FD0;
  v52 = &opaque type descriptor for <<opaque return type of View.visibilityTransition(when:duration:)>>;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v50 = sub_2124(&qword_30B68, &qword_27C08);
  v19 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50, v4);
  v49 = &v18 - v19;
  v63 = sub_2124(&qword_30C48, &qword_27E10);
  v54 = *(v63 - 8);
  v55 = v63 - 8;
  v20 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63, v5);
  v61 = &v18 - v20;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v18 - v20, v7);
  v66 = &v18 - v21;
  v85 = &v18 - v21;
  v36 = sub_2124(&qword_30B40, &qword_27BF0);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v22 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36, v8);
  v35 = &v18 - v22;
  v42 = sub_2124(&qword_30C50, &qword_27E18);
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v23 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42, v9);
  v41 = &v18 - v23;
  v56 = sub_2124(&qword_30C58, &unk_27E20);
  v26 = *(*(v56 - 8) + 64);
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v24, v10);
  v62 = &v18 - v25;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v11, &v18 - v25);
  v67 = &v18 - v27;
  v84 = &v18 - v27;
  v83 = v12;
  v82 = a2;
  sub_824C(v13);
  v43 = type metadata accessor for SystemVersionList(0);
  v14 = (v44 + *(v43 + 24));
  v28 = *v14;
  v29 = *(v14 + 1);

  v80 = v28;
  v81 = v29;
  v45 = sub_2124(&qword_30AF0, &qword_27B78);
  sub_259C0();
  v32 = v79;

  v30 = sub_2C88(&qword_30B38, &qword_27BE8);
  v15 = sub_971C();
  v77 = v30;
  v78 = v15;
  v53 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_858C();
  sub_25860();
  (*(v33 + 8))(v35, v36);
  v38 = sub_257D0();
  v75 = v36;
  v76 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_25940();
  (*(v39 + 8))(v41, v42);
  v57 = sub_C570();
  sub_2B7C(v62, v56, v67);
  sub_C6B4(v62);
  sub_85BC(v49);
  v16 = (v44 + *(v43 + 28));
  v46 = *v16;
  v47 = *(v16 + 1);

  v73 = v46;
  v74 = v47;
  sub_259C0();
  v48 = v72;

  v51 = sub_ABF0();
  sub_858C();
  sub_25860();
  sub_A8D4(v49);
  v71[2] = v50;
  v71[3] = v51;
  v58 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v61, v63, v66);
  v65 = *(v54 + 8);
  v64 = v54 + 8;
  v65(v61, v63);
  sub_C71C(v67, v62);
  v60 = v71;
  v71[0] = v62;
  (*(v54 + 16))(v61, v66, v63);
  v71[1] = v61;
  v70[0] = v56;
  v70[1] = v63;
  v68 = v57;
  v69 = v58;
  sub_8DD4(v60, 2uLL, v70, v59);
  v65(v61, v63);
  sub_C6B4(v62);
  v65(v66, v63);
  return sub_C6B4(v67);
}

uint64_t sub_7C00(uint64_t a1, uint64_t a2)
{
  v2 = sub_253B0();
  (*(*(v2 - 8) + 16))(a2, a1);
  v15 = type metadata accessor for SystemVersionList(0);
  v9 = v15[5];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  sub_31C0(v10, v11 & 1);
  v3 = a2 + v9;
  *v3 = v10;
  *(v3 + 8) = v11 & 1;
  v4 = v15[6];
  v12 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v13 = *(a1 + v4 + 8);

  *(v12 + 8) = v13;
  v5 = v15[7];
  v16 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v17 = *(a1 + v5 + 8);

  *(v16 + 8) = v17;
  v18 = v15[8];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25640();
    (*(*(v6 - 8) + 16))();
  }

  else
  {
    v8 = *(a1 + v18);

    *(a2 + v18) = v8;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_7E38()
{
  v7 = type metadata accessor for SystemVersionList(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;
  v2 = sub_253B0();
  (*(*(v2 - 8) + 8))();
  sub_2B34(*(v0 + v6 + *(v7 + 20)), *(v0 + v6 + *(v7 + 20) + 8) & 1);

  v8 = *(v7 + 32);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_25640();
    (*(*(v3 - 8) + 8))(v5 + v6 + v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_8020(uint64_t a1, uint64_t a2)
{
  v2 = sub_253B0();
  (*(*(v2 - 8) + 32))(a2, a1);
  v8 = type metadata accessor for SystemVersionList(0);
  v3 = a1 + v8[5];
  v4 = a2 + v8[5];
  *v4 = *v3;
  *(v4 + 8) = *(v3 + 8);
  *(a2 + v8[6]) = *(a1 + v8[6]);
  *(a2 + v8[7]) = *(a1 + v8[7]);
  v9 = v8[8];
  v11 = sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25640();
    (*(*(v5 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v9), (a1 + v9), *(*(v11 - 8) + 64));
  }

  return a2;
}

uint64_t sub_81CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SystemVersionList(0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_73C4(a1, v4, a2);
}

uint64_t sub_824C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v15 = 0;
  v17 = sub_93FC;
  v14 = sub_9404;
  v23 = &unk_29FD0;
  v38 = 0;
  v37 = 0;
  v21 = sub_2124(&qword_30B38, &qword_27BE8);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21, v1);
  v2 = &v8 - v9;
  v20 = &v8 - v9;
  v30 = sub_2124(&qword_30B40, &qword_27BF0);
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v11 = *(v24 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30, v3);
  v28 = &v8 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v10, v4);
  v29 = &v8 - v12;
  v38 = &v8 - v12;
  v37 = v5;
  v13 = &v33;
  v34 = v5;
  v16 = type metadata accessor for InstalledSoftwareView(0);
  v6 = sub_969C();
  sub_95D4(v17, v13, &type metadata for Text, v16, &protocol witness table for Text, v6, v2);
  v22 = sub_971C();
  sub_217F0(0);
  (*(v18 + 8))(v20, v21);
  v35 = v21;
  v36 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v28, v30, v29);
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v28, v30);
  (*(v24 + 16))(v28, v29, v30);
  sub_3208(v28, v30, v26);
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t sub_85BC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v50 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v64 = 0;
  v61 = 0;
  v37 = sub_2124(&qword_30B58, &qword_27BF8);
  v38 = *(v37 - 8);
  v39 = v38;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37 - 8, v2);
  v41 = v18 - v40;
  v42 = sub_2124(&qword_30B60, &qword_27C00);
  v43 = *(v42 - 8);
  v44 = v43;
  v46 = *(v43 + 64);
  __chkstk_darwin(v42 - 8, v42);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v18 - v48;
  v4 = __chkstk_darwin(v18 - v48, v3);
  v47 = v18 - v48;
  __chkstk_darwin(v4, v5);
  v49 = v18 - v48;
  v72 = v18 - v48;
  v51 = sub_2124(&qword_30B68, &qword_27C08);
  v53 = *(*(v51 - 8) + 64);
  v6 = __chkstk_darwin(v50, v51);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = v18 - v55;
  v7 = __chkstk_darwin(v6, v18 - v55);
  v54 = v18 - v55;
  v8 = __chkstk_darwin(v7, v18 - v55);
  v56 = v18 - v55;
  v71 = v18 - v55;
  v70 = v1;
  v9 = v1 + *(type metadata accessor for SystemVersionList(v8) + 20);
  v57 = *v9;
  v58 = *(v9 + 8);
  sub_31C0(v57, v58);
  v68 = v57;
  v69 = v58;
  sub_2124(&qword_30AE8, &qword_27B40);
  sub_255D0();
  v59 = v67;
  sub_2B34(v57, v58);
  v60 = sub_D86C();
  if (v60)
  {
    v35 = v60;
    v10 = v41;
    v29 = v60;
    v64 = v60;

    v28 = v18;
    __chkstk_darwin(v18, v11);
    v22 = &v17;
    v27 = v18;
    __chkstk_darwin(v18, v12);
    v24 = &v17;
    v23 = 0;
    v25 = type metadata accessor for InstalledSoftwareView(0);
    v26 = sub_2124(&qword_30B80, &qword_27C10);
    v21 = sub_969C();
    v13 = sub_A7A8();
    sub_A538(sub_ACD8, v22, sub_ACE4, v24, &type metadata for Text, v25, v10, v26, &protocol witness table for Text, v21, v13);

    v30 = sub_A6F4();
    v31 = 1;
    sub_217F0(1);
    (*(v39 + 8))(v41, v37);
    v62 = v37;
    v63 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2B7C(v47, v42, v49);
    v33 = *(v44 + 8);
    v34 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v47, v42);
    v61 = v47;
    v20 = *(v44 + 16);
    v19 = v44 + 16;
    v20(v45, v49, v42);
    sub_3208(v45, v42, v47);
    v33(v45, v42);
    v20(v52, v47, v42);
    (*(v44 + 56))(v52, 0, 1, v42);
    sub_A6A8(v52, v42, v54);
    sub_A8D4(v52);
    sub_A988(v54, v56);
    v33(v47, v42);
    v33(v49, v42);
  }

  else
  {

    v14 = *(v44 + 56);
    v18[1] = 1;
    v14(v52, 1, 1, v42);
    v15 = sub_A6F4();
    v65 = v37;
    v66 = v15;
    swift_getOpaqueTypeConformance2();
    sub_A6A8(v52, v42, v54);
    sub_A8D4(v52);
    sub_A988(v54, v56);
  }

  sub_AABC(v56, v54);
  sub_ABF0();
  sub_3208(v54, v51, v36);
  sub_A8D4(v54);
  return sub_A8D4(v56);
}

uint64_t *sub_8DD4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    v4 = 0;
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9, a2);
    v20 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v6 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v6 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v4;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9, v4);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_25A90();
  return v15;
}

unint64_t sub_9048()
{
  v2 = qword_30B28;
  if (!qword_30B28)
  {
    sub_2C88(&qword_30B20, &qword_27BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_90D0()
{
  v2 = qword_30B30;
  if (!qword_30B30)
  {
    sub_2C88(&qword_30B00, &qword_27BC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

char *sub_919C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v19 = a1;
  v40 = 0;
  v39 = 0;
  v11 = 0;
  v27 = type metadata accessor for InstalledSoftwareView(0);
  v13 = *(*(v27 - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0, v2);
  v29 = &v11 - v12;
  v14 = v12;
  v4 = __chkstk_darwin(v3, &v11 - v12);
  v30 = (&v11 - v14);
  v40 = &v11 - v14;
  v39 = v5;
  v18 = type metadata accessor for SystemVersionList(v4);
  v6 = v19 + *(v18 + 20);
  v15 = *v6;
  v16 = *(v6 + 8);
  sub_31C0(v15, v16 & 1);
  v37 = v15;
  v38 = v16 & 1;
  sub_2124(&qword_30AE8, &qword_27B40);
  sub_255D0();
  v17 = v36;
  sub_2B34(v15, v16 & 1);
  v22 = sub_CA14(v7, v8);

  v9 = (v19 + *(v18 + 24));
  v20 = *v9;
  v21 = *(v9 + 1);

  v34 = v20;
  v35 = v21;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();
  v23 = v31;
  v24 = v32;
  v25 = v33;

  sub_1578C(v22, v23, v24, v25 & 1, v29);
  v28 = sub_969C();
  sub_2B7C(v29, v27, v30);
  sub_C040(v29);
  sub_C1C0(v30, v29);
  sub_3208(v29, v27, v26);
  sub_C040(v29);
  return sub_C040(v30);
}

uint64_t sub_9404@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25750();
  v5 = *sub_242E8();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_25840();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_2B7C(v14, &type metadata for Text, &v24);
  sub_BCC0(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_BF2C(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_3208(&v11, &type metadata for Text, a1);
  sub_BCC0(&v11);
  return sub_BCC0(&v24);
}

uint64_t sub_95D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(a1, a2);
  v13 = &v10 - v11;
  v8(v7);
  return sub_25A60();
}

unint64_t sub_969C()
{
  v2 = qword_30B48;
  if (!qword_30B48)
  {
    type metadata accessor for InstalledSoftwareView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_971C()
{
  v2 = qword_30B50;
  if (!qword_30B50)
  {
    sub_2C88(&qword_30B38, &qword_27BE8);
    sub_969C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B50);
    return WitnessTable;
  }

  return v2;
}

char *sub_97CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v18 = a1;
  v15 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v14 = 0;
  v23 = type metadata accessor for InstalledSoftwareView(0);
  v12 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v18, v15);
  v25 = &v11 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v3, v5);
  v26 = (&v11 - v13);
  v34 = &v11 - v13;
  v33 = v6;
  v32 = v7;

  v8 = type metadata accessor for SystemVersionList(v14);
  v9 = (v15 + *(v8 + 28));
  v16 = *v9;
  v17 = *(v9 + 1);

  v30 = v16;
  v31 = v17;
  sub_2124(&qword_30AF0, &qword_27B78);
  sub_259E0();
  v19 = v27;
  v20 = v28;
  v21 = v29;

  sub_1578C(v18, v19, v20, v21 & 1, v25);
  v24 = sub_969C();
  sub_2B7C(v25, v23, v26);
  sub_C040(v25);
  sub_C1C0(v26, v25);
  sub_3208(v25, v23, v22);
  sub_C040(v25);
  return sub_C040(v26);
}

uint64_t sub_99A0@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_25BF0("Background Security Improvement", 0x1FuLL, 1);
  sub_25750();
  v5 = *sub_242E8();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_25840();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_2B7C(v14, &type metadata for Text, &v24);
  sub_BCC0(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_BF2C(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_3208(&v11, &type metadata for Text, a1);
  sub_BCC0(&v11);
  return sub_BCC0(&v24);
}

uint64_t sub_9B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v27 = a1;
  v33 = sub_BC40;
  v56 = 0;
  v55 = 0;
  v23 = 0;
  v15 = *(type metadata accessor for SystemVersionList(0) - 8);
  v28 = v15;
  v29 = *(v15 + 64);
  v16 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v2);
  v31 = &v15 - v16;
  v37 = sub_25640();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v17 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37, v3);
  v36 = &v15 - v17;
  v41 = sub_2124(&qword_30B80, &qword_27C10);
  v18 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v27, v4);
  v43 = &v15 - v18;
  v19 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5, &v15 - v18);
  v44 = (&v15 - v19);
  v56 = &v15 - v19;
  v55 = v7;
  *&v26[1] = 1;
  sub_25BF0("Background Security Improvements can be [managed in Settings](settings-navigation://com.apple.Settings.PrivacyAndSecurity/BACKGROUND_SECURITY_IMPROVEMENTS).", 0x9CuLL, 1);
  v25 = sub_25750();
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v24 = *sub_242E8();
  v24;
  v52 = 0;
  v53 = 0;
  v54 = *v26 & 0x100;
  v48 = sub_25840();
  v49 = v11;
  v50 = v12;
  v51 = v13;
  v39 = v45;
  v45[0] = v48;
  v45[1] = v11;
  v46 = v12 & 1 & v26[1];
  v47 = v13;
  KeyPath = swift_getKeyPath();
  sub_7C00(v27, v31);
  v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = swift_allocObject();
  sub_8020(v31, v32 + v30);
  sub_25630();
  sub_258E0();
  (*(v34 + 8))(v36, v37);

  sub_BCC0(v39);
  v42 = sub_A7A8();
  sub_2B7C(v43, v41, v44);
  sub_BD08(v43);
  sub_BDDC(v44, v43);
  sub_3208(v43, v41, v40);
  sub_BD08(v43);
  return sub_BD08(v44);
}

uint64_t sub_9FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_25640();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v2);
  v11 = v4 - v5;
  v15 = sub_256D0();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15, v6);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7);
  sub_256B0();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_A184(uint64_t a1)
{
  v3 = a1;
  v1 = sub_25640();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1, v3);
  v6 = &v3 - v4;
  (*(v5 + 16))();
  return sub_256C0();
}

uint64_t sub_A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v19 = a1;
  v23 = a2;
  v39 = 0;
  v38 = 0;
  v20 = sub_2124(&qword_30AF8, &unk_27B80);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20, v4);
  v22 = &v11[-v21];
  v24 = sub_25640();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24, v23);
  v28 = &v11[-v27];
  v39 = a1;
  v38 = v5;
  v30 = sub_253E0();
  v31 = v6;

  v29 = sub_25BF0("settings-navigation", 0x13uLL, 1);
  v32 = v7;

  v36[0] = v30;
  v36[1] = v31;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  if (v31)
  {
    sub_BFD4(v36, &v35);
    if (*(&v37 + 1))
    {
      v14 = &v34;
      v34 = v35;
      v15 = v36;
      v13 = &v33;
      v33 = v37;
      v16 = sub_25C00();
      sub_C014(v13);
      sub_C014(v14);
      sub_BFA8(v15);
      v17 = v16;
      goto LABEL_7;
    }

    sub_C014(&v35);
    goto LABEL_9;
  }

  if (*(&v37 + 1))
  {
LABEL_9:
    sub_BF70(v36);
    v17 = 0;
    goto LABEL_7;
  }

  sub_BFA8(v36);
  v17 = 1;
LABEL_7:
  v12 = v17;

  if ((v12 & 1) == 0)
  {
    return sub_25610();
  }

  v8 = v22;
  v9 = type metadata accessor for SystemVersionList(0);
  sub_6178((v23 + *(v9 + 32)), v8);
  sub_255D0();
  sub_624C(v22);
  sub_25600();
  (*(v25 + 8))(v28, v24);
  return sub_25620();
}

uint64_t sub_A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a7;
  v26 = a1;
  v27 = a2;
  v20 = a3;
  v19 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a8;
  v31 = a9;
  v21 = a10;
  v22 = a11;
  v34 = a5;
  v33 = a6;
  v32 = a8;
  v17 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1, a2);
  v25 = &v17 - v17;
  v18 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(&v17 - v17, v12);
  v24 = &v17 - v18;
  v15 = v14(v13);
  v20(v15);
  return sub_25A70();
}

unint64_t sub_A6F4()
{
  v2 = qword_30B70;
  if (!qword_30B70)
  {
    sub_2C88(&qword_30B58, &qword_27BF8);
    sub_969C();
    sub_A7A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_A7A8()
{
  v2 = qword_30B78;
  if (!qword_30B78)
  {
    sub_2C88(&qword_30B80, &qword_27C10);
    sub_A84C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_A84C()
{
  v2 = qword_30B88;
  if (!qword_30B88)
  {
    sub_2C88(&qword_30B90, &qword_27C18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_A8D4(uint64_t a1)
{
  v3 = sub_2124(&qword_30B60, &qword_27C00);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_A988(const void *a1, void *a2)
{
  v6 = sub_2124(&qword_30B60, &qword_27C00);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30B68, &qword_27C08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_AABC(const void *a1, void *a2)
{
  v6 = sub_2124(&qword_30B60, &qword_27C00);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30B68, &qword_27C08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_ABF0()
{
  v2 = qword_30B98;
  if (!qword_30B98)
  {
    sub_2C88(&qword_30B68, &qword_27C08);
    sub_2C88(&qword_30B58, &qword_27BF8);
    sub_A6F4();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30B98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_ACF8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v56 = 0;
  v37 = 0;
  v23 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v38 = &v22 - v23;
  v31 = sub_25400();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v24 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37, v2);
  v30 = &v22 - v24;
  v35 = sub_253A0();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v25 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37, v3);
  v39 = &v22 - v25;
  v26 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v37, v4);
  v36 = &v22 - v26;
  v46 = type metadata accessor for SystemVersionList(v5);
  v27 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46, v6);
  v48 = &v22 - v27;
  v56 = &v22 - v27;
  v44 = 1;
  sub_25BF0("OSName Version", 0xEuLL, 1);
  sub_25B10();
  v32 = *sub_242E8();
  v32;
  v40 = [v32 bundleURL];
  sub_253D0();
  (*(v28 + 32))(v39, v30, v31);

  (*(v33 + 104))(v39, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v35);
  sub_5518();
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = v44 & 1;
  sub_253C0();

  v41 = *(v46 + 20);
  swift_getKeyPath();
  sub_255F0();
  v7 = v44;
  v8 = v46;
  v9 = v51;
  v10 = v48 + v41;
  *v10 = v50;
  *(v10 + 8) = v9 & 1 & v7;
  v42 = *(v8 + 24);
  v43 = 0;
  v11 = sub_5AB4(0);
  v12 = v43;
  v13 = v11;
  v14 = v46;
  v15 = v48 + v42;
  *v15 = v13 & v44;
  *(v15 + 8) = v16;
  v45 = *(v14 + 28);
  v17 = sub_5DCC(v12 & 1);
  v18 = v46;
  v19 = v48 + v45;
  *v19 = v17 & v44;
  *(v19 + 8) = v20;
  v47 = *(v18 + 32);
  swift_getKeyPath();
  sub_255F0();
  return sub_8020(v48, v49);
}

uint64_t sub_B210(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = sub_253B0();
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else if (a2 == 2147483646)
  {
    v6 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + *(a3 + 24) + 8);
    }

    v3 = v6 - 1;
    if (v6 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_2124(&qword_30AF8, &unk_27B80);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 32), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_B404(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_253B0();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    result = sub_2124(&qword_30AF8, &unk_27B80);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 32), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_B5A0(uint64_t a1)
{
  v6 = sub_253B0();
  if (v1 <= 0x3F)
  {
    v6 = sub_B6E4(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_B780(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_B814(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_B6E4(uint64_t a1)
{
  v5 = qword_30BF8;
  if (!qword_30BF8)
  {
    type metadata accessor for SystemUpdateCoordinator(255);
    v4 = sub_255E0();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_30BF8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_B780(uint64_t a1)
{
  v5 = qword_30C00;
  if (!qword_30C00)
  {
    v4 = sub_259F0();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_30C00);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_B814(uint64_t a1)
{
  v5 = qword_30C08;
  if (!qword_30C08)
  {
    sub_25640();
    v4 = sub_255E0();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_30C08);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_B8C4()
{
  sub_2C88(&qword_30B10, &qword_27BD0);
  sub_2C88(&qword_30B08, &qword_27BC8);
  sub_2C88(&qword_30B00, &qword_27BC0);
  sub_90D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B9D0()
{
  sub_2C88(&qword_30B38, &qword_27BE8);
  sub_971C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_BA58()
{
  v7 = type metadata accessor for SystemVersionList(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;
  v2 = sub_253B0();
  (*(*(v2 - 8) + 8))();
  sub_2B34(*(v0 + v6 + *(v7 + 20)), *(v0 + v6 + *(v7 + 20) + 8) & 1);

  v8 = *(v7 + 32);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_25640();
    (*(*(v3 - 8) + 8))(v5 + v6 + v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_BC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SystemVersionList(0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_A23C(a1, v4, a2);
}

uint64_t sub_BCC0(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_BD08(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = a1 + *(sub_2124(&qword_30B80, &qword_27C10) + 36);

  v4 = *(sub_2124(&qword_30B90, &qword_27C18) + 28);
  v1 = sub_25640();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

uint64_t sub_BDDC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  sub_BF2C(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = a1[3];

  *(a2 + 24) = v7;
  v9 = *(sub_2124(&qword_30B80, &qword_27C10) + 36);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = *(sub_2124(&qword_30B90, &qword_27C18) + 28);
  v2 = sub_25640();
  (*(*(v2 - 8) + 16))(a2 + v9 + v11, a1 + v9 + v11);
  return a2;
}

uint64_t sub_BF2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_BFD4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

char *sub_C040(char *a1)
{

  v4 = type metadata accessor for InstalledSoftwareView(0);
  v5 = *(v4 + 24);
  v7 = sub_25400();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  v3 = &a1[*(v4 + 28)];
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_25640();
    (*(*(v1 - 8) + 8))(v3);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_C1C0(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;

  *a2 = v8;
  v9 = a1[1];

  *(a2 + 8) = v9;
  v10 = a1[2];

  *(a2 + 16) = v10;
  *(a2 + 24) = *(a1 + 24);
  v12 = type metadata accessor for InstalledSoftwareView(0);
  v13 = *(v12 + 24);
  v15 = sub_25400();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1 + v13, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy((a2 + v13), a1 + v13, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))();
    (*(v16 + 56))(a2 + v13, 0, 1, v15);
  }

  v6 = (a2 + *(v12 + 28));
  v7 = (a1 + *(v12 + 28));
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_25640();
    (*(*(v3 - 8) + 16))(v6, v7);
  }

  else
  {
    v5 = *v7;

    *v6 = v5;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_C460(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

unint64_t sub_C570()
{
  v2 = qword_30C60;
  if (!qword_30C60)
  {
    sub_2C88(&qword_30C58, &unk_27E20);
    sub_2C88(&qword_30B40, &qword_27BF0);
    sub_2C88(&qword_30B38, &qword_27BE8);
    sub_971C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30C60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_C6B4(uint64_t a1)
{
  v1 = sub_2124(&qword_30C50, &qword_27E18);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_C71C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2124(&qword_30C50, &qword_27E18);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_2124(&qword_30C58, &unk_27E20);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_C7C8()
{
  v0 = sub_2124(&qword_30C70, &qword_27E30);
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0, v1);
  v9 = &v5 - v5;
  v10 = 0;
  type metadata accessor for InstalledSoftware(0);
  v6 = 1;
  v7 = sub_25BF0("", v10, 1);
  v8 = v2;
  v3 = sub_25440();
  (*(*(v3 - 8) + 56))(v9, v6);
  return sub_2219C(0, v7, v8, v9, v10, 0xF000000000000000);
}

uint64_t sub_C8E0()
{
  v2 = (v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_C948(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_C9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_CA14(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  v5 = (v3 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  v6 = *v5;

  swift_endAccess();
  return v6;
}

void sub_CAA8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v2 = *a1;
  *a2 = sub_CA14(v2, v3);
}

void sub_CB14(uint64_t *a1, id *a2)
{
  v2 = *a1;

  v4 = *a2;
  *a2;
  sub_CB98(v2);
}

uint64_t sub_CB98(uint64_t a1)
{
  v20 = a1;
  v19 = 0;
  v25 = 0;
  v16 = 0;
  v26 = a1;
  v17 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  v18 = &v24;
  swift_beginAccess();
  v21 = *v17;

  swift_endAccess();
  type metadata accessor for InstalledSoftware(0);
  v22 = sub_CF14(v21, v20);

  if (v22)
  {
    v2 = v15;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;
    v4 = v15;

    v13 = v9;
    v5 = __chkstk_darwin(KeyPath, v9);
    v8[2] = v2;
    v8[3] = v6;
    sub_D04C(v5, sub_D020, v8, &type metadata for () + 8, &type metadata for ());
    v14 = v3;

    v10 = v14;
  }

  else
  {

    v9[0] = &v15[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS];
    v9[1] = &v23;
    swift_beginAccess();
    *v9[0] = v20;

    swift_endAccess();
    v10 = v16;
  }
}

uint64_t sub_CDA4(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_25500();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v2 = __chkstk_darwin(v7, v1);
  v11 = &v5 - v3;
  v16 = v2;
  v15 = *(v5 + class metadata base offset for KeyPath + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v3, v6 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v8 = &v13;
  v13 = v6;
  sub_D264();
  sub_254C0();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_CF14(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_25F20();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t sub_CF8C(uint64_t a1, uint64_t a2)
{

  v5 = (a1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS);
  swift_beginAccess();
  *v5 = a2;

  return swift_endAccess();
}

uint64_t sub_D04C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_25500();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = __chkstk_darwin(v18, v19);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + class metadata base offset for KeyPath + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_D264();
  v8 = v22;
  sub_254B0();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_D264()
{
  v2 = qword_30C80;
  if (!qword_30C80)
  {
    type metadata accessor for SystemUpdateCoordinator(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30C80);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SystemUpdateCoordinator(uint64_t a1)
{
  v2 = qword_317A0;
  if (!qword_317A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t (*sub_D358(void *a1))()
{
  v8 = sub_D5A4(0x30uLL, 3737);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_25500();
  v5 = *(v7 - 8);
  v6 = sub_D5A4(*(v5 + 64), 3737);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_D264();
  sub_254E0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_D518;
}

void sub_D518(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_D5F8(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_D5F8(v4);
    free(v5);
  }

  free(v6);
}

void *sub_D5A4(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_D5F8(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_25500();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11, v1);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_D264();
  sub_254D0();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_D744()
{
  v2 = (v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_D7AC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_D82C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_D86C()
{
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  return v4;
}

void sub_D900(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = sub_D86C();
}

void sub_D96C(void *a1, id *a2)
{
  sub_1531C(a1, &v5);
  v4 = v5;
  v3 = *a2;
  *a2;
  sub_D9E4(v4);
}

uint64_t sub_D9E4(uint64_t a1)
{
  v20 = a1;
  v27 = 0;
  v16 = 0;
  v28 = a1;
  v17 = (v1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  v18 = &v26;
  swift_beginAccess();
  v19 = *v17;

  swift_endAccess();
  v25 = v19;
  v24 = v20;
  sub_2124(&qword_30C90, &qword_27E88);
  v21 = &v25;
  v22 = sub_DC0C();
  sub_DC3C(&v25);
  if (v22)
  {
    v2 = v15;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;
    v4 = v15;

    v13 = v9;
    v5 = __chkstk_darwin(KeyPath, v9);
    v8[2] = v2;
    v8[3] = v6;
    sub_D04C(v5, sub_DCF8, v8, &type metadata for () + 8, &type metadata for ());
    v14 = v3;

    v10 = v14;
  }

  else
  {

    v9[0] = &v15[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate];
    v9[1] = &v23;
    swift_beginAccess();
    *v9[0] = v20;

    swift_endAccess();
    v10 = v16;
  }
}

uint64_t sub_DC68(uint64_t a1, uint64_t a2)
{

  v4 = (a1 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate);
  swift_beginAccess();
  *v4 = a2;

  return swift_endAccess();
}

uint64_t (*sub_DD24(void *a1))()
{
  v8 = sub_D5A4(0x30uLL, 26802);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_25500();
  v5 = *(v7 - 8);
  v6 = sub_D5A4(*(v5 + 64), 26802);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_CDA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_D264();
  sub_254E0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_DEE4;
}

void sub_DEE4(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_DF70(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_DF70(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_DF70(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_25500();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11, v1);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_D264();
  sub_254D0();

  return (*(v8 + 8))(v10, v11);
}

void *sub_E0AC()
{
  v2 = *(v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_suClient);
  v2;
  return v2;
}

void *sub_E0F4()
{
  v2 = *(v0 + OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_clientQueue);
  v2;
  return v2;
}

char *sub_E164()
{
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v17 = "SystemVersionSettings/SystemUpdateCoordinator.swift";
  ObjectType = swift_getObjectType();
  v43 = 0;
  v40 = 0;
  v19 = (*(*(sub_25D30() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v34 = &v13 - v19;
  v20 = (*(*(sub_25D20() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40, v2);
  v33 = &v13 - v20;
  v3 = sub_25AB0();
  v21 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3, v4);
  v32 = &v13 - v21;
  v22 = (*(*(sub_2124(&qword_30C70, &qword_27E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v40, v5);
  v25 = &v13 - v22;
  v43 = v0;
  type metadata accessor for InstalledSoftware(v6);
  v39 = 1;
  v23 = sub_25BF0("", v40, 1);
  v24 = v7;
  v8 = sub_25440();
  (*(*(v8 - 8) + 56))(v25, v39);
  v27 = sub_2219C(0, v23, v24, v25, v40, 0xF000000000000000);
  v26 = v43;
  swift_getObjectType();
  sub_C9CC(v27, &v26[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedOS]);
  v28 = v43;
  swift_getObjectType();
  v29 = &SystemVersionSettingsController__metaData;
  sub_D82C(v40, &v28[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator__installedSecurityUpdate]);
  *&v43[v29[44].base_prots] = v40;
  sub_254F0();
  v35 = v43;
  sub_E5EC();
  v30 = sub_25BF0("com.apple.SoftwareUpdateUI.SystemVersionSettings.SystemUpdateCoordinator.clientQueue", 0x54uLL, v39 & 1);
  v31 = v9;
  sub_25AA0();
  sub_E668();
  sub_E708(v34);
  v10 = sub_25D40();
  v37 = &SystemVersionSettingsController__metaData;
  *&v35[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_clientQueue] = v10;
  v36 = v43;
  sub_E774();
  v38 = *&v43[v37[44].base_props];
  v38;
  v41 = sub_E7D8(v40, v38, v39);
  if (v41)
  {
    v14 = v41;
  }

  else
  {
    sub_25E80();
    __break(1u);
  }

  v11 = ObjectType;
  *&v36[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_suClient] = v14;
  v42.receiver = v43;
  v42.super_class = v11;
  v13 = objc_msgSendSuper2(&v42, "init");
  v13;
  v43 = v13;
  sub_E828();

  return v13;
}

unint64_t sub_E5EC()
{
  v2 = qword_30CA8;
  if (!qword_30CA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30CA8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_E668()
{
  sub_126AC(0);
  sub_25D20();
  sub_15214();
  sub_2124(&qword_30D98, &unk_28030);
  sub_15294();
  return sub_25E40();
}

uint64_t sub_E708@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = sub_25D30();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t sub_E774()
{
  v2 = qword_30CB0;
  if (!qword_30CB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30CB0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_E828()
{
  v11 = &unk_27EA0;
  v14 = 0;
  v1 = sub_2124(&qword_30CB8, &qword_27E90);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1, v2);
  v12 = &v9 - v9;
  v14 = v0;
  v10 = 0;
  v3 = sub_25CF0();
  (*(*(v3 - 8) + 56))(v12, 1);
  v0;
  v4 = swift_allocObject();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v0;
  v13 = sub_115E0(v5, v5, v7, v6, v4, &type metadata for () + 8);
  sub_11B70(v12);
}

uint64_t sub_E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[9] = 0;
  sub_2124(&qword_30C70, &qword_27E30);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[3] = a4;

  return _swift_task_switch(sub_EAD4, 0);
}

uint64_t sub_EAD4()
{
  *(v0 + 16) = v0;
  v1 = objc_opt_self();
  *(v0 + 32) = 0;
  v42 = [v1 documentationDataForInstalledUpdateType:0 error:v0 + 32];
  v41 = *(v0 + 32);
  v41;

  if (v42)
  {
    v39 = v42;
  }

  else
  {
    sub_25390();

    swift_willThrow();

    v39 = 0;
  }

  *(v40 + 104) = v39;
  v36 = *(v40 + 96);
  *(v40 + 40) = v39;
  type metadata accessor for InstalledSoftware(0);
  v34 = sub_F960(0);
  v35 = v2;
  v37 = sub_25440();
  v38 = *(*(v37 - 8) + 56);
  v38(v36, 1);
  v39;
  if (v39)
  {
    v33 = [v39 readmeSummary];
    if (v33)
    {
      v27 = sub_25410();
      v28 = v3;

      v29 = v27;
      v30 = v28;
    }

    else
    {
      v29 = 0;
      v30 = 0xF000000000000000;
    }

    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0xF000000000000000;
  }

  v25 = sub_2219C(0, v34, v35, *(v40 + 96), v31, v32);
  *(v40 + 112) = v25;
  *(v40 + 48) = v25;
  v26 = swift_allocObject();
  *(v40 + 120) = v26;
  *(v40 + 56) = v26 + 16;
  *(v26 + 16) = 0;
  if ([objc_opt_self() isSplatOnlyUpdateInstalled])
  {
    v4 = objc_opt_self();
    *(v40 + 64) = 0;
    v24 = [v4 documentationDataForInstalledUpdateType:1 error:v40 + 64];
    v23 = *(v40 + 64);
    v23;

    if (v24)
    {
      v22 = v24;
    }

    else
    {
      sub_25390();

      swift_willThrow();

      v22 = 0;
    }

    v19 = *(v40 + 88);
    *(v40 + 72) = v22;
    v20 = sub_F960(1u);
    v21 = v5;
    (v38)(v19, 1, 1, v37);
    v22;
    if (v22)
    {
      v18 = [v22 readmeSummary];
      if (v18)
      {
        v12 = sub_25410();
        v13 = v6;

        v14 = v12;
        v15 = v13;
      }

      else
      {
        v14 = 0;
        v15 = 0xF000000000000000;
      }

      v16 = v14;
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0xF000000000000000;
    }

    *(v26 + 16) = sub_2219C(1, v20, v21, *(v40 + 88), v16, v17);
  }

  v9 = *(v40 + 80);
  sub_25CD0();
  v9;

  v10 = swift_task_alloc();
  *(v40 + 128) = v10;
  v10[2] = v9;
  v10[3] = v25;
  v10[4] = v26;
  sub_113C0();
  v11 = swift_task_alloc();
  *(v40 + 136) = v11;
  *v11 = *(v40 + 16);
  v11[1] = sub_F324;

  return sub_113D4(v8, &type metadata for () + 8, sub_130B8, v10);
}

uint64_t sub_F324()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v3 = sub_F64C;
  }

  else
  {
    v5 = *(v6 + 64);

    v3 = sub_F52C;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_F52C()
{
  v3 = *(v0 + 104);
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_F64C()
{
  v2 = *(v0 + 80);
  *(v0 + 16) = v0;
}

uint64_t sub_F710()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_F760(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_F838;

  return sub_E9A4(a1, v6, v7, v8);
}

uint64_t sub_F838()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_F960(unsigned int a1)
{
  v74 = a1;
  v66 = "Fatal error";
  v67 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v68 = "SystemVersionSettings/SystemUpdateCoordinator.swift";
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v97 = 0;
  v98 = 0;
  v89 = 0;
  v90 = 0;
  v71 = 0;
  v69 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v2);
  v70 = &v15 - v69;
  v72 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71, v3);
  v73 = &v15 - v72;
  v75 = sub_25B50();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v74, v4);
  v79 = &v15 - v78;
  v80 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5, &v15 - v78);
  v81 = &v15 - v80;
  v82 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7, &v15 - v80);
  v83 = &v15 - v82;
  v103 = v9 & 1;
  v102 = v1;
  v84 = _CFCopySystemVersionDictionary();
  if (v84)
  {
    v65 = v84;
    v63 = v84;
    v84;
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v62 = v64;
  if (v64)
  {
    v61 = v62;
    v59 = v62;
    objc_opt_self();
    v60 = swift_dynamicCastObjCClass();
    if (v60)
    {
      v58 = v60;
      v57 = sub_2124(&qword_30CC8, &qword_27EA8);
      v58;
      sub_11D30();
      sub_25F30();

      if (v85)
      {
        v56 = v85;
LABEL_9:
        v55 = v56;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v56 = 0;
    goto LABEL_9;
  }

  v55 = 0;
LABEL_10:
  v54 = v55;
  if (!v55)
  {
    goto LABEL_24;
  }

  v53 = v54;
  v51 = v54;
  v101 = v54;
  v52 = _kCFSystemVersionShortVersionStringKey;
  _kCFSystemVersionShortVersionStringKey;
  if (v52)
  {
    v50 = v52;
  }

  else
  {
    sub_25E80();
    __break(1u);
  }

  v46 = v99;
  v99[0] = v50;
  v45 = type metadata accessor for CFString(0);
  v47 = sub_11CB0();
  sub_25AE0();

  v48 = v99[1];
  v49 = v100;
  if (!v100)
  {

LABEL_24:
    v34 = sub_25BF0("", 0, 1);
    v35 = v13;
    return v34;
  }

  v43 = v48;
  v44 = v49;
  v38 = v49;
  v39 = v48;
  v97 = v48;
  v98 = v49;
  sub_25BF0("ProductBuildVersion", 0x13uLL, 1);
  v40 = v10;
  v94 = sub_25B80();
  sub_25AE0();

  v41 = v95;
  v42 = v96;
  if (v96)
  {
    v36 = v41;
    v37 = v42;
    v31 = v42;
    v27 = v41;
    v89 = v41;
    v90 = v42;

    v25 = 2;
    sub_25B40();
    *&v29[1] = 1;
    v104._countAndFlagsBits = sub_25BF0("OSName ", 7uLL, 1);
    object = v104._object;
    sub_25B30(v104);

    v105._countAndFlagsBits = v39;
    v105._object = v38;
    sub_25B20(v105);
    v106._countAndFlagsBits = sub_25BF0(" (", v25, v29[1] & 1);
    v26 = v106._object;
    sub_25B30(v106);

    v107._countAndFlagsBits = v27;
    v107._object = v31;
    sub_25B20(v107);
    v108._countAndFlagsBits = sub_25BF0(")", 1uLL, v29[1] & 1);
    v28 = v108._object;
    sub_25B30(v108);

    (*(v76 + 16))(v81, v83, v75);
    (*(v76 + 32))(v79, v81, v75);
    (*(v76 + 8))(v83, v75);
    sub_25B60();
    v30 = *sub_242E8();
    v30;
    sub_3A00();
    v86 = 0;
    v87 = 0;
    v88 = *v29 & 0x100;
    v32 = sub_25BA0();
    v33 = v11;

    v34 = v32;
    v35 = v33;
  }

  else
  {

    v16 = 7;
    sub_25B40();
    *&v19[1] = 1;
    v109._countAndFlagsBits = sub_25BF0("OSName ", v16, 1);
    v17 = v109._object;
    sub_25B30(v109);

    v110._countAndFlagsBits = v39;
    v110._object = v38;
    sub_25B20(v110);
    v20 = 0;
    v111._countAndFlagsBits = sub_25BF0("", 0, v19[1] & 1);
    v18 = v111._object;
    sub_25B30(v111);

    (*(v76 + 16))(v81, v83, v75);
    (*(v76 + 32))(v79, v81, v75);
    (*(v76 + 8))(v83, v75);
    sub_25B60();
    v21 = *sub_242E8();
    v21;
    sub_3A00();
    v91 = 0;
    v92 = 0;
    v93 = *v19 & 0x100;
    v22 = sub_25BA0();
    v23 = v12;

    v34 = v22;
    v35 = v23;
  }

  return v34;
}

uint64_t sub_1050C(char *a1, uint64_t a2, uint64_t a3)
{
  v87 = a1;
  v100 = a2;
  v90 = a3;
  v89 = 0;
  v99 = sub_130E8;
  v102 = sub_13130;
  v106 = sub_14F50;
  v108 = sub_14ED4;
  v110 = sub_14F08;
  v113 = sub_14F9C;
  v77 = sub_14FA8;
  v78 = sub_15058;
  v79 = sub_14FDC;
  v80 = sub_15010;
  v81 = sub_150A4;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v96 = sub_255C0();
  v94 = *(v96 - 8);
  v95 = v96 - 8;
  v82 = (v94[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v96, v100);
  v83 = v39 - v82;
  v84 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39 - v82, v5);
  v93 = v39 - v84;
  v132 = a1;
  v131 = v6;
  v88 = v7 + 16;
  v130 = v7 + 16;
  v86 = *&a1[OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator_suClient];
  v86;
  a1;
  v85 = a1;
  [v86 setDelegate:?];
  swift_unknownObjectRelease();

  sub_CB98(v100);
  v91 = &v129;
  v103 = 32;
  swift_beginAccess();
  v92 = *(v90 + 16);

  swift_endAccess();
  sub_D9E4(v92);
  v8 = v93;
  v9 = sub_21358();
  v97 = v94[2];
  v98 = v94 + 2;
  v97(v8, v9, v96);

  v104 = 7;
  v10 = swift_allocObject();
  v11 = v100;
  v105 = v10;
  *(v10 + 16) = v99;
  *(v10 + 24) = v11;

  v117 = sub_255A0();
  v118 = sub_25D00();
  v101 = 17;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v111 = swift_allocObject();
  *(v111 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v105;
  v107 = v12;
  *(v12 + 16) = v102;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v107;
  v114 = v14;
  *(v14 + 16) = v106;
  *(v14 + 24) = v15;
  v116 = sub_2124(&qword_30D78, &qword_28018);
  v112 = sub_25F00();
  v115 = v16;

  v17 = v109;
  v18 = v115;
  *v115 = v108;
  v18[1] = v17;

  v19 = v111;
  v20 = v115;
  v115[2] = v110;
  v20[3] = v19;

  v21 = v114;
  v22 = v115;
  v115[4] = v113;
  v22[5] = v21;
  sub_3AB0();

  if (os_log_type_enabled(v117, v118))
  {
    v69 = sub_25D80();
    v68 = sub_2124(&qword_30D80, &qword_28020);
    v70 = sub_124AC(0, v68, v68);
    v71 = sub_124AC(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v72 = &v123;
    v123 = v69;
    v73 = &v122;
    v122 = v70;
    v74 = &v121;
    v121 = v71;
    sub_12500(2, &v123);
    sub_12500(1, v72);
    v23 = v76;
    v119 = v108;
    v120 = v109;
    sub_12514(&v119, v72, v73, v74);
    v75 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v119 = v110;
      v120 = v111;
      sub_12514(&v119, &v123, &v122, &v121);
      v66 = 0;
      v119 = v113;
      v120 = v114;
      sub_12514(&v119, &v123, &v122, &v121);
      v65 = 0;
      _os_log_impl(&dword_0, v117, v118, "Installed OS: %s", v69, 0xCu);
      sub_12560(v70, 0, v68);
      sub_12560(v71, 1, &type metadata for Any + 8);
      sub_25D60();

      v67 = v65;
    }
  }

  else
  {

    v67 = v76;
  }

  v24 = v83;
  v51 = v67;

  v52 = v94[1];
  v53 = v94 + 1;
  v52(v93, v96);
  v25 = sub_21358();
  v97(v24, v25, v96);

  v63 = sub_255A0();
  v64 = sub_25D00();
  v54 = 17;
  v56 = 7;
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v55 = 32;
  v26 = swift_allocObject();
  v27 = v90;
  v57 = v26;
  *(v26 + 16) = v77;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v57;
  v61 = v28;
  *(v28 + 16) = v78;
  *(v28 + 24) = v29;
  v60 = sub_25F00();
  v62 = v30;

  v31 = v58;
  v32 = v62;
  *v62 = v79;
  v32[1] = v31;

  v33 = v59;
  v34 = v62;
  v62[2] = v80;
  v34[3] = v33;

  v35 = v61;
  v36 = v62;
  v62[4] = v81;
  v36[5] = v35;
  sub_3AB0();

  if (os_log_type_enabled(v63, v64))
  {
    v44 = sub_25D80();
    v43 = sub_2124(&qword_30D80, &qword_28020);
    v45 = sub_124AC(0, v43, v43);
    v46 = sub_124AC(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v47 = &v128;
    v128 = v44;
    v48 = &v127;
    v127 = v45;
    v49 = &v126;
    v126 = v46;
    sub_12500(2, &v128);
    sub_12500(1, v47);
    v37 = v51;
    v124 = v79;
    v125 = v58;
    sub_12514(&v124, v47, v48, v49);
    v50 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v124 = v80;
      v125 = v59;
      sub_12514(&v124, &v128, &v127, &v126);
      v41 = 0;
      v124 = v81;
      v125 = v61;
      sub_12514(&v124, &v128, &v127, &v126);
      v40 = 0;
      _os_log_impl(&dword_0, v63, v64, "Installed Security Update: %s", v44, 0xCu);
      sub_12560(v45, 0, v43);
      sub_12560(v46, 1, &type metadata for Any + 8);
      sub_25D60();

      v42 = v40;
    }
  }

  else
  {

    v42 = v51;
  }

  v39[1] = v42;

  return (v52)(v83, v96);
}

uint64_t sub_11308@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1133C(uint64_t a1)
{
  swift_beginAccess();

  swift_endAccess();
  sub_2124(&qword_30C90, &qword_27E88);
  return sub_25BB0();
}

uint64_t sub_113D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  return _swift_task_switch(sub_11418, 0);
}

uint64_t sub_11418()
{
  *(v0 + 16) = v0;
  *(v0 + 56) = sub_25CC0();
  v1 = sub_25CB0();

  return _swift_task_switch(sub_114B0, v1);
}

uint64_t sub_114B0()
{
  v4 = *(v0 + 32);
  *(v0 + 16) = v0;

  v4(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_115E0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_28000;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_2124(&qword_30CB8, &qword_27E90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56, v6);
  v57 = &v16 - v53;

  v63 = v55;
  v64 = v56;
  sub_12384(v54, v57);
  v58 = sub_25CF0();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_11B70(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_25CE0();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1000;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_25CB0();
    v35 = v7;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v8 = v52;
    v26 = sub_25BD0();
    sub_1279C(v26 + 32, &v63, v47, &v61);
    if (v8)
    {
      __break(1u);
    }

    v25 = v61;

    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v24 = v27;
  if (v27)
  {
    v18 = v24;
    v19 = v24;
  }

  else
  {

    v20 = v63;
    v21 = v64;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v31;
    v13 = v30;
    v22 = v9;
    v9[2] = v47;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v23 = v62;
    }

    v19 = swift_task_create();
  }

  sub_12E00();
  v17 = v14;

  return v17;
}

uint64_t sub_11B70(uint64_t a1)
{
  v3 = sub_25CF0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t type metadata accessor for CFString(uint64_t a1)
{
  v5 = qword_30D60;
  if (!qword_30D60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_30D60);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_11CB0()
{
  v2 = qword_30CC0;
  if (!qword_30CC0)
  {
    type metadata accessor for CFString(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_11D30()
{
  v2 = qword_30CD0;
  if (!qword_30CD0)
  {
    sub_2C88(&qword_30CC8, &qword_27EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30CD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_11DB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC21SystemVersionSettings23SystemUpdateCoordinator___observationRegistrar;
  v2 = sub_25500();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id sub_11EFC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_12038(uint64_t a1)
{
  updated = sub_25500();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

id sub_12140(uint64_t a1, void *a2)
{
  v5 = [v2 initWithDelegate:a1 queue:? clientType:?];

  swift_unknownObjectRelease();
  return v5;
}

unint64_t sub_12304()
{
  v2 = qword_30D68;
  if (!qword_30D68)
  {
    type metadata accessor for CFString(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30D68);
    return WitnessTable;
  }

  return v2;
}

void *sub_12384(const void *a1, void *a2)
{
  v6 = sub_25CF0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30CB8, &qword_27E90);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_124AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_25D80();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12500(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_12560(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_25D70();
    sub_25D60();
  }
}

uint64_t sub_125C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1, a2);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_25EB0();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_126AC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_25D20();
      v1 = sub_25C90();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_25D20();
    return v2;
  }

  return result;
}

uint64_t sub_1279C@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_25E80();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_1295C(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_12A70;

  return v6(a1);
}

uint64_t sub_12A70()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_12BE4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_12CD8;

  return sub_1295C(a1, v6);
}

uint64_t sub_12CD8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_12E5C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_12F50;

  return sub_1295C(a1, v6);
}

uint64_t sub_12F50()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_13130()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for InstalledSoftware(0);
  v1 = sub_1318C();

  return sub_125C8(v5, v3, v4, v1);
}

unint64_t sub_1318C()
{
  v2 = qword_30D70;
  if (!qword_30D70)
  {
    type metadata accessor for InstalledSoftware(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30D70);
    return WitnessTable;
  }

  return v2;
}

void *sub_13234(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_132D0(v4, v5, a3);
  v8 = *a1;

  sub_25DA0();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_132D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_13474(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_15150(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_150B0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_15150(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_150B0(v13);
  }

  return v11;
}

void *sub_13474(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_25E80();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1382C(v22, v17, v16);
        sub_25DB0();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_139A8(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_25E70();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_25E80();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1382C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_25E90();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_25E90();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_139A8(uint64_t a1, uint64_t a2)
{
  v7 = sub_13A64(a1, a2);
  sub_2124(&qword_30D88, &qword_28028);
  inited = swift_initStackObject();
  sub_14274(inited, 1);
  *v3 = 0;
  sub_142C0();
  sub_142F4(v4);

  v8 = sub_1469C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_13A64(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_25C10();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_14BBC();
  }

  v10 = sub_146B4(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_25E90();
    __break(1u);
    return sub_14BBC();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_147F8(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_25E70();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_147F8(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_25E60();
  if (v2)
  {
LABEL_29:
    sub_25E80();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_25E80();
    __break(1u);
  }

  sub_151E8(v17);
  return v10;
}

uint64_t sub_14274(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_142F4(uint64_t a1)
{
  v18 = sub_1469C(a1);
  v2 = sub_1469C(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_14BF8(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_25E90();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_14D64(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_25E80();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_25E80();
    __break(1u);
    goto LABEL_21;
  }

  sub_147F8((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_14BEC();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_146B4(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_2124(&qword_30D88, &qword_28028);
    v5 = swift_allocObject();

    if (sub_151B4())
    {
      v3 = sub_151C0(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_147F8(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_25E90();
    __break(1u);
  }

  result = sub_25E90();
  __break(1u);
  return result;
}

unint64_t sub_14948(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_25C30();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_25E80();
    __break(1u);
  }

  v5 = sub_25C50();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_14BF8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_146B4(v4, v6);
  if (v7)
  {
    sub_14D6C((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_147F8((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_14D6C(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_25E90();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_14E94(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_150B0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_15150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_15214()
{
  v2 = qword_30D90;
  if (!qword_30D90)
  {
    sub_25D20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_15294()
{
  v2 = qword_30DA0;
  if (!qword_30DA0)
  {
    sub_2C88(&qword_30D98, &unk_28030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30DA0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1531C(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_15354()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_15380()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t type metadata accessor for InstalledSoftwareView(uint64_t a1)
{
  v2 = qword_319D0;
  if (!qword_319D0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1547C(const void *a1, void *a2)
{
  v6 = sub_25400();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_155A4@<X0>(void *a1@<X8>)
{
  v6[2] = a1;
  v9 = 0;
  v7 = sub_2124(&qword_30AF8, &unk_27B80);
  v6[0] = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7, v1);
  v2 = (v6 - v6[0]);
  v8 = (v6 - v6[0]);
  v9 = v3;
  v4 = type metadata accessor for InstalledSoftwareView(0);
  sub_6178((v6[1] + *(v4 + 28)), v2);
  sub_255D0();
  return sub_624C(v8);
}

void *sub_156DC(void *a1)
{
  v9 = a1;
  v7 = (*(*(sub_2124(&qword_30AF8, &unk_27B80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v9, v2);
  v8 = (&v6 - v7);
  sub_6178(v3, (&v6 - v7));
  v4 = type metadata accessor for InstalledSoftwareView(0);
  sub_664C(v8, (v1 + *(v4 + 28)));
  return sub_624C(v9);
}

char *sub_1578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v20 = a4;
  v32 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = sub_2124(&qword_30AE0, &unk_28050);
  v16[0] = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5, v6);
  v22 = v16 - v16[0];
  v19 = 0;
  v21 = type metadata accessor for InstalledSoftwareView(0);
  v17 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v21, v16[1]);
  v27 = (v16 - v17);
  v32 = v16 - v17;
  v31 = v26;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v18 = *(v7 + 28);
  swift_getKeyPath();
  sub_255F0();

  *v27 = v26;

  v11 = v20;
  v12 = v25;
  v13 = v27;
  v27[1] = v24;
  v13[2] = v12;
  *(v13 + 24) = v11;
  v14 = sub_25400();
  (*(*(v14 - 8) + 56))(v22, 1);
  sub_1599C(v22, v27 + *(v21 + 24));
  sub_C1C0(v27, v23);

  return sub_C040(v27);
}

void *sub_1599C(const void *a1, void *a2)
{
  v6 = sub_25400();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_15AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v31 = a1;
  v29 = a2;
  v30 = a3;
  v24 = a4;
  v28 = a5;
  v38 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v6 = sub_2124(&qword_30AE0, &unk_28050);
  v20 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6, v7);
  v26 = &v19 - v20;
  v25 = type metadata accessor for InstalledSoftwareView(0);
  v22 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v25, v21);
  v32 = (&v19 - v22);
  v38 = &v19 - v22;
  v37 = v31;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v33 = v12;
  v23 = *(v8 + 28);
  swift_getKeyPath();
  sub_255F0();

  *v32 = v31;

  v13 = v28;
  v14 = v24;
  v15 = v26;
  v16 = v30;
  v17 = v32;
  v32[1] = v29;
  v17[2] = v16;
  *(v17 + 24) = v14;
  sub_1547C(v13, v15);
  sub_1599C(v26, v32 + *(v25 + 24));
  sub_C1C0(v32, v27);
  sub_15CB4(v28);

  return sub_C040(v32);
}

uint64_t sub_15CB4(uint64_t a1)
{
  v3 = sub_25400();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_15D5C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v40 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v22 = sub_2124(&qword_30E10, &qword_28098);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v22);
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v18 - v26;
  v3 = __chkstk_darwin(v18 - v26, v2);
  v25 = v18 - v26;
  __chkstk_darwin(v3, v4);
  v27 = v18 - v26;
  v55 = v18 - v26;
  v28 = sub_2124(&qword_30E18, &qword_280A0);
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8, v28);
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v18 - v32;
  v6 = __chkstk_darwin(v18 - v32, v5);
  v31 = v18 - v32;
  __chkstk_darwin(v6, v7);
  v33 = v18 - v32;
  v54 = v18 - v32;
  v34 = (*(*(sub_2124(&qword_30AE0, &unk_28050) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40, v8);
  v48 = v18 - v34;
  v35 = v18 - v34;
  v47 = sub_25400();
  v36 = v47;
  v37 = *(v47 - 8);
  v46 = v37;
  v38 = v37;
  __chkstk_darwin(v47 - 8, v47);
  v39 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v39;
  v41 = sub_2124(&qword_30E20, &qword_280A8);
  v42 = *(*(v41 - 8) + 64);
  v10 = __chkstk_darwin(v40, v41);
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = v18 - v44;
  v11 = __chkstk_darwin(v10, v18 - v44);
  v45 = v18 - v44;
  v52 = v18 - v44;
  v51 = v1;
  v12 = type metadata accessor for InstalledSoftwareView(v11);
  sub_1547C((v1 + *(v12 + 24)), v48);
  if ((*(v46 + 48))(v48, 1, v47) == 1)
  {
    sub_15CB4(v35);
    sub_16D94(v25);
    v18[0] = sub_16F1C();
    sub_2B7C(v25, v22, v27);
    sub_16FA4(v25);
    v50 = v25;
    sub_1728C(v27, v23);
    sub_3208(v23, v22, v25);
    sub_16FA4(v23);
    sub_1728C(v25, v23);
    v16 = sub_17CE4();
    sub_17BEC(v23, v28, v22, v16, v18[0], v43);
    sub_16FA4(v23);
    sub_17D6C(v43, v45);
    sub_16FA4(v25);
    sub_16FA4(v27);
  }

  else
  {
    (*(v38 + 32))(v39, v35, v36);
    v18[3] = sub_25700();
    v18[4] = v18;
    __chkstk_darwin(v18, v13);
    v18[1] = &v18[-4];
    v18[-2] = v20;
    v18[-1] = v14;
    v18[2] = sub_2124(&qword_30E88, &qword_280F8);
    sub_18FA4();
    sub_25A10();
    v19 = sub_17CE4();
    sub_2B7C(v31, v28, v33);
    sub_1902C(v31);
    v49 = v31;
    sub_192BC(v33, v29);
    sub_3208(v29, v28, v31);
    sub_1902C(v29);
    sub_192BC(v31, v29);
    v15 = sub_16F1C();
    sub_17AF4(v29, v28, v22, v19, v15, v43);
    sub_1902C(v29);
    sub_17D6C(v43, v45);
    sub_1902C(v31);
    sub_1902C(v33);
    (*(v38 + 8))(v39, v36);
  }

  sub_1826C(v45, v43);
  sub_18ABC();
  sub_3208(v43, v41, v21);
  sub_18B64(v43);
  return sub_18B64(v45);
}

uint64_t sub_1641C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v31 = a1;
  v32 = a2;
  v46 = 0;
  v48 = sub_20A2C;
  v45 = sub_17858;
  v59 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v30 = &v85;
  v85 = 0;
  v86 = 0;
  v29 = 0;
  v56 = sub_25680();
  v49 = *(v56 - 8);
  v50 = v56 - 8;
  v19 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v4);
  v51 = &v19 - v19;
  v43 = sub_25400();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v35 = v39;
  v36 = *(v39 + 64);
  v20 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v29, v5);
  v42 = &v19 - v20;
  v7 = type metadata accessor for InstalledSoftwareView(v6);
  v21 = *(v7 - 8);
  v33 = v21;
  v34 = *(v21 + 64);
  v22 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7, v8);
  v38 = &v19 - v22;
  v55 = sub_2124(&qword_30FE0, &qword_28380);
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v23 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55, v9);
  v54 = &v19 - v23;
  v71 = sub_2124(&qword_30E78, &qword_280F0);
  v60 = *(v71 - 8);
  v61 = v71 - 8;
  v24 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71, v10);
  v69 = &v19 - v24;
  v25 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v24, v12);
  v74 = &v19 - v25;
  v90 = &v19 - v25;
  v62 = sub_2124(&qword_30E10, &qword_28098);
  v27 = *(*(v62 - 8) + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v62, v32);
  v70 = &v19 - v26;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13, v14);
  v75 = &v19 - v28;
  v89 = &v19 - v28;
  v88 = a1;
  v87 = v15;
  sub_16D94(v16);
  v64 = sub_16F1C();
  sub_2B7C(v70, v62, v75);
  sub_16FA4(v70);
  v83 = sub_25A20();
  v84 = v17 & 1;
  v63 = &type metadata for Spacer;
  v65 = &protocol witness table for Spacer;
  sub_2B7C(&v83, &type metadata for Spacer, v30);
  sub_C1C0(v31, v38);
  (*(v39 + 16))(v42, v32, v43);
  v37 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v41 = (v37 + v34 + *(v35 + 80)) & ~*(v35 + 80);
  v44 = swift_allocObject();
  sub_1D430(v38, v44 + v37);
  (*(v39 + 32))(v44 + v41, v42, v43);
  v47 = sub_2124(&qword_30FE8, &qword_28388);
  sub_20B10();
  sub_25A00();
  sub_25670();
  v57 = sub_20D6C();
  v58 = sub_20DF4();
  sub_258D0();
  (*(v49 + 8))(v51, v56);
  (*(v52 + 8))(v54, v55);
  v82[3] = v55;
  v82[4] = v56;
  v82[5] = v57;
  v82[6] = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v69, v71, v74);
  v73 = *(v60 + 8);
  v72 = v60 + 8;
  v73(v69, v71);
  sub_1728C(v75, v70);
  v68 = v82;
  v82[0] = v70;
  v80 = v85;
  v81 = v86;
  v82[1] = &v80;
  (*(v60 + 16))(v69, v74, v71);
  v82[2] = v69;
  v79[0] = v62;
  v79[1] = v63;
  v79[2] = v71;
  v76 = v64;
  v77 = v65;
  v78 = OpaqueTypeConformance2;
  sub_8DD4(v68, 3uLL, v79, v67);
  v73(v69, v71);
  sub_16FA4(v70);
  v73(v74, v71);
  return sub_16FA4(v75);
}

uint64_t sub_16D94@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v9 = sub_1A7A8;
  v21 = 0;
  v20 = 0;
  v14 = sub_2124(&qword_30E10, &qword_28098);
  v7 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14, v2);
  v16 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v7, v4);
  v17 = &v6 - v8;
  v21 = &v6 - v8;
  v20 = v1;
  v12 = sub_25770();
  v10 = &v18;
  v19 = v1;
  v11 = sub_2124(&qword_30E98, &qword_28100);
  sub_1A7B0();
  sub_25A30();
  v15 = sub_16F1C();
  sub_2B7C(v16, v14, v17);
  sub_16FA4(v16);
  sub_1728C(v17, v16);
  sub_3208(v16, v14, v13);
  sub_16FA4(v16);
  return sub_16FA4(v17);
}

unint64_t sub_16F1C()
{
  v2 = qword_30E28;
  if (!qword_30E28)
  {
    sub_2C88(&qword_30E10, &qword_28098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_16FA4(uint64_t a1)
{
  v5 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v1 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v1 - 8) + 8))();
  v7 = sub_2124(&qword_30E40, &qword_280C0);
  v8 = *(v7 + 48);
  if (*(a1 + v5 + v8 + 24))
  {
    sub_9158(*(a1 + v5 + v8), *(a1 + v5 + v8 + 8), *(a1 + v5 + v8 + 16) & 1);
  }

  v4 = a1 + v5 + *(v7 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_17190(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112));
  }

  else
  {
    v2 = sub_25570();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t sub_17190(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15)
  {

    sub_17258(a8, a9);
    return sub_17258(a10, a11);
  }

  else
  {
    sub_9158(a1, a2, a3 & 1);

    sub_17258(a11, a12);
    return sub_17258(a13, a14);
  }
}

uint64_t sub_17258(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1728C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v32 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v2 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v2 - 8) + 16))(a2 + v32);
  v34 = sub_2124(&qword_30E40, &qword_280C0);
  v35 = *(v34 + 48);
  if (*(a1 + v32 + v35 + 24))
  {
    v28 = a1 + v32 + v35;
    v25 = *v28;
    v26 = *(v28 + 8);
    v27 = *(v28 + 16);
    sub_BF2C(*v28, v26, v27 & 1);
    v29 = a2 + v32 + v35;
    *v29 = v25;
    *(v29 + 8) = v26;
    *(v29 + 16) = v27 & 1;
    v30 = *(v28 + 24);

    *(v29 + 24) = v30;
  }

  else
  {
    v3 = (a1 + v32 + v35);
    v4 = (a2 + v32 + v35);
    *v4 = *v3;
    v4[1] = v3[1];
  }

  v23 = a2 + v32 + *(v34 + 64);
  v24 = a1 + v32 + *(v34 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v24;
    v9 = *(v24 + 8);
    v10 = *(v24 + 16);
    v11 = *(v24 + 24);
    v12 = *(v24 + 32);
    v13 = *(v24 + 40);
    v14 = *(v24 + 48);
    v15 = *(v24 + 56);
    v16 = *(v24 + 64);
    v17 = *(v24 + 72);
    v18 = *(v24 + 80);
    v19 = *(v24 + 88);
    v20 = *(v24 + 96);
    v21 = *(v24 + 104);
    v22 = *(v24 + 112);
    sub_17678(*v24, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    *v23 = v8;
    *(v23 + 8) = v9;
    *(v23 + 16) = v10;
    *(v23 + 24) = v11;
    *(v23 + 32) = v12;
    *(v23 + 40) = v13;
    *(v23 + 48) = v14;
    *(v23 + 56) = v15;
    *(v23 + 64) = v16;
    *(v23 + 72) = v17;
    *(v23 + 80) = v18;
    *(v23 + 88) = v19;
    *(v23 + 96) = v20;
    *(v23 + 104) = v21;
    *(v23 + 112) = v22 & 1;
  }

  else
  {
    v5 = sub_25570();
    (*(*(v5 - 8) + 16))(v23, v24);
    v6 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy((v23 + *(v6 + 36)), (v24 + *(v6 + 36)), 0x29uLL);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_17678(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15)
  {

    sub_17740(a8, a9);
    return sub_17740(a10, a11);
  }

  else
  {
    sub_BF2C(a1, a2, a3 & 1);

    sub_17740(a11, a12);
    return sub_17740(a13, a14);
  }
}

uint64_t sub_17740(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_17774(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v12 = 0;
  v11 = 0;
  v10 = sub_25640();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10, v6);
  v9 = &v5 - v5;
  v12 = a1;
  v11 = v3;
  sub_155A4((&v5 - v5));
  sub_25600();
  return (*(v7 + 8))(v9, v10);
}

void *sub_17858@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v25 = 0;
  v16 = sub_259A0();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16, v1);
  v15 = &v7 - v7;
  v19 = sub_2124(&qword_30FE8, &qword_28388);
  v8 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19, v2);
  v21 = &v7 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v8, v4);
  v22 = &v7 - v9;
  v25 = &v7 - v9;
  sub_25BF0("info.circle", 0xBuLL, 1);
  v5 = sub_25990();
  v11 = v24;
  v24[0] = v5;
  v10 = sub_25960();
  sub_25900();

  sub_20E74(v11);
  v17 = v23;
  v23[0] = v24[1];
  v23[1] = v24[2];
  v23[2] = v24[3];
  (*(v13 + 104))(v15, enum case for Image.Scale.large(_:), v16);
  v12 = sub_2124(&qword_31000, &qword_28390);
  sub_20BB8();
  sub_258C0();
  (*(v13 + 8))(v15, v16);
  sub_20EA0(v17);
  v20 = sub_20B10();
  sub_2B7C(v21, v19, v22);
  sub_20EE4(v21);
  sub_20FB4(v22, v21);
  sub_3208(v21, v19, v18);
  sub_20EE4(v21);
  return sub_20EE4(v22);
}

uint64_t sub_17AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_25790();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11, v9);
  v13 = &v8 - v10;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_257A0();
}

uint64_t sub_17BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_25790();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11, v9);
  v13 = &v8 - v10;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_257A0();
}

unint64_t sub_17CE4()
{
  v2 = qword_30E58;
  if (!qword_30E58)
  {
    sub_2C88(&qword_30E18, &qword_280A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_17D6C(uint64_t a1, uint64_t a2)
{
  sub_2124(&qword_30E60, &qword_280D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v14 = sub_2124(&qword_30E30, &qword_280B0);
    v22 = a2 + *(v14 + 44);
    v23 = a1 + *(v14 + 44);
    v15 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v15 - 8) + 32))(v22, v23);
    v16 = sub_2124(&qword_30E40, &qword_280C0);
    v17 = (v22 + *(v16 + 48));
    v18 = (v23 + *(v16 + 48));
    *v17 = *v18;
    v17[1] = v18[1];
    __dst = (v22 + *(v16 + 64));
    __src = (v23 + *(v16 + 64));
    v26 = sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(__dst, __src, *(*(v26 - 8) + 64));
    }

    else
    {
      v19 = sub_25570();
      (*(*(v19 - 8) + 32))(__dst, __src);
      v20 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy(&__dst[*(v20 + 36)], &__src[*(v20 + 36)], 0x29uLL);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = sub_2124(&qword_30E68, &qword_280E0);
    v29 = a2 + *(v2 + 44);
    v30 = a1 + *(v2 + 44);
    *v29 = *v30;
    *(v29 + 16) = *(v30 + 16);
    v3 = sub_2124(&qword_30E30, &qword_280B0);
    v31 = v29 + *(v3 + 44);
    v32 = v30 + *(v3 + 44);
    v4 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v4 - 8) + 32))(v31, v32);
    v5 = sub_2124(&qword_30E40, &qword_280C0);
    v6 = (v31 + *(v5 + 48));
    v7 = (v32 + *(v5 + 48));
    *v6 = *v7;
    v6[1] = v7[1];
    v33 = (v31 + *(v5 + 64));
    v34 = (v32 + *(v5 + 64));
    v35 = sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v33, v34, *(*(v35 - 8) + 64));
    }

    else
    {
      v8 = sub_25570();
      (*(*(v8 - 8) + 32))(v33, v34);
      v9 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy(&v33[*(v9 + 36)], &v34[*(v9 + 36)], 0x29uLL);
      swift_storeEnumTagMultiPayload();
    }

    v10 = sub_2124(&qword_30E70, &qword_280E8);
    v11 = v29 + *(v10 + 48);
    v12 = v30 + *(v10 + 48);
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
    v28 = v29 + *(v10 + 64);
    v27 = v30 + *(v10 + 64);
    v13 = sub_2124(&qword_30E78, &qword_280F0);
    (*(*(v13 - 8) + 32))(v28, v27);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1826C(uint64_t a1, uint64_t a2)
{
  sub_2124(&qword_30E60, &qword_280D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v11 = sub_2124(&qword_30E30, &qword_280B0);
    v37 = a2 + *(v11 + 44);
    v38 = a1 + *(v11 + 44);
    v12 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v12 - 8) + 16))(v37, v38);
    v39 = sub_2124(&qword_30E40, &qword_280C0);
    v40 = v37 + *(v39 + 48);
    v41 = v38 + *(v39 + 48);
    if (*(v41 + 24))
    {
      v33 = *v41;
      v34 = *(v41 + 8);
      v35 = *(v41 + 16);
      sub_BF2C(*v41, v34, v35 & 1);
      *v40 = v33;
      *(v40 + 8) = v34;
      *(v40 + 16) = v35 & 1;
      v36 = *(v41 + 24);

      *(v40 + 24) = v36;
    }

    else
    {
      *v40 = *v41;
      *(v40 + 16) = *(v41 + 16);
    }

    v31 = v37 + *(v39 + 64);
    v32 = v38 + *(v39 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v32;
      v17 = *(v32 + 8);
      v18 = *(v32 + 16);
      v19 = *(v32 + 24);
      v20 = *(v32 + 32);
      v21 = *(v32 + 40);
      v22 = *(v32 + 48);
      v23 = *(v32 + 56);
      v24 = *(v32 + 64);
      v25 = *(v32 + 72);
      v26 = *(v32 + 80);
      v27 = *(v32 + 88);
      v28 = *(v32 + 96);
      v29 = *(v32 + 104);
      v30 = *(v32 + 112);
      sub_17678(*v32, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
      *v31 = v16;
      *(v31 + 8) = v17;
      *(v31 + 16) = v18;
      *(v31 + 24) = v19;
      *(v31 + 32) = v20;
      *(v31 + 40) = v21;
      *(v31 + 48) = v22;
      *(v31 + 56) = v23;
      *(v31 + 64) = v24;
      *(v31 + 72) = v25;
      *(v31 + 80) = v26;
      *(v31 + 88) = v27;
      *(v31 + 96) = v28;
      *(v31 + 104) = v29;
      *(v31 + 112) = v30 & 1;
    }

    else
    {
      v13 = sub_25570();
      (*(*(v13 - 8) + 16))(v31, v32);
      v14 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy((v31 + *(v14 + 36)), (v32 + *(v14 + 36)), 0x29uLL);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = sub_2124(&qword_30E68, &qword_280E0);
    v65 = a2 + *(v2 + 44);
    v66 = a1 + *(v2 + 44);
    *v65 = *v66;
    *(v65 + 16) = *(v66 + 16);
    v3 = sub_2124(&qword_30E30, &qword_280B0);
    v67 = v65 + *(v3 + 44);
    v68 = v66 + *(v3 + 44);
    v4 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v4 - 8) + 16))(v67, v68);
    v69 = sub_2124(&qword_30E40, &qword_280C0);
    v70 = v67 + *(v69 + 48);
    v71 = v68 + *(v69 + 48);
    if (*(v71 + 24))
    {
      v61 = *v71;
      v62 = *(v71 + 8);
      v63 = *(v71 + 16);
      sub_BF2C(*v71, v62, v63 & 1);
      *v70 = v61;
      *(v70 + 8) = v62;
      *(v70 + 16) = v63 & 1;
      v64 = *(v71 + 24);

      *(v70 + 24) = v64;
    }

    else
    {
      *v70 = *v71;
      *(v70 + 16) = *(v71 + 16);
    }

    v59 = v67 + *(v69 + 64);
    v60 = v68 + *(v69 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = *v60;
      v45 = *(v60 + 8);
      v46 = *(v60 + 16);
      v47 = *(v60 + 24);
      v48 = *(v60 + 32);
      v49 = *(v60 + 40);
      v50 = *(v60 + 48);
      v51 = *(v60 + 56);
      v52 = *(v60 + 64);
      v53 = *(v60 + 72);
      v54 = *(v60 + 80);
      v55 = *(v60 + 88);
      v56 = *(v60 + 96);
      v57 = *(v60 + 104);
      v58 = *(v60 + 112);
      sub_17678(*v60, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
      *v59 = v44;
      *(v59 + 8) = v45;
      *(v59 + 16) = v46;
      *(v59 + 24) = v47;
      *(v59 + 32) = v48;
      *(v59 + 40) = v49;
      *(v59 + 48) = v50;
      *(v59 + 56) = v51;
      *(v59 + 64) = v52;
      *(v59 + 72) = v53;
      *(v59 + 80) = v54;
      *(v59 + 88) = v55;
      *(v59 + 96) = v56;
      *(v59 + 104) = v57;
      *(v59 + 112) = v58 & 1;
    }

    else
    {
      v5 = sub_25570();
      (*(*(v5 - 8) + 16))(v59, v60);
      v6 = sub_2124(&qword_30E50, &qword_280D0);
      memcpy((v59 + *(v6 + 36)), (v60 + *(v6 + 36)), 0x29uLL);
    }

    swift_storeEnumTagMultiPayload();
    v7 = sub_2124(&qword_30E70, &qword_280E8);
    v8 = v65 + *(v7 + 48);
    v9 = v66 + *(v7 + 48);
    *v8 = *v9;
    *(v8 + 8) = *(v9 + 8);
    v43 = v65 + *(v7 + 64);
    v42 = v66 + *(v7 + 64);
    v10 = sub_2124(&qword_30E78, &qword_280F0);
    (*(*(v10 - 8) + 16))(v43, v42);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_18ABC()
{
  v2 = qword_30E80;
  if (!qword_30E80)
  {
    sub_2C88(&qword_30E20, &qword_280A8);
    sub_17CE4();
    sub_16F1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_18B64(uint64_t a1)
{
  sub_2124(&qword_30E60, &qword_280D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = a1 + *(sub_2124(&qword_30E30, &qword_280B0) + 44);
    v4 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v4 - 8) + 8))(v8);
    v9 = sub_2124(&qword_30E40, &qword_280C0);
    v10 = v8 + *(v9 + 48);
    if (*(v10 + 24))
    {
      sub_9158(*v10, *(v10 + 8), *(v10 + 16) & 1);
    }

    v7 = v8 + *(v9 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_17190(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96), *(v7 + 104), *(v7 + 112));
    }

    else
    {
      v5 = sub_25570();
      (*(*(v5 - 8) + 8))(v7);
    }
  }

  else
  {
    v13 = a1 + *(sub_2124(&qword_30E68, &qword_280E0) + 44);
    v14 = v13 + *(sub_2124(&qword_30E30, &qword_280B0) + 44);
    v1 = sub_2124(&qword_30E38, &qword_280B8);
    (*(*(v1 - 8) + 8))(v14);
    v15 = sub_2124(&qword_30E40, &qword_280C0);
    v16 = v14 + *(v15 + 48);
    if (*(v16 + 24))
    {
      sub_9158(*v16, *(v16 + 8), *(v16 + 16) & 1);
    }

    v12 = v14 + *(v15 + 64);
    sub_2124(&qword_30E48, &qword_280C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_17190(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 72), *(v12 + 80), *(v12 + 88), *(v12 + 96), *(v12 + 104), *(v12 + 112));
    }

    else
    {
      v2 = sub_25570();
      (*(*(v2 - 8) + 8))(v12);
    }

    v11 = v13 + *(sub_2124(&qword_30E70, &qword_280E8) + 64);
    v3 = sub_2124(&qword_30E78, &qword_280F0);
    (*(*(v3 - 8) + 8))(v11);
  }

  return a1;
}

unint64_t sub_18FA4()
{
  v2 = qword_30E90;
  if (!qword_30E90)
  {
    sub_2C88(&qword_30E88, &qword_280F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30E90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1902C(uint64_t a1)
{
  v7 = *(sub_2124(&qword_30E68, &qword_280E0) + 44);
  v8 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v1 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v1 - 8) + 8))();
  v10 = sub_2124(&qword_30E40, &qword_280C0);
  v11 = *(v10 + 48);
  if (*(a1 + v7 + v8 + v11 + 24))
  {
    sub_9158(*(a1 + v7 + v8 + v11), *(a1 + v7 + v8 + v11 + 8), *(a1 + v7 + v8 + v11 + 16) & 1);
  }

  v6 = a1 + v7 + v8 + *(v10 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_17190(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112));
  }

  else
  {
    v2 = sub_25570();
    (*(*(v2 - 8) + 8))(v6);
  }

  v5 = a1 + v7 + *(sub_2124(&qword_30E70, &qword_280E8) + 64);
  v3 = sub_2124(&qword_30E78, &qword_280F0);
  (*(*(v3 - 8) + 8))(v5);
  return a1;
}

uint64_t sub_192BC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v39 = *(sub_2124(&qword_30E68, &qword_280E0) + 44);
  v40 = a2 + v39;
  *v40 = *(a1 + v39);
  *(v40 + 16) = *(a1 + v39 + 16);
  v41 = *(sub_2124(&qword_30E30, &qword_280B0) + 44);
  v2 = sub_2124(&qword_30E38, &qword_280B8);
  (*(*(v2 - 8) + 16))(a2 + v39 + v41);
  v42 = sub_2124(&qword_30E40, &qword_280C0);
  v43 = *(v42 + 48);
  if (*(a1 + v39 + v41 + v43 + 24))
  {
    v34 = a1 + v39 + v41 + v43;
    v31 = *v34;
    v32 = *(v34 + 8);
    v33 = *(v34 + 16);
    sub_BF2C(*v34, v32, v33 & 1);
    v35 = a2 + v39 + v41 + v43;
    *v35 = v31;
    *(v35 + 8) = v32;
    *(v35 + 16) = v33 & 1;
    v36 = *(v34 + 24);

    *(v35 + 24) = v36;
  }

  else
  {
    v3 = (a1 + v39 + v41 + v43);
    v4 = (a2 + v39 + v41 + v43);
    *v4 = *v3;
    v4[1] = v3[1];
  }

  v29 = a2 + v39 + v41 + *(v42 + 64);
  v30 = a1 + v39 + v41 + *(v42 + 64);
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v30;
    v15 = *(v30 + 8);
    v16 = *(v30 + 16);
    v17 = *(v30 + 24);
    v18 = *(v30 + 32);
    v19 = *(v30 + 40);
    v20 = *(v30 + 48);
    v21 = *(v30 + 56);
    v22 = *(v30 + 64);
    v23 = *(v30 + 72);
    v24 = *(v30 + 80);
    v25 = *(v30 + 88);
    v26 = *(v30 + 96);
    v27 = *(v30 + 104);
    v28 = *(v30 + 112);
    sub_17678(*v30, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *v29 = v14;
    *(v29 + 8) = v15;
    *(v29 + 16) = v16;
    *(v29 + 24) = v17;
    *(v29 + 32) = v18;
    *(v29 + 40) = v19;
    *(v29 + 48) = v20;
    *(v29 + 56) = v21;
    *(v29 + 64) = v22;
    *(v29 + 72) = v23;
    *(v29 + 80) = v24;
    *(v29 + 88) = v25;
    *(v29 + 96) = v26;
    *(v29 + 104) = v27;
    *(v29 + 112) = v28 & 1;
  }

  else
  {
    v5 = sub_25570();
    (*(*(v5 - 8) + 16))(v29, v30);
    v6 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy((v29 + *(v6 + 36)), (v30 + *(v6 + 36)), 0x29uLL);
  }

  swift_storeEnumTagMultiPayload();
  v7 = sub_2124(&qword_30E70, &qword_280E8);
  v8 = a2 + v39 + *(v7 + 48);
  v9 = a1 + v39 + *(v7 + 48);
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  v13 = a2 + v39 + *(v7 + 64);
  v12 = a1 + v39 + *(v7 + 64);
  v10 = sub_2124(&qword_30E78, &qword_280F0);
  (*(*(v10 - 8) + 16))(v13, v12);
  return a2;
}

uint64_t sub_197D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v168 = a1;
  v150 = sub_1F3C8;
  v153 = sub_1F63C;
  v151 = sub_1F8B0;
  v159 = &opaque type descriptor for <<opaque return type of View.editMenu(_:onPresent:onDismiss:)>>;
  v250 = 0;
  v249 = 0;
  v248 = 0;
  v247 = 0;
  v206 = 0u;
  v207 = 0u;
  v185 = 0u;
  v186 = 0u;
  v99 = sub_2124(&qword_30EB0, &qword_28108);
  v100 = (*(*(v99 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99, v2);
  v101 = &v44 - v100;
  v102 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v44 - v100, v4);
  v103 = &v44 - v102;
  v250 = &v44 - v102;
  v114 = 0;
  v104 = sub_25740();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v104, v5);
  v108 = &v44 - v107;
  v109 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v44 - v107, v7);
  v110 = &v44 - v109;
  v111 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v44 - v109, v9);
  v112 = &v44 - v111;
  v113 = (*(*(sub_2124(&qword_30C70, &qword_27E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v114, v10);
  v172 = &v44 - v113;
  v174 = sub_25440();
  v170 = *(v174 - 8);
  v171 = v174 - 8;
  v115 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v114, v11);
  v116 = &v44 - v115;
  v249 = &v44 - v115;
  v13 = type metadata accessor for InstalledSoftwareView(v12);
  v117 = *(v13 - 8);
  v140 = v117;
  v146 = *(v117 + 64);
  v118 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13, v14);
  v149 = &v44 - v118;
  v119 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v44 - v118, v16);
  v144 = &v44 - v119;
  v120 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v44 - v119, v18);
  v142 = &v44 - v120;
  v165 = sub_2124(&qword_30E38, &qword_280B8);
  v162 = *(v165 - 8);
  v163 = v165 - 8;
  v121 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = __chkstk_darwin(v168, v19);
  v164 = &v44 - v121;
  v122 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = __chkstk_darwin(v20, &v44 - v121);
  v160 = &v44 - v122;
  v248 = &v44 - v122;
  v247 = v22;
  v123 = *v22;

  v124 = *(v123 + 16);
  v125 = *(v123 + 24);

  v126 = v246;
  v246[0] = v124;
  v246[1] = v125;
  sub_1F140();
  v242 = sub_25850();
  v243 = v23;
  v244 = v24;
  v245 = v25;
  v128 = v242;
  v129 = v23;
  v130 = v24;
  v131 = v25;
  v127 = sub_25800();
  v238 = v128;
  v239 = v129;
  v173 = 1;
  v240 = v130 & 1;
  v241 = v131;
  v234 = sub_25830();
  v235 = v26;
  v236 = v27;
  v237 = v28;
  v133 = v234;
  v134 = v26;
  v132 = v27;
  v135 = v28;

  sub_9158(v128, v129, v130 & 1);

  sub_257F0();
  v230 = v133;
  v231 = v134;
  v232 = v132 & 1 & v173;
  v233 = v135;
  v226 = sub_25810();
  v227 = v29;
  v228 = v30;
  v229 = v31;
  v136 = v226;
  v137 = v29;
  v138 = v30;
  v139 = v31;
  sub_9158(v133, v134, v132 & 1);

  v156 = v223;
  v223[0] = v136;
  v223[1] = v137;
  v224 = v138 & 1 & v173;
  v225 = v139;
  sub_C1C0(v168, v142);
  v145 = *(v140 + 80);
  v141 = (v145 + 16) & ~v145;
  v147 = 7;
  v155 = swift_allocObject();
  sub_1D430(v142, v155 + v141);
  sub_C1C0(v168, v144);
  v143 = (v145 + 16) & ~v145;
  v154 = swift_allocObject();
  sub_1D430(v144, v154 + v143);
  sub_C1C0(v168, v149);
  v148 = (v145 + 16) & ~v145;
  v152 = swift_allocObject();
  sub_1D430(v149, v152 + v148);
  v157 = &type metadata for Text;
  v158 = &protocol witness table for Text;
  sub_25870();
  sub_17258(v151, v152);
  sub_17258(v153, v154);

  sub_BCC0(v156);
  v221 = v157;
  v222 = v158;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2B7C(v164, v165, v160);
  v166 = *(v162 + 8);
  v167 = v162 + 8;
  v166(v164, v165);
  v169 = *v168;

  sub_1F914((v169 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate), v172);

  if ((*(v170 + 48))(v172, v173, v174) == 1)
  {
    sub_1FA3C(v172);
    memset(v212, 0, sizeof(v212));
    sub_A6A8(v212, &type metadata for Text, &v213);
    v90 = v213;
    v91 = v214;
    v92 = v215;
    v93 = v216;
    v32 = sub_1FAE4(v213, v214, v215, v216);
    v217 = v90;
    v218 = v91;
    v219 = v92;
    v220 = v93;
    v94 = v90;
    v95 = v91;
    v96 = v92;
    v97 = v93;
  }

  else
  {
    (*(v170 + 32))(v116, v172, v174);
    v53 = 10;
    sub_25730();
    v75 = 1;
    v251._countAndFlagsBits = sub_25BF0("Installed ", v53, 1);
    object = v251._object;
    sub_25720(v251);

    v252._countAndFlagsBits = sub_1BA90(v116);
    v55 = v252._object;
    sub_25710(v252);

    v60 = 0;
    v253._countAndFlagsBits = sub_25BF0("", 0, v75 & 1);
    v56 = v253._object;
    sub_25720(v253);

    (*(v105 + 16))(v110, v112, v104);
    (*(v105 + 32))(v108, v110, v104);
    (*(v105 + 8))(v112, v104);
    v62 = sub_25760();
    v57 = v34;
    v58 = v35;
    v59 = v36;
    v61 = *sub_242E8();
    v61;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = v75 & 1;
    v198 = sub_25840();
    v199 = v37;
    v200 = v38;
    v201 = v39;
    v64 = v198;
    v65 = v37;
    v66 = v38;
    v67 = v39;
    v63 = sub_25970();
    v194 = v64;
    v195 = v65;
    v196 = v66 & 1 & v75;
    v197 = v67;
    v190 = sub_25820();
    v191 = v40;
    v192 = v41;
    v193 = v42;
    v68 = v190;
    v69 = v40;
    v70 = v41;
    v71 = v42;

    sub_9158(v64, v65, v66 & 1);

    v72 = v187;
    v187[0] = v68;
    v187[1] = v69;
    v188 = v70 & 1 & v75;
    v189 = v71;
    v85 = &v206;
    v81 = &type metadata for Text;
    v82 = &protocol witness table for Text;
    sub_2B7C(v187, &type metadata for Text, &v206);
    sub_BCC0(v72);
    v73 = v206;
    v74 = v207;
    v76 = *(&v207 + 1);
    sub_BF2C(v206, *(&v206 + 1), v207 & 1);

    v77 = &v182;
    v182 = v73;
    v183 = v74 & 1 & v75;
    v184 = v76;
    v84 = &v185;
    sub_3208(&v182, v81, &v185);
    sub_BCC0(v77);
    v79 = v185;
    v78 = v186;
    v80 = *(&v186 + 1);
    sub_BF2C(v185, *(&v185 + 1), v186 & 1);

    v83 = &v175;
    v175 = v79;
    v176 = v78 & 1;
    v177 = v80;
    sub_A6A8(&v175, v81, &v178);
    sub_1FBD4(v83);
    v86 = v178;
    v87 = v179;
    v88 = v180;
    v89 = v181;
    sub_1FAE4(v178, v179, v180, v181);
    v217 = v86;
    v218 = v87;
    v219 = v88;
    v220 = v89;
    sub_BCC0(v84);
    sub_BCC0(v85);
    v32 = (*(v170 + 8))(v116, v174);
    v94 = v86;
    v95 = v87;
    v96 = v88;
    v97 = v89;
  }

  v47 = v97;
  v46 = v96;
  v45 = v95;
  v44 = v94;
  sub_1C090(v32, v33);
  v48 = sub_1E1CC();
  sub_2B7C(v101, v99, v103);
  sub_1E274(v101);
  (*(v162 + 16))(v164, v160, v165);
  v51 = v211;
  v211[0] = v164;
  v52 = v210;
  v210[0] = v44;
  v210[1] = v45;
  v210[2] = v46;
  v210[3] = v47;
  v211[1] = v210;
  sub_1DFB4(v103, v101);
  v211[2] = v101;
  v49 = v209;
  v209[0] = v165;
  v209[1] = sub_2124(&qword_30FC8, &unk_28370);
  v209[2] = v99;
  v50 = v208;
  v208[0] = OpaqueTypeConformance2;
  v208[1] = sub_1FB40();
  v208[2] = v48;
  sub_8DD4(v51, 3uLL, v49, v98);
  sub_1E274(v101);
  sub_1FBD4(v52);
  v166(v164, v165);
  sub_1E274(v103);
  sub_1FBD4(&v217);
  return (v166)(v160, v165);
}

unint64_t sub_1A7B0()
{
  v2 = qword_30EA0;
  if (!qword_30EA0)
  {
    sub_2C88(&qword_30E98, &qword_28100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EA0);
    return WitnessTable;
  }

  return v2;
}

void sub_1A838(uint64_t *a1)
{
  v15 = a1;
  v21 = sub_20668;
  v33 = 0;
  v24 = 0;
  v7 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v16 = v7;
  v17 = *(v7 + 64);
  v8 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v19 = &v7 - v8;
  v9 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24, v2);
  v14 = &v7 - v9;
  v10 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24, v3);
  v12 = &v7 - v10;
  v33 = v4;
  v27 = sub_203F4();
  v28 = sub_25F00();
  v26 = v5;
  v11 = 1;
  sub_25BF0("Copy", 4uLL, 1);
  sub_25B10();
  v13 = *sub_242E8();
  v13;
  sub_3A00();
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = v11 & 1;
  v25 = sub_25BA0();
  v23 = v6;
  sub_C1C0(v15, v19);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = swift_allocObject();
  sub_1D430(v19, v22 + v18);
  v20 = sub_1AC30();
  sub_1AC60();
  *v26 = sub_25D50();
  sub_3AB0();
}

void sub_1AB54(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() generalPasteboard];

  v2 = sub_25B80();

  [v3 setString:v2];
}

uint64_t sub_1AC30()
{
  sub_1FEA0(0);

  return 0;
}

uint64_t sub_1AC68(uint64_t *a1)
{
  v37 = a1;
  v43 = sub_20290;
  v47 = sub_2039C;
  v49 = sub_20320;
  v51 = sub_20354;
  v54 = sub_203E8;
  v65 = 0;
  v28 = 0;
  v29 = 0;
  v30 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v38 = v30;
  v39 = *(v30 + 64);
  v31 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v41 = v19 - v31;
  v36 = sub_255C0();
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v32 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v37, v2);
  v4 = v19 - v32;
  v33 = v19 - v32;
  v65 = v3;
  v5 = sub_21358();
  (*(v34 + 16))(v4, v5, v36);
  sub_C1C0(v37, v41);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v45 = 7;
  v46 = swift_allocObject();
  sub_1D430(v41, v46 + v40);
  v58 = sub_255A0();
  v59 = sub_25D00();
  v42 = 17;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v44 = 32;
  v6 = swift_allocObject();
  v7 = v46;
  v48 = v6;
  *(v6 + 16) = v43;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v48;
  v55 = v8;
  *(v8 + 16) = v47;
  *(v8 + 24) = v9;
  v57 = sub_2124(&qword_30D78, &qword_28018);
  v53 = sub_25F00();
  v56 = v10;

  v11 = v50;
  v12 = v56;
  *v56 = v49;
  v12[1] = v11;

  v13 = v52;
  v14 = v56;
  v56[2] = v51;
  v14[3] = v13;

  v15 = v55;
  v16 = v56;
  v56[4] = v54;
  v16[5] = v15;
  sub_3AB0();

  if (os_log_type_enabled(v58, v59))
  {
    v17 = v28;
    v21 = sub_25D80();
    v20 = sub_2124(&qword_30D80, &qword_28020);
    v22 = sub_124AC(0, v20, v20);
    v23 = sub_124AC(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v24 = &v64;
    v64 = v21;
    v25 = &v63;
    v63 = v22;
    v26 = &v62;
    v62 = v23;
    sub_12500(2, &v64);
    sub_12500(1, v24);
    v60 = v49;
    v61 = v50;
    sub_12514(&v60, v24, v25, v26);
    v27 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v60 = v51;
      v61 = v52;
      sub_12514(&v60, &v64, &v63, &v62);
      v19[0] = 0;
      v60 = v54;
      v61 = v55;
      sub_12514(&v60, &v64, &v63, &v62);
      _os_log_impl(&dword_0, v58, v59, "Presenting edit menu for software: %s", v21, 0xCu);
      sub_12560(v22, 0, v20);
      sub_12560(v23, 1, &type metadata for Any + 8);
      sub_25D60();
    }
  }

  else
  {
  }

  return (*(v34 + 8))(v33, v36);
}

uint64_t sub_1B324(void *a1)
{

  type metadata accessor for InstalledSoftware(0);
  sub_1318C();
  return sub_25BC0();
}

uint64_t sub_1B37C(uint64_t *a1)
{
  v37 = a1;
  v43 = sub_1FE3C;
  v47 = sub_1FFF4;
  v49 = sub_1FF78;
  v51 = sub_1FFAC;
  v54 = sub_20040;
  v65 = 0;
  v28 = 0;
  v29 = 0;
  v30 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v38 = v30;
  v39 = *(v30 + 64);
  v31 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v41 = v19 - v31;
  v36 = sub_255C0();
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v32 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v37, v2);
  v4 = v19 - v32;
  v33 = v19 - v32;
  v65 = v3;
  v5 = sub_21358();
  (*(v34 + 16))(v4, v5, v36);
  sub_C1C0(v37, v41);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v45 = 7;
  v46 = swift_allocObject();
  sub_1D430(v41, v46 + v40);
  v58 = sub_255A0();
  v59 = sub_25D10();
  v42 = 17;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v44 = 32;
  v6 = swift_allocObject();
  v7 = v46;
  v48 = v6;
  *(v6 + 16) = v43;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v48;
  v55 = v8;
  *(v8 + 16) = v47;
  *(v8 + 24) = v9;
  v57 = sub_2124(&qword_30D78, &qword_28018);
  v53 = sub_25F00();
  v56 = v10;

  v11 = v50;
  v12 = v56;
  *v56 = v49;
  v12[1] = v11;

  v13 = v52;
  v14 = v56;
  v56[2] = v51;
  v14[3] = v13;

  v15 = v55;
  v16 = v56;
  v56[4] = v54;
  v16[5] = v15;
  sub_3AB0();

  if (os_log_type_enabled(v58, v59))
  {
    v17 = v28;
    v21 = sub_25D80();
    v20 = sub_2124(&qword_30D80, &qword_28020);
    v22 = sub_124AC(0, v20, v20);
    v23 = sub_124AC(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v24 = &v64;
    v64 = v21;
    v25 = &v63;
    v63 = v22;
    v26 = &v62;
    v62 = v23;
    sub_12500(2, &v64);
    sub_12500(1, v24);
    v60 = v49;
    v61 = v50;
    sub_12514(&v60, v24, v25, v26);
    v27 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v60 = v51;
      v61 = v52;
      sub_12514(&v60, &v64, &v63, &v62);
      v19[0] = 0;
      v60 = v54;
      v61 = v55;
      sub_12514(&v60, &v64, &v63, &v62);
      _os_log_impl(&dword_0, v58, v59, "Dismissing edit menu for software: %s", v21, 0xCu);
      sub_12560(v22, 0, v20);
      sub_12560(v23, 1, &type metadata for Any + 8);
      sub_25D60();
    }
  }

  else
  {
  }

  return (*(v34 + 8))(v33, v36);
}

uint64_t sub_1BA38(void *a1)
{

  type metadata accessor for InstalledSoftware(0);
  sub_1318C();
  return sub_25BC0();
}

uint64_t sub_1BA90(uint64_t a1)
{
  v45 = a1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v37 = 0;
  v30 = sub_25440();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1);
  v34 = &v13 - v33;
  v35 = (*(*(sub_25460() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37, v2);
  v36 = &v13 - v35;
  v38 = (*(*(sub_25B70() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37, v3);
  v39 = &v13 - v38;
  v40 = sub_254A0();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v45, v4);
  v44 = &v13 - v43;
  v55 = &v13 - v43;
  v54 = v5;
  v53 = v6;
  sub_25490();
  if (sub_25470())
  {
    *&v24[1] = 1;
    sub_25BF0("Today", 5uLL, 1);
    sub_25B10();
    v25 = *sub_242E8();
    v25;
    sub_3A00();
    v46 = 0;
    v47 = 0;
    v48 = *v24 & 0x100;
    v26 = sub_25BA0();
    v27 = v7;
    (*(v41 + 8))(v44, v40);
    v28 = v26;
    v29 = v27;
  }

  else if (sub_25480())
  {
    *&v20[1] = 1;
    sub_25BF0("Yesterday", 9uLL, 1);
    sub_25B10();
    v21 = *sub_242E8();
    v21;
    sub_3A00();
    v49 = 0;
    v50 = 0;
    v51 = *v20 & 0x100;
    v22 = sub_25BA0();
    v23 = v8;
    (*(v41 + 8))(v44, v40);
    v28 = v22;
    v29 = v23;
  }

  else
  {
    v14 = 0;
    sub_1C02C();
    v9 = sub_1D100();
    v10 = v34;
    v17 = v9;
    v52 = v9;
    [v9 setDateStyle:2];
    [v17 setTimeStyle:v14];
    (*(v31 + 16))(v10, v45, v30);
    isa = sub_25430().super.isa;
    (*(v31 + 8))(v34, v30);
    v16 = [v17 stringFromDate:isa];

    v18 = sub_25B90();
    v19 = v11;

    (*(v41 + 8))(v44, v40);
    v28 = v18;
    v29 = v19;
  }

  return v28;
}

unint64_t sub_1C02C()
{
  v2 = qword_30EA8;
  if (!qword_30EA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30EA8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C090(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1, a2);
  v118 = v3;
  v119 = v2;
  v120 = sub_1E578;
  v121 = sub_1D68C;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  __len = 113;
  __c = 0;
  memset(__b, 0, 0x71uLL);
  memset(v196, 0, 0x71uLL);
  v155 = 0;
  v156 = 0;
  v154 = 0;
  v124 = 0;
  v125 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v126 = v125;
  v127 = *(v125 + 64);
  v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v4);
  v129 = &v33 - v128;
  v130 = sub_25570();
  v131 = *(v130 - 8);
  v132 = v130 - 8;
  v133 = (*(v131 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v130, v5);
  v134 = &v33 - v133;
  v135 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v33 - v133, v7);
  v136 = &v33 - v135;
  v137 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v33 - v135, v9);
  v138 = &v33 - v137;
  v139 = sub_2124(&qword_30E50, &qword_280D0);
  v140 = (*(*(v139 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v139, v10);
  v141 = &v33 - v140;
  v142 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v33 - v140, v12);
  v143 = &v33 - v142;
  v144 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v33 - v142, v14);
  v145 = &v33 - v144;
  v227 = &v33 - v144;
  v146 = sub_2124(&qword_30EB0, &qword_28108);
  v147 = (*(*(v146 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v146, v15);
  v148 = &v33 - v147;
  v149 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v33 - v147, v17);
  v150 = &v33 - v149;
  v226 = &v33 - v149;
  v225 = v2;
  v152 = *v2;

  v151 = *(v152 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  v153 = *(v152 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation + 8);
  sub_1D130(v151, v153);

  if ((v153 & 0xF000000000000000) == 0xF000000000000000)
  {
    v104 = *v119;

    v105 = *(v104 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_softwareType);

    if (v105)
    {
      v29 = sub_25980();
      v44 = v212;
      v212[0] = v29;
      v42 = &type metadata for Color;
      v43 = &protocol witness table for Color;
      sub_1D00C();
      sub_25930();
      sub_1D1F4(v44);
      v48 = v206;
      v206[0] = v212[1];
      v206[1] = v212[2];
      v207 = v213 & 1;
      v208 = v214;
      v209 = v215 & 1;
      v210 = v216;
      v211 = v217;
      sub_C1C0(v119, v129);
      v45 = (*(v126 + 80) + 16) & ~*(v126 + 80);
      v47 = swift_allocObject();
      sub_1D430(v129, v47 + v45);
      v46 = sub_2124(&qword_30EB8, &qword_28110);
      sub_1D6F0();
      v49 = &v218;
      sub_25950();
      sub_17258(v121, v47);
      sub_1D790(v48);
      v50 = v220;
      v55 = 88;
      memcpy(v220, v49, sizeof(v220));
      v51 = v205;
      memcpy(v205, v220, sizeof(v205));
      v57 = sub_2124(&qword_30EC8, &qword_28118);
      v58 = sub_1D7BC();
      v64 = v219;
      sub_2B7C(v51, v57, v219);
      sub_1D860(v51);
      v52 = v221;
      memcpy(v221, v64, v55);
      sub_1D8CC(v52, v203);
      v53 = v202;
      memcpy(v202, v52, v55);
      v63 = v204;
      sub_3208(v53, v57, v204);
      sub_1D860(v53);
      v54 = v222;
      memcpy(v222, v63, v55);
      sub_1D8CC(v54, v200);
      v59 = v199;
      memcpy(v199, v54, v55);
      v56 = sub_2124(&qword_30ED8, &qword_28120);
      v30 = sub_1D9CC();
      v60 = v201;
      sub_17BEC(v59, v56, v57, v30, v58, v201);
      sub_1D860(v59);
      v61 = v223;
      v62 = 113;
      memcpy(v223, v60, 0x71uLL);
      memcpy(__b, v223, 0x71uLL);
      sub_1D860(v63);
      sub_1D860(v64);
    }

    else
    {
      v78 = 1;
      sub_25BF0("This update includes improvements and bug fixes for your device.", 0x40uLL, 1);
      v69 = sub_25750();
      v65 = v19;
      v66 = v20;
      v67 = v21;
      v68 = *sub_242E8();
      v68;
      v180 = 0;
      v181 = 0;
      v182 = 0;
      v183 = v78 & 1;
      v176 = sub_25840();
      v177 = v22;
      v178 = v23;
      v179 = v24;
      v71 = v176;
      v72 = v22;
      v73 = v23;
      v74 = v24;
      v70 = sub_257E0();
      v172 = v71;
      v173 = v72;
      v174 = v73 & 1 & v78;
      v175 = v74;
      v168 = sub_25830();
      v169 = v25;
      v170 = v26;
      v171 = v27;
      v75 = v168;
      v76 = v25;
      v77 = v26;
      v79 = v27;

      sub_9158(v71, v72, v73 & 1);

      v80 = v165;
      v165[0] = v75;
      v165[1] = v76;
      v166 = v77 & 1 & v78;
      v167 = v79;
      sub_257C0();
      v81 = &v184;
      sub_25940();
      sub_BCC0(v80);
      v82 = v187;
      v83 = 73;
      memcpy(v187, v81, 0x49uLL);
      v87 = v164;
      memcpy(v164, v187, 0x49uLL);
      sub_C1C0(v119, v129);
      v84 = (*(v126 + 80) + 16) & ~*(v126 + 80);
      v86 = swift_allocObject();
      sub_1D430(v129, v86 + v84);
      v85 = sub_2124(&qword_30EF0, &qword_28128);
      sub_1DA70();
      v88 = &v185;
      sub_25950();
      sub_17258(v120, v86);
      sub_1E5DC(v87);
      v89 = v188;
      v94 = 112;
      memcpy(v188, v88, sizeof(v188));
      v90 = v163;
      memcpy(v163, v188, sizeof(v163));
      v95 = sub_2124(&qword_30ED8, &qword_28120);
      v97 = sub_1D9CC();
      v103 = v186;
      sub_2B7C(v90, v95, v186);
      sub_1E624(v90);
      v91 = v189;
      memcpy(v189, v103, v94);
      sub_1E6AC(v91, &v161);
      v92 = v160;
      memcpy(v160, v91, v94);
      v102 = v162;
      sub_3208(v92, v95, v162);
      sub_1E624(v92);
      v93 = v190;
      memcpy(v190, v102, v94);
      sub_1E6AC(v93, &v158);
      v98 = v157;
      memcpy(v157, v93, v94);
      v96 = sub_2124(&qword_30EC8, &qword_28118);
      v28 = sub_1D7BC();
      v99 = v159;
      sub_17AF4(v98, v95, v96, v97, v28, v159);
      sub_1E624(v98);
      v100 = v191;
      v101 = 113;
      memcpy(v191, v99, 0x71uLL);
      memcpy(__b, v191, 0x71uLL);
      sub_1E624(v102);
      sub_1E624(v103);
    }

    v33 = v197;
    v41 = __b;
    v36 = 113;
    memcpy(v197, __b, 0x71uLL);
    sub_1DB10(v197, &v195);
    v34 = v194;
    memcpy(v194, v33, v36);
    v37 = sub_2124(&qword_30EF8, &qword_28130);
    v38 = sub_1DC54();
    v40 = v196;
    sub_3208(v34, v37, v196);
    sub_1DCFC(v34);
    v35 = v198;
    memcpy(v198, v40, v36);
    sub_1DB10(v35, &v193);
    v39 = v192;
    memcpy(v192, v35, v36);
    v31 = sub_1DD84();
    sub_17BEC(v39, v139, v37, v31, v38, v148);
    sub_1DCFC(v39);
    sub_1DEA8(v148, v150);
    sub_1DCFC(v40);
    sub_1DCFC(v41);
  }

  else
  {
    v116 = v151;
    v117 = v153;
    v108 = v153;
    v107 = v151;
    v155 = v151;
    v156 = v153;
    sub_1D178(v151, v153);
    sub_25560();
    v109 = v119[1];
    v110 = v119[2];
    v111 = *(v119 + 24);

    sub_25540();
    sub_1E7F8(v109, v110);
    v114 = *(v131 + 8);
    v113 = v131 + 8;
    v114(v134, v130);
    sub_25550();
    v114(v136, v130);
    v112 = sub_257C0();
    sub_1DE28();
    sub_25940();
    v114(v138, v130);
    v115 = sub_1DD84();
    sub_2B7C(v143, v139, v145);
    sub_1E840(v143);
    v154 = v143;
    sub_1E89C(v145, v141);
    sub_3208(v141, v139, v143);
    sub_1E840(v141);
    sub_1E89C(v143, v141);
    v106 = sub_2124(&qword_30EF8, &qword_28130);
    v18 = sub_1DC54();
    sub_17AF4(v141, v139, v106, v115, v18, v148);
    sub_1E840(v141);
    sub_1DEA8(v148, v150);
    sub_1E840(v143);
    sub_1E840(v145);
    sub_1E93C(v107, v108);
  }

  sub_1DFB4(v150, v148);
  sub_1E1CC();
  sub_3208(v148, v146, v118);
  sub_1E274(v148);
  return sub_1E274(v150);
}

uint64_t sub_1CF3C(uint64_t a1)
{
  v7 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = *(a1 + 24);

  v5[0] = v3;
  v5[1] = v4;
  v6 = v2;
  sub_2124(&qword_30FB8, &unk_28360);
  sub_25A40();
  sub_1F0E4(v5);
}

uint64_t sub_1D030(uint64_t a1)
{
  v7 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = *(a1 + 24);

  v5[0] = v3;
  v5[1] = v4;
  v6 = v2;
  sub_2124(&qword_30FB8, &unk_28360);
  sub_25A40();
  sub_1F0E4(v5);
}

uint64_t sub_1D130(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1D178(result, a2);
  }

  return result;
}

uint64_t sub_1D178(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_1D220()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D430(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  v9 = type metadata accessor for InstalledSoftwareView(0);
  v10 = *(v9 + 24);
  v12 = sub_25400();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1 + v10, 1))
  {
    v2 = sub_2124(&qword_30AE0, &unk_28050);
    memcpy((a2 + v10), (a1 + v10), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))();
    (*(v13 + 56))(a2 + v10, 0, 1, v12);
  }

  __dst = (a2 + *(v9 + 28));
  __src = (a1 + *(v9 + 28));
  v7 = sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_25640();
    (*(*(v3 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
  }

  return a2;
}

uint64_t sub_1D68C()
{
  v1 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D030(v2);
}

unint64_t sub_1D6F0()
{
  v2 = qword_30EC0;
  if (!qword_30EC0)
  {
    sub_2C88(&qword_30EB8, &qword_28110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D7BC()
{
  v2 = qword_30ED0;
  if (!qword_30ED0)
  {
    sub_2C88(&qword_30EC8, &qword_28118);
    sub_1D6F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30ED0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1D860(void *a1)
{

  if (a1[7])
  {
  }

  if (a1[9])
  {
  }

  return a1;
}

void *sub_1D8CC(void *a1, void *a2)
{
  v7 = *a1;

  *a2 = v7;
  memcpy(a2 + 1, a1 + 1, 0x30uLL);
  if (a1[7])
  {
    v5 = a1[7];
    v6 = a1[8];

    a2[7] = v5;
    a2[8] = v6;
  }

  else
  {
    *(a2 + 7) = *(a1 + 7);
  }

  if (a1[9])
  {
    v3 = a1[9];
    v4 = a1[10];

    a2[9] = v3;
    a2[10] = v4;
  }

  else
  {
    *(a2 + 9) = *(a1 + 9);
  }

  return a2;
}

unint64_t sub_1D9CC()
{
  v2 = qword_30EE0;
  if (!qword_30EE0)
  {
    sub_2C88(&qword_30ED8, &qword_28120);
    sub_1DA70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1DA70()
{
  v2 = qword_30EE8;
  if (!qword_30EE8)
  {
    sub_2C88(&qword_30EF0, &qword_28128);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30EE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1DB10(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  sub_17678(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17 & 1;
  return result;
}

unint64_t sub_1DC54()
{
  v2 = qword_30F00;
  if (!qword_30F00)
  {
    sub_2C88(&qword_30EF8, &qword_28130);
    sub_1D9CC();
    sub_1D7BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1DD84()
{
  v2 = qword_30F08;
  if (!qword_30F08)
  {
    sub_2C88(&qword_30E50, &qword_280D0);
    sub_1DE28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1DE28()
{
  v2 = qword_30F10;
  if (!qword_30F10)
  {
    sub_25570();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F10);
    return WitnessTable;
  }

  return v2;
}

char *sub_1DEA8(char *a1, char *a2)
{
  v7 = sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = sub_25570();
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x29uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1DFB4(uint64_t a1, uint64_t a2)
{
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    v18 = *(a1 + 104);
    v19 = *(a1 + 112);
    sub_17678(*a1, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = v11;
    *(a2 + 56) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = v14;
    *(a2 + 80) = v15;
    *(a2 + 88) = v16;
    *(a2 + 96) = v17;
    *(a2 + 104) = v18;
    *(a2 + 112) = v19 & 1;
  }

  else
  {
    v2 = sub_25570();
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = sub_2124(&qword_30E50, &qword_280D0);
    memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_1E1CC()
{
  v2 = qword_30F18;
  if (!qword_30F18)
  {
    sub_2C88(&qword_30EB0, &qword_28108);
    sub_1DD84();
    sub_1DC54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30F18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E274(uint64_t a1)
{
  sub_2124(&qword_30E48, &qword_280C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_17190(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  }

  else
  {
    v1 = sub_25570();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1E368()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E578()
{
  v1 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CF3C(v2);
}

uint64_t sub_1E5DC(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_1E624(uint64_t a1)
{
  sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);

  if (*(a1 + 80))
  {
  }

  if (*(a1 + 96))
  {
  }

  return a1;
}

uint64_t sub_1E6AC(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_BF2C(*a1, v8, v9 & 1);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  v10 = *(a1 + 24);

  *(a2 + 24) = v10;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  if (*(a1 + 80))
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 88);

    *(a2 + 80) = v5;
    *(a2 + 88) = v6;
  }

  else
  {
    *(a2 + 80) = *(a1 + 80);
  }

  if (*(a1 + 96))
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 104);

    *(a2 + 96) = v3;
    *(a2 + 104) = v4;
  }

  else
  {
    *(a2 + 96) = *(a1 + 96);
  }

  return a2;
}

uint64_t sub_1E7F8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1E840(uint64_t a1)
{
  v1 = sub_25570();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1E89C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25570();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_2124(&qword_30E50, &qword_280D0);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1E93C(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_1EA90(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    return (v7 + 1);
  }

  else
  {
    v5 = sub_2124(&qword_30AE0, &unk_28050);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 24)], a2, v5);
    }

    else
    {
      v4 = sub_2124(&qword_30AF8, &unk_27B80);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(&a1[*(a3 + 28)], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

char *sub_1EC80(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    v4 = sub_2124(&qword_30AE0, &unk_28050);
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(&v5[*(a4 + 24)], a2, a2, v4);
    }

    else
    {
      result = sub_2124(&qword_30AF8, &unk_27B80);
      if (a3 == *(*(result - 1) + 84))
      {
        return (*(*(result - 1) + 56))(&v5[*(a4 + 28)], a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_1EE20(uint64_t a1)
{
  v6 = type metadata accessor for InstalledSoftware(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_1EF58(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1EFEC(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_B814(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1EF58(uint64_t a1)
{
  v5 = qword_30F78;
  if (!qword_30F78)
  {
    v4 = sub_25A50();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_30F78);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1EFEC(uint64_t a1)
{
  v5 = qword_30F80;
  if (!qword_30F80)
  {
    sub_25400();
    v4 = sub_25D90();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_30F80);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1F140()
{
  v2 = qword_30FC0;
  if (!qword_30FC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1F1B8()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1F3C8()
{
  v1 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1A838(v2);
}

uint64_t sub_1F42C()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1F63C()
{
  v1 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1AC68(v2);
}

uint64_t sub_1F6A0()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1F8B0()
{
  v1 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B37C(v2);
}

void *sub_1F914(const void *a1, void *a2)
{
  v6 = sub_25440();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30C70, &qword_27E30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1FA3C(uint64_t a1)
{
  v3 = sub_25440();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1FAE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_BF2C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1FB40()
{
  v2 = qword_30FD0;
  if (!qword_30FD0)
  {
    sub_2C88(&qword_30FC8, &unk_28370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1FBD4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_9158(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

uint64_t sub_1FC2C()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1FE3C()
{
  v1 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BA38(v2);
}

unint64_t sub_1FEA0(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Attributes(0);
    v1 = sub_25C90();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_20080()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20290()
{
  v1 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B324(v2);
}

unint64_t sub_203F4()
{
  v2 = qword_30FD8;
  if (!qword_30FD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_30FD8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_20458()
{
  v7 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 24);
  v9 = sub_25400();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1))
  {
    (*(v10 + 8))(v5 + v6 + v8, v9);
  }

  v4 = v5 + v6 + *(v7 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_20668(uint64_t a1)
{
  v2 = type metadata accessor for InstalledSoftwareView(0);
  v3 = (v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)));

  sub_1AB54(a1, v3);
}

unint64_t type metadata accessor for Attributes(uint64_t a1)
{
  v5 = qword_31038;
  if (!qword_31038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_31038);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_20778()
{
  v9 = type metadata accessor for InstalledSoftwareView(0);
  v1 = *(*(v9 - 8) + 80);
  v7 = (v1 + 16) & ~v1;
  v6 = v7 + *(*(v9 - 8) + 64);
  v11 = sub_25400();
  v10 = *(v11 - 8);
  v8 = (v6 + *(v10 + 80)) & ~*(v10 + 80);

  v12 = *(v9 + 24);
  if (!(*(v10 + 48))(v0 + v7 + v12, 1, v11))
  {
    (*(v10 + 8))(v5 + v7 + v12, v11);
  }

  v4 = v5 + v7 + *(v9 + 28);
  sub_2124(&qword_30A38, &qword_28060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_25640();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  (*(v10 + 8))(v5 + v8, v11);
  return swift_deallocObject();
}

uint64_t sub_20A2C()
{
  v4 = *(type metadata accessor for InstalledSoftwareView(0) - 8);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = v6 + *(v4 + 64);
  v1 = *(sub_25400() - 8);
  v2 = v0 + ((v5 + *(v1 + 80)) & ~*(v1 + 80));

  return sub_17774(v0 + v6, v2);
}

unint64_t sub_20B10()
{
  v2 = qword_30FF0;
  if (!qword_30FF0)
  {
    sub_2C88(&qword_30FE8, &qword_28388);
    sub_20BB8();
    sub_20CE4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20BB8()
{
  v2 = qword_30FF8;
  if (!qword_30FF8)
  {
    sub_2C88(&qword_31000, &qword_28390);
    sub_20C5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_30FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20C5C()
{
  v2 = qword_31008;
  if (!qword_31008)
  {
    sub_2C88(&qword_31010, &qword_28398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20CE4()
{
  v2 = qword_31018;
  if (!qword_31018)
  {
    sub_2C88(&qword_31020, &qword_283A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20D6C()
{
  v2 = qword_31028;
  if (!qword_31028)
  {
    sub_2C88(&qword_30FE0, &qword_28380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20DF4()
{
  v2 = qword_31030;
  if (!qword_31030)
  {
    sub_25680();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31030);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_20EA0(void *a1)
{
}

void *sub_20EE4(void *a1)
{

  v3 = a1 + *(sub_2124(&qword_30FE8, &qword_28388) + 36);

  v4 = *(sub_2124(&qword_31020, &qword_283A0) + 28);
  v1 = sub_259A0();
  (*(*(v1 - 8) + 8))(&v3[v4]);
  return a1;
}

char *sub_20FB4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(a1 + 2);

  *(a2 + 2) = v6;
  v8 = *(sub_2124(&qword_30FE8, &qword_28388) + 36);
  v9 = *&a1[v8];

  *&a2[v8] = v9;
  v10 = *(sub_2124(&qword_31020, &qword_283A0) + 28);
  v2 = sub_259A0();
  (*(*(v2 - 8) + 16))(&a2[v8 + v10], &a1[v8 + v10]);
  return a2;
}

uint64_t sub_210F0()
{
  result = sub_25BF0("com.apple.SoftwareUpdateUI", 0x1AuLL, 1);
  qword_319E8 = result;
  qword_319F0 = v1;
  return result;
}

uint64_t *sub_21134()
{
  if (qword_319E0 != -1)
  {
    swift_once();
  }

  return &qword_319E8;
}

uint64_t sub_21194()
{
  v1 = *sub_21134();

  return v1;
}

uint64_t sub_211D0()
{
  v1 = sub_255C0();
  sub_21264(v1, qword_31F38);
  sub_21300(v1, qword_31F38);
  sub_21134();

  sub_25BF0("SystemVersionSettings", 0x15uLL, 1);
  return sub_255B0();
}

uint64_t *sub_21264(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_21300(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_21358()
{
  if (qword_319F8 != -1)
  {
    swift_once();
  }

  v0 = sub_255C0();
  return sub_21300(v0, qword_31F38);
}

uint64_t sub_213C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21358();
  v1 = sub_255C0();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_21428(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  sub_25F00();
  *v2 = "OS_VERSION_GROUP";
  *(v2 + 8) = 16;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SPLAT_VERSION_GROUP";
  *(v2 + 32) = 19;
  *(v2 + 40) = 2;
  sub_3AB0();
  v7 = sub_25EA0(v8, v6);

  if (!v7)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_2155C(char a1)
{
  if (a1)
  {
    return sub_25BF0("SPLAT_VERSION_GROUP", 0x13uLL, 1);
  }

  else
  {
    return sub_25BF0("OS_VERSION_GROUP", 0x10uLL, 1);
  }
}

unint64_t sub_21634()
{
  v2 = qword_31040;
  if (!qword_31040)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21428(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_217B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2155C(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217F0(char a1)
{
  sub_2155C(a1 & 1);
  sub_25920();
}

unint64_t sub_21874()
{
  v2 = qword_31048;
  if (!qword_31048)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21900(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_21A68(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21C98(uint64_t *a1)
{
  sub_257B0();
  sub_25660();
  sub_21D24();
  return swift_getWitnessTable();
}

unint64_t sub_21D24()
{
  v2 = qword_31050;
  if (!qword_31050)
  {
    sub_257B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31050);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21DA4(char a1)
{
  if (a1)
  {
    return sub_25BF0("securityUpdate", 0xEuLL, 1);
  }

  else
  {
    return sub_25BF0("operatingSystem", 0xFuLL, 1);
  }
}

unint64_t sub_21FB8()
{
  v2 = qword_31058;
  if (!qword_31058)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_220D8()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_22150()
{
  v2 = *(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  sub_1D130(v2, *(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation + 8));
  return v2;
}

uint64_t sub_22214(unsigned int a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, unint64_t a6)
{
  v21 = a1;
  v22 = a2;
  v27 = a3;
  v26 = a4;
  v24 = a5;
  v25 = a6;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v19 = (*(*(sub_2124(&qword_30C70, &qword_27E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v19 - v19;
  v20 = 1;
  v35 = __chkstk_darwin(v21, v22) & 1;
  v33 = v7;
  v34 = v8;
  v32 = v9;
  v30 = v10;
  v31 = v11;
  v29 = v6;
  sub_254F0();
  *(v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_softwareType) = v21 & v20;

  v12 = v26;
  v13 = v23;
  v14 = v27;
  *(v6 + 16) = v22;
  *(v6 + 24) = v14;
  sub_1F914(v12, v13);
  sub_223BC(v23, (v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate));
  sub_1D130(v24, v25);
  v15 = v24;
  v16 = v25;
  v17 = (v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  *v17 = v24;
  v17[1] = v16;
  sub_224E4(v15, v16);
  sub_1FA3C(v26);

  return v28;
}

void *sub_223BC(const void *a1, void *a2)
{
  v6 = sub_25440();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_2124(&qword_30C70, &qword_27E30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_224E4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1E93C(result, a2);
  }

  return result;
}

uint64_t sub_22544@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar;
  v2 = sub_25500();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_225B0(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_25500();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v2 = __chkstk_darwin(v7, v1);
  v11 = &v5 - v3;
  v16 = v2;
  v15 = *(v5 + class metadata base offset for KeyPath + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v3, v6 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar);
  v8 = &v13;
  v13 = v6;
  sub_22720();
  sub_254C0();
  return (*(v9 + 8))(v11, v12);
}

unint64_t sub_22720()
{
  v2 = qword_31060;
  if (!qword_31060)
  {
    type metadata accessor for InstalledSoftware(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31060);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for InstalledSoftware(uint64_t a1)
{
  v2 = qword_31E10;
  if (!qword_31E10)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_22814@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_25500();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = __chkstk_darwin(v18, v19);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + class metadata base offset for KeyPath + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_22720();
  v8 = v22;
  sub_254B0();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_22AB8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_25F20();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t sub_22BA4()
{
  sub_C014(v0 + 16);
  sub_1FA3C(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate);
  sub_22C44(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  v3 = OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar;
  v1 = sub_25500();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_22C44(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1E93C(*a1, *(a1 + 8));
  }

  return a1;
}

void *sub_22CF8()
{
  v44 = sub_23444;
  v36 = sub_237AC;
  v69 = 0;
  v68 = 0;
  v60 = 0;
  v61 = 0;
  v51 = 0;
  v52 = 0;
  v42 = sub_2124(&qword_30C70, &qword_27E30);
  v37 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42, v1);
  v38 = v13 - v37;
  v69 = v0;
  v39 = 0;
  sub_1C02C();
  v2 = sub_1D100();
  v3 = v38;
  v41 = v2;
  v68 = v2;
  [v2 setDateStyle:1];
  [v41 setTimeStyle:v39];
  sub_1F914((v40 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate), v3);
  v41;
  v46[2] = v41;
  sub_23470(v44, v46, v42, &type metadata for Never, &type metadata for String, v43, &v64);
  v45 = 0;

  sub_1FA3C(v38);
  v62 = v64;
  v63 = v65;
  if (v65)
  {
    v66 = v62;
    v67 = v63;
  }

  else
  {
    v66 = sub_25BF0("nil", 3uLL, 1);
    v67 = v4;
    if (v63)
    {
      sub_BFA8(&v62);
    }
  }

  v5 = v45;
  v32 = v66;
  v33 = v67;
  v60 = v66;
  v61 = v67;
  v34 = *(v40 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  v35 = *(v40 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation + 8);
  sub_1D130(v34, v35);
  v55[0] = v34;
  v55[1] = v35;
  v6 = sub_2124(&qword_31068, &qword_28548);
  result = sub_23470(v36, 0, v6, &type metadata for Never, &type metadata for String, v43, &v56);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_22C44(v55);
    v53 = v56;
    v54 = v57;
    if (v57)
    {
      v58 = v53;
      v59 = v54;
    }

    else
    {
      v58 = sub_25BF0("nil", 3uLL, 1);
      v59 = v8;
      if (v54)
      {
        sub_BFA8(&v53);
      }
    }

    v20 = v58;
    v29 = v59;
    v51 = v58;
    v52 = v59;
    v9 = sub_25EF0();
    v26 = &v49;
    v49 = v9;
    v50 = v10;
    v24 = 1;
    v70._countAndFlagsBits = sub_25BF0("<InstalledSoftware: type=", 0x19uLL, 1);
    v13[1] = v70._object;
    sub_25EE0(v70);

    v11 = *(v40 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_softwareType);
    v13[2] = &v48;
    v48 = v11;
    sub_238E0();
    v18 = 16;
    sub_25EC0();
    v71._countAndFlagsBits = sub_25BF0(", version=", 0xAuLL, v24 & 1);
    v13[3] = v71._object;
    sub_25EE0(v71);

    v14 = *(v40 + 16);
    v15 = *(v40 + 24);

    v16 = v47;
    v47[0] = v14;
    v47[1] = v15;
    v21 = &type metadata for String;
    v22 = &protocol witness table for String;
    v23 = &protocol witness table for String;
    sub_25ED0();
    sub_C014(v16);
    v72._countAndFlagsBits = sub_25BF0(", installDate=", 0xEuLL, v24 & 1);
    object = v72._object;
    sub_25EE0(v72);

    v46[5] = v32;
    v46[6] = v33;
    sub_25ED0();
    v73._countAndFlagsBits = sub_25BF0(", documentation=", v18, v24 & 1);
    v19 = v73._object;
    sub_25EE0(v73);

    v46[3] = v20;
    v46[4] = v29;
    sub_25ED0();
    v74._countAndFlagsBits = sub_25BF0(">", 1uLL, v24 & 1);
    v25 = v74._object;
    sub_25EE0(v74);

    v28 = v49;
    v27 = v50;

    sub_2395C(v26);
    v30 = sub_25BE0();
    v31 = v12;

    return v30;
  }

  return result;
}

void sub_232CC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v10 = a1;
  v16 = a2;
  v21 = 0;
  v20 = 0;
  v14 = sub_25440();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14, v10);
  v15 = &v9 - v11;
  v21 = v3;
  v20 = v16;
  (*(v12 + 16))(&v9 - v11);
  isa = sub_25430().super.isa;
  (*(v12 + 8))(v15, v14);
  v19 = [v16 stringFromDate:isa];

  v4 = sub_25B90();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  *v18 = v6;
  v5[1] = v8;
}

uint64_t sub_23470@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7, a2);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8, v17 - v28);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10, v17 - v30);
  v36 = v17 - v32;
  sub_23FE8(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_237AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v7[0] = sub_25EF0();
  v7[1] = v2;
  v10._countAndFlagsBits = sub_25BF0("", 0, 1);
  sub_25EE0(v10);

  sub_25420();
  sub_25EC0();
  v11._countAndFlagsBits = sub_25BF0(" bytes", 6uLL, 1);
  sub_25EE0(v11);

  sub_2395C(v7);
  result = sub_25BE0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_238E0()
{
  v2 = qword_31070;
  if (!qword_31070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_239C4()
{
  v2 = qword_31078;
  if (!qword_31078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_23A5C(uint64_t a1)
{
  updated = sub_23BB4(319);
  if (v1 <= 0x3F)
  {
    updated = sub_25500();
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_23BB4(uint64_t a1)
{
  v5 = qword_310A8;
  if (!qword_310A8)
  {
    sub_25440();
    v4 = sub_25D90();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_310A8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_23C50(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}