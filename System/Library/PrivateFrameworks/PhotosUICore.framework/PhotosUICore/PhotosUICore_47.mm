uint64_t sub_1A4217AE0(uint64_t a1)
{
  v4 = *(v1 + 48);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A4215508(a1, v5, v6, v4);
}

unint64_t sub_1A4217B88()
{
  result = qword_1EB1358F0;
  if (!qword_1EB1358F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1358F0);
  }

  return result;
}

unint64_t sub_1A4217BDC()
{
  result = qword_1EB135900;
  if (!qword_1EB135900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB135900);
  }

  return result;
}

void sub_1A4217C40(uint64_t a1)
{
  if (!qword_1EB135908)
  {
    sub_1A4217284(255, &qword_1EB135890, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E69C2690]);
    type metadata accessor for LemonadeSuggestedSearchCollection(255);
    sub_1A4211FE0();
    v1 = sub_1A5243714();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135908);
    }
  }
}

uint64_t sub_1A4217CF0(uint64_t a1, uint64_t a2)
{
  sub_1A41170C8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4217DA4()
{
  result = qword_1EB135918;
  if (!qword_1EB135918)
  {
    sub_1A4217080(255);
    sub_1A3C7AB78(&qword_1EB135920, sub_1A42170E8, MEMORY[0x1E697FDF8]);
    sub_1A3C7AB78(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker, &unk_1A5362FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135918);
  }

  return result;
}

void static LemonadeMemoriesCreationUnavailableAlert.show(state:viewController:photoLibrary:)(uint64_t a1, void *a2, void *a3)
{
  v46 = a2;
  v5 = sub_1A52453A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v7;
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42C8F98(10);
  v15 = sub_1A3C4A780();
  v16 = *(v12 + 16);
  v42 = v11;
  v16(v14, v15, v11);
  v17 = *(v6 + 16);
  v45 = v5;
  v41 = v17;
  v17(v10, a1, v5);
  v18 = sub_1A5246F04();
  v19 = sub_1A524D264();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = a1;
    v21 = v20;
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v21 = 136315138;
    v22 = sub_1A52452C4();
    v40 = a3;
    v24 = v23;
    (*(v6 + 8))(v10, v45);
    sub_1A3C2EF94(v22, v24, aBlock);
  }

  v25 = v10;
  v26 = v45;
  (*(v6 + 8))(v25, v45);
  (*(v12 + 8))(v14, v42);
  v27 = objc_opt_self();
  v28 = v44;
  v41(v44, a1, v26);
  v29 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v6 + 32))(v31 + v29, v28, v26);
  *(v31 + v30) = a3;
  v32 = v46;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1A4218CD8;
  *(v33 + 24) = v31;
  aBlock[4] = sub_1A3D78DD0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  aBlock[3] = &block_descriptor_127;
  v34 = _Block_copy(aBlock);
  v35 = v32;

  v36 = a3;

  _Block_release(v34);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }
}

void sub_1A421833C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v73 = a4;
  v68 = a3;
  v6 = sub_1A52453A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v71 = sub_1A5245364();
  v15 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  sub_1A42197A0(a2);
  v22 = sub_1A524C634();

  [a1 setTitle_];

  sub_1A4219CF8(a2);
  v23 = sub_1A524C634();

  v75 = a1;
  [a1 setMessage_];

  v77 = *(v7 + 16);
  v78 = a2;
  v77(v14, a2, v6);
  v76 = *(v7 + 88);
  v24 = v76(v14, v6);
  v25 = *MEMORY[0x1E69C1480];
  v74 = v15;
  if (v24 == v25)
  {
    v26 = v15;
    (*(v7 + 96))(v14, v6);
    v27 = *(v15 + 32);
    v28 = v71;
    v29 = v27(v21, v14, v71);
    v30 = MEMORY[0x1A5900660](v29);
    if (v30)
    {
      v67 = 0x80000001A53CDCB0;
      v32 = type metadata accessor for LemonadeMemoriesCreationUnavailableAlert.AlertHeaderImageViewController(v30, v31);
      v33 = objc_allocWithZone(v32);
      *&v33[OBJC_IVAR____TtCV12PhotosUICore40LemonadeMemoriesCreationUnavailableAlertP33_C71893E33649A3BCDDFA926B04B6DC1B30AlertHeaderImageViewController_imageView] = 0;
      *&v33[OBJC_IVAR____TtCV12PhotosUICore40LemonadeMemoriesCreationUnavailableAlertP33_C71893E33649A3BCDDFA926B04B6DC1B30AlertHeaderImageViewController_alertHeaderHeight] = 0x4051800000000000;
      *&v33[OBJC_IVAR____TtCV12PhotosUICore40LemonadeMemoriesCreationUnavailableAlertP33_C71893E33649A3BCDDFA926B04B6DC1B30AlertHeaderImageViewController_alertHeaderImageTopPadding] = 0x4038000000000000;
      v34 = &v33[OBJC_IVAR____TtCV12PhotosUICore40LemonadeMemoriesCreationUnavailableAlertP33_C71893E33649A3BCDDFA926B04B6DC1B30AlertHeaderImageViewController_systemImageName];
      v35 = v67;
      *v34 = 0xD00000000000001FLL;
      *(v34 + 1) = v35;
      v79.receiver = v33;
      v79.super_class = v32;
      v36 = objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);
      [v75 setHeaderContentViewController_];
    }

    (*(v26 + 8))(v21, v28);
  }

  else
  {
    (*(v7 + 8))(v14, v6);
    v28 = v71;
  }

  v77(v11, v78, v6);
  if (v76(v11, v6) == v25)
  {
    (*(v7 + 96))(v11, v6);
    v37 = v74;
    v38 = v70;
    v39 = (*(v74 + 32))();
    if (MEMORY[0x1A5900680](v39))
    {
      v40 = sub_1A524C634();
      v41 = PXMemoryCreationLocalizedString(v40);

      if (!v41)
      {
        sub_1A524C674();
        v41 = sub_1A524C634();
      }

      v84 = sub_1A4218D80;
      v85 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_1A3C2E0D0;
      v83 = &block_descriptor_25;
      v42 = _Block_copy(&aBlock);
      [v75 addActionWithTitle:v41 style:0 action:v42];
      _Block_release(v42);

      (*(v74 + 8))(v70, v28);
    }

    else
    {
      (*(v37 + 8))(v38, v28);
    }
  }

  else
  {
    (*(v7 + 8))(v11, v6);
  }

  v43 = v72;
  v77(v72, v78, v6);
  if (v76(v43, v6) == v25)
  {
    (*(v7 + 96))(v43, v6);
    v44 = v74;
    v45 = v69;
    (*(v74 + 32))(v69, v43, v28);
    v46 = sub_1A52452E4();
    if (v46 == 2)
    {
      (*(v44 + 8))(v45, v28);
      v47 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
    }

    else
    {
      v47 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
      if ((v46 & 1) != 0 && v68)
      {
        v48 = v68;
        v49 = sub_1A524C634();
        v50 = PXMemoryCreationLocalizedString(v49);

        if (!v50)
        {
          sub_1A524C674();
          v50 = sub_1A524C634();
        }

        v51 = swift_allocObject();
        *(v51 + 16) = v48;
        v84 = sub_1A421A404;
        v85 = v51;
        aBlock = MEMORY[0x1E69E9820];
        v81 = 1107296256;
        v82 = sub_1A3C2E0D0;
        v83 = &block_descriptor_22_0;
        v52 = _Block_copy(&aBlock);
        v53 = v48;

        [v75 addActionWithTitle:v50 style:0 action:v52];
        _Block_release(v52);

        (*(v44 + 8))(v45, v28);
      }

      else
      {
        (*(v44 + 8))(v45, v28);
      }
    }
  }

  else
  {
    (*(v7 + 8))(v43, v6);
    v47 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
  }

  v54 = sub_1A524C634();
  v55 = PXMemoryCreationLocalizedString(v54);

  sub_1A524C674();
  v56 = sub_1A524C634();

  [v75 v47[85]];

  v57 = v73;
  if (v73)
  {
    sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v59 = v57;
    v60 = [ObjCClassFromMetadata sharedInstance];
    v61 = [v60 canShowInternalUI];

    if (v61)
    {
      v62 = sub_1A524C634();
      v63 = swift_allocObject();
      *(v63 + 16) = v59;
      v84 = sub_1A421A36C;
      v85 = v63;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_1A3C2E0D0;
      v83 = &block_descriptor_16_2;
      v64 = _Block_copy(&aBlock);
      v65 = v59;

      [v75 v47[85]];
      _Block_release(v64);

      v59 = v62;
    }
  }
}

void sub_1A4218CD8(void *a1)
{
  v3 = *(sub_1A52453A4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1A421833C(a1, v1 + v4, v6, v7);
}

void sub_1A4218D80(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v4[4] = sub_1A4218E38;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3D6084C;
  v4[3] = &block_descriptor_28_1;
  v3 = _Block_copy(v4);
  [v2 navigateToDestination:2 completion:v3];
  _Block_release(v3);
}

uint64_t sub_1A4218E38(char a1, void *a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1A3C4A780();
  v12 = *(v5 + 16);
  if (a1)
  {
    v12(v10, v11, v4);
    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, v14, "Navigated to local storage settings", v15, 2u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    v12(v7, v11, v4);
    v17 = a2;
    v18 = sub_1A5246F04();
    v19 = sub_1A524D264();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = a2;
      v26 = v21;
      *v20 = 136315138;
      v22 = a2;
      sub_1A421A438(0);
      v23 = sub_1A524C714();
      sub_1A3C2EF94(v23, v24, &v26);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A42191C0(uint64_t a1, uint64_t a2)
{
  v37.receiver = v2;
  v37.super_class = type metadata accessor for LemonadeMemoriesCreationUnavailableAlert.AlertHeaderImageViewController(a1, a2);
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v3 = sub_1A524C634();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      [v7 addSubview_];

      v9 = [objc_opt_self() secondaryLabelColor];
      [v8 setTintColor_];

      [v8 setTranslatesAutoresizingMaskIntoConstraints_];
      [v8 setContentMode_];

      sub_1A3C4D594(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A531E190;
      v11 = [v2 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 heightAnchor];

        v14 = [v13 constraintEqualToConstant_];
        *(v10 + 32) = v14;
        v15 = [v8 topAnchor];

        v16 = [v2 view];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 topAnchor];

          v19 = [v15 constraintEqualToAnchor:v18 constant:24.0];
          *(v10 + 40) = v19;
          v20 = [v8 bottomAnchor];

          v21 = [v2 view];
          if (v21)
          {
            v22 = v21;
            v23 = [v21 bottomAnchor];

            v24 = [v20 constraintEqualToAnchor_];
            *(v10 + 48) = v24;
            v25 = [v8 leadingAnchor];

            v26 = [v2 view];
            if (v26)
            {
              v27 = v26;
              v28 = [v26 leadingAnchor];

              v29 = [v25 constraintEqualToAnchor_];
              *(v10 + 56) = v29;
              v30 = [v8 trailingAnchor];

              v31 = [v2 view];
              if (v31)
              {
                v32 = v31;
                v33 = objc_opt_self();
                v34 = [v32 trailingAnchor];

                v35 = [v30 constraintEqualToAnchor_];
                *(v10 + 64) = v35;
                sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
                v36 = sub_1A524CA14();

                [v33 activateConstraints_];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_1A42196E8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeMemoriesCreationUnavailableAlert.AlertHeaderImageViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A42197A0(uint64_t a1)
{
  v2 = sub_1A5245384();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52453A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = sub_1A5245364();
  v34 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  v35 = a1;
  v15(v10, a1, v4, v12);
  v16 = *(v5 + 88);
  if (v16(v10, v4) == *MEMORY[0x1E69C1480])
  {
    (*(v5 + 96))(v10, v4);
    v17 = v34;
    v18 = (*(v34 + 32))(v14, v10, v11);
    if (MEMORY[0x1A5900680](v18) & 1) != 0 || (MEMORY[0x1A59006A0]() & 1) != 0 || (MEMORY[0x1A5900690]())
    {
      v24 = sub_1A524C634();
LABEL_9:
      v25 = PXMemoryCreationLocalizedString(v24);

      v28 = sub_1A524C674();
      (*(v17 + 8))(v14, v11);
      return v28;
    }

    if ((MEMORY[0x1A59006B0]() & 1) == 0 && (MEMORY[0x1A5900660]() & 1) == 0)
    {
      sub_1A52452E4();
      v24 = sub_1A524C634();
      goto LABEL_9;
    }

    (*(v17 + 8))(v14, v11);
    return 0;
  }

  v19 = *(v5 + 8);
  v19(v10, v4);
  (v15)(v7, v35, v4);
  if (v16(v7, v4) != *MEMORY[0x1E69C1490])
  {
    v19(v7, v4);
    return 0;
  }

  (*(v5 + 96))(v7, v4);
  v21 = v31;
  v20 = v32;
  v22 = v33;
  v23 = (*(v32 + 32))(v31, v7, v33);
  MEMORY[0x1A59006E0](v23);
  v26 = sub_1A524C634();
  v27 = PXMemoryCreationLocalizedString(v26);

  v28 = sub_1A524C674();
  (*(v20 + 8))(v21, v22);
  return v28;
}

uint64_t sub_1A4219CF8(uint64_t a1)
{
  v41 = sub_1A5245384();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52453A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = sub_1A5245364();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v43 = a1;
  v14(v8, a1, v3, v11);
  v15 = *(v4 + 88);
  if (v15(v8, v3) == *MEMORY[0x1E69C1480])
  {
    (*(v4 + 96))(v8, v3);
    v16 = (*(v10 + 32))(v13, v8, v9);
    v17 = v9;
    if ((MEMORY[0x1A5900680](v16) & 1) == 0 && (MEMORY[0x1A59006A0]() & 1) == 0 && (MEMORY[0x1A5900690]() & 1) == 0)
    {
      if (MEMORY[0x1A59006B0]() & 1) != 0 || (MEMORY[0x1A5900660]())
      {
        v26 = 0;
        v30 = 0xE000000000000000;
        goto LABEL_11;
      }

      sub_1A52452E4();
    }

    v27 = sub_1A524C634();
    v28 = PXMemoryCreationLocalizedString(v27);

    v26 = sub_1A524C674();
    v30 = v29;

LABEL_11:
    (*(v10 + 8))(v13, v17);
    goto LABEL_14;
  }

  v18 = *(v4 + 8);
  v18(v8, v3);
  v19 = v42;
  (v14)(v42, v43, v3);
  if (v15(v19, v3) == *MEMORY[0x1E69C1490])
  {
    (*(v4 + 96))(v19, v3);
    v21 = v40;
    v20 = v41;
    v22 = (*(v44 + 32))(v40, v19, v41);
    v23 = MEMORY[0x1A59006E0](v22);
    if (v23 != 2 && (v23 & 1) != 0)
    {
      v24 = sub_1A524C634();
      v25 = PXMemoryCreationLocalizedString(v24);

      v26 = sub_1A524C674();
      (*(v44 + 8))(v21, v20);
      return v26;
    }

    v31 = [objc_opt_self() currentDevice];
    [v31 batteryState];

    v32 = sub_1A524C634();
    v33 = PXMemoryCreationLocalizedString(v32);

    v26 = sub_1A524C674();
    v30 = v34;

    (*(v44 + 8))(v21, v20);
  }

  else
  {
    v18(v19, v3);
    v26 = 0;
    v30 = 0xE000000000000000;
  }

LABEL_14:
  sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
  v35 = [swift_getObjCClassFromMetadata() sharedInstance];
  v36 = [v35 canShowInternalUI];

  if (v36)
  {
    v37 = MEMORY[0x1E69E6158];
    sub_1A3C4D594(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1A52FC9F0;
    *(v38 + 32) = v26;
    *(v38 + 40) = v30;
    *(v38 + 48) = 0x100000000000003BLL;
    *(v38 + 56) = 0x80000001A53CDCD0;
    v45 = v38;
    sub_1A3C4D594(0, &qword_1EB126ED0, v37, MEMORY[0x1E69E62F8]);
    sub_1A3CAD85C();
    v26 = sub_1A524C514();
  }

  return v26;
}

void sub_1A421A36C()
{
  v1 = *(v0 + 16);
  type metadata accessor for TTRWorkflowFactory();
  static TTRWorkflowFactory.defaultWorkflow(context:)(&v2);
  TTRWorkflow.present(in:completion:)(v1, sub_1A42190D4, 0);
}

void sub_1A421A404()
{
  v1 = *(v0 + 16);
  type metadata accessor for LemonadeMemoriesCreationAvailabilityManager(0);
  sub_1A40156B8(v1, v2);
}

void sub_1A421A438(uint64_t a1)
{
  if (!qword_1EB139220)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139220);
    }
  }
}

void sub_1A421A4C0(double (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  *a2 = a1();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void *sub_1A421A520@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A418802C();
  *a1 = v3;
  return result;
}

void sub_1A421A594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A421A5F8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v70 = a2;
  v69 = *(a1 + 16);
  v4 = sub_1A5248804();
  v74 = a1;
  v68 = *(a1 + 24);
  v79 = v68;
  v80 = MEMORY[0x1E697E040];
  v76 = v4;
  *&v77 = COERCE_DOUBLE(swift_getWitnessTable());
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  v60 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1A524B8B4();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v51[-v6];
  sub_1A421AFE0(255);
  v64 = v5;
  v7 = sub_1A5248804();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v51[-v10];
  v11 = sub_1A5242D14();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51[-v16];
  v18 = sub_1A5249234();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *v2;
  v22 = *(v2 + 8);
  v25 = *(v2 + 16);
  v24 = *(v2 + 24);
  v75 = v2;
  v58 = *(v2 + 32);
  v57 = v26;
  v56 = v19;
  v55 = v21;
  v54 = v23;
  v72 = *&v24;
  v73 = v22;
  v71 = v25;
  if (v58 == 1)
  {
    v29 = *&v22;
    v32 = *&v24;
  }

  else
  {

    v27 = sub_1A524D254();
    v28 = sub_1A524A014();
    sub_1A5246DF4(v27, &dword_1A3C1C000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v23, v73, v71, *&v72, 0);
    v53 = *(v19 + 8);
    v53(v21, v18);
    v29 = *&v77;

    v30 = sub_1A524D254();
    v31 = sub_1A524A014();
    sub_1A5246DF4(v30, &dword_1A3C1C000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v23, v73, v71, *&v72, 0);
    v53(v21, v18);
    v32 = v78;
  }

  v33 = v29 + v32;
  v34 = *(v74 + 36);
  sub_1A3D61808(v17);
  v35 = *MEMORY[0x1E69C2210];
  v36 = *(v12 + 104);
  v36(v14, v35, v11);
  v37 = sub_1A5242D04();
  v38 = *(v12 + 8);
  v38(v14, v11);
  v38(v17, v11);
  v39 = *&v33;
  if (v37)
  {
    if (v58)
    {
      v39 = v73;
    }

    else
    {
      v53 = v34;
      v40 = v54;

      v52 = sub_1A524D254();
      v41 = sub_1A524A014();
      sub_1A5246DF4(v52, &dword_1A3C1C000, v41, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v42 = v55;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35A84(v40, v73, v71, *&v72, 0);
      (*(v56 + 8))(v42, v57);
      v39 = v77;
    }
  }

  sub_1A3D61808(v17);
  v36(v14, v35, v11);
  v43 = sub_1A5242D04();
  v38(v14, v11);
  v44 = (v38)(v17, v11);
  v45 = v74;
  if (v43)
  {
    if (v58)
    {
      v33 = v72;
    }

    else
    {
      v46 = v54;

      v47 = sub_1A524D254();
      v48 = sub_1A524A014();
      sub_1A5246DF4(v47, &dword_1A3C1C000, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v49 = v55;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35A84(v46, v73, v71, *&v72, 0);
      v44 = (*(v56 + 8))(v49, v57);
      v33 = v78;
    }
  }

  MEMORY[0x1EEE9AC00](v44);
  v50 = v68;
  *&v51[-48] = v69;
  *&v51[-40] = v50;
  *&v51[-32] = v75;
  *&v51[-24] = v39;
  *&v51[-16] = v33;
  sub_1A524BC74();
  sub_1A524B8A4();
  swift_getKeyPath();
  sub_1A421C668(v45);
}

void sub_1A421AFE0(uint64_t a1)
{
  if (!qword_1EB122180)
  {
    sub_1A421DEF0(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122180);
    }
  }
}

uint64_t sub_1A421B05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v40 = a1;
  v44 = a4;
  v10 = sub_1A5248804();
  v59 = a3;
  v60 = MEMORY[0x1E697E040];
  v33 = a3;
  v57 = v10;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v43 = sub_1A524BE24();
  v42 = swift_getWitnessTable();
  v11 = sub_1A524B784();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v32 - v14;
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v15 = sub_1A524B784();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v35 = &v32 - v20;
  v50 = a2;
  v51 = a3;
  v22 = v40;
  v52 = v40;
  v53 = a5;
  sub_1A5249314();
  sub_1A524B774();
  v36 = swift_getWitnessTable();
  v34 = *(v16 + 16);
  v34(v21, v18, v15);
  v23 = *(v16 + 8);
  v37 = v16 + 8;
  v38 = v23;
  v23(v18, v15);
  v46 = a2;
  v47 = v33;
  v48 = v22;
  v49 = a6;
  sub_1A5249314();
  v24 = v39;
  sub_1A524B774();
  v43 = swift_getWitnessTable();
  v25 = v45;
  v26 = *(v45 + 16);
  v27 = v41;
  v26(v41, v24, v11);
  v28 = *(v25 + 8);
  v45 = v25 + 8;
  v28(v24, v11);
  v29 = v35;
  v34(v18, v35, v15);
  v57 = v18;
  v26(v24, v27, v11);
  WitnessTable = v24;
  v56[0] = v15;
  v56[1] = v11;
  v54 = v36;
  v55 = v43;
  sub_1A3DF4988(&v57, 2uLL, v56);
  v28(v27, v11);
  v30 = v38;
  v38(v29, v15);
  v28(v24, v11);
  return v30(v18, v15);
}

uint64_t sub_1A421B598@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v24[1] = a1;
  v6 = sub_1A5248804();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  v37 = a2;
  v38 = MEMORY[0x1E697E040];
  v24[0] = a2;
  WitnessTable = swift_getWitnessTable();
  v35 = v6;
  v36 = WitnessTable;
  v26 = WitnessTable;
  v27 = MEMORY[0x1E69C3120];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v25 = v24 - v15;
  v17 = type metadata accessor for LemonadeTwoShelvesHStack(0, a1, a2, v16);
  sub_1A421B8DC(v17);
  sub_1A524BC74();
  sub_1A524AFD4();
  sub_1A421B8DC(v17);
  v18 = v26;
  sub_1A524A6E4();
  (*(v28 + 8))(v8, v6);
  v35 = v6;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = *(v11 + 16);
  v21 = v25;
  v20(v25, v13, OpaqueTypeMetadata2);
  v22 = *(v11 + 8);
  v22(v13, OpaqueTypeMetadata2);
  v20(v13, v21, OpaqueTypeMetadata2);
  v33 = 0;
  v34 = 1;
  v35 = v13;
  v36 = &v33;
  v32[0] = OpaqueTypeMetadata2;
  v32[1] = MEMORY[0x1E6981840];
  v30 = OpaqueTypeConformance2;
  v31 = MEMORY[0x1E6981838];
  sub_1A3DF4988(&v35, 2uLL, v32);
  v22(v21, OpaqueTypeMetadata2);
  return (v22)(v13, OpaqueTypeMetadata2);
}

double sub_1A421B8DC(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A5242D14();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D61808(v13);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x1E69C2210])
  {
    v14 = sub_1A421BFB0(a1);
    sub_1A421D420(v9);
    v15 = *v9;
    sub_1A421DF88(v9, type metadata accessor for LemonadeItemsLayoutSpec);
    v16 = sub_1A421BFB0(a1) + (v14 - v15) * 0.5;
    sub_1A421D420(v9);
    v17 = *v9;
    sub_1A421DF88(v9, type metadata accessor for LemonadeItemsLayoutSpec);
    return v16 + v17;
  }

  else
  {
    v19 = v1 + *(a1 + 40);
    v20 = *v19;
    if (*(v19 + 8) == 1)
    {
      v29 = *v19;
    }

    else
    {

      v21 = sub_1A524D254();
      v22 = sub_1A524A014();
      v28 = v3;
      v23 = v4;
      v24 = v22;
      sub_1A5246DF4(v21, &dword_1A3C1C000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v20, 0);
      (*(v23 + 8))(v6, v28);
      LOBYTE(v20) = v29;
    }

    if (v20 - 5 >= 2)
    {
      if (v20 == 4)
      {
        sub_1A43A223C();
      }

      sub_1A421CE44(a1);
      v18 = v26;
    }

    else
    {
      v25 = sub_1A421BFB0(a1);
      v18 = v25 + v25 + sub_1A421D1B8(a1);
    }

    (*(v11 + 8))(v13, v10);
  }

  return v18;
}

uint64_t sub_1A421BC68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v24[1] = a1;
  v6 = sub_1A5248804();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  v37 = a2;
  v38 = MEMORY[0x1E697E040];
  v24[0] = a2;
  WitnessTable = swift_getWitnessTable();
  v35 = v6;
  v36 = WitnessTable;
  v26 = WitnessTable;
  v27 = MEMORY[0x1E69C3120];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v25 = v24 - v15;
  v17 = type metadata accessor for LemonadeTwoShelvesHStack(0, a1, a2, v16);
  sub_1A421BFB0(v17);
  sub_1A524BC74();
  sub_1A524AFD4();
  sub_1A421BFB0(v17);
  v18 = v26;
  sub_1A524A6E4();
  (*(v28 + 8))(v8, v6);
  v35 = v6;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = *(v11 + 16);
  v21 = v25;
  v20(v25, v13, OpaqueTypeMetadata2);
  v22 = *(v11 + 8);
  v22(v13, OpaqueTypeMetadata2);
  v33 = 0;
  v34 = 1;
  v35 = &v33;
  v20(v13, v21, OpaqueTypeMetadata2);
  v36 = v13;
  v32[0] = MEMORY[0x1E6981840];
  v32[1] = OpaqueTypeMetadata2;
  v30 = MEMORY[0x1E6981838];
  v31 = OpaqueTypeConformance2;
  sub_1A3DF4988(&v35, 2uLL, v32);
  v22(v21, OpaqueTypeMetadata2);
  return (v22)(v13, OpaqueTypeMetadata2);
}

double sub_1A421BFB0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_1A5249234();
  v7 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242D14();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D61808(v13);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x1E69C2210])
  {
    sub_1A421CE44(a1);
    v15 = v14;
    v16 = *(v1 + 8);
    if (*(v1 + 32) == 1)
    {
      v17 = *(v1 + 8);
    }

    else
    {
      v20 = *v1;
      v21 = *(v2 + 24);
      v38 = *(v2 + 16);

      v22 = sub_1A524D254();
      v23 = v7;
      v24 = sub_1A524A014();
      sub_1A5246DF4(v22, &dword_1A3C1C000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35A84(v20, v16, v38, v21, 0);
      (*(v23 + 8))(v9, v39);
      v17 = v40;
    }

    v25 = v15 - (v17 + v17);
    sub_1A421D420(v6);
    v26 = *v6;
    sub_1A421DF88(v6, type metadata accessor for LemonadeItemsLayoutSpec);
    v27 = (v25 + v26 * -4.0) / 5.0;
    sub_1A421D420(v6);
    v28 = *v6;
    sub_1A421DF88(v6, type metadata accessor for LemonadeItemsLayoutSpec);
    return v28 + v27 + v27;
  }

  else
  {
    v18 = v1 + *(a1 + 40);
    v19 = *v18;
    if (*(v18 + 8) == 1)
    {
      v41 = *v18;
    }

    else
    {

      v30 = v11;
      v31 = v10;
      v32 = v7;
      v33 = sub_1A524D254();
      v34 = sub_1A524A014();
      v35 = v33;
      v7 = v32;
      v10 = v31;
      v11 = v30;
      sub_1A5246DF4(v35, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v19, 0);
      (*(v7 + 8))(v9, v39);
      LOBYTE(v19) = v41;
    }

    if (v19 > 4u)
    {
      if (v19 - 5 < 2)
      {
        v38 = v7;
        sub_1A43A223C();
      }
    }

    else if (v19 == 4)
    {
      v38 = v7;
      sub_1A43A223C();
    }

    v29 = 0.0;
    (*(v11 + 8))(v13, v10);
  }

  return v29;
}

void sub_1A421C668(uint64_t a1)
{
  v3 = sub_1A52486A4();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249234();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5243D54();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v60);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = (&v58 - v15);
  v16 = sub_1A5242D14();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v70 = a1;
  v71 = v1;
  sub_1A3D61808(&v58 - v21);
  v23 = *(v17 + 104);
  v23(v19, *MEMORY[0x1E69C2210], v16);
  sub_1A421DF40(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v24 = sub_1A524C594();
  v25 = *(v17 + 8);
  v25(v19, v16);
  v25(v22, v16);
  if (v24)
  {
    sub_1A421CE44(v70);
    sub_1A421D420(v13);
    sub_1A43A2B58();
  }

  v23(v22, *MEMORY[0x1E69C21F8], v16);
  v26 = sub_1A43A1F8C();
  sub_1A43A1F98(v22, v59, v26, v27);
  v28 = sub_1A3C47918();
  v30 = v29;
  v31 = sub_1A3C47918();
  v33 = v32;
  v34 = sub_1A3C52D68();
  v36 = v35;
  v38 = v37;
  v39 = sub_1A3C4ED50(v34);
  v78 = 1;
  *v10 = xmmword_1A5326B20;
  v10[16] = 1;
  *(v10 + 17) = v79[0];
  *(v10 + 5) = *(v79 + 3);
  *(v10 + 3) = 0;
  v10[32] = 1;
  *(v10 + 33) = *v77;
  *(v10 + 9) = *&v77[3];
  *(v10 + 5) = v28;
  *(v10 + 6) = v30;
  *(v10 + 7) = v31;
  *(v10 + 8) = v33;
  *(v10 + 9) = v34;
  *(v10 + 10) = v36;
  v10[88] = v38;
  v10[89] = v39;
  swift_storeEnumTagMultiPayload();
  v41 = v70;
  v40 = v71;
  v42 = v71 + *(v70 + 40);
  v43 = *v42;
  if (*(v42 + 8) == 1)
  {
    v76 = *v42;
  }

  else
  {

    v44 = sub_1A524D254();
    v45 = sub_1A524A014();
    sub_1A5246DF4(v44, &dword_1A3C1C000, v45, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v46 = v61;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v43, 0);
    (*(v62 + 8))(v46, v63);
    LOBYTE(v43) = v76;
  }

  v75 = v43;
  v47 = v40 + *(v41 + 60);
  v48 = *v47;
  if (*(v47 + 8) == 1)
  {
    v74 = *v47;
  }

  else
  {

    v49 = sub_1A524D254();
    v50 = sub_1A524A014();
    sub_1A5246DF4(v49, &dword_1A3C1C000, v50, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v51 = v61;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v48, 0);
    (*(v62 + 8))(v51, v63);
    LOBYTE(v48) = v74;
  }

  v73 = v48;
  v53 = v64;
  v52 = v65;
  v54 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E697E6E8], v66);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v72);
  v55 = sub_1A3C5A374();
  sub_1A43A22CC(v10, &v75, 2, &v73, v53, &v72, v55 & 1, v67);
  (*(v52 + 8))(v53, v54);
  v56 = sub_1A5243D44();
  ceil(v56 / sub_1A5243D34());
  sub_1A421BFB0(v41);
  sub_1A421D1B8(v41);
  v57 = [objc_opt_self() px_mainScreen];
  [v57 bounds];

  sub_1A524D984();
}

uint64_t sub_1A421CE44(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1A590D320](v5);
  v9 = v1 + *(a1 + 44);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (result)
  {
    if (!v12)
    {

      v13 = sub_1A524D254();
      v14 = sub_1A524A014();
      sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      v15 = sub_1A3F1B4C4(v10, v11, 0);
      result = (*(v4 + 8))(v7, v3, v15);
    }

    v16 = v1 + *(a1 + 48);
    v17 = *(v16 + 8);
    v18 = *(v16 + 24);
    if (*(v16 + 32) != 1)
    {
      v22 = *v16;
      v23 = *(v16 + 16);

      v24 = sub_1A524D254();
      v25 = sub_1A524A014();
      sub_1A5246DF4(v24, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35A84(v22, v17, v23, v18, 0);
      v26 = *(v4 + 8);
      v26(v7, v3);

      v27 = sub_1A524D254();
      v28 = sub_1A524A014();
      sub_1A5246DF4(v27, &dword_1A3C1C000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35A84(v22, v17, v23, v18, 0);
      return (v26)(v7, v3);
    }
  }

  else if (!v12)
  {

    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v21 = sub_1A3F1B4C4(v10, v11, 0);
    return (*(v4 + 8))(v7, v3, v21);
  }

  return result;
}

double sub_1A421D1B8(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421A594(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A421E06C(v1 + *(a1 + 56), v9, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A421DFE8(v9, v12);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v15 = *v12;
  sub_1A421DF88(v12, type metadata accessor for LemonadeItemsLayoutSpec);
  return v15;
}

uint64_t sub_1A421D420@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421A594(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A421E06C(v2, &v14 - v9, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A421DFE8(v10, a1);
  }

  v12 = sub_1A524D254();
  v13 = sub_1A524A014();
  sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1A421D694(uint64_t a1)
{
  sub_1A421DEF0(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A421A594(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A421DEF0(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A421A594(319, &qword_1EB124690, type metadata accessor for CGSize, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A421A594(319, &qword_1EB135948, type metadata accessor for UIEdgeInsets, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A421DEF0(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A421A594(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A421DEF0(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_1A421D914(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A5242D14() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + v7;
  v11 = *(*(a3 + 16) - 8);
  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v9 | 7;
  v18 = v8 + 88;
  v19 = (v9 | 7) + 9;
  v20 = v12 + 8;
  v21 = v14 + 9;
  if (a2 <= v16)
  {
    goto LABEL_34;
  }

  v22 = ((v15 + v14 + ((v21 + ((v20 + ((v19 + ((v18 + ((v17 + 33) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v14) + v15;
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v13 > 0xFE)
      {
        v31 = *(*(*(a3 + 16) - 8) + 48);

        return v31((v21 + ((v20 + ((v19 + ((v18 + ((a1 + v17 + 33) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(a1 + 32);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v16 + (v29 | v27) + 1;
}

void sub_1A421DBB4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A5242D14() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v8 + 64);
  }

  v11 = *(v8 + 80);
  v12 = ((v11 + 16) & ~v11) + v9;
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  if (v15 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = v11 | 7;
  v19 = ((*(v14 + 64) + v16 + ((v16 + 9 + ((v13 + 8 + ((v18 + 9 + ((v10 + 88 + (((v11 | 7) + 33) & ~(v11 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16) + *(v14 + 64);
  if (a3 <= v17)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v17 < a2)
  {
    v21 = ~v17 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_52:
              if (v20 == 2)
              {
                *(a1 + v19) = v22;
              }

              else
              {
                *(a1 + v19) = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v25;
        *(a1 + 2) = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v20)
    {
      *(a1 + v19) = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v19) = 0;
  }

  else if (v20)
  {
    *(a1 + v19) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v15 > 0xFE)
  {
    v26 = *(v14 + 56);

    v26((v16 + 9 + ((v13 + 8 + ((v18 + 9 + ((v10 + 88 + ((a1 + v18 + 33) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v16, a2);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 32) = 0;
    *a1 = (a2 - 255);
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 32) = -a2;
  }
}

void sub_1A421DEF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A421DF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A421DF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A421DFE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A421E06C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A421A594(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void PXExtendedTraitCollection.storyChromeLayoutSpec.getter()
{
  swift_getKeyPath();
  sub_1A421E254(0, v0);
  sub_1A52457F4();
}

unint64_t sub_1A421E254(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126868;
  if (!qword_1EB126868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126868);
  }

  return result;
}

uint64_t sub_1A421E2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1A3E87388(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248284();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosSearchMapView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhotosSearchMapView(0) + 20);

  return sub_1A3EED680(v3, a1);
}

uint64_t type metadata accessor for PhotosSearchMapView(uint64_t a1)
{
  result = qword_1EB174070;
  if (!qword_1EB174070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSearchMapView.completion.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhotosSearchMapView(0) + 24));

  return v1;
}

__n128 PhotosSearchMapView.init(configuration:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = sub_1A524D464();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *a4 = swift_getKeyPath();
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for PhotosSearchMapView(0);
  v11 = a4 + v10[7];
  v31 = 0u;
  v32 = 0u;
  v33 = 1;
  sub_1A421E988(0);
  sub_1A524B694();
  v12 = v36;
  v13 = v37;
  v14 = v35;
  *v11 = v34;
  *(v11 + 1) = v14;
  v11[32] = v12;
  *(v11 + 5) = v13;
  v15 = v10[8];
  *&v31 = 0;
  sub_1A421EA88(0);
  sub_1A524B694();
  *(a4 + v15) = v34;
  v16 = a4 + v10[9];
  sub_1A421EAF0(0);
  v31 = 0uLL;
  sub_1A524B694();
  v17 = v35;
  *v16 = v34;
  *(v16 + 2) = v17;
  v25 = v10[10];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  *&v34 = MEMORY[0x1E69E7CC0];
  sub_1A421EBB8(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A421EB84(0);
  sub_1A421EBB8(&qword_1EB126E30, sub_1A421EB84, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  (*(v27 + 104))(v26, *MEMORY[0x1E69E8090], v28);
  *(a4 + v25) = sub_1A524D4B4();
  v18 = a4 + v10[5];
  v19 = *(a1 + 48);
  *(v18 + 2) = *(a1 + 32);
  *(v18 + 3) = v19;
  v20 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 1) = v20;
  *(v18 + 107) = *(a1 + 107);
  result = *(a1 + 80);
  v22 = *(a1 + 96);
  *(v18 + 5) = result;
  *(v18 + 6) = v22;
  *(v18 + 4) = *(a1 + 64);
  v23 = (a4 + v10[6]);
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  return result;
}

void sub_1A421E9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A421EA20(uint64_t a1)
{
  if (!qword_1EB120840)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120840);
    }
  }
}

void sub_1A421EA88(uint64_t a1)
{
  if (!qword_1EB120A40)
  {
    sub_1A3C52C70(255, &qword_1EB126B10, 0x1E69DD258);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120A40);
    }
  }
}

unint64_t sub_1A421EB24()
{
  result = qword_1EB124A70;
  if (!qword_1EB124A70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB124A70);
  }

  return result;
}

uint64_t sub_1A421EBB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PhotosSearchMapView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotosSearchMapView(0);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v15 = v1;
  sub_1A421F7F4(0);
  sub_1A421F974(255);
  v6 = v5;
  sub_1A421FF24(255);
  v8 = v7;
  sub_1A421FA74(255);
  sub_1A421FB44(255);
  sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44, MEMORY[0x1E6981880]);
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  v16 = v6;
  v17 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A4222CD0(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchMapView);
  v9 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v10 = swift_allocObject();
  sub_1A42210EC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1A421FD50(0, &qword_1EB135A50, sub_1A4221168, MEMORY[0x1E69805D8]);
  v12 = (a1 + *(v11 + 36));
  *v12 = sub_1A4221150;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
}

uint64_t sub_1A421EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = sub_1A5249B64();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421FA74(0);
  v60 = v4;
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421F974(0);
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BC74();
  v53 = v9;
  v54 = v8;
  v10 = *(type metadata accessor for PhotosSearchMapView(0) + 32);
  v64 = a1;
  v95 = *(a1 + v10);
  sub_1A421E9BC(0, &qword_1EB121BC8, sub_1A421EA88, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v11 = v68;
  if (v68)
  {
    *(swift_allocObject() + 16) = v11;
    v12 = v11;
    PXDisplayCollectionDetailedCountsMake();
    v51 = v13;
    v15 = v14;
    v52 = sub_1A5248874();
    v50 = sub_1A524A084();

    v16 = v15;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v16 = 0;
    v50 = 0;
  }

  sub_1A524B3C4();
  v17 = sub_1A524B474();
  v46 = v17;

  v18 = sub_1A524B3C4();
  v49 = v18;
  sub_1A5247EE4();
  v19 = v83;
  v20 = v84;
  v21 = HIDWORD(v84);
  v48 = HIDWORD(v84);
  v22 = v85;
  v23 = *v86;
  v47 = *v86;
  v24 = *&v86[8];
  v25 = sub_1A524BC74();
  v27 = v26;
  LOBYTE(v95) = 0;
  v28 = sub_1A524A064();
  *&v68 = v19;
  *(&v68 + 1) = __PAIR64__(v21, v20);
  *&v69 = v22;
  *(&v69 + 1) = v23;
  *&v70 = v24;
  *(&v70 + 1) = v18;
  LOWORD(v71) = 256;
  *(&v71 + 1) = v17;
  LOWORD(v72) = 256;
  *(&v72 + 1) = v25;
  *&v73 = v27;
  *(&v73 + 1) = 0x3FF0000000000000;
  LOWORD(v74) = 0;
  BYTE8(v74) = v28;
  v75 = 0u;
  v76 = 0u;
  LOWORD(v77) = 1;
  v29 = v51;
  v30 = v52;
  LOBYTE(v23) = v50;
  sub_1A3C66EE8(v51, v16);
  sub_1A4222CD0(&v68, &v95, sub_1A421FD00);
  sub_1A3C33378(v29, v16);
  *(&v108[6] + 7) = v74;
  *(&v108[7] + 7) = v75;
  *(&v108[8] + 7) = v76;
  *(&v108[2] + 7) = v70;
  *(&v108[3] + 7) = v71;
  *(&v108[4] + 7) = v72;
  *(&v108[5] + 7) = v73;
  *(v108 + 7) = v68;
  *(&v108[9] + 7) = v77;
  *(&v108[1] + 7) = v69;
  *&v95 = v19;
  *(&v95 + 1) = __PAIR64__(v48, v20);
  *&v96 = v22;
  *(&v96 + 1) = v47;
  *&v97 = v24;
  *(&v97 + 1) = v49;
  LOWORD(v98) = 256;
  *(&v98 + 1) = v46;
  LOWORD(v99) = 256;
  *(&v99 + 1) = v25;
  *&v100 = v27;
  *(&v100 + 1) = 0x3FF0000000000000;
  LOWORD(v101) = 0;
  BYTE8(v101) = v28;
  v102 = 0u;
  v103 = 0u;
  LOWORD(v104) = 1;
  sub_1A4222860(&v95, sub_1A421FD00);
  sub_1A3C33378(v29, v16);
  *&v82[105] = v108[6];
  *&v82[121] = v108[7];
  *&v82[137] = v108[8];
  *&v82[146] = *(&v108[8] + 9);
  *&v82[41] = v108[2];
  *&v82[57] = v108[3];
  *&v82[73] = v108[4];
  *&v82[89] = v108[5];
  *&v82[9] = v108[0];
  *&v82[25] = v108[1];
  v92 = v108[6];
  v93 = v108[7];
  *v94 = v108[8];
  *&v94[9] = *(&v108[8] + 9);
  v88 = v108[2];
  v89 = v108[3];
  v90 = v108[4];
  v91 = v108[5];
  *&v86[1] = v108[0];
  *&v81 = v29;
  *(&v81 + 1) = v16;
  *v82 = v30;
  v82[8] = v23;
  v83 = v29;
  v84 = v16;
  v85 = v30;
  v86[0] = v23;
  v87 = v108[1];
  sub_1A4222CD0(&v81, &v95, sub_1A421FBD8);
  sub_1A4222860(&v83, sub_1A421FBD8);
  v77 = *&v82[112];
  v78 = *&v82[128];
  v79 = *&v82[144];
  v80 = *&v82[160];
  v73 = *&v82[48];
  v74 = *&v82[64];
  v75 = *&v82[80];
  v76 = *&v82[96];
  v69 = v81;
  v70 = *v82;
  v71 = *&v82[16];
  v72 = *&v82[32];
  *&v68 = v54;
  *(&v68 + 1) = v53;
  v66 = sub_1A3C38BD4(0xD000000000000029);
  v67 = v31;
  sub_1A421FB44(0);
  v33 = v32;
  v34 = sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44, MEMORY[0x1E6981880]);
  v35 = sub_1A3D5F9DC();
  v36 = MEMORY[0x1E69E6158];
  v37 = v55;
  sub_1A524ABB4();

  v105 = v78;
  v106 = v79;
  v107 = v80;
  v101 = v74;
  v102 = v75;
  v103 = v76;
  v104 = v77;
  v97 = v70;
  v98 = v71;
  v99 = v72;
  v100 = v73;
  v95 = v68;
  v96 = v69;
  sub_1A4222860(&v95, sub_1A421FB44);
  v38 = v57;
  sub_1A5249B54();
  *&v68 = v33;
  *(&v68 + 1) = v36;
  *&v69 = v34;
  *(&v69 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v59;
  v40 = v60;
  sub_1A524AED4();
  (*(v58 + 8))(v38, v61);
  v42 = (*(v56 + 8))(v37, v40);
  MEMORY[0x1EEE9AC00](v42);
  *(&v45 - 2) = v64;
  sub_1A421FF24(0);
  *&v68 = v40;
  *(&v68 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24, MEMORY[0x1E697C5E0]);
  v43 = v63;
  sub_1A524B0E4();
  return (*(v62 + 8))(v41, v43);
}

void sub_1A421F7F4(uint64_t a1)
{
  if (!qword_1EB1359B8)
  {
    sub_1A421F974(255);
    sub_1A421FF24(255);
    sub_1A421FA74(255);
    sub_1A421FB44(255);
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44, MEMORY[0x1E6981880]);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24, MEMORY[0x1E697C5E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1359B8);
    }
  }
}

void sub_1A421F974(uint64_t a1)
{
  if (!qword_1EB1359C0)
  {
    sub_1A421FA74(255);
    sub_1A421FB44(255);
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44, MEMORY[0x1E6981880]);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1359C0);
    }
  }
}

void sub_1A421FA74(uint64_t a1)
{
  if (!qword_1EB1359C8)
  {
    sub_1A421FB44(255);
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44, MEMORY[0x1E6981880]);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1359C8);
    }
  }
}

void sub_1A421FB44(uint64_t a1)
{
  if (!qword_1EB1359D0)
  {
    sub_1A421FBD8(255);
    sub_1A421EBB8(&qword_1EB135A20, sub_1A421FBD8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1359D0);
    }
  }
}

void sub_1A421FC0C(uint64_t a1)
{
  if (!qword_1EB1359E0)
  {
    sub_1A421FC7C(255);
    sub_1A421FD00(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1359E0);
    }
  }
}

void sub_1A421FC7C(uint64_t a1)
{
  if (!qword_1EB1359E8)
  {
    sub_1A4222A2C(255, &qword_1EB1359F0, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1359E8);
    }
  }
}

void sub_1A421FD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A421FDDC(uint64_t a1)
{
  if (!qword_1EB135A10)
  {
    sub_1A421FEA8(255);
    sub_1A3FA9580();
    sub_1A421EBB8(&qword_1EB128AC0, sub_1A421FEA8, MEMORY[0x1E697DB78]);
    v1 = sub_1A52488F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135A10);
    }
  }
}

void sub_1A421FEA8(uint64_t a1)
{
  if (!qword_1EB128AB0)
  {
    sub_1A3FA9580();
    v1 = sub_1A5247D54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128AB0);
    }
  }
}

void sub_1A421FF58(uint64_t a1)
{
  if (!qword_1EB135A40)
  {
    sub_1A3F1E8D8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB135A40);
    }
  }
}

uint64_t sub_1A421FFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_1A421FF58(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3F1E8D8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  sub_1A5249844();
  v20[8] = a1;
  sub_1A3D6DF58(0);
  sub_1A421EBB8(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
  sub_1A5247F24();
  sub_1A5249814();
  v20[4] = a1;
  sub_1A5247F24();
  v16 = *(v4 + 48);
  v17 = *(v10 + 16);
  v17(v6, v15, v9);
  v17(&v6[v16], v12, v9);
  sub_1A52495D4();
  v18 = *(v10 + 8);
  v18(v12, v9);
  return (v18)(v15, v9);
}

uint64_t sub_1A422025C(uint64_t a1)
{
  v2 = sub_1A5248284();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421E2E0(v5);
  sub_1A5248274();
  (*(v3 + 8))(v5, v2);
  v6 = type metadata accessor for PhotosSearchMapView(0);
  return (*(a1 + *(v6 + 24)))(0);
}

uint64_t sub_1A4220354(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PhotosSearchMapView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = sub_1A5247B54();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  sub_1A4222CD0(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchMapView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1A42210EC(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  return MEMORY[0x1A5906A80](v13, a4, v15);
}

double sub_1A42204C8(uint64_t a1)
{
  v20 = sub_1A524BEE4();
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v18 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosSearchMapView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1A5248284();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421E2E0(v11);
  sub_1A5248274();
  (*(v9 + 8))(v11, v8);
  sub_1A4222CD0(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchMapView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_1A42210EC(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_1A4222978;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_45_1;
  v14 = _Block_copy(aBlock);
  sub_1A524BF14();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1A421EBB8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A421EBB8(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  v15 = v18;
  v16 = v20;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v4, v15, v14);
  _Block_release(v14);
  (*(v22 + 8))(v15, v16);
  (*(v19 + 8))(v4, v21);

  return result;
}

uint64_t sub_1A42208EC(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosSearchMapView(0);
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(v9 + 28));
  v11 = *(v10 + 32);
  v12 = *(v10 + 5);
  v13 = v10[1];
  aBlock = *v10;
  v73 = v13;
  LOBYTE(v74) = v11;
  v75 = v12;
  sub_1A421E9BC(0, &qword_1EB121BA0, sub_1A421E988, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v65 = v3;
  v66 = v2;
  v64 = v5;
  if (v71)
  {
    goto LABEL_24;
  }

  v14 = v67;
  v15 = v68;
  v16 = v69;
  v17 = v70;
  v18 = objc_opt_self();
  v19 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v58 = a1;
  v20 = [v19 initWithLatitude:v14 longitude:v15];
  v21 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  a1 = v58;
  v22 = [v21 initWithLatitude:v16 longitude:v17];
  v23 = [*(a1 + *(v7 + 20)) px_standardLibrarySpecificFetchOptions];
  v24 = [v18 fetchAssetsInBoundingBoxWithTopLeftLocation:v20 bottomRightLocation:v22 options:v23];

  if (!v24)
  {
    goto LABEL_24;
  }

  v25 = [v24 fetchedObjects];
  if (!v25)
  {

LABEL_24:
    v42 = 0;
    goto LABEL_25;
  }

  v26 = v25;
  v56 = v24;
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v27 = sub_1A524CA34();

  if (v27 >> 62)
  {
LABEL_28:
    v28 = sub_1A524E2B4();
    if (v28)
    {
LABEL_6:
      v29 = 0;
      v57 = MEMORY[0x1E69E7CC0];
      do
      {
        v30 = v29;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1A59097F0](v30, v27);
            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v31 = *(v27 + 8 * v30 + 32);
            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          v32 = v31;
          v33 = [v32 uuid];
          if (v33)
          {
            break;
          }

          ++v30;
          if (v29 == v28)
          {
            goto LABEL_30;
          }
        }

        v34 = v33;
        v35 = sub_1A524C674();
        v55 = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1A3D3D914(0, *(v57 + 2) + 1, 1, v57);
        }

        v38 = *(v57 + 2);
        v37 = *(v57 + 3);
        if (v38 >= v37 >> 1)
        {
          v57 = sub_1A3D3D914((v37 > 1), v38 + 1, 1, v57);
        }

        v39 = v57;
        *(v57 + 2) = v38 + 1;
        v40 = &v39[16 * v38];
        v41 = v55;
        *(v40 + 4) = v35;
        *(v40 + 5) = v41;
      }

      while (v29 != v28);
      goto LABEL_30;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_6;
    }
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (*(v57 + 2))
  {
    v42 = sub_1A3C4467C(v57);
  }

  else
  {

    v42 = 0;
  }

  a1 = v58;
LABEL_25:
  v43 = v60;
  v44 = v59;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v46 = sub_1A524D474();
  sub_1A4222CD0(a1, v43, type metadata accessor for PhotosSearchMapView);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = swift_allocObject();
  sub_1A42210EC(v43, v48 + v47);
  *(v48 + ((v8 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
  v74 = sub_1A4222990;
  v75 = v48;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_1A3C2E0D0;
  *(&v73 + 1) = &block_descriptor_51_1;
  v49 = _Block_copy(&aBlock);

  v50 = v61;
  sub_1A524BF14();
  *&aBlock = v45;
  sub_1A421EBB8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A421EBB8(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  v51 = v63;
  v52 = v66;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v50, v51, v49);
  _Block_release(v49);

  (*(v65 + 8))(v51, v52);
  return (*(v62 + 8))(v50, v64);
}

uint64_t sub_1A422105C(uint64_t a1)
{
  sub_1A4221318();
  type metadata accessor for PhotosSearchMapView(0);
  sub_1A421E9BC(0, &qword_1EB121BC8, sub_1A421EA88, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A42210EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchMapView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4221168(uint64_t a1)
{
  if (!qword_1EB135A58)
  {
    sub_1A5248464();
    sub_1A421F7F4(255);
    sub_1A421F974(255);
    sub_1A421FF24(255);
    sub_1A421FA74(255);
    sub_1A421FB44(255);
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44, MEMORY[0x1E6981880]);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5248834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135A58);
    }
  }
}

void sub_1A4221318()
{
  v1 = sub_1A524BEE4();
  v28 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v31 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A524BF64();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosSearchMapView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = v6;
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + *(v8 + 20));
  v10 = v9[8];
  v11 = sub_1A3C6E9EC();
  PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v11, v10, 0, 0, 0, &v36);
  v34 = v0;
  v12 = objc_allocWithZone(PXPlacesMapContainerConfiguration);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1A4222260;
  *(v13 + 24) = &v33;
  aBlock[4] = sub_1A3D78DD0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D77CC4;
  aBlock[3] = &block_descriptor_128;
  v14 = _Block_copy(aBlock);

  v15 = [v12 initWithConfiguration_];
  _Block_release(v14);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    v16 = *v9;
    v17 = objc_allocWithZone(PXPlacesMapContainerViewController);
    v25 = v15;
    v26 = [v17 initWithPhotoLibrary:v16 configuration:v15];
    v24 = [v26 fetchResultViewController];
    v18 = [v24 mapFetchResultsController];
    v19 = [v18 mapView];
    [v19 observable];

    v23[2] = type metadata accessor for PhotosSearchMapView;
    sub_1A4222CD0(v0, v7, type metadata accessor for PhotosSearchMapView);
    v20 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v21 = swift_allocObject();
    v23[4] = v1;
    *(v21 + 16) = v18;
    sub_1A42210EC(v7, v21 + v20);
    v22 = v18;
    v23[1] = v7;
    sub_1A524D1A4();
  }

  __break(1u);
}

void sub_1A4221A68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = *(a1 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_1A421F7F4(0);
  sub_1A421F974(255);
  v8 = v7;
  sub_1A421FF24(255);
  v10 = v9;
  sub_1A421FA74(255);
  v12 = v11;
  sub_1A421FB44(255);
  v14 = v13;
  v15 = sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44, MEMORY[0x1E6981880]);
  v16 = sub_1A3D5F9DC();
  v27 = v14;
  v28 = MEMORY[0x1E69E6158];
  v29 = v15;
  v30 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v12;
  v28 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24, MEMORY[0x1E697C5E0]);
  v27 = v8;
  v28 = v10;
  v29 = v18;
  v30 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A4222CD0(v3, v6, type metadata accessor for PhotosSearchMapView);
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_1A42210EC(v6, v21 + v20);
  sub_1A421FD50(0, &qword_1EB135A50, sub_1A4221168, MEMORY[0x1E69805D8]);
  v23 = (a2 + *(v22 + 36));
  *v23 = sub_1A4222D48;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
}

void sub_1A4221D14(uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() sharedPhotoLibrary];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1A3C6C180(&v14);
  v12 = v14;
  v13 = v15;
  v4 = sub_1A412FAA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1A3C30368();
  LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v3, v16, &v12, 0, 0, 0, 1, 1, v18, v4, v6, v8, v10, v11 & 1);
  PhotosSearchMapView.init(configuration:completion:)(v18, PXDisplayCollectionDetailedCountsMake, 0, a2);
}

unint64_t sub_1A4221E38()
{
  result = qword_1EB135A60;
  if (!qword_1EB135A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135A60);
  }

  return result;
}

uint64_t sub_1A4221EAC(uint64_t a1)
{
  v2 = sub_1A422220C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4221EF8(uint64_t a1)
{
  v2 = sub_1A422220C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A4221F6C(uint64_t a1)
{
  sub_1A421E9BC(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v2 <= 0x3F)
    {
      sub_1A421E9BC(319, &qword_1EB121BA0, sub_1A421E988, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A421E9BC(319, &qword_1EB121BC8, sub_1A421EA88, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A421E9BC(319, &qword_1EB121C10, sub_1A421EAF0, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A3C52C70(319, &qword_1EB12B180, 0x1E69E9610);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A4222138()
{
  result = qword_1EB135A68;
  if (!qword_1EB135A68)
  {
    sub_1A421FD50(255, &qword_1EB135A50, sub_1A4221168, MEMORY[0x1E69805D8]);
    sub_1A421EBB8(&qword_1EB135A70, sub_1A4221168, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135A68);
  }

  return result;
}

unint64_t sub_1A422220C()
{
  result = qword_1EB135A78;
  if (!qword_1EB135A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135A78);
  }

  return result;
}

id sub_1A4222260(void *a1)
{
  v3 = *(v1 + 16);
  [a1 setGridViewEnabled_];
  v4 = type metadata accessor for PhotosSearchMapView(0);
  [a1 setInitialCoordinateRegion_];
  sub_1A3C38BD4(0xD00000000000001DLL);
  v5 = sub_1A524C634();

  [a1 setLocalizedNavigationItemTitle_];

  return [a1 setEnableNearbyAssetsAffordance_];
}

void sub_1A422232C()
{
  type metadata accessor for PhotosSearchMapView(0);
  v1 = [*(v0 + 16) mapView];
  [v1 bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v6 = CGRectGetHeight(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v7 = v6 - CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v9 = CGRectGetHeight(v13) - v7;
  [v1 convertPoint:v1 toCoordinateFromView:{0.0, v7}];
  [v1 convertPoint:v1 toCoordinateFromView:{v8, v9}];

  sub_1A421E9BC(0, &qword_1EB121BA0, sub_1A421E988, MEMORY[0x1E6981790]);

  sub_1A524B6B4();
}

void sub_1A4222518()
{
  v1 = type metadata accessor for PhotosSearchMapView(0);
  v2 = *(v1 - 8);
  v1 -= 8;
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v4);
  v6 = *(v0 + ((v4 + 55) & 0xFFFFFFFFFFFFFFF8));
  v7 = v0 + *(v1 + 28) + v3;
  PHPhotoLibrary.fetcher.getter(v1, v8);
  v9 = v5[1];
  aBlock = *v5;
  v19 = v9;
  v20 = v5[2];
  v10 = PhotoKitFetcher.fetchPlacesAlbum(for:)(&aBlock);

  v11 = [v10 firstObject];

  if (v11)
  {
    PHPhotoLibrary.fetcher.getter(v12, v13);
    v14 = PhotoKitFetcher.fetchAssetsWithLocation(inCollection:libraryFilterViewMode:)(v11, *(v7 + 64));

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      *&v20 = sub_1A422271C;
      *(&v20 + 1) = v6;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v19 = sub_1A3C2E0D0;
      *(&v19 + 1) = &block_descriptor_33_0;
      v17 = _Block_copy(&aBlock);

      [v16 loadFetchResult:v14 withCompletion:v17];

      _Block_release(v17);
      v11 = v16;
    }

    else
    {
    }
  }
}

void sub_1A422271C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    aBlock[4] = sub_1A4222804;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_36_0;
    v3 = _Block_copy(aBlock);

    [v2 reloadContentModeWithCompletion_];
    _Block_release(v3);
  }
}

void sub_1A4222804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong resumeWithCompletion_];
  }
}

uint64_t sub_1A4222860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4222990()
{
  v1 = type metadata accessor for PhotosSearchMapView(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  return (*(v0 + *(v1 + 24) + v3))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1A4222A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for PhotosSearchMapView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + v1[5];

  if (*(v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + 8));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4222C5C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosSearchMapView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A4222CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for GenerativeStorySystemPromptInputView(uint64_t a1)
{
  result = qword_1EB160070;
  if (!qword_1EB160070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4222DB0(uint64_t a1)
{
  if (!qword_1EB1249A8)
  {
    sub_1A4222E14();
    sub_1A4222E64();
    v1 = sub_1A5247C54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1249A8);
    }
  }
}

void sub_1A4222E14()
{
  if (!qword_1EB1257B0)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1257B0);
    }
  }
}

unint64_t sub_1A4222E64()
{
  result = qword_1EB1257A8;
  if (!qword_1EB1257A8)
  {
    sub_1A4222E14();
    sub_1A4222EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257A8);
  }

  return result;
}

unint64_t sub_1A4222EDC()
{
  result = qword_1EB1257C0;
  if (!qword_1EB1257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257C0);
  }

  return result;
}

void sub_1A4222F30(uint64_t a1@<X8>)
{
  v106 = a1;
  v129 = MEMORY[0x1E69790B8];
  v2 = MEMORY[0x1E69E6720];
  sub_1A4226964(0, &qword_1EB120E50, MEMORY[0x1E69790B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v128 = &v103 - v4;
  v127 = sub_1A523FBA4();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v122 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1A523FBD4();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v141 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = MEMORY[0x1E6979018];
  sub_1A4226964(0, &qword_1EB120E58, MEMORY[0x1E6979018], v2);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v140 = &v103 - v8;
  v9 = type metadata accessor for GenerativeStorySystemPromptInputView(0);
  v10 = v9 - 8;
  v111 = *(v9 - 8);
  v142 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v144 = v12;
  v145 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v103 - v15;
  v16 = type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42243E4(0);
  v130 = v19;
  v133 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224500(0);
  v135 = v22;
  v110 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A422461C(0);
  v137 = v24;
  v112 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224A3C(0);
  v115 = v26;
  v118 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224C1C();
  v119 = v28;
  v120 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224E30();
  v117 = v30;
  v121 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4225078();
  v105 = v32;
  v104 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524BAA4();
  sub_1A3FC72AC(v163, v18);
  v34 = v1 + *(v10 + 28);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  LOBYTE(v163) = v35;
  v164 = v36;
  LOBYTE(v165) = v34;
  sub_1A4222DB0(0);
  sub_1A5247C24();
  v163 = v160;
  v164 = v161;
  LOBYTE(v165) = v162;
  LOBYTE(v160) = 0;
  sub_1A4222E14();
  v38 = v37;
  v39 = sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
  v40 = sub_1A4222E64();
  sub_1A524B064();

  sub_1A4226B04(v18, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
  v41 = sub_1A52471E4();
  v163 = v16;
  v164 = v38;
  v165 = v39;
  v166 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v130;
  sub_1A524A874();
  (*(v133 + 8))(v21, v43);
  v44 = v132;
  v45 = v144;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v133 = *(v145 + 8);
  v145 += 8;
  (v133)(v44, v45);
  v46 = v163;
  v47 = v164;
  v48 = v165;
  swift_getKeyPath();
  v160 = v46;
  v161 = v47;
  v162 = v48;
  sub_1A4226964(0, &qword_1EB1214E0, type metadata accessor for GenerativeStoryAmbiguityManager, MEMORY[0x1E6981948]);
  v131 = v49;
  sub_1A524B914();

  v50 = v1;
  v51 = v143;
  sub_1A4225788(v1, v143);
  v52 = *(v111 + 80);
  v53 = (v52 + 16) & ~v52;
  v54 = swift_allocObject();
  sub_1A42257EC(v51, v54 + v53);
  sub_1A4224788(0);
  v108 = v55;
  v157 = v130;
  v158 = v41;
  v159 = OpaqueTypeConformance2;
  v109 = swift_getOpaqueTypeConformance2();
  v130 = sub_1A42248D4();
  v56 = v135;
  v57 = v134;
  sub_1A524AFF4();

  (*(v110 + 8))(v57, v56);
  v58 = v132;
  v59 = v144;
  v60 = v50;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (v133)(v58, v59);
  v61 = v160;
  v62 = v161;
  v63 = v162;
  swift_getKeyPath();
  v157 = v61;
  v158 = v62;
  v159 = v63;
  sub_1A524B914();

  v64 = v60;
  v65 = v143;
  sub_1A4225788(v60, v143);
  v103 = v52;
  v66 = swift_allocObject();
  v110 = v53;
  sub_1A42257EC(v65, v66 + v53);
  v111 = type metadata accessor for PhotosSearchMapView(0);
  v163 = v135;
  v164 = v108;
  v165 = v109;
  v166 = v130;
  v135 = MEMORY[0x1E697D510];
  v130 = swift_getOpaqueTypeConformance2();
  v134 = sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView, &protocol conformance descriptor for PhotosSearchMapView);
  v67 = v137;
  v68 = v136;
  sub_1A524AFF4();

  (*(v112 + 8))(v68, v67);
  v69 = v144;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v70 = v133;
  (v133)(v58, v69);
  v71 = v160;
  v72 = v161;
  v73 = v162;
  swift_getKeyPath();
  v157 = v71;
  v158 = v72;
  v159 = v73;
  sub_1A524B914();

  v132 = v154;
  v112 = v155;
  LODWORD(v136) = v156;

  v74 = v114;
  v107 = v64;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v70(v74, v69);
  v75 = v151;
  v76 = v152;
  v77 = v153;
  swift_getKeyPath();
  v148 = v75;
  v149 = v76;
  v150 = v77;
  sub_1A524B914();

  v145 = v146;
  v133 = v147;

  v78 = sub_1A524C1F4();
  (*(*(v78 - 8) + 56))(v140, 1, 1, v78);
  sub_1A524BAA4();
  v79 = *(v163 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);

  sub_1A523FBC4();
  v80 = v122;
  sub_1A523FB94();
  v163 = v137;
  v164 = v111;
  v165 = v130;
  v166 = v134;
  v102 = swift_getOpaqueTypeConformance2();
  v81 = v115;
  v82 = v139;
  sub_1A524A794();

  v83 = v107;

  (*(v126 + 8))(v80, v127);
  v84 = v113;
  (*(v124 + 8))(v141, v125);
  sub_1A4225EB8(v140, &qword_1EB120E58, v123);
  (*(v118 + 8))(v82, v81);
  v163 = v81;
  v164 = v102;
  v85 = v117;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v116;
  v88 = v119;
  v89 = v138;
  sub_1A524A7B4();
  v90 = v88;
  (*(v120 + 8))(v89, v88);
  v91 = v128;
  sub_1A524C304();
  v92 = sub_1A524C314();
  (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
  v163 = v90;
  v164 = v86;
  v93 = swift_getOpaqueTypeConformance2();
  sub_1A524A7F4();
  sub_1A4225EB8(v91, &qword_1EB120E50, v129);
  (*(v121 + 8))(v87, v85);
  v94 = sub_1A524BAA4();
  v95 = (*(*v163 + 1184))(v94);

  if (v95)
  {
    v97 = (*(*v95 + 656))(v96);

    LOBYTE(v160) = v97 & 1;
    v98 = v143;
    sub_1A4225788(v83, v143);
    v99 = v110;
    v100 = swift_allocObject();
    sub_1A42257EC(v98, v100 + v99);
    v163 = v85;
    v164 = v93;
    swift_getOpaqueTypeConformance2();
    v101 = v105;
    sub_1A524B144();

    (*(v104 + 8))(v84, v101);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A42243E4(uint64_t a1)
{
  if (!qword_1EB135AE0)
  {
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
    sub_1A4222E64();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135AE0);
    }
  }
}

uint64_t sub_1A42244B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4224500(uint64_t a1)
{
  if (!qword_1EB135AE8)
  {
    sub_1A42243E4(255);
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135AE8);
    }
  }
}

void sub_1A422461C(uint64_t a1)
{
  if (!qword_1EB135AF0)
  {
    sub_1A4224500(255);
    sub_1A4224788(255);
    sub_1A42243E4(255);
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135AF0);
    }
  }
}

void sub_1A4224788(uint64_t a1)
{
  if (!qword_1EB135AF8)
  {
    sub_1A4224820(255);
    sub_1A4226964(255, &qword_1EB122190, MEMORY[0x1E69C29F0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135AF8);
    }
  }
}

void sub_1A4224820(uint64_t a1)
{
  if (!qword_1EB122018)
  {
    type metadata accessor for GenerativeStoryEventOrDatePickerView(255);
    sub_1A42244B8(&qword_1EB125250, type metadata accessor for GenerativeStoryEventOrDatePickerView, &unk_1A5303134);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122018);
    }
  }
}

unint64_t sub_1A42248D4()
{
  result = qword_1EB135B00;
  if (!qword_1EB135B00)
  {
    sub_1A4224788(255);
    type metadata accessor for GenerativeStoryEventOrDatePickerView(255);
    sub_1A42244B8(&qword_1EB125250, type metadata accessor for GenerativeStoryEventOrDatePickerView, &unk_1A5303134);
    swift_getOpaqueTypeConformance2();
    sub_1A42249B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135B00);
  }

  return result;
}

unint64_t sub_1A42249B4()
{
  result = qword_1EB122198;
  if (!qword_1EB122198)
  {
    sub_1A4226964(255, &qword_1EB122190, MEMORY[0x1E69C29F0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122198);
  }

  return result;
}

void sub_1A4224A3C(uint64_t a1)
{
  if (!qword_1EB135B08)
  {
    sub_1A422461C(255);
    type metadata accessor for PhotosSearchMapView(255);
    sub_1A4224500(255);
    sub_1A4224788(255);
    sub_1A42243E4(255);
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView, &protocol conformance descriptor for PhotosSearchMapView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B08);
    }
  }
}

void sub_1A4224C1C()
{
  if (!qword_1EB135B10)
  {
    sub_1A4224A3C(255);
    sub_1A422461C(255);
    type metadata accessor for PhotosSearchMapView(255);
    sub_1A4224500(255);
    sub_1A4224788(255);
    sub_1A42243E4(255);
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView, &protocol conformance descriptor for PhotosSearchMapView);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B10);
    }
  }
}

void sub_1A4224E30()
{
  if (!qword_1EB135B18)
  {
    sub_1A4224C1C();
    sub_1A4224A3C(255);
    sub_1A422461C(255);
    type metadata accessor for PhotosSearchMapView(255);
    sub_1A4224500(255);
    sub_1A4224788(255);
    sub_1A42243E4(255);
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView, &protocol conformance descriptor for PhotosSearchMapView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B18);
    }
  }
}

void sub_1A4225078()
{
  if (!qword_1EB135B20)
  {
    sub_1A4224E30();
    sub_1A4224C1C();
    sub_1A4224A3C(255);
    sub_1A422461C(255);
    type metadata accessor for PhotosSearchMapView(255);
    sub_1A4224500(255);
    sub_1A4224788(255);
    sub_1A42243E4(255);
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable, &unk_1A530EE70);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView, &protocol conformance descriptor for PhotosSearchMapView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B20);
    }
  }
}

uint64_t sub_1A4225318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A422536C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1192);

  return v2(v3);
}

uint64_t sub_1A42253C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

void sub_1A4225470(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerativeStoryEventOrDatePickerView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224820(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A3E7B250(v20, v4);
  sub_1A42244B8(&qword_1EB125250, type metadata accessor for GenerativeStoryEventOrDatePickerView, &unk_1A5303134);
  sub_1A524A514();
  sub_1A4226B04(v4, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  KeyPath = swift_getKeyPath();
  v11 = sub_1A524BAA4();
  v12 = (*(*v20 + 1184))(v11);

  if (v12)
  {
    v14 = (*(*v12 + 840))(v13);

    (*(*v14 + 360))(v15);

    sub_1A5244244();
    swift_allocObject();
    v16 = sub_1A5244214();
    (*(v7 + 32))(a1, v9, v6);
    sub_1A4224788(0);
    v18 = (a1 + *(v17 + 36));
    *v18 = KeyPath;
    v18[1] = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4225788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySystemPromptInputView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42257EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySystemPromptInputView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4225868@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result & 1;
  return result;
}

void sub_1A4225910()
{
  v2 = type metadata accessor for GenerativeStorySystemPromptInputView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for MapDataProvider(0, v3);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v4 = *(v5 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);

  static MapDataProvider.sharedProvider(for:)(v4);
}

uint64_t objectdestroyTm_36()
{
  v1 = *(type metadata accessor for GenerativeStorySystemPromptInputView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A4225CDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GenerativeStorySystemPromptInputView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A4225D60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4225E08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4225EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4226964(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1A4225F28(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v39 = a3;
  v5 = sub_1A524BEE4();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeStorySystemPromptInputView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = sub_1A524BFC4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v23 = &v32 - v22;
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      v24 = v18;
      v34 = v18;
      v32 = v5;
      v25 = v20;
      sub_1A3C29A58(0, v19);
      v33 = sub_1A524D474();
      sub_1A524BFA4();
      sub_1A524C014();
      v35 = *(v25 + 8);
      v35(v16, v24);
      sub_1A4225788(v39, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v27 = swift_allocObject();
      sub_1A42257EC(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
      aBlock[4] = sub_1A4226904;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_129;
      v28 = _Block_copy(aBlock);

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A42244B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A4226964(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v29 = v32;
      sub_1A524E224();
      v30 = v33;
      MEMORY[0x1A5908790](v23, v10, v7, v28);
      _Block_release(v28);

      (*(v38 + 8))(v7, v29);
      (*(v36 + 8))(v10, v37);
      v35(v23, v34);
    }
  }

  else if (*a2)
  {
    sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
    sub_1A524BAA4();
    (*(*aBlock[0] + 592))(0);

    v31 = sub_1A524BAA4();
    (*(*aBlock[0] + 608))(v31);
  }

  return result;
}

double sub_1A4226484(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for GenerativeStorySystemPromptInputView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A4225F28(a1, a2, v6);
}

double sub_1A4226504(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for GenerativeStorySystemPromptInputView(0) + 24) + 8);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A52441E4();

  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v9 = sub_1A524BAA4();
  (*(*v11[1] + 616))(v9);

  return result;
}

uint64_t sub_1A42266F4@<X0>(char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  sub_1A42244B8(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A524BAC4();
  v9 = type metadata accessor for GenerativeStorySystemPromptInputView(0);
  v10 = a5 + *(v9 + 20);
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  v11 = a5 + *(v9 + 24);
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

void sub_1A4226808(uint64_t a1)
{
  sub_1A4226964(319, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1A4222DB0(319);
    if (v2 <= 0x3F)
    {
      sub_1A4226964(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_1A4226904()
{
  v1 = *(type metadata accessor for GenerativeStorySystemPromptInputView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4226504(v2);
}

void sub_1A4226964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A42269C8(uint64_t a1)
{
  type metadata accessor for GenerativeStorySystemPromptInputView(0);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v1 = sub_1A524BAA4();
  v2 = (*(*v3 + 1184))(v1);

  if (v2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

uint64_t sub_1A4226B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4226B64(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1A422E6F4(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

double sub_1A4226BE4(char a1)
{
  v2 = v1;
  v4 = *(*v2 + 112);
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    *(v2 + v4) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 504))(v8);
  }

  return result;
}

uint64_t sub_1A4226DA8(uint64_t a1)
{
  v3 = *v1;
  v9 = *(*v1 + 80);
  v10 = *(v3 + 96);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 504))(KeyPath, sub_1A422F3D4, &v6, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A4226EA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11[-v6];
  sub_1A42271DC(&v11[-v6]);
  v8 = *(v5 + 8);
  v8(v7, v4);
  v14 = v4;
  v15 = *(v3 + 88);
  KeyPath = swift_getKeyPath();
  v12 = v1;
  v13 = a1;
  (*(*v1 + 504))(KeyPath, sub_1A422EA6C, v11, MEMORY[0x1E69E7CA8] + 8);

  return v8(a1, v4);
}

double sub_1A4227050(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1A4034618();
  if (v4 != a1)
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 504))(v7);
  }

  return result;
}

uint64_t sub_1A42271DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t (*sub_1A422727C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A42272EC;
}

uint64_t sub_1A42272EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A42291CC();
  }

  return result;
}

uint64_t sub_1A4227320@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  return sub_1A42271DC(a1);
}

uint64_t sub_1A4227438(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, v3);
  return (*(**a2 + 184))(v5);
}

uint64_t (*sub_1A4227518(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel(255, v6, v7, v8);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A422727C(v4);
  return sub_1A4227710;
}

void sub_1A422771C(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 176))(v3);
  sub_1A5246224();
}

uint64_t sub_1A4227838(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 24))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A42279D0()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 496))(KeyPath);

  v2 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A4227ABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4227B54(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel(255, v6, v7, v8);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4227964(v4);
  return sub_1A4227D4C;
}

uint64_t sub_1A4227D58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 40))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A4227E84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 48))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A4227FB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 56))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A42280E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 64))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A4228210(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 72))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A422833C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 104))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A4228468(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 80))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A4228594(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 88))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A42286C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 96))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

double sub_1A4228868()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 496))(KeyPath);

  swift_beginAccess();

  return result;
}

uint64_t sub_1A4228958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_1A42289AC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 368);

  return v2(v3);
}

uint64_t (*sub_1A4228A08(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel(255, v6, v7, v8);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A42287FC(v4);
  return sub_1A4228C00;
}

void sub_1A4228C0C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 96);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

uint64_t sub_1A4228D30()
{
  (*(*v0 + 360))();
  sub_1A5242804();

  return v2;
}

double sub_1A4228D98(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 360))();
  sub_1A5242814();

  return result;
}

double (*sub_1A4228E10(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1A4228D30();
  a1[1] = v3;
  return sub_1A4228E58;
}

double sub_1A4228E58(uint64_t *a1, char a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return sub_1A4228D98(*a1, a1[1]);
}

uint64_t sub_1A4228ECC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  (*(v3 + 176))(v6);
  v9 = (*(*(v3 + 88) + 120))(a1, v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_1A4229000(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v3 + 176))(v6);
  (*(*(v3 + 88) + 128))(a1, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A422913C()
{
  sub_1A422F614();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4229164@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A422F614();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A42291CC()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = PXSharedAlbumsActivityLastSeenDate();
  sub_1A52410F4();

  (*(*v1 + 288))();
  v10 = sub_1A5241074();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = sub_1A5241074();
  IsUnread = PXSharedAlbumsActivityDateIsUnread(v10, v12);

  (*(*v1 + 248))(IsUnread);
  return (v11)(v8, v2);
}

id sub_1A4229384()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1B0FA0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB1B0FA8);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "Marking shared album activity as read in response to dismissal of a shared album activity notification", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  sub_1A5241104();
  v8 = sub_1A5241074();
  (*(v1 + 8))(v3, v0);
  PXSetSharedAlbumsActivityLastSeenDateToDate(v8);

  return [objc_opt_self() userDidViewCloudFeedContent_];
}

uint64_t sub_1A4229534(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 112))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A4229800()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  swift_unknownObjectRelease();
  v1 = *(*v0 + 136);
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A42298FC()
{
  sub_1A4229800();

  return swift_deallocClassInstance();
}

void (*sub_1A42299AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 400))();
  return sub_1A3E658B0;
}

void (*sub_1A4229ACC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 192))();
  return sub_1A3E62A10;
}

void sub_1A4229FC0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 px_standardLibrarySpecificFetchOptions];
  objc_opt_self();
  sub_1A3C8B488(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A422A0DC(unint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (*(a1 + 24) <= 1u)
  {
    if (!*(a1 + 24))
    {
      if (!(v4 >> 62))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D435C4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    type metadata accessor for SharedAlbumsActivityItem(0);
    if (v5)
    {
      objc_opt_self();
      sub_1A524C634();
      sub_1A422E23C(v2);
    }

    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(a1 + 24) == 2)
  {
    if (!(v5 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3D435C4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = v5 | v3;
  if (v5 | v3 | v4)
  {
    if (v4 != 1 || v6 != 0)
    {
      if (v4 == 2 && !v6)
      {
        type metadata accessor for SharedAlbumsActivityItem(0);
        objc_opt_self();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if (v4 == 3 && !v6)
      {
        type metadata accessor for SharedAlbumsActivityItem(0);
        objc_opt_self();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      type metadata accessor for SharedAlbumsActivityItem(0);
      objc_opt_self();
      sub_1A524C634();
      sub_1A422E23C(v2);
    }

    type metadata accessor for SharedAlbumsActivityItem(0);
    objc_opt_self();
    sub_1A524C634();
    sub_1A422E23C(v2);
  }

  type metadata accessor for SharedAlbumsActivityItem(0);
  objc_opt_self();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A422ABE8(uint64_t a1)
{
  v2 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v3 = SharedAlbumsActivityItem.albumId.getter();
  sub_1A4229FC0(v2, v3, v4);
}

uint64_t sub_1A422AD24()
{
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) == 2)
    {
      return 1;
    }

    else
    {
      v2 = *v0;
      if (v0[1] | v0[2] | *v0)
      {
        if (v2 == 1 && *(v0 + 1) == 0)
        {
          return 3;
        }

        else if (v2 == 2 && *(v0 + 1) == 0)
        {
          return 6;
        }

        else if (*(v0 + 1) == 0 && v2 == 3)
        {
          return 7;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 5;
      }
    }
  }

  else if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A422AE08(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_1A5241074();
  v4 = [v2 textForDate_];

  v5 = sub_1A524C674();
  return v5;
}

uint64_t sub_1A422AE94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A52407E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1A422AF00()
{
  v0 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A422EC20(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  type metadata accessor for ShareParticipantImageConfiguration(0);
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A422B0B8(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 36)) uuid];
  if (v2)
  {
    v3 = v2;
    sub_1A524C674();

    PXDisplayCollectionDetailedCountsMake();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1A422B1A8()
{
  result = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type);
  if (result >= 8)
  {
    sub_1A524E404();

    v2 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v2);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

BOOL sub_1A422B288()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = PXForYouLastExitedDate();
  sub_1A52410F4();

  v5 = sub_1A5241114();
  (*(v1 + 8))(v3, v0);
  return v5 == 1;
}

void sub_1A422B388(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type);
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        objc_opt_self();
        sub_1A524C634();
        sub_1A422E23C(v3);
      }

      sub_1A47063AC();
      objc_opt_self();
      sub_1A524C634();
      sub_1A524C634();

      sub_1A422E23C(v3);
    }

    if (v4 == 6)
    {
      sub_1A47063AC();
      objc_opt_self();
      sub_1A524C634();

      sub_1A524C634();
      sub_1A422E23C(v3);
    }

    if (v4 == 7)
    {
      sub_1A47063AC();
      objc_opt_self();
      sub_1A524C634();

      sub_1A524C634();
      sub_1A422E23C(v3);
    }
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        if (*(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_message + 8))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (qword_1EB1B0FA0 != -1)
        {
          swift_once();
        }

        v5 = sub_1A5246F24();
        __swift_project_value_buffer(v5, qword_1EB1B0FA8);
        v6 = sub_1A5246F04();
        v7 = sub_1A524D244();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_1A3C1C000, v6, v7, "Received an comment activity item, but with a nil message", v8, 2u);
          MEMORY[0x1A590EEC0](v8, -1, -1);
        }

        v9 = *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe);
        sub_1A47063AC();
        if (v9 == 1)
        {

          objc_opt_self();
          sub_1A524C634();

          sub_1A422E23C(v3);
        }

        objc_opt_self();
        sub_1A524C634();

        sub_1A524C634();

        sub_1A422E23C(v3);
      }

      objc_opt_self();
      sub_1A524C634();
      sub_1A422E23C(v3);
    }

    if (!v4)
    {
      sub_1A47060CC();
    }

    if (v4 == 1)
    {
      sub_1A47060CC();
    }
  }

  sub_1A524E404();

  v10 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v10);

  MEMORY[0x1A5907B60](0xD000000000000014, 0x80000001A53CE390);
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A422C0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type) && *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_message + 8))
  {
    v5 = *(a2 + 48);
    v6 = *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe);
    sub_1A47063AC();
    if (v6 == 1)
    {

      v7 = sub_1A524C634();
      v8 = PXLocalizedString(v7);

      sub_1A524C674();
    }

    v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v10 = sub_1A524C634();

    type metadata accessor for Key(0);
    sub_1A3C8C150(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
    v11 = sub_1A524C3D4();
    [v9 initWithString:v10 attributes:v11];

    v12 = sub_1A524C634();
    v13 = PXLocalizedString(v12);

    if (!v13)
    {
      sub_1A524C674();
      sub_1A524C634();
    }

    objc_opt_self();
    sub_1A422E23C(v5);
  }

  v14 = sub_1A52407E4();
  v15 = *(*(v14 - 8) + 56);

  return v15(a3, 1, 1, v14);
}

void *sub_1A422C45C()
{
  v1 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v52 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - v7;
  v9 = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_avatarInfos);
  if (v9 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v11 = 0;
    v48 = v9 & 0xFFFFFFFFFFFFFF8;
    v49 = v9 & 0xC000000000000001;
    v12 = MEMORY[0x1E69E7CC0];
    v46 = v9;
    v47 = v8;
    v45 = i;
    while (1)
    {
      if (v49)
      {
        v13 = MEMORY[0x1A59097F0](v11, v9, v6);
      }

      else
      {
        if (v11 >= *(v48 + 16))
        {
          goto LABEL_28;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v55 = v11 + 1;
      v15 = [v13 email];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1A524C674();
        v53 = v18;
        v54 = v17;
      }

      else
      {
        v53 = 0;
        v54 = 0;
      }

      v19 = [v14 phone];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1A524C674();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = [v14 firstName];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1A524C674();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v14 lastName];
      if (v29)
      {
        v31 = v29;
        v32 = sub_1A524C674();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = v52;
      sub_1A482211C(v30);
      v36 = sub_1A41F7694();
      v43 = v35;
      v37 = v50;
      sub_1A481E150(v54, v53, v21, v23, v26, v28, v32, v34, v50, v36, v43);

      v8 = v47;
      sub_1A422EBBC(v37, v47, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1A422E4F8(0, v12[2] + 1, 1, v12, v39);
      }

      v41 = v12[2];
      v40 = v12[3];
      if (v41 >= v40 >> 1)
      {
        v12 = sub_1A422E4F8((v40 > 1), v41 + 1, 1, v12, v39);
      }

      v12[2] = v41 + 1;
      sub_1A422EBBC(v8, v12 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41, v39);
      ++v11;
      v9 = v46;
      if (v55 == v45)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

BOOL sub_1A422C95C()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = PXForYouLastExitedDate();
  sub_1A52410F4();

  v5 = sub_1A5241114();
  (*(v1 + 8))(v3, v0);
  return v5 == 1;
}

uint64_t sub_1A422CA9C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_1A5241074();
  v4 = [v2 textForDate_];

  v5 = sub_1A524C674();
  return v5;
}

uint64_t sub_1A422CCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A4706D34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A422CD04@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5248714();
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A482211C(v3);
  v6 = sub_1A41F7694();
  return sub_1A481E150(0, 0, 0, 0, 0, 0, 0, 0, a1, v6, v5);
}

void sub_1A422CDA8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11)
{
  v35 = a8;
  v27[3] = a7;
  v29 = a4;
  v30 = a5;
  v36 = a3;
  v37 = a2;
  LODWORD(v28) = a1;
  v34 = a11;
  sub_1A422EC20(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v27[4] = v27 - v13;
  v14 = sub_1A52411C4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v18 = sub_1A5241164();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  *a9 = v18;
  a9[1] = v20;
  v21 = type metadata accessor for LemonadeMockSharedAlbumActivityModel(0);
  v22 = *(v21 + 36);
  v23 = sub_1A52407E4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v32 = v24 + 56;
  v33 = v22;
  v31 = v25;
  v25(a9 + v22, 1, 1, v23);
  v26 = (a9 + *(v21 + 48));
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  LemonadeSharedAlbumsActivityCellSpecs.init()(&v38);
}

uint64_t sub_1A422D5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1A52407E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A422D628(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_1A5241074();
  v4 = [v2 textForDate_];

  v5 = sub_1A524C674();
  return v5;
}

uint64_t sub_1A422D6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1A5241144();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A422D7B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 52);
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(a2, (v2 + v4), 0x108uLL);
  return sub_1A422ED64(__dst, &v6);
}

void sub_1A422D854()
{
  sub_1A3C8C150(&qword_1EB135B78, type metadata accessor for LemonadeMockSharedAlbumActivityModel, &unk_1A53272A8);

    ;
  }
}

void sub_1A422D8C0()
{
  sub_1A3C8C150(&qword_1EB135B78, type metadata accessor for LemonadeMockSharedAlbumActivityModel, &unk_1A53272A8);

    ;
  }
}

void sub_1A422D92C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B0FA8);
  __swift_project_value_buffer(v0, qword_1EB1B0FA8);
  sub_1A5246EF4();
}

uint64_t sub_1A422D998(char a1, uint64_t a2, unint64_t a3, id a4, __n128 a5, uint64_t a6, void *a7)
{
  v10 = *(a2 + 16);
  v11 = v10 + (a1 & 1);
  if (__OFADD__(v10, a1 & 1))
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v8 = a7[6];
    v9 = a3 >> 62;
    if (!(a3 >> 62))
    {
      v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= 1)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  v32 = a2;
  v33 = sub_1A524E2B4();
  a2 = v32;
  v12 = v33;
  if (v33 >= 1)
  {
LABEL_4:
    v41 = v8;
    sub_1A3D3B558(a2);
    v13 = objc_allocWithZone(MEMORY[0x1E695DFA0]);
    v14 = sub_1A524CA14();

    v15 = [v13 initWithArray_];

    v42 = v15;
    if (v12 == 1)
    {
      if (v9)
      {
        if (sub_1A524E2B4())
        {
          goto LABEL_7;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((v7 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1A59097F0](0, v7);
LABEL_10:
          [v16 mediaType];
          objc_opt_self();
          sub_1A422E23C(v41);
        }

        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v7 + 32);
          swift_unknownObjectRetain();
          goto LABEL_10;
        }

        __break(1u);
        swift_once();
        v26 = sub_1A5246F24();
        __swift_project_value_buffer(v26, qword_1EB1B0FA8);
        v27 = sub_1A5246F04();
        v28 = sub_1A524D244();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *&v45[0] = swift_slowAlloc();
          *v29 = 136315138;
          if (v9 == 2)
          {
            v30 = 0x6F65646976;
          }

          else
          {
            v30 = 0x6F746F6870;
          }

          sub_1A3C2EF94(v30, 0xE500000000000000, v45);
        }

        v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v25 = sub_1A524C634();
        [v31 initWithString_];
        swift_unknownObjectRelease();

        goto LABEL_20;
      }
    }

    v17 = sub_1A422F424(v7);
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v17 countForObject_];

    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v17 countForObject_];

    if (v11 == 1)
    {
      if ([v42 firstObject])
      {
        sub_1A524E0B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      v45[0] = v43;
      v45[1] = v44;
      if (*(&v44 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1A3C2C718(v45, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C8B488);
      }

      objc_opt_self();
      sub_1A524C634();

      sub_1A524C634();
      sub_1A422E23C(v41);
    }

    if (qword_1EB1B0FA0 != -1)
    {
      swift_once();
    }

    v20 = sub_1A5246F24();
    __swift_project_value_buffer(v20, qword_1EB1B0FA8);
    v21 = sub_1A5246F04();
    v22 = sub_1A524D244();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A3C1C000, v21, v22, "ERROR: Could not form attributed string for like title. Multiple people liked multiple assets.", v23, 2u);
      MEMORY[0x1A590EEC0](v23, -1, -1);
    }

    v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v25 = sub_1A524C634();
    [v24 initWithString_];

LABEL_20:
    return sub_1A5240834();
  }

LABEL_34:
  if (qword_1EB1B0FA0 != -1)
  {
    swift_once();
  }

  v34 = sub_1A5246F24();
  __swift_project_value_buffer(v34, qword_1EB1B0FA8);
  v35 = sub_1A5246F04();
  v36 = sub_1A524D244();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1A3C1C000, v35, v36, "ERROR: Asset was nil in a section info for a like", v37, 2u);
    MEMORY[0x1A590EEC0](v37, -1, -1);
  }

  v38 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v39 = sub_1A524C634();
  [v38 initWithString_];

  return sub_1A5240834();
}

void sub_1A422E23C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3FDA25C();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void *sub_1A422E4F8(void *result, int64_t a2, char a3, void *a4, double a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A422EC20(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v11 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1A422E6F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = aBlock - v7;
  *(v2 + v4[14]) = 0;
  *(v2 + *(*v2 + 128)) = 0;
  sub_1A5241604();
  (*(v6 + 16))(v8, a1, v5);
  (*(v6 + 32))(v2 + *(*v2 + 104), v8, v5);
  sub_1A4034618();
  swift_allocObject();
  *(v2 + *(*v2 + 120)) = sub_1A5242844();
  v9 = [objc_opt_self() defaultCenter];
  v10 = [objc_opt_self() mainQueue];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v4[11];
  v12[4] = v4[12];
  v12[5] = v11;
  aBlock[4] = sub_1A422F744;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C7C848;
  aBlock[3] = &block_descriptor_130;
  v13 = _Block_copy(aBlock);

  v14 = [v9 addObserverForName:@"PXSharedAlbumsActivityLastSeenDateChangeNotification" object:0 queue:v10 usingBlock:v13];
  _Block_release(v13);

  sub_1A4226DA8(v14);
  sub_1A42291CC();
  return v2;
}

void sub_1A422EA04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 112);
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A422EA6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v2;
  v4 = *(*v2 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v2 + v4, v1);
  swift_endAccess();
  return sub_1A42291CC();
}

void sub_1A422EB2C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(*v2 + 120);
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1A422EBBC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for ShareParticipantImageConfiguration(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A422EC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for LemonadeMockSharedAlbumActivityModel(uint64_t a1)
{
  result = qword_1EB15FD50;
  if (!qword_1EB15FD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A422ECD0(uint64_t a1, uint64_t a2)
{
  sub_1A422EC20(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A422EDC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A422EE64(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422EEDC(uint64_t a1)
{
  result = sub_1A3C8C150(&qword_1EB129E30, type metadata accessor for SharedAlbumsActivityItem, &protocol conformance descriptor for SharedAlbumsActivityItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422EF7C(uint64_t a1)
{
  result = sub_1A3C8C150(&unk_1EB129858, type metadata accessor for SharedAlbumsActivityEntryItem, &unk_1A532724C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422F01C(uint64_t a1)
{
  result = sub_1A3C8C150(&qword_1EB135B30, type metadata accessor for LemonadeMockSharedAlbumActivityModel, &unk_1A5327318);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422F15C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A422F274(uint64_t a1)
{
  sub_1A404B7BC(319);
  if (v1 <= 0x3F)
  {
    sub_1A52407E4();
    if (v2 <= 0x3F)
    {
      sub_1A422EC20(319, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A422EC20(319, &qword_1EB135B58, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1A5241144();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A422F3D4()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 128)) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_1A422F424(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
  v3 = result;
  if (a1 >> 62)
  {
    result = sub_1A524E2B4();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return v3;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v5, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      if ([v8 respondsToSelector_])
      {
        v9 = [v8 playbackStyle];
      }

      else
      {
        v9 = 1;
      }

      if ([v8 respondsToSelector_])
      {
        v10 = [v8 playbackVariation];
        if (v9 > 2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
        if (v9 > 2)
        {
LABEL_15:
          switch(v9)
          {
            case 3:
              goto LABEL_28;
            case 4:
              v6 = 2;
              goto LABEL_6;
            case 5:
              v11 = 2;
              if (v10 == 2)
              {
                v11 = 3;
              }

              if (v10 == 1)
              {
                v6 = 4;
              }

              else
              {
                v6 = v11;
              }

              goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        if (v9 == 1)
        {
LABEL_28:
          if (v10 == 3)
          {
            v6 = 5;
          }

          else
          {
            v6 = 1;
          }

          goto LABEL_6;
        }

        if (v9 == 2)
        {
          v6 = 6;
          goto LABEL_6;
        }
      }

LABEL_5:
      v6 = 1;
LABEL_6:
      ++v5;
      v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      [v3 addObject_];
      swift_unknownObjectRelease();

      if (v4 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A422F614()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 496))(KeyPath);

  return *(v0 + *(*v0 + 128));
}

double sub_1A422F6EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 2)
    {
    }

    else if (a4 != 1)
    {
      return result;
    }
  }

  return result;
}

double sub_1A422F744()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A42291CC();
  }

  return result;
}

uint64_t sub_1A422F7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A423CA80(v1 + *(v12 + 36), v11, &qword_1EB128AA0, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5242D14();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A422F9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A422FA44()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A423CA80(v0 + *(v12 + 40), v8, &qword_1EB128A80, sub_1A3D63A58, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A423B168(v8, v11, sub_1A3D63A58);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A3D63A8C(0);
  if ((*(*(v15 - 8) + 48))(v11, 1, v15) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A3C309BC(v11, sub_1A3D63A58);
  return 0;
}

uint64_t (*sub_1A422FD60())(uint64_t, uint64_t)
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LemonadeSearchOverlayView(0) + 44));
  v6 = *v5;
  LODWORD(v5) = *(v5 + 16);
  v7 = v6;
  v13 = v6;
  if (v5 == 1)
  {
    sub_1A3C66EE8(v6, *(&v6 + 1));
    v8 = v13;
    if (v13)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v8;
      return sub_1A423CCD0;
    }
  }

  else
  {

    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v12 = sub_1A4235DE4(v7, *(&v13 + 1), 0);
    (*(v2 + 8))(v4, v1, v12);
    v8 = v14;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1A422FF28@<X0>(uint64_t (**a1)()@<X8>)
{
  result = EnvironmentValues.customAssetSelectionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A423CEBC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A422FF98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A423D2C0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A3C66EE8(v1, v2);
  return EnvironmentValues.customAssetSelectionHandler.setter(v4, v3);
}

id sub_1A4230058@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  *a1 = result;
  return result;
}

uint64_t sub_1A4230094@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeSearchIndexingStatus(0);
  result = sub_1A4371A78();
  *a1 = result;
  return result;
}

uint64_t sub_1A42300C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  result = LemonadeActiveSearchViewModel.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t LemonadeSearchOverlayView.init(searchQueryManager:suggestedQueryFetcher:container:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for LemonadeActiveSearchUpdater(0, a2);
  active = LemonadeActiveSearchUpdater.__allocating_init()();
  sub_1A3C341C8(a3, &v30);
  LemonadeActiveSearchUpdater.updateContainer(_:)(&v30);
  sub_1A3C309BC(&v30, sub_1A3DA26DC);
  v13 = type metadata accessor for LemonadeSearchOverlayView(0);
  v14 = v13[8];
  *(a6 + v14) = swift_getKeyPath();
  v15 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = v13[9];
  *(a6 + v16) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v15);
  swift_storeEnumTagMultiPayload();
  v17 = v13[10];
  *(a6 + v17) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, v15);
  swift_storeEnumTagMultiPayload();
  v18 = a6 + v13[11];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = a6 + v13[12];

  sub_1A524B694();
  v20 = *(&v30 + 1);
  *v19 = v30;
  *(v19 + 1) = v20;
  v21 = a6 + v13[13];
  sub_1A524B694();
  v22 = *(&v30 + 1);
  *v21 = v30;
  *(v21 + 1) = v22;
  v23 = a6 + v13[14];
  sub_1A524A0C4();
  sub_1A524B694();
  v24 = *(&v30 + 1);
  *v23 = v30;
  *(v23 + 1) = v24;
  v25 = v13[15];
  sub_1A4230024(0);
  sub_1A524B694();
  *(a6 + v25) = v30;
  v26 = a6 + v13[16];
  sub_1A423C99C(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  v27 = BYTE8(v30);
  v28 = v31;
  *v26 = v30;
  v26[8] = v27;
  *(v26 + 2) = v28;
  sub_1A3C52C70(0, &unk_1EB126900, 0x1E69DCCD8);
  sub_1A5247C74();
  type metadata accessor for LemonadeSearchIndexingStatus(0);
  sub_1A5247C74();
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A5247C74();
  sub_1A42300FC(0);
  sub_1A5247C74();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = active;
  a6[3] = a4;
  a6[4] = a5;
  PXPreferencesEnsureDefaultEnhancedVisualSearch();

  return __swift_destroy_boxed_opaque_existential_0(a3);
}

void LemonadeSearchOverlayView.init(searchQueryManager:suggestedQueryFetcher:updater:onCancellation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for LemonadeSearchOverlayView(0);
  v13 = v12[8];
  *(a6 + v13) = swift_getKeyPath();
  v14 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v15 = v12[9];
  *(a6 + v15) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v14);
  swift_storeEnumTagMultiPayload();
  v16 = v12[10];
  *(a6 + v16) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, v14);
  swift_storeEnumTagMultiPayload();
  v17 = a6 + v12[11];
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = a6 + v12[12];
  sub_1A524B694();
  *v18 = v23;
  *(v18 + 1) = *(&v23 + 1);
  v19 = a6 + v12[13];
  sub_1A524B694();
  *v19 = v23;
  *(v19 + 1) = *(&v23 + 1);
  v20 = a6 + v12[14];
  sub_1A524A0C4();
  sub_1A524B694();
  *v20 = v23;
  *(v20 + 1) = *(&v23 + 1);
  v21 = v12[15];
  sub_1A4230024(0);
  sub_1A524B694();
  *(a6 + v21) = v23;
  v22 = a6 + v12[16];
  sub_1A423C99C(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  *v22 = v23;
  v22[8] = BYTE8(v23);
  *(v22 + 2) = v24;
  sub_1A3C52C70(0, &unk_1EB126900, 0x1E69DCCD8);
  sub_1A5247C74();
  type metadata accessor for LemonadeSearchIndexingStatus(0);
  sub_1A5247C74();
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A5247C74();
  sub_1A42300FC(0);
  sub_1A5247C74();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  PXPreferencesEnsureDefaultEnhancedVisualSearch();
}

uint64_t sub_1A42308AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1A422F7AC(&v18 - v7);
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x1E69C21F8], v2);
  v10 = sub_1A5242D04();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10 & 1) != 0 || (sub_1A422F7AC(v8), v9(v5, *MEMORY[0x1E69C2210], v2), v12 = sub_1A5242D04(), v11(v5, v2), v11(v8, v2), (v12))
  {
    *a1 = 0x4030000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0x4028000000000000;
    *(a1 + 40) = 1;
    v13 = 41;
    v14 = MEMORY[0x1E69C1CE0];
  }

  else
  {
    *a1 = 0x4030000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0x4028000000000000;
    v13 = 40;
    v14 = MEMORY[0x1E69C1CE8];
  }

  *(a1 + v13) = 1;
  v15 = *v14;
  v16 = sub_1A5242074();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_1A4230B04()
{
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A4370FD0();
  v1 = v0;

  if ((v1 & 1) != 0 || (sub_1A5247C84(), v2 = sub_1A4371098(), , v2))
  {
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    active = LemonadeActiveSearchViewModel.isEditing.getter();

    v4 = active ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A4230C40()
{
  sub_1A423357C(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.searchResults.getter(v2);

  v3 = type metadata accessor for PhotosSearchResults(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_1A3C309BC(v2, sub_1A423357C);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_1A5247C84();
    v6 = sub_1A3EA2A38();

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

void sub_1A4230DBC()
{
  v1 = sub_1A5242074();
  v2 = *(v1 - 8);
  v18[2] = v1;
  v18[3] = v2;
  MEMORY[0x1EEE9AC00](v1);
  v18[1] = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52436F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v18[9] = MEMORY[0x1E69E7CD0];
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v11 = sub_1A3EA2A38();

  v12 = *(v5 + 104);
  v13 = (v5 + 8);
  if (v11)
  {
    v14 = v12(v7, *MEMORY[0x1E69C25A8], v4);
    sub_1A423B928(v10, v7, v14);
    (*v13)(v10, v4);
  }

  else
  {
    v15 = v12(v7, *MEMORY[0x1E69C25C8], v4);
    sub_1A423B928(v10, v7, v15);
    v16 = *v13;
    (*v13)(v10, v4);
    v17 = v12(v7, *MEMORY[0x1E69C25C0], v4);
    sub_1A423B928(v10, v7, v17);
    v16(v10, v4);
  }

  v18[4] = *(v0 + 8);
  sub_1A3FAE988();
}

void *sub_1A4231460()
{
  sub_1A422F9E0(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v24[1] = v24 - v1;
  sub_1A423CD68(0);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAF454();
  v8 = v6;
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v37 = MEMORY[0x1E69E7CC0];
      result = sub_1A423C780(0, v9 & ~(v9 >> 63), 0, v7);
      if (v9 < 0)
      {
        break;
      }

      v11 = 0;
      v12 = v37;
      v26 = v8;
      v27 = v8 & 0xC000000000000001;
      v24[0] = v8 & 0xFFFFFFFFFFFFFF8;
      v24[2] = v29 + 32;
      v25 = v9;
      while (!__OFADD__(v11, 1))
      {
        v31 = v11 + 1;
        v32 = v12;
        if (v27)
        {
          v13 = MEMORY[0x1A59097F0](v11, v8);
        }

        else
        {
          if (v11 >= *(v24[0] + 16))
          {
            goto LABEL_21;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = sub_1A3FAE220();
        v16 = v15;
        v17 = sub_1A3CB2058();
        if (v17)
        {

          v35 = v14;
          v36 = v16;
          v33 = 32;
          v34 = 0xE100000000000000;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v30 = v14;
        v18 = sub_1A3FAE1D8(0);
        if ((v19 & 1) == 0)
        {
          v35 = v18;
          sub_1A3DA24EC();
          sub_1A524E054();
        }

        v35 = v13;

        sub_1A3FADF58();
        v20 = sub_1A3FAE428();
        if (v20)
        {
        }

        sub_1A5243EC4();
        type metadata accessor for LemonadeSuggestedSearchCollection(0);
        sub_1A4234388(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
        sub_1A5243704();
        v12 = v32;
        v37 = v32;
        v23 = *(v32 + 16);
        v22 = *(v32 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1A423C780((v22 > 1), v23 + 1, 1, v21);
          v12 = v37;
        }

        *(v12 + 16) = v23 + 1;
        (*(v29 + 32))(v12 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, v5, v28);
        ++v11;
        v8 = v26;
        if (v31 == v25)
        {

          return v12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v9 = sub_1A524E2B4();
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A4231C5C()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A422F9E0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A3FADC38();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

void LemonadeSearchOverlayView.body.getter(uint64_t a1@<X8>)
{
  v87 = a1;
  sub_1A423357C(0);
  v83 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v80 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242074();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeSearchOverlayView(0);
  v98 = *(v6 - 8);
  v97 = *(v98 + 64);
  v7 = v6 - 8;
  v96 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v63 = v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v59 = v54 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v100 = v54 - v16;
  v17 = MEMORY[0x1E6981948];
  sub_1A422F9E0(0, &qword_1EB1214F8, MEMORY[0x1E69C1CD0], MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = v54 - v19;
  sub_1A42335B0(0);
  v21 = *(v20 - 8);
  v70 = v20;
  v71 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v69 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234A50(0);
  v24 = *(v23 - 8);
  v73 = v23;
  v74 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v89 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234B04(0);
  v27 = *(v26 - 8);
  v77 = v26;
  v78 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v91 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234C80(0);
  v79 = v29;
  v81 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v92 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234E50(0);
  v82 = v31;
  v84 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v93 = v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4235028(0);
  v34 = *(v33 - 8);
  v85 = v33;
  v86 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v94 = v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v1;
  v95 = *(v1 + 8);
  v36 = *(v7 + 84);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  v38 = v37;
  sub_1A5247CA4();
  v39 = v101;
  v40 = v102;
  v41 = v103;
  swift_getKeyPath();
  v128 = v39;
  v129 = v40;
  v130 = v41;
  sub_1A422F9E0(0, &qword_1EB135CC0, type metadata accessor for LemonadeActiveSearchViewModel, v17);
  sub_1A524B914();

  v66 = v126;
  v67 = v125;
  v65 = v127;

  sub_1A5247CA4();
  v42 = v101;
  v43 = v102;
  v44 = v103;
  swift_getKeyPath();
  v122 = v42;
  v123 = v43;
  v124 = v44;
  sub_1A524B914();

  v61 = v120;
  v62 = v119;
  v60 = v121;

  sub_1A5247CA4();
  v45 = v101;
  v46 = v102;
  v47 = v103;
  swift_getKeyPath();
  v116 = v45;
  v117 = v46;
  v118 = v47;
  sub_1A524B914();

  v131 = v113;
  v132 = v114;
  v133 = v115;

  v88 = v36;
  sub_1A5247CA4();
  v48 = v101;
  v49 = v102;
  v50 = v103;
  swift_getKeyPath();
  v110 = v48;
  v111 = v49;
  v112 = v50;
  sub_1A524B914();

  sub_1A5247CA4();
  v51 = v101;
  v52 = v102;
  v53 = v103;
  swift_getKeyPath();
  v107 = v51;
  v108 = v52;
  v109 = v53;
  sub_1A524B914();

  v56 = v105;
  v57 = v104;
  v55 = v106;

  v58 = v38;
  sub_1A5247C84();
  v54[14] = sub_1A3EA5B84();

  sub_1A3FAE988();
}

void sub_1A42335B0(uint64_t a1)
{
  if (!qword_1EB135B80)
  {
    sub_1A422F9E0(255, &qword_1EB135B88, sub_1A42337B4, MEMORY[0x1E69E6720]);
    sub_1A4233D70(255);
    sub_1A423475C(255);
    sub_1A5243EC4();
    type metadata accessor for LemonadeSuggestedSearchCollection(255);
    sub_1A4234790();
    sub_1A4234388(&qword_1EB135C68, sub_1A4233D70, MEMORY[0x1E69817F8]);
    sub_1A4234494(&qword_1EB135C70, sub_1A423475C, sub_1A4209428, MEMORY[0x1E6982090]);
    sub_1A4234388(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A4234388(&qword_1EB1358A8, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DDF0);
    v1 = sub_1A5242BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135B80);
    }
  }
}

void sub_1A42337B4(uint64_t a1)
{
  if (!qword_1EB135B90)
  {
    sub_1A423396C(255);
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4233AB0(255);
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC(255);
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346F00);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B90);
    }
  }
}

void sub_1A423396C(uint64_t a1)
{
  if (!qword_1EB135B98)
  {
    sub_1A4233AB0(255);
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC(255);
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346F00);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B98);
    }
  }
}

void sub_1A4233AB0(uint64_t a1)
{
  if (!qword_1EB135BA0)
  {
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC(255);
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346F00);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135BA0);
    }
  }
}

void sub_1A4233BBC(uint64_t a1)
{
  if (!qword_1EB135BA8)
  {
    sub_1A422F9E0(255, &qword_1EB135BB0, type metadata accessor for PhotosSearchResultsGridView, MEMORY[0x1E697FEC0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135BA8);
    }
  }
}

unint64_t sub_1A4233C4C()
{
  result = qword_1EB135BC8;
  if (!qword_1EB135BC8)
  {
    sub_1A422F9E0(255, &qword_1EB135BB0, type metadata accessor for PhotosSearchResultsGridView, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135BC8);
  }

  return result;
}

unint64_t sub_1A4233CD4()
{
  result = qword_1EB125FD8;
  if (!qword_1EB125FD8)
  {
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A3E75420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125FD8);
  }

  return result;
}

void sub_1A4233D70(uint64_t a1)
{
  if (!qword_1EB135BD0)
  {
    sub_1A4233E64(255);
    sub_1A4233F38(255);
    sub_1A3EE1D04(255);
    sub_1A42343D0();
    sub_1A4234388(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135BD0);
    }
  }
}

void sub_1A4233E64(uint64_t a1)
{
  if (!qword_1EB135BD8)
  {
    sub_1A4233F38(255);
    sub_1A3EE1D04(255);
    sub_1A42343D0();
    sub_1A4234388(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135BD8);
    }
  }
}

void sub_1A4233F38(uint64_t a1)
{
  if (!qword_1EB135BE0)
  {
    sub_1A4233FCC(255);
    sub_1A3F32DC0(255, &qword_1EB135C20, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135BE0);
    }
  }
}

void sub_1A4234048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A42340CC(uint64_t a1)
{
  if (!qword_1EB135BF8)
  {
    sub_1A3F32DC0(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A423418C(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135BF8);
    }
  }
}

void sub_1A423418C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A423C99C(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4234208(uint64_t a1)
{
  if (!qword_1EB135C00)
  {
    sub_1A422F9E0(255, &qword_1EB135C08, sub_1A423429C, MEMORY[0x1E6981F40]);
    sub_1A4234300();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135C00);
    }
  }
}

void sub_1A423429C(uint64_t a1)
{
  if (!qword_1EB135C10)
  {
    sub_1A42340CC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB135C10);
    }
  }
}

unint64_t sub_1A4234300()
{
  result = qword_1EB135C18;
  if (!qword_1EB135C18)
  {
    sub_1A422F9E0(255, &qword_1EB135C08, sub_1A423429C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C18);
  }

  return result;
}

uint64_t sub_1A4234388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A42343D0()
{
  result = qword_1EB135C28;
  if (!qword_1EB135C28)
  {
    sub_1A4233F38(255);
    sub_1A4234494(&qword_1EB135C30, sub_1A4233FCC, sub_1A4234504, MEMORY[0x1E6981600]);
    sub_1A42346D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C28);
  }

  return result;
}

uint64_t sub_1A4234494(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4234504()
{
  result = qword_1EB135C38;
  if (!qword_1EB135C38)
  {
    sub_1A4234000(255);
    sub_1A42345B4();
    sub_1A4234388(&qword_1EB135C48, sub_1A4234208, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C38);
  }

  return result;
}

unint64_t sub_1A42345B4()
{
  result = qword_1EB135C40;
  if (!qword_1EB135C40)
  {
    sub_1A42340CC(255);
    sub_1A4234634();
    sub_1A400FBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C40);
  }

  return result;
}

unint64_t sub_1A4234634()
{
  result = qword_1EB124068;
  if (!qword_1EB124068)
  {
    sub_1A3F32DC0(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124068);
  }

  return result;
}

unint64_t sub_1A42346D8()
{
  result = qword_1EB135C50;
  if (!qword_1EB135C50)
  {
    sub_1A3F32DC0(255, &qword_1EB135C20, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C50);
  }

  return result;
}

unint64_t sub_1A4234790()
{
  result = qword_1EB135C60;
  if (!qword_1EB135C60)
  {
    sub_1A422F9E0(255, &qword_1EB135B88, sub_1A42337B4, MEMORY[0x1E69E6720]);
    sub_1A423396C(255);
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4233AB0(255);
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC(255);
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346F00);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C60);
  }

  return result;
}

uint64_t sub_1A423499C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4234A50(uint64_t a1)
{
  if (!qword_1EB135C78)
  {
    sub_1A42335B0(255);
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0, MEMORY[0x1E69C2150]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135C78);
    }
  }
}

void sub_1A4234B04(uint64_t a1)
{
  if (!qword_1EB135C88)
  {
    sub_1A4234A50(255);
    sub_1A3C52C70(255, &qword_1EB120920, 0x1E6978A68);
    sub_1A42335B0(255);
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0, MEMORY[0x1E69C2150]);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135C88);
    }
  }
}

unint64_t sub_1A4234C18()
{
  result = qword_1EB135C90;
  if (!qword_1EB135C90)
  {
    sub_1A3C52C70(255, &qword_1EB120920, 0x1E6978A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C90);
  }

  return result;
}

void sub_1A4234C80(uint64_t a1)
{
  if (!qword_1EB135C98)
  {
    sub_1A4234B04(255);
    sub_1A423357C(255);
    sub_1A4234A50(255);
    sub_1A3C52C70(255, &qword_1EB120920, 0x1E6978A68);
    sub_1A42335B0(255);
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0, MEMORY[0x1E69C2150]);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C, MEMORY[0x1E69E7C80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135C98);
    }
  }
}

void sub_1A4234E50(uint64_t a1)
{
  if (!qword_1EB135CA8)
  {
    sub_1A4234C80(255);
    sub_1A4234B04(255);
    sub_1A423357C(255);
    sub_1A4234A50(255);
    sub_1A3C52C70(255, &qword_1EB120920, 0x1E6978A68);
    sub_1A42335B0(255);
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0, MEMORY[0x1E69C2150]);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135CA8);
    }
  }
}

void sub_1A4235028(uint64_t a1)
{
  if (!qword_1EB135CB0)
  {
    sub_1A4234E50(255);
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4234C80(255);
    sub_1A4234B04(255);
    sub_1A423357C(255);
    sub_1A4234A50(255);
    sub_1A3C52C70(255, &qword_1EB120920, 0x1E6978A68);
    sub_1A42335B0(255);
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0, MEMORY[0x1E69C2150]);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135CB0);
    }
  }
}

uint64_t sub_1A4235264@<X0>(id *a1@<X0>, int a2@<W1>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v31 = a2;
  v12 = type metadata accessor for LemonadeSearchOverlayView(0);
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = v13;
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A423357C(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v45 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PhotosSearchResultsGridView(0);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4233AB0(0);
  v38 = v18;
  v36 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v34 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A423396C(0);
  v42 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v39 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42337B4(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v37 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a3 + *(v12 + 60));
  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v26 = v46;
  if (v46)
  {
    v30[11] = [*a3 photoLibrary];
    v30[15] = a5;
    sub_1A4239F14(0);
    sub_1A5247C84();
    v30[10] = v47;
    v43 = a1;
    v30[13] = v14;
    v27 = MEMORY[0x1E697DA80];
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    v30[14] = v24;
    v44 = v26;
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v45);

    sub_1A5247C84();
    LemonadeActiveSearchViewModel.container.getter(&v47);

    v30[9] = sub_1A422FD60();
    v30[8] = v28;
    sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, v27);
    sub_1A5247C84();
    v30[6] = v46[6];

    sub_1A422F9E0(0, &qword_1EB135D18, sub_1A42300FC, v27);
    sub_1A5247C84();
    v30[5] = v46;
    sub_1A5247C84();
    sub_1A3EA1C00();
  }

  return (*(v24 + 56))(a5, 1, 1, v23);
}

double sub_1A4235DE4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1A3C33378(result, a2);
  }

  else
  {
  }

  return v3;
}

void sub_1A4235DF0(uint64_t a1)
{
  if (!qword_1EB135CC8)
  {
    sub_1A3C52C70(255, &unk_1EB126900, 0x1E69DCCD8);
    v1 = sub_1A524BD74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135CC8);
    }
  }
}

void sub_1A4235E58(uint64_t a1)
{
  if (!qword_1EB1271D0)
  {
    sub_1A3C52C70(255, &unk_1EB126900, 0x1E69DCCD8);
    v1 = sub_1A524BD84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1271D0);
    }
  }
}

uint64_t sub_1A4235EC0@<X0>(id *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *(type metadata accessor for LemonadeSearchOverlayView(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v7 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A4235264(a1, a2 & 1, (v7 + v12), v13, a3);
}

uint64_t sub_1A4235FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = *(type metadata accessor for LemonadeSearchOverlayView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  *a3 = sub_1A5249314();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_1A423CA18(0);
  return sub_1A4236044(v3 + v8, a2, v5);
}

uint64_t sub_1A4236044(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  sub_1A3EE1D04(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42362C4(a1, v4, v24);
  if (a3)
  {
    *&v22[0] = sub_1A524B434();
  }

  v9 = sub_1A5248204();
  v19 = v24[6];
  v20[0] = v25[0];
  *(v20 + 10) = *(v25 + 10);
  v15 = v24[2];
  v16 = v24[3];
  v17 = v24[4];
  v18 = v24[5];
  v13 = v24[0];
  v14 = v24[1];
  v21 = v9;
  v10 = *MEMORY[0x1E697E728];
  v11 = sub_1A52486A4();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  sub_1A4234388(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A4233F38(0);
    sub_1A42343D0();
    sub_1A4234388(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    sub_1A524AB84();
    sub_1A3C309BC(v8, sub_1A3EE1D04);
    v22[6] = v19;
    v22[7] = v20[0];
    v22[8] = v20[1];
    v23 = v21;
    v22[2] = v15;
    v22[3] = v16;
    v22[4] = v17;
    v22[5] = v18;
    v22[0] = v13;
    v22[1] = v14;
    return sub_1A3C309BC(v22, sub_1A4233F38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1A42362C4@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5242074();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42308AC(v9);
  v10 = sub_1A5242064();
  (*(v7 + 8))(v9, v6);
  if (v10 & 1) == 0 || (v11 = (a1 + *(type metadata accessor for LemonadeSearchOverlayView(0) + 52)), v12 = *v11, v13 = *(v11 + 1), LOBYTE(v34) = v12, *(&v34 + 1) = v13, sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]), sub_1A524B6A4(), (v32[0]))
  {
    v21[7] = a3;
    if (a2)
    {
      v14 = sub_1A5249574();
    }

    else
    {
      v14 = sub_1A5249584();
    }

    v21[6] = v14;
    v21[5] = sub_1A52492D4();
    sub_1A4236AFC(a2 & 1, &v34);
    v15 = v34;
    v31[0] = *(v35.n128_u32 + 1);
    *(v31 + 3) = v35.n128_u32[1];
    v21[1] = *(&v36 + 1);
    *&v32[0] = v37;
    BYTE8(v32[0]) = BYTE8(v37);
    v16 = v35.n128_u8[0];
    sub_1A423685C(a2 & 1, &v34);
    v30[0] = *(v35.n128_u32 + 1);
    *(v30 + 3) = v35.n128_u32[1];
    v21[0] = *(&v36 + 1);
    *&v22 = v37;
    BYTE8(v22) = BYTE8(v37);
    sub_1A3E75E68(v15, *(&v15 + 1), v16 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A423685C(a2 & 1, v32);
  sub_1A423CAFC(v32);
  v28 = v32[6];
  v29[0] = v33[0];
  *(v29 + 10) = *(v33 + 10);
  v24 = v32[2];
  v25 = v32[3];
  v26 = v32[4];
  v27 = v32[5];
  v22 = v32[0];
  v23 = v32[1];
  sub_1A42340CC(0);
  sub_1A4234208(0);
  sub_1A42345B4();
  sub_1A4234388(&qword_1EB135C48, sub_1A4234208, MEMORY[0x1E6981880]);
  sub_1A5249744();
  v17 = v41[0];
  *(a3 + 96) = v40;
  *(a3 + 112) = v17;
  *(a3 + 122) = *(v41 + 10);
  v18 = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v18;
  v19 = v39;
  *(a3 + 64) = v38;
  *(a3 + 80) = v19;
  result = v35;
  *a3 = v34;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1A423685C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A3C38BD4(0xD000000000000013);
  v29 = v8;
  sub_1A3D5F9DC();
  v9 = sub_1A524A464();
  v11 = v10;
  v13 = v12;
  if (a1)
  {
    sub_1A524A264();
  }

  else
  {
    sub_1A524A0D4();
  }

  sub_1A524A104();

  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  sub_1A524A234();

  (*(v5 + 8))(v7, v4);
  v14 = sub_1A524A3C4();
  v16 = v15;
  v18 = v17;
  v26[0] = v19;

  sub_1A3E04DF4(v9, v11, v13 & 1);

  v20 = (v26[1] + *(type metadata accessor for LemonadeSearchOverlayView(0) + 52));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v28) = *v20;
  v29 = v22;
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v27)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  LOBYTE(v28) = v21;
  v29 = v22;
  sub_1A524B6A4();
  v24 = v27;
  result = swift_getKeyPath();
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v26[0];
  *(a2 + 32) = v23;
  *(a2 + 40) = result;
  *(a2 + 48) = v24;
  *(a2 + 56) = v24 ^ 1;
  return result;
}

uint64_t sub_1A4236AFC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_1A524A204();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LemonadeSearchOverlayView(0);
  v35 = v2;
  v37 = *(v2 + *(v34 + 60));
  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  v9 = sub_1A524B6A4();
  v10 = v36;
  if (v36)
  {
    v11 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x280))(v9);
    v13 = v12;
  }

  else
  {
    v11 = sub_1A3C38BD4(0xD000000000000029);
    v13 = v14;
  }

  *&v37 = v11;
  *(&v37 + 1) = v13;
  sub_1A3D5F9DC();
  v15 = sub_1A524A464();
  v17 = v16;
  v19 = v18;
  if (a1)
  {
    sub_1A524A264();
  }

  else
  {
    sub_1A524A1D4();
  }

  sub_1A524A104();

  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  sub_1A524A234();

  (*(v6 + 8))(v8, v5);
  v20 = sub_1A524A3C4();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1A3E04DF4(v15, v17, v19 & 1);

  v27 = (v35 + *(v34 + 52));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v37) = *v27;
  *(&v37 + 1) = v29;
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v36)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  LOBYTE(v37) = v28;
  *(&v37 + 1) = v29;
  sub_1A524B6A4();
  v31 = v36;
  v32 = (v36 & 1) == 0;
  result = swift_getKeyPath();
  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v30;
  *(a2 + 40) = result;
  *(a2 + 48) = v32;
  *(a2 + 56) = v31;
  return result;
}

uint64_t sub_1A4236E4C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v3 = sub_1A5242074();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v18 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4208E10(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);
  if (sub_1A4230B04())
  {
    v15[4] = v4;
    v15[5] = v3;
    v16 = a2;
    type metadata accessor for LemonadeSearchOverlayView(0);
    sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v11 = sub_1A437125C();

    if (v11)
    {
      v12 = v11;
      sub_1A5247C84();
      v13 = sub_1A4371304();

      v15[1] = LODWORD(v13);
      sub_1A5247C84();
      sub_1A43708CC();
    }

    a2 = v16;
  }

  return (*(v9 + 56))(a2, 1, 1, v8);
}

uint64_t sub_1A4237260@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for LemonadeSearchOverlayView(0);

  return sub_1A4236E4C(a1, a2);
}

double sub_1A42372FC(uint64_t a1)
{
  v2 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for LemonadeSearchOverlayView(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v11) = *v5;
  v12 = v7;
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10 == 1)
  {
    LOBYTE(v11) = v6;
    v12 = v7;
    v10 = 0;
    sub_1A524B6B4();
  }

  else
  {
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchText.setter([objc_allocWithZone(MEMORY[0x1E696AAB0]) init]);

    sub_1A5247C84();
    sub_1A5242034();
    sub_1A3C9C5D4(v4);
  }

  return result;
}

uint64_t sub_1A42374C0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadeSearchOverlayView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1A4237534()
{
  type metadata accessor for LemonadeSearchOverlayView(0);
  v0 = [objc_opt_self() sharedSession];
  [v0 reportInitialSuggestionSelected];

  sub_1A524BD24();
  sub_1A52483D4();

  return result;
}

void sub_1A4237678()
{
  v0 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A3CB2058();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for LemonadeSearchOverlayView(0);
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v10[3] = sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    v10[4] = &protocol witness table for PHAssetCollection;
    v10[0] = v4;
    v5 = v4;
    LemonadeActiveSearchViewModel.container.setter(v10);

    sub_1A5247C84();
    sub_1A5242034();
    sub_1A3C9C5D4(v2);
  }

  v6 = sub_1A3FAE428();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for LemonadeSearchOverlayView(0);
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v8 = v7;
    LemonadeActiveSearchViewModel.searchText.setter(v8);

    sub_1A5247C84();
    sub_1A5242034();
    sub_1A3C9C5D4(v2);
  }
}

void sub_1A42378E4(double a1)
{
  v1 = sub_1A52436F4();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4230DBC();
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v1[8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if (!(*(v10 + 48))(v2 + v7, 1, v8))
    {
      (*(v10 + 8))(v2 + v7, v9);
    }
  }

  else
  {
  }

  sub_1A4235DE4(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16));

  v11 = v2 + v1[17];
  sub_1A4235DF0(0);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A4235E58(0);

  v13 = v2 + v1[18];
  v14 = MEMORY[0x1E6981E90];
  sub_1A422F9E0(0, &qword_1EB135CD0, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  v16 = MEMORY[0x1E6981E98];
  sub_1A422F9E0(0, &qword_1EB127230, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E98]);

  v17 = v2 + v1[19];
  sub_1A422F9E0(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, v14);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A422F9E0(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, v16);

  v19 = v2 + v1[20];
  sub_1A422F9E0(0, &qword_1EB135CE0, sub_1A42300FC, v14);
  (*(*(v20 - 8) + 8))(v19, v20);
  sub_1A422F9E0(0, &qword_1EB127270, sub_1A42300FC, v16);

  return swift_deallocObject();
}

void sub_1A4238090()
{
  type metadata accessor for LemonadeSearchOverlayView(0);

  sub_1A42378E4(v0);
}

uint64_t sub_1A423811C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1A52436F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25E8]), v8 = sub_1A524C4A4(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v5 + 16;
    v13 = *(v5 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v4);
      sub_1A4234388(&qword_1EB135D70, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25F0]);
      v16 = sub_1A524C594();
      (*v15)(v7, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1A4238334()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0) - 8;
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = MEMORY[0x1E697DA80];
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v4 = *v2;
  v5 = *(v2 + 16);
  v6 = sub_1A3C30368();
  v7 = sub_1A3C30368();
  sub_1A3EA41E4(v4, v5, v6 & 1, v7 & 1);

  sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, v3);
  sub_1A5247C84();
  v8 = [v4 photoLibrary];
  sub_1A4371C4C(v8);

  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10)
  {
  }

  else
  {
    type metadata accessor for PhotosSearchCollectionSectionProvider(0, v9);
    PhotosSearchCollectionSectionProvider.__allocating_init(photoLibrary:)([v4 photoLibrary]);
    sub_1A524B6B4();
  }
}

void sub_1A4238540()
{
  sub_1A423357C(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for LemonadeSearchOverlayView(0);
  v42 = *(v0 + *(v13 + 60));
  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v40)
  {
    v37 = v3;
    v38 = v13;
    v39 = v40;
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v12);

    v14 = type metadata accessor for PhotosSearchResults(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = v15(v12, 1, v14);
    v17 = sub_1A423357C;
    if (v16 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = *&v12[*(v14 + 40)];
      v18 = v36;
      v17 = type metadata accessor for PhotosSearchResults;
    }

    sub_1A3C309BC(v12, v17);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v9);

    if (v15(v9, 1, v14) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C309BC(v9, sub_1A423357C);
    v19 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v6);

    v20 = v15(v6, 1, v14);
    if (v20 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C309BC(v6, sub_1A423357C);
    v21 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    sub_1A5247C84();
    v22 = v37;
    LemonadeActiveSearchViewModel.searchResults.getter(v37);

    v23 = v15(v22, 1, v14);
    if (v23 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C309BC(v22, sub_1A423357C);
    v24 = sub_1A3DAF0C0(MEMORY[0x1E69E7CC0]);
    v25 = v38;
    v26 = (v0 + *(v38 + 48));
    v27 = *v26;
    v28 = *(v26 + 1);
    LOBYTE(v42) = v27;
    *(&v42 + 1) = v28;
    sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v29 = v40;
    v30 = (v0 + *(v25 + 64));
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = v30[2];
    *&v42 = v31;
    BYTE8(v42) = v32;
    v43 = v33;
    sub_1A423418C(0, &qword_1EB121C88, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v34 = v39;
    v35 = v36;
    (*((*MEMORY[0x1E69E7D40] & *v39) + 0x278))(v36, v19, v21, v24, v29, v41);
  }
}

void sub_1A4238B00()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0);
  LOBYTE(v4) = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 52));
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v3 & 1) == 0)
  {
    sub_1A4239F14(0);
    sub_1A5247C84();
    v2 = [v4 popToRootViewControllerAnimated_];
  }
}

void sub_1A4238C08()
{
  if (!qword_1EB135CE8)
  {
    sub_1A524D6B4();
    sub_1A4238ED4(255);
    sub_1A4234388(&qword_1EB133870, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1A4235028(255);
    sub_1A4234E50(255);
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4234C80(255);
    sub_1A4234B04(255);
    sub_1A423357C(255);
    sub_1A4234A50(255);
    sub_1A3C52C70(255, &qword_1EB120920, 0x1E6978A68);
    sub_1A42335B0(255);
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0, MEMORY[0x1E69C2150]);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248A54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135CE8);
    }
  }
}

void sub_1A4238ED4(uint64_t a1)
{
  if (!qword_1EB135CF0)
  {
    sub_1A4235028(255);
    sub_1A4234E50(255);
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4234C80(255);
    sub_1A4234B04(255);
    sub_1A423357C(255);
    sub_1A4234A50(255);
    sub_1A3C52C70(255, &qword_1EB120920, 0x1E6978A68);
    sub_1A42335B0(255);
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0, MEMORY[0x1E69C2150]);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135CF0);
    }
  }
}

void sub_1A4239134(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A423CA80(a1 + *(v13 + 40), v9, &qword_1EB128A80, sub_1A3D63A58, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A423B168(v9, v12, sub_1A3D63A58);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A3D63A8C(0);
  if ((*(*(v16 - 8) + 48))(v12, 1, v16) != 1)
  {
    sub_1A5245C94();
  }

  v17 = sub_1A3C309BC(v12, sub_1A3D63A58);
  v18 = *(a1 + 24);
  if (v18)
  {
    v18(v17);
  }
}

void sub_1A42394F4()
{
  sub_1A422F9E0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1A524CC54();
  v4 = sub_1A524CC44();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_1A3D4D930(0, 0, v2, &unk_1A53277F0, v5);

  v7 = sub_1A422FA44();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 px_splitViewController];

    if (v9)
    {
      [v9 setPresentsWithGesture_];
      if ([v9 isSidebarVisible])
      {
        [v9 toggleSidebarVisibilityAnimated];
      }
    }
  }
}

uint64_t objectdestroy_30Tm_0()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v1[8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if (!(*(v10 + 48))(v2 + v7, 1, v8))
    {
      (*(v10 + 8))(v2 + v7, v9);
    }
  }

  else
  {
  }

  sub_1A4235DE4(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16));

  v11 = v2 + v1[17];
  sub_1A4235DF0(0);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A4235E58(0);

  v13 = v2 + v1[18];
  v14 = MEMORY[0x1E6981E90];
  sub_1A422F9E0(0, &qword_1EB135CD0, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  v16 = MEMORY[0x1E6981E98];
  sub_1A422F9E0(0, &qword_1EB127230, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E98]);

  v17 = v2 + v1[19];
  sub_1A422F9E0(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, v14);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A422F9E0(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, v16);

  v19 = v2 + v1[20];
  sub_1A422F9E0(0, &qword_1EB135CE0, sub_1A42300FC, v14);
  (*(*(v20 - 8) + 8))(v19, v20);
  sub_1A422F9E0(0, &qword_1EB127270, sub_1A42300FC, v16);

  return swift_deallocObject();
}

uint64_t sub_1A4239C48()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4239CDC, v2, v1);
}

uint64_t sub_1A4239CDC()
{

  v1.n128_f64[0] = sub_1A4A5597C(0);
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_1A4239D44(uint64_t a1, void *a2)
{
  v3 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.isEditing.setter(0);

  sub_1A5247C84();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1A5243464();
  LemonadeActiveSearchViewModel.searchText.setter(v6);

  sub_1A5247C84();
  sub_1A5242034();
  sub_1A3C9C5D4(v5);

  return result;
}

void sub_1A4239F14(uint64_t a1)
{
  if (!qword_1EB135D08)
  {
    sub_1A3C52C70(255, &unk_1EB126900, 0x1E69DCCD8);
    v1 = sub_1A5247CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135D08);
    }
  }
}

void sub_1A4239F90(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB120920, 0x1E6978A68);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeSuggestedSearchQueryFetcher(319);
    if (v2 <= 0x3F)
    {
      sub_1A422F9E0(319, &qword_1EB125650, type metadata accessor for LemonadeActiveSearchUpdater, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A422F9E0(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A422F9E0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A422F9E0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A422F9E0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A422F9E0(319, &unk_1EB1246D0, sub_1A423A3CC, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1A423C99C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A423C99C(319, &qword_1EB121C08, MEMORY[0x1E6980D50], MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1A422F9E0(319, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
                      {
                        sub_1A423418C(319, &qword_1EB121C88, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                        if (v12 <= 0x3F)
                        {
                          sub_1A4239F14(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1A422F9E0(319, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
                            if (v14 <= 0x3F)
                            {
                              sub_1A422F9E0(319, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
                              if (v15 <= 0x3F)
                              {
                                sub_1A422F9E0(319, &qword_1EB135D18, sub_1A42300FC, MEMORY[0x1E697DA80]);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_1A423A400()
{
  result = qword_1EB120BC8;
  if (!qword_1EB120BC8)
  {
    sub_1A3C52C70(255, &qword_1EB126B50, &off_1E7721490);
    sub_1A3C52C70(255, &qword_1EB120760, &off_1E77214B0);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1EB120BC8);
  }

  return result;
}

unint64_t sub_1A423A494()
{
  result = qword_1EB135D20;
  if (!qword_1EB135D20)
  {
    sub_1A4234048(255, &qword_1EB135D00, sub_1A4239C20, type metadata accessor for LemonadeAnalyticsViewTimeTracker, MEMORY[0x1E697E830]);
    sub_1A423499C(&qword_1EB135D28, sub_1A4239C20, sub_1A423A5C0);
    sub_1A4234388(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker, &unk_1A5362FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135D20);
  }

  return result;
}

unint64_t sub_1A423A5F4()
{
  result = qword_1EB1879C0[0];
  if (!qword_1EB1879C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1879C0);
  }

  return result;
}

uint64_t sub_1A423A674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = type metadata accessor for LemonadeSearchRootOverlayView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A423AB04(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234048(0, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  sub_1A423ADB4(0);
  v17 = *(v16 - 8);
  v33 = v16;
  v34 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = LemonadeSearchViewModel.searchIsActive.getter();
  sub_1A423AB90(0);
  (*(*(v21 - 8) + 16))(v11, a1, v21);
  v11[*(v9 + 36)] = (v20 & 1) == 0;
  LemonadeSearchViewModel.searchIsActive.getter();
  sub_1A423499C(&qword_1EB128798, sub_1A423AB04, sub_1A423B058);
  sub_1A524AAE4();
  sub_1A3C309BC(v11, sub_1A423AB04);
  v22 = sub_1A524BC74();
  v24 = v23;
  v25 = &v15[*(v13 + 36)];
  *v7 = a2;
  v26 = *(v5 + 20);
  *(v7 + v26) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v27 = v7 + *(v5 + 24);
  *v27 = swift_getKeyPath();
  *(v27 + 1) = 0;
  v27[16] = 0;
  sub_1A423AD5C();
  sub_1A524AF04();
  sub_1A3C309BC(v7, type metadata accessor for LemonadeSearchRootOverlayView);
  sub_1A423AC34(0);
  v29 = &v25[*(v28 + 36)];
  *v29 = v22;
  v29[1] = v24;
  v30 = sub_1A423AE7C();
  sub_1A524AE44();
  sub_1A3CE6F7C(v15);
  v38 = LemonadeSearchViewModel.searchIsActive.getter() & 1;

  v36 = v13;
  v37 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v33;
  sub_1A524B154();

  return (*(v34 + 8))(v19, v31);
}

void sub_1A423AB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A423AB90(uint64_t a1)
{
  if (!qword_1EB127B98)
  {
    sub_1A423A5F4();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127B98);
    }
  }
}

void sub_1A423AC34(uint64_t a1)
{
  if (!qword_1EB135D40)
  {
    sub_1A423ACD8(255);
    type metadata accessor for LemonadeSearchRootOverlayView(255);
    sub_1A423AD5C();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135D40);
    }
  }
}

void sub_1A423ACD8(uint64_t a1)
{
  if (!qword_1EB135D48)
  {
    type metadata accessor for LemonadeSearchRootOverlayView(255);
    sub_1A423AD5C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135D48);
    }
  }
}

unint64_t sub_1A423AD5C()
{
  result = qword_1EB17DEC0[0];
  if (!qword_1EB17DEC0[0])
  {
    type metadata accessor for LemonadeSearchRootOverlayView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17DEC0);
  }

  return result;
}

void sub_1A423ADB4(uint64_t a1)
{
  if (!qword_1EB135D50)
  {
    sub_1A4234048(255, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
    sub_1A423AE7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135D50);
    }
  }
}

unint64_t sub_1A423AE7C()
{
  result = qword_1EB135D58;
  if (!qword_1EB135D58)
  {
    sub_1A4234048(255, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
    sub_1A423AF70();
    sub_1A4234388(&qword_1EB135D60, sub_1A423AC34, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135D58);
  }

  return result;
}

unint64_t sub_1A423AF70()
{
  result = qword_1EB128440;
  if (!qword_1EB128440)
  {
    sub_1A423ABEC(255);
    sub_1A423499C(&qword_1EB128798, sub_1A423AB04, sub_1A423B058);
    sub_1A4234388(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128440);
  }

  return result;
}

double sub_1A423B08C()
{
  v0 = LemonadeSearchViewModel.searchIsActive.getter();
  LemonadeSearchViewModel.suggestedQueryFetcher.getter();
  if (v0)
  {
    LemonadeSuggestedSearchQueryFetcher.boostBackgroundTasks()();
  }

  else
  {
    LemonadeSuggestedSearchQueryFetcher.resetInitialSuggestions()();
  }

  return result;
}

uint64_t sub_1A423B0DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A4239C48();
}

uint64_t sub_1A423B168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A423B1D0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_1A5242D14();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v46 - v6;
  v49 = type metadata accessor for LemonadeSearchRootOverlayView(0);
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v10 = type metadata accessor for LemonadeSearchOverlayView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A423D038(0);
  v14 = v13;
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  v17 = *v1;
  if (LemonadeSearchViewModel.searchIsActive.getter())
  {
    v48 = LemonadeSearchViewModel.searchQueryManager.getter();
    v18 = LemonadeSearchViewModel.suggestedQueryFetcher.getter();
    v46[1] = v16;
    v47 = v18;
    v19 = *(v17 + 16);
    sub_1A423D0EC(v16, v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchRootOverlayView);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v21 = swift_allocObject();
    sub_1A423B168(v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for LemonadeSearchRootOverlayView);
    v22 = v10[8];
    *(v12 + v22) = swift_getKeyPath();
    v23 = MEMORY[0x1E697DCB8];
    sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v24 = v10[9];
    *(v12 + v24) = swift_getKeyPath();
    sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v23);
    swift_storeEnumTagMultiPayload();
    v25 = v10[10];
    *(v12 + v25) = swift_getKeyPath();
    sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, v23);
    swift_storeEnumTagMultiPayload();
    v26 = v12 + v10[11];
    *v26 = swift_getKeyPath();
    *(v26 + 1) = 0;
    v26[16] = 0;
    v27 = v12 + v10[12];
    LOBYTE(v55) = 0;

    sub_1A524B694();
    v28 = *(&v57 + 1);
    *v27 = v57;
    *(v27 + 1) = v28;
    v29 = v12 + v10[13];
    LOBYTE(v55) = 0;
    sub_1A524B694();
    v30 = *(&v57 + 1);
    *v29 = v57;
    *(v29 + 1) = v30;
    v31 = v12 + v10[14];
    LOBYTE(v55) = sub_1A524A0C4();
    sub_1A524B694();
    v32 = *(&v57 + 1);
    *v31 = v57;
    *(v31 + 1) = v32;
    v33 = v10[15];
    v55 = 0;
    sub_1A4230024(0);
    sub_1A524B694();
    *(v12 + v33) = v57;
    v34 = v12 + v10[16];
    v55 = 0;
    v56 = 1;
    sub_1A423C99C(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A524B694();
    v35 = BYTE8(v57);
    v36 = v58;
    *v34 = v57;
    v34[8] = v35;
    *(v34 + 2) = v36;
    sub_1A3C52C70(0, &unk_1EB126900, 0x1E69DCCD8);
    sub_1A5247C74();
    type metadata accessor for LemonadeSearchIndexingStatus(0);
    sub_1A5247C74();
    type metadata accessor for LemonadeActiveSearchViewModel(0);
    sub_1A5247C74();
    sub_1A42300FC(0);
    sub_1A5247C74();
    v37 = v47;
    *v12 = v48;
    v12[1] = v37;
    v12[2] = v19;
    v12[3] = sub_1A423D154;
    v12[4] = v21;
    PXPreferencesEnsureDefaultEnhancedVisualSearch();
    sub_1A3D61808(v7);
    v38 = v51;
    v39 = v52;
    (*(v51 + 104))(v4, *MEMORY[0x1E69C2200], v52);
    sub_1A5242D04();
    v40 = *(v38 + 8);
    v40(v4, v39);
    v40(v7, v39);
    sub_1A4234388(&qword_1EB129D38, type metadata accessor for LemonadeSearchOverlayView, &protocol conformance descriptor for LemonadeSearchOverlayView);
    v41 = v50;
    sub_1A524B214();
    sub_1A3C309BC(v12, type metadata accessor for LemonadeSearchOverlayView);
    v42 = v53;
    (*(v54 + 32))(v53, v41, v14);
    return (*(v54 + 56))(v42, 0, 1, v14);
  }

  else
  {
    v44 = v53;
    v45 = *(v54 + 56);

    return v45(v44, 1, 1, v14);
  }
}

uint64_t sub_1A423B928(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v7 = sub_1A52436F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25E8]);
  v35 = a2;
  v12 = sub_1A524C4A4();
  v13 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v8;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v34 + 48) + v19 * v15, v7);
      sub_1A4234388(&qword_1EB135D70, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25F0]);
      v22 = sub_1A524C594();
      v23 = *v20;
      (*v20)(v10, v7);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v4 = v30;
        a1 = v31;
        v8 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v7);
    v21(v31, *(v34 + 48) + v19 * v15, v7);
    return 0;
  }

  else
  {
    v16 = *(v8 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v35;
    v26 = (v16)(v10, v35, v7);
    v36 = *v4;
    sub_1A423BF58(v10, v15, isUniquelyReferenced_nonNull_native, v26);
    *v4 = v36;
    (*(v8 + 32))(a1, v25, v7);
    return 1;
  }
}

void sub_1A423BC08(uint64_t a1, double a2)
{
  v3 = v2;
  v39 = sub_1A52436F4();
  v4 = *(v39 - 8);
  v5 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A423CCD4(0, v5);
  v8 = sub_1A524E3B4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v2;
    v34 = v7;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v37 = v4 + 32;
    v16 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v7 + 48) + *(v4 + 72) * (v18 | (v10 << 6));
      v22 = *(v4 + 32);
      v35 = *(v4 + 72);
      v36 = v22;
      v22(v38, v21, v39);
      sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25E8]);
      v23 = sub_1A524C4A4();
      v24 = -1 << *(v9 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v36(*(v9 + 48) + v17 * v35, v38, v39);
      ++*(v9 + 16);
      v7 = v34;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero(v11, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    v3 = v33;
    *(v7 + 16) = 0;
  }

  *v3 = v9;
}

uint64_t sub_1A423BF58(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v33 = a1;
  v7 = sub_1A52436F4();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v30 = v4;
  v31 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A423BC08(v12 + 1, v9.n128_f64[0]);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1A423C1FC(v9.n128_f64[0]);
      goto LABEL_12;
    }

    sub_1A423C424(v12 + 1, v9.n128_f64[0]);
  }

  v14 = *v4;
  sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25E8]);
  v15 = sub_1A524C4A4();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v7);
      sub_1A4234388(&qword_1EB135D70, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25F0]);
      v23 = sub_1A524C594();
      (*(v20 - 8))(v11, v7);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v7, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void sub_1A423C1FC(double a1)
{
  v2 = v1;
  v3 = sub_1A52436F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A423CCD4(0, v5);
  v8 = *v1;
  v9 = sub_1A524E3A4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v2;
    v11 = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 56 + 8 * v12)
    {
      memmove(v11, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v4 + 32;
    v26 = v4 + 16;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = *(v4 + 72) * (v19 | (v14 << 6));
      (*(v4 + 16))(v7, *(v8 + 48) + v22, v3);
      (*(v4 + 32))(*(v10 + 48) + v22, v7, v3);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v2 = v24;
        goto LABEL_21;
      }

      v21 = *(v8 + 56 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v10;
  }
}

void sub_1A423C424(uint64_t a1, double a2)
{
  v3 = v2;
  v36 = sub_1A52436F4();
  v4 = *(v36 - 8);
  v5 = MEMORY[0x1EEE9AC00](v36);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1A423CCD4(0, v5);
  v9 = sub_1A524E3B4();
  v10 = v8;
  if (*(v8 + 16))
  {
    v31 = v2;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v34 = v4 + 16;
    v35 = v4;
    v17 = v9 + 56;
    v32 = (v4 + 32);
    v33 = v10;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v35 + 72);
      (*(v35 + 16))(v7, *(v10 + 48) + v22 * (v19 | (v11 << 6)), v36);
      sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0], MEMORY[0x1E69C25E8]);
      v23 = sub_1A524C4A4();
      v24 = -1 << *(v9 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      (*v32)(*(v9 + 48) + v18 * v22, v7, v36);
      ++*(v9 + 16);
      v10 = v33;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v31;
        goto LABEL_26;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v9;
  }
}

unint64_t sub_1A423C734(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1A524C8E4();
  }

  __break(1u);
  return result;
}

void *sub_1A423C780(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  result = sub_1A423C7A0(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

void *sub_1A423C7A0(void *result, int64_t a2, char a3, void *a4, double a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A422F9E0(0, &unk_1EB135D90, sub_1A423CD68, MEMORY[0x1E69E6F90]);
  sub_1A423CD68(0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_1A423CD68(0);
  v17 = *(v16 - 8);
  if (v6)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}