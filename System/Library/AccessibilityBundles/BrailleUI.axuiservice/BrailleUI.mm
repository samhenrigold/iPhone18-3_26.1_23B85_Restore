uint64_t sub_18B0()
{
  v0 = sub_50D4();
  sub_4FA0(v0, BRUILog);
  sub_1990(v0, BRUILog);
  return sub_50C4();
}

uint64_t BRUILog.unsafeMutableAddressor()
{
  if (qword_C7B8 != -1)
  {
    swift_once();
  }

  v0 = sub_50D4();

  return sub_1990(v0, BRUILog);
}

uint64_t sub_1990(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Void __swiftcall AXBrailleUI_RootViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A8C(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v4];
  }

  else
  {
    __break(1u);
  }
}

uint64_t AXBrailleUI_RootViewController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = sub_50B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_50F4();
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t AXBrailleUI_RootViewController.init(rootView:)(uint64_t a1)
{
  v2 = sub_50B4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_50F4();
  (*(v3 + 8))(a1, v2);
  return v5;
}

void *AXBrailleUI_RootViewController.__allocating_init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_50B4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_50E4();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

void *AXBrailleUI_RootViewController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_50B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = sub_50E4();
  v7 = *(v4 + 8);
  v8 = v6;
  v7(a2, v3);
  if (v6)
  {
  }

  return v6;
}

id AXBrailleUI_RootViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AXBrailleUI_RootViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2024(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id AXBrailleUI_RootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXBrailleUI_RootViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_20D8()
{
  result = [objc_allocWithZone(type metadata accessor for BrailleUI_UIController(0)) init];
  static BrailleUI_UIController.shared = result;
  return result;
}

id BrailleUI_UIController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *BrailleUI_UIController.shared.unsafeMutableAddressor()
{
  if (qword_C7C0 != -1)
  {
    swift_once();
  }

  return &static BrailleUI_UIController.shared;
}

id static BrailleUI_UIController.shared.getter()
{
  if (qword_C7C0 != -1)
  {
    swift_once();
  }

  v1 = static BrailleUI_UIController.shared;

  return v1;
}

void *BrailleUI_UIController.mainDisplayViewController.getter()
{
  v1 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BrailleUI_UIController.mainDisplayViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2318()
{
  v0[2] = sub_5184();
  v0[3] = sub_5174();
  v0[4] = sub_5174();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_23D0;

  return sub_46F4(0);
}

uint64_t sub_23D0()
{

  v1 = sub_5164();

  return _swift_task_switch(sub_250C, v1, v0);
}

uint64_t sub_250C()
{

  v1 = sub_5164();

  return _swift_task_switch(sub_2590, v1, v0);
}

uint64_t sub_2590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_4164(&qword_C5F0, &qword_5810);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_4F28(a3, v24 - v9, &qword_C5F0, &qword_5810);
  v11 = sub_51A4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_4DD0(v10, &qword_C5F0, &qword_5810);
  }

  else
  {
    sub_5194();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_5164();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_5144() + 32;
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

      sub_4DD0(a3, &qword_C5F0, &qword_5810);

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

  sub_4DD0(a3, &qword_C5F0, &qword_5810);
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

uint64_t sub_28F0(uint64_t a1)
{
  v2 = sub_5084();
  v3 = *(v2 - 8);
  v66 = v2;
  v67 = v3;
  __chkstk_darwin();
  v5 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_5134();
  v75 = v6;
  sub_51D4();
  if (!*(a1 + 16) || (v7 = sub_3A54(v76), (v8 & 1) == 0))
  {
    sub_4E74(v76);
LABEL_46:
    v77 = sub_5134();
    v78 = v54;
    sub_51D4();
    if (*(a1 + 16) && (v55 = sub_3A54(v76), (v56 & 1) != 0))
    {
      sub_4D20(*(a1 + 56) + 32 * v55, &v77);
      sub_4E74(v76);
      swift_dynamicCast();
    }

    else
    {
      sub_4E74(v76);
    }

    v77 = sub_5134();
    v78 = v57;
    sub_51D4();
    if (*(a1 + 16) && (v58 = sub_3A54(v76), (v59 & 1) != 0))
    {
      sub_4D20(*(a1 + 56) + 32 * v58, &v77);
      sub_4E74(v76);
      swift_dynamicCast();
    }

    else
    {
      sub_4E74(v76);
    }

    sub_5094();
    sub_5044();

    sub_5094();
    sub_5034();

    sub_5094();
    sub_5054();
  }

  sub_4D20(*(a1 + 56) + 32 * v7, &v77);
  sub_4E74(v76);
  sub_4164(&qword_C730, &qword_58D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_46;
  }

  v9 = v74;
  v10 = *(v74 + 16);
  if (!v10)
  {
LABEL_44:

    goto LABEL_46;
  }

  v65 = kAXBrailleUIBrailleKey;
  v64 = kAXBrailleUIBrailleSelectionLocationKey;
  v63 = kAXBrailleUIBrailleSelectionLengthKey;
  v60[4] = kAXBrailleUICaptionKey;
  v60[3] = kAXBrailleUIMathMLKey;
  v60[2] = v67 + 32;
  v11 = &_swiftEmptyArrayStorage;
  v12 = 32;
  v62 = v5;
  v61 = v74;
  while (1)
  {
    v13 = *(v9 + v12);
    v14 = sub_5134();
    v16 = v15;
    if (*(v13 + 16))
    {
      v17 = v14;

      v18 = sub_39DC(v17, v16);
      v20 = v19;

      if (v20)
      {
        sub_4D20(*(v13 + 56) + 32 * v18, v76);
        if (swift_dynamicCast())
        {
          v21 = v78;
          v72 = v77;
          goto LABEL_12;
        }
      }
    }

    else
    {
    }

    v72 = 0;
    v21 = 0xE000000000000000;
LABEL_12:
    v71 = v21;
    v22 = sub_5134();
    v24 = *(v13 + 16);
    v73 = v12;
    if (v24)
    {
      v25 = sub_39DC(v22, v23);
      v27 = v26;

      if (v27)
      {
        sub_4D20(*(v13 + 56) + 32 * v25, v76);
        if (swift_dynamicCast())
        {
          v28 = v77;
          goto LABEL_18;
        }
      }
    }

    else
    {
    }

    v28 = sub_5014();
LABEL_18:
    v29 = sub_5134();
    if (*(v13 + 16))
    {
      v31 = sub_39DC(v29, v30);
      v33 = v32;

      if (v33)
      {
        sub_4D20(*(v13 + 56) + 32 * v31, v76);
        if (swift_dynamicCast())
        {
          v34 = v77;
          goto LABEL_24;
        }
      }
    }

    else
    {
    }

    v34 = 0;
LABEL_24:
    result = sub_5014();
    if (v28 == result)
    {
      v36 = 0;
      goto LABEL_29;
    }

    if (__OFADD__(v28, v34))
    {
      break;
    }

    if (v28 + v34 < v28)
    {
      goto LABEL_57;
    }

    v36 = v28;
LABEL_29:
    v68 = v36;
    v69 = v10;
    v37 = sub_5134();
    v39 = *(v13 + 16);
    v70 = v11;
    if (v39)
    {
      v40 = sub_39DC(v37, v38);
      v42 = v41;

      if (v42)
      {
        sub_4D20(*(v13 + 56) + 32 * v40, v76);
        swift_dynamicCast();
      }
    }

    else
    {
    }

    v43 = sub_5134();
    if (*(v13 + 16))
    {
      v45 = a1;
      v46 = sub_39DC(v43, v44);
      v48 = v47;

      if (v48)
      {
        sub_4D20(*(v13 + 56) + 32 * v46, v76);

        swift_dynamicCast();
      }

      else
      {
      }

      a1 = v45;
    }

    else
    {
    }

    v49 = v62;
    sub_5074();
    v11 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_3C18(0, v11[2] + 1, 1, v11);
    }

    v9 = v61;
    v50 = v69;
    v51 = v73;
    v53 = v11[2];
    v52 = v11[3];
    if (v53 >= v52 >> 1)
    {
      v11 = sub_3C18((v52 > 1), v53 + 1, 1, v11);
    }

    v11[2] = v53 + 1;
    (*(v67 + 32))(v11 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v53, v49, v66);
    v12 = v51 + 8;
    v10 = v50 - 1;
    if (!v10)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

Swift::Void __swiftcall BrailleUI_UIController.connectionWillBeInterruptedForClient(withIdentifier:)(Swift::String withIdentifier)
{
  sub_4164(&qword_C5F0, &qword_5810);
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = sub_51A4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_5184();
  v5 = v1;
  v6 = sub_5174();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_25F0(0, 0, v3, &unk_5820, v7);
}

uint64_t sub_3360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_5184();
  *(v4 + 48) = sub_5174();
  v6 = sub_5164();

  return _swift_task_switch(sub_33F8, v6, v5);
}

id sub_33F8()
{

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 40);
    v4 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
    swift_beginAccess();
    [v2 removeContentViewController:*(v3 + v4) withUserInteractionEnabled:0 forService:v3];

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_361C(uint64_t a1, char a2)
{
  **(*(*sub_4E30((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

id BrailleUI_UIController.init()()
{
  ObjectType = swift_getObjectType();
  _s9BrailleUI0aB13_UIControllerC13brailleUIView33_6F8689ADE33571FDFE65109765AA1F6FLL28AccessibilitySharedUISupport0A12UIVisualViewVvpfi_0();
  *&v0[OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id BrailleUI_UIController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_37EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_38E4;

  return v6(a1);
}

uint64_t sub_38E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_39DC(uint64_t a1, uint64_t a2)
{
  sub_5214();
  sub_5154();
  v4 = sub_5224();

  return sub_3A98(a1, a2, v4);
}

unint64_t sub_3A54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_51B4(*(v2 + 40));

  return sub_3B50(a1, v4);
}

unint64_t sub_3A98(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_5204())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_3B50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4ECC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_51C4();
      sub_4E74(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_3C18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_4164(&qword_C738, &qword_58E0);
  v10 = *(sub_5084() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_5084() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_3DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4164(&qword_C740, &qword_58E8);
    v3 = sub_51E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_4F28(v4, v13, &qword_C748, &qword_58F0);
      result = sub_3A54(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_4F90(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

id sub_3F2C(uint64_t a1, uint64_t a2)
{
  sub_4164(&qword_C5F0, &qword_5810);
  __chkstk_darwin();
  v6 = &v14 - v5;
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2 && a1)
      {
        sub_28F0(a1);
      }

      return sub_3DF0(&_swiftEmptyArrayStorage);
    }

    v10 = sub_51A4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_5184();
    v11 = v2;
    v12 = sub_5174();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_25F0(0, 0, v6, &unk_58B8, v13);
LABEL_14:

    return sub_3DF0(&_swiftEmptyArrayStorage);
  }

  if (a2 != 3)
  {
    if (a2 != 4 && a2 != 5)
    {
      return sub_3DF0(&_swiftEmptyArrayStorage);
    }

    sub_5094();
    sub_5064();
    goto LABEL_14;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
    swift_beginAccess();
    [v8 removeContentViewController:*&v2[v9] withUserInteractionEnabled:0 forService:v2];

    return sub_3DF0(&_swiftEmptyArrayStorage);
  }

  __break(1u);
  return result;
}

uint64_t sub_4164(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_41B0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5010;

  return sub_3360(v3, v4, v5, v2);
}

uint64_t sub_42B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42EC(uint64_t a1)
{
  result = sub_50B4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4384()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_43BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5010;

  return sub_37EC(a1, v4);
}

uint64_t sub_4474(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_452C;

  return sub_37EC(a1, v4);
}

uint64_t sub_452C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4620()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_452C;

  return sub_2318();
}

uint64_t sub_46F4(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_50B4();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  sub_5184();
  v2[35] = sub_5174();
  v5 = sub_5164();
  v2[36] = v5;
  v2[37] = v4;

  return _swift_task_switch(sub_47F4, v5, v4);
}

uint64_t sub_47F4()
{
  *(v0 + 144) = 0u;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  *(v0 + 160) = 0u;
  v6 = *(v4 + 16);
  v6(v2, v5 + OBJC_IVAR___BrailleUI_UIController_brailleUIView, v3);
  objc_allocWithZone(type metadata accessor for AXBrailleUI_RootViewController(0));
  v6(v1, v2, v3);
  v7 = sub_50F4();
  *(v0 + 304) = v7;
  (*(v4 + 8))(v2, v3);
  v8 = [objc_opt_self() sharedDisplayManager];
  *(v0 + 312) = v8;
  if (v8)
  {
    v9 = v8;
    v20 = v7;
    v10 = sub_5124();
    *(v0 + 320) = v10;
    sub_4F28(v0 + 144, v0 + 176, &qword_C720, &qword_58C8);
    v11 = *(v0 + 200);
    if (v11)
    {
      v12 = sub_4E30((v0 + 176), *(v0 + 200));
      v13 = *(v11 - 8);
      v14 = swift_task_alloc();
      (*(v13 + 16))(v14, v12, v11);
      v15 = sub_51F4();
      (*(v13 + 8))(v14, v11);

      sub_4D84((v0 + 176));
    }

    else
    {
      v15 = 0;
    }

    *(v0 + 328) = v15;
    v16 = *(v0 + 232);
    v17 = *(v0 + 240);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_4B1C;
    v18 = swift_continuation_init();
    *(v0 + 136) = sub_4164(&qword_C728, &qword_58D0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_361C;
    *(v0 + 104) = &unk_8558;
    *(v0 + 112) = v18;
    [v9 addContentViewController:v20 withUserInteractionEnabled:0 forService:v17 forSceneClientIdentifier:v10 context:0 userInterfaceStyle:2 forWindowScene:v16 spatialConfiguration:v15 completion:v0 + 80];
    v8 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v8);
}

uint64_t sub_4B1C()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);

  return _swift_task_switch(sub_4C24, v2, v1);
}

uint64_t sub_4C24()
{
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[30];

  sub_4DD0((v0 + 18), &qword_C720, &qword_58C8);

  swift_unknownObjectRelease();
  v5 = OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_4D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4D84(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_4DD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4164(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_4E30(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4164(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_4F90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_4FA0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}