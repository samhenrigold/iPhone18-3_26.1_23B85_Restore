uint64_t sub_24830DE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_248381210();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_24814BF98(&unk_27EE91CE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v22 = sub_248383910();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_24830E098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*((*MEMORY[0x277D85000] & *v2) + 0x90))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938E0, &unk_2483A2CC0);
  v3 = sub_248383B00();

  [v1 automakerOverlayStateMonitor:v2 didUpdateOverlays:v3];
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_24830E1B4(void *a1, int64_t a2, char a3)
{
  result = sub_2482A842C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_24830E1D4(void *a1)
{
  if (a1)
  {
    v10 = a1;
    v3 = sub_248383D90();
    v4 = *sub_24827C280();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = v4;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v6 = 136315394;
      *(v6 + 4) = sub_24814A378(0xD000000000000022, 0x80000002483AEC60, &v12);
      *(v6 + 12) = 2112;
      *(v6 + 14) = v10;
      *v7 = a1;
      v9 = v10;
      _os_log_impl(&dword_248146000, v5, v3, "%s currentCar=%@", v6, 0x16u);
      sub_24827B684(v7);
      MEMORY[0x24C1CD5F0](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1CD5F0](v8, -1, -1);
      MEMORY[0x24C1CD5F0](v6, -1, -1);
    }

    [v10 registerObserver_];
    [v1 carDidUpdateAccessories_];
  }
}

void _s9DashBoard30DBAutomakerOverlayStateMonitorC23carDidUpdateAccessoriesyySo6CAFCarCF_0(__n128 a1)
{
  v2 = v1;
  v3 = sub_248383D90();
  v4 = *sub_24827C280();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24814A378(0xD00000000000001BLL, 0x80000002483AEC20, &v21);
    *(v6 + 12) = 2112;
    v9 = [*(v2 + OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_carManager) currentCar];
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_248146000, v5, v3, "%s currentCar=%@", v6, 0x16u);
    sub_24827B684(v7);
    MEMORY[0x24C1CD5F0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1CD5F0](v8, -1, -1);
    MEMORY[0x24C1CD5F0](v6, -1, -1);
  }

  v10 = sub_24830C3D8();
  v11 = v10;
  v21 = MEMORY[0x277D84F90];
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!(v10 >> 62))
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_23:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v13 = sub_248384360();
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_5:
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v16 = v14;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1CBA50](v16, v11);
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *(v12 + 16))
        {
          goto LABEL_21;
        }

        swift_unknownObjectRetain();
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v16;
      if (v14 == v13)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x24C1CB0D0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();
    v15 = v21;
  }

  while (v14 != v13);
LABEL_24:

  if (v15 >> 62)
  {
    v17 = sub_248384360();
    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_33;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x24C1CBA50](i, v15);
    }

    else
    {
      v19 = *(v15 + 8 * i + 32);
    }

    v20 = v19;
    [v19 registerObserver_];
  }

LABEL_33:

  sub_24830DA44();
}

void sub_24830E6D8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x90))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938E0, &unk_2483A2CC0);
    v4 = sub_248383B00();

    [a1 automakerOverlayStateMonitor:v3 didUpdateOverlays:v4];
  }
}

id DBDockGradientBlurBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v67.receiver = v4;
  v67.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v67, sel_initWithFrame_, a1, a2, a3, a4);
  v65 = objc_opt_self();
  v66 = type metadata accessor for DBDockGradientBlurBackgroundView.GradientBlurView();
  v10 = objc_allocWithZone(v66);
  v11 = sub_24830F1DC(a1, a2, a3, a4, 9.0);
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v11 layer];
  [v12 setAllowsHitTesting_];

  [v9 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24839CCB0;
  v14 = [v11 leadingAnchor];
  v15 = [v9 &selRef_length + 1];
  v16 = [v14 constraintEqualToAnchor_];

  *(v13 + 32) = v16;
  v17 = [v11 trailingAnchor];
  v18 = [v9 &selRef_systemImageNamed_withConfiguration_ + 4];
  v19 = [v17 &selRef_exportIconLayoutState + 5];

  *(v13 + 40) = v19;
  v20 = [v11 topAnchor];
  v21 = [v9 &selRef_supportsWirelessCarPlay];
  v22 = [v20 &selRef_exportIconLayoutState + 5];

  *(v13 + 48) = v22;
  v23 = [v11 heightAnchor];

  v24 = [v9 &selRef_host + 2];
  v25 = [v23 constraintEqualToAnchor:v24 multiplier:0.333333333];

  *(v13 + 56) = v25;
  sub_24814FB28(0, &qword_27EE8FE90, 0x277CCAAD0);
  v26 = sub_248383B00();

  [v65 activateConstraints_];

  v27 = objc_allocWithZone(v66);
  v28 = sub_24830F1DC(a1, a2, a3, a4, 3.0);
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v28 layer];
  [v29 setAllowsHitTesting_];

  [v9 addSubview_];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_24839CCB0;
  v31 = [v28 leadingAnchor];
  v32 = [v9 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [v28 trailingAnchor];
  v35 = [v9 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v30 + 40) = v36;
  v37 = [v28 topAnchor];
  v38 = [v9 topAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v30 + 48) = v39;
  v40 = [v28 heightAnchor];

  v41 = [v9 heightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 multiplier:0.666666667];

  *(v30 + 56) = v42;
  v43 = sub_248383B00();

  [v65 activateConstraints_];

  v44 = objc_allocWithZone(v66);
  v45 = sub_24830F1DC(a1, a2, a3, a4, 1.5);
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = [v45 layer];
  [v46 setAllowsHitTesting_];

  [v9 addSubview_];
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_24839CCB0;
  v48 = [v45 leadingAnchor];
  v49 = [v9 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v47 + 32) = v50;
  v51 = [v45 trailingAnchor];
  v52 = [v9 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v47 + 40) = v53;
  v54 = [v45 topAnchor];
  v55 = [v9 topAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v47 + 48) = v56;
  v57 = [v45 heightAnchor];

  v58 = [v9 heightAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 multiplier:1.0];

  *(v47 + 56) = v59;
  v60 = sub_248383B00();

  [v65 activateConstraints_];

  v61 = v9;
  v62 = [v61 layer];
  [v62 setAllowsHitTesting_];

  v63 = [objc_opt_self() clearColor];
  [v61 setBackgroundColor_];

  return v61;
}

id sub_24830F1DC(double a1, double a2, double a3, double a4, double a5)
{
  v53.receiver = v5;
  v53.super_class = swift_getObjectType();
  v11 = objc_msgSendSuper2(&v53, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_allocWithZone(MEMORY[0x277CD9EB0]);
  v13 = v11;
  v14 = [v12 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0, &qword_2483A01A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24839F1A0;
  v16 = objc_opt_self();
  v17 = [v16 blackColor];
  v18 = [v17 CGColor];

  type metadata accessor for CGColor();
  v20 = v19;
  *(v15 + 56) = v19;
  *(v15 + 32) = v18;
  v21 = [v16 blackColor];
  v22 = [v21 CGColor];

  *(v15 + 88) = v20;
  *(v15 + 64) = v22;
  v23 = [v16 blackColor];
  v24 = [v23 colorWithAlphaComponent_];

  v25 = [v24 CGColor];
  *(v15 + 120) = v20;
  *(v15 + 96) = v25;
  v26 = [v16 clearColor];
  v27 = [v26 CGColor];

  *(v15 + 152) = v20;
  *(v15 + 128) = v27;
  v28 = sub_248383B00();

  [v14 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_24839D8C0;
  sub_24814FB28(0, &qword_27EE90740, 0x277CCABB0);
  *(v29 + 32) = sub_248384010();
  *(v29 + 40) = sub_248384000();
  *(v29 + 48) = sub_248384010();
  v30 = sub_248383B00();

  [v14 setLocations_];

  [v14 setStartPoint_];
  [v14 setEndPoint_];
  v31 = [objc_opt_self() effectWithBlurRadius_];
  v32 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v32 setAllowsDithering_];
  v33 = v32;
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = v13;
  [v34 addSubview_];
  v35 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24839CCB0;
  v37 = [v33 leadingAnchor];
  v38 = [v34 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v36 + 32) = v39;
  v40 = [v33 trailingAnchor];
  v41 = [v34 trailingAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v36 + 40) = v42;
  v43 = [v33 topAnchor];
  v44 = [v34 topAnchor];

  v45 = [v43 constraintEqualToAnchor_];
  *(v36 + 48) = v45;
  v46 = [v33 bottomAnchor];

  v47 = [v34 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v36 + 56) = v48;
  sub_24814FB28(0, &qword_27EE8FE90, 0x277CCAAD0);
  v49 = sub_248383B00();

  [v35 activateConstraints_];

  v50 = [v34 layer];
  [v50 setMask_];

  v51 = [v16 clearColor];
  [v34 setBackgroundColor_];

  return v34;
}

void sub_24830F90C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [v0 layer];
  v2 = [v1 mask];

  if (v2)
  {
    [v0 bounds];
    [v2 setFrame_];
  }
}

id DBAudioWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAudioWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBCameraOverlayController.__allocating_init(windowScene:windowFrame:cameraScene:environment:)(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  *&v15[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car] = 0;
  *&v15[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera] = 0;
  *&v15[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraWindow] = 0;
  *&v15[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraViewController] = 0;
  *&v15[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowScene] = a1;
  v16 = &v15[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowFrame];
  *v16 = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  *&v15[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraScene] = a2;
  swift_unknownObjectUnownedInit();
  v21.receiver = v15;
  v21.super_class = v8;
  v17 = a1;
  v18 = a2;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  swift_unknownObjectRelease();
  return v19;
}

id DBCameraOverlayController.init(windowScene:windowFrame:cameraScene:environment:)(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v9 = sub_24831118C(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v9;
}

void *DBCameraOverlayController.car.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBCameraOverlayController.car.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    v7 = v4;
LABEL_9:
    [v7 unregisterObserver_];
    v10 = *(v1 + v3);
    if (!v10)
    {
      v11 = 0;
      goto LABEL_12;
    }

LABEL_10:
    [v10 registerObserver_];
    v11 = *(v1 + v3);
LABEL_12:
    v12 = v11;
    sub_2483101F0(v11);

    v7 = a1;
    goto LABEL_13;
  }

  if (!v4)
  {
    v9 = a1;
    v10 = a1;
    goto LABEL_10;
  }

  v5 = v1;
  sub_24814FB28(0, &qword_27EE92E80, 0x277CF8398);
  v6 = a1;
  v7 = v4;
  v8 = sub_248384030();

  if ((v8 & 1) == 0)
  {
    v1 = v5;
    goto LABEL_9;
  }

LABEL_13:
}

void sub_2483100E4(id a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  sub_24814FB28(0, &qword_27EE92E80, 0x277CF8398);
  v5 = v4;
  a1 = a1;
  v6 = sub_248384030();

  if ((v6 & 1) == 0)
  {
LABEL_6:
    [a1 unregisterObserver_];
    v4 = *(v1 + v3);
    if (!v4)
    {
      v7 = 0;
      goto LABEL_9;
    }

LABEL_7:
    [v4 registerObserver_];
    v7 = *(v1 + v3);
LABEL_9:
    v8 = v7;
    sub_2483101F0(v7);
  }
}

void sub_2483101F0(void *a1)
{
  v3 = sub_248383DC0();
  v4 = sub_24827BE88();
  v5 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_24839C7F0;
  if (a1)
  {
    v41 = sub_24814FB28(0, &qword_27EE92E80, 0x277CF8398);
    v42 = sub_2483112D0(&qword_27EE93A30, &qword_27EE92E80, 0x277CF8398);
    *&v40 = a1;
    sub_24814F6F4(&v40, v7 + 32);
  }

  else
  {
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2482970D8();
    *(v7 + 32) = 0x296C6C756E28;
    *(v7 + 40) = 0xE600000000000000;
  }

  v8 = v5;
  v9 = a1;
  sub_248382A40(v3, &dword_248146000, v8, "[DBCameraOverlayController] Updating car %@", 43, 2, v7);

  v38 = sub_248383DC0();
  v39 = v4;
  v10 = *v4;
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_24839CCA0;
  v13 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera;
  v14 = *&v1[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera];
  if (v14)
  {
    v41 = sub_24814FB28(0, &qword_27EE939A0, 0x277CF8390);
    v42 = sub_2483112D0(&unk_27EE939A8, &qword_27EE939A0, 0x277CF8390);
    *&v40 = v14;
    sub_24814F6F4(&v40, (v12 + 4));
  }

  else
  {
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2482970D8();
    v12[4] = 0x296C6C756E28;
    v12[5] = 0xE600000000000000;
  }

  v15 = v14;
  if (a1)
  {
    v16 = v10;
    v17 = [v9 automakerExteriorCamera];
    if (v17)
    {
      v18 = v17;
      v19 = v9;
      v20 = [v17 cameraGeneral];

      v41 = sub_24814FB28(0, &qword_27EE939A0, 0x277CF8390);
      v42 = sub_2483112D0(&unk_27EE939A8, &qword_27EE939A0, 0x277CF8390);
      *&v40 = v20;
      v9 = v19;
      sub_24814F6F4(&v40, (v12 + 9));
      goto LABEL_12;
    }
  }

  else
  {
    v21 = v10;
  }

  v12[12] = MEMORY[0x277D837D0];
  v12[13] = sub_2482970D8();
  v12[9] = 0x296C6C756E28;
  v12[10] = 0xE600000000000000;
LABEL_12:
  sub_248382A40(v38, &dword_248146000, v10, "[DBCameraOverlayController] Previous camera: %@, new camera: %@", 63, 2, v12, 1, 2);

  v22 = *&v1[v13];
  if (v22)
  {
    [v22 unregisterObserver_];
  }

  if (a1 && (v23 = [v9 automakerExteriorCamera]) != 0)
  {
    v24 = v23;
    v25 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera;
    if (!*&v1[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera])
    {
      v26 = [v23 cameraGeneral];
      v27 = *&v1[v25];
      *&v1[v25] = v26;
      v28 = v26;

      if (v28)
      {
        [v28 registerObserver_];
      }

      v29 = *&v1[v25];
      if (v29)
      {
        v30 = v29;
        [v1 cameraGeneralService:v30 didUpdateOn:{objc_msgSend(v30, "on")}];
      }
    }
  }

  else
  {
    v31 = *&v1[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraWindow];
    if (!v31)
    {
      return;
    }

    v32 = v31;
    v33 = sub_248383DC0();
    v34 = *v39;
    v35 = swift_allocObject();
    *(v35 + 16) = v37;
    *(v35 + 56) = type metadata accessor for DBCameraWindow();
    *(v35 + 64) = sub_248311278();
    *(v35 + 32) = v32;
    v24 = v32;
    v36 = v34;
    sub_248382A40(v33, &dword_248146000, v36, "[DBCameraOverlayController] Hiding camera window %@", 51, 2, v35);

    [v24 setHidden_];
  }
}

void (*DBCameraOverlayController.car.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_248310718;
}

void sub_248310718(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (!v7)
      {
        v16 = v3;
        goto LABEL_19;
      }

      sub_24814FB28(0, &qword_27EE92E80, 0x277CF8398);
      v8 = v3;
      v9 = v7;
      v10 = sub_248384030();

      if (v10)
      {

        v3 = v8;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_22:
        v3 = *v4;
        goto LABEL_26;
      }

      v9 = v7;
    }

    v14 = v2[4];
    v15 = v2[5];
    [v9 unregisterObserver_];
    v16 = *(v14 + v15);
    if (!v16)
    {
      v17 = 0;
LABEL_20:
      v24 = v17;
      sub_2483101F0(v17);

      goto LABEL_21;
    }

LABEL_19:
    v22 = v2[4];
    v23 = v2[5];
    [v16 registerObserver_];
    v17 = *(v22 + v23);
    goto LABEL_20;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_27;
    }

    v12 = v7;
    goto LABEL_16;
  }

  if (!v7)
  {
    v20 = v3;
    goto LABEL_24;
  }

  sub_24814FB28(0, &qword_27EE92E80, 0x277CF8398);
  v11 = v3;
  v12 = v7;
  v13 = sub_248384030();

  if ((v13 & 1) == 0)
  {
LABEL_16:
    v18 = v2[4];
    v19 = v2[5];
    [v12 unregisterObserver_];
    v20 = *(v18 + v19);
    if (!v20)
    {
      v21 = 0;
LABEL_25:
      v27 = v21;
      sub_2483101F0(v21);

      goto LABEL_26;
    }

LABEL_24:
    v25 = v2[4];
    v26 = v2[5];
    [v20 registerObserver_];
    v21 = *(v25 + v26);
    goto LABEL_25;
  }

  v3 = v11;
LABEL_26:

LABEL_27:

  free(v2);
}

id DBCameraOverlayController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBCameraOverlayController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBCameraOverlayController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBCameraOverlayController.invalidate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraViewController);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera;
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera);
  if (v3)
  {
    [v3 unregisterObserver_];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  if (v5)
  {
    v6 = v5;
    [v5 unregisterObserver_];
  }
}

void DBCameraOverlayController.cameraGeneralService(_:didUpdateOn:)(void *a1, char a2)
{
  v5 = sub_248383DC0();
  v6 = sub_24827BE88();
  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24839CCA0;
  *(v8 + 56) = sub_24814FB28(0, &qword_27EE939A0, 0x277CF8390);
  *(v8 + 64) = sub_2483112D0(&unk_27EE939A8, &qword_27EE939A0, 0x277CF8390);
  *(v8 + 32) = a1;
  v9 = v7;
  v10 = a1;
  v11 = NSStringFromBOOL();
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = sub_248383960();
  v15 = v14;

  *(v8 + 96) = MEMORY[0x277D837D0];
  *(v8 + 104) = sub_2482970D8();
  *(v8 + 72) = v13;
  *(v8 + 80) = v15;
  sub_248382A40(v5, &dword_248146000, v9, "[DBCameraOverlayController] Camera %@ did update on=%{public}@", 62, 2, v8);

  v16 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraWindow;
  v17 = *(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraWindow);
  if (a2)
  {
    if (!v17)
    {
      type metadata accessor for DBCameraWindow();
      v18 = DBCameraWindow.__allocating_init(windowScene:frame:)(*(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowScene), *(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowFrame), *(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowFrame + 8), *(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowFrame + 16), *(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowFrame + 24));
      v19 = *(v2 + v16);
      *(v2 + v16) = v18;

      v17 = *(v2 + v16);
      if (!v17)
      {
        return;
      }
    }

    v20 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraViewController;
    if (*(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraViewController))
    {
      v21 = v17;
    }

    else
    {
      type metadata accessor for DBCameraViewController();
      v27 = *(v2 + OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraScene);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v29 = v17;
      v30 = v27;
      v31 = Strong;
      v32 = v2;
      v33 = DBCameraViewController.__allocating_init(scene:environment:)(v30, v31);
      v34 = *(v2 + v20);
      *(v32 + v20) = v33;
      v35 = v33;

      v36 = v29;
      [v36 setRootViewController_];
    }

    v37 = sub_248383DC0();
    v38 = *sub_24827BE88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24839C7F0;
    *(v39 + 56) = type metadata accessor for DBCameraWindow();
    *(v39 + 64) = sub_248311278();
    *(v39 + 32) = v17;
    v41 = v17;
    v40 = v38;
    sub_248382A40(v37, &dword_248146000, v40, "[DBCameraOverlayController] Showing camera window %@", 52, 2, v39);

    [v41 setHidden_];
  }

  else
  {
    if (!v17)
    {
      return;
    }

    v22 = v17;
    v23 = sub_248383DC0();
    v24 = *v6;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24839C7F0;
    *(v25 + 56) = type metadata accessor for DBCameraWindow();
    *(v25 + 64) = sub_248311278();
    *(v25 + 32) = v22;
    v41 = v22;
    v26 = v24;
    sub_248382A40(v23, &dword_248146000, v26, "[DBCameraOverlayController] Hiding camera window %@", 51, 2, v25);

    [v41 setHidden_];
  }
}

void DBCameraOverlayController.carDidUpdateAccessories(_:)(void *a1)
{
  v2 = [a1 automakerExteriorCamera];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera;
    if (!*&v1[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera])
    {
      v8 = v2;
      v4 = [v2 cameraGeneral];
      v5 = *&v1[v3];
      *&v1[v3] = v4;

      if (v4)
      {
        [v4 registerObserver_];
      }

      v6 = *&v1[v3];
      v2 = v8;
      if (v6)
      {
        v7 = v6;
        [v1 cameraGeneralService:v7 didUpdateOn:{objc_msgSend(v7, "on")}];

        v2 = v8;
      }
    }
  }
}

id sub_24831118C(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *&v7[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car] = 0;
  *&v7[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__camera] = 0;
  *&v7[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraWindow] = 0;
  *&v7[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraViewController] = 0;
  *&v7[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowScene] = a1;
  v10 = &v7[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__windowFrame];
  *v10 = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  *&v7[OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController__cameraScene] = a2;
  swift_unknownObjectUnownedInit();
  v14.receiver = v7;
  v14.super_class = type metadata accessor for DBCameraOverlayController();
  v11 = a1;
  v12 = a2;
  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_248311278()
{
  result = qword_27EE939B8;
  if (!qword_27EE939B8)
  {
    type metadata accessor for DBCameraWindow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE939B8);
  }

  return result;
}

uint64_t sub_2483112D0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24814FB28(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double DBAnimationView.keysToAnimate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

Swift::Bool __swiftcall DBAnimationView._shouldAnimateProperty(withKey:)(Swift::String_optional withKey)
{
  v2 = v1;
  object = withKey.value._object;
  countAndFlagsBits = withKey.value._countAndFlagsBits;
  ObjectType = swift_getObjectType();
  if (object)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v14.receiver = v2;
  v14.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v14, sel__shouldAnimatePropertyWithKey_, v6);

  if (v7)
  {
    return 1;
  }

  v9 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = *(v10 + 16);
  if (v11)
  {
    for (i = (v10 + 40); ; i += 2)
    {
      if (object)
      {
        v13 = *(i - 1) == countAndFlagsBits && *i == object;
        if (v13 || (sub_248384680() & 1) != 0)
        {
          break;
        }
      }

      if (!--v11)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

id DBAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBAnimationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate] = MEMORY[0x277D84F90];
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id DBAnimationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DBAnimationView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate] = MEMORY[0x277D84F90];
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DBAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBOEMIcon.__allocating_init(sessionConfiguration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *MEMORY[0x277CF8FD8];
  v13.receiver = v3;
  v13.super_class = v1;
  v5 = objc_msgSendSuper2(&v13, sel_initWithLeafIdentifier_applicationBundleID_, v4, v4);
  type metadata accessor for DBLeafIconDataSource();
  v6 = sub_248383960();
  v8 = v7;
  v9 = a1;
  v10 = v5;
  v11 = DBLeafIconDataSource.__allocating_init(identifier:application:sessionConfiguration:)(v6, v8, 0, a1);
  [v10 addIconDataSource_];

  return v10;
}

id DBOEMIcon.init(sessionConfiguration:)(void *a1)
{
  v3 = *MEMORY[0x277CF8FD8];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for DBOEMIcon();
  v4 = objc_msgSendSuper2(&v12, sel_initWithLeafIdentifier_applicationBundleID_, v3, v3);
  type metadata accessor for DBLeafIconDataSource();
  v5 = sub_248383960();
  v7 = v6;
  v8 = a1;
  v9 = v4;
  v10 = DBLeafIconDataSource.__allocating_init(identifier:application:sessionConfiguration:)(v5, v7, 0, a1);
  [v9 addIconDataSource_];

  return v9;
}

id DBOEMIcon.__allocating_init(leafIdentifier:applicationBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_248383930();

  if (a4)
  {
    v7 = sub_248383930();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithLeafIdentifier:v6 applicationBundleID:v7];

  return v8;
}

id DBOEMIcon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBOEMIcon();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DBHomeToAppAnimationSettings.iconView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard28DBHomeToAppAnimationSettings_iconView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBHomeToAppAnimationSettings.iconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBHomeToAppAnimationSettings_iconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DBHomeToAppAnimationSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBHomeToAppAnimationSettings.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard28DBHomeToAppAnimationSettings_iconView] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBHomeToAppAnimationSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id static DBHomeToAppAnimation.animation(with:)(void (*a1)(void))
{
  v2 = [objc_allocWithZone(type metadata accessor for DBHomeToAppAnimationSettings()) init];
  a1();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = type metadata accessor for _DBLaunchAppFromHomeReducedMotionAnimation();
LABEL_7:
    v9 = objc_allocWithZone(v3);
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x138);
  v5 = v4();
  if (!v5)
  {
    v3 = type metadata accessor for _DBLaunchAppFromHomeScaleAnimation();
    goto LABEL_7;
  }

  v6 = objc_allocWithZone(type metadata accessor for _DBLaunchAppFromHomeZoomAnimation());
  result = v4();
  if (result)
  {
    *&v6[OBJC_IVAR____TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation_iconView] = result;
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  __break(1u);
  return result;
}

void sub_248312324(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = DBDashboardAnimation.toTransitionContainerView.getter();
  if (v6)
  {
    v7 = v6;
    v8 = DBDashboardAnimation.fromView.getter();
    if (v8)
    {
      v9 = v8;
      v10 = DBDashboardAnimation.toView.getter();
      if (v10)
      {
        v11 = v10;
        v12 = DBDashboardAnimation.rootContainerView.getter();
        if (v12)
        {
          v107 = v12;
          v115 = v11;
          v13 = *&v2[OBJC_IVAR____TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation_iconView];
          v14 = [v13 matchingIconViewByAddingConfigurationOptions:6 removingConfigurationOptions:0];
          [v14 setCustomIconImageViewControllerPriority_];
          [v14 setShowsSquareCorners_];
          [v14 setEnabled_];
          [v14 setIconContentScale_];
          [v14 setShadowHidden_];
          [v14 iconImageInfo];
          v16 = v15;

          v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
          [v7 addSubview_];
          [v13 iconImageFrame];
          [v7 convertRect:v13 fromCoordinateSpace:?];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          [v17 setFrame_];
          v116 = v17;
          v26 = [v17 layer];
          [v26 setCornerCurve_];

          [v14 setFrame_];
          [v7 bounds];
          v28 = v27;
          [v7 bounds];
          v30 = v29;
          [v7 bounds];
          v32 = v31;
          v34 = v33;
          v111 = v13;
          [v13 iconImageFrame];
          v108 = a1;
          v109 = a2;
          v113 = v9;
          if (v30 <= v28)
          {
            v37 = v34 / v36;
          }

          else
          {
            v37 = v32 / v35;
          }

          [v7 frame];
          v106 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
          [v14 prepareToCrossfadeImageWithView_options_];
          [v14 setMorphFraction_];
          [v14 setCrossfadeFraction_];
          [v14 setCrossfadeCornerRadius_];
          v43 = [v13 matchingIconViewByAddingConfigurationOptions:6 removingConfigurationOptions:0];
          [v43 setCustomIconImageViewControllerPriority_];
          [v43 setShowsSquareCorners_];
          [v7 frame];
          v105 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
          sub_24823BE08(v105, 3, 1);
          [v43 setMorphFraction_];
          [v43 setShadowHidden_];
          [v43 setCrossfadeCornerRadius_];
          [v43 setAllowsAdornmentsOverIconImage_];

          type metadata accessor for DBAppTransitionBlurView();
          [v115 frame];
          v52 = sub_248235C9C(v48, v49, v50, v51);
          [v115 frame];
          [v115 setFrame_];
          v53 = v52;
          [v116 addSubview_];
          [v53 addSubview_];
          [v116 addSubview_];
          [v7 bounds];
          v55 = v54;
          [v7 bounds];
          v57 = v56;
          [v13 iconImageFrame];
          v59 = v58;
          v61 = v60;
          [v7 bounds];
          v64 = v59 / v63;
          if (v57 <= v55)
          {
            v64 = v61 / v62;
          }

          CGAffineTransformMakeScale(&aBlock, v64, v64);
          [v53 setTransform_];
          [v116 bounds];
          sub_248383F00();
          [v53 setCenter_];
          v103 = v53;

          v65 = DBDashboardAnimation.fromTransitionContainerView.getter();
          type metadata accessor for DBAnimationView();
          if (v65)
          {
            v66 = DBAnimationView.__allocating_init(frame:)(0.0, 0.0, 0.0, 0.0);
            if (v66)
            {
              v67 = v66;
              [v65 addSubview_];
              v68 = v67;
              [v65 bounds];
              [v68 setFrame_];

              [v68 addSubview_];
              [v68 bounds];
              [v9 setFrame_];

              v69 = v68;
LABEL_21:
              v71 = v68;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
              v72 = swift_allocObject();
              *(v72 + 16) = xmmword_24839C7F0;
              *(v72 + 32) = sub_248383960();
              *(v72 + 40) = v73;
              v74 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
              swift_beginAccess();
              *&v69[v74] = v72;

              v75 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
              [v75 setName_];
              v76 = sub_248383CC0();
              [v75 setValue:v76 forKey:@"inputRadius"];

              v77 = [v69 layer];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0, &qword_2483A01A0);
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_24839C7F0;
              *(v78 + 56) = sub_24814FB28(0, &qword_27EE90600, 0x277CD9EA0);
              *(v78 + 32) = v75;
              v102 = v75;
              v79 = sub_248383B00();

              [v77 setFilters_];

              [v116 setMaskView_];
              [v7 &selRef:v14 addObjectsFromArray:?];
              [v111 setIconImageAlpha_];
              v112 = objc_opt_self();
              [v112 begin];
              v80 = objc_opt_self();
              v81 = swift_allocObject();
              *(v81 + 16) = v69;
              *&aBlock.tx = sub_248314210;
              *&aBlock.ty = v81;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_126;
              v82 = _Block_copy(&aBlock);
              v101 = v69;

              v83 = swift_allocObject();
              *(v83 + 16) = v113;
              *(v83 + 24) = v69;
              *&aBlock.tx = sub_2483142C8;
              *&aBlock.ty = v83;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_2482614B8;
              *&aBlock.d = &block_descriptor_132;
              v84 = _Block_copy(&aBlock);
              v114 = v113;

              v100 = v80;
              [v80 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
              _Block_release(v84);
              _Block_release(v82);
              v85 = swift_allocObject();
              *(v85 + 16) = v14;
              *&aBlock.tx = sub_2483143C4;
              *&aBlock.ty = v85;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_138_0;
              v86 = _Block_copy(&aBlock);
              v87 = v14;

              [v80 animateWithDuration:0 delay:v86 options:0 animations:0.07 completion:0.01];
              _Block_release(v86);
              v88 = swift_allocObject();
              *(v88 + 16) = v103;
              *(v88 + 24) = v7;
              *(v88 + 32) = v116;
              *(v88 + 40) = v87;
              *(v88 + 48) = v37;
              *(v88 + 56) = v3;
              *(v88 + 64) = v43;
              *(v88 + 72) = v107;
              *&aBlock.tx = sub_2483143D8;
              *&aBlock.ty = v88;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_144;
              v99 = _Block_copy(&aBlock);
              v89 = v87;
              v90 = v43;
              v104 = v103;
              v110 = v7;
              v91 = v116;
              v92 = v3;
              v117 = v107;

              v93 = swift_allocObject();
              v93[2] = v108;
              v93[3] = v109;
              v93[4] = v89;
              v93[5] = v90;
              v93[6] = v91;
              v93[7] = v92;
              *&aBlock.tx = sub_2483145B8;
              *&aBlock.ty = v93;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_2482614B8;
              *&aBlock.d = &block_descriptor_150;
              v94 = _Block_copy(&aBlock);
              v95 = v89;
              v96 = v90;
              v97 = v91;
              v98 = v92;
              sub_248167910(v108, v109);

              [v100 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
              _Block_release(v94);
              _Block_release(v99);
              [v112 commit];

              return;
            }

            __break(1u);
          }

          else
          {
            v70 = swift_dynamicCastClass();
            if (v70)
            {
              v69 = v70;
              v68 = v9;
              goto LABEL_21;
            }
          }

          __break(1u);
          return;
        }

        v38 = v9;
        v7 = v11;
      }

      else
      {
        v38 = v7;
        v7 = v9;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_248313130(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = DBDashboardAnimation.toTransitionContainerView.getter();
  if (v6)
  {
    v7 = v6;
    v8 = DBDashboardAnimation.fromView.getter();
    if (v8)
    {
      v9 = v8;
      v10 = DBDashboardAnimation.toView.getter();
      if (v10)
      {
        v11 = v10;
        v12 = DBDashboardAnimation.rootContainerView.getter();
        if (v12)
        {
          v53 = v12;

          v13 = DBDashboardAnimation.fromTransitionContainerView.getter();
          type metadata accessor for DBAnimationView();
          if (v13)
          {
            v14 = DBAnimationView.__allocating_init(frame:)(0.0, 0.0, 0.0, 0.0);
            if (v14)
            {
              v15 = v14;
              [v13 insertSubview:v15 atIndex:0];
              v16 = v15;
              [v13 bounds];
              [v16 setFrame_];

              [v16 addSubview_];
              [v16 bounds];
              [v9 setFrame_];

              v17 = v16;
LABEL_16:
              v20 = v16;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
              v21 = swift_allocObject();
              *(v21 + 16) = xmmword_24839C7F0;
              *(v21 + 32) = sub_248383960();
              *(v21 + 40) = v22;
              v23 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
              swift_beginAccess();
              *&v17[v23] = v21;

              v49 = v17;

              v24 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
              [v24 setName_];
              v25 = sub_248383CC0();
              [v24 setValue:v25 forKey:@"inputRadius"];

              v26 = [v49 layer];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0, &qword_2483A01A0);
              v27 = swift_allocObject();
              *(v27 + 16) = xmmword_24839C7F0;
              *(v27 + 56) = sub_24814FB28(0, &qword_27EE90600, 0x277CD9EA0);
              *(v27 + 32) = v24;
              v51 = v24;
              v28 = sub_248383B00();

              [v26 setFilters_];

              type metadata accessor for DBAppTransitionBlurView();
              [v11 bounds];
              v50 = sub_248235C9C(v29, v30, v31, v32);
              [v50 setAlpha_];
              [v7 &selRef:v50 addObjectsFromArray:?];
              [v7 &selRef:v11 addObjectsFromArray:?];
              [v7 bounds];
              [v11 setFrame_];
              [v11 setAlpha_];
              CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
              [v11 setTransform_];
              v33 = swift_allocObject();
              *(v33 + 16) = v11;
              v46 = objc_opt_self();
              *&aBlock.tx = sub_248314794;
              *&aBlock.ty = v33;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_92;
              v34 = _Block_copy(&aBlock);
              v35 = v11;

              *&aBlock.tx = nullsub_1;
              aBlock.ty = 0.0;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_2482614B8;
              *&aBlock.d = &block_descriptor_95;
              v36 = _Block_copy(&aBlock);

              [v46 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
              _Block_release(v36);
              _Block_release(v34);

              v37 = swift_allocObject();
              v37[2] = v53;
              v37[3] = v3;
              v37[4] = v49;
              v37[5] = v35;
              v38 = swift_allocObject();
              v38[2] = a1;
              v38[3] = a2;
              v38[4] = v49;
              v38[5] = v9;
              *&aBlock.tx = sub_248313FD8;
              *&aBlock.ty = v37;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_104;
              v45 = _Block_copy(&aBlock);
              v52 = v9;
              v48 = v35;
              v47 = v53;
              v39 = v3;
              v54 = v49;
              sub_248167910(a1, a2);

              *&aBlock.tx = sub_2483140F0;
              *&aBlock.ty = v38;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_2482614B8;
              *&aBlock.d = &block_descriptor_107_0;
              v40 = _Block_copy(&aBlock);

              [v46 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
              _Block_release(v40);
              _Block_release(v45);

              v41 = swift_allocObject();
              *(v41 + 16) = v50;
              *&aBlock.tx = sub_2483141FC;
              *&aBlock.ty = v41;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_113_0;
              v42 = _Block_copy(&aBlock);
              v43 = v50;

              *&aBlock.tx = nullsub_1;
              aBlock.ty = 0.0;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_2482614B8;
              *&aBlock.d = &block_descriptor_116;
              v44 = _Block_copy(&aBlock);

              [v46 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
              _Block_release(v44);
              _Block_release(v42);

              return;
            }

            __break(1u);
          }

          else
          {
            v19 = swift_dynamicCastClass();
            if (v19)
            {
              v17 = v19;
              v16 = v9;
              goto LABEL_16;
            }
          }

          __break(1u);
          return;
        }

        v18 = v9;
        v7 = v11;
      }

      else
      {
        v18 = v7;
        v7 = v9;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_248313AEC(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = DBDashboardAnimation.toTransitionContainerView.getter();
  if (v6)
  {
    v7 = v6;
    v8 = DBDashboardAnimation.toView.getter();
    if (v8)
    {
      v9 = v8;
      v10 = DBDashboardAnimation.fromView.getter();
      if (v10)
      {
        v11 = v10;
        v12 = DBDashboardAnimation.rootContainerView.getter();
        if (v12)
        {
          v13 = v12;
          v14 = DBDashboardAnimation.fromTransitionContainerView.getter();
          if (v14)
          {
            v15 = v14;
            [v14 addSubview_];
            [v15 bounds];
            [v11 setFrame_];
          }

          type metadata accessor for DBAppTransitionBlurView();
          [v9 bounds];
          v20 = sub_248235C9C(v16, v17, v18, v19);
          [v20 setAlpha_];
          [v7 addSubview_];
          [v7 addSubview_];
          [v7 bounds];
          [v9 setFrame_];
          [v9 setAlpha_];
          v30 = objc_opt_self();
          v21 = swift_allocObject();
          v21[2] = v13;
          v21[3] = v3;
          v21[4] = v20;
          v21[5] = v9;
          v35 = sub_248313F08;
          v36 = v21;
          aBlock = MEMORY[0x277D85DD0];
          v32 = 1107296256;
          v33 = sub_24814C01C;
          v34 = &block_descriptor_23;
          v22 = _Block_copy(&aBlock);
          v23 = v13;
          v24 = v3;
          v25 = v20;
          v26 = v9;

          v27 = swift_allocObject();
          *(v27 + 16) = a1;
          *(v27 + 24) = a2;
          v35 = sub_248260F70;
          v36 = v27;
          aBlock = MEMORY[0x277D85DD0];
          v32 = 1107296256;
          v33 = sub_24824BBE0;
          v34 = &block_descriptor_83;
          v28 = _Block_copy(&aBlock);
          sub_248167910(a1, a2);

          [v30 animateWithDuration:v22 animations:v28 completion:0.5];
          _Block_release(v28);
          _Block_release(v22);

          return;
        }

        v29 = v9;
        v7 = v11;
      }

      else
      {
        v29 = v7;
        v7 = v9;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

id sub_248313ED0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_248313F08()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  [v2 setAlpha_];

  return [v3 setAlpha_];
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_248313FD8()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v4 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  if (v3)
  {
    CGAffineTransformMakeScale(&v7, 0.9, 0.9);
    [v3 setTransform_];
    v5 = [v3 layer];
    v6 = sub_248381440();
    [v5 setValue:v6 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    CGAffineTransformMakeScale(&v7, 1.0, 1.0);
    [v2 setTransform_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2483140F0(char a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  if (v3)
  {
    v3();
  }

  if ((a1 & 1) != 0 && v5)
  {
    sub_24814FB28(0, &qword_27EE8FFC0, 0x277D75D18);
    v6 = v5;
    v7 = v4;
    v8 = sub_248384030();

    if (v8)
    {
      v11[0] = 0x3FF0000000000000;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0x3FF0000000000000;
      v11[4] = 0;
      v11[5] = 0;
      [v6 setTransform_];
      v9 = [v6 layer];
      v10 = sub_248383CC0();
      [v9 setValue:v10 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    }
  }
}

void sub_248314210()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    CGAffineTransformMakeScale(&v4, 0.9, 0.9);
    [v1 setTransform_];
    v2 = [v1 layer];
    v3 = sub_248381440();
    [v2 setValue:v3 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }

  else
  {
    __break(1u);
  }
}

void sub_2483142C8(char a1)
{
  if (a1)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    [v3 setHidden_];
    if (v2)
    {
      if (v3 == v2)
      {
        v6[0] = 0x3FF0000000000000;
        v6[1] = 0;
        v6[2] = 0;
        v6[3] = 0x3FF0000000000000;
        v6[4] = 0;
        v6[5] = 0;
        [v2 setTransform_];
        v4 = [v2 layer];
        v5 = sub_248383CC0();
        [v4 setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      }

      else
      {

        [v2 removeFromSuperview];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2483143D8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  [v1 bounds];
  sub_248383F00();
  [v2 setCenter_];
  [v1 bounds];
  [v4 setFrame_];
  CGAffineTransformMakeScale(&v9, 1.0, 1.0);
  [v2 setTransform_];
  [v1 bounds];
  sub_248383F00();
  [v3 setCenter_];
  CGAffineTransformMakeScale(&v9, v5, v5);
  [v3 setTransform_];
  [v3 setMorphFraction_];
  [v3 setCrossfadeCornerRadius_];
  [v1 bounds];
  sub_248383F00();
  [v7 setCenter_];
  CGAffineTransformMakeScale(&v9, v5, v5);
  [v7 setTransform_];
  [v7 setMorphFraction_];
  [v7 setCrossfadeCornerRadius_];
  v8 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v6 setBackgroundColor_];
}

id sub_2483145B8()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  if (v1)
  {
    v1();
  }

  [v3 cleanupAfterCrossfade];
  [v3 removeFromSuperview];
  [v2 cleanupAfterCrossfade];
  [v2 removeFromSuperview];
  [v4 removeFromSuperview];
  v6 = *(v5 + OBJC_IVAR____TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation_iconView);

  return [v6 setIconImageAlpha_];
}

id sub_24831466C(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DBHomeToAppAnimationSettings()) init];
  (*(a1 + 16))(a1, v2);
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = type metadata accessor for _DBLaunchAppFromHomeReducedMotionAnimation();
LABEL_7:
    v9 = objc_allocWithZone(v3);
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x138);
  v5 = v4();
  if (!v5)
  {
    v3 = type metadata accessor for _DBLaunchAppFromHomeScaleAnimation();
    goto LABEL_7;
  }

  v6 = objc_allocWithZone(type metadata accessor for _DBLaunchAppFromHomeZoomAnimation());
  result = v4();
  if (result)
  {
    *&v6[OBJC_IVAR____TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation_iconView] = result;
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  __break(1u);
  return result;
}

id DBCameraWindow.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBCameraWindow();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_248314928(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t *sub_248314938@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id DBCameraWindow.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBCameraWindow();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

void DBCameraWindow.isHidden.setter(char a1)
{
  v3 = [v1 rootViewController];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  type metadata accessor for DBCameraViewController();
  v5 = swift_dynamicCastClass();
  if (!v5 || (v6 = v5, (v7 = [v5 view]) == 0))
  {

LABEL_10:
    v27.receiver = v1;
    v27.super_class = type metadata accessor for DBCameraWindow();
    objc_msgSendSuper2(&v27, sel_setHidden_, a1 & 1);
    return;
  }

  v8 = v7;
  if ([v7 tag])
  {
    [v8 setTag_];
    v26.receiver = v1;
    v26.super_class = type metadata accessor for DBCameraWindow();
    if (a1)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    objc_msgSendSuper2(&v26, sel_setHidden_, a1 & 1);
    (*((*MEMORY[0x277D85000] & *v6) + 0x80))((a1 & 1) == 0);
    [v8 setAlpha_];
  }

  else if (a1)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v23 = sub_248314D8C;
    v24 = v11;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_24814C01C;
    v22 = &block_descriptor_24;
    v12 = _Block_copy(&v19);
    v13 = v8;

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v1;
    *(v14 + 32) = 1;
    *(v14 + 40) = v6;
    v23 = sub_248314DE0;
    v24 = v14;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_24824BBE0;
    v22 = &block_descriptor_6_3;
    v15 = _Block_copy(&v19);
    v16 = v13;
    v17 = v1;
    v18 = v4;

    [v10 animateWithDuration:0x20000 delay:v12 options:v15 animations:0.2 completion:0.3];

    _Block_release(v15);
    _Block_release(v12);
  }

  else
  {
    v25.receiver = v1;
    v25.super_class = type metadata accessor for DBCameraWindow();
    objc_msgSendSuper2(&v25, sel_setHidden_, 0);
    (*((*MEMORY[0x277D85000] & *v6) + 0x80))(1);
    [v8 setAlpha_];
  }
}

id sub_248314D8C()
{
  v1 = *(v0 + 16);
  [v1 setTag_];

  return [v1 setAlpha_];
}

id sub_248314DE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if ([v1 tag] != 2)
  {
    v6.receiver = v2;
    v6.super_class = type metadata accessor for DBCameraWindow();
    objc_msgSendSuper2(&v6, sel_setHidden_, v3);
    (*((*MEMORY[0x277D85000] & *v4) + 0x80))(v3 ^ 1);
    [v1 setAlpha_];
  }

  return [v1 setTag_];
}

unint64_t sub_248314EB0()
{
  result = qword_27EE93A50;
  if (!qword_27EE93A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93A50);
  }

  return result;
}

id DBThemeController.__allocating_init(themeAssetDocument:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument] = a1;
  v4 = objc_allocWithZone(MEMORY[0x277CF89C0]);
  v5 = a1;
  result = [v4 initWithProtocol_];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC9DashBoard17DBThemeController_observers] = result;
    v8.receiver = v3;
    v8.super_class = v1;
    v7 = objc_msgSendSuper2(&v8, sel_init);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DBThemeController.init(themeAssetDocument:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument] = a1;
  v3 = objc_allocWithZone(MEMORY[0x277CF89C0]);
  v4 = a1;
  result = [v3 initWithProtocol_];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC9DashBoard17DBThemeController_observers] = result;
    v7.receiver = v1;
    v7.super_class = type metadata accessor for DBThemeController();
    v6 = objc_msgSendSuper2(&v7, sel_init);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DBThemeController.layoutURL.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument) documentURL];
  sub_248381120();
}

uint64_t DBThemeController.extraAssetsURL.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_2483810D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248381170();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v9);
  v13[0] = 0x736172747845;
  v13[1] = 0xE600000000000000;
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  sub_24831576C();
  sub_248381160();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24831576C()
{
  result = qword_27EE93A70;
  if (!qword_27EE93A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93A70);
  }

  return result;
}

uint64_t DBThemeController.assetVersion.getter()
{
  v0 = sub_248381690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248381840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DBThemeAssetDocument.document.getter(v7);
  sub_248381830();
  (*(v5 + 8))(v7, v4);
  v8 = sub_248381670();
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t DBThemeController.displays.getter()
{
  v1 = sub_2483824B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v86 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v52 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v85 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v52 - v6;
  v73 = sub_248382510();
  v84 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2483825A0();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v65 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248381690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_248381840();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  DBThemeAssetDocument.document.getter(v17);
  sub_248381830();
  (*(v15 + 8))(v17, v14);
  v18 = sub_248381680();
  result = (*(v11 + 8))(v13, v10);
  v90 = MEMORY[0x277D84F90];
  v71 = *(v18 + 16);
  if (!v71)
  {

    return MEMORY[0x277D84F90];
  }

  v20 = 0;
  v78 = 0;
  v21 = v66;
  v70 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v69 = v66 + 16;
  v68 = (v84 + 11);
  v67 = *MEMORY[0x277CF8E48];
  v56 = *MEMORY[0x277CF8E38];
  v55 = *MEMORY[0x277CF8E50];
  v54 = *MEMORY[0x277CF8E40];
  v64 = (v66 + 8);
  v53 = (v84 + 1);
  v60 = (v85 + 8);
  v80 = (v2 + 8);
  v84 = (v2 + 32);
  v85 = v2 + 16;
  v57 = MEMORY[0x277D84F90];
  v81 = v1;
  v22 = v83;
  v23 = v65;
  v59 = v18;
  v58 = v8;
  while (v20 < *(v18 + 16))
  {
    (*(v21 + 16))(v23, v70 + *(v21 + 72) * v20, v8);
    v24 = v72;
    sub_248382570();
    v25 = (*v68)(v24, v73);
    v79 = v20;
    if (v25 == v67)
    {
      v26 = 1;
    }

    else if (v25 == v56)
    {
      v26 = 2;
    }

    else if (v25 == v55)
    {
      v26 = 3;
    }

    else
    {
      if (v25 != v54)
      {
        (*v64)(v23, v8);
        result = (*v53)(v72, v73);
        goto LABEL_4;
      }

      v26 = 4;
    }

    v77 = v26;
    v27 = v62;
    sub_248382540();
    v28 = v63;
    sub_248381860();
    (*v60)(v27, v28);
    v74 = v88;
    v75 = v89;
    sub_248382560();
    v30 = v29;
    v32 = v31;
    v76 = sub_248382530();
    result = sub_248382590();
    v33 = result;
    v34 = *(result + 16);
    if (v34)
    {
      v35 = 0;
      v36 = MEMORY[0x277D84F90];
      v82 = *(result + 16);
      while (v35 < *(v33 + 16))
      {
        v37 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v38 = *(v2 + 72);
        (*(v2 + 16))(v22, v33 + v37 + v38 * v35, v1);
        if (sub_248382440())
        {
          v39 = v2;
          v40 = *v84;
          (*v84)(v86, v22, v1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24832AA28(0, *(v36 + 16) + 1, 1);
            v36 = v87;
          }

          v43 = *(v36 + 16);
          v42 = *(v36 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_24832AA28((v42 > 1), v43 + 1, 1);
            v36 = v87;
          }

          *(v36 + 16) = v43 + 1;
          v44 = v36 + v37 + v43 * v38;
          v1 = v81;
          result = v40(v44, v86, v81);
          v2 = v39;
          v34 = v82;
          v22 = v83;
        }

        else
        {
          result = (*v80)(v22, v1);
        }

        if (v34 == ++v35)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      break;
    }

    v36 = MEMORY[0x277D84F90];
LABEL_26:

    MEMORY[0x28223BE20](v45);
    v23 = v65;
    *(&v52 - 2) = v61;
    *(&v52 - 1) = v23;
    v46 = v78;
    sub_248323870(sub_24832AA6C, (&v52 - 4), v36);
    v78 = v46;

    v47 = objc_allocWithZone(MEMORY[0x277CF9250]);
    v48 = sub_248383930();

    sub_24814FB28(0, &unk_27EE93A80, 0x277CF9268);
    v49 = sub_248383B00();

    v50 = [v47 initWithIdentifier:v48 displayType:v77 size:v76 & 1 requiresDarkAppearance:v49 layouts:{v30, v32}];

    v8 = v58;
    result = (*v64)(v23, v58);
    if (v50)
    {
      MEMORY[0x24C1CB0D0](result);
      v21 = v66;
      v18 = v59;
      v20 = v79;
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v51 = v79;
        sub_248383B50();
        v20 = v51;
      }

      result = sub_248383B70();
      v57 = v90;
      v22 = v83;
    }

    else
    {
      v22 = v83;
      v21 = v66;
      v18 = v59;
      v20 = v79;
    }

LABEL_4:
    if (++v20 == v71)
    {

      return v57;
    }
  }

  __break(1u);
  return result;
}

void *sub_248316520(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x24C1CB0D0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248383B50();
      }

      sub_248383B70();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

id sub_2483166AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_248381170();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0, &qword_24839D660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  (*((*MEMORY[0x277D85000] & *v4) + 0x90))(a1, a2, a3, a4, v17);
  sub_248232C78(v19, v15, &qword_27EE904C0, &qword_24839D660);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_24822D578(v19, &qword_27EE904C0, &qword_24839D660);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21 = objc_allocWithZone(MEMORY[0x277CCAC90]);
    v22 = sub_2483810F0();
    v23 = [v21 initWithURL:v22 readonly:1];

    (*(v10 + 8))(v12, v9);
    sub_24822D578(v19, &qword_27EE904C0, &qword_24839D660);
    return v23;
  }
}

uint64_t sub_248316920(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v18 = a1;
  v9 = a3(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v17 - v14;
  sub_248232C78(v5, &v17 - v14, a4, a5);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    return 0;
  }

  (*(v10 + 32))(v12, v15, v9);
  v18(&v19, v12);
  if (v6)
  {
    result = (*(v10 + 8))(v12, v9);
    __break(1u);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return v19;
  }

  return result;
}

uint64_t DBThemeController.url(for:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t, __n128)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a3;
  v87 = a4;
  v79 = a1;
  v80 = a2;
  v88 = a5;
  v72 = sub_2483810D0();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248381170();
  v90 = *(v7 - 8);
  v91 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v65 - v10;
  v11 = sub_248381630();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v75 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v65 - v14;
  v81 = sub_248381660();
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v73 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760, &qword_24839D9B8);
  MEMORY[0x28223BE20](v18 - 8);
  v85 = (&v65 - v19);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v20 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v66 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = sub_248381690();
  v83 = *(v25 - 8);
  v84 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_248381840();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2483825A0();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v5;
  DBThemeAssetDocument.document.getter(v31);
  sub_248381830();
  v36 = v31;
  v37 = v33;
  (*(v29 + 8))(v36, v28);
  v94 = v86;
  v95 = v87;

  MEMORY[0x24C1C8E30](&v94, v32, MEMORY[0x277D837D0]);
  v38 = v85;
  sub_2483816A0();
  v39 = *(v20 + 8);
  v87 = v20 + 8;
  v39(v24, v89);
  (*(v83 + 8))(v27, v84);
  if ((*(v33 + 48))(v38, 1, v32) == 1)
  {
    sub_24822D578(v38, &unk_27EE90760, &qword_24839D9B8);
LABEL_10:
    v63 = 1;
    v62 = v88;
    return (*(v90 + 56))(v62, v63, 1, v91);
  }

  (*(v33 + 32))(v35, v38, v32);
  v40 = sub_248382520();
  if (!v40)
  {
LABEL_9:
    (*(v33 + 8))(v35, v32);
    goto LABEL_10;
  }

  v41 = v40;
  if (!*(v40 + 16) || (v42 = sub_24822B8A0(v79, v80), (v43 & 1) == 0))
  {

    goto LABEL_9;
  }

  v86 = v35;
  v44 = v78;
  v45 = v73;
  v46 = v81;
  (*(v78 + 16))(v73, *(v41 + 56) + *(v78 + 72) * v42, v81);

  (*(v44 + 32))(v82, v45, v46);
  v47 = v74;
  sub_248381640();
  v48 = v75;
  sub_248381620();
  sub_24832B41C(&unk_27EE93A90, MEMORY[0x277CF8AB0], MEMORY[0x277CF8AB8]);
  v49 = v77;
  v50 = sub_248384240();
  v51 = *(v76 + 8);
  v51(v48, v49);
  v52 = (v51)(v47, v49);
  if ((v50 & 1) == 0)
  {
    (*(v44 + 8))(v82, v81);
    (*(v37 + 8))(v86, v32);
    goto LABEL_10;
  }

  v53 = v68;
  (*((*MEMORY[0x277D85000] & *v67) + 0x68))(v52);
  v54 = v66;
  sub_248382540();
  v55 = v89;
  sub_248381860();
  v39(v54, v55);
  v92 = v94;
  v93 = v95;
  LODWORD(v87) = *MEMORY[0x277CC91D8];
  v89 = v37;
  v56 = v71;
  v85 = *(v71 + 104);
  v57 = v70;
  v58 = v72;
  v85(v70);
  v84 = sub_24831576C();
  v59 = v69;
  sub_248381150();
  v83 = *(v56 + 8);
  (v83)(v57, v58);

  v80 = *(v90 + 8);
  (v80)(v53, v91);
  v94 = sub_248381650();
  v95 = v60;
  (v85)(v57, v87, v58);
  v61 = v88;
  sub_248381150();
  (v83)(v57, v58);

  (v80)(v59, v91);
  (*(v78 + 8))(v82, v81);
  (*(v89 + 8))(v86, v32);
  v62 = v61;
  v63 = 0;
  return (*(v90 + 56))(v62, v63, 1, v91);
}

uint64_t DBThemeController.needsToUpdateThemeData(on:)(void *a1)
{
  v3 = [a1 displayThemeData];
  v4 = v3;
  if (!v3)
  {
    v4 = *sub_24827BA50();
    v5 = sub_248383DC0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_248146000, v4, v5, "[Wallpaper Data Provider] Assigning default theme data to vehicle", v6, 2u);
      MEMORY[0x24C1CD5F0](v6, -1, -1);
    }
  }

  v7 = [a1 displayThemeData];
  if (v7)
  {
    v8 = v7;
    sub_24814FB28(0, &qword_27EE8FEF8, 0x277CF8A50);
    v9 = sub_2483838A0();
  }

  else
  {
    v9 = sub_24831E034();
  }

  v10 = v3 == 0;
  (*((*MEMORY[0x277D85000] & *v1) + 0xA0))(v9);
  v12 = v11;

  v13 = v10 | v12;
  if ((v10 | v12))
  {
    v14 = *sub_24827BA50();
    v15 = sub_248383DC0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_248146000, v14, v15, "[Wallpaper Data Provider] Updated vehicle theme data", v16, 2u);
      MEMORY[0x24C1CD5F0](v16, -1, -1);
    }

    sub_24814FB28(0, &qword_27EE8FEF8, 0x277CF8A50);
    v17 = sub_248383880();

    [a1 setDisplayThemeData_];
  }

  else
  {

    v17 = *sub_24827BA50();
    v18 = sub_248383DC0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_248146000, v17, v18, "[Wallpaper Data Provider] vehicle theme data is current", v19, 2u);
      MEMORY[0x24C1CD5F0](v19, -1, -1);
    }
  }

  return v13 & 1;
}

Swift::tuple_validatedData_OpaquePointer_foundIssues_Bool __swiftcall DBThemeController.validate(themeData:)(Swift::OpaquePointer themeData)
{
  v2 = v1;
  v4 = sub_2483825A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = sub_248381690();
  v8 = *(v21[0] - 8);
  MEMORY[0x28223BE20](v21[0]);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248381840();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  rawValue = themeData._rawValue;

  DBThemeAssetDocument.document.getter(v14);
  sub_248381830();
  (*(v12 + 8))(v14, v11);
  v15 = sub_248381680();
  (*(v8 + 8))(v10, v21[0]);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v5 + 8);
    while (v17 < *(v15 + 16))
    {
      (*(v5 + 16))(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v4);
      sub_248317CF4(v7, v2, &rawValue, &v23);
      ++v17;
      (*v18)(v7, v4);
      if (v16 == v17)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    v19 = (*v18)(v7, v4);
    __break(1u);
  }

  else
  {
LABEL_5:

    v19 = rawValue;
    v20 = v23;
  }

  result.validatedData._rawValue = v19;
  result.foundIssues = v20;
  return result;
}

void sub_248317CF4(char *a1, void *a2, uint64_t *a3, _BYTE *a4)
{
  v138 = a4;
  v143 = a3;
  v155 = a2;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v146 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v131 - v5;
  v152 = sub_2483824B0();
  v6 = *(v152 - 1);
  MEMORY[0x28223BE20](v152);
  v136 = (&v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v131 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v141 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v131 - v15;
  v17 = sub_2483825A0();
  v142 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v135 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v148 = &v131 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v131 - v22;
  v24 = a1;
  v151 = sub_248320B64(a1);
  if (!v151)
  {
    v140 = v12;
    v44 = *sub_24827BA50();
    v45 = v142;
    v46 = v23;
    (*(v142 + 16))(v23, v24, v17);
    v47 = v44;
    v48 = sub_248383DC0();
    v49 = v45;
    if (os_log_type_enabled(v47, v48))
    {
      v50 = swift_slowAlloc();
      v139 = v17;
      v51 = v50;
      v153 = v50;
      v155 = swift_slowAlloc();
      v158 = v155;
      *v51 = 136315138;
      v52 = v141;
      v53 = v46;
      sub_248382540();
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v54 = v11;
      v55 = sub_248384650();
      v57 = v56;
      (*(v140 + 8))(v52, v54);
      (*(v49 + 8))(v53, v139);
      v58 = sub_24814A378(v55, v57, &v158);

      v59 = v153;
      *(v153 + 4) = v58;
      v60 = v59;
      _os_log_impl(&dword_248146000, v47, v48, "[Wallpaper Data Provider] Unable to create default theme data for display: %s", v59, 0xCu);
      v61 = v155;
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x24C1CD5F0](v61, -1, -1);
      MEMORY[0x24C1CD5F0](v60, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v46, v17);
    }

    return;
  }

  v139 = v17;
  v153 = a1;
  sub_248382540();
  sub_248381860();
  v25 = *(v12 + 8);
  v137 = v11;
  v140 = v12 + 8;
  v25(v16, v11);
  v26 = *v143;
  if (!*(*v143 + 16))
  {

    goto LABEL_13;
  }

  v27 = sub_24822B8A0(v158, v159);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_13:
    v62 = *sub_24827BA50();
    v63 = v142;
    v64 = v148;
    v65 = v139;
    (*(v142 + 16))(v148, v153, v139);
    v66 = v62;
    v67 = sub_248383DC0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v152 = v68;
      v155 = swift_slowAlloc();
      v158 = v155;
      *v68 = 136315138;
      v69 = v141;
      sub_248382540();
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v70 = v137;
      v71 = sub_248384650();
      v72 = v25;
      v74 = v73;
      LODWORD(v150) = v67;
      v72(v69, v70);
      (*(v63 + 8))(v64, v139);
      v75 = sub_24814A378(v71, v74, &v158);
      v25 = v72;

      v76 = v152;
      *(v152 + 4) = v75;
      v77 = v76;
      _os_log_impl(&dword_248146000, v66, v150, "[Wallpaper Data Provider] Assigning default theme data to display: %s", v76, 0xCu);
      v78 = v155;
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x24C1CD5F0](v78, -1, -1);
      MEMORY[0x24C1CD5F0](v77, -1, -1);
    }

    else
    {

      (*(v63 + 8))(v64, v65);
      v70 = v137;
      v69 = v141;
    }

    sub_248382540();
    sub_248381860();
    v25(v69, v70);
    v79 = v158;
    v80 = v159;
    v81 = v143;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v81;
    *v81 = 0x8000000000000000;
    sub_24832A448(v151, v79, v80, isUniquelyReferenced_nonNull_native, &unk_27EE93B40, &unk_2483A1628);

    *v81 = v160;
    *v138 = 1;
    return;
  }

  v132 = v25;
  v30 = *(*(v26 + 56) + 8 * v27);
  v157 = 0;
  v31 = v30;
  v32 = [v31 currentLayoutID];
  v133 = sub_248383960();
  v134 = v33;

  v34 = [v31 paletteIDForLayout];
  v35 = sub_2483838A0();

  v160 = v35;
  v148 = v31;
  v36 = [v31 wallpaperForLayout];
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628, qword_24839FBC0);
  v37 = sub_2483838A0();

  v156.isa = v37;
  v38 = sub_248382590();
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = (v6 + 8);
    v42 = v151;
    v43 = v152;
    while (v40 < *(v38 + 16))
    {
      (*(v6 + 16))(v10, v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v40, v43);
      sub_248318CE8(v10, &v160, v153, v155, v42, &v157, &v156);
      if (v154)
      {
        goto LABEL_40;
      }

      ++v40;
      (*v41)(v10, v43);
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:

    (*v41)(v10, v43);
    __break(1u);
  }

  else
  {
    v42 = v151;
LABEL_19:

    v83 = sub_248382590();
    v84 = 0;
    v155 = *(v83 + 16);
    v144 = (v146 + 1);
    v145 = v6 + 16;
    v146 = (v6 + 8);
    v43 = v136;
    v85 = v152;
    v147 = v83;
    while (v155 != v84)
    {
      v41 = &selRef__eventStoreDidChange_;
      if (v84 >= *(v83 + 16))
      {
        goto LABEL_39;
      }

      (*(v6 + 16))(v43, v83 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v84, v85);
      v86 = v149;
      sub_248382450();
      swift_getKeyPath();
      v87 = v150;
      sub_248381870();

      (*v144)(v86, v87);
      v89 = v158;
      v88 = v159;
      v90 = [v148 currentLayoutID];
      v10 = sub_248383960();
      v92 = v91;

      if (v89 == v10 && v88 == v92)
      {

        (*v146)(v43, v85);
        v42 = v151;
LABEL_31:

        v105 = v137;
        goto LABEL_34;
      }

      ++v84;
      v94 = sub_248384680();

      (*v146)(v43, v85);
      v42 = v151;
      v83 = v147;
      if (v94)
      {
        goto LABEL_31;
      }
    }

    v95 = *sub_24827BA50();
    v96 = v142;
    v97 = v135;
    v98 = v139;
    (*(v142 + 16))(v135, v153, v139);
    v99 = v95;
    v100 = sub_248383DC0();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = v98;
      LODWORD(v152) = v100;
      v103 = v101;
      v155 = swift_slowAlloc();
      v158 = v155;
      *v103 = 136315650;
      v104 = v141;
      sub_248382540();
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v105 = v137;
      v106 = sub_248384650();
      v108 = v107;
      v132(v104, v105);
      (*(v96 + 8))(v97, v102);
      v109 = sub_24814A378(v106, v108, &v158);

      *(v103 + 4) = v109;
      *(v103 + 12) = 2080;
      v110 = [v148 currentLayoutID];
      v111 = sub_248383960();
      v113 = v112;

      v114 = sub_24814A378(v111, v113, &v158);

      *(v103 + 14) = v114;
      *(v103 + 22) = 2080;
      v42 = v151;
      v115 = [v151 currentLayoutID];
      v116 = sub_248383960();
      v118 = v117;

      v119 = sub_24814A378(v116, v118, &v158);

      *(v103 + 24) = v119;
      _os_log_impl(&dword_248146000, v99, v152, "[Wallpaper Data Provider] Unknown current layout for: %s. Updated %s to %s", v103, 0x20u);
      v120 = v155;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v120, -1, -1);
      MEMORY[0x24C1CD5F0](v103, -1, -1);
    }

    else
    {

      (*(v96 + 8))(v97, v98);
      v105 = v137;
    }

    v121 = [v42 currentLayoutID];
    v133 = sub_248383960();
    v134 = v122;

LABEL_34:
    v123 = v141;
    if (v157 == 1)
    {
      sub_248382540();
      sub_248381860();
      v132(v123, v105);
      v155 = v158;
      v152 = v160;
      v153 = v159;
      v124 = [v148 homeScreenStyleForLayout];
      sub_248383ED0();
      sub_2483838A0();

      v125 = objc_allocWithZone(MEMORY[0x277CF8A50]);
      v126 = sub_248383930();

      v127 = sub_248383880();
      v128 = sub_248383880();
      v129 = sub_248383880();

      v130 = [v125 initWithCurrentLayoutID:v126 paletteIDForLayout:v127 wallpaperForLayout:v128 homeScreenStyleForLayout:v129];

      sub_24831A03C(v130, v155, v153, &unk_27EE93B40, &unk_2483A1628);
      *v138 = 1;
    }

    else
    {
    }
  }
}

void sub_248318CE8(objc_class *a1, objc_class **a2, void *a3, uint64_t a4, void *a5, _BYTE *a6, NSObject *a7)
{
  v180 = a7;
  v160 = a6;
  v174 = a5;
  v171 = a4;
  v183 = a3;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v153 - v9;
  v167 = sub_2483824B0();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v156 = &v153 - v12;
  v163 = sub_2483825A0();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v155 = &v153 - v15;
  v16 = sub_248382510();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v170 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v169 = &v153 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v153 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v153 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v172 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v175 = &v153 - v31;
  MEMORY[0x28223BE20](v32);
  v178 = &v153 - v33;
  MEMORY[0x28223BE20](v34);
  v165 = &v153 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v153 - v37;
  v176 = a1;
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v39 = *(v28 + 8);
  v181 = v27;
  v182 = v39;
  v179 = v28 + 8;
  v39(v38, v27);
  v154 = a2;
  v40 = *a2;
  if (!*(*a2 + 2))
  {

    goto LABEL_5;
  }

  v41 = sub_24822B8A0(v186, v187);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_5:
    v173 = 0;
    v44 = 0;
    goto LABEL_6;
  }

  v173 = *(*(v40 + 7) + 16 * v41);

LABEL_6:
  v177 = v44;
  sub_248382570();
  v45 = *MEMORY[0x277CF8E48];
  v168 = *(v17 + 104);
  (v168)(v23, v45, v16);
  sub_24832B41C(&qword_27EE93AA0, MEMORY[0x277CF8E58], MEMORY[0x277CF8E68]);
  sub_248383AE0();
  sub_248383AE0();
  if (v186 == v184 && v187 == v185)
  {
    v46 = 1;
  }

  else
  {
    v46 = sub_248384680();
  }

  v47 = *(v17 + 8);
  v47(v23, v16);
  v47(v26, v16);

  if ((v46 & 1) == 0)
  {

    v51 = v176;
    v52 = v182;
    v55 = v183;
    v53 = v181;
    v56 = v178;
    goto LABEL_27;
  }

  v48 = v169;
  sub_248382570();
  v49 = v170;
  (v168)(v170, v45, v16);
  sub_24832B41C(&qword_27EE93B50, MEMORY[0x277CF8E58], MEMORY[0x277CF8E60]);
  v50 = sub_248383910();
  v47(v49, v16);
  v47(v48, v16);
  v51 = v176;
  sub_248322F5C(v173, v177, v176, (v50 & 1) == 0);
  v53 = v181;
  v52 = v182;
  if (v54)
  {

    v55 = v183;
    v56 = v178;
    goto LABEL_27;
  }

  v57 = [v174 paletteIDForLayout];
  v58 = sub_2483838A0();

  v59 = v165;
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v52(v59, v53);
  v56 = v178;
  if (!*(v58 + 16))
  {

    goto LABEL_25;
  }

  v60 = sub_24822B8A0(v186, v187);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_25:

LABEL_26:
    v55 = v183;
    goto LABEL_27;
  }

  v63 = (*(v58 + 56) + 16 * v60);
  v64 = v63[1];
  v171 = *v63;

  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v52(v56, v53);
  v65 = v186;
  v66 = v187;

  v67 = v154;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v67;
  *v67 = 0x8000000000000000;
  v170 = v64;
  sub_24832A2C0(v171, v64, v65, v66, isUniquelyReferenced_nonNull_native);

  *v67 = v184;
  *v160 = 1;
  v69 = *sub_24827BA50();
  v70 = v162;
  v71 = v155;
  v72 = v163;
  (*(v162 + 16))(v155, v183, v163);
  v73 = v166;
  v74 = v156;
  v75 = v167;
  (*(v166 + 16))(v156, v51, v167);
  v76 = v69;
  LODWORD(v169) = sub_248383DC0();
  if (!os_log_type_enabled(v76, v169))
  {

    (*(v73 + 8))(v74, v75);
    (*(v70 + 8))(v71, v72);
    v53 = v181;
    goto LABEL_26;
  }

  v77 = swift_slowAlloc();
  v168 = swift_slowAlloc();
  v186 = v168;
  *v77 = 136315906;
  v78 = v157;
  sub_248382540();
  v79 = MEMORY[0x277CF8B30];
  sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
  v80 = v159;
  v81 = sub_248384650();
  v83 = v82;
  v84 = v78;
  v51 = v176;
  (*(v158 + 8))(v84, v80);
  (*(v70 + 8))(v71, v72);
  v85 = sub_24814A378(v81, v83, &v186);

  *(v77 + 4) = v85;
  *(v77 + 12) = 2080;
  v86 = v178;
  v87 = v156;
  sub_248382450();
  sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80, &unk_24839D9C0, v79);
  v53 = v181;
  v88 = sub_248384650();
  v90 = v89;
  v182(v86, v53);
  (*(v166 + 8))(v87, v167);
  v91 = sub_24814A378(v88, v90, &v186);

  *(v77 + 14) = v91;
  *(v77 + 22) = 2080;
  if (v177)
  {
    v92 = v173;
  }

  else
  {
    v92 = 0x3E6C696E3CLL;
  }

  if (v177)
  {
    v93 = v177;
  }

  else
  {
    v93 = 0xE500000000000000;
  }

  v94 = sub_24814A378(v92, v93, &v186);

  *(v77 + 24) = v94;
  *(v77 + 32) = 2080;
  v52 = v182;
  v95 = sub_24814A378(v171, v170, &v186);

  *(v77 + 34) = v95;
  _os_log_impl(&dword_248146000, v76, v169, "[Wallpaper Data Provider] Unknown palette for: %s:%s. Updated %s to %s", v77, 0x2Au);
  v96 = v168;
  swift_arrayDestroy();
  MEMORY[0x24C1CD5F0](v96, -1, -1);
  v55 = v183;
  MEMORY[0x24C1CD5F0](v77, -1, -1);

  v56 = v86;
LABEL_27:
  v97 = v175;
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v52(v97, v53);
  isa = v180->isa;
  if (*(v180->isa + 2))
  {
    v99 = sub_24822B8A0(v186, v187);
    v101 = v100;

    if (v101)
    {
      v103 = *(*(isa + 7) + 8 * v99);
      swift_unknownObjectRetain();
      goto LABEL_32;
    }
  }

  else
  {
  }

  v103 = 0;
LABEL_32:
  if (sub_24832B2B4(v103, v51, v55, v102))
  {
    goto LABEL_40;
  }

  v104 = [v174 wallpaperForLayout];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628, qword_24839FBC0);
  v105 = sub_2483838A0();

  v106 = v172;
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v52(v106, v53);
  if (!*(v105 + 16))
  {

    goto LABEL_39;
  }

  v107 = sub_24822B8A0(v186, v187);
  v109 = v108;

  if ((v109 & 1) == 0)
  {
LABEL_39:

    goto LABEL_40;
  }

  v110 = *(*(v105 + 56) + 8 * v107);
  swift_unknownObjectRetain();

  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v182(v56, v53);
  v111 = v186;
  v112 = v187;
  swift_unknownObjectRetain();
  v113 = v180;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v184 = v113->isa;
  v113->isa = 0x8000000000000000;
  sub_24832A144(v110, v111, v112, v114);

  v113->isa = v184;
  *v160 = 1;
  v115 = *sub_24827BA50();
  v116 = v162;
  v117 = v161;
  v118 = v163;
  (*(v162 + 16))(v161, v183, v163);
  v119 = v166;
  v120 = v164;
  (*(v166 + 16))(v164, v51, v167);
  v121 = v115;
  v122 = sub_248383DC0();
  if (!os_log_type_enabled(v121, v122))
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v119 + 8))(v120, v167);
    (*(v116 + 8))(v117, v118);
    return;
  }

  LODWORD(v177) = v122;
  v180 = v121;
  v183 = v110;
  v123 = swift_slowAlloc();
  v176 = swift_slowAlloc();
  v186 = v176;
  *v123 = 136315906;
  v124 = v157;
  sub_248382540();
  v175 = MEMORY[0x277CF8B30];
  sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
  v125 = v178;
  v126 = v118;
  v127 = v159;
  v128 = sub_248384650();
  v130 = v129;
  v131 = v127;
  v132 = v123;
  (*(v158 + 8))(v124, v131);
  (*(v116 + 8))(v161, v126);
  v133 = sub_24814A378(v128, v130, &v186);

  *(v123 + 4) = v133;
  *(v123 + 12) = 2080;
  v134 = v164;
  sub_248382450();
  sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80, &unk_24839D9C0, v175);
  v135 = v181;
  v136 = sub_248384650();
  v138 = v137;
  v182(v125, v135);
  (*(v119 + 8))(v134, v167);
  v139 = sub_24814A378(v136, v138, &v186);

  *(v132 + 14) = v139;
  *(v132 + 22) = 2080;
  if (v103)
  {
    v140 = [v103 description];
    v141 = sub_248383960();
    v143 = v142;
  }

  else
  {
    v141 = 0x3E6C696E3CLL;
    v143 = 0xE500000000000000;
  }

  v144 = v183;
  v145 = sub_24814A378(v141, v143, &v186);

  *(v132 + 24) = v145;
  *(v132 + 32) = 2080;
  v146 = [v144 description];
  v147 = sub_248383960();
  v149 = v148;

  v150 = sub_24814A378(v147, v149, &v186);

  *(v132 + 34) = v150;
  v151 = v180;
  _os_log_impl(&dword_248146000, v180, v177, "[Wallpaper Data Provider] Unknown wallpaper for: %s:%s. Updated %s to %s", v132, 0x2Au);
  v152 = v176;
  swift_arrayDestroy();
  MEMORY[0x24C1CD5F0](v152, -1, -1);
  MEMORY[0x24C1CD5F0](v132, -1, -1);
  swift_unknownObjectRelease();

LABEL_40:
  swift_unknownObjectRelease();
}

void sub_248319F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_24832A144(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_24822B8A0(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_24832A5E4();
        v13 = v15;
      }

      swift_unknownObjectRelease();
      sub_24828C6E4(v9, v13);
      *v4 = v13;
    }
  }
}

void sub_24831A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_24832A448(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v5 = v18;
  }

  else
  {
    v13 = sub_24822B8A0(a2, a3);
    v15 = v14;

    if (v15)
    {
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v8;
      v19 = *v8;
      if (!v16)
      {
        sub_24832A8CC(a4, a5);
        v17 = v19;
      }

      sub_24828C6E4(v13, v17);
      *v8 = v17;
    }
  }
}

uint64_t DBThemeController.defaultAppearanceModePreference(for:)(uint64_t a1)
{
  v109 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908E0, qword_2483A14A0);
  MEMORY[0x28223BE20](v1 - 8);
  v101 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = &v98 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v98 - v5;
  v111 = sub_2483824B0();
  v105 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v98 - v8;
  MEMORY[0x28223BE20](v9);
  v99 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v107 = *(v11 - 8);
  v108 = v11;
  MEMORY[0x28223BE20](v11);
  v106 = &v98 - v12;
  v13 = sub_248382510();
  v114 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v121 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = (&v98 - v16);
  v118 = sub_248381690();
  v17 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_248381840();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760, &qword_24839D9B8);
  MEMORY[0x28223BE20](v24 - 8);
  v112 = &v98 - v25;
  v26 = sub_2483825A0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v113 = &v98 - v31;
  DBThemeAssetDocument.document.getter(v23);
  sub_248381830();
  v32 = v20;
  v33 = v26;
  v34 = v27;
  (*(v21 + 8))(v23, v32);
  v35 = sub_248381680();
  result = (*(v17 + 8))(v19, v118);
  v115 = *(v35 + 16);
  if (!v115)
  {
LABEL_8:

    v43 = 1;
    v44 = v112;
    goto LABEL_11;
  }

  v37 = 0;
  v118 = v34 + 16;
  LODWORD(v117) = *MEMORY[0x277CF8E38];
  v116 = (v114 + 13);
  v38 = (v114 + 1);
  v114 = (v34 + 8);
  v119 = v35;
  while (v37 < *(v35 + 16))
  {
    (*(v34 + 16))(v29, v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v37, v33);
    sub_248382570();
    (*v116)(v121, v117, v13);
    sub_24832B41C(&qword_27EE93AA0, MEMORY[0x277CF8E58], MEMORY[0x277CF8E68]);
    sub_248383AE0();
    sub_248383AE0();
    if (v124 == v122 && v125 == v123)
    {
      v45 = *v38;
      (*v38)(v121, v13);
      v45(v120, v13);

LABEL_10:

      v44 = v112;
      (*(v34 + 32))(v112, v29, v33);
      v43 = 0;
LABEL_11:
      (*(v34 + 56))(v44, v43, 1, v33);
      v46 = (*(v34 + 48))(v44, 1, v33);
      v47 = v113;
      if (v46 == 1)
      {
        sub_24822D578(v44, &unk_27EE90760, &qword_24839D9B8);
        v48 = sub_248383DA0();
        v49 = *sub_24827BA50();
        v50 = 2;
        sub_248382A40(v48, &dword_248146000, v49, "[Wallpaper Data Provider] Unable to find center console display", 63, 2, MEMORY[0x277D84F90]);

        return v50;
      }

      (*(v34 + 32))(v113, v44, v33);
      if (sub_248382530())
      {
        (*(v34 + 8))(v47, v33);
        return 2;
      }

      v51 = v106;
      sub_248382540();
      v52 = v108;
      sub_248381860();
      (*(v107 + 8))(v51, v52);
      v53 = v109;
      if (*(v109 + 16))
      {
        v54 = sub_24822B8A0(v124, v125);
        v56 = v55;

        if (v56)
        {
          v57 = *(*(v53 + 56) + 8 * v54);
          v58 = [v57 wallpaperForLayout];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628, qword_24839FBC0);
          v59 = sub_2483838A0();

          v60 = [v57 currentLayoutID];
          v61 = sub_248383960();
          v63 = v62;

          if (*(v59 + 16))
          {
            v64 = sub_24822B8A0(v61, v63);
            v66 = v65;

            if (v66)
            {
              v121 = v57;
              v117 = *(*(v59 + 56) + 8 * v64);
              v118 = v34;
              swift_unknownObjectRetain();

              result = sub_248382590();
              v67 = result;
              v68 = *(result + 16);
              if (v68)
              {
                v69 = 0;
                v119 = v105 + 16;
                v70 = (v102 + 8);
                v120 = (v105 + 8);
                while (1)
                {
                  if (v69 >= *(v67 + 16))
                  {
                    goto LABEL_42;
                  }

                  v71 = v33;
                  (*(v105 + 16))(v110, v67 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v69, v111);
                  v72 = v103;
                  sub_248382450();
                  swift_getKeyPath();
                  v73 = v104;
                  sub_248381870();

                  (*v70)(v72, v73);
                  v75 = v124;
                  v74 = v125;
                  v76 = [v121 currentLayoutID];
                  v77 = sub_248383960();
                  v79 = v78;

                  if (v75 == v77 && v74 == v79)
                  {
                    break;
                  }

                  v81 = sub_248384680();

                  if (v81)
                  {
                    goto LABEL_35;
                  }

                  ++v69;
                  result = (*v120)(v110, v111);
                  v33 = v71;
                  if (v68 == v69)
                  {
                    goto LABEL_28;
                  }
                }

LABEL_35:

                v86 = *(v105 + 32);
                v87 = v98;
                v88 = v111;
                v86(v98, v110, v111);
                v89 = v99;
                v86(v99, v87, v88);
                v90 = sub_248382400();
                MEMORY[0x28223BE20](v90);
                v91 = v113;
                *(&v98 - 4) = v113;
                *(&v98 - 3) = v89;
                *(&v98 - 2) = v117;
                v92 = v100;
                sub_24831B038(sub_24832AA88, v90, MEMORY[0x277CF8F10], v100);

                v93 = v101;
                sub_248232C78(v92, v101, &unk_27EE908E0, qword_2483A14A0);
                v94 = sub_248382770();
                v95 = *(v94 - 8);
                if ((*(v95 + 48))(v93, 1, v94) == 1)
                {
                  sub_24822D578(v92, &unk_27EE908E0, qword_2483A14A0);
                  swift_unknownObjectRelease();

                  sub_24822D578(v93, &unk_27EE908E0, qword_2483A14A0);
                  v96 = v118;
                  goto LABEL_39;
                }

                v97 = sub_2483826E0();
                swift_unknownObjectRelease();

                sub_24822D578(v92, &unk_27EE908E0, qword_2483A14A0);
                (*(v95 + 8))(v93, v94);
                v96 = v118;
                if (v97)
                {
                  v50 = 0;
                }

                else
                {
LABEL_39:
                  v50 = 2;
                }

                (*v120)(v89, v111);
                (*(v96 + 8))(v91, v71);
                return v50;
              }

LABEL_28:

              v82 = sub_248383DA0();
              v83 = *sub_24827BA50();
              v50 = 2;
              sub_248382A40(v82, &dword_248146000, v83, "[Wallpaper Data Provider] Unable to find current layout for center console", 74, 2, MEMORY[0x277D84F90]);

              swift_unknownObjectRelease();
              (*(v118 + 8))(v113, v33);
              return v50;
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v84 = sub_248383DA0();
      v85 = *sub_24827BA50();
      v50 = 2;
      sub_248382A40(v84, &dword_248146000, v85, "[Wallpaper Data Provider] Unable to find theme data for the center console", 74, 2, MEMORY[0x277D84F90]);

      (*(v34 + 8))(v47, v33);
      return v50;
    }

    v39 = sub_248384680();
    v40 = v34;
    v41 = v33;
    v42 = *v38;
    (*v38)(v121, v13);
    v42(v120, v13);
    v33 = v41;
    v34 = v40;

    if (v39)
    {
      goto LABEL_10;
    }

    ++v37;
    result = (*v114)(v29, v33);
    v35 = v119;
    if (v115 == v37)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_24831B038@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

id sub_24831B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = a3;
  v24 = a4;
  v23[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - v14;
  sub_2483826F0();
  sub_248381860();
  (*(v13 + 8))(v15, v12);
  sub_248382540();
  sub_248381860();
  (*(v9 + 8))(v11, v8);
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  (*(v5 + 8))(v7, v4);
  v16 = objc_allocWithZone(MEMORY[0x277CF8A08]);
  v17 = sub_248383930();

  v18 = sub_248383930();

  v19 = sub_248383930();

  v20 = [v16 initWithWallpaperIdentifier:v17 displayID:v18 layoutID:v19];

  v21 = [v20 isEqual_];
  return v21;
}

uint64_t sub_24831B61C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), const char *a4, ...)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760, &qword_24839D9B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_2483825A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24831B910(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24822D578(v10, &unk_27EE90760, &qword_24839D9B8);
    v15 = sub_248383DA0();
    v16 = *sub_24827BA50();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = v16;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_24814A378(a1, a2, &v24);
      _os_log_impl(&dword_248146000, v17, v15, a4, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1CD5F0](v19, -1, -1);
      MEMORY[0x24C1CD5F0](v18, -1, -1);
    }

    v20 = 0;
  }

  else
  {
    v21 = (*(v12 + 32))(v14, v10, v11);
    v20 = a3(v21);
    (*(v12 + 8))(v14, v11);
  }

  return v20 & 1;
}

uint64_t sub_24831B8A8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_248383960();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

uint64_t sub_24831B910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v29 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - v3;
  v5 = sub_2483825A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_248381690();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_248381840();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  DBThemeAssetDocument.document.getter(v15);
  sub_248381830();
  (*(v13 + 8))(v15, v12);
  v16 = v5;
  v17 = sub_248381680();
  result = (*(v9 + 8))(v11, v31);
  v30 = *(v17 + 16);
  if (v30)
  {
    v19 = 0;
    v31 = v6 + 16;
    v20 = (v28 + 8);
    while (v19 < *(v17 + 16))
    {
      v21 = v16;
      (*(v6 + 16))(v8, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v16);
      sub_248382540();
      v22 = v32;
      sub_248381860();
      (*v20)(v4, v22);
      if (v35 == v33 && v36 == v34)
      {

LABEL_12:

        v26 = v29;
        v16 = v21;
        (*(v6 + 32))(v29, v8, v21);
        v25 = 0;
        return (*(v6 + 56))(v26, v25, 1, v16);
      }

      v24 = sub_248384680();

      if (v24)
      {
        goto LABEL_12;
      }

      ++v19;
      v16 = v21;
      result = (*(v6 + 8))(v8, v21);
      if (v30 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v25 = 1;
    v26 = v29;
    return (*(v6 + 56))(v26, v25, 1, v16);
  }

  return result;
}

void *sub_24831BD18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v130 = a4;
  v133 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v127 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v126 = &v112 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v132 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v117 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908E0, qword_2483A14A0);
  MEMORY[0x28223BE20](v13 - 8);
  v119 = &v112 - v14;
  v121 = sub_248382770();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30, &unk_2483A14F0);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = &v112 - v17;
  v18 = sub_2483824B0();
  v19 = *(v18 - 8);
  v123 = v18;
  v124 = v19;
  MEMORY[0x28223BE20](v18);
  v128 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_248381690();
  v131 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v116 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v112 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760, &qword_24839D9B8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v112 - v26;
  v28 = sub_2483825A0();
  v29 = *(v28 - 8);
  v135 = v28;
  v136 = v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v134 = &v112 - v33;
  sub_248381860();
  if (!*(a1 + 16))
  {

LABEL_7:
    v43 = sub_248383DA0();
    v44 = *sub_24827BA50();
    v45 = v132;
    (*(v132 + 16))(v10, a3, v8);
    if (os_log_type_enabled(v44, v43))
    {
      v46 = v44;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v138 = v48;
      *v47 = 136315394;
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v49 = sub_248384650();
      v51 = v50;
      (*(v45 + 8))(v10, v8);
      v52 = sub_24814A378(v49, v51, &v138);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      sub_24814FB28(0, &qword_27EE8FEF8, 0x277CF8A50);
      v53 = sub_2483838B0();
      v55 = sub_24814A378(v53, v54, &v138);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_248146000, v46, v43, "[Wallpaper Data Provider] Unable to find display, %s, in themeData: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v48, -1, -1);
      MEMORY[0x24C1CD5F0](v47, -1, -1);
    }

    else
    {
      (*(v45 + 8))(v10, v8);
    }

    return 0;
  }

  v125 = v6;
  v34 = a1;
  v35 = sub_24822B8A0(v138, v139);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    goto LABEL_7;
  }

  v114 = *(*(v34 + 56) + 8 * v35);
  v38 = [v114 wallpaperForLayout];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628, qword_24839FBC0);
  v39 = sub_2483838A0();

  swift_getKeyPath();
  sub_248381870();

  if (*(v39 + 16))
  {
    v40 = sub_24822B8A0(v138, v139);
    v42 = v41;

    if (v42)
    {
      v115 = *(*(v39 + 56) + 8 * v40);
      swift_unknownObjectRetain();

      goto LABEL_12;
    }
  }

  else
  {
  }

  v115 = 0;
LABEL_12:
  v56 = v34;
  sub_248381830();
  v57 = sub_248381680();
  v58 = v131 + 8;
  v113 = *(v131 + 8);
  v59 = v113(v24, v129);
  MEMORY[0x28223BE20](v59);
  *(&v112 - 2) = a3;
  sub_24831B038(sub_24832AABC, v57, MEMORY[0x277CF8E90], v27);

  v61 = v135;
  v60 = v136;
  v62 = (*(v136 + 48))(v27, 1, v135);
  v63 = v128;
  v64 = v134;
  if (v62 == 1)
  {
    sub_24822D578(v27, &unk_27EE90760, &qword_24839D9B8);
    goto LABEL_18;
  }

  v112 = v56;
  v131 = v58;
  (*(v60 + 32))(v134, v27, v61);
  v65 = v64;
  v66 = v60;
  v67 = sub_248382590();
  MEMORY[0x28223BE20](v67);
  *(&v112 - 2) = v133;
  v68 = v122;
  sub_24831B038(sub_24832AB18, v67, MEMORY[0x277CF8E08], v122);

  v69 = v68;
  v70 = v124;
  v71 = v68;
  v72 = v123;
  if ((*(v124 + 48))(v71, 1, v123) == 1)
  {
    sub_24822D578(v69, &qword_27EE8FE30, &unk_2483A14F0);
    (*(v66 + 8))(v65, v61);
    goto LABEL_18;
  }

  (*(v70 + 32))(v63, v69, v72);
  v73 = sub_248382400();
  MEMORY[0x28223BE20](v73);
  *(&v112 - 4) = v65;
  *(&v112 - 3) = v63;
  *(&v112 - 2) = v115;
  v74 = v119;
  sub_24831B038(sub_24832AA88, v73, MEMORY[0x277CF8F10], v119);

  v75 = v120;
  v76 = v121;
  if ((*(v120 + 48))(v74, 1, v121) == 1)
  {
    sub_24822D578(v74, &unk_27EE908E0, qword_2483A14A0);
    (*(v124 + 8))(v63, v72);
    (*(v136 + 8))(v65, v135);
LABEL_18:
    v77 = sub_248383DA0();
    v78 = *sub_24827BA50();
    v80 = v126;
    v79 = v127;
    v81 = v125;
    (*(v127 + 16))(v126, v133, v125);
    v82 = os_log_type_enabled(v78, v77);
    v83 = v115;
    if (v82)
    {
      v84 = v78;
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v138 = v86;
      *v85 = 136315394;
      if (v83)
      {
        v87 = [v83 identifier];
        v88 = sub_248383960();
        LODWORD(v136) = v77;
        v89 = v88;
        v91 = v90;

        LOBYTE(v77) = v136;
      }

      else
      {
        v91 = 0xE500000000000000;
        v89 = 0x3E6C696E3CLL;
      }

      v92 = sub_24814A378(v89, v91, &v138);

      *(v85 + 4) = v92;
      *(v85 + 12) = 2080;
      sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80, &unk_24839D9C0, MEMORY[0x277CF8B30]);
      v93 = sub_248384650();
      v95 = v94;
      (*(v79 + 8))(v80, v81);
      v96 = sub_24814A378(v93, v95, &v138);

      *(v85 + 14) = v96;
      _os_log_impl(&dword_248146000, v84, v77, "[Wallpaper Data Provider] Unable to find wallpaper, %s, on layout: %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v86, -1, -1);
      MEMORY[0x24C1CD5F0](v85, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v79 + 8))(v80, v81);
    }

    return 0;
  }

  v98 = v118;
  (*(v75 + 32))(v118, v74, v76);
  v99 = v112;
  v137 = v112;

  v100 = v117;
  sub_248382540();
  sub_248381860();
  (*(v132 + 8))(v100, v8);
  v101 = v138;
  v102 = v139;
  swift_getKeyPath();
  sub_248381870();

  v103 = sub_248383930();

  v104 = [v114 themeDataWithCurrentLayoutID_];

  sub_24831A03C(v104, v101, v102, &unk_27EE93B40, &unk_2483A1628);
  v105 = v116;
  sub_248381830();
  v106 = sub_248381680();
  v113(v105, v129);
  v107 = *(v106 + 16);
  if (v107)
  {
    v108 = 0;
    v109 = v135;
    v110 = (v136 + 8);
    while (v108 < *(v106 + 16))
    {
      (*(v136 + 16))(v31, v106 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v108, v109);
      sub_24831CF54(v31, v134, v99, v98, &v137);
      ++v108;
      (*v110)(v31, v109);
      if (v107 == v108)
      {
        goto LABEL_30;
      }
    }

    __break(1u);

    result = (*v110)(v31, v109);
    __break(1u);
  }

  else
  {
LABEL_30:
    (*(v120 + 8))(v98, v121);

    swift_unknownObjectRelease();
    v111 = v137;
    (*(v124 + 8))(v128, v123);
    (*(v136 + 8))(v134, v135);
    return v111;
  }

  return result;
}

uint64_t sub_24831CCF4(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  sub_248382450();
  sub_24822D648(&unk_27EE90200, &qword_27EE90A80, &unk_24839D9C0, MEMORY[0x277CF8B20]);
  sub_248383AE0();
  sub_248383AE0();
  sub_24832B41C(&unk_27EE91CE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v13 = sub_248383910();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v13 & 1;
}

void sub_24831CF54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v114 = a5;
  v129 = a4;
  v126 = a3;
  v140 = a2;
  v132 = sub_2483825A0();
  v125 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v128 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v110 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908E0, qword_2483A14A0);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v110 - v9;
  v133 = sub_248382770();
  v130 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v110 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v120 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v113 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v134 = &v110 - v15;
  v16 = sub_2483824B0();
  v138 = *(v16 - 8);
  v139 = v16;
  MEMORY[0x28223BE20](v16);
  v143 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v137 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v121 = &v110 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v110 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v110 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - v33;
  v127 = a1;
  sub_248382540();
  sub_248382540();
  sub_24822D648(&qword_27EE904D8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B20]);
  sub_248383AE0();
  v140 = v20;
  sub_248383AE0();
  v112 = v23;
  if (v142 == v141)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_248384680();
  }

  v36 = *(v21 + 8);
  v37 = v140;
  v36(v31, v140);
  v38 = v34;
  v39 = v37;
  v40 = v21 + 8;
  v41 = v36;
  v36(v38, v39);

  if (v35)
  {
    return;
  }

  v42 = v127;
  sub_248382540();
  sub_248381860();
  v111 = v41;
  v41(v28, v39);
  v43 = v126;
  if (!v126[2])
  {

    v47 = v128;
    goto LABEL_18;
  }

  v44 = sub_24822B8A0(v142, *(&v142 + 1));
  v46 = v45;

  v47 = v128;
  if ((v46 & 1) == 0)
  {
LABEL_18:
    v64 = v132;
    v62 = v133;
    v63 = v130;
    v65 = v131;
    v66 = v125;
LABEL_23:
    (*(v66 + 16))(v47, v42, v64);
    (*(v63 + 16))(v65, v129, v62);
    sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
    v72 = v64;
    v73 = v65;
    v74 = sub_2483841B0();
    v75 = sub_248383DC0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      LODWORD(v139) = v75;
      v77 = v76;
      v143 = swift_slowAlloc();
      *&v142 = v143;
      *v77 = 136315394;
      v78 = v47;
      v79 = v121;
      v138 = v74;
      sub_248382540();
      v80 = MEMORY[0x277CF8B30];
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v81 = v140;
      v82 = sub_248384650();
      v84 = v83;
      v111(v79, v81);
      (*(v66 + 8))(v78, v132);
      v85 = sub_24814A378(v82, v84, &v142);

      *(v77 + 4) = v85;
      *(v77 + 12) = 2080;
      v86 = v122;
      v87 = v131;
      sub_2483826F0();
      sub_24822D648(&qword_27EE93B38, &unk_27EE90780, &unk_24839DA00, v80);
      v88 = v124;
      v89 = sub_248384650();
      v91 = v90;
      (*(v123 + 8))(v86, v88);
      (*(v63 + 8))(v87, v133);
      v92 = sub_24814A378(v89, v91, &v142);

      *(v77 + 14) = v92;
      v93 = v138;
      _os_log_impl(&dword_248146000, v138, v139, "Failed to find matching wallpaper for display %s: %s", v77, 0x16u);
      v94 = v143;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v94, -1, -1);
      MEMORY[0x24C1CD5F0](v77, -1, -1);
    }

    else
    {

      (*(v63 + 8))(v73, v62);
      (*(v66 + 8))(v47, v72);
    }

    return;
  }

  v110 = v40;
  v126 = *(v43[7] + 8 * v44);
  v48 = sub_248382590();
  v49 = v139;
  v117 = *(v48 + 16);
  if (!v117)
  {
LABEL_16:

    v62 = v133;
    v63 = v130;
LABEL_22:
    v65 = v131;
    v64 = v132;
    v66 = v125;
    goto LABEL_23;
  }

  v50 = 0;
  v118 = v138 + 2;
  ++v120;
  v119 = v138 + 1;
  while (1)
  {
    if (v50 >= *(v48 + 16))
    {
      __break(1u);
      return;
    }

    v51 = v48;
    (v138[2].isa)(v143, v48 + ((LOBYTE(v138[10].isa) + 32) & ~LOBYTE(v138[10].isa)) + v138[9].isa * v50, v49);
    v52 = v134;
    sub_248382450();
    swift_getKeyPath();
    v53 = v135;
    sub_248381870();

    v128 = *v120;
    (v128)(v52, v53);
    v54 = v142;
    v55 = [v126 currentLayoutID];
    v56 = sub_248383960();
    v58 = v57;

    if (v54 == v56 && *(&v54 + 1) == v58)
    {
      break;
    }

    v60 = sub_248384680();

    v61 = v137;
    if (v60)
    {
      goto LABEL_20;
    }

    ++v50;
    v49 = v139;
    (v119->isa)(v143, v139);
    v48 = v51;
    if (v117 == v50)
    {
      goto LABEL_16;
    }
  }

  v61 = v137;
LABEL_20:

  v67 = v139;
  (v138[4].isa)(v61, v143, v139);
  v68 = sub_248382400();
  MEMORY[0x28223BE20](v68);
  *(&v110 - 2) = v129;
  v69 = v115;
  v70 = v136;
  sub_24831B038(sub_24832B180, v68, MEMORY[0x277CF8F10], v115);
  v136 = v70;

  v63 = v130;
  v71 = v61;
  v62 = v133;
  if ((*(v130 + 48))(v69, 1, v133) == 1)
  {
    (v119->isa)(v71, v67);

    sub_24822D578(v69, &unk_27EE908E0, qword_2483A14A0);
    goto LABEL_22;
  }

  (*(v63 + 32))(v116, v69, v62);
  v95 = v121;
  sub_248382540();
  v96 = v140;
  sub_248381860();
  v97 = v111;
  v111(v95, v96);
  v143 = *(&v142 + 1);
  v134 = v142;
  v98 = v122;
  sub_2483826F0();
  v99 = v124;
  sub_248381860();
  (*(v123 + 8))(v98, v99);
  v138 = v141;
  v100 = v112;
  sub_248382540();
  sub_248381860();
  v97(v100, v96);
  v101 = v113;
  sub_248382450();
  swift_getKeyPath();
  v102 = v135;
  sub_248381870();

  (v128)(v101, v102);
  v103 = objc_allocWithZone(MEMORY[0x277CF8A08]);
  v104 = sub_248383930();

  v105 = sub_248383930();

  v106 = sub_248383930();

  v107 = [v103 initWithWallpaperIdentifier:v104 displayID:v105 layoutID:v106];

  v108 = v126;
  v109 = [v126 themeDataWithCurrentWallpaper_];

  sub_24831A03C(v109, v134, v143, &unk_27EE93B40, &unk_2483A1628);
  (*(v130 + 8))(v116, v133);
  (v119->isa)(v137, v139);
}

uint64_t sub_24831DE68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  sub_2483826F0();
  sub_2483826F0();
  sub_24822D648(&qword_27EE93B20, &unk_27EE90780, &unk_24839DA00, MEMORY[0x277CF8B20]);
  sub_248383AE0();
  sub_248383AE0();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_248384680();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

unint64_t sub_24831E034()
{
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v107 = &v96 - v1;
  v2 = sub_248382510();
  v114 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v121 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v120 = &v96 - v5;
  v113 = sub_248381690();
  v6 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v103 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v96 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v96 - v11;
  v13 = sub_248381840();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v102 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v96 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760, &qword_24839D9B8);
  MEMORY[0x28223BE20](v21 - 8);
  v108 = &v96 - v22;
  v23 = sub_2483825A0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v124 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v97 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  MEMORY[0x28223BE20](v31);
  v112 = &v96 - v32;
  v122 = v0;
  v104 = *(v0 + OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument);
  DBThemeAssetDocument.document.getter(v20);
  sub_248381830();
  v33 = *(v14 + 8);
  v110 = v13;
  v109 = v14 + 8;
  v105 = v33;
  v33(v20, v13);
  v34 = sub_248381680();
  v35 = *(v6 + 8);
  v111 = v6 + 8;
  v106 = v35;
  v35(v12, v113);
  v36 = v34;
  v37 = *(v34 + 16);
  v123 = v23;
  v119 = v24;
  v115 = v37;
  if (v37)
  {
    v38 = 0;
    v117 = v24 + 16;
    v116 = *MEMORY[0x277CF8E48];
    v39 = (v114 + 13);
    v40 = (v114 + 1);
    v114 = (v24 + 8);
    v118 = v36;
    v41 = v120;
    while (v38 < *(v36 + 16))
    {
      (*(v24 + 16))(v30, v36 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v38, v23);
      sub_248382570();
      (*v39)(v121, v116, v2);
      sub_24832B41C(&qword_27EE93AA0, MEMORY[0x277CF8E58], MEMORY[0x277CF8E68]);
      sub_248383AE0();
      sub_248383AE0();
      v20 = v128;
      if (v127 == v125 && v128 == v126)
      {
        v46 = *v40;
        (*v40)(v121, v2);
        v46(v120, v2);

LABEL_10:

        v45 = v108;
        v23 = v123;
        (*(v24 + 32))(v108, v30, v123);
        v44 = 0;
        goto LABEL_11;
      }

      v42 = sub_248384680();
      v43 = *v40;
      (*v40)(v121, v2);
      v43(v120, v2);
      v24 = v119;

      if (v42)
      {
        goto LABEL_10;
      }

      ++v38;
      v23 = v123;
      (*v114)(v30, v123);
      v36 = v118;
      if (v115 == v38)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);

    result = (*v40)(v41, v39);
    __break(1u);
    return result;
  }

LABEL_8:

  v44 = 1;
  v45 = v108;
LABEL_11:
  (*(v24 + 56))(v45, v44, 1, v23);
  v47 = (*(v24 + 48))(v45, 1, v23);
  v48 = v112;
  if (v47 == 1)
  {
    sub_24822D578(v45, &unk_27EE90760, &qword_24839D9B8);
LABEL_23:
    v75 = v107;
    v76 = v113;
    v77 = v110;
    goto LABEL_28;
  }

  (*(v24 + 32))(v112, v45, v23);
  v49 = sub_248320B64(v48);
  if (!v49)
  {
    (*(v24 + 8))(v48, v23);
    goto LABEL_23;
  }

  v50 = v49;
  v51 = [v49 wallpaperForLayout];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628, qword_24839FBC0);
  v52 = sub_2483838A0();

  v53 = [v50 currentLayoutID];
  v54 = sub_248383960();
  v56 = v55;

  v39 = v107;
  if (*(v52 + 16))
  {
    sub_24822B8A0(v54, v56);
    v58 = v57;

    if (v58)
    {
      swift_unknownObjectRetain();

      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (v59)
      {
        v60 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93B58, &qword_2483A1638);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24839C7F0;
        sub_248382540();
        v62 = v48;
        v63 = v100;
        sub_248381860();
        (*(v101 + 8))(v39, v63);
        *(inited + 48) = v50;
        v124 = v50;
        v64 = sub_24832B1B0(inited);
        swift_setDeallocating();
        sub_24822D578(inited + 32, &qword_27EE93B60, &qword_2483A1640);
        v127 = v64;
        v65 = v98;
        DBThemeAssetDocument.document.getter(v98);
        v66 = v99;
        sub_248381830();
        v105(v65, v110);
        v67 = sub_248381680();
        v68 = v106(v66, v113);
        MEMORY[0x28223BE20](v68);
        *(&v96 - 2) = v62;
        v20 = 0;
        sub_24831F188(sub_24832B490, (&v96 - 4), v67);
        v70 = v69;
        v71 = *(v69 + 16);
        v41 = v97;
        if (!v71)
        {
LABEL_21:
          swift_unknownObjectRelease();

          v73 = v127;
          (*(v119 + 8))(v112, v123);
          return v73;
        }

        v72 = 0;
        v40 = (v119 + 8);
        while (v72 < *(v70 + 16))
        {
          v39 = v123;
          (*(v119 + 16))(v41, v70 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v72, v123);
          sub_24831F458(v41, v60, &v127);
          ++v72;
          (*v40)(v41, v39);
          if (v71 == v72)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_36;
      }

      v75 = v39;

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    v75 = v39;
  }

  else
  {
    v75 = v107;
  }

LABEL_27:
  v76 = v113;
  v77 = v110;
  v24 = v119;
  (*(v119 + 8))(v112, v23);
LABEL_28:
  v78 = sub_248383DA0();
  v79 = *sub_24827BA50();
  sub_248382A40(v78, &dword_248146000, v79, "[Wallpaper Data Provider] Unable to create theme data for cluster display", 73, 2, MEMORY[0x277D84F90]);

  v80 = v102;
  DBThemeAssetDocument.document.getter(v102);
  v81 = v103;
  sub_248381830();
  v105(v80, v77);
  v82 = sub_248381680();
  v106(v81, v76);
  v125 = MEMORY[0x277D84F98];
  v83 = *(v82 + 16);
  if (v83)
  {
    v121 = *(v24 + 16);
    v84 = v100;
    v85 = v75;
    v86 = v24 + 16;
    v87 = v82 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v88 = *(v86 + 56);
    v119 = v82;
    v120 = v88;
    v89 = (v101 + 8);
    v90 = (v86 - 8);
    v91 = v124;
    do
    {
      (v121)(v91, v87, v23);
      sub_248382540();
      sub_248381860();
      (*v89)(v85, v84);
      v92 = v127;
      v93 = v128;
      v94 = sub_248320B64(v124);
      v95 = v93;
      v23 = v123;
      sub_24831A03C(v94, v92, v95, &unk_27EE93B40, &unk_2483A1628);
      v91 = v124;
      (*v90)(v124, v23);
      v87 += v120;
      --v83;
    }

    while (v83);

    return v125;
  }

  else
  {

    return MEMORY[0x277D84F98];
  }
}

void sub_24831EE30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, unint64_t), uint64_t a5, uint64_t a6)
{
  v12[2] = a3;
  v9 = 0;
  v12[0] = a1;
  v12[1] = a2;
  v10 = *(a6 + 16);
  while (v10 != v9)
  {
    v11 = *(sub_2483824B0() - 8);
    a4(v12, a6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++);
    if (v6)
    {

      return;
    }
  }
}

void sub_24831EF30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, unint64_t), uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v8 = 0;
  v11[0] = a1;
  v9 = *(a5 + 16);
  while (v9 != v8)
  {
    v10 = *(sub_2483824B0() - 8);
    a3(v11, a5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
    if (v5)
    {

      return;
    }
  }
}

BOOL sub_24831F024()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_248382540();
  sub_248382540();
  sub_24832B5EC(&qword_27EE93B70, &qword_27EE8FED8, &qword_24839D9B0);
  v7 = sub_248383910();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

void sub_24831F188(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_2483825A0();
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24832AB48(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24832AB48((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

void sub_24831F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v75 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v75 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - v5;
  v88 = sub_2483825A0();
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2483817E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v90 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v75 - v11;
  MEMORY[0x28223BE20](v12);
  v105 = &v75 - v13;
  MEMORY[0x28223BE20](v14);
  v104 = (&v75 - v15);
  v16 = sub_2483824B0();
  isa = v16[-1].isa;
  v107 = v16;
  MEMORY[0x28223BE20](v16);
  v91 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = &v75 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v23);
  v80 = &v75 - v24;
  v86 = a1;
  v25 = sub_248382590();
  v92 = *(v25 + 16);
  if (v92)
  {
    v26 = 0;
    v103 = isa + 16;
    v102 = *MEMORY[0x277CF8AF8];
    v100 = (v8 + 8);
    v101 = (v8 + 104);
    v93 = (isa + 8);
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v27 = *(isa + 9);
      v95 = (*(isa + 80) + 32) & ~*(isa + 80);
      v28 = v25;
      v99 = v27;
      v98 = *(isa + 2);
      v98(v22, v25 + v95 + v27 * v26, v107);
      sub_2483823F0();
      v97 = *v101;
      v97(v105, v102, v7);
      v29 = sub_24832B41C(&qword_27EE93B08, MEMORY[0x277CF8B00], MEMORY[0x277CF8B08]);
      sub_248383AE0();
      v96 = v29;
      sub_248383AE0();
      if (v110 == v108 && v111 == v109)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_248384680();
      }

      v31 = *v100;
      (*v100)(v105, v7);
      v31(v104, v7);

      if (v30)
      {
        break;
      }

      ++v26;
      (*v93)(v22, v107);
      v25 = v28;
      if (v92 == v26)
      {
        goto LABEL_10;
      }
    }

    v47 = *(isa + 4);
    isa = (isa + 32);
    v104 = v47;
    v47(v80, v22, v107);
    v48 = sub_248382590();
    v49 = v48;
    v92 = *(v48 + 16);
    if (v92)
    {
      v50 = 0;
      v51 = v48 + v95;
      v52 = MEMORY[0x277D84F90];
      v53 = v90;
      v54 = v89;
      v88 = v48;
      while (1)
      {
        if (v50 >= *(v49 + 16))
        {
          goto LABEL_33;
        }

        v105 = v52;
        v98(v94, v51, v107);
        sub_2483823F0();
        v97(v53, v102, v7);
        sub_248383AE0();
        sub_248383AE0();
        if (v110 == v108 && v111 == v109)
        {
          break;
        }

        v57 = sub_248384680();
        v31(v53, v7);
        v31(v54, v7);

        if (v57)
        {
          goto LABEL_25;
        }

        (*v93)(v94, v107);
        v55 = v99;
        v49 = v88;
        v52 = v105;
LABEL_16:
        ++v50;
        v51 += v55;
        v53 = v90;
        v54 = v89;
        if (v92 == v50)
        {
          goto LABEL_31;
        }
      }

      v31(v53, v7);
      v31(v54, v7);

LABEL_25:
      v104(v91, v94, v107);
      v52 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24832AA28(0, *(v52 + 16) + 1, 1);
        v52 = v112;
      }

      v49 = v88;
      v60 = *(v52 + 16);
      v59 = *(v52 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_24832AA28((v59 > 1), v60 + 1, 1);
        v52 = v112;
      }

      *(v52 + 16) = v60 + 1;
      v55 = v99;
      v104((v52 + v95 + v60 * v99), v91, v107);
      goto LABEL_16;
    }

    v52 = MEMORY[0x277D84F90];
LABEL_31:

    MEMORY[0x28223BE20](v61);
    v62 = v86;
    *(&v75 - 2) = v75;
    *(&v75 - 1) = v62;
    v63 = v87;
    sub_24831EF30(MEMORY[0x277D84F98], MEMORY[0x277D84F98], sub_24832B4C0, (&v75 - 4), v52);
    v87 = v63;

    v64 = v81;
    sub_248382540();
    v65 = v83;
    sub_248381860();
    (*(v82 + 8))(v64, v65);
    v105 = v111;
    isa = v110;
    v66 = v76;
    v67 = v80;
    sub_248382450();
    swift_getKeyPath();
    v68 = v78;
    sub_248381870();

    (*(v77 + 8))(v66, v68);
    v69 = objc_allocWithZone(MEMORY[0x277CF8A50]);
    v70 = sub_248383930();

    v71 = sub_248383880();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628, qword_24839FBC0);
    v72 = sub_248383880();

    sub_248383ED0();
    v73 = sub_248383880();

    v74 = [v69 initWithCurrentLayoutID:v70 paletteIDForLayout:v71 wallpaperForLayout:v72 homeScreenStyleForLayout:v73];

    sub_24831A03C(v74, isa, v105, &unk_27EE93B40, &unk_2483A1628);
    (*v93)(v67, v107);
  }

  else
  {
LABEL_10:

    v32 = sub_248383DA0();
    v33 = *sub_24827BA50();
    v34 = v85;
    v35 = v84;
    v36 = v88;
    (*(v85 + 16))(v84, v86, v88);
    if (os_log_type_enabled(v33, v32))
    {
      v107 = v33;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v110 = v38;
      *v37 = 136315138;
      v39 = v81;
      sub_248382540();
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v40 = v83;
      v41 = sub_248384650();
      LODWORD(isa) = v32;
      v42 = v35;
      v44 = v43;
      (*(v82 + 8))(v39, v40);
      (*(v34 + 8))(v42, v36);
      v45 = sub_24814A378(v41, v44, &v110);

      *(v37 + 4) = v45;
      v46 = v107;
      _os_log_impl(&dword_248146000, v107, isa, "[Wallpaper Data Provider] Unable to find a primary layout for display: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1CD5F0](v38, -1, -1);
      MEMORY[0x24C1CD5F0](v37, -1, -1);
    }

    else
    {
      (*(v34 + 8))(v35, v36);
    }
  }
}

void sub_248320120(uint64_t a1, char *a2, void *a3, char *a4)
{
  v55 = a4;
  v70 = a3;
  v57 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v5 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v53 - v6;
  v7 = sub_248382770();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908E0, qword_2483A14A0);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v61 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v20 = *(v15 + 8);
  v62 = v15 + 8;
  v63 = v14;
  v60 = v20;
  v20(v19, v14);
  v58 = v74;
  v59 = v73;
  v56 = a2;
  v21 = sub_248382400();
  v65 = *(v21 + 16);
  if (v65)
  {
    v22 = 0;
    v66 = (v5 + 8);
    v67 = v8 + 16;
    v64 = (v8 + 8);
    while (v22 < *(v21 + 16))
    {
      v23 = v21;
      v24 = v8;
      v25 = v7;
      (*(v8 + 16))(v75, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v7);
      v26 = v68;
      sub_2483826F0();
      v27 = v69;
      sub_248381860();
      (*v66)(v26, v27);
      v29 = v71;
      v28 = v72;
      v30 = [v70 wallpaperID];
      v31 = sub_248383960();
      v33 = v32;

      v34 = v29 == v31 && v28 == v33;
      if (v34)
      {

LABEL_16:

        v47 = *(v24 + 32);
        v48 = v53;
        v47(v53, v75, v25);
        v49 = *(v24 + 56);
        v49(v48, 0, 1, v25);
        v44 = v54;
        v47(v54, v48, v25);
        v46 = (v49)(v44, 0, 1, v25);
        v39 = v56;
        v45 = v55;
        goto LABEL_17;
      }

      v35 = sub_248384680();

      if (v35)
      {
        goto LABEL_16;
      }

      ++v22;
      v7 = v25;
      (*v64)(v75, v25);
      v8 = v24;
      v21 = v23;
      if (v65 == v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v36 = *(v8 + 56);
    v37 = 1;
    v38 = v53;
    v36(v53, 1, 1, v7);
    v39 = v56;
    v40 = sub_248382400();
    if (*(v40 + 16))
    {
      v41 = *(v8 + 16);
      v42 = v40 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v43 = v8;
      v44 = v54;
      v41(v54, v42, v7);
      v37 = 0;
      v45 = v55;
    }

    else
    {
      v45 = v55;
      v43 = v8;
      v44 = v54;
    }

    v36(v44, v37, 1, v7);
    v34 = (*(v43 + 48))(v38, 1, v7) == 1;
    v46 = v38;
    if (!v34)
    {
      v46 = sub_24822D578(v38, &unk_27EE908E0, qword_2483A14A0);
    }

LABEL_17:
    MEMORY[0x28223BE20](v46);
    *(&v53 - 2) = v45;
    *(&v53 - 1) = v39;
    v50 = sub_248316920(sub_24832B464, (&v53 - 4), MEMORY[0x277CF8F10], &unk_27EE908E0, qword_2483A14A0);
    sub_24822D578(v44, &unk_27EE908E0, qword_2483A14A0);
    sub_248319F44(v50, v59, v58);
    v51 = v61;
    sub_248382450();
    swift_getKeyPath();
    v52 = v63;
    sub_248381870();

    v60(v51, v52);
    sub_24831A03C([objc_allocWithZone(MEMORY[0x277CF8A60]) initWithStyleType:2 styleVariant:2], v73, v74, &qword_27EE93B10, &qword_2483A15F0);
  }
}

void sub_24832084C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v20[1] = a1;
  v20[2] = a2;
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  sub_2483826F0();
  sub_248381860();
  (*(v12 + 8))(v14, v11);
  sub_248382540();
  sub_248381860();
  (*(v8 + 8))(v10, v7);
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  (*(v4 + 8))(v6, v3);
  v15 = objc_allocWithZone(MEMORY[0x277CF8A08]);
  v16 = sub_248383930();

  v17 = sub_248383930();

  v18 = sub_248383930();

  v19 = [v15 initWithWallpaperIdentifier:v16 displayID:v17 layoutID:v18];

  *v21 = v19;
}

char *sub_248320B64(uint64_t a1)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v102 - v2;
  v114 = sub_2483825A0();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v116 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v103 = &v102 - v5;
  MEMORY[0x28223BE20](v6);
  v104 = &v102 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v102 - v8;
  v9 = sub_2483817E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v118 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v117 = &v102 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  v20 = sub_2483824B0();
  isa = v20[-1].isa;
  v134 = v20;
  MEMORY[0x28223BE20](v20);
  v119 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v123 = &v102 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v102 - v25;
  MEMORY[0x28223BE20](v27);
  v112 = &v102 - v28;
  v115 = a1;
  result = sub_248382590();
  v121 = *(result + 2);
  if (v121)
  {
    v30 = 0;
    v132 = isa + 2;
    v131 = *MEMORY[0x277CF8AF8];
    v129 = v10 + 8;
    v130 = (v10 + 104);
    v122 = isa + 1;
    v120 = result;
    v31 = (v10 + 8);
    while (v30 < *(result + 2))
    {
      v32 = isa[9].isa;
      v124 = (LOBYTE(isa[10].isa) + 32) & ~LOBYTE(isa[10].isa);
      v128 = v32;
      v127 = isa[2].isa;
      (v127)(v26, &result[v124 + v32 * v30], v134);
      sub_2483823F0();
      v126 = *v130;
      v126(v16, v131, v9);
      v33 = sub_24832B41C(&qword_27EE93B08, MEMORY[0x277CF8B00], MEMORY[0x277CF8B08]);
      sub_248383AE0();
      v125 = v33;
      sub_248383AE0();
      if (v138 == v136 && v139 == v137)
      {
        v34 = 1;
      }

      else
      {
        v34 = sub_248384680();
      }

      v35 = *v31;
      (*v31)(v16, v9);
      v35(v19, v9);

      if (v34)
      {

        v51 = isa[4].isa;
        isa += 4;
        v121 = v51;
        (v51)(v112, v26, v134);
        v52 = v106;
        sub_248382450();
        swift_getKeyPath();
        v53 = v108;
        sub_248381870();

        (*(v107 + 8))(v52, v53);
        v107 = v138;
        v108 = v139;
        result = sub_248382590();
        v54 = result;
        v120 = *(result + 2);
        if (v120)
        {
          v55 = 0;
          v56 = &result[v124];
          v57 = MEMORY[0x277D84F90];
          v58 = v118;
          v59 = v117;
          v116 = result;
          while (1)
          {
            if (v55 >= *(v54 + 16))
            {
              goto LABEL_43;
            }

            (v127)(v123, v56, v134);
            sub_2483823F0();
            v126(v58, v131, v9);
            sub_248383AE0();
            sub_248383AE0();
            if (v138 == v136 && v139 == v137)
            {
              break;
            }

            v62 = sub_248384680();
            v35(v58, v9);
            v35(v59, v9);

            if (v62)
            {
              goto LABEL_25;
            }

            result = (v122->isa)(v123, v134);
            v60 = v128;
            v54 = v116;
LABEL_16:
            ++v55;
            v56 = v60 + v56;
            v58 = v118;
            v59 = v117;
            if (v120 == v55)
            {
              goto LABEL_31;
            }
          }

          v35(v58, v9);
          v35(v59, v9);

LABEL_25:
          v121(v119, v123, v134);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v135 = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24832AA28(0, *(v57 + 16) + 1, 1);
            v57 = v135;
          }

          v54 = v116;
          v65 = *(v57 + 16);
          v64 = *(v57 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_24832AA28((v64 > 1), v65 + 1, 1);
            v57 = v135;
          }

          *(v57 + 16) = v65 + 1;
          v60 = v128;
          result = (v121)(v57 + v124 + v65 * v128, v119, v134);
          goto LABEL_16;
        }

        v57 = MEMORY[0x277D84F90];
LABEL_31:

        MEMORY[0x28223BE20](v66);
        v67 = v115;
        *(&v102 - 2) = v105;
        *(&v102 - 1) = v67;
        sub_24831EE30(MEMORY[0x277D84F98], MEMORY[0x277D84F98], MEMORY[0x277D84F98], sub_24832AC08, (&v102 - 4), v57);
        v69 = v68;
        v71 = v70;

        if (*(v69 + 16))
        {
          v72 = v114;
          v73 = v113;
          if (*(v71 + 16))
          {
            v74 = objc_allocWithZone(MEMORY[0x277CF8A50]);
            v75 = sub_248383930();

            v76 = sub_248383880();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628, qword_24839FBC0);
            v77 = sub_248383880();

            sub_248383ED0();
            v78 = sub_248383880();

            v79 = [v74 initWithCurrentLayoutID:v75 paletteIDForLayout:v76 wallpaperForLayout:v77 homeScreenStyleForLayout:v78];

            (v122->isa)(v112, v134);
            return v79;
          }

          v80 = sub_248383DA0();
          v93 = *sub_24827BA50();
          v82 = v103;
          (*(v73 + 16))(v103, v67, v72);
          if (os_log_type_enabled(v93, v80))
          {
            isa = v93;
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v138 = v84;
            *v83 = 136315138;
            v94 = v109;
            v95 = v82;
            sub_248382540();
            sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
            v96 = v111;
            v97 = sub_248384650();
            v99 = v98;
            (*(v110 + 8))(v94, v96);
            (*(v73 + 8))(v95, v72);
            v100 = sub_24814A378(v97, v99, &v138);

            *(v83 + 4) = v100;
            v92 = "[Wallpaper Data Provider] Unable to find default wallpaper for display: %s";
LABEL_38:
            v101 = isa;
            _os_log_impl(&dword_248146000, isa, v80, v92, v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v84);
            MEMORY[0x24C1CD5F0](v84, -1, -1);
            MEMORY[0x24C1CD5F0](v83, -1, -1);

LABEL_40:
            (v122->isa)(v112, v134);
            return 0;
          }
        }

        else
        {

          v80 = sub_248383DA0();
          v81 = *sub_24827BA50();
          v73 = v113;
          v82 = v104;
          v72 = v114;
          (*(v113 + 16))(v104, v67, v114);
          if (os_log_type_enabled(v81, v80))
          {
            isa = v81;
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v138 = v84;
            *v83 = 136315138;
            v85 = v109;
            v86 = v82;
            sub_248382540();
            sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
            v87 = v111;
            v88 = sub_248384650();
            v90 = v89;
            (*(v110 + 8))(v85, v87);
            (*(v73 + 8))(v86, v72);
            v91 = sub_24814A378(v88, v90, &v138);

            *(v83 + 4) = v91;
            v92 = "[Wallpaper Data Provider] Unable to find default palette for display: %s";
            goto LABEL_38;
          }
        }

        (*(v73 + 8))(v82, v72);
        goto LABEL_40;
      }

      ++v30;
      (v122->isa)(v26, v134);
      result = v120;
      if (v121 == v30)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_10:

    v36 = sub_248383DA0();
    v37 = *sub_24827BA50();
    v38 = v113;
    v39 = v116;
    v40 = v114;
    (*(v113 + 16))(v116, v115, v114);
    if (os_log_type_enabled(v37, v36))
    {
      v134 = v37;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v138 = v42;
      *v41 = 136315138;
      v43 = v109;
      sub_248382540();
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v44 = v111;
      v45 = sub_248384650();
      v47 = v46;
      (*(v110 + 8))(v43, v44);
      (*(v38 + 8))(v39, v40);
      v48 = sub_24814A378(v45, v47, &v138);

      *(v41 + 4) = v48;
      v49 = v36;
      v50 = v134;
      _os_log_impl(&dword_248146000, v134, v49, "[Wallpaper Data Provider] Unable to find a primary layout for display: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C1CD5F0](v42, -1, -1);
      MEMORY[0x24C1CD5F0](v41, -1, -1);
    }

    else
    {
      (*(v38 + 8))(v39, v40);
    }

    return 0;
  }

  return result;
}

void sub_248321B84(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v121 = a3;
  v122 = a4;
  v100 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  v113 = &v97 - v6;
  v127 = sub_2483824B0();
  v118 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2483825A0();
  v117 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v116 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908E0, qword_2483A14A0);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908F0, &unk_2483A15E0);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = &v97 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v97 - v15;
  v119 = sub_248381840();
  v16 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v102 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AE0, &qword_24839D230);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v97 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AE8, &qword_2483A15C8);
  MEMORY[0x28223BE20](v24 - 8);
  v120 = &v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
  isa = v26[-1].isa;
  v124 = v26;
  MEMORY[0x28223BE20](v26);
  v106 = &v97 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v97 - v30;
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  v32 = *(v29 + 8);
  v110 = v31;
  v33 = v31;
  v34 = v119;
  v112 = v28;
  v111 = v29 + 8;
  v109 = v32;
  v32(v33, v28);
  v35 = v130;
  v98 = v129;
  DBThemeAssetDocument.document.getter(v20);
  sub_248381820();
  v36 = *(v16 + 8);
  v103 = v16 + 8;
  v36(v20, v34);
  __swift_project_boxed_opaque_existential_0(&v129, v131);
  v121 = a2;
  sub_2483825D0();
  v37 = sub_2483823E0();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v23, 1, v37) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(&v129);
    sub_24822D578(v23, &qword_27EE93AE0, &qword_24839D230);
    v39 = v120;
    (*(isa + 56))(v120, 1, 1, v124);
LABEL_5:
    v43 = v126;
    v42 = v127;
    v44 = v118;
    v45 = v125;
    v46 = v116;
    sub_24822D578(v39, &qword_27EE93AE8, &qword_2483A15C8);
    v47 = v121;
    v48 = v117;
    goto LABEL_6;
  }

  v101 = v35;
  v39 = v120;
  sub_2483823B0();
  (*(v38 + 8))(v23, v37);
  v41 = isa;
  v40 = v124;
  (*(isa + 56))(v39, 0, 1, v124);
  __swift_destroy_boxed_opaque_existential_0(&v129);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {

    goto LABEL_5;
  }

  v69 = v106;
  (*(v41 + 32))(v106, v39, v40);
  v70 = v102;
  DBThemeAssetDocument.document.getter(v102);
  sub_248381820();
  v36(v70, v34);
  __swift_project_boxed_opaque_existential_0(&v129, v131);
  v71 = v104;
  v47 = v121;
  sub_2483825E0();
  v72 = v107;
  v73 = v108;
  if ((*(v107 + 48))(v71, 1, v108) == 1)
  {
    (*(v41 + 8))(v69, v40);

    sub_24822D578(v71, &unk_27EE908F0, &unk_2483A15E0);
    __swift_destroy_boxed_opaque_existential_0(&v129);
    v43 = v126;
    v42 = v127;
    v48 = v117;
    v44 = v118;
    v45 = v125;
    v46 = v116;
LABEL_6:
    v49 = sub_248383DA0();
    v50 = *sub_24827BA50();
    (*(v48 + 16))(v46, v122, v45);
    (*(v44 + 16))(v43, v47, v42);
    if (os_log_type_enabled(v50, v49))
    {
      v124 = v50;
      v51 = swift_slowAlloc();
      isa = swift_slowAlloc();
      v129 = isa;
      *v51 = 136315394;
      v52 = v113;
      sub_248382540();
      v53 = v46;
      LODWORD(v122) = v49;
      v54 = MEMORY[0x277CF8B30];
      sub_24822D648(&qword_27EE93AA8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B30]);
      v55 = v115;
      v56 = sub_248384650();
      v58 = v57;
      (*(v114 + 8))(v52, v55);
      (*(v48 + 8))(v53, v125);
      v59 = sub_24814A378(v56, v58, &v129);

      *(v51 + 4) = v59;
      *(v51 + 12) = 2080;
      v60 = v110;
      v61 = v126;
      sub_248382450();
      sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80, &unk_24839D9C0, v54);
      v62 = v112;
      v63 = sub_248384650();
      v65 = v64;
      v109(v60, v62);
      (*(v44 + 8))(v61, v127);
      v66 = sub_24814A378(v63, v65, &v129);

      *(v51 + 14) = v66;
      v67 = v124;
      _os_log_impl(&dword_248146000, v124, v122, "[Wallpaper Data Provider] Unable to find a layout style for layout: %s:%s", v51, 0x16u);
      v68 = isa;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v68, -1, -1);
      MEMORY[0x24C1CD5F0](v51, -1, -1);
    }

    else
    {
      (*(v44 + 8))(v43, v42);
      (*(v48 + 8))(v46, v45);
    }

    return;
  }

  v74 = v105;
  (*(v72 + 32))(v105, v71, v73);
  __swift_destroy_boxed_opaque_existential_0(&v129);
  v75 = v101;

  sub_248381860();
  v76 = v129;
  v77 = v130;
  v78 = v100;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v78;
  v80 = v98;
  sub_24832A2C0(v76, v77, v98, v75, isUniquelyReferenced_nonNull_native);

  *v78 = v132;
  v81 = sub_248382400();
  MEMORY[0x28223BE20](v81);
  *(&v97 - 2) = v74;
  v82 = v99;
  v83 = v128;
  sub_24831B038(sub_24832AC24, v81, MEMORY[0x277CF8F10], v99);

  MEMORY[0x28223BE20](v84);
  *(&v97 - 4) = v122;
  *(&v97 - 3) = v80;
  *(&v97 - 2) = v75;
  v85 = sub_248316920(sub_24832AC80, (&v97 - 6), MEMORY[0x277CF8F10], &unk_27EE908E0, qword_2483A14A0);
  v128 = v83;
  sub_24822D578(v82, &unk_27EE908E0, qword_2483A14A0);

  sub_248319F44(v85, v80, v75);
  if (!*(v78[1] + 16) || (sub_24822B8A0(v80, v75), (v86 & 1) == 0))
  {
    v87 = sub_248382400();
    if (*(v87 + 16))
    {
      v88 = v87;
      v89 = sub_248382770();
      v90 = *(v89 - 8);
      v91 = v97;
      (*(v90 + 16))(v97, v88 + ((*(v90 + 80) + 32) & ~*(v90 + 80)), v89);

      v92 = (*(v90 + 56))(v91, 0, 1, v89);
    }

    else
    {

      v93 = sub_248382770();
      v91 = v97;
      v92 = (*(*(v93 - 8) + 56))(v97, 1, 1, v93);
    }

    MEMORY[0x28223BE20](v92);
    *(&v97 - 4) = v122;
    *(&v97 - 3) = v80;
    *(&v97 - 2) = v75;
    v94 = v128;
    v95 = sub_248316920(sub_24832B6EC, (&v97 - 6), MEMORY[0x277CF8F10], &unk_27EE908E0, qword_2483A14A0);
    v128 = v94;
    sub_24822D578(v91, &unk_27EE908E0, qword_2483A14A0);

    v96 = v95;
    v75 = v101;
    sub_248319F44(v96, v80, v101);
  }

  sub_24831A03C([objc_allocWithZone(MEMORY[0x277CF8A60]) initWithStyleType:2 styleVariant:2], v80, v75, &qword_27EE93B10, &qword_2483A15F0);
  (*(isa + 8))(v106, v124);
  (*(v107 + 8))(v105, v108);
}

uint64_t sub_248322B84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(__n128), unint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  a5(v12);
  sub_24822D648(a6, a3, a4, MEMORY[0x277CF8B20]);
  sub_248383AE0();
  sub_248383AE0();
  if (v17[1] == v17[0])
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_248384680();
  }

  (*(v11 + 8))(v14, v10);

  return v15 & 1;
}

void sub_248322D14(void *a2@<X8>)
{
  v16 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_2483826F0();
  sub_248381860();
  (*(v7 + 8))(v9, v6);
  sub_248382540();
  sub_248381860();
  (*(v3 + 8))(v5, v2);
  v10 = objc_allocWithZone(MEMORY[0x277CF8A08]);
  v11 = sub_248383930();

  v12 = sub_248383930();

  v13 = sub_248383930();
  v14 = [v10 initWithWallpaperIdentifier:v11 displayID:v12 layoutID:v13];

  *v16 = v14;
}

void sub_248322F5C(void *a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v69) = a4;
  v77 = a2;
  v75 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - v6;
  v8 = sub_2483824B0();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AE8, &qword_2483A15C8);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v64 - v11;
  v12 = sub_248382770();
  v64 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
  v68 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v15 = &v64 - v14;
  v16 = sub_2483823E0();
  v74 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_248381840();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  DBThemeAssetDocument.document.getter(v22);
  sub_248381820();
  (*(v20 + 8))(v22, v19);
  __swift_project_boxed_opaque_existential_0(&v78, v80);
  v23 = sub_2483825F0();
  if (v23)
  {
    v24 = v23;
    v66 = v12;
    v67 = a3;
    __swift_destroy_boxed_opaque_existential_0(&v78);
    v25 = v77;
    if (v77)
    {
      v71 = *(v24 + 16);
      if (v71)
      {
        v26 = 0;
        v73 = v24 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v72 = v74 + 16;
        v27 = (v68 + 8);
        v28 = (v74 + 8);
        v29 = v76;
        while (v26 < *(v24 + 16))
        {
          (*(v74 + 16))(v18, v73 + *(v74 + 72) * v26, v16);
          sub_2483823B0();
          sub_248381860();
          (*v27)(v15, v29);
          if (v78 == v75 && v79 == v25)
          {

            (*v28)(v18, v16);
LABEL_33:

            return;
          }

          v31 = sub_248384680();

          (*v28)(v18, v16);
          if (v31)
          {
            goto LABEL_33;
          }

          ++v26;
          v25 = v77;
          if (v71 == v26)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }

LABEL_12:

    if (v69)
    {
      v32 = sub_248382400();
      v33 = v32;
      v34 = *(v32 + 16);
      if (v34)
      {
        v35 = 0;
        v37 = v64;
        v36 = v65;
        v73 = v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v38 = (v68 + 48);
        v71 = (v68 + 8);
        v72 = v64 + 16;
        v74 = v64 + 8;
        v39 = v66;
        v40 = v70;
        v69 = v34;
        while (v35 < *(v33 + 16))
        {
          (*(v37 + 16))(v40, v73 + *(v37 + 72) * v35, v39);
          sub_2483826D0();
          v41 = v76;
          if ((*v38)(v36, 1, v76) == 1)
          {
            sub_24822D578(v36, &qword_27EE93AE8, &qword_2483A15C8);
            (*v74)(v40, v39);
            if (!v25)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v42 = v33;
            v43 = v41;
            sub_248381860();
            v45 = v78;
            v44 = v79;
            (*v71)(v36, v43);
            if (v25)
            {
              v33 = v42;
              if (v45 == v75 && v44 == v25)
              {

                (*v74)(v70, v39);
                goto LABEL_33;
              }

              v46 = sub_248384680();

              v40 = v70;
              (*v74)(v70, v39);
              v34 = v69;
              if (v46)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v40 = v70;
              (*v74)(v70, v39);

              v33 = v42;
              v34 = v69;
            }
          }

          ++v35;
          v25 = v77;
          if (v34 == v35)
          {
            goto LABEL_28;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

LABEL_28:
    }
  }

  else
  {
    v47 = v7;
    v49 = v66;
    v48 = v67;
    __swift_destroy_boxed_opaque_existential_0(&v78);
    v50 = *sub_24827BA50();
    v51 = v71;
    v52 = v72;
    v53 = a3;
    v54 = v73;
    (*(v72 + 16))(v71, v53, v73);
    v55 = v50;
    v56 = sub_248383DC0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = v77;
      *v57 = 136315138;
      LODWORD(v76) = v56;
      v58 = v51;
      sub_248382450();
      sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80, &unk_24839D9C0, MEMORY[0x277CF8B30]);
      v59 = sub_248384650();
      v61 = v60;
      (*(v49 + 8))(v47, v48);
      (*(v52 + 8))(v58, v54);
      v62 = sub_24814A378(v59, v61, &v78);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_248146000, v55, v76, "[Wallpaper Data Provider] Unable to find palettes for layout: %s", v57, 0xCu);
      v63 = v77;
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x24C1CD5F0](v63, -1, -1);
      MEMORY[0x24C1CD5F0](v57, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v51, v54);
    }
  }
}

void sub_248323870(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[2] = MEMORY[0x277D84F90];
    sub_2483844C0();
    v8 = *(sub_2483824B0() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v11, v9);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_2483844A0();
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
      v9 += v10;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2483239B4(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[2] = MEMORY[0x277D84F90];
    sub_2483844C0();
    v8 = *(sub_248382770() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v11, v9);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_2483844A0();
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
      v9 += v10;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_248323AF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93B78, &qword_2483A1650);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  sub_2483824A0();
  v32 = a2;
  v33 = a3;
  v14 = v26;
  v26 = sub_248316920(sub_24832B4DC, v31, MEMORY[0x277CF8E00], &qword_27EE93B78, &qword_2483A1650);
  v25[1] = v14;
  sub_24822D578(v13, &qword_27EE93B78, &qword_2483A1650);
  v25[2] = sub_248327BA0(a1, v15);
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  (*(v8 + 8))(v10, v7);
  sub_248382410();
  v16 = sub_248382400();
  v28 = a3;
  v29 = a1;
  v30 = a2;
  sub_248316520(sub_24832B4F8, v27, v16, MEMORY[0x277CF8F10]);

  v17 = objc_allocWithZone(MEMORY[0x277CF9268]);
  v18 = sub_248383930();

  v19 = sub_248383930();

  sub_24814FB28(0, &qword_27EE93B80, 0x277CF9280);
  v20 = sub_248383B00();

  sub_24814FB28(0, &qword_27EE93B88, 0x277CF9298);
  v21 = sub_248383B00();

  v22 = v17;
  v23 = v26;
  v24 = [v22 initWithIdentifier:v18 displayName:v19 palettes:v20 wallpapers:v21 preview:v26];

  *v34 = v24;
}

void sub_248323E4C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v51 = a2;
  v50 = a3;
  v52 = a4;
  v5 = sub_248382470();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = sub_248381610();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v55 = a1;
  sub_248382490();
  v17 = sub_2483815E0();
  v19 = v18;
  v20 = *(v12 + 8);
  v46 = v11;
  v21 = v11;
  v22 = v20;
  v20(v16, v21);
  sub_248382540();
  sub_248381860();
  (*(v8 + 8))(v10, v7);
  v23 = sub_2483166AC(v17, v19, v53, v54);

  if (v23)
  {
    sub_248382490();
    v51 = sub_2483815E0();
    v24 = v16;
    v25 = v46;
    v26 = v22;
    v22(v24, v46);
    v27 = v23;
    v28 = v45;
    sub_248382490();
    sub_2483815F0();
    v26(v28, v25);
    v29 = objc_allocWithZone(MEMORY[0x277CF9238]);
    v30 = sub_248383930();

    v31 = sub_248383930();

    v32 = [v29 initWithIdentifier:v30 url:v27 packageType:v31];

    v33 = v47;
    sub_248382480();
    v35 = v48;
    v34 = v49;
    v36 = (*(v48 + 88))(v33, v49);
    if (v36 == *MEMORY[0x277CF8DF0])
    {
      (*(v35 + 96))(v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
      sub_24832B658();
      sub_2483838C0();
      v55 = v27;

      sub_2483838C0();

      v37 = objc_allocWithZone(MEMORY[0x277CF9270]);
      v38 = sub_248383880();

      v39 = sub_248383880();

      v40 = [v37 initWithAsset:v32 lightModeStateForPaletteID:v38 darkModeStateForPaletteID:v39];

      *v52 = v40;
    }

    else if (v36 == *MEMORY[0x277CF8DF8])
    {
      (*(v35 + 96))(v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
      sub_24832B658();
      sub_2483838C0();

      v41 = objc_allocWithZone(MEMORY[0x277CF9270]);
      v42 = sub_248383880();

      v43 = [v41 initWithAsset:v32 stateForPaletteID:v42];

      *v52 = v43;
    }

    else
    {

      *v52 = 0;
      (*(v35 + 8))(v33, v34);
    }
  }

  else
  {
    *v52 = 0;
  }
}

void sub_24832450C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v380 = a4;
  v366 = a3;
  v381 = a2;
  v377 = a1;
  v368 = a5;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0, qword_2483A1500);
  v332 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v331 = &v319 - v5;
  v337 = sub_2483826A0();
  v340 = *(v337 - 8);
  MEMORY[0x28223BE20](v337);
  v324 = &v319 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v339 = &v319 - v8;
  v341 = sub_248381610();
  v373 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v323 = &v319 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v336 = &v319 - v11;
  v346 = sub_2483815D0();
  v376 = *(v346 - 8);
  MEMORY[0x28223BE20](v346);
  v370 = &v319 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v327 = &v319 - v14;
  MEMORY[0x28223BE20](v15);
  v342 = &v319 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AE8, &qword_2483A15C8);
  MEMORY[0x28223BE20](v17 - 8);
  v320 = &v319 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v322 = &v319 - v20;
  MEMORY[0x28223BE20](v21);
  v326 = &v319 - v22;
  MEMORY[0x28223BE20](v23);
  v329 = &v319 - v24;
  MEMORY[0x28223BE20](v25);
  v335 = &v319 - v26;
  MEMORY[0x28223BE20](v27);
  v351 = &v319 - v28;
  v29 = sub_2483826B0();
  v30 = *(v29 - 8);
  v374 = v29;
  v375 = v30;
  MEMORY[0x28223BE20](v29);
  v367 = &v319 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93B90, &qword_24839DA90);
  MEMORY[0x28223BE20](v349);
  v350 = &v319 - v32;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE8, &qword_24839D240);
  v361 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v347 = &v319 - v33;
  v363 = sub_248381840();
  v362 = *(v363 - 8);
  MEMORY[0x28223BE20](v363);
  v359 = &v319 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE0, &qword_24839D238);
  MEMORY[0x28223BE20](v35 - 8);
  v357 = &v319 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v358 = &v319 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90908, &qword_24839DAA0);
  MEMORY[0x28223BE20](v39 - 8);
  v356 = &v319 - v40;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908F0, &unk_2483A15E0);
  v364 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v338 = &v319 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v354 = &v319 - v43;
  MEMORY[0x28223BE20](v44);
  v355 = &v319 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v319 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v319 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780, &unk_24839DA00);
  v55 = *(v54 - 1);
  MEMORY[0x28223BE20](v54);
  v319 = &v319 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v321 = &v319 - v58;
  MEMORY[0x28223BE20](v59);
  v325 = &v319 - v60;
  MEMORY[0x28223BE20](v61);
  v328 = &v319 - v62;
  MEMORY[0x28223BE20](v63);
  v334 = &v319 - v64;
  MEMORY[0x28223BE20](v65);
  v348 = &v319 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v319 - v68;
  sub_2483826F0();
  sub_248381860();
  v353 = v55;
  v70 = *(v55 + 8);
  v330 = v69;
  v378 = v54;
  v372 = v55 + 8;
  v371 = v70;
  v70(v69, v54);
  sub_248382540();
  sub_248381860();
  v71 = *(v51 + 8);
  v343 = v53;
  v344 = v50;
  v345 = v51 + 8;
  v352 = v71;
  v71(v53, v50);
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  (*(v47 + 8))(v49, v46);
  v72 = objc_allocWithZone(MEMORY[0x277CF8A08]);
  v73 = sub_248383930();

  v74 = sub_248383930();

  v75 = sub_248383930();
  v76 = v360;

  v369 = [v72 initWithWallpaperIdentifier:v73 displayID:v74 layoutID:v75];

  v77 = v361;
  v78 = v357;
  v79 = sub_2482667D8();
  v80 = v358;
  v81 = v356;
  sub_248382420();
  v82 = v359;
  DBThemeAssetDocument.document.getter(v359);
  sub_248381820();
  (*(v362 + 8))(v82, v363);
  sub_24825ED6C(&v385, &v382);
  sub_248232C78(v80, v78, &qword_27EE8FFE0, &qword_24839D238);
  v83 = 1;
  if ((*(v77 + 48))(v78, 1, v76) != 1)
  {
    v84 = v79;
    v85 = v347;
    (*(v77 + 32))(v347, v78, v76);
    __swift_project_boxed_opaque_existential_0(&v382, v384);
    sub_2483825C0();
    v86 = v85;
    v79 = v84;
    (*(v77 + 8))(v86, v76);
    v83 = 0;
  }

  sub_24822D578(v80, &qword_27EE8FFE0, &qword_24839D238);
  v87 = v364;
  v88 = v365;
  (*(v364 + 56))(v81, v83, 1, v365);
  __swift_destroy_boxed_opaque_existential_0(&v382);
  v89 = (*(v87 + 48))(v81, 1, v88);
  v379 = v79;
  if (v89 == 1)
  {
    sub_24822D578(v81, &qword_27EE90908, &qword_24839DAA0);
    v90 = 0;
    v91 = v373;
    v92 = v374;
    v93 = v376;
    v94 = v370;
LABEL_13:
    v106 = v367;
    goto LABEL_14;
  }

  v95 = v355;
  sub_24832B57C(v81, v355);
  v96 = v354;
  sub_2483826F0();
  v97 = v353;
  v98 = v378;
  (*(v353 + 56))(v96, 0, 1, v378);
  v99 = *(v349 + 48);
  v100 = v350;
  sub_248232C78(v96, v350, &unk_27EE908F0, &unk_2483A15E0);
  sub_248232C78(v95, v100 + v99, &unk_27EE908F0, &unk_2483A15E0);
  v101 = *(v97 + 48);
  if (v101(v100, 1, v98) == 1)
  {
    sub_24822D578(v96, &unk_27EE908F0, &unk_2483A15E0);
    sub_24822D578(v95, &unk_27EE908F0, &unk_2483A15E0);
    v102 = v101(v100 + v99, 1, v98) == 1;
    v93 = v376;
    v103 = v100;
    v94 = v370;
    v92 = v374;
    v79 = v379;
    if (v102)
    {
      sub_24822D578(v100, &unk_27EE908F0, &unk_2483A15E0);
      v90 = 1;
LABEL_12:
      v91 = v373;
      goto LABEL_13;
    }

LABEL_11:
    sub_24822D578(v103, &unk_27EE93B90, &qword_24839DA90);
    v90 = 0;
    goto LABEL_12;
  }

  v104 = v338;
  sub_248232C78(v100, v338, &unk_27EE908F0, &unk_2483A15E0);
  v105 = v101(v100 + v99, 1, v98);
  v93 = v376;
  if (v105 == 1)
  {
    sub_24822D578(v354, &unk_27EE908F0, &unk_2483A15E0);
    sub_24822D578(v355, &unk_27EE908F0, &unk_2483A15E0);
    v371(v104, v98);
    v103 = v100;
    v94 = v370;
    v92 = v374;
    v79 = v379;
    goto LABEL_11;
  }

  v179 = v330;
  (*(v353 + 32))(v330, v100 + v99, v98);
  sub_24832B5EC(&qword_27EE90910, &unk_27EE90780, &unk_24839DA00);
  v90 = sub_248383910();
  v180 = v371;
  v371(v179, v98);
  sub_24822D578(v354, &unk_27EE908F0, &unk_2483A15E0);
  sub_24822D578(v355, &unk_27EE908F0, &unk_2483A15E0);
  v180(v104, v98);
  sub_24822D578(v100, &unk_27EE908F0, &unk_2483A15E0);
  v91 = v373;
  v92 = v374;
  v94 = v370;
  v106 = v367;
  v79 = v379;
LABEL_14:
  sub_248382700();
  v107 = v375;
  v108 = (v375)[11](v106, v92);
  v102 = v108 == *MEMORY[0x277CF8EF0];
  LODWORD(v367) = v90;
  if (v102)
  {
    (v107)[12](v106, v92);
    v109 = *v106;
    v110 = v348;
    sub_2483826F0();
    v111 = v378;
    sub_248381860();
    v371(v110, v111);
    v380 = v385;
    v381 = sub_2483826C0();
    sub_24814FB28(0, &unk_27EE907A8, 0x277D75348);
    v382 = v109;
    sub_24832B528();

    sub_2483836A0();
    v112 = sub_248383FE0();
    v113 = [objc_allocWithZone(MEMORY[0x277CF9248]) initWithColor_];

    v114 = v351;
    sub_2483826D0();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
    v116 = *(v115 - 8);
    if ((*(v116 + 48))(v114, 1, v115) == 1)
    {
      sub_24822D578(v114, &qword_27EE93AE8, &qword_2483A15C8);
      v117 = 0;
    }

    else
    {
      sub_248381860();
      v141 = v114;
      v117 = v383;
      (*(v116 + 8))(v141, v115);
    }

    sub_2483271E8();
    v143 = v142;
    v144 = sub_248383930();

    v145 = sub_248383930();

    if (v117)
    {
      v146 = sub_248383930();
    }

    else
    {
      v146 = 0;
    }

    v173 = v369;
    v174 = v367;
    if (v143)
    {
      v175 = sub_248383930();
    }

    else
    {
      v175 = 0;
    }

    v176 = objc_allocWithZone(MEMORY[0x277CF9298]);
    v177 = v379;
    v178 = [v176 initWithIdentifier:v144 displayName:v145 color:v113 associatedPaletteID:v146 isDefault:v174 & 1 cacheID:v175 data:v173 traits:v379];

    goto LABEL_52;
  }

  v118 = v93;
  v119 = v79;
  if (v108 == *MEMORY[0x277CF8EF8])
  {
    v120 = v118;
    (v107)[12](v106, v92);
    v121 = *(v118 + 4);
    v122 = v342;
    v123 = v346;
    v121(v342, v106, v346);
    v124 = sub_2483815B0();
    v126 = v125;
    v127 = v343;
    sub_248382540();
    v128 = v344;
    sub_248381860();
    v352(v127, v128);
    v129 = sub_2483166AC(v124, v126, v385, *(&v385 + 1));

    if (v129)
    {
      v130 = v334;
      sub_2483826F0();
      v131 = v378;
      sub_248381860();
      v371(v130, v131);
      v380 = v385;
      v381 = sub_2483826C0();
      sub_2483815B0();
      v132 = objc_allocWithZone(MEMORY[0x277CF9258]);
      v133 = v129;
      v134 = sub_248383930();

      v135 = [v132 initWithIdentifier:v134 url:v133];

      v136 = [objc_allocWithZone(MEMORY[0x277CF9260]) initWithAsset_];
      v137 = v335;
      sub_2483826D0();
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
      v139 = *(v138 - 8);
      if ((*(v139 + 48))(v137, 1, v138) == 1)
      {
        sub_24822D578(v137, &qword_27EE93AE8, &qword_2483A15C8);
        v140 = 0;
      }

      else
      {
        sub_248381860();
        v140 = v383;
        (*(v139 + 8))(v137, v138);
      }

      sub_2483271E8();
      v195 = v194;
      v196 = sub_248383930();

      v197 = sub_248383930();

      if (v140)
      {
        v198 = sub_248383930();
      }

      else
      {
        v198 = 0;
      }

      v229 = v369;
      v230 = v367;
      if (v195)
      {
        v231 = sub_248383930();
      }

      else
      {
        v231 = 0;
      }

      v232 = objc_allocWithZone(MEMORY[0x277CF9298]);
      v233 = v379;
      v178 = [v232 initWithIdentifier:v196 displayName:v197 image:v136 associatedPaletteID:v198 isDefault:v230 & 1 cacheID:v231 data:v229 traits:v379];

      (*(v376 + 1))(v342, v346);
LABEL_52:
      *v368 = v178;
      return;
    }

    (*(v120 + 1))(v122, v123);

    goto LABEL_54;
  }

  if (v108 == *MEMORY[0x277CF8F00])
  {
    (v107)[12](v106, v92);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE907A0, &qword_24839DA20);
    v148 = v106;
    v149 = *(v147 + 48);
    v150 = &v148[*(v147 + 64)];
    v152 = *v150;
    v151 = *(v150 + 1);
    v375 = v152;
    v376 = v151;
    v153 = v336;
    (*(v91 + 32))(v336, v148, v341);
    v154 = v340;
    v155 = v337;
    (*(v340 + 32))(v339, &v148[v149], v337);
    v156 = sub_2483815E0();
    v157 = v91;
    v159 = v158;
    v160 = v343;
    sub_248382540();
    v161 = v344;
    sub_248381860();
    v352(v160, v161);
    v162 = sub_2483166AC(v156, v159, v385, *(&v385 + 1));

    if (v162)
    {
      sub_2483815E0();
      v163 = v162;
      sub_2483815F0();
      v164 = objc_allocWithZone(MEMORY[0x277CF9238]);
      v165 = sub_248383930();

      v166 = sub_248383930();

      v167 = [v164 initWithIdentifier:v165 url:v163 packageType:v166];

      v381 = v163;
      v168 = v328;
      sub_2483826F0();
      v169 = v378;
      sub_248381860();
      v371(v168, v169);
      v378 = v385;
      v380 = sub_2483826C0();
      v170 = v167;
      sub_248382690();
      v171 = sub_248383930();

      if (v376)
      {
        v172 = sub_248383930();
      }

      else
      {
        v172 = 0;
      }

      v269 = v329;
      v270 = [objc_allocWithZone(MEMORY[0x277CF9240]) initWithAsset:v170 type:v171 state:v172];

      sub_2483826D0();
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
      v272 = *(v271 - 8);
      if ((*(v272 + 48))(v269, 1, v271) == 1)
      {
        sub_24822D578(v269, &qword_27EE93AE8, &qword_2483A15C8);
        v273 = 0;
      }

      else
      {
        sub_248381860();
        v273 = v383;
        (*(v272 + 8))(v269, v271);
      }

      sub_2483271E8();
      v275 = v274;
      v276 = sub_248383930();

      v277 = sub_248383930();

      if (v273)
      {
        v278 = sub_248383930();

        v279 = v379;
        if (v275)
        {
LABEL_69:
          v280 = sub_248383930();

LABEL_72:
          v281 = objc_allocWithZone(MEMORY[0x277CF9298]);
          v282 = v369;
          v283 = [v281 initWithIdentifier:v276 displayName:v277 package:v270 associatedPaletteID:v278 isDefault:v367 & 1 cacheID:v280 data:v369 traits:v279];

          (*(v340 + 8))(v339, v337);
          (*(v373 + 8))(v336, v341);
LABEL_73:
          *v368 = v283;
          return;
        }
      }

      else
      {
        v278 = 0;
        v279 = v379;
        if (v275)
        {
          goto LABEL_69;
        }
      }

      v280 = 0;
      goto LABEL_72;
    }

    (*(v154 + 8))(v339, v155);
    (*(v157 + 8))(v153, v341);
LABEL_54:
    *v368 = 0;
    return;
  }

  v181 = v340;
  v182 = v341;
  v183 = v352;
  if (v108 == *MEMORY[0x277CF8ED8])
  {
    (v375)[12](v106, v374);
    (*(v332 + 32))(v331, v106, v333);
    v184 = v325;
    sub_2483826F0();
    v185 = v378;
    sub_248381860();
    v371(v184, v185);
    v378 = v385;
    v380 = sub_2483826C0();
    v381 = v186;
    sub_24814FB28(0, &unk_27EE907A8, 0x277D75348);
    sub_248381D80();
    v386 = v382;
    sub_24832B528();
    sub_2483836A0();
    v187 = sub_248383FE0();
    sub_248381D70();
    v386 = v382;
    sub_2483836A0();
    v188 = sub_248383FE0();
    v189 = [objc_allocWithZone(MEMORY[0x277CF9248]) initWithLightModeColor:v187 darkModeColor:v188];

    v190 = v326;
    sub_2483826D0();
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
    v192 = *(v191 - 8);
    if ((*(v192 + 48))(v190, 1, v191) == 1)
    {
      sub_24822D578(v190, &qword_27EE93AE8, &qword_2483A15C8);
      v193 = 0;
    }

    else
    {
      sub_248381860();
      v193 = v383;
      (*(v192 + 8))(v190, v191);
    }

    sub_2483271E8();
    v235 = v234;
    v236 = sub_248383930();

    v237 = sub_248383930();

    if (v193)
    {
      v238 = sub_248383930();

      v239 = v379;
      if (v235)
      {
LABEL_58:
        v240 = sub_248383930();

LABEL_76:
        v284 = objc_allocWithZone(MEMORY[0x277CF9298]);
        v285 = v369;
        v286 = [v284 initWithIdentifier:v236 displayName:v237 color:v189 associatedPaletteID:v238 isDefault:v367 & 1 cacheID:v240 data:v369 traits:v239];

        (*(v332 + 8))(v331, v333);
        *v368 = v286;
        return;
      }
    }

    else
    {
      v238 = 0;
      v239 = v379;
      if (v235)
      {
        goto LABEL_58;
      }
    }

    v240 = 0;
    goto LABEL_76;
  }

  if (v108 == *MEMORY[0x277CF8EE0])
  {
    (v375)[12](v106, v374);
    v199 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90798, &qword_24839DA18) + 48);
    v200 = *(v118 + 4);
    v201 = v346;
    v200(v327, v106, v346);
    v200(v94, &v106[v199], v201);
    v202 = sub_2483815B0();
    v204 = v203;
    v205 = v343;
    sub_248382540();
    v206 = v344;
    sub_248381860();
    v352(v205, v206);
    v207 = sub_2483166AC(v202, v204, v385, *(&v385 + 1));

    if (v207)
    {
      v208 = sub_2483815B0();
      v209 = v206;
      v211 = v210;
      sub_248382540();
      sub_248381860();
      v352(v205, v209);
      v212 = sub_2483166AC(v208, v211, v385, *(&v385 + 1));

      v213 = v369;
      if (v212)
      {
        sub_2483815B0();
        v214 = objc_allocWithZone(MEMORY[0x277CF9258]);
        v215 = v207;
        v216 = sub_248383930();

        v217 = [v214 initWithIdentifier:v216 url:v215];

        v381 = v215;
        sub_2483815B0();
        v218 = objc_allocWithZone(MEMORY[0x277CF9258]);
        v219 = v212;
        v220 = sub_248383930();

        v221 = [v218 initWithIdentifier:v220 url:v219];

        v375 = v219;
        v222 = v321;
        sub_2483826F0();
        v223 = v378;
        sub_248381860();
        v371(v222, v223);
        sub_2483826C0();
        v224 = objc_allocWithZone(MEMORY[0x277CF9260]);
        v380 = v217;
        v378 = v221;
        v374 = [v224 initWithLightModeAsset:v217 darkModeAsset:v221];
        v225 = v322;
        sub_2483826D0();
        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
        v227 = *(v226 - 8);
        if ((*(v227 + 48))(v225, 1, v226) == 1)
        {
          sub_24822D578(v225, &qword_27EE93AE8, &qword_2483A15C8);
          v228 = 0;
        }

        else
        {
          sub_248381860();
          v228 = v383;
          (*(v227 + 8))(v225, v226);
        }

        sub_2483271E8();
        v292 = v291;
        v293 = sub_248383930();

        v294 = sub_248383930();

        if (v228)
        {
          v295 = sub_248383930();
        }

        else
        {
          v295 = 0;
        }

        v296 = v346;
        v297 = v327;
        if (v292)
        {
          v298 = sub_248383930();
        }

        else
        {
          v298 = 0;
        }

        v299 = objc_allocWithZone(MEMORY[0x277CF9298]);
        v300 = v379;
        v301 = v369;
        v302 = v374;
        v283 = [v299 initWithIdentifier:v293 displayName:v294 image:v374 associatedPaletteID:v295 isDefault:v367 & 1 cacheID:v298 data:v369 traits:v379];

        v303 = *(v376 + 1);
        v303(v370, v296);
        v303(v297, v296);
        goto LABEL_73;
      }

      v289 = *(v118 + 1);
      v290 = v346;
      v289(v370, v346);
      v289(v327, v290);
    }

    else
    {

      v287 = *(v376 + 1);
      v288 = v346;
      v287(v370, v346);
      v287(v327, v288);
    }

    goto LABEL_54;
  }

  if (v108 == *MEMORY[0x277CF8EE8])
  {
    (v375)[12](v106, v374);
    v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90790, &qword_24839DA10);
    v242 = v106;
    v243 = v241[12];
    v244 = &v242[v241[16]];
    v245 = v244[1];
    v370 = *v244;
    v246 = &v242[v241[20]];
    v248 = *v246;
    v247 = v246[1];
    v374 = v248;
    v375 = v247;
    v376 = v245;
    v249 = v323;
    (*(v91 + 32))(v323, v242, v182);
    v250 = v337;
    (*(v181 + 32))(v324, &v242[v243], v337);
    v251 = sub_2483815E0();
    v252 = v91;
    v254 = v253;
    v255 = v343;
    sub_248382540();
    v256 = v344;
    sub_248381860();
    v183(v255, v256);
    v257 = sub_2483166AC(v251, v254, v385, *(&v385 + 1));

    if (v257)
    {
      v258 = v375;
      sub_2483815E0();
      v259 = v257;
      sub_2483815F0();
      v260 = objc_allocWithZone(MEMORY[0x277CF9238]);
      v261 = sub_248383930();

      v262 = sub_248383930();

      v263 = [v260 initWithIdentifier:v261 url:v259 packageType:v262];

      v381 = v259;
      v264 = v319;
      sub_2483826F0();
      v265 = v378;
      sub_248381860();
      v371(v264, v265);
      v378 = v385;
      v380 = sub_2483826C0();
      v266 = v263;
      sub_248382690();
      v267 = sub_248383930();

      if (v376)
      {
        v268 = sub_248383930();
      }

      else
      {
        v268 = 0;
      }

      v304 = v320;
      if (v258)
      {
        v305 = sub_248383930();
      }

      else
      {
        v305 = 0;
      }

      v306 = [objc_allocWithZone(MEMORY[0x277CF9240]) initWithAsset:v266 type:v267 lightModeState:v268 darkModeState:v305];

      sub_2483826D0();
      v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
      v308 = *(v307 - 8);
      if ((*(v308 + 48))(v304, 1, v307) == 1)
      {
        sub_24822D578(v304, &qword_27EE93AE8, &qword_2483A15C8);
        v309 = 0;
      }

      else
      {
        sub_248381860();
        v309 = v383;
        (*(v308 + 8))(v304, v307);
      }

      sub_2483271E8();
      v311 = v310;
      v312 = sub_248383930();

      v313 = sub_248383930();

      if (v309)
      {
        v314 = sub_248383930();
      }

      else
      {
        v314 = 0;
      }

      v315 = v379;
      if (v311)
      {
        v316 = sub_248383930();
      }

      else
      {
        v316 = 0;
      }

      v317 = objc_allocWithZone(MEMORY[0x277CF9298]);
      v318 = v369;
      v283 = [v317 initWithIdentifier:v312 displayName:v313 package:v306 associatedPaletteID:v314 isDefault:v367 & 1 cacheID:v316 data:v369 traits:v315];

      (*(v340 + 8))(v324, v337);
      (*(v373 + 8))(v323, v341);
      goto LABEL_73;
    }

    (*(v181 + 8))(v324, v250);
    (*(v252 + 8))(v249, v341);
    goto LABEL_54;
  }

  *v368 = 0;
  (v375)[1](v106, v374);
}

uint64_t sub_2483271E8()
{
  v0 = sub_2483815D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2483826A0();
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v75 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v75 - v9;
  MEMORY[0x28223BE20](v11);
  v83 = &v75 - v12;
  v13 = sub_248381610();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x28223BE20](v13);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v18 = sub_2483826B0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248382700();
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == *MEMORY[0x277CF8EF0])
  {
    goto LABEL_2;
  }

  if (v22 == *MEMORY[0x277CF8EF8])
  {
    (*(v19 + 96))(v21, v18);
    (*(v1 + 32))(v3, v21, v0);
    v24 = sub_2483815B0();
    (*(v1 + 8))(v3, v0);
    return v24;
  }

  if (v22 == *MEMORY[0x277CF8F00])
  {
    (*(v19 + 96))(v21, v18);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE907A0, &qword_24839DA20);
    v26 = *(v25 + 48);
    v27 = &v21[*(v25 + 64)];
    v29 = *v27;
    v28 = *(v27 + 1);
    v31 = v80;
    v30 = v81;
    (*(v80 + 32))(v17, v21, v81);
    v32 = v82;
    v33 = &v21[v26];
    v34 = v83;
    v35 = v79;
    (*(v82 + 32))(v83, v33, v79);
    (*(v32 + 16))(v10, v34, v35);
    v36 = (*(v32 + 88))(v10, v35);
    if (v36 == *MEMORY[0x277CF8EC8])
    {

      (*(v32 + 8))(v34, v35);
      (*(v31 + 8))(v17, v30);
      return 0;
    }

    if (v36 != *MEMORY[0x277CF8ED0] && v36 != *MEMORY[0x277CF8EC0])
    {
      (*(v32 + 8))(v10, v35);
    }

    v39 = sub_2483815E0();
    v41 = v40;
    if (v28)
    {
      v84 = 45;
      v85 = 0xE100000000000000;
      MEMORY[0x24C1CAFD0](v29, v28);

      v43 = v84;
      v42 = v85;
    }

    else
    {
      v43 = 0;
      v42 = 0xE000000000000000;
    }

    v84 = v39;
    v85 = v41;

    MEMORY[0x24C1CAFD0](v43, v42);

    v24 = v84;
    (*(v32 + 8))(v83, v35);
    (*(v31 + 8))(v17, v30);
    return v24;
  }

  if (v22 == *MEMORY[0x277CF8ED8])
  {
    goto LABEL_2;
  }

  if (v22 == *MEMORY[0x277CF8EE0])
  {
    (*(v19 + 96))(v21, v18);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90798, &qword_24839DA18) + 48);
    (*(v1 + 32))(v3, v21, v0);
    v24 = sub_2483815B0();
    v38 = *(v1 + 8);
    v38(v3, v0);
    v38(&v21[v37], v0);
    return v24;
  }

  if (v22 != *MEMORY[0x277CF8EE8])
  {
LABEL_2:
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  (*(v19 + 96))(v21, v18);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90790, &qword_24839DA10);
  v45 = v44[12];
  v46 = &v21[v44[16]];
  v47 = *(v46 + 1);
  v83 = *v46;
  v48 = &v21[v44[20]];
  v49 = *(v48 + 1);
  v76 = *v48;
  v51 = v80;
  v50 = v81;
  v52 = v78;
  (*(v80 + 32))(v78, v21, v81);
  v53 = v82;
  v54 = &v21[v45];
  v55 = v77;
  v56 = v79;
  (*(v82 + 32))(v77, v54, v79);
  (*(v53 + 16))(v5, v55, v56);
  v57 = (*(v53 + 88))(v5, v56);
  if (v57 == *MEMORY[0x277CF8EC8])
  {

    (*(v53 + 8))(v55, v56);
    (*(v51 + 8))(v52, v50);
    return 0;
  }

  if (v57 != *MEMORY[0x277CF8ED0] && v57 != *MEMORY[0x277CF8EC0])
  {
    (*(v82 + 8))(v5, v56);
  }

  v58 = v78;
  result = sub_2483815E0();
  v59 = 0;
  *&v60 = v83;
  *(&v60 + 1) = v47;
  *&v61 = v76;
  *(&v61 + 1) = v49;
  v87 = result;
  v88 = v62;
  v90 = v61;
  v89 = v60;
  v63 = MEMORY[0x277D84F90];
  v64 = v82;
LABEL_27:
  if (v59 <= 3)
  {
    v65 = 3;
  }

  else
  {
    v65 = v59;
  }

  v66 = v65 + 1;
  v67 = 16 * v59 + 40;
  while (1)
  {
    if (v59 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
      swift_arrayDestroy();
      v84 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0, &unk_2483A0E40);
      sub_24822D648(&qword_27EE91C90, &unk_27EE93AB0, &unk_2483A0E40, MEMORY[0x277D83958]);
      v74 = sub_2483838F0();

      (*(v64 + 8))(v77, v56);
      (*(v80 + 8))(v58, v81);
      return v74;
    }

    if (v66 == ++v59)
    {
      break;
    }

    v68 = v67 + 16;
    v69 = *&v86[v67];
    v67 += 16;
    if (v69)
    {
      v70 = *(&v83 + v68);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24822B3C4(0, *(v63 + 16) + 1, 1, v63);
        v63 = result;
      }

      v72 = *(v63 + 16);
      v71 = *(v63 + 24);
      if (v72 >= v71 >> 1)
      {
        result = sub_24822B3C4((v71 > 1), v72 + 1, 1, v63);
        v63 = result;
      }

      *(v63 + 16) = v72 + 1;
      v73 = v63 + 16 * v72;
      *(v73 + 32) = v70;
      *(v73 + 40) = v69;
      v58 = v78;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_248327BA0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_248381840();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DBThemeAssetDocument.document.getter(v8);
  sub_248381820();
  (*(v6 + 8))(v8, v5);
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  v9 = sub_2483825F0();
  if (v9)
  {
    v10 = v9;
    v11 = __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x28223BE20](v11);
    *(&v14 - 2) = v3;
    *(&v14 - 1) = a1;
    v12 = sub_248316520(sub_24832ABDC, (&v14 - 4), v10, MEMORY[0x277CF8DE8]);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return MEMORY[0x277D84F90];
  }

  return v12;
}

void sub_248327D48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v111 = a2;
  v112 = a3;
  v117 = a4;
  v122 = sub_2483823E0();
  v119 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v97 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_248382A90();
  v115 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v99 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_248382370();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_248382380();
  v120 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v123 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_248381840();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AE0, &qword_24839D230);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v96 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AE8, &qword_2483A15C8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v96 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF0, &qword_2483A15D0);
  v113 = *(v18 - 8);
  v114 = v18;
  MEMORY[0x28223BE20](v18);
  v108 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v104 = &v96 - v21;
  MEMORY[0x28223BE20](v22);
  v103 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0, qword_2483A1500);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v105 = &v96 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AF8, &qword_2483A15D8);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v96 - v31;
  v116 = a1;
  sub_2483822F0();
  sub_248232C78(v32, v29, &qword_27EE93AF8, &qword_2483A15D8);
  v107 = v25;
  v33 = *(v25 + 48);
  v106 = v24;
  v34 = 0;
  if (v33(v29, 1, v24) != 1)
  {
    v35 = v107;
    v36 = v105;
    v37 = v29;
    v38 = v106;
    (*(v107 + 32))(v105, v37, v106);
    sub_24814FB28(0, &unk_27EE907A8, 0x277D75348);
    sub_248381D80();
    v39 = sub_248383FE0();
    sub_248381D70();
    v40 = sub_248383FE0();
    v34 = [objc_allocWithZone(MEMORY[0x277CF9248]) initWithLightModeColor:v39 darkModeColor:v40];

    (*(v35 + 8))(v36, v38);
  }

  sub_24822D578(v32, &qword_27EE93AF8, &qword_2483A15D8);
  DBThemeAssetDocument.document.getter(v11);
  sub_248381820();
  (*(v109 + 8))(v11, v110);
  __swift_project_boxed_opaque_existential_0(v126, v126[3]);
  sub_2483825D0();
  v41 = v119;
  v42 = v122;
  v43 = (*(v119 + 48))(v14, 1, v122);
  v121 = v34;
  if (v43 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v126);
    sub_24822D578(v14, &qword_27EE93AE0, &qword_24839D230);
    v45 = v113;
    v44 = v114;
    (*(v113 + 56))(v17, 1, 1, v114);
    v46 = v116;
    v47 = v123;
LABEL_6:
    sub_24822D578(v17, &qword_27EE93AE8, &qword_2483A15C8);
    LODWORD(v49) = 0;
    v50 = v115;
    v51 = v118;
    goto LABEL_12;
  }

  sub_2483823B0();
  (*(v41 + 8))(v14, v42);
  v45 = v113;
  v44 = v114;
  (*(v113 + 56))(v17, 0, 1, v114);
  __swift_destroy_boxed_opaque_existential_0(v126);
  v48 = (*(v45 + 48))(v17, 1, v44);
  v46 = v116;
  v47 = v123;
  if (v48 == 1)
  {
    goto LABEL_6;
  }

  (*(v45 + 32))(v103, v17, v44);
  sub_2483823B0();
  sub_24822D648(&qword_27EE93B00, &qword_27EE93AF0, &qword_2483A15D0, MEMORY[0x277CF8B20]);
  sub_248383AE0();
  sub_248383AE0();
  v50 = v115;
  if (v126[0] == v124 && v126[1] == v125)
  {
    LODWORD(v49) = 1;
  }

  else
  {
    LODWORD(v49) = sub_248384680();
  }

  v51 = v118;
  v52 = *(v45 + 8);
  v52(v104, v44);
  v52(v103, v44);

  v34 = v121;
  v42 = v122;
  v47 = v123;
LABEL_12:
  sub_248382390();
  v53 = v120;
  v54 = (*(v120 + 88))(v47, v51);
  if (v54 == *MEMORY[0x277CF8DE0])
  {
    (*(v53 + 96))(v47, v51);
    sub_24814FB28(0, &unk_27EE907A8, 0x277D75348);

    v55 = sub_248383FE0();

    v56 = sub_248383FE0();
    v57 = [objc_allocWithZone(MEMORY[0x277CF9248]) initWithLightModeColor:v55 darkModeColor:v56];

    v58 = [objc_allocWithZone(MEMORY[0x277CF9288]) initWithColor_];

LABEL_20:
    v70 = v58;
    v71 = v108;
    sub_2483823B0();
    sub_248381860();
    (*(v45 + 8))(v71, v44);
    sub_248382300();
    v72 = sub_2483823D0();
    v73 = sub_2483823C0();
    v74 = objc_allocWithZone(MEMORY[0x277CF9280]);
    v75 = sub_248383930();

    v76 = sub_248383930();

    LOBYTE(v95) = v73 & 1;
    v77 = v121;
    v78 = [v74 initWithIdentifier:v75 displayName:v76 colorScheme:v70 sortIndex:v72 accentColor:v121 isDefault:v49 & 1 isProminent:v95];

    *v117 = v78;
    return;
  }

  if (v54 == *MEMORY[0x277CF8DC8])
  {
    (*(v53 + 96))(v47, v51);
    v59 = v107;
    v60 = *(v107 + 32);
    v61 = v105;
    LODWORD(v123) = v49;
    v49 = v106;
    v60(v105, v47, v106);
    sub_24814FB28(0, &unk_27EE907A8, 0x277D75348);
    sub_248381D80();
    v62 = sub_248383FE0();
    sub_248381D70();
    v63 = sub_248383FE0();
    v64 = [objc_allocWithZone(MEMORY[0x277CF9248]) initWithLightModeColor:v62 darkModeColor:v63];

    v58 = [objc_allocWithZone(MEMORY[0x277CF9288]) initWithColor_];
    v65 = v49;
    LOBYTE(v49) = v123;
    (*(v59 + 8))(v61, v65);
    goto LABEL_20;
  }

  if (v54 == *MEMORY[0x277CF8DD8])
  {
    (*(v53 + 96))(v47, v51);
    v66 = v101;
    v67 = v100;
    v68 = v102;
    (*(v101 + 32))(v100, v47, v102);
    v69 = sub_248328D48();
    v58 = [objc_allocWithZone(MEMORY[0x277CF9288]) initWithLinearGradient_];

    (*(v66 + 8))(v67, v68);
    goto LABEL_20;
  }

  if (v54 == *MEMORY[0x277CF8DD0])
  {
    v58 = [objc_allocWithZone(MEMORY[0x277CF9288]) initAsMulticolor];
    goto LABEL_20;
  }

  v79 = sub_24827C568();
  v80 = v99;
  v81 = v98;
  (*(v50 + 16))(v99, v79, v98);
  v82 = v119;
  v83 = v97;
  (*(v119 + 16))(v97, v46, v42);
  v84 = sub_248382A80();
  v85 = v42;
  v86 = sub_248383DA0();
  if (os_log_type_enabled(v84, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v126[0] = v88;
    *v87 = 136446210;
    v89 = sub_248382300();
    v90 = v83;
    v92 = v91;
    (*(v82 + 8))(v90, v85);
    v93 = sub_24814A378(v89, v92, v126);

    *(v87 + 4) = v93;
    _os_log_impl(&dword_248146000, v84, v86, "Unknown color scheme for palette %{public}s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x24C1CD5F0](v88, -1, -1);
    MEMORY[0x24C1CD5F0](v87, -1, -1);

    v51 = v118;
    (*(v50 + 8))(v99, v81);
  }

  else
  {

    (*(v82 + 8))(v83, v85);
    (*(v50 + 8))(v80, v81);
  }

  v94 = v120;
  *v117 = 0;
  (*(v94 + 8))(v123, v51);
}

id sub_248328C74()
{
  sub_24814FB28(0, &unk_27EE907A8, 0x277D75348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0, qword_2483A1500);
  sub_248381D80();
  v0 = sub_248383FE0();
  sub_248381D70();
  v1 = sub_248383FE0();
  v2 = [objc_allocWithZone(MEMORY[0x277CF9248]) initWithLightModeColor:v0 darkModeColor:v1];

  return v2;
}

id sub_248328D48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0, qword_2483A1500);
  v65 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v57 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - v4;
  v6 = sub_248382340();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v0;
  v10 = sub_248382350();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  v63 = v7;
  v64 = v1;
  if (v11)
  {
    v60 = v5;
    v66 = MEMORY[0x277D84F90];
    sub_24832ABAC(0, v11, 0);
    v13 = v66;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = *(v7 + 80);
    v58 = v10;
    v17 = v10 + ((v16 + 32) & ~v16);
    v61 = *(v15 + 56);
    v62 = v14;
    do
    {
      v62(v9, v17, v6);
      sub_248382330();
      v19 = v18;
      (*(v15 - 8))(v9, v6);
      v66 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24832ABAC((v20 > 1), v21 + 1, 1);
        v13 = v66;
      }

      *(v13 + 16) = v21 + 1;
      *(v13 + 8 * v21 + 32) = v19;
      v17 += v61;
      --v11;
    }

    while (v11);

    v1 = v64;
    v5 = v60;
    v12 = MEMORY[0x277D84F90];
    v22 = *(v13 + 16);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_11:

    v58 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v22 = *(MEMORY[0x277D84F90] + 16);
  if (!v22)
  {
    goto LABEL_11;
  }

LABEL_7:
  v66 = v12;
  sub_2483844C0();
  v23 = 32;
  do
  {
    sub_248381440();
    sub_2483844A0();
    sub_2483844D0();
    sub_2483844E0();
    sub_2483844B0();
    v23 += 8;
    --v22;
  }

  while (v22);

  v58 = v66;
  v1 = v64;
LABEL_12:
  v24 = sub_248382350();
  v25 = *(v24 + 16);
  v26 = v65;
  if (!v25)
  {

    v27 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v66 = v12;
  sub_24832AB8C(0, v25, 0);
  v27 = v66;
  v28 = *(v63 + 16);
  v29 = *(v63 + 80);
  v56 = v24;
  v30 = v24 + ((v29 + 32) & ~v29);
  v61 = *(v63 + 72);
  v62 = v28;
  v63 += 16;
  v31 = (v63 - 8);
  v60 = (v26 + 32);
  do
  {
    v62(v9, v30, v6);
    sub_248382320();
    (*v31)(v9, v6);
    v66 = v27;
    v32 = v5;
    v34 = *(v27 + 16);
    v33 = *(v27 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_24832AB8C((v33 > 1), v34 + 1, 1);
      v27 = v66;
    }

    *(v27 + 16) = v34 + 1;
    v26 = v65;
    (*(v65 + 32))(v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v34, v32, v64);
    v30 += v61;
    --v25;
    v5 = v32;
  }

  while (v25);

  v1 = v64;
  v12 = MEMORY[0x277D84F90];
  v35 = *(v27 + 16);
  if (v35)
  {
LABEL_18:
    v66 = v12;
    sub_2483844C0();
    v36 = v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    sub_24814FB28(0, &unk_27EE907A8, 0x277D75348);
    v38 = *(v26 + 16);
    v37 = v26 + 16;
    v63 = *(v37 + 56);
    v64 = v38;
    v65 = v37;
    v39 = (v37 - 8);
    v40 = v57;
    do
    {
      v64(v40, v36, v1);
      sub_248381D80();
      v41 = sub_248383FE0();
      sub_248381D70();
      v42 = sub_248383FE0();
      [objc_allocWithZone(MEMORY[0x277CF9248]) initWithLightModeColor:v41 darkModeColor:v42];

      (*v39)(v40, v1);
      sub_2483844A0();
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
      v36 += v63;
      --v35;
    }

    while (v35);
  }

LABEL_22:

  sub_248382310();
  v44 = v43;
  v46 = v45;
  sub_248382360();
  v48 = v47;
  v50 = v49;
  v51 = objc_allocWithZone(MEMORY[0x277CF9278]);
  sub_24814FB28(0, &qword_27EE90740, 0x277CCABB0);
  v52 = sub_248383B00();

  sub_24814FB28(0, &unk_27EE93AD0, 0x277CF9248);
  v53 = sub_248383B00();

  v54 = [v51 initWithLocations:v52 colors:v53 startPoint:v44 endPoint:{v46, v48, v50}];

  return v54;
}

Swift::Void __swiftcall DBThemeController.willUpdate(themeData:duration:delay:)(Swift::OpaquePointer themeData, Swift::Double duration, Swift::Double delay)
{
  v6 = *(v3 + OBJC_IVAR____TtC9DashBoard17DBThemeController_observers);
  sub_24814FB28(0, &qword_27EE8FEF8, 0x277CF8A50);
  v7 = sub_248383880();
  [v6 willUpdateThemeData:v7 withDuration:duration delay:delay];
}

id DBThemeController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBThemeController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBThemeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_248329708()
{
  v1 = v0;
  v2 = sub_2483826A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x277CF8EC8];
  if (v7 != *MEMORY[0x277CF8EC8] && v7 != *MEMORY[0x277CF8ED0] && v7 != *MEMORY[0x277CF8EC0])
  {
    v10 = v7;
    (*(v3 + 8))(v6, v2);
    v7 = v10;
  }

  return v7 != v8;
}

id sub_248329850(int a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithRed:BYTE2(a1) / 255.0 green:BYTE1(a1) / 255.0 blue:a1 / 255.0 alpha:1.0];
}

id sub_2483298C8(int a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v2 initWithRed:BYTE2(a1) / 255.0 green:BYTE1(a1) / 255.0 blue:a1 / 255.0 alpha:1.0];
}

void sub_248329940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93B18, &qword_2483A15F8);
  v35 = v4;
  v6 = sub_2483845D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_248384780();
      sub_2483839E0();
      v25 = sub_2483847B0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_248329BE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90210, &unk_2483A1600);
  v38 = v4;
  v6 = sub_2483845D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_248384780();
      sub_2483839E0();
      v28 = sub_2483847B0();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_248329EA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_2483845D0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_248384780();
      sub_2483839E0();
      v28 = sub_2483847B0();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_24832A144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24822B8A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_248329940(v16, a4 & 1);
      v11 = sub_24822B8A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2483846E0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_24832A5E4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_24832A2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24822B8A0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_248329BE8(v18, a5 & 1);
      v13 = sub_24822B8A0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_2483846E0();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_24832A754();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_24832A448(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_24822B8A0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_248329EA8(v20, a4 & 1, a5, a6);
      v15 = sub_24822B8A0(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        v15 = sub_2483846E0();
        __break(1u);
        return MEMORY[0x2821F96F8](v15, v27);
      }
    }

    else
    {
      v23 = v15;
      sub_24832A8CC(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8](v15, v27);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void sub_24832A5E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93B18, &qword_2483A15F8);
  v2 = *v0;
  v3 = sub_2483845C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24832A754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90210, &unk_2483A1600);
  v2 = *v0;
  v3 = sub_2483845C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24832A8CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2483845C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}