unint64_t sub_1720()
{
  result = qword_C3A0;
  if (!qword_C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3A0);
  }

  return result;
}

uint64_t sub_1790()
{
  v0 = sub_1B58(&qword_C3B8, &qword_5198);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_4CF8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_4AA8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_4A88();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4CE8();
  sub_4A98();
  sub_4A78();
  v9 = enum case for ColorScheme.dark(_:);
  v10 = sub_4B08();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v2, v9, v10);
  (*(v11 + 56))(v2, 0, 1, v10);
  sub_1B58(&qword_C3C0, &unk_51A0);
  sub_4B28();
  *(swift_allocObject() + 16) = xmmword_50C0;
  sub_4B18();
  sub_1BA0();
  sub_4B38();

  sub_1BF8(v2);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AB0()
{
  sub_1B58(&qword_C3A8, &qword_5190);
  sub_4A88();
  sub_1BA0();
  swift_getOpaqueTypeConformance2();
  return sub_4BB8();
}

uint64_t sub_1B58(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BA0()
{
  result = qword_C3B0;
  if (!qword_C3B0)
  {
    sub_4A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B0);
  }

  return result;
}

uint64_t sub_1BF8(uint64_t a1)
{
  v2 = sub_1B58(&qword_C3B8, &qword_5198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C74()
{
  result = qword_C3C8;
  if (!qword_C3C8)
  {
    sub_1CD8(&qword_C3D0, &unk_51D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3C8);
  }

  return result;
}

uint64_t sub_1CD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_1D60(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Void __swiftcall ActionButtonSettings.viewDidLoad()()
{
  v1 = v0;
  v66 = sub_4AD8();
  v63 = *(v66 - 8);
  v65 = *(v63 + 64);
  v2 = __chkstk_darwin(v66);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v68 = &v59 - v4;
  v5 = sub_4BA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v59 - v10;
  v67 = sub_4AB8();
  v69 = *(v67 - 8);
  v12 = *(v69 + 64);
  v13 = __chkstk_darwin(v67);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v71.receiver = v0;
  v71.super_class = ActionButtonSettings;
  objc_msgSendSuper2(&v71, "viewDidLoad");
  v16 = [v0 traitCollection];
  sub_4CC8();

  v17 = [v1 traitCollection];
  sub_4CD8();

  v62 = sub_4B88();
  (*(v6 + 8))(v11, v5);
  v18 = v1;
  v60 = v1;
  v19 = [v1 traitCollection];
  sub_4CD8();

  v20 = *(v6 + 32);
  v20(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v61 = swift_allocObject();
  v20((v61 + v21), v9, v5);
  v22 = v63;
  v23 = v68;
  v24 = [v18 traitCollection];
  sub_4CB8();

  v25 = v69;
  v26 = *(v69 + 16);
  v59 = v15;
  v27 = v67;
  v26(v70, v15, v67);
  v28 = v64;
  v29 = v66;
  (*(v22 + 16))(v64, v23, v66);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v12;
  v32 = (v30 + v12) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v22 + 80) + v32 + 24) & ~*(v22 + 80);
  v34 = swift_allocObject();
  (*(v25 + 32))(v34 + v30, v70, v27);
  *(v34 + v31) = v62 & 1;
  v35 = v34 + v32;
  v37 = v60;
  v36 = v61;
  *(v35 + 8) = sub_3C60;
  *(v35 + 16) = v36;
  (*(v22 + 32))(v34 + v33, v28, v29);
  v38 = objc_allocWithZone(sub_4AF8());

  v39 = sub_4AE8();
  v40 = [v37 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_9;
  }

  v41 = v40;
  v42 = v39;
  v43 = [v42 view];
  if (!v43)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v44 = v43;
  [v41 addSubview:v43];

  v45 = [v42 view];
  if (!v45)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v46 = v45;
  v47 = [v37 view];
  if (!v47)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v48 = v47;
  [v47 bounds];
  v50 = v49;
  v52 = v51;

  [v46 setFrame:{0.0, 0.0, v50, v52}];
  v53 = [v42 view];
  if (!v53)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v54 = v53;
  [v53 setAutoresizingMask:18];

  v55 = [v42 view];
  if (v55)
  {
    v56 = v55;
    v57 = sub_4BD8();
    [v56 setAccessibilityIdentifier:v57];

    v58 = [v42 overrideUserInterfaceStyle];
    [v37 setOverrideUserInterfaceStyle:v58];
    [v37 addChildViewController:v42];
    [v42 didMoveToParentViewController:v37];

    (*(v22 + 8))(v68, v29);
    (*(v69 + 8))(v59, v67);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_2468(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a1;
  v40 = a5;
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v46 = sub_4B48();
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4B78();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_4AD8();
  v8 = *(v36 - 8);
  v37 = *(v8 + 64);
  __chkstk_darwin(v36);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v10;
  v11 = sub_4AB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_4B58();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CEC(0, &qword_C448, OS_dispatch_queue_ptr);
  (*(v16 + 104))(v18, enum case for DispatchQoS.QoSClass.userInteractive(_:), v15);
  v38 = sub_4CA8();
  (*(v16 + 8))(v18, v15);
  (*(v12 + 16))(v14, v39, v11);
  v19 = v10;
  v20 = v36;
  (*(v8 + 16))(v19, v40, v36);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = v21 + v13;
  v23 = (v21 + v13) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v8 + 80) + v23 + 24) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v21, v14, v11);
  *(v25 + v22) = v42;
  v26 = v25 + v23;
  v27 = v44;
  *(v26 + 8) = v43;
  *(v26 + 16) = v27;
  (*(v8 + 32))(v25 + v24, v35, v20);
  aBlock[4] = sub_3E90;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_32A4;
  aBlock[3] = &unk_8600;
  v28 = _Block_copy(aBlock);

  v29 = v41;
  sub_4B68();
  v50 = &_swiftEmptyArrayStorage;
  sub_4018(&qword_C450, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1B58(&qword_C458, &qword_5208);
  sub_3FB4();
  v31 = v45;
  v30 = v46;
  sub_4D08();
  v32 = v38;
  sub_4C98();
  _Block_release(v28);

  (*(v49 + 8))(v31, v30);
  (*(v47 + 8))(v29, v48);
}

void sub_29BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v5 = sub_1B58(&qword_C400, &qword_5200);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v33 = sub_4AD8();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v33);
  v10 = sub_1B58(&qword_C468, &qword_5210);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_4AB8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, enum case for SettingsAppPrimaryNavigationMode.stateDriven(_:), v13);
  sub_4018(&qword_C470, &type metadata accessor for SettingsAppPrimaryNavigationMode, &protocol conformance descriptor for SettingsAppPrimaryNavigationMode);
  sub_4C18();
  sub_4C18();
  (*(v14 + 8))(v16, v13);
  if (v38 == v37)
  {
    v17 = sub_4C88();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = v33;
    (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v33);
    sub_4C68();
    v19 = v36;

    v20 = sub_4C58();
    v21 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = &protocol witness table for MainActor;
    *(v22 + 32) = v34 & 1;
    *(v22 + 40) = v35;
    *(v22 + 48) = v19;
    (*(v8 + 32))(v22 + v21, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    sub_2FA4(0, 0, v12, &unk_5220, v22);
  }

  else
  {
    v23 = [objc_opt_self() defaultWorkspace];
    if (v23)
    {
      v24 = v23;
      sub_4A28();
      v25 = sub_4A38();
      v26 = *(v25 - 8);
      v28 = 0;
      if ((*(v26 + 48))(v7, 1, v25) != 1)
      {
        sub_4A08(v27);
        v28 = v29;
        (*(v26 + 8))(v7, v25);
      }

      sub_4380(&_swiftEmptyArrayStorage);
      isa = sub_4BC8().super.isa;

      [v24 openSensitiveURL:v28 withOptions:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 48) = a4;
  sub_4C68();
  *(v7 + 40) = sub_4C58();
  v9 = sub_4C48();

  return _swift_task_switch(sub_2F20, v9, v8);
}

uint64_t sub_2F20()
{
  v1 = *(v0 + 48);

  if (v1 == 1)
  {
    (*(v0 + 16))(v2);
  }

  else
  {
    sub_4AC8();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B58(&qword_C468, &qword_5210);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_4984(a3, v25 - v10, &qword_C468, &qword_5210);
  v12 = sub_4C88();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_477C(v11, &qword_C468, &qword_5210);
  }

  else
  {
    sub_4C78();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_4C48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_4BF8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_477C(a3, &qword_C468, &qword_5210);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_477C(a3, &qword_C468, &qword_5210);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_32A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall ActionButtonSettings.viewDidAppear(_:)(Swift::Bool a1)
{
  v35 = sub_4A68();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B58(&qword_C400, &qword_5200);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_4A38();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v36.receiver = v1;
  v36.super_class = ActionButtonSettings;
  objc_msgSendSuper2(&v36, "viewDidAppear:", a1);
  sub_4A28();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_477C(v8, &qword_C400, &qword_5200);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v16 = sub_4A58();
    type metadata accessor for ActionButtonSettings(v16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v19 = [v18 bundleURL];

    sub_4A18();
    v20 = objc_allocWithZone(_NSLocalizedStringResource);
    v21 = sub_4BD8();
    v34 = v1;
    v22 = v21;
    isa = sub_4A48().super.isa;
    sub_4A08(v24);
    v26 = v25;
    v27 = [v20 initWithKey:v22 table:0 locale:isa bundleURL:v25];

    v28 = *(v10 + 8);
    v28(v13, v9);
    (*(v3 + 8))(v5, v35);
    v29 = sub_4BD8();
    sub_3CEC(0, &qword_C408, _NSLocalizedStringResource_ptr);
    v30 = sub_4C28().super.isa;
    sub_4A08(v31);
    v33 = v32;
    [v34 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v29 title:v27 localizedNavigationComponents:v30 deepLink:v32];

    v28(v15, v9);
  }
}

Swift::Void __swiftcall ActionButtonSettings.viewDidDisappear(_:)(Swift::Bool a1)
{
  v9.super_class = ActionButtonSettings;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1);
  v3 = [v1 childViewControllers];
  sub_3CEC(0, &qword_C410, UIViewController_ptr);
  v4 = sub_4C38();

  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v5 = sub_4D28();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_4D18();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 viewDidDisappear:a1];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void __swiftcall ActionButtonSettings.init(nibName:bundle:)(ActionButtonSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_4BD8();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id ActionButtonSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_4BD8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = ActionButtonSettings;
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ActionButtonSettings.init(coder:)(void *a1)
{
  v4.super_class = ActionButtonSettings;
  v2 = objc_msgSendSuper2(&v4, "initWithCoder:", a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_3BD8()
{
  v1 = sub_4BA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_3CEC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_3D34()
{
  v1 = sub_4AB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_4AD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_3EA8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_4AB8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_4AD8() - 8);
  v6 = *(v1 + v4);
  v7 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  v9 = v1 + (((v4 & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 24) & ~*(v5 + 80));

  return a1(v1 + v3, v6, v7, v8, v9);
}

uint64_t sub_3F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_3FB4()
{
  result = qword_C460;
  if (!qword_C460)
  {
    sub_1CD8(&qword_C458, &qword_5208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C460);
  }

  return result;
}

uint64_t sub_4018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4060(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_4158;

  return v6(a1);
}

uint64_t sub_4158()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_4250(uint64_t a1, uint64_t a2)
{
  sub_4D58();
  sub_4C08();
  v4 = sub_4D68();

  return sub_42C8(a1, a2, v4);
}

unint64_t sub_42C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_4D48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B58(&qword_C478, &qword_5240);
    v3 = sub_4D38();
    v4 = a1 + 32;

    while (1)
    {
      sub_4984(v4, &v13, &unk_C480, &qword_5248);
      v5 = v13;
      v6 = v14;
      result = sub_4250(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_49EC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_44B0()
{
  v1 = sub_4AD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_457C(uint64_t a1)
{
  v4 = *(sub_4AD8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_4688;

  return sub_2E80(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_4688()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_477C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B58(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_47DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4A04;

  return sub_4060(a1, v4);
}

uint64_t sub_48CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4688;

  return sub_4060(a1, v4);
}

uint64_t sub_4984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B58(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_49EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}