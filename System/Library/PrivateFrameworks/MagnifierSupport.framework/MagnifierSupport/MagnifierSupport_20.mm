void sub_257D8FB78()
{
  v0 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v0 setEnabled_];

  v1 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v1 setEnabled_];
}

void sub_257D8FCE8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if ((v2 & 1) == 0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(aBlock[0]))
    {
      v5 = sub_257ED0640();

      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v6 = &v4[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
    *v6 = 0;
    v6[8] = 0;
  }

LABEL_10:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    if (v2)
    {
      v9 = 0.1;
    }

    else
    {
      v9 = 0.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(aBlock[0]))
    {
      v10 = 7471104;
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = aBlock[0];
    *(v12 + 17) = v2;
    *(v12 + 24) = v4;
    aBlock[4] = sub_257D9A694;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_251;
    v13 = _Block_copy(aBlock);
    v14 = v4;

    [v11 transitionWithView:v8 duration:v10 options:v13 animations:0 completion:v9];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_257D90050(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
    if (v2)
    {
      v6 = sub_257DE1658();
    }

    else
    {
      v6 = sub_257DE0C48();
    }

    v7 = v6;
    [v5 setImage:v6 forState:0];

    v8 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton;
    v9 = *&v4[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton];
    if (v2)
    {
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 systemYellowColor];
    }

    else
    {
      v13 = qword_281544A78;
      v11 = v9;
      if (v13 != -1)
      {
        swift_once();
      }

      v12 = qword_281548308;
    }

    v14 = v12;
    [v11 setBackgroundColor_];

    v15 = *&v4[v8];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 bundleForClass_];
    if (v2)
    {
      v20 = sub_257ECF4C0();
      v21 = sub_257ECF4C0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      if (!v22)
      {
        sub_257ECF500();
        v22 = sub_257ECF4C0();
      }
    }

    else
    {
      v23 = sub_257ECF4C0();
      v24 = sub_257ECF4C0();
      v22 = [v19 localizedStringForKey:v23 value:0 table:v24];

      if (!v22)
      {
        sub_257ECF500();
        v22 = sub_257ECF4C0();
      }
    }

    [v18 setAccessibilityValue_];

    v25 = *&v4[v8];
    v26 = [v17 bundleForClass_];
    v27 = sub_257ECF4C0();
    v28 = sub_257ECF4C0();
    v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

    if (!v29)
    {
      sub_257ECF500();
      v29 = sub_257ECF4C0();
    }

    [v25 setAccessibilityHint_];
  }
}

void *sub_257D904F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_257ECF190();
  v15 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v16, v17, v18, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v28 = sub_257ECFD30();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    aBlock[4] = a4;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = a5;
    v25 = _Block_copy(aBlock);
    v27 = v23;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257D99F5C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v26 = v28;
    MEMORY[0x259C72880](0, v21, v14, v25);
    _Block_release(v25);

    (*(v8 + 8))(v14, v7);
    return (*(v15 + 8))(v21, v29);
  }

  return result;
}

double sub_257D90800(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v15 - v7;
  sub_257D8FB78();
  if (*&a1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer])
  {
    v10 = sub_257ECF930();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_257ECF900();
    v11 = a1;
    v12 = sub_257ECF8F0();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_257C3FBD4(0, 0, v8, &unk_257EE8690, v13);
  }

  return result;
}

uint64_t sub_257D9093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_257ECF900();
  *(v4 + 72) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D909D4, v6, v5);
}

void sub_257D909D4()
{
  v1 = v0[8];

  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v0[8];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_257D9A690;
  *(v5 + 24) = v4;
  v0[6] = sub_257D9A68C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_257D95A20;
  v0[5] = &block_descriptor_208;
  v6 = _Block_copy(v0 + 2);
  v7 = v2;
  v8 = v3;
  sub_257ECC3F0();

  [v7 updateVisibleMenuWithBlock_];

  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v0[1];

  v9();
}

uint64_t sub_257D90C60(void *a1, void (*a2)(void *))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v9[3] = sub_257BD2C2C(0, &unk_281543D80, 0x277D75220);
    v9[0] = a1;
    v6 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
    v7 = a1;
    if (v6)
    {
      v8 = v6;
      a2(v9);
    }

    swift_unknownObjectRelease();
    return sub_257BE4084(v9, &unk_27F8F62F0, &unk_257ED9D30);
  }

  return result;
}

void sub_257D90DA0(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  sub_257ECD350();
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_257BAC000, v12, v13, "didTapSnapshotButton", v14, 2u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(v55[0]) && LOBYTE(v55[0]) != 1)
  {

    goto LABEL_14;
  }

  v15 = sub_257ED0640();

  if (v15)
  {
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v55[0]) = 3;
    sub_257ECC3F0();
    sub_257ECDD70();
LABEL_15:
    v17 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    v18 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton);
    v19 = v18;
    v20 = sub_257D84490(v18);

    if (v20)
    {
      sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
      v21 = sub_257ECF7F0();
    }

    else
    {
      v21 = 0;
    }

    [v17 setAccessibilityCustomActions_];

LABEL_19:
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(v55[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v55[0]) && LOBYTE(v55[0]) != 1)
    {
    }

    else
    {
      v16 = sub_257ED0640();

      if ((v16 & 1) == 0)
      {
LABEL_30:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v55[0]) = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
        v32 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
        if (v32)
        {
          v33 = v32;
          v34 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
          [v34 addInteraction_];
        }

        goto LABEL_15;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v55[0]) = 2;
    sub_257ECC3F0();
    sub_257ECDD70();
    goto LABEL_30;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v55[0])
  {

    v22 = &unk_281548000;
    if (sub_257D71788())
    {
      v23 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
      swift_beginAccess();
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v55[0] = *v23;
      v55[1] = v24;
      v56 = v25;
      v26 = qword_2815447E0;

      if (v26 != -1)
      {
        v27 = swift_once();
      }

      MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
      *(&v51 - 2) = v55;
      sub_257ECFD50();

      if (LOBYTE(v52[0]) && LOBYTE(v52[0]) == 1)
      {

        v22 = &unk_281548000;
        goto LABEL_34;
      }

      v22 = &unk_281548000;
      v35 = sub_257ED0640();

      if (v35)
      {
LABEL_34:
        if ((byte_27F912FE8 & 1) == 0)
        {
          byte_27F912FE8 = 1;
          v36 = v2 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount;
          *v36 = 0;
          *(v36 + 8) = 0;
          sub_257C77614();
        }
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v57 = sub_257BD2C2C(0, &unk_281543D80, 0x277D75220);
      v55[0] = a1;
      v37 = a1;
      sub_257D465A4();
      swift_unknownObjectRelease();
      sub_257BE4084(v55, &unk_27F8F62F0, &unk_257ED9D30);
    }

    v38 = v22[105] + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
    swift_beginAccess();
    v39 = *(v38 + 8);
    v40 = *(v38 + 16);
    v52[0] = *v38;
    v52[1] = v39;
    v53 = v40;
    v41 = qword_2815447E0;

    if (v41 != -1)
    {
      v42 = swift_once();
    }

    MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
    *(&v51 - 2) = v52;
    sub_257ECFD50();

    if (v54 && v54 == 1)
    {
    }

    else
    {
      v47 = sub_257ED0640();

      if ((v47 & 1) == 0)
      {
        v48 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
        if (v48)
        {
          v49 = v48;
          v50 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
          [v50 removeInteraction_];
        }
      }
    }

    v21 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    [v21 setAccessibilityCustomActions_];
    goto LABEL_19;
  }
}

void sub_257D91908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL))
{
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v16 = &qword_281544000;
  if (IsVoiceOverRunning)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v16 = &qword_281544000;
    if ((v26 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v16 = &qword_281544000;
      if ((v25 & 1) == 0)
      {
        sub_257ECD440();
        v17 = sub_257ECDA20();
        v18 = sub_257ECFBD0();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v23 = a2;
          v20 = v19;
          *v19 = 67109120;
          *(v19 + 4) = 1;
          _os_log_impl(&dword_257BAC000, v17, v18, "Setting detectionModeOn to %{BOOL}d", v19, 8u);
          MEMORY[0x259C74820](v20, -1, -1);
        }

        (*(v8 + 8))(v14, v7);
        swift_getKeyPath();
        swift_getKeyPath();
        v24 = 1;
        sub_257ECC3F0();
        sub_257ECDD70();
        v16 = &qword_281544000;
      }
    }
  }

  if (v16[508] != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v21 = (v28 & 1) == 0;
  a5(v21);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v21;
  sub_257ECC3F0();
  v22 = sub_257ECDD70();
  sub_257D8651C(v22);
}

void sub_257D91C68()
{
  v1 = sub_257D859BC();
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
  *v2 = v1 + 1;
  v2[8] = 0;
  if (qword_281544FE0 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(v12[0]) && LOBYTE(v12[0]) == 1)
  {
  }

  else
  {
    v3 = sub_257ED0640();

    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v4 = v12[0];
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v12[0]))
    {
      v7 = 7471104;
    }

    else
    {
      v7 = 0;
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v12[0];
    *(v9 + 17) = v4;
    *(v9 + 24) = v0;
    v12[4] = sub_257D98464;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_257D231C0;
    v12[3] = &block_descriptor_74;
    v10 = _Block_copy(v12);
    v11 = v0;

    [v8 transitionWithView:v6 duration:v7 options:v10 animations:0 completion:0.1];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

id sub_257D91FB0(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_settingsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_switchActivityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_inputFieldLayoutContraints] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints] = v7;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotModeButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneLabel] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel] = 0;
  v8 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView;
  *&v3[v8] = sub_257D84FC4();
  v9 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton;
  *&v3[v9] = sub_257D85250();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameReviewSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_microphoneSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_peopleDetectionSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_doorDetectionSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_objectUnderstandingSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_textDetectionSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_imageCaptionDetectionSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_pointSpeakSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeAvailabilitySubscription] = 0;
  v10 = &v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
  *v10 = 0;
  v10[8] = 1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer] = 0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeActionIdentifier;
  *&v3[v11] = sub_257ECF4C0();
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257D9233C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_settingsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_switchActivityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_inputFieldLayoutContraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints] = v4;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotModeButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel] = 0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView;
  *&v1[v5] = sub_257D84FC4();
  v6 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton;
  *&v1[v6] = sub_257D85250();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameModeSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameReviewSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_microphoneSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_peopleDetectionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_doorDetectionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_objectUnderstandingSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_textDetectionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_imageCaptionDetectionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_pointSpeakSubscription] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeAvailabilitySubscription] = 0;
  v7 = &v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
  *v7 = 0;
  v7[8] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer] = 0;
  v8 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeActionIdentifier;
  *&v1[v8] = sub_257ECF4C0();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_257D92964()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257EDED10;
  *(v0 + 32) = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
  *(v0 + 40) = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  *(v0 + 48) = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  return v0;
}

id sub_257D92BC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CameraTrayUIButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_257D92C1C()
{
  sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  v6 = sub_257ECF4C0();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed_];

  v9 = sub_257ECFF90();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]) && LOBYTE(aBlock[0]) == 1)
  {

LABEL_7:
    v11 = 1;
    goto LABEL_9;
  }

  v10 = sub_257ED0640();

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = 0;
LABEL_9:
  [v9 setState_];
  v12 = [v1 bundleForClass_];
  v13 = sub_257ECF4C0();
  v14 = sub_257ECF4C0();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  sub_257ECF500();
  v16 = sub_257ECF4C0();
  v17 = [v7 systemImageNamed_];

  v18 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!LOBYTE(aBlock[0]))
  {

    goto LABEL_13;
  }

  v19 = sub_257ED0640();

  if (v19)
  {
LABEL_13:
    v20 = 1;
    goto LABEL_14;
  }

  v20 = 0;
LABEL_14:
  [v18 setState_];
  v21 = [v1 bundleForClass_];
  v22 = sub_257ECF4C0();
  v23 = sub_257ECF4C0();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  sub_257ECF500();
  v25 = sub_257ECF4C0();
  v26 = [v7 systemImageNamed_];

  v27 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]) && LOBYTE(aBlock[0]) != 1)
  {

    goto LABEL_19;
  }

  v28 = sub_257ED0640();

  if (v28)
  {
LABEL_19:
    v29 = 1;
    goto LABEL_20;
  }

  v29 = 0;
LABEL_20:
  [v27 setState_];
  sub_257BD2C2C(0, qword_281543E10, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_257EDED10;
  *(v30 + 32) = v27;
  *(v30 + 40) = v9;
  *(v30 + 48) = v18;
  v31 = v27;
  v32 = v9;
  v33 = v18;
  v43 = v30;
  v34 = sub_257ECFEA0();
  v35 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = v44;
  aBlock[4] = sub_257D99FC8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D93734;
  aBlock[3] = &block_descriptor_125_0;
  v37 = _Block_copy(aBlock);
  v38 = v44;

  v39 = [v35 elementWithUncachedProvider_];
  _Block_release(v37);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_257ED9BE0;
  *(v40 + 32) = v34;
  *(v40 + 40) = v39;
  v41 = sub_257ECFEA0();

  return v41;
}

uint64_t sub_257D93508(uint64_t a1, char a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

double sub_257D935F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v19 - v11;
  v13 = sub_257ECF930();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_257ECF900();
  v14 = a3;
  sub_257ECC3F0();
  v15 = sub_257ECF8F0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;
  sub_257C3FBD4(0, 0, v12, &unk_257EE8580, v16);

  return result;
}

double sub_257D93734(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_257ECC3F0();
  v2(sub_257D99FD0, v4);

  return result;
}

void sub_257D937C8(uint64_t a1, uint64_t a2)
{
  sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);
  v3 = sub_257ECF7F0();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_257D93844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_257ECF900();
  v6[5] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_257D938E0, v8, v7);
}

uint64_t sub_257D938E0()
{
  *(v0 + 64) = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_257D93E28;

    return sub_257DF0C70();
  }

  else
  {

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_257DF1478();
      swift_unknownObjectRelease();
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();
    v6 = [v5 bundleForClass_];
    v7 = sub_257ECF4C0();
    v8 = sub_257ECF4C0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    sub_257ECF500();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 88) == 1)
    {
      v10 = sub_257ECF4C0();
      [objc_opt_self() _systemImageNamed_];
    }

    v11 = *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeActionIdentifier);
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_257ECDD60();

    if (*(v0 + 89))
    {
      v13 = 0;
    }

    else
    {
      v14 = [v5 bundleForClass_];
      v15 = sub_257ECF4C0();
      v16 = sub_257ECF4C0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      sub_257ECF500();
      v13 = v18;
    }

    v19 = *(v0 + 24);
    v20 = *(v0 + 16);
    sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = v20;
    v27 = v21;
    v23 = sub_257ECFF90();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    [v23 setAttributes_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_257ED9BF0;
    *(v24 + 32) = v23;
    v25 = v23;
    v19(v24);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_257D93E28()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_257D93F6C, v3, v2);
}

uint64_t sub_257D93F6C()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257DF1478();
    swift_unknownObjectRelease();
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 88) == 1)
  {
    v7 = sub_257ECF4C0();
    [objc_opt_self() _systemImageNamed_];
  }

  v8 = *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeActionIdentifier);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  sub_257ECDD60();

  if (*(v0 + 89))
  {
    v10 = 0;
  }

  else
  {
    v11 = [v2 bundleForClass_];
    v12 = sub_257ECF4C0();
    v13 = sub_257ECF4C0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    sub_257ECF500();
    v10 = v15;
  }

  v16 = *(v0 + 24);
  v17 = *(v0 + 16);
  sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = v17;
  v25 = v18;
  v20 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v20 setAttributes_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257ED9BF0;
  *(v21 + 32) = v20;
  v22 = v20;
  v16(v21);

  v23 = *(v0 + 8);

  return v23();
}

double sub_257D9441C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v16 - v8;
  v10 = sub_257ECF930();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_257ECF900();
  v11 = a2;
  v12 = sub_257ECF8F0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_257C3FED4(0, 0, v9, &unk_257EE8590, v13);

  return result;
}

uint64_t sub_257D94544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_257ECF900();
  v4[4] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_257D945DC, v6, v5);
}

uint64_t sub_257D945DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_257D946D4;

    return sub_257DEFE88();
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_257D946D4()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_257D94818, v3, v2);
}

uint64_t sub_257D94818()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257D948E8()
{
  v1 = sub_257ECF120();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v9, v10, v11, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v15 = sub_257ECFD30();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_257D99F54;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_112;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257D99F5C(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v14, v7, v17);
  _Block_release(v17);

  (*(v21 + 8))(v7, v1);
  return (*(v8 + 8))(v14, v20);
}

void sub_257D94BDC(void *a1)
{
  v1 = [a1 view];
  if (!v1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v4 = sub_257D94F38(1);

  v40 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v6 = 0;
    v37 = v4 & 0xFFFFFFFFFFFFFF8;
    v38 = (v4 & 0xC000000000000001);
    v7 = &selRef_imageByApplyingSymbolConfiguration_;
    v36 = v4;
    while (1)
    {
      if (v38)
      {
        v8 = MEMORY[0x259C72E20](v6, v4);
      }

      else
      {
        if (v6 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v8 frame];
      v12 = v11;
      v13 = objc_opt_self();
      v14 = [v13 v7[52]];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v42.origin.x = v16;
      v42.origin.y = v18;
      v42.size.width = v20;
      v42.size.height = v22;
      if (v12 == CGRectGetWidth(v42))
      {
        [v9 frame];
        v24 = v23;
        v25 = [v13 v7[52]];
        [v25 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v43.origin.x = v27;
        v43.origin.y = v29;
        v43.size.width = v31;
        v43.size.height = v33;
        if (v24 == CGRectGetHeight(v43))
        {
          sub_257ED0330();
          sub_257ED0370();
          sub_257ED0380();
          sub_257ED0340();
        }

        else
        {
        }

        v4 = v36;
      }

      else
      {
      }

      ++v6;
      v7 = &selRef_imageByApplyingSymbolConfiguration_;
      if (v10 == i)
      {
        v34 = v40;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_23:

  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    if (sub_257ED0210())
    {
      goto LABEL_26;
    }
  }

  else if (*(v34 + 16))
  {
LABEL_26:
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x259C72E20](0, v34);
      goto LABEL_29;
    }

    if (*(v34 + 16))
    {
      v35 = *(v34 + 32);
LABEL_29:
      v39 = v35;

      [v39 setAlpha_];

      return;
    }

    __break(1u);
    goto LABEL_38;
  }
}

uint64_t sub_257D94F38(char a1)
{
  v2 = [v1 subviews];
  sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
  v3 = sub_257ECF810();

  v45[0] = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_257ED0210();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C72E20](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v6 = v45[0];
  }

  while (v5 != v4);
LABEL_21:

  if ((a1 & 1) == 0)
  {
    return v6;
  }

  v10 = [v41 subviews];
  v11 = sub_257ECF810();

  v12 = v6;
  if (v11 >> 62)
  {
    goto LABEL_65;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_66:

    return v12;
  }

  while (result >= 1)
  {
    v14 = 0;
    v39 = result;
    v40 = v11 & 0xC000000000000001;
    v37 = v11;
    v38 = v11 + 32;
    while (1)
    {
      v15 = v40 ? MEMORY[0x259C72E20](v14, v11) : *(v38 + 8 * v14);
      v16 = v15;
      v17 = sub_257D94F38(1);
      v18 = v17;
      v19 = v17 >> 62;
      v20 = v17 >> 62 ? sub_257ED0210() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v12 >> 62;
      v22 = v12 >> 62 ? sub_257ED0210() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v20;
      v23 = __OFADD__(v22, v20);
      v24 = v22 + v20;
      if (v23)
      {
        break;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v21)
        {
          v25 = v12 & 0xFFFFFFFFFFFFFF8;
          if (v24 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

LABEL_41:
        sub_257ED0210();
        goto LABEL_42;
      }

      if (v21)
      {
        goto LABEL_41;
      }

LABEL_42:
      v12 = sub_257ED0310();
      v25 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_43:
      v42 = v16;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v19)
      {
        v28 = sub_257ED0210();
        if (!v28)
        {
LABEL_26:

          if (v44 > 0)
          {
            goto LABEL_61;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_26;
        }
      }

      if (((v27 >> 1) - v26) < v44)
      {
        goto LABEL_62;
      }

      v29 = v25 + 8 * v26 + 32;
      if (v19)
      {
        if (v28 < 1)
        {
          goto LABEL_64;
        }

        sub_257BD2D4C(&qword_27F8F8FB8, &qword_27F8F8FB0, &qword_257EE8570, MEMORY[0x277D83988]);
        for (i = 0; i != v28; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FB0, &qword_257EE8570);
          v32 = sub_257CA8910(v45, i, v18);
          v34 = *v33;
          (v32)(v45, 0);
          *(v29 + 8 * i) = v34;
        }

        v11 = v37;
        v30 = v44;
        if (v44 <= 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_257BD2C2C(0, &qword_27F8F8FA8, 0x277D75D68);
        v30 = v44;
        swift_arrayInitWithCopy();

        if (v44 <= 0)
        {
          goto LABEL_27;
        }
      }

      v35 = *(v25 + 16);
      v23 = __OFADD__(v35, v30);
      v36 = v35 + v30;
      if (v23)
      {
        goto LABEL_63;
      }

      *(v25 + 16) = v36;
LABEL_27:
      if (++v14 == v39)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    result = sub_257ED0210();
    if (!result)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
  return result;
}

void sub_257D95450(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = [a1 children];
  sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);
  v4 = sub_257ECF810();

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v13[1] = MEMORY[0x277D84F90];
      sub_257ED0360();
      if (v5 < 0)
      {
        break;
      }

      v11 = v2;
      v6 = 0;
      v2 = (v4 & 0xC000000000000001);
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v2)
        {
          v8 = MEMORY[0x259C72E20](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v12 = v8;
        sub_257D9565C(&v12, v13);

        sub_257ED0330();
        sub_257ED0370();
        sub_257ED0380();
        sub_257ED0340();
        ++v6;
        if (v7 == v5)
        {

          v2 = v11;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v5 = sub_257ED0210();
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_15:

LABEL_16:
    v10 = sub_257ECF7F0();

    [v2 menuByReplacingChildren_];
  }
}

id sub_257D9565C@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 identifier];
    v9 = sub_257ECF500();
    v11 = v10;
    if (v9 == sub_257ECF500() && v11 == v12)
    {
    }

    else
    {
      v14 = sub_257ED0640();

      if ((v14 & 1) == 0)
      {

        goto LABEL_19;
      }
    }

    v23 = v7;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v26)
    {
      v15 = 0;
    }

    else
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      v18 = sub_257ECF4C0();
      v19 = sub_257ECF4C0();
      v15 = [v17 localizedStringForKey:v18 value:0 table:v19];

      if (!v15)
      {
        sub_257ECF500();
        v15 = sub_257ECF4C0();
      }
    }

    [v6 setDiscoverabilityTitle_];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    [v6 setAttributes_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v24 == 1)
    {
      v20 = sub_257ECF4C0();
      v21 = [objc_opt_self() _systemImageNamed_];
    }

    else
    {
      v21 = 0;
    }

    [v6 setImage_];
  }

LABEL_19:
  *a3 = v4;
  return v4;
}

id sub_257D95A20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

double sub_257D95A74(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v16 - v8;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_257D948E8();

  v11 = sub_257ECF930();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_257ECF900();
  sub_257ECC3F0();
  v12 = sub_257ECF8F0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  sub_257C3FBD4(0, 0, v9, &unk_257EE8518, v13);

  return result;
}

uint64_t sub_257D95BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_257ECF900();
  v4[9] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_257D95C44, v6, v5);
}

void sub_257D95C44()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_257D95ED8;

    sub_257DF0C70();
    return;
  }

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();

  if (v5)
  {
    sub_257DF1478();
    swift_unknownObjectRelease();
  }

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = *(v6 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_257D99F24;
  *(v10 + 24) = v9;
  v0[6] = sub_257D99F2C;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_257D95A20;
  v0[5] = &block_descriptor_99;
  v11 = _Block_copy(v0 + 2);
  v12 = v7;
  v13 = v8;
  sub_257ECC3F0();

  [v12 updateVisibleMenuWithBlock_];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v0[1];

  v14();
}

uint64_t sub_257D95ED8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_257D9601C, v3, v2);
}

void sub_257D9601C()
{

  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = swift_unknownObjectWeakLoadStrong();

  if (v2)
  {
    sub_257DF1478();
    swift_unknownObjectRelease();
  }

  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_257D99F24;
  *(v7 + 24) = v6;
  v0[6] = sub_257D99F2C;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_257D95A20;
  v0[5] = &block_descriptor_99;
  v8 = _Block_copy(v0 + 2);
  v9 = v4;
  v10 = v5;
  sub_257ECC3F0();

  [v9 updateVisibleMenuWithBlock_];

  _Block_release(v8);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v0[1];

  v11();
}

uint64_t sub_257D96328(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_257D963F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);
  v3 = sub_257ECF810();
  sub_257ECC3F0();
  v4 = v2(v3);

  return v4;
}

id sub_257D96488()
{
  type metadata accessor for CameraTrayUIButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v0 setContentMode_];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v2 setCornerCurve_];

  v3 = [v0 layer];
  [v3 setMasksToBounds_];

  return v0;
}

id sub_257D965FC(uint64_t a1)
{
  v1 = sub_257D96488();
  v2 = qword_281544A78;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor_];
  v4 = sub_257DE0C48();
  [v3 setImage:v4 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = v3;
  v8 = [v6 bundleForClass_];
  v9 = sub_257ECF4C0();
  v10 = sub_257ECF4C0();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  if (!v11)
  {
    sub_257ECF500();
    v11 = sub_257ECF4C0();
  }

  [v7 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257ED6D30;
  v13 = [v6 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v17 = sub_257ECF500();
  v19 = v18;

  *(v12 + 32) = v17;
  *(v12 + 40) = v19;
  v20 = sub_257ECF7F0();

  [v7 setAccessibilityUserInputLabels_];

  v21 = sub_257ECF4C0();
  [v7 setAccessibilityIdentifier_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 addTarget:a1 action:sel_detectionMenuActionTriggered_ forControlEvents:0x4000];
  v22 = swift_allocObject();
  *(v22 + 16) = v7;
  aBlock[4] = sub_257D96E28;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D84E54;
  aBlock[3] = &block_descriptor_13;
  v23 = _Block_copy(aBlock);
  v24 = v7;

  [v24 setAccessibilityCustomActionsBlock_];
  _Block_release(v23);

  return v24;
}

id sub_257D969E8()
{
  v0 = sub_257D96488();
  v1 = qword_281544A78;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  [v2 setBackgroundColor_];
  v3 = sub_257DE0C70();
  [v2 setImage:v3 forState:0];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = v2;
  v7 = [v5 bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = sub_257ECF4C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v10)
  {
    sub_257ECF500();
    v10 = sub_257ECF4C0();
  }

  [v6 setAccessibilityLabel_];

  v11 = sub_257ECF4C0();
  [v6 setAccessibilityIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257ED9BF0;
  v13 = [v5 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    sub_257ECF500();
    v16 = sub_257ECF4C0();
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = objc_allocWithZone(MEMORY[0x277D75088]);
  v23[4] = sub_257D96E08;
  v23[5] = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_257D96328;
  v23[3] = &block_descriptor_38;
  v19 = _Block_copy(v23);
  sub_257ECC3F0();
  v20 = [v18 initWithName:v16 actionHandler:v19];

  _Block_release(v19);

  *(v12 + 32) = v20;
  sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
  v21 = sub_257ECF7F0();

  [v6 setAccessibilityCustomActions_];

  return v6;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D96E38()
{
  v2 = [objc_opt_self() preferredLanguages];
  v3 = sub_257ECF810();

  if (!v3[2])
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  v1 = 0x4E492D6174;
  v0 = v3[4];
  v2 = v3[5];

  v4 = v0 == 0x4E492D6E62 && v2 == 0xE500000000000000;
  if (v4 || (sub_257ED0640() & 1) != 0)
  {
    goto LABEL_24;
  }

  v5 = v0 == 0x4E492D6E6BLL && v2 == 0xE500000000000000;
  if (v5 || (sub_257ED0640() & 1) != 0)
  {
    goto LABEL_24;
  }

  v6 = v0 == 0x4E492D6174 && v2 == 0xE500000000000000;
  if (!v6 && (sub_257ED0640() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_27;
  }

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v11 & 1) == 0)
  {
LABEL_24:

    v9 = 0;
    return v9 & 1;
  }

LABEL_19:
  if (v0 == v1 + 1024 && v2 == 0xE500000000000000)
  {
    goto LABEL_24;
  }

  v8 = sub_257ED0640();

  v9 = v8 ^ 1;
  return v9 & 1;
}

id sub_257D97020(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v3) = 1.0;
  [v2 setHyphenationFactor_];
  [v2 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v5 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  v6 = sub_257BD2C2C(0, &qword_27F8F8F98, 0x277D74240);
  *(inited + 40) = v2;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v2;
  v10 = v7;
  LOBYTE(v7) = sub_257D96E38();
  v11 = objc_opt_self();
  v12 = 12.0;
  if (v7)
  {
    v12 = 14.0;
  }

  v13 = [v11 systemFontOfSize_];
  *(inited + 104) = sub_257BD2C2C(0, &qword_27F8F8FA0, 0x277D74300);
  *(inited + 80) = v13;
  sub_257BE8668(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9420, &qword_257EDA500);
  swift_arrayDestroy();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_257ECF4C0();
  v17 = sub_257ECF4C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  if (!v18)
  {
    sub_257ECF500();
    v18 = sub_257ECF4C0();
  }

  v19 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  _s3__C3KeyVMa_0(0);
  sub_257D99F5C(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
  v20 = sub_257ECF3C0();

  v21 = [v19 initWithString:v18 attributes:v20];

  return v21;
}

id sub_257D97318()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0xD00000000000001DLL, 0x8000000257F03E70);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_257D9740C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0xD00000000000001ALL, 0x8000000257F03E90);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_257D97500()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0xD00000000000001CLL, 0x8000000257F03EB0);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_257D975F4(uint64_t a1)
{
  v2 = sub_257D96488();
  v3 = qword_281544A78;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setBackgroundColor_];
  v5 = sub_257DE0E18();
  [v4 setImage:v5 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v4;
  v9 = [v7 bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  [v8 setAccessibilityLabel_];

  v13 = sub_257ECF4C0();
  [v8 setAccessibilityIdentifier_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 addTarget:a1 action:sel_didTapRedoDocumentButton_ forControlEvents:64];
  return v8;
}

id sub_257D97820()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0x636F642E6F646572, 0xED0000746E656D75);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_257D97914(uint64_t a1)
{
  v2 = sub_257D96488();
  v3 = qword_281544A78;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setBackgroundColor_];
  v5 = sub_257DE0F64();
  [v4 setImage:v5 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v4;
  v9 = [v7 bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  [v8 setAccessibilityLabel_];

  v13 = sub_257ECF4C0();
  [v8 setAccessibilityIdentifier_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 addTarget:a1 action:sel_didTapReaderButton_ forControlEvents:64];
  return v8;
}

id sub_257D97B28()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0xD000000000000019, 0x8000000257F03F10);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_257D97C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v37 - v7;
  v9 = sub_257ECFFA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ED0030();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_257D96488();
  sub_257ED0020();
  sub_257DE10B0();
  sub_257ED0010();
  (*(v10 + 104))(v16, *MEMORY[0x277D74FD8], v9);
  sub_257ECFFB0();
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  v26 = qword_281548308;
  sub_257ECFFF0();
  (*(v18 + 16))(v8, v24, v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  v27 = v25;
  sub_257ED0050();

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = objc_opt_self();
  v30 = v27;
  v31 = [v29 bundleForClass_];
  v32 = sub_257ECF4C0();
  v33 = sub_257ECF4C0();
  v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

  if (!v34)
  {
    sub_257ECF500();
    v34 = sub_257ECF4C0();
  }

  [v30 setAccessibilityLabel_];

  v35 = sub_257ECF4C0();
  [v30 setAccessibilityIdentifier_];

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 addTarget:a1 action:sel_didTapShareButton_ forControlEvents:64];
  (*(v18 + 8))(v24, v17);
  return v30;
}

id sub_257D98004()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0xD000000000000018, 0x8000000257F03ED0);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_257D980F8(uint64_t a1)
{
  v2 = sub_257D96488();
  v3 = qword_281544A78;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setBackgroundColor_];
  v5 = sub_257DE11FC();
  [v4 setImage:v5 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v4;
  v9 = [v7 bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  [v8 setAccessibilityLabel_];

  v13 = sub_257ECF4C0();
  [v8 setAccessibilityIdentifier_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 addTarget:a1 action:sel_didTapSettingsButton_ forControlEvents:64];
  return v8;
}

id sub_257D98320()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0xD000000000000015, 0x8000000257F03DF0);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

void sub_257D98414(void *a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

id sub_257D98474()
{
  v0 = sub_257D96488();
  v1 = sub_257DE1234();
  [v0 setImage:v1 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v4 setAccessibilityLabel_];

  v9 = v4;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setShowsLargeContentViewer_];
  v10 = [v3 bundleForClass_];
  v11 = sub_257ECF4C0();
  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  if (!v13)
  {
    sub_257ECF500();
    v13 = sub_257ECF4C0();
  }

  [v9 setLargeContentTitle_];

  v14 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v9 addInteraction_];

  return v9;
}

id sub_257D98708()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v26 - v5;
  v7 = sub_257ED0030();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ED0020();
  sub_257DE0C7C();
  sub_257ED0010();
  sub_257ECFFD0();
  sub_257ECFFC0();
  sub_257ECFFE0();
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  v15 = qword_281548308;
  sub_257ECFFF0();
  v16 = sub_257D96488();
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v8 + 16))(v6, v14, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v17 = v16;
  sub_257ED0050();

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = v17;
  v21 = [v19 bundleForClass_];
  v22 = sub_257ECF4C0();
  v23 = sub_257ECF4C0();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  if (!v24)
  {
    sub_257ECF500();
    v24 = sub_257ECF4C0();
  }

  [v20 setAccessibilityLabel_];

  (*(v8 + 8))(v14, v7);
  return v20;
}

id sub_257D98A10()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_257D97020(0xD000000000000019, 0x8000000257EFAB30);
  [v0 setAttributedText_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setIsAccessibilityElement_];
  [v0 setNumberOfLines_];
  return v0;
}

uint64_t sub_257D98B04(char a1)
{
  if (a1 == 1)
  {
  }

  else
  {
    v2 = sub_257ED0640();

    if ((v2 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x6F685369746C756DLL;
    }

    else
    {
      v3 = 0x746E656D75636F64;
    }

    if (a1 == 1)
    {
      v4 = 0xE900000000000074;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0x6853656C676E6973;
    v4 = 0xEA0000000000746FLL;
  }

  v5 = 0xE800000000000000;
  v6 = 0x746E656D75636F64;
  if (v11 == 1)
  {
    v6 = 0x6F685369746C756DLL;
    v5 = 0xE900000000000074;
  }

  if (v11)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6853656C676E6973;
  }

  if (v11)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xEA0000000000746FLL;
  }

  if (v3 == v7 && v4 == v8)
  {
  }

  else
  {
    v9 = sub_257ED0640();

    if ((v9 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_26:
  sub_257C77614();
LABEL_27:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D98DCC()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257BAC000, v8, v9, "didTapSettingsButton", v10, 2u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257DF7874();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257D98F30()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v42)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v41[7] != 1)
    {
      return;
    }
  }

  sub_257ECD350();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "didTapDetectionModeButton", v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v13 = (v41[6] & 1) == 0;
  sub_257D719E4(v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v41[5] = v13;
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v14 = v41[4];
  v15 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  if (v14 == 1)
  {
    v16 = sub_257DE1658();
  }

  else
  {
    v16 = sub_257DE0C48();
  }

  v17 = v16;
  [v15 setImage:v16 forState:0];

  v18 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton;
  v19 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton);
  if (v14)
  {
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 systemYellowColor];
  }

  else
  {
    v23 = qword_281544A78;
    v24 = v19;
    if (v23 != -1)
    {
      swift_once();
    }

    v22 = qword_281548308;
  }

  v25 = v22;
  [v19 setBackgroundColor_];

  v26 = *(v1 + v18);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = v26;
  v30 = [v28 bundleForClass_];
  if (v14)
  {
    v31 = sub_257ECF4C0();
    v32 = sub_257ECF4C0();
    v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

    if (!v33)
    {
      sub_257ECF500();
      v33 = sub_257ECF4C0();
    }
  }

  else
  {
    v34 = sub_257ECF4C0();
    v35 = sub_257ECF4C0();
    v33 = [v30 localizedStringForKey:v34 value:0 table:v35];

    if (!v33)
    {
      sub_257ECF500();
      v33 = sub_257ECF4C0();
    }
  }

  [v29 setAccessibilityValue_];

  v36 = *(v1 + v18);
  v37 = [v28 bundleForClass_];
  v38 = sub_257ECF4C0();
  v39 = sub_257ECF4C0();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  if (!v40)
  {
    sub_257ECF500();
    v40 = sub_257ECF4C0();
  }

  [v36 setAccessibilityHint_];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257D39CC8();
    swift_unknownObjectRelease();
  }
}

id sub_257D9968C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView) removeFromSuperview];
  [*(v1 + v2) setHidden_];
  v3 = *(v1 + v2);
  v4 = sub_257ECDA50();

  [v4 resignFirstResponder];
  v5 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton) removeFromSuperview];
  v6 = *(v1 + v5);

  return [v6 setHidden_];
}

id sub_257D99954()
{
  v1 = v0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReviewing;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  aBlock = *v2;
  v18 = v3;
  LOBYTE(v19) = v4;
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  sub_257ECFD50();

  if (v23)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v18)
  {
    sub_257D98414(aBlock, v18, v19, v20);
    return 0;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v13 = objc_opt_self();
    v21 = sub_257D99FA4;
    v22 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_257D963F8;
    v20 = &block_descriptor_119_0;
    v14 = _Block_copy(&aBlock);
    v15 = v1;
    sub_257ECC3F0();

    v16 = [v13 configurationWithIdentifier:0 previewProvider:0 actionProvider:v14];

    _Block_release(v14);
    return v16;
  }
}

void sub_257D99BF0()
{
  v1 = v0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReviewing;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  aBlock = *v2;
  v21 = v3;
  LOBYTE(v22) = v4;
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  sub_257ECFD50();

  if (v26)
  {
    v11 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer;
    v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer);
    if (v12)
    {
      [v12 invalidate];
      v13 = *(v1 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v1 + v11) = 0;
  }

  else
  {
    sub_257D948E8();
    v14 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer;
    v15 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer);
    if (v15)
    {
      [v15 invalidate];
    }

    v16 = objc_opt_self();
    v17 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v24 = sub_257D99E68;
    v25 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_257E2D168;
    v23 = &block_descriptor_86_0;
    v18 = _Block_copy(&aBlock);

    v19 = [v16 scheduledTimerWithTimeInterval:1 repeats:v18 block:1.0];
    _Block_release(v18);
    v13 = *(v1 + v14);
    *(v1 + v14) = v19;
  }
}

uint64_t sub_257D99E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D95BAC(a1, v4, v5, v6);
}

uint64_t sub_257D99F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257D99FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D93844(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D9A0A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D94544(a1, v4, v5, v6);
}

uint64_t sub_257D9A358(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D9093C(a1, v4, v5, v6);
}

uint64_t sub_257D9A698(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a2;
  v4 = sub_257ECF120();
  *(v2 + 208) = v4;
  *(v2 + 216) = *(v4 - 8);
  *(v2 + 224) = swift_task_alloc();
  v5 = sub_257ECDA30();
  *(v2 + 232) = v5;
  *(v2 + 240) = *(v5 - 8);
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = swift_task_alloc();
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = *a1;
  *(v2 + 628) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 576) = sub_257ECF8F0();
  v7 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D9A9C4, v7, v6);
}

uint64_t sub_257D9A9C4()
{
  v1 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_257ECD4F0();
    v4 = sub_257ECDA20();
    v5 = sub_257ECFC00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_257BAC000, v4, v5, "Action is not a follow-up. Will reset followUpContext", v6, 2u);
      MEMORY[0x259C74820](v6, -1, -1);
    }

    v7 = *(v1 + 628);
    v8 = *(v1 + 552);
    v9 = *(v1 + 232);
    v10 = *(v1 + 240);

    v11 = *(v10 + 8);
    v11(v8, v9);
    v12 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_followUpContext];
    v13 = v12[2];
    v12[2] = 0;
    sub_257ECC3F0();

    v14 = v12[3];
    v12[3] = 0;

    v12[4] = 0;
    v12[5] = 0;

    if (v7 <= 3)
    {
      if (v7 <= 1)
      {
        if (v7)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          v35 = *(v1 + 184);
          if (v35)
          {
            v36 = *(v1 + 560);
            [*(v1 + 184) videoZoomFactor];
            v38 = v37;
            if (v36)
            {
              sub_257D15BB4();
              v40 = v39;
              v41 = [v35 activeFormat];
              [v41 videoMaxZoomFactor];
              v43 = v42;

              if (v43 >= v40)
              {
                v44 = v40;
              }

              else
              {
                v44 = v43;
              }

              v45 = v38 + 1.0;
              if (v44 < v45)
              {
                v45 = v44;
              }
            }

            else
            {
              v45 = v37 + -1.0;
              sub_257D15BB4();
              if (v45 <= v111)
              {
                v45 = v111;
              }
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            v112 = *(v1 + 176);
            if (v112)
            {
              sub_257D334B0(0, v45);

              goto LABEL_151;
            }
          }
        }

        else
        {
          v15 = *(v1 + 568);
          v16 = v15;
          if (qword_281544FE0 != -1)
          {
            swift_once();
            v16 = *(v1 + 568);
          }

          v17 = *(v1 + 560);
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v19 = swift_allocObject();
          v19[2] = v17;
          v19[3] = v15;
          v19[4] = v18;
          sub_257CCE9D4(v17, v16, 0);
          sub_257ECC3F0();
          sub_257D61CE8(v17, v15, 0, sub_257C7E064, v19);
        }

        goto LABEL_150;
      }

      if (v7 == 2)
      {
        v22 = *(v1 + 560);
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        if (v22)
        {
          v23 = 0.1;
        }

        else
        {
          v23 = -0.1;
        }

        v24 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
        swift_beginAccess();
        v25 = *(v24 + 8);
        v26 = *(v24 + 16);
        *(v1 + 152) = *v24;
        *(v1 + 160) = v25;
        *(v1 + 168) = v26;
        if (qword_2815447E0 != -1)
        {
          swift_once();
        }

        v28 = *(v1 + 216);
        v27 = *(v1 + 224);
        v29 = *(v1 + 208);
        *(swift_task_alloc() + 16) = v1 + 152;
        sub_257ECFD50();

        *(v1 + 172) = v23 + *(v1 + 584);
        sub_257ECF110();
        v30 = swift_task_alloc();
        *(v30 + 16) = v1 + 172;
        *(v30 + 24) = v24;
        sub_257ECFD40();

        (*(v28 + 8))(v27, v29);
        swift_endAccess();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        v31 = *(v1 + 192);
        if (v31)
        {
          v32 = *(v24 + 8);
          v33 = *(v24 + 16);
          *(v1 + 128) = *v24;
          *(v1 + 136) = v32;
          *(v1 + 144) = v33;
          *(swift_task_alloc() + 16) = v1 + 128;

          sub_257ECFD50();

          sub_257D32D68(*(v1 + 148));

          goto LABEL_151;
        }

        goto LABEL_150;
      }

      v20 = v1 + 16;
      if (*(v1 + 560))
      {
        v21 = 0.1;
      }

      else
      {
        v21 = -0.1;
      }

      if (qword_281544FE0 == -1)
      {
LABEL_46:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECC3F0();
        v47 = sub_257ECDD50();
        *v48 = v21 + *v48;
        v47(v20, 0);

        goto LABEL_151;
      }

LABEL_164:
      swift_once();
      goto LABEL_46;
    }

    if (v7 > 5)
    {
      if (v7 != 6)
      {
        v49 = *(v1 + 560);
        v50 = *(v1 + 568);
        if (v49 > 3)
        {
          if (v49 > 5)
          {
            if (v49 ^ 6 | v50)
            {
              if (qword_281544FE0 != -1)
              {
                swift_once();
              }

              *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) = 1;
              sub_257D9E350();
              goto LABEL_150;
            }

            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            sub_257ECD3E0();
            v143 = sub_257ECDA20();
            v144 = sub_257ECFBD0();
            if (os_log_type_enabled(v143, v144))
            {
              v145 = swift_slowAlloc();
              *v145 = 67109120;
              _os_log_impl(&dword_257BAC000, v143, v144, "Setting textDetectionEnabled to %{BOOL}d", v145, 8u);
              MEMORY[0x259C74820](v145, -1, -1);
            }

            v146 = *(v1 + 288);
            v147 = *(v1 + 232);

            v11(v146, v147);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 615) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD450();
            v148 = sub_257ECDA20();
            v149 = sub_257ECFBD0();
            if (os_log_type_enabled(v148, v149))
            {
              v150 = swift_slowAlloc();
              *v150 = 67109120;
              _os_log_impl(&dword_257BAC000, v148, v149, "Setting doorDetection to %{BOOL}d", v150, 8u);
              MEMORY[0x259C74820](v150, -1, -1);
            }

            v151 = *(v1 + 280);
            v152 = *(v1 + 232);

            v11(v151, v152);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 614) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD3E0();
            v153 = sub_257ECDA20();
            v154 = sub_257ECFBD0();
            if (os_log_type_enabled(v153, v154))
            {
              v155 = swift_slowAlloc();
              *v155 = 67109120;
              _os_log_impl(&dword_257BAC000, v153, v154, "Setting pointSpeakEnabled to %{BOOL}d", v155, 8u);
              MEMORY[0x259C74820](v155, -1, -1);
            }

            v156 = *(v1 + 272);
            v157 = *(v1 + 232);

            v11(v156, v157);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 613) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD440();
            v158 = sub_257ECDA20();
            v159 = sub_257ECFBD0();
            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              *v160 = 67109120;
              _os_log_impl(&dword_257BAC000, v158, v159, "Setting imageCaption to %{BOOL}d", v160, 8u);
              MEMORY[0x259C74820](v160, -1, -1);
            }

            v161 = *(v1 + 264);
            v162 = *(v1 + 232);

            v11(v161, v162);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 612) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD480();
            v163 = sub_257ECDA20();
            v164 = sub_257ECFBD0();
            if (os_log_type_enabled(v163, v164))
            {
              v165 = swift_slowAlloc();
              *v165 = 67109120;
              _os_log_impl(&dword_257BAC000, v163, v164, "Setting peopleDetection to %{BOOL}d", v165, 8u);
              MEMORY[0x259C74820](v165, -1, -1);
            }

            v166 = *(v1 + 256);
            v167 = *(v1 + 232);

            v11(v166, v167);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 611) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD4A0();
            v168 = sub_257ECDA20();
            v169 = sub_257ECFBD0();
            if (os_log_type_enabled(v168, v169))
            {
              v170 = swift_slowAlloc();
              *v170 = 67109120;
              *(v170 + 4) = 1;
              _os_log_impl(&dword_257BAC000, v168, v169, "Setting objectUnderstanding to %{BOOL}d", v170, 8u);
              MEMORY[0x259C74820](v170, -1, -1);
            }

            v171 = *(v1 + 248);
            v172 = *(v1 + 232);

            v11(v171, v172);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 610) = 1;
            sub_257ECC3F0();
          }

          else if (v49 ^ 4 | v50)
          {
            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            sub_257ECD3E0();
            v203 = sub_257ECDA20();
            v204 = sub_257ECFBD0();
            if (os_log_type_enabled(v203, v204))
            {
              v205 = swift_slowAlloc();
              *v205 = 67109120;
              _os_log_impl(&dword_257BAC000, v203, v204, "Setting textDetectionEnabled to %{BOOL}d", v205, 8u);
              MEMORY[0x259C74820](v205, -1, -1);
            }

            v206 = *(v1 + 336);
            v207 = *(v1 + 232);

            v11(v206, v207);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 609) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD450();
            v208 = sub_257ECDA20();
            v209 = sub_257ECFBD0();
            if (os_log_type_enabled(v208, v209))
            {
              v210 = swift_slowAlloc();
              *v210 = 67109120;
              _os_log_impl(&dword_257BAC000, v208, v209, "Setting doorDetection to %{BOOL}d", v210, 8u);
              MEMORY[0x259C74820](v210, -1, -1);
            }

            v211 = *(v1 + 328);
            v212 = *(v1 + 232);

            v11(v211, v212);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 608) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD3E0();
            v213 = sub_257ECDA20();
            v214 = sub_257ECFBD0();
            if (os_log_type_enabled(v213, v214))
            {
              v215 = swift_slowAlloc();
              *v215 = 67109120;
              _os_log_impl(&dword_257BAC000, v213, v214, "Setting pointSpeakEnabled to %{BOOL}d", v215, 8u);
              MEMORY[0x259C74820](v215, -1, -1);
            }

            v216 = *(v1 + 320);
            v217 = *(v1 + 232);

            v11(v216, v217);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 607) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD440();
            v218 = sub_257ECDA20();
            v219 = sub_257ECFBD0();
            if (os_log_type_enabled(v218, v219))
            {
              v220 = swift_slowAlloc();
              *v220 = 67109120;
              _os_log_impl(&dword_257BAC000, v218, v219, "Setting imageCaption to %{BOOL}d", v220, 8u);
              MEMORY[0x259C74820](v220, -1, -1);
            }

            v221 = *(v1 + 312);
            v222 = *(v1 + 232);

            v11(v221, v222);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 606) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD4A0();
            v223 = sub_257ECDA20();
            v224 = sub_257ECFBD0();
            if (os_log_type_enabled(v223, v224))
            {
              v225 = swift_slowAlloc();
              *v225 = 67109120;
              _os_log_impl(&dword_257BAC000, v223, v224, "Setting objectUnderstanding to %{BOOL}d", v225, 8u);
              MEMORY[0x259C74820](v225, -1, -1);
            }

            v226 = *(v1 + 304);
            v227 = *(v1 + 232);

            v11(v226, v227);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 605) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD480();
            v228 = sub_257ECDA20();
            v229 = sub_257ECFBD0();
            if (os_log_type_enabled(v228, v229))
            {
              v230 = swift_slowAlloc();
              *v230 = 67109120;
              *(v230 + 4) = 1;
              _os_log_impl(&dword_257BAC000, v228, v229, "Setting peopleDetection to %{BOOL}d", v230, 8u);
              MEMORY[0x259C74820](v230, -1, -1);
            }

            v231 = *(v1 + 296);
            v232 = *(v1 + 232);

            v11(v231, v232);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 602) = 1;
            sub_257ECC3F0();
          }

          else
          {
            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            sub_257ECD3E0();
            v81 = sub_257ECDA20();
            v82 = sub_257ECFBD0();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              *v83 = 67109120;
              _os_log_impl(&dword_257BAC000, v81, v82, "Setting textDetectionEnabled to %{BOOL}d", v83, 8u);
              MEMORY[0x259C74820](v83, -1, -1);
            }

            v84 = *(v1 + 384);
            v85 = *(v1 + 232);

            v11(v84, v85);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 627) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD3E0();
            v86 = sub_257ECDA20();
            v87 = sub_257ECFBD0();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              *v88 = 67109120;
              _os_log_impl(&dword_257BAC000, v86, v87, "Setting pointSpeakEnabled to %{BOOL}d", v88, 8u);
              MEMORY[0x259C74820](v88, -1, -1);
            }

            v89 = *(v1 + 376);
            v90 = *(v1 + 232);

            v11(v89, v90);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 590) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD480();
            v91 = sub_257ECDA20();
            v92 = sub_257ECFBD0();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              *v93 = 67109120;
              _os_log_impl(&dword_257BAC000, v91, v92, "Setting peopleDetection to %{BOOL}d", v93, 8u);
              MEMORY[0x259C74820](v93, -1, -1);
            }

            v94 = *(v1 + 368);
            v95 = *(v1 + 232);

            v11(v94, v95);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 591) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD440();
            v96 = sub_257ECDA20();
            v97 = sub_257ECFBD0();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 67109120;
              _os_log_impl(&dword_257BAC000, v96, v97, "Setting imageCaption to %{BOOL}d", v98, 8u);
              MEMORY[0x259C74820](v98, -1, -1);
            }

            v99 = *(v1 + 360);
            v100 = *(v1 + 232);

            v11(v99, v100);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 592) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD4A0();
            v101 = sub_257ECDA20();
            v102 = sub_257ECFBD0();
            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              *v103 = 67109120;
              _os_log_impl(&dword_257BAC000, v101, v102, "Setting objectUnderstanding to %{BOOL}d", v103, 8u);
              MEMORY[0x259C74820](v103, -1, -1);
            }

            v104 = *(v1 + 352);
            v105 = *(v1 + 232);

            v11(v104, v105);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 593) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD450();
            v106 = sub_257ECDA20();
            v107 = sub_257ECFBD0();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              *v108 = 67109120;
              *(v108 + 4) = 1;
              _os_log_impl(&dword_257BAC000, v106, v107, "Setting doorDetection to %{BOOL}d", v108, 8u);
              MEMORY[0x259C74820](v108, -1, -1);
            }

            v109 = *(v1 + 344);
            v110 = *(v1 + 232);

            v11(v109, v110);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 594) = 1;
            sub_257ECC3F0();
          }
        }

        else if (v49 > 1)
        {
          if (v49 ^ 2 | v50)
          {
            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            sub_257ECD3E0();
            v235 = sub_257ECDA20();
            v236 = sub_257ECFBD0();
            if (os_log_type_enabled(v235, v236))
            {
              v237 = swift_slowAlloc();
              *v237 = 67109120;
              *(v237 + 4) = 1;
              _os_log_impl(&dword_257BAC000, v235, v236, "Setting textDetectionEnabled to %{BOOL}d", v237, 8u);
              MEMORY[0x259C74820](v237, -1, -1);
            }

            v238 = *(v1 + 400);
            v239 = *(v1 + 232);

            v11(v238, v239);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 595) = 1;
            sub_257ECC3F0();
            sub_257ECDD70();
            sub_257ECD440();
            v240 = sub_257ECDA20();
            v241 = sub_257ECFBD0();
            if (os_log_type_enabled(v240, v241))
            {
              v242 = swift_slowAlloc();
              *v242 = 67109120;
              *(v242 + 4) = 1;
              _os_log_impl(&dword_257BAC000, v240, v241, "Setting detectionModeOn to %{BOOL}d", v242, 8u);
              MEMORY[0x259C74820](v242, -1, -1);
            }

            v243 = *(v1 + 392);
            v244 = *(v1 + 232);

            v11(v243, v244);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 596) = 1;
            sub_257ECC3F0();
            sub_257ECDD70();
            goto LABEL_150;
          }

          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          sub_257ECD3E0();
          v113 = sub_257ECDA20();
          v114 = sub_257ECFBD0();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 67109120;
            _os_log_impl(&dword_257BAC000, v113, v114, "Setting textDetectionEnabled to %{BOOL}d", v115, 8u);
            MEMORY[0x259C74820](v115, -1, -1);
          }

          v116 = *(v1 + 448);
          v117 = *(v1 + 232);

          v11(v116, v117);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 597) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD450();
          v118 = sub_257ECDA20();
          v119 = sub_257ECFBD0();
          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            *v120 = 67109120;
            _os_log_impl(&dword_257BAC000, v118, v119, "Setting doorDetection to %{BOOL}d", v120, 8u);
            MEMORY[0x259C74820](v120, -1, -1);
          }

          v121 = *(v1 + 440);
          v122 = *(v1 + 232);

          v11(v121, v122);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 598) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD480();
          v123 = sub_257ECDA20();
          v124 = sub_257ECFBD0();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            *v125 = 67109120;
            _os_log_impl(&dword_257BAC000, v123, v124, "Setting peopleDetection to %{BOOL}d", v125, 8u);
            MEMORY[0x259C74820](v125, -1, -1);
          }

          v126 = *(v1 + 432);
          v127 = *(v1 + 232);

          v11(v126, v127);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 599) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD440();
          v128 = sub_257ECDA20();
          v129 = sub_257ECFBD0();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 67109120;
            _os_log_impl(&dword_257BAC000, v128, v129, "Setting imageCaption to %{BOOL}d", v130, 8u);
            MEMORY[0x259C74820](v130, -1, -1);
          }

          v131 = *(v1 + 424);
          v132 = *(v1 + 232);

          v11(v131, v132);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 600) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD4A0();
          v133 = sub_257ECDA20();
          v134 = sub_257ECFBD0();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            *v135 = 67109120;
            _os_log_impl(&dword_257BAC000, v133, v134, "Setting objectUnderstanding to %{BOOL}d", v135, 8u);
            MEMORY[0x259C74820](v135, -1, -1);
          }

          v136 = *(v1 + 416);
          v137 = *(v1 + 232);

          v11(v136, v137);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 601) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD3E0();
          v138 = sub_257ECDA20();
          v139 = sub_257ECFBD0();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            *v140 = 67109120;
            *(v140 + 4) = 1;
            _os_log_impl(&dword_257BAC000, v138, v139, "Setting pointSpeakEnabled to %{BOOL}d", v140, 8u);
            MEMORY[0x259C74820](v140, -1, -1);
          }

          v141 = *(v1 + 408);
          v142 = *(v1 + 232);

          v11(v141, v142);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 588) = 1;
          sub_257ECC3F0();
        }

        else if (v49 | v50)
        {
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          sub_257ECD3E0();
          v173 = sub_257ECDA20();
          v174 = sub_257ECFBD0();
          if (os_log_type_enabled(v173, v174))
          {
            v175 = swift_slowAlloc();
            *v175 = 67109120;
            _os_log_impl(&dword_257BAC000, v173, v174, "Setting pointSpeakEnabled to %{BOOL}d", v175, 8u);
            MEMORY[0x259C74820](v175, -1, -1);
          }

          v176 = *(v1 + 496);
          v177 = *(v1 + 232);

          v11(v176, v177);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 616) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD450();
          v178 = sub_257ECDA20();
          v179 = sub_257ECFBD0();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            *v180 = 67109120;
            _os_log_impl(&dword_257BAC000, v178, v179, "Setting doorDetection to %{BOOL}d", v180, 8u);
            MEMORY[0x259C74820](v180, -1, -1);
          }

          v181 = *(v1 + 488);
          v182 = *(v1 + 232);

          v11(v181, v182);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 617) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD480();
          v183 = sub_257ECDA20();
          v184 = sub_257ECFBD0();
          if (os_log_type_enabled(v183, v184))
          {
            v185 = swift_slowAlloc();
            *v185 = 67109120;
            _os_log_impl(&dword_257BAC000, v183, v184, "Setting peopleDetection to %{BOOL}d", v185, 8u);
            MEMORY[0x259C74820](v185, -1, -1);
          }

          v186 = *(v1 + 480);
          v187 = *(v1 + 232);

          v11(v186, v187);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 618) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD440();
          v188 = sub_257ECDA20();
          v189 = sub_257ECFBD0();
          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            *v190 = 67109120;
            _os_log_impl(&dword_257BAC000, v188, v189, "Setting imageCaption to %{BOOL}d", v190, 8u);
            MEMORY[0x259C74820](v190, -1, -1);
          }

          v191 = *(v1 + 472);
          v192 = *(v1 + 232);

          v11(v191, v192);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 619) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD4A0();
          v193 = sub_257ECDA20();
          v194 = sub_257ECFBD0();
          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            *v195 = 67109120;
            _os_log_impl(&dword_257BAC000, v193, v194, "Setting objectUnderstanding to %{BOOL}d", v195, 8u);
            MEMORY[0x259C74820](v195, -1, -1);
          }

          v196 = *(v1 + 464);
          v197 = *(v1 + 232);

          v11(v196, v197);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 620) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD3E0();
          v198 = sub_257ECDA20();
          v199 = sub_257ECFBD0();
          if (os_log_type_enabled(v198, v199))
          {
            v200 = swift_slowAlloc();
            *v200 = 67109120;
            *(v200 + 4) = 1;
            _os_log_impl(&dword_257BAC000, v198, v199, "Setting textDetectionEnabled to %{BOOL}d", v200, 8u);
            MEMORY[0x259C74820](v200, -1, -1);
          }

          v201 = *(v1 + 456);
          v202 = *(v1 + 232);

          v11(v201, v202);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 621) = 1;
          sub_257ECC3F0();
        }

        else
        {
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          sub_257ECD3E0();
          v51 = sub_257ECDA20();
          v52 = sub_257ECFBD0();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 67109120;
            _os_log_impl(&dword_257BAC000, v51, v52, "Setting textDetectionEnabled to %{BOOL}d", v53, 8u);
            MEMORY[0x259C74820](v53, -1, -1);
          }

          v54 = *(v1 + 544);
          v55 = *(v1 + 232);

          v11(v54, v55);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 622) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD3E0();
          v56 = sub_257ECDA20();
          v57 = sub_257ECFBD0();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 67109120;
            _os_log_impl(&dword_257BAC000, v56, v57, "Setting pointSpeakEnabled to %{BOOL}d", v58, 8u);
            MEMORY[0x259C74820](v58, -1, -1);
          }

          v59 = *(v1 + 536);
          v60 = *(v1 + 232);

          v11(v59, v60);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 623) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD480();
          v61 = sub_257ECDA20();
          v62 = sub_257ECFBD0();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 67109120;
            _os_log_impl(&dword_257BAC000, v61, v62, "Setting peopleDetection to %{BOOL}d", v63, 8u);
            MEMORY[0x259C74820](v63, -1, -1);
          }

          v64 = *(v1 + 528);
          v65 = *(v1 + 232);

          v11(v64, v65);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 624) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD440();
          v66 = sub_257ECDA20();
          v67 = sub_257ECFBD0();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 67109120;
            *(v68 + 4) = 1;
            _os_log_impl(&dword_257BAC000, v66, v67, "Setting imageCaption to %{BOOL}d", v68, 8u);
            MEMORY[0x259C74820](v68, -1, -1);
          }

          v69 = *(v1 + 520);
          v70 = *(v1 + 232);

          v11(v69, v70);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 625) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD4A0();
          v71 = sub_257ECDA20();
          v72 = sub_257ECFBD0();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 67109120;
            _os_log_impl(&dword_257BAC000, v71, v72, "Setting objectUnderstanding to %{BOOL}d", v73, 8u);
            MEMORY[0x259C74820](v73, -1, -1);
          }

          v74 = *(v1 + 512);
          v75 = *(v1 + 232);

          v11(v74, v75);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 626) = 0;
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257ECD450();
          v76 = sub_257ECDA20();
          v77 = sub_257ECFBD0();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 67109120;
            _os_log_impl(&dword_257BAC000, v76, v77, "Setting doorDetection to %{BOOL}d", v78, 8u);
            MEMORY[0x259C74820](v78, -1, -1);
          }

          v79 = *(v1 + 504);
          v80 = *(v1 + 232);

          v11(v79, v80);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v1 + 589) = 0;
          sub_257ECC3F0();
        }

        sub_257ECDD70();
        sub_257D9D818();
LABEL_150:

        goto LABEL_151;
      }

      v34 = *(v1 + 560);
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      *(v1 + 603) = v34;
      sub_257ECC3F0();
    }

    else
    {
      if (v7 == 4)
      {
        v20 = v1 + 48;
        if (*(v1 + 560))
        {
          v21 = 0.1;
        }

        else
        {
          v21 = -0.1;
        }

        if (qword_281544FE0 == -1)
        {
          goto LABEL_46;
        }

        goto LABEL_164;
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v46 = *(v1 + 560);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v1 + 604) = v46 & 1;
      sub_257ECC3F0();
    }

    sub_257ECDD70();
    goto LABEL_150;
  }

LABEL_151:

  v233 = *(v1 + 8);

  return v233();
}

uint64_t sub_257D9D818()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v79 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_257ECF190();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v8, v9, v10, v11);
  v77 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_257ECF1B0();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v13, v14, v15, v16);
  v73 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v74 = &v70 - v23;
  sub_257DF61F8();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v24 = xmmword_281548330;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 0;
  sub_257ECC3F0();
  v86 = v24;
  sub_257ECDD70();
  v25 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  v26 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController];
  if (v26)
  {
    v27 = v26;
    [v27 willMoveToParentViewController_];
    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v92 = sub_257DA0018;
    v93 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v89 = 1107296256;
    v90 = sub_257D231C0;
    v91 = &block_descriptor_110;
    v30 = _Block_copy(&aBlock);
    v31 = v27;

    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v92 = sub_257DA0038;
    v93 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v89 = 1107296256;
    v90 = sub_257DFE438;
    v91 = &block_descriptor_117_0;
    v33 = _Block_copy(&aBlock);
    v34 = v31;

    [v28 animateWithDuration:0x20000 delay:v30 options:v33 animations:0.25 completion:0.0];
    _Block_release(v33);
    _Block_release(v30);

    v35 = *&v0[v25];
    *&v0[v25] = 0;
  }

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = sub_257D9FEEC;
  v93 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v89 = 1107296256;
  v90 = sub_257D231C0;
  v91 = &block_descriptor_39;
  v38 = _Block_copy(&aBlock);

  v84 = v36;
  [v36 animateWithDuration:v38 animations:0 completion:0.25];
  _Block_release(v38);
  v39 = sub_257DFF3FC();
  v40 = *&v39[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView];

  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
  [*(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController] + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView) setHidden_];
  [*(*&v1[v41] + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView) resignFirstResponder];
  [*(*&v1[v41] + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton) removeFromSuperview];
  [*(*&v1[v41] + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton) setHidden_];
  v42 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
  if (!v42)
  {
LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (aBlock && aBlock != 1)
    {
    }

    else
    {
      v59 = sub_257ED0640();

      if ((v59 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
LABEL_23:
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v60 = sub_257ECFD30();
    v61 = v73;
    sub_257ECF1A0();
    v62 = v74;
    sub_257ECF220();
    v87 = *(v75 + 8);
    v63 = v76;
    (v87)(v61, v76);
    v64 = swift_allocObject();
    *(v64 + 16) = v1;
    v92 = sub_257D9FF0C;
    v93 = v64;
    aBlock = MEMORY[0x277D85DD0];
    v89 = 1107296256;
    v90 = sub_257D231C0;
    v91 = &block_descriptor_91;
    v65 = _Block_copy(&aBlock);
    v66 = v1;

    v67 = v77;
    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    v68 = v79;
    v69 = v82;
    sub_257ED0180();
    MEMORY[0x259C727E0](v62, v67, v68, v65);
    _Block_release(v65);

    (*(v81 + 8))(v68, v69);
    (*(v78 + 8))(v67, v80);
    return (v87)(v62, v63);
  }

  v43 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  result = swift_beginAccess();
  v87 = *&v42[v43];
  if (v87 >> 62)
  {
    result = sub_257ED0210();
    v45 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v45 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45)
    {
      goto LABEL_17;
    }
  }

  if (v45 >= 1)
  {
    v72 = v1;
    v85 = v87 & 0xC000000000000001;
    v83 = &v90;
    v71 = v42;

    for (i = 0; i != v45; ++i)
    {
      if (v85)
      {
        v47 = MEMORY[0x259C72E20](i, v87);
      }

      else
      {
        v47 = *(v87 + 8 * i + 32);
      }

      v48 = v47;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
      v49 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
      v50 = *&v48[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController];
      if (v50)
      {
        v51 = v50;
        [v51 willMoveToParentViewController_];
        v52 = swift_allocObject();
        *(v52 + 16) = v51;
        v92 = sub_257BEE444;
        v93 = v52;
        aBlock = MEMORY[0x277D85DD0];
        v89 = 1107296256;
        v90 = sub_257D231C0;
        v91 = &block_descriptor_97;
        v53 = _Block_copy(&aBlock);
        v54 = v51;

        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        v92 = sub_257BEE44C;
        v93 = v55;
        aBlock = MEMORY[0x277D85DD0];
        v89 = 1107296256;
        v90 = sub_257DFE438;
        v91 = &block_descriptor_103;
        v56 = _Block_copy(&aBlock);
        v57 = v54;

        [v84 &selRef:0x20000 simdConvertPosition:v53 toNode:{v56, 0.25, 0.0} + 2];
        _Block_release(v56);
        _Block_release(v53);

        v58 = *&v48[v49];
        *&v48[v49] = 0;

        v48 = v58;
      }
    }

    v1 = v72;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_257D9E350()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = v30 - v7;
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD3F0();
  v17 = sub_257ECDA20();
  v18 = sub_257ECFC00();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_257BAC000, v17, v18, "WIll handle reader mode shortcut. Showing loading progress view. Will capture frame and detect text", v19, 2u);
    MEMORY[0x259C74820](v19, -1, -1);
  }

  (*(v10 + 8))(v16, v9);
  v20 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController;
  if (!*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController])
  {
    v21 = objc_allocWithZone(type metadata accessor for MFReaderLoadingViewHostingController(0));
    v22 = sub_257ECE620();
    memset(v30, 0, sizeof(v30));
    v31 = 1;
    sub_257ECA76C(v22, v30, 0x3FD0000000000000, 0);
    v23 = *&v1[v20];
    *&v1[v20] = v22;
  }

  v24 = sub_257ECF930();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_257ECF900();
  v25 = v1;
  v26 = sub_257ECF8F0();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  sub_257C3FBD4(0, 0, v8, &unk_257EE8C50, v27);

  return result;
}

uint64_t sub_257D9E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_257ECDA30();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  sub_257ECF900();
  v4[33] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v4[34] = v7;
  v4[35] = v6;

  return MEMORY[0x2822009F8](sub_257D9E6F4, v7, v6);
}

uint64_t sub_257D9E6F4()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_257D9E798;

  return MAGFrameProviderService.currentFrame.getter();
}

uint64_t sub_257D9E798(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 280);
  v6 = *(v3 + 272);
  if (v1)
  {
    v7 = sub_257D9F638;
  }

  else
  {
    v7 = sub_257D9E8DC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_257D9E8DC()
{
  v1 = v0[37];
  v0[39] = *(v0[27] + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService);
  type metadata accessor for MAGCVPixelBufferWrapper();
  v2 = swift_allocObject();
  v0[40] = v2;
  *(v2 + 16) = v1;
  v3 = v1;

  return MEMORY[0x2822009F8](sub_257D9E97C, 0, 0);
}

uint64_t sub_257D9E97C()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *(v1 + 16) = *(v0 + 312);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  v3 = sub_257BD2C2C(0, &qword_27F8F97F0, 0x277CE2CC8);
  *v2 = v0;
  v2[1] = sub_257D9EA8C;

  return MEMORY[0x2822008A0](v0 + 208, 0, 0, 0xD000000000000023, 0x8000000257EFD650, sub_257CB7D2C, v1, v3);
}

uint64_t sub_257D9EA8C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_257D9F0F0;
  }

  else
  {

    v2 = sub_257D9EBA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D9EBA8()
{

  v0[44] = v0[26];
  v1 = v0[34];
  v2 = v0[35];

  return MEMORY[0x2822009F8](sub_257D9EC14, v1, v2);
}

uint64_t sub_257D9EC14()
{
  v1 = v0[44];
  v2 = v0[27];

  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument;
  v4 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument) = v1;

  v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController;
  v6 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController);
  if (v6)
  {
    v7 = v6;
    [v7 willMoveToParentViewController_];
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v0[18] = sub_257DA002C;
    v0[19] = v9;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_257D231C0;
    v0[17] = &block_descriptor_144;
    v10 = _Block_copy(v0 + 14);
    v11 = v7;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v0[24] = sub_257DA0038;
    v0[25] = v12;
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_257DFE438;
    v0[23] = &block_descriptor_151_0;
    v13 = _Block_copy(v0 + 20);
    v14 = v11;

    [v8 animateWithDuration:0x20000 delay:v10 options:v13 animations:0.25 completion:0.0];
    _Block_release(v13);
    _Block_release(v10);

    v15 = *(v2 + v5);
    *(v2 + v5) = 0;
  }

  v16 = *(v2 + v3);
  if (v16)
  {
    v17 = [v16 getBlocks];
    if (v17)
    {
      v18 = v17;
      sub_257BD2C2C(0, &qword_27F8F5FA8, 0x277CE2D70);
      v19 = sub_257ECF810();

      if (v19 >> 62)
      {
        if (sub_257ED0210() >= 1)
        {
          goto LABEL_7;
        }
      }

      else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_7:
        sub_257ECD3F0();

        v20 = sub_257ECDA20();
        v21 = sub_257ECFC00();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 134217984;
          if (v19 >> 62)
          {
            v23 = sub_257ED0210();
          }

          else
          {
            v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v22 + 4) = v23;

          _os_log_impl(&dword_257BAC000, v20, v21, "Finished processing reader mode shortcut. %ld text blocks found. Will show reader mode", v22, 0xCu);
          MEMORY[0x259C74820](v22, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        (*(v0[29] + 8))(v0[32], v0[28]);
        v24 = swift_task_alloc();
        v0[45] = v24;
        *v24 = v0;
        v24[1] = sub_257D9F49C;

        return sub_257DEFE88();
      }
    }
  }

  sub_257ECD3F0();
  v26 = sub_257ECDA20();
  v27 = sub_257ECFC00();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_257BAC000, v26, v27, "Finished processing reader mode shortcut. No text blocks found", v28, 2u);
    MEMORY[0x259C74820](v28, -1, -1);
  }

  v29 = v0[31];
  v30 = v0[28];
  v31 = v0[29];

  (*(v31 + 8))(v29, v30);
  sub_257E1BA40();

  v32 = v0[1];

  return v32();
}

uint64_t sub_257D9F0F0()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](sub_257D9F15C, v1, v2);
}

uint64_t sub_257D9F15C()
{
  v1 = v0[37];

  v2 = v0[43];
  sub_257ECD3F0();
  v3 = v2;
  v4 = sub_257ECDA20();
  v5 = sub_257ECFBE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_257BAC000, v4, v5, "Error processing reader mode shortcut. Error fetching frame / processing text : %@", v6, 0xCu);
    sub_257C11B14(v7);
    MEMORY[0x259C74820](v7, -1, -1);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[27];
  v12 = v0[28];

  (*(v11 + 8))(v10, v12);
  v14 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController;
  v15 = *(v13 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController);
  if (v15)
  {
    v16 = v15;
    [v16 willMoveToParentViewController_];
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v0[6] = sub_257D9FFC8;
    v0[7] = v18;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_257D231C0;
    v0[5] = &block_descriptor_129;
    v19 = _Block_copy(v0 + 2);
    v20 = v16;

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v0[12] = sub_257BEE44C;
    v0[13] = v21;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_257DFE438;
    v0[11] = &block_descriptor_135_0;
    v22 = _Block_copy(v0 + 8);
    v23 = v20;

    [v17 animateWithDuration:0x20000 delay:v19 options:v22 animations:0.25 completion:0.0];
    _Block_release(v22);
    _Block_release(v19);

    v24 = *(v13 + v14);
    *(v13 + v14) = 0;
  }

  sub_257E1BA40();

  v25 = v0[1];

  return v25();
}

uint64_t sub_257D9F49C()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return MEMORY[0x2822009F8](sub_257D9F5BC, v3, v2);
}

uint64_t sub_257D9F5BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257D9F638()
{

  v1 = v0[38];
  sub_257ECD3F0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Error processing reader mode shortcut. Error fetching frame / processing text : %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  v10 = v0[29];
  v9 = v0[30];
  v12 = v0[27];
  v11 = v0[28];

  (*(v10 + 8))(v9, v11);
  v13 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController;
  v14 = *(v12 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController);
  if (v14)
  {
    v15 = v14;
    [v15 willMoveToParentViewController_];
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v0[6] = sub_257D9FFC8;
    v0[7] = v17;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_257D231C0;
    v0[5] = &block_descriptor_129;
    v18 = _Block_copy(v0 + 2);
    v19 = v15;

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v0[12] = sub_257BEE44C;
    v0[13] = v20;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_257DFE438;
    v0[11] = &block_descriptor_135_0;
    v21 = _Block_copy(v0 + 8);
    v22 = v19;

    [v16 animateWithDuration:0x20000 delay:v18 options:v21 animations:0.25 completion:0.0];
    _Block_release(v21);
    _Block_release(v18);

    v23 = *(v12 + v13);
    *(v12 + v13) = 0;
  }

  sub_257E1BA40();

  v24 = v0[1];

  return v24();
}

void sub_257D9F970(uint64_t a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  sub_257ECD440();
  v11 = sub_257ECDA20();
  v12 = sub_257ECFBD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = 1;
    _os_log_impl(&dword_257BAC000, v11, v12, "Setting detectionModeOn to %{BOOL}d", v13, 8u);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
  v14 = (v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  v52[0] = *v14;
  v52[1] = v15;
  v52[2] = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  *(&v48 - 2) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  v23 = v51[0];
  if (sub_257C592D0(2u, v51[0]))
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_257BFD908(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v49 = a1;
    if (v25 >= v24 >> 1)
    {
      v23 = sub_257BFD908((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v23[v25 + 32] = 2;
    v26 = (v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
    v27 = swift_beginAccess();
    v28 = *v26;
    v29 = v26[1];
    v30 = v26[2];
    v51[0] = v28;
    v51[1] = v29;
    v51[2] = v30;
    MEMORY[0x28223BE20](v27, v31, v32, v33, v34);
    *(&v48 - 2) = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
    sub_257ECFD50();

    v35 = v50[0];
    v36 = (v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
    v37 = swift_beginAccess();
    v38 = *v36;
    v39 = v36[1];
    v40 = v36[2];
    v50[0] = v38;
    v50[1] = v39;
    v50[2] = v40;
    MEMORY[0x28223BE20](v37, v41, v42, v43, v44);
    *(&v48 - 2) = v50;

    sub_257ECFD50();

    v45 = v50[3];
    v46 = sub_257D53928();
    sub_257D53B38(v23, v35, v45, v46);

    v47 = [objc_opt_self() defaultCenter];
    if (qword_27F8F4680 != -1)
    {
      swift_once();
    }

    [v47 postNotificationName:qword_27F913048 object:v49 userInfo:0];
  }
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D9FF14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257D9E5E8(a1, v4, v5, v6);
}

uint64_t sub_257DA003C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for _AudioRecorder();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = 0;
    *(v0 + 24) = v1;
    sub_257ECC3F0();
    sub_257ECC3F0();
  }

  sub_257ECC3F0();
  return v1;
}

uint64_t MAGSpeechRecognitionService.__allocating_init(audioService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MAGSpeechRecognitionService.init(audioService:)(a1);
  return v2;
}

char *MAGSpeechRecognitionService.init(audioService:)(uint64_t a1)
{
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  v3 = OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_task] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_request] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceTimer] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceDuration] = 0x4000000000000000;
  *(v1 + 2) = a1;
  return v1;
}

id sub_257DA01A8()
{
  v1 = sub_257ECCD90();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 32);
  if (v9)
  {
    v10 = *(v0 + 32);
LABEL_5:
    v17 = v9;
    return v10;
  }

  v11 = v0;
  sub_257ECCD80();
  v12 = objc_allocWithZone(MEMORY[0x277CDCF00]);
  v13 = sub_257ECCD60();
  v14 = [v12 initWithLocale_];

  result = (*(v2 + 8))(v8, v1);
  if (v14)
  {
    [v14 setSupportsOnDeviceRecognition_];
    [v14 setDefaultTaskHint_];
    v16 = *(v11 + 32);
    *(v11 + 32) = v14;
    v10 = v14;

    v9 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double MAGSpeechRecognitionService.beginRecognition()()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9008, &qword_257EE8C68);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v56 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9010, &qword_257EE8C70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20, v21, v22, v23);
  v53 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v31 = &v52 - v30;
  (*(v10 + 104))(v16, *MEMORY[0x277D858A0], v9, v29);
  sub_257ECF9C0();
  (*(v10 + 8))(v16, v9);
  sub_257ECC3F0();
  v32 = v17;
  sub_257ECF9D0();
  v33 = [objc_allocWithZone(MEMORY[0x277CDCEC0]) init];
  [v33 setRequiresOnDeviceRecognition_];
  [v33 setShouldReportPartialResults_];
  [v33 setTaskHint_];
  [v33 setAddsPunctuation_];
  v34 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_request);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_request) = v33;
  v35 = v33;

  v36 = sub_257DA01A8();
  v37 = *(v18 + 16);
  v38 = v53;
  v54 = v31;
  v39 = v31;
  v40 = v32;
  v37(v53, v39, v32);
  v41 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v42 = (v19 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v55 = v18;
  v44 = *(v18 + 32);
  v44(v43 + v41, v38, v40);
  *(v43 + v42) = v2;
  aBlock[4] = sub_257DA0F74;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257BE8054;
  aBlock[3] = &block_descriptor_40;
  v45 = _Block_copy(aBlock);
  sub_257ECC3F0();

  v46 = [v36 recognitionTaskWithRequest:v35 resultHandler:v45];
  _Block_release(v45);

  v47 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_task);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_task) = v46;

  sub_257DA003C();
  v48 = swift_allocObject();
  swift_weakInit();
  sub_257ECC3F0();
  sub_257DA16F8(sub_257DA1534, v48);

  v49 = v56;
  v44(v56, v54, v40);
  (*(v55 + 56))(v49, 0, 1, v40);
  v50 = OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_continuation;
  swift_beginAccess();
  sub_257DA1A98(v49, v2 + v50);
  swift_endAccess();
  return result;
}

double sub_257DA0830(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v15 - v8;
  v10 = sub_257ECF930();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_257ECF900();
  sub_257ECC3F0();
  v11 = sub_257ECF8F0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  sub_257C3FBD4(0, 0, v9, &unk_257EE8DC0, v12);

  return result;
}

uint64_t sub_257DA095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9008, &qword_257EE8C68);
  v4[6] = swift_task_alloc();
  sub_257ECF900();
  v4[7] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257DA0A2C, v6, v5);
}

uint64_t sub_257DA0A2C()
{
  v1 = v0[6];
  v2 = v0[5];

  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_task);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_task) = 0;

  v4 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_request);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_request) = 0;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_continuation;
  swift_beginAccess();
  sub_257DA1A98(v1, v2 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

void sub_257DA0B44(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10, v11, v12, v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9030, &unk_257EE8D98);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v49 - v22;
  if (a1)
  {
    v49 = v15;
    v50 = v8;
    v52 = a3;
    v24 = v7;
    v25 = a1;
    v26 = [v25 isFinal];
    v27 = [v25 bestTranscription];
    v28 = [v27 formattedString];

    v29 = sub_257ECF500();
    v31 = v30;

    v32 = (v17 + 8);
    if (v26)
    {
      aBlock = v29;
      v54 = v31;
      LOBYTE(v55) = 1;
      sub_257ECF9E0();
      (*v32)(v23, v16);
      aBlock = 0;
      sub_257ECF9F0();
    }

    else
    {
      aBlock = v29;
      v54 = v31;
      LOBYTE(v55) = 0;
      v34 = v24;
      sub_257ECF9E0();
      (*v32)(v23, v16);
      v35 = OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceTimer;
      v36 = v51;
      v37 = *(v51 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceTimer);
      if (v37)
      {
        [v37 invalidate];
      }

      v38 = objc_opt_self();
      v40 = v49;
      v39 = v50;
      (*(v50 + 16))(v49, v52, v24);
      v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v42 = swift_allocObject();
      v43 = v34;
      v44 = v42;
      (*(v39 + 32))(v42 + v41, v40, v43);
      *(v44 + ((v9 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
      v57 = sub_257DA2154;
      v58 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_257E2D168;
      v56 = &block_descriptor_26_0;
      v45 = _Block_copy(&aBlock);
      v46 = v25;

      v47 = [v38 scheduledTimerWithTimeInterval:0 repeats:v45 block:2.0];

      _Block_release(v45);
      v48 = *(v36 + v35);
      *(v36 + v35) = v47;
    }
  }

  else if (a2)
  {
    aBlock = a2;
    v33 = a2;
    sub_257ECF9F0();
  }

  else
  {
    sub_257ED0410();
    __break(1u);
  }
}

void sub_257DA0F74(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_257DA0B44(a1, a2, v2 + v6, v7);
}

double sub_257DA102C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10, v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v14 - 8, v15, v16, v17, v18);
  v20 = &v29 - v19;
  v21 = sub_257ECF930();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v6 + 16))(v13, a2, v5);
  sub_257ECF900();
  v22 = a3;
  v23 = sub_257ECF8F0();
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v23;
  *(v26 + 24) = v27;
  (*(v6 + 32))(v26 + v24, v13, v5);
  *(v26 + v25) = v22;
  sub_257C3FBD4(0, 0, v20, &unk_257EE8DB0, v26);

  return result;
}

uint64_t sub_257DA124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9030, &unk_257EE8D98);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_257ECF900();
  v5[11] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257DA134C, v8, v7);
}

uint64_t sub_257DA134C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = [v4 bestTranscription];
  v6 = [v5 formattedString];

  v7 = sub_257ECF500();
  v9 = v8;

  *(v0 + 16) = v7;
  *(v0 + 24) = v9;
  *(v0 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60);
  sub_257ECF9E0();
  (*(v3 + 8))(v1, v2);
  *(v0 + 40) = 0;
  sub_257ECF9F0();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

double sub_257DA149C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_request);
    if (v6)
    {
      v7 = v6;

      [v7 appendAudioPCMBuffer_];
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall MAGSpeechRecognitionService.endRecognition()()
{
  v1 = v0;
  sub_257DA003C();
  sub_257DA1B8C();

  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_request);
  if (v2)
  {
    [v2 endAudio];
  }

  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_task);
  if (v3)
  {
    [v3 finish];
  }

  v4 = OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceTimer;
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_silenceTimer);
  if (v5)
  {
    [v5 invalidate];
    v5 = *(v1 + v4);
  }

  *(v1 + v4) = 0;
}

uint64_t MAGSpeechRecognitionService.deinit()
{

  sub_257DA1DE4(v0 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_continuation);
  return v0;
}

uint64_t MAGSpeechRecognitionService.__deallocating_deinit()
{

  sub_257DA1DE4(v0 + OBJC_IVAR____TtC16MagnifierSupport27MAGSpeechRecognitionService_continuation);

  return swift_deallocClassInstance();
}

void sub_257DA16F8(void *a1, void *a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  v7 = *MEMORY[0x277CB8028];
  v8 = *MEMORY[0x277CB80A8];
  aBlock[0] = 0;
  if ([v6 setCategory:v7 mode:v8 options:9 error:aBlock])
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_257ECC9F0();

    swift_willThrow();
  }

  v12 = *(v5 + 16);
  aBlock[0] = 0;
  if ([v12 setActive:1 error:aBlock])
  {
    v13 = aBlock[0];
  }

  else
  {
    v14 = aBlock[0];
    v15 = sub_257ECC9F0();

    swift_willThrow();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  v17 = *(v2 + 24);
  *(v2 + 24) = v16;
  v18 = v16;

  if (v18)
  {
    v19 = [v18 inputNode];
    v20 = [v19 inputFormatForBus_];
    if (![v20 channelCount] || (objc_msgSend(v20, sel_sampleRate), v21 <= 0.0))
    {

      return;
    }

    [v19 removeTapOnBus_];
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257DA1B08;
    aBlock[3] = &block_descriptor_20_1;
    v22 = _Block_copy(aBlock);
    v23 = v20;
    sub_257ECC3F0();

    [v19 installTapOnBus:0 bufferSize:1024 format:v23 block:v22];
    _Block_release(v22);

    v24 = *(v2 + 24);
    if (v24)
    {
      aBlock[0] = 0;
      if (([v24 startAndReturnError_] & 1) == 0)
      {
        v30 = aBlock[0];
        sub_257ECC9F0();

        swift_willThrow();
        return;
      }

      v25 = aBlock[0];
    }
  }

  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 recordPermission];

  if (v27 == 1735552628)
  {
    v28 = [objc_opt_self() sharedApplication];
    sub_257DA2108();
    v29 = sub_257ECFF20();
    [v28 _accessibilitySetIsDictationListeningOverride_];
  }
}

uint64_t sub_257DA1A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9008, &qword_257EE8C68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_257DA1B08(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_257ECC3F0();
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_257DA1B8C()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD390();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_257BF1FC8(0xD000000000000013, 0x8000000257F04310, &v23);
    _os_log_impl(&dword_257BAC000, v10, v11, "%s Will remove inputNode tap", v12, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C74820](v13, -1, -1, v14);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v15 = *(v1 + 24);
  if (v15)
  {
    v16 = v15;
    v17 = [v16 inputNode];
    [v17 removeTapOnBus_];

    v18 = *(v1 + 24);
  }

  else
  {
    v18 = 0;
  }

  [v18 stop];
  v19 = *(v1 + 24);
  *(v1 + 24) = 0;

  v20 = [objc_opt_self() sharedApplication];
  sub_257DA2108();
  v21 = sub_257ECFF20();
  [v20 _accessibilitySetIsDictationListeningOverride_];
}

uint64_t sub_257DA1DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9008, &qword_257EE8C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257DA1E58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_257DA1EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for MAGSpeechRecognitionService(uint64_t a1)
{
  result = qword_27F8F9018;
  if (!qword_27F8F9018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257DA1F54(uint64_t a1)
{
  sub_257DA2040(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257DA2040(uint64_t a1)
{
  if (!qword_27F8F9028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8FE0, &qword_257EE8C60);
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F9028);
    }
  }
}

uint64_t sub_257DA20A4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257DA2108()
{
  result = qword_281543DC0;
  if (!qword_281543DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543DC0);
  }

  return result;
}

double sub_257DA2154(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_257DA102C(a1, v1 + v4, v5);
}

uint64_t sub_257DA21FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FE0, &qword_257EE8C60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257DA124C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_257DA2328(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257DA095C(a1, v4, v5, v6);
}

double MAGFollowUpContext.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

double MAGFollowUpContext.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t MAGFollowUpContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

AVAudioSession __swiftcall MAGAudioService.audioSessionForSpeaking(shouldDuckOthers:)(Swift::Bool shouldDuckOthers)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 24);
  if (!v12)
  {
    v14 = v9;
    v15 = [objc_opt_self() auxiliarySession];
    v16 = *MEMORY[0x277CB8030];
    v42[0] = 0;
    v17 = [v15 setCategory:v16 error:v42];
    v18 = v42[0];
    if (v17)
    {
      if (shouldDuckOthers)
      {
        v19 = 3;
      }

      else
      {
        v19 = 1;
      }

      v42[0] = 0;
      v20 = v18;
      v21 = [v15 setCategoryOptions:v19 error:v42];
      v22 = v42[0];
      if (v21)
      {
        v42[0] = 0;
        v23 = v22;
        v24 = [v15 setParticipatesInNowPlayingAppPolicy:0 error:v42];
        v22 = v42[0];
        if (v24)
        {
          v25 = v42[0];
LABEL_16:
          v36 = *(v1 + 24);
          *(v1 + 24) = v15;
          v13 = v15;

          v12 = 0;
          goto LABEL_17;
        }
      }

      v26 = v1;
      v27 = v22;
    }

    else
    {
      v26 = v1;
      v27 = v42[0];
    }

    v28 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD500();
    v29 = v28;
    v30 = sub_257ECDA20();
    v31 = sub_257ECFBE0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v28;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_257BAC000, v30, v31, "Failed to set audio session properties: %@", v32, 0xCu);
      sub_257C11B14(v33);
      MEMORY[0x259C74820](v33, -1, -1);
      MEMORY[0x259C74820](v32, -1, -1);
    }

    else
    {
    }

    v1 = v26;
    (*(v4 + 8))(v11, v14);
    goto LABEL_16;
  }

  v13 = *(v1 + 24);
LABEL_17:
  v37 = v12;
  v39 = v13;
  result._impl = v38;
  result.super.isa = v39;
  return result;
}

uint64_t MAGAudioService.__allocating_init(audioSession:)(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  v3 = *MEMORY[0x277CB8030];
  v4 = *MEMORY[0x277CB80A8];
  v9[0] = 0;
  if ([a1 setCategory:v3 mode:v4 options:1 error:v9])
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_257ECC9F0();

    swift_willThrow();
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t MAGAudioService.init(audioSession:)(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  *(v1 + 24) = 0;
  v3 = *MEMORY[0x277CB8030];
  v4 = *MEMORY[0x277CB80A8];
  v9[0] = 0;
  if ([a1 setCategory:v3 mode:v4 options:1 error:v9])
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_257ECC9F0();

    swift_willThrow();
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t MAGAudioService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257DA2A80()
{
  v1 = sub_257ECF120();
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v20[1] = *(v0 + 24);
  aBlock[4] = sub_257DA3464;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_41;
  v17 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECF150();
  v24 = MEMORY[0x277D84F90];
  sub_257DA37D8(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v14, v7, v17);
  _Block_release(v17);
  (*(v23 + 8))(v7, v1);
  (*(v21 + 8))(v14, v22);

  swift_beginAccess();
  v18 = *v16;

  return v18;
}

void sub_257DA2D64(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentRoute];

  v3 = [v2 outputs];
  sub_257BD2C2C(0, &qword_27F8F9038, 0x277CB8408);
  v4 = sub_257ECF810();

  if (v4 >> 62)
  {
    v5 = sub_257ED0210();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v5 >= 1)
  {
    swift_beginAccess();
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C72E20](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 portType];
      v10 = sub_257ECF500();
      v12 = v11;
      if (v10 == sub_257ECF500() && v12 == v13)
      {
      }

      else
      {
        v15 = sub_257ED0640();

        if ((v15 & 1) == 0)
        {
          v16 = [v8 portType];
          v17 = sub_257ECF500();
          v19 = v18;
          if (v17 == sub_257ECF500() && v19 == v20)
          {

LABEL_18:

            goto LABEL_19;
          }

          v21 = sub_257ED0640();

          if ((v21 & 1) == 0)
          {
            v22 = [v8 portType];
            v23 = sub_257ECF500();
            v25 = v24;
            if (v23 != sub_257ECF500() || v25 != v26)
            {
              v27 = sub_257ED0640();

              if ((v27 & 1) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

LABEL_19:
      *(a1 + 16) = 1;
LABEL_20:
      if (v5 == ++v6)
      {

        return;
      }
    }
  }

  __break(1u);
}

int8x8_t sub_257DA30F8(int a1, __n128 a2, int32x2_t a3)
{
  v28 = a2;
  v29 = a3;
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v4 = byte_27F8F8D89;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 orientation];

  if (v4 != 1)
  {
    if (qword_286904028 == v6 || unk_286904030 == v6 || qword_286904038 == v6)
    {
      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 activeInterfaceOrientation];

      if (UIInterfaceOrientationIsPortrait(v14))
      {
LABEL_23:
        v7 = COERCE_DOUBLE(vneg_f32(vcvt_f32_s32(vzip1_s32(v28.n128_u64[0], v29))));
        goto LABEL_25;
      }
    }

    else if (v6 == 1 || v6 == 2)
    {
      goto LABEL_23;
    }

    v7 = COERCE_DOUBLE(vcvt_f32_s32(vzip1_s32(v29, v28.n128_u64[0])));
    goto LABEL_25;
  }

  v7 = COERCE_DOUBLE(vcvt_f32_s32(vzip1_s32(v29, v28.n128_u64[0])));
  v8 = COERCE_DOUBLE(vcvt_f32_s32(vzip2_s32(v29, v28.n128_u64[0])));
  v9 = COERCE_DOUBLE(vneg_f32(vcvt_f32_s32(vzip1_s32(v28.n128_u64[0], v29))));
  v10 = COERCE_DOUBLE(vneg_f32(vcvt_f32_s32(vzip2_s32(v28.n128_u64[0], v29))));
  if (v6 == 4)
  {
    v9 = v10;
  }

  if (v6 != 3)
  {
    v8 = v9;
  }

  if (v6 != 2)
  {
    v7 = v8;
  }

LABEL_25:
  v30 = *&v7;
  v15 = atan2f(*(&v7 + 1), a1);
  v16 = atan2f(v30, a1);
  v31.n64_u64[0] = sub_257DA3704(v15, v16).n64_u64[0];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  sub_257ECFD50();

  v23 = sub_257DA2A80();
  *v24.i32 = vaddv_f32(v31.n64_u64[0]) * 0.5;
  v25 = vdup_lane_s32(v24, 0);
  if ((v23 | v32))
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  return vbsl_s8(vdup_n_s32(v26), v31.n64_u64[0], v25);
}

uint64_t sub_257DA3408()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257DA3484()
{
  v20 = sub_257ECFD20();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v2, v3, v4, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v13 = sub_257ECF190();
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  *(v0 + 16) = 0xBE20D97B3E20D97BLL;
  v19[1] = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v21 = MEMORY[0x277D84F90];
  sub_257DA37D8(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200);
  sub_257ED0180();
  (*(v1 + 104))(v7, *MEMORY[0x277D85260], v20);
  *(v0 + 24) = sub_257ECFD80();
  return v0;
}

__n64 sub_257DA3704(float a1, float a2)
{
  if (a1 > 0.15708)
  {
    v2 = 0;
    result.n64_u32[0] = 0;
    if (a2 < -0.15708)
    {
LABEL_7:
      result.n64_u32[1] = v2;
      return result;
    }

    v2 = 1.0;
    result.n64_u32[0] = 0;
    goto LABEL_6;
  }

  if (a1 > 0.0)
  {
    v2 = 1.0;
    result.n64_f32[0] = (a1 * -6.3662) + 1.0;
    if (a2 >= -0.15708)
    {
LABEL_6:
      if (a2 >= 0.0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

LABEL_10:
    result.n64_u32[1] = 0;
    return result;
  }

  if (a2 < -0.15708)
  {
    result.n64_u32[0] = 1.0;
    goto LABEL_10;
  }

  result.n64_u32[0] = 1.0;
  v2 = 1.0;
  if (a2 >= 0.0)
  {
    goto LABEL_7;
  }

LABEL_12:
  result.n64_f32[1] = (a2 * 6.3662) + 1.0;
  return result;
}

uint64_t sub_257DA37D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_257DA3820()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = 0;
  sub_257ECF540();

  v9 = sub_257ECF4C0();

  [v0 setText_];

  v10 = [objc_opt_self() darkTextColor];
  [v0 setTextColor_];

  [v0 setClipsToBounds_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setLineBreakMode_];
  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  LODWORD(v11) = 1.0;
  [v0 _setHyphenationFactor_];
  return v0;
}

id sub_257DA3A78()
{
  v0 = sub_257DE1234();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() darkTextColor];
    v3 = [v1 imageWithTintColor_];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  [v6 setContentMode_];
  [v6 setClipsToBounds_];

  return v6;
}

void sub_257DA3B98()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_label);
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_isDimmed) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_dimmedColor);
  }

  else
  {
    v2 = [objc_opt_self() darkTextColor];
  }

  v3 = v2;
  [v1 setTextColor_];

  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon);
  v5 = sub_257DE1234();
  if (v5)
  {
    v6 = v5;
    v7 = [v1 textColor];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [v6 imageWithTintColor_];
  }

  else
  {
    v9 = 0;
  }

  [v4 setImage_];
}

uint64_t sub_257DA3CC8()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v6 = swift_allocObject();
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_snapshotCount);
  v8 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v9 = MEMORY[0x277D83C10];
  *(v6 + 56) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = sub_257ECF540();

  return v10;
}

char *sub_257DA3E30(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_label;
  *&v4[v10] = sub_257DA3820();
  v11 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon;
  *&v4[v11] = sub_257DA3A78();
  result = [objc_opt_self() visualEffectViewAllowingBlur:0 withBlurEffect:0];
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_containerView;
    [result setUserInteractionEnabled_];
    *&v4[v14] = v13;
    v15 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_enabledColor;
    v16 = objc_opt_self();
    *&v4[v15] = [v16 systemYellowColor];
    v17 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_disabledColor;
    *&v4[v17] = [v16 systemMidGrayColor];
    v18 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_dimmedColor;
    *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.1 alpha:0.6];
    v4[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_isDimmed] = 0;
    *&v4[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_contentSizeCategorySubscription] = 0;
    *&v4[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_snapshotCount] = 0;
    *&v4[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_rotationSubscription] = 0;
    v79.receiver = v4;
    v79.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v79, sel_initWithFrame_, a1, a2, a3, a4);
    v20 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_label;
    v21 = *&v19[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_label];
    v22 = v19;
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon;
    [*&v22[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon] setTranslatesAutoresizingMaskIntoConstraints_];
    v24 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_containerView;
    [*&v22[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_containerView] setTranslatesAutoresizingMaskIntoConstraints_];
    v25 = *&v19[v20];
    v26 = objc_opt_self();
    v27 = *MEMORY[0x277D769D0];
    v28 = *MEMORY[0x277D76820];
    v29 = v25;
    v30 = [v26 _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
    [v29 setFont_];

    [*&v22[v24] setBackgroundColor_];
    v31 = [*&v22[v24] layer];
    if (qword_281544A80 != -1)
    {
      swift_once();
    }

    [v31 setCornerCurve_];

    v32 = [*&v22[v24] contentView];
    [v32 addSubview_];

    v33 = [*&v22[v24] contentView];
    [v33 addSubview_];

    v34 = *&v22[v24];
    v35 = v22;
    [v35 addSubview_];
    v78 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_257EE8EA0;
    v37 = [*&v22[v23] centerYAnchor];
    v77 = v19;
    v38 = [v35 centerYAnchor];
    v76 = v20;
    v39 = [v37 constraintEqualToAnchor_];

    *(v36 + 32) = v39;
    v40 = [*&v22[v23] heightAnchor];
    v41 = [*&v22[v23] widthAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    *(v36 + 40) = v42;
    v43 = [*&v22[v23] leadingAnchor];
    v44 = [*&v22[v24] leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:6.0];

    *(v36 + 48) = v45;
    v46 = [*&v77[v76] leadingAnchor];
    v47 = [*&v22[v23] trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:4.0];

    *(v36 + 56) = v48;
    v49 = [*&v77[v76] trailingAnchor];
    v50 = [*&v22[v24] trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-6.0];

    *(v36 + 64) = v51;
    v52 = [*&v77[v76] topAnchor];
    v53 = [*&v22[v24] topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:6.0];

    *(v36 + 72) = v54;
    v55 = [*&v77[v76] bottomAnchor];
    v56 = [*&v22[v24] bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:-6.0];

    *(v36 + 80) = v57;
    sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
    v58 = sub_257ECF7F0();

    [v78 activateConstraints_];

    v59 = *MEMORY[0x277D768C8];
    v60 = *(MEMORY[0x277D768C8] + 8);
    v61 = *(MEMORY[0x277D768C8] + 16);
    v62 = *(MEMORY[0x277D768C8] + 24);
    v63 = *&v22[v24];
    sub_257EB6FD8(v35, v59, v60, v61, v62);

    [v35 addTarget:v35 action:sel_dragExited_ forControlEvents:32];
    [v35 addTarget:v35 action:sel_dragReturned_ forControlEvents:16];
    [v35 setIsAccessibilityElement_];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v65 = [objc_opt_self() bundleForClass_];
    v66 = sub_257ECF4C0();
    v67 = sub_257ECF4C0();
    v68 = [v65 localizedStringForKey:v66 value:0 table:v67];

    sub_257ECF500();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
    v69 = swift_allocObject();
    v70 = MEMORY[0x277D83B88];
    *(v69 + 16) = xmmword_257ED6D30;
    v71 = MEMORY[0x277D83C10];
    *(v69 + 56) = v70;
    *(v69 + 64) = v71;
    *(v69 + 32) = 0;
    sub_257ECF540();

    v72 = sub_257ECF4C0();

    [v35 setAccessibilityLabel_];

    v73 = *MEMORY[0x277D76548];
    v74 = *MEMORY[0x277D76580];
    if (*MEMORY[0x277D76548])
    {
      if ((v74 & ~v73) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (!v74)
    {
      v73 = 0;
      goto LABEL_10;
    }

    v73 |= v74;
LABEL_10:
    [v35 setAccessibilityTraits_];

    [v35 setShowsLargeContentViewer_];
    [v35 setScalesLargeContentImage_];

    v75 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v35 addInteraction_];

    sub_257DA47A4();
    return v35;
  }

  __break(1u);
  return result;
}

double sub_257DA47A4()
{
  v1 = v0;
  v2 = sub_257ECFDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14[1] = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_contentSizeCategoryPublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9090, &unk_257EE8F10);
  sub_257DA5424();
  v10 = sub_257ECDE50();

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_contentSizeCategorySubscription) = v10;

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v12 = [objc_opt_self() defaultCenter];
    sub_257ECFE00();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257DA5490();
    v13 = sub_257ECDE50();

    (*(v3 + 8))(v9, v2);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_rotationSubscription) = v13;
  }

  return result;
}

void sub_257DA4A6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_label;
    v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_label);
    sub_257DA3CC8();
    v6 = sub_257ECF4C0();

    [v5 setText_];

    v7 = *&v3[v4];
    v8 = objc_opt_self();
    v9 = *MEMORY[0x277D769D0];
    v10 = *MEMORY[0x277D76820];
    v11 = v7;
    v12 = [v8 _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
    [v11 setFont_];
  }
}

void sub_257DA4B8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 orientation];

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v5;
    aBlock[4] = sub_257DA54E8;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_42;
    v9 = _Block_copy(aBlock);

    _Block_release(v9);
  }
}

uint64_t sub_257DA4F64()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon);
  *(v2 + 32) = v3;
  v4 = v3;
  return v2;
}

void sub_257DA4FEC(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, char a6)
{
  ObjectType = swift_getObjectType();
  sub_257BD2C2C(0, &qword_27F8F78B0, 0x277D75C68);
  sub_257CF5978();
  sub_257ECFA70();
  v11 = a4;
  v12 = a1;
  v13 = sub_257ECFA60();

  v14.receiver = v12;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a5, v13, v11);

  *(v12 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_isDimmed) = a6;
  sub_257DA3B98();
}

uint64_t sub_257DA5100(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  *(a1 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_isDimmed) = a4;
  sub_257DA3B98();

  return sub_257C3A464(v9);
}

char *sub_257DA5184(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BF0;
    v6 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon];
    *(inited + 32) = v6;
    result = v6;
    if ((inited & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x259C72E20](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v7 = result;
    }

    v8 = v7;
    [v7 rotateIfPossibleTo_];

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

void sub_257DA5290()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_label;
  *(v0 + v1) = sub_257DA3820();
  v2 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon;
  *(v0 + v2) = sub_257DA3A78();
  v3 = [objc_opt_self() visualEffectViewAllowingBlur:0 withBlurEffect:0];
  if (!v3)
  {
    __break(1u);
  }

  v4 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_containerView;
  v5 = v3;
  [v3 setUserInteractionEnabled_];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_enabledColor;
  v7 = objc_opt_self();
  *(v0 + v6) = [v7 systemYellowColor];
  v8 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_disabledColor;
  *(v0 + v8) = [v7 systemMidGrayColor];
  v9 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_dimmedColor;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.1 alpha:0.6];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_isDimmed) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_contentSizeCategorySubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_snapshotCount) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_rotationSubscription) = 0;
  sub_257ED0410();
  __break(1u);
}

unint64_t sub_257DA5424()
{
  result = qword_2815441C0;
  if (!qword_2815441C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9090, &unk_257EE8F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815441C0);
  }

  return result;
}

unint64_t sub_257DA5490()
{
  result = qword_281543EB0;
  if (!qword_281543EB0)
  {
    sub_257ECFDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543EB0);
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257DA5508()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config;
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config);
  v3 = *(v2 + 8);
  v5 = (*(v3 + 48))(v4, v3);
  v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 32);
    while (v8 < *(v6 + 16))
    {
      v10 = *v9;
      v9 += 2;
      v11 = *(v3 + 24);
      v12 = v10;
      v13 = v5 * v8 + v11(v4, v3) * v8;
      v14 = v11(v4, v3);
      [v12 setFrame_];
      [v12 setUserInteractionEnabled_];

      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t MFFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for MFFeatureFlags;
  v4[4] = sub_257C73100();
  LOBYTE(v4[0]) = v1;
  v2 = sub_257ECCF60();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

const char *MFFeatureFlags.feature.getter()
{
  v1 = "Magnifier_AnnounceStairs";
  if (*v0 != 1)
  {
    v1 = "Magnifier_HumanHandPose";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "Magnifier_GroupTextDetections";
  }
}

uint64_t MFFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

unint64_t sub_257DA588C()
{
  result = qword_27F8F90A0;
  if (!qword_27F8F90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F90A0);
  }

  return result;
}

const char *sub_257DA58F4()
{
  v1 = "Magnifier_AnnounceStairs";
  if (*v0 != 1)
  {
    v1 = "Magnifier_HumanHandPose";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "Magnifier_GroupTextDetections";
  }
}

void sub_257DA594C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257DA59CC(char *a1, uint64_t *a2)
{
  sub_257D71A64(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257DA5A48(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_257DA5AA8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DA5AFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MAGDoorDetectionService.__allocating_init(textDetectionService:arService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MAGDoorDetectionService.init(textDetectionService:arService:)(a1, a2);
  return v4;
}

uint64_t MAGDoorDetectionService.init(textDetectionService:arService:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = sub_257ECFD20();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v15 = sub_257ECF190();
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  sub_257ECCC70();
  sub_257ECCC70();
  sub_257ECCC70();
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedDetectedDoorTextDocument) = 0;
  sub_257ECCC70();
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_initializedModels) = 0;
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedSignDetectorResults) = 0;
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_doorSignDetectorModel) = 0;
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_detector) = 0;
  sub_257ECCC70();
  v20 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  *(v2 + v20) = sub_257ECFF10();
  v23 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_textQueue;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF180();
  v28 = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200);
  sub_257ED0180();
  (*(v24 + 104))(v9, *MEMORY[0x277D85260], v25);
  *(v2 + v23) = sub_257ECFD80();
  v21 = v27;
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_textDetectionService) = v26;
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_arService) = v21;
  return v2;
}

void sub_257DA5F54()
{
  v1 = v0;
  type metadata accessor for DoorSignDetectorModel();
  swift_allocObject();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_doorSignDetectorModel) = sub_257EA14D8();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SemanticBufferDoorDetection();
  swift_allocObject();
  v2 = sub_257ECC3F0();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_detector) = sub_257DE92A8(v2);

  v3 = [objc_opt_self() shared];
  v4 = [v3 doorAttributesClassifierProperties];

  if (v4)
  {
    *&v12 = 0xD000000000000017;
    *(&v12 + 1) = 0x8000000257EF93E0;
    v5 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v5)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14 = v12;
    v15 = v13;
    if (!*(&v13 + 1))
    {

      sub_257BE4084(&v14, &unk_27F8F62F0, &unk_257ED9D30);
      return;
    }

    sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    *&v14 = 0x746174536E65704FLL;
    *(&v14 + 1) = 0xE900000000000065;
    v6 = [v11 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v6)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v14, &unk_27F8F62F0, &unk_257ED9D30);
      *&v14 = 0x746174536E65704FLL;
      *(&v14 + 1) = 0xE900000000000065;
      v7 = [v11 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v7)
      {
        __break(1u);
        return;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();

      sub_257BEBE08(&v12, &v14);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      swift_dynamicCast();
      v8 = v11;
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      sub_257BE4084(&v14, &unk_27F8F62F0, &unk_257ED9D30);
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v8 = sub_257ECFF10();
    }

    v9 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = v8;
  }
}

uint64_t sub_257DA6320(uint64_t a1, char a2, double a3, double a4)
{
  *(v5 + 144) = v4;
  *(v5 + 108) = a2;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 120) = a1;
  v6 = sub_257ECCC80();
  *(v5 + 152) = v6;
  *(v5 + 160) = *(v6 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DA63F8, 0, 0);
}

uint64_t sub_257DA63F8(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_initializedModels;
  if ((*(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_initializedModels) & 1) == 0)
  {
    sub_257DA5F54();
    *(v2 + v3) = 1;
  }

  sub_257ECCC70();
  *(v1 + 105) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v5 = *(v1 + 106);
  *(v1 + 109) = v5;
  *(v1 + 112) = 0;
  v6 = v4 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
  swift_beginAccess();
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  *(v1 + 88) = *v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  v9 = qword_2815447E0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(v1 + 108);
  *(swift_task_alloc() + 16) = v1 + 88;
  sub_257ECFD50();

  if (*(v1 + 107) != 1 || !v10)
  {
    v34 = *(v1 + 160);
    v35 = sub_257DA8224(*(v1 + 120), 0, 0, *(v1 + 128), *(v1 + 136));
    v20 = (v34 + 8);
LABEL_27:
    (*v20)(*(v1 + 176), *(v1 + 152));

    v46 = *(v1 + 8);

    return v46(v35);
  }

  v11 = (v1 + 105);
  v12 = *(v1 + 168);
  v13 = *(v1 + 152);
  v14 = *(v1 + 160);
  v15 = *(v1 + 144);
  v16 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastSignCheckTime;
  swift_beginAccess();
  (*(v14 + 16))(v12, v15 + v16, v13);
  sub_257ECCBC0();
  v18 = v17;
  v19 = *(v14 + 8);
  *(v1 + 184) = v19;
  v20 = (v1 + 184);
  v19(v12, v13);
  v21 = *(v1 + 144);
  if (v18 > 1.0)
  {
    v22 = *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_doorSignDetectorModel);
    *(v1 + 192) = v22;
    if (v22)
    {
      v23 = v5 ^ 1;
      v24 = *(v1 + 176);
      v26 = *(v1 + 128);
      v25 = *(v1 + 136);
      v27 = *(v1 + 120);
      sub_257ECC3F0();
      v28 = [v27 capturedImage];
      *(v1 + 200) = v28;
      type metadata accessor for MAGCVPixelBufferWrapper();
      inited = swift_initStackObject();
      *(v1 + 208) = inited;
      *(inited + 16) = v28;
      v30 = swift_allocObject();
      *(v1 + 216) = v30;
      swift_weakInit();
      v31 = swift_task_alloc();
      *(v1 + 224) = v31;
      *(v31 + 16) = v11;
      *(v31 + 24) = v30;
      *(v31 + 32) = v24;
      *(v31 + 40) = v23;
      *(v31 + 48) = v27;
      *(v31 + 56) = v26;
      *(v31 + 64) = v25;
      *(v31 + 72) = v1 + 112;
      v32 = swift_task_alloc();
      *(v1 + 232) = v32;
      *v32 = v1;
      v32[1] = sub_257DA69F4;

      return sub_257E9DE48(inited, &unk_257EE9060, v31);
    }

LABEL_20:
    if ((*v11 & 1) == 0)
    {
      v35 = *(v1 + 112);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v36 = *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedSignDetectorResults);
  *(v1 + 240) = v36;
  if (v36)
  {
    if (v36 >> 62)
    {
      if (sub_257ED0210() >= 1)
      {
        goto LABEL_18;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_18:
      if ((v5 & 1) == 0)
      {

        v41 = swift_task_alloc();
        *(v1 + 248) = v41;
        *v41 = v1;
        v41[1] = sub_257DA6CB0;
        v42 = *(v1 + 128);
        v43 = *(v1 + 136);
        v44 = *(v1 + 120);
        v45 = v36;
        goto LABEL_31;
      }

      v38 = *(v1 + 128);
      v37 = *(v1 + 136);
      v39 = *(v1 + 120);

      v40 = sub_257DA8224(v39, 0, v36, v38, v37);

      *(v1 + 112) = v40;
      goto LABEL_20;
    }
  }

  *v11 = 1;
LABEL_25:
  if (*(v1 + 109))
  {
    v35 = sub_257DA8224(*(v1 + 120), 0, 0, *(v1 + 128), *(v1 + 136));

    goto LABEL_27;
  }

  v47 = swift_task_alloc();
  *(v1 + 264) = v47;
  *v47 = v1;
  v47[1] = sub_257DA6F2C;
  v42 = *(v1 + 128);
  v43 = *(v1 + 136);
  v44 = *(v1 + 120);
  v45 = 0;
LABEL_31:

  return sub_257DA7848(v44, v45, v42, v43);
}

uint64_t sub_257DA69F4()
{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_257DA6B64, 0, 0);
}

uint64_t sub_257DA6B64(__n128 a1)
{
  if ((*(v1 + 105) & 1) == 0)
  {
    v2 = *(v1 + 112);
    goto LABEL_5;
  }

  if (*(v1 + 109))
  {
    v2 = sub_257DA8224(*(v1 + 120), 0, 0, *(v1 + 128), *(v1 + 136));

LABEL_5:
    (*(v1 + 184))(*(v1 + 176), *(v1 + 152));

    v3 = *(v1 + 8);

    return v3(v2);
  }

  v5 = swift_task_alloc();
  *(v1 + 264) = v5;
  *v5 = v1;
  v5[1] = sub_257DA6F2C;
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 120);

  return sub_257DA7848(v8, 0, v6, v7);
}

uint64_t sub_257DA6CB0(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_257DA6DB0, 0, 0);
}

uint64_t sub_257DA6DB0()
{
  v1 = *(v0 + 256);
  if (!v1)
  {
    v1 = sub_257DA8224(*(v0 + 120), 0, *(v0 + 240), *(v0 + 128), *(v0 + 136));
  }

  *(v0 + 112) = v1;
  if (*(v0 + 105) != 1)
  {
    goto LABEL_6;
  }

  if (*(v0 + 109))
  {
    v1 = sub_257DA8224(*(v0 + 120), 0, 0, *(v0 + 128), *(v0 + 136));

LABEL_6:
    (*(v0 + 184))(*(v0 + 176), *(v0 + 152));

    v2 = *(v0 + 8);

    return v2(v1);
  }

  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_257DA6F2C;
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);

  return sub_257DA7848(v7, 0, v5, v6);
}

uint64_t sub_257DA6F2C(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_257DA702C, 0, 0);
}

uint64_t sub_257DA702C()
{
  if (*(v0 + 272))
  {

    v1 = *(v0 + 272);
  }

  else
  {
    v1 = sub_257DA8224(*(v0 + 120), 0, 0, *(v0 + 128), *(v0 + 136));
  }

  (*(v0 + 184))(*(v0 + 176), *(v0 + 152));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_257DA70FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v10 + 240) = a8;
  *(v10 + 224) = a9;
  *(v10 + 232) = a10;
  *(v10 + 208) = a5;
  *(v10 + 216) = a7;
  *(v10 + 321) = a6;
  *(v10 + 192) = a3;
  *(v10 + 200) = a4;
  *(v10 + 184) = a2;
  *(v10 + 320) = a1;
  v11 = sub_257ECCC80();
  *(v10 + 248) = v11;
  *(v10 + 256) = *(v11 - 8);
  *(v10 + 264) = swift_task_alloc();
  v12 = sub_257ECDA30();
  *(v10 + 272) = v12;
  *(v10 + 280) = *(v12 - 8);
  *(v10 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DA7230, 0, 0);
}

uint64_t sub_257DA7230(uint64_t a1)
{
  if (*(v1 + 320) != 9)
  {
    sub_257ECD450();
    v18 = sub_257ECDA20();
    v19 = sub_257ECFBD0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v1 + 320);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_257DA9AE4();
      swift_allocError();
      *v23 = v20;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_257BAC000, v18, v19, "%@", v21, 0xCu);
      sub_257BE4084(v22, &unk_27F8F5490, &unk_257EDC470);
      MEMORY[0x259C74820](v22, -1, -1);
      MEMORY[0x259C74820](v21, -1, -1);
    }

    v26 = *(v1 + 280);
    v25 = *(v1 + 288);
    v27 = *(v1 + 272);
    v28 = *(v1 + 192);

    (*(v26 + 8))(v25, v27);
    *v28 = 1;
    goto LABEL_25;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v5 = *(v1 + 256);
    v4 = *(v1 + 264);
    v6 = *(v1 + 248);
    (*(v5 + 16))(v4, *(v1 + 208), v6);
    v7 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastSignCheckTime;
    swift_beginAccess();
    (*(v5 + 40))(v3 + v7, v4, v6);
    swift_endAccess();
  }

  v8 = *(v1 + 184);
  if (!v8)
  {
    goto LABEL_20;
  }

  if (v8 >> 62)
  {
    v9 = sub_257ED0210();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 1)
  {
    swift_beginAccess();
    v29 = swift_weakLoadStrong();
    if (v29)
    {
      *(v29 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedSignDetectorResults) = 0;
    }

LABEL_20:
    **(v1 + 192) = 1;
    goto LABEL_25;
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    *(v10 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedSignDetectorResults) = *(v1 + 184);
  }

  if (*(v1 + 321) == 1)
  {
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    *(v1 + 296) = v11;
    if (v11)
    {
      v12 = swift_task_alloc();
      *(v1 + 304) = v12;
      *v12 = v1;
      v12[1] = sub_257DA7654;
      v13 = *(v1 + 224);
      v14 = *(v1 + 232);
      v15 = *(v1 + 216);
      v16 = *(v1 + 184);

      return sub_257DA7848(v15, v16, v13, v14);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v30 = sub_257DA8224(*(v1 + 216), 0, *(v1 + 184), *(v1 + 224), *(v1 + 232));
  }

  else
  {
    v30 = 0;
  }

  **(v1 + 240) = v30;

LABEL_25:

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_257DA7654(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_257DA7774, 0, 0);
}

uint64_t sub_257DA7774()
{
  v1 = *(v0 + 312);
  if (!v1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v1 = sub_257DA8224(*(v0 + 216), 0, *(v0 + 184), *(v0 + 224), *(v0 + 232));
    }

    else
    {
      v1 = 0;
    }
  }

  **(v0 + 240) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257DA7848(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 128) = v4;
  *(v5 + 112) = a3;
  *(v5 + 120) = a4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = sub_257ECF120();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  v7 = sub_257ECF190();
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  v8 = sub_257ECCC80();
  *(v5 + 184) = v8;
  v9 = *(v8 - 8);
  *(v5 + 192) = v9;
  *(v5 + 200) = *(v9 + 64);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DA79DC, 0, 0);
}

uint64_t sub_257DA79DC(uint64_t a1)
{
  v2 = *(v1 + 26);
  v3 = *(v1 + 23);
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  sub_257ECCC70();
  v6 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDetectedDoorTextCheckTime;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v7(v2, v5 + v6, v3);
  sub_257ECCBC0();
  v9 = v8;
  v10 = *(v4 + 8);
  v10(v2, v3);
  if (v9 <= 2.0)
  {
    v22 = *(*(v1 + 16) + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedDetectedDoorTextDocument);
    if (v22)
    {
      v24 = v1[14];
      v23 = v1[15];
      v26 = *(v1 + 12);
      v25 = *(v1 + 13);
      v27 = v22;
      v21 = sub_257DA8224(v26, v22, v25, v24, v23);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v11 = *(v1 + 26);
    v12 = *(v1 + 24);
    v13 = *(v1 + 23);
    v30 = *(v1 + 22);
    v35 = *(v1 + 21);
    v36 = *(v1 + 20);
    v14 = *(v1 + 16);
    v32 = *(v1 + 19);
    v33 = *(v1 + 17);
    v16 = v1[14];
    v15 = v1[15];
    v17 = *(v1 + 12);
    v37 = *(v1 + 13);
    v34 = *(v1 + 18);
    v7(v11, *(v1 + 27), v13);
    v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v17;
    (*(v12 + 32))(v19 + v18, v11, v13);
    *(v1 + 6) = sub_257DA9B38;
    *(v1 + 7) = v19;
    *(v1 + 2) = MEMORY[0x277D85DD0];
    *(v1 + 3) = 1107296256;
    *(v1 + 4) = sub_257D231C0;
    *(v1 + 5) = &block_descriptor_43;
    v20 = _Block_copy(v1 + 2);
    sub_257ECC3F0();
    aBlock = v17;
    sub_257ECF150();
    *(v1 + 11) = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v30, v32, v20);
    _Block_release(v20);
    (*(v34 + 8))(v32, v33);
    (*(v35 + 8))(v30, v36);

    v21 = sub_257DA8224(aBlock, 0, v37, v16, v15);
  }

  v10(*(v1 + 27), *(v1 + 23));

  v28 = *(v1 + 1);

  return v28(v21);
}

uint64_t sub_257DA7DAC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_257ECCC80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = v29 - v19;
  v29[1] = *(a1 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_textDetectionService);
  sub_257ECC3F0();
  v21 = [a2 capturedImage];
  v22 = *(v7 + 16);
  v22(v20, a3, v6);
  sub_257CB7AE4(v21, 0);
  v24 = v23;
  v22(v13, v20, v6);
  v25 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDetectedDoorTextCheckTime;
  swift_beginAccess();
  v29[0] = *(v7 + 40);
  v26 = v24;
  (v29[0])(a1 + v25, v13, v6);
  swift_endAccess();
  v27 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedDetectedDoorTextDocument);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedDetectedDoorTextDocument) = v24;

  return (*(v7 + 8))(v20, v6);
}

void sub_257DA7FD4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCC80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECDA30();
  v15 = *(v14 - 8);
  v20 = MEMORY[0x28223BE20](v14, v16, v17, v18, v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v7 + 16))(v13, a3, v6, v20);
    v23 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDetectedDoorTextCheckTime;
    swift_beginAccess();
    v24 = *(v7 + 40);
    v25 = a1;
    v24(a2 + v23, v13, v6);
    swift_endAccess();
    v26 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedDetectedDoorTextDocument);
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_cachedDetectedDoorTextDocument) = a1;
  }

  else
  {
    sub_257ECD450();
    v27 = sub_257ECDA20();
    v28 = sub_257ECFBD0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_257BAC000, v27, v28, "Could not detect text for door detection", v29, 2u);
      MEMORY[0x259C74820](v29, -1, -1);
    }

    (*(v15 + 8))(v22, v14);
  }
}

uint64_t sub_257DA8224(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v108 = a3;
  v9 = sub_257ECCC80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v110 = &v102[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = v15;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v102[-v21];
  sub_257ECCC70();
  v117[0] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v23 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
  swift_beginAccess();
  v24 = *(v23 + 8);
  v25 = *(v23 + 16);
  v114 = *v23;
  v115 = v24;
  v116 = v25;
  v26 = qword_2815447E0;

  if (v26 != -1)
  {
    v27 = swift_once();
  }

  v32 = qword_2815447E8;
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  *&v102[-16] = &v114;
  v111 = v32;
  sub_257ECFD50();

  v112 = v9;
  if (v113 != 1)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    if (!v108)
    {
      v53 = 0;
      v54 = 0;
      goto LABEL_28;
    }

    v33 = [a1 rawSceneUnderstandingData];
    if (!v33)
    {
      v54 = 0;
      v53 = 1;
      goto LABEL_28;
    }

    v105 = 0;
    v106 = a1;

    v55 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorAttributesCheckTime;
    v56 = v109;
    swift_beginAccess();
    v57 = *(v10 + 16);
    v58 = v110;
    v57(v110, &v56[v55], v9);
    sub_257ECCBC0();
    v60 = v59;
    v33 = (*(v10 + 8))(v58, v9);
    if (*&v56[OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_detector])
    {
      swift_weakInit();
      v57(v58, v22, v9);
      v61 = (*(v10 + 80) + 33) & ~*(v10 + 80);
      v62 = (v107 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 16) = &v114;
      v64 = v106;
      *(v63 + 24) = v106;
      *(v63 + 32) = v60 > 1.0;
      v65 = v58;
      a1 = v64;
      (*(v10 + 32))(v63 + v61, v65, v9);
      *(v63 + v62) = v117;
      v66 = a1;
      sub_257ECC3F0();
      sub_257DEA5C0(v66, v60 > 1.0, 0, v108, sub_257DA9D54, v63, a4, a5);

      v33 = swift_weakDestroy();
      v54 = 0;
      v53 = 1;
      goto LABEL_28;
    }

    v54 = 0;
    v53 = 1;
    goto LABEL_27;
  }

  v38 = a2;
  v39 = [a1 rawSceneUnderstandingData];
  if (!v108)
  {
    if (!v39)
    {

      v53 = 0;
      v54 = 1;
      goto LABEL_28;
    }

    v104 = v38;
    v105 = 0;
    v106 = a1;

    v67 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorAttributesCheckTime;
    v68 = v109;
    swift_beginAccess();
    v69 = *(v10 + 16);
    v70 = v110;
    v69(v110, &v68[v67], v9);
    sub_257ECCBC0();
    v72 = v71;
    (*(v10 + 8))(v70, v9);
    if (*&v68[OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_detector])
    {
      LODWORD(v108) = v72 > 1.0;
      swift_weakInit();
      v69(v70, v22, v9);
      v73 = (*(v10 + 80) + 33) & ~*(v10 + 80);
      v74 = (v107 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      *(v75 + 16) = &v114;
      v76 = v106;
      *(v75 + 24) = v106;
      *(v75 + 32) = v108;
      v77 = v70;
      a1 = v76;
      (*(v10 + 32))(v75 + v73, v77, v9);
      *(v75 + v74) = v117;
      v78 = v104;
      v79 = a1;
      sub_257ECC3F0();
      sub_257DEA5C0(v79, v108, a2, 0, sub_257DA9C80, v75, a4, a5);

      v33 = swift_weakDestroy();
      v53 = 0;
      v54 = 1;
      goto LABEL_28;
    }

    v53 = 0;
    goto LABEL_26;
  }

  if (!v39)
  {

LABEL_19:
    v53 = 1;
    v54 = 1;
    goto LABEL_28;
  }

  v104 = v38;
  v105 = 0;
  v106 = a1;

  v40 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorAttributesCheckTime;
  v41 = v109;
  swift_beginAccess();
  v42 = *(v10 + 16);
  v43 = v110;
  v42(v110, &v41[v40], v9);
  sub_257ECCBC0();
  v45 = v44;
  (*(v10 + 8))(v43, v9);
  if (*&v41[OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_detector])
  {
    v103 = v45 > 1.0;
    swift_weakInit();
    v42(v43, v22, v9);
    v46 = (*(v10 + 80) + 33) & ~*(v10 + 80);
    v47 = (v107 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    *(v48 + 16) = &v114;
    v49 = v106;
    *(v48 + 24) = v106;
    *(v48 + 32) = v103;
    v50 = v43;
    a1 = v49;
    (*(v10 + 32))(v48 + v46, v50, v9);
    *(v48 + v47) = v117;
    v51 = v104;
    sub_257ECC3F0();
    v52 = a1;
    sub_257DEA5C0(v52, v103, a2, v108, sub_257DA9BB4, v48, a4, a5);

    v33 = swift_weakDestroy();
    v53 = 1;
    v54 = 1;
    goto LABEL_28;
  }

  v53 = 1;
LABEL_26:
  v54 = 1;
LABEL_27:
  a1 = v106;
LABEL_28:
  v80 = *(v23 + 8);
  v81 = *(v23 + 16);
  v114 = *v23;
  v115 = v80;
  v116 = v81;
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  *&v102[-16] = &v114;

  sub_257ECFD50();

  if ((v53 | v54) == 1 && v113 && (swift_beginAccess(), v117[0]) || (v82 = [a1 rawSceneUnderstandingData]) == 0)
  {
    (*(v10 + 8))(v22, v112);
  }

  else
  {
    v83 = v10;
    v106 = a1;

    v84 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorAttributesCheckTime;
    v85 = v109;
    swift_beginAccess();
    v86 = *(v83 + 16);
    v87 = &v85[v84];
    v88 = v110;
    v89 = v22;
    v90 = v112;
    v86(v110, v87, v112);
    sub_257ECCBC0();
    v92 = v91;
    v93 = *(v83 + 8);
    v93(v88, v90);
    if (*&v85[OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_detector])
    {
      v111 = v93;
      swift_weakInit();
      v86(v88, v89, v90);
      v94 = (*(v83 + 80) + 33) & ~*(v83 + 80);
      v109 = v89;
      v95 = v90;
      v96 = v88;
      v97 = (v107 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      *(v98 + 16) = &v114;
      v99 = v106;
      *(v98 + 24) = v106;
      *(v98 + 32) = v92 > 1.0;
      (*(v83 + 32))(v98 + v94, v96, v95);
      *(v98 + v97) = v117;
      v100 = v99;
      sub_257ECC3F0();
      sub_257DEA5C0(v100, v92 > 1.0, 0, 0, sub_257DA9D54, v98, 0.0, 0.0);

      v111(v109, v95);
      swift_weakDestroy();
    }

    else
    {
      v93(v89, v90);
    }
  }

  swift_beginAccess();
  return v117[0];
}

double sub_257DA8DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t *a9)
{
  v12 = sub_257ECCC80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a1 && *(a1 + 16) && (a7 & 1) != 0)
    {
      v21 = Strong;
      (*(v13 + 16))(v19, a8, v12);
      v22 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorAttributesCheckTime;
      swift_beginAccess();
      (*(v13 + 40))(v21 + v22, v19, v12);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  *a9 = a1;

  return result;
}

uint64_t sub_257DA8F4C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v50 = a2;
  *v51 = a3;
  *&v51[1] = CGRectGetWidth(*&a2) + a2;
  *&v51[2] = a3 + 0.0;
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  *&v51[3] = a2 + 0.0;
  *&v51[4] = CGRectGetHeight(v52) + a3;
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  Width = CGRectGetWidth(v53);
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  *&v51[5] = Width + a2;
  *&v51[6] = CGRectGetHeight(v54) + a3;
  v55.origin.x = a2;
  v55.origin.y = a3;
  v55.size.width = a4;
  v55.size.height = a5;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  *&v51[7] = MidX;
  v51[8] = CGRectGetMidY(v56);
  v13 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_arService);
  v14 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (v15)
  {
    v16 = v15;
    v17 = [a1 camera];
    [v17 transform];
    v46 = v18;

    v19 = [a1 camera];
    [v19 transform];
    v45 = v20;

    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = [a1 raycastQueryFromPoint:0 allowingTarget:2 alignment:{*&v49[v21 * 8 + 32], *&v51[v21], *&v45}];
      v24 = [v16 raycast_];
      sub_257BD2C2C(0, &qword_27F8F90A8, 0x277CE5338);
      v25 = sub_257ECF810();

      if (v25 >> 62)
      {
        result = sub_257ED0210();
        if (result)
        {
LABEL_7:
          if ((v25 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x259C72E20](0, v25);
          }

          else
          {
            if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v27 = *(v25 + 32);
          }

          v28 = v27;

          [v28 worldTransform];
          v48 = v29;
          [v28 worldTransform];
          v47 = v30;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_257BFD06C(0, *(v22 + 2) + 1, 1, v22);
          }

          v32 = *(v22 + 2);
          v31 = *(v22 + 3);
          if (v32 >= v31 >> 1)
          {
            v22 = sub_257BFD06C((v31 > 1), v32 + 1, 1, v22);
          }

          v33 = vsubq_f32(v46, v48);
          v34 = vsubq_f32(v45, v47);
          *(v22 + 2) = v32 + 1;
          *&v22[4 * v32 + 32] = sqrtf(vmulq_f32(v33, v33).f32[0] + COERCE_FLOAT(vmulq_f32(v34, v34).i32[2]));
          goto LABEL_4;
        }
      }

      else
      {
        result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_7;
        }
      }

LABEL_4:
      v21 += 2;
      if (v21 == 10)
      {
        v35 = *(v22 + 2);
        if (!v35)
        {

          v15 = 0;
          break;
        }

        if (v35 <= 7)
        {
          v36 = 0;
          v37 = 0.0;
          goto LABEL_26;
        }

        v36 = v35 & 0x7FFFFFFFFFFFFFF8;
        v39 = v22 + 48;
        v37 = 0.0;
        v40 = v35 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v37 = (((((((v37 + COERCE_FLOAT(*(v39 - 1))) + COERCE_FLOAT(HIDWORD(*(v39 - 2)))) + COERCE_FLOAT(*(v39 - 1))) + COERCE_FLOAT(HIDWORD(*(v39 - 1)))) + COERCE_FLOAT(*v39)) + COERCE_FLOAT(HIDWORD(*v39))) + COERCE_FLOAT(*(v39 + 1))) + COERCE_FLOAT(HIDWORD(*v39));
          v39 += 32;
          v40 -= 8;
        }

        while (v40);
        if (v35 != v36)
        {
LABEL_26:
          v41 = v35 - v36;
          v42 = &v22[4 * v36 + 32];
          do
          {
            v43 = *v42++;
            v37 = v37 + v43;
            --v41;
          }

          while (v41);
        }

        v44 = *(v22 + 2);

        v38 = 0;
        v15 = COERCE_UNSIGNED_INT(v37 / v44);
        return v15 | (v38 << 32);
      }
    }
  }

  v38 = 1;
  return v15 | (v38 << 32);
}

uint64_t MAGDoorDetectionService.deinit()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorCheckTime;
  v2 = sub_257ECCC80();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorAttributesCheckTime, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDetectedDoorTextCheckTime, v2);

  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastSignCheckTime, v2);

  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorDetectionTextDisplayTime, v2);

  return v0;
}

uint64_t MAGDoorDetectionService.__deallocating_deinit()
{
  MAGDoorDetectionService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_257DA955C(char a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v13 = *(v2 + 72);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_257BE3DE0;

  return sub_257DA70FC(a1, a2, v6, v7, v8, v9, v10, v13, v11, v12);
}

uint64_t type metadata accessor for MAGDoorDetectionService(uint64_t a1)
{
  result = qword_27F8F90B0;
  if (!qword_27F8F90B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257DA96A4(uint64_t a1)
{
  result = sub_257ECCC80();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of MAGDoorDetectionService.detectDoorsWithFrame(frame:size:detectDecorations:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v14 = (*(*v4 + 520) + **(*v4 + 520));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_257DA9994;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return v14(a1, a2, v11, v12);
}

uint64_t sub_257DA9994(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_257DA9AE4()
{
  result = qword_27F8F90C0;
  if (!qword_27F8F90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F90C0);
  }

  return result;
}

uint64_t sub_257DA9B38()
{
  v1 = *(sub_257ECCC80() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_257DA7DAC(v2, v3, v4);
}

double block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

double sub_257DA9BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(sub_257ECCC80() - 8);
  v10 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  return sub_257DA8DBC(a1, a2, a3, a4 & 1, *(v4 + 16), *(v4 + 24), *(v4 + 32), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_257ECCC80();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257DA9DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257DA9E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257DA9E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257ED02D0();

  sub_257ED0400();
  MEMORY[0x259C72150](3943982, 0xE300000000000000);
  sub_257ED0400();
  MEMORY[0x259C72150](0, 0xE000000000000000);

  MEMORY[0x259C72150](0x676175676E616C0ALL, 0xEA00000000003D65);
  MEMORY[0x259C72150](a3, a4);
  MEMORY[0x259C72150](10, 0xE100000000000000);
  return 0x3D65676E6172;
}

uint64_t sub_257DA9FB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257ED07B0();
  MEMORY[0x259C73310](v1 >> 14);
  MEMORY[0x259C73310](v2 >> 14);
  sub_257ECF5D0();
  return sub_257ED0800();
}

uint64_t sub_257DAA028(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x259C73310](*v1 >> 14);
  MEMORY[0x259C73310](v2 >> 14);

  return sub_257ECF5D0();
}

uint64_t sub_257DAA090(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_257ED07B0();
  MEMORY[0x259C73310](v2 >> 14);
  MEMORY[0x259C73310](v3 >> 14);
  sub_257ECF5D0();
  return sub_257ED0800();
}

uint64_t sub_257DAA104(void *a1, void *a2)
{
  if ((*a2 ^ *a1) >> 14 || (a1[1] ^ a2[1]) >> 14)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640();
  }
}

unint64_t sub_257DAA164()
{
  result = qword_27F8F90C8;
  if (!qword_27F8F90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F90C8);
  }

  return result;
}

void sub_257DAA1B8(double a1)
{
  [v1 bounds];
  v4 = *&v1[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer];
  [v4 setPosition_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v5 moveToPoint_];
  [v5 addCurveToPoint:15.0 controlPoint1:a1 * 9.0 * 0.5 controlPoint2:{5.0, a1 * 9.0 * -0.5, -5.0, a1 * 9.0 * -0.5}];
  v6 = [v5 CGPath];
  [v4 setPath_];
}

id sub_257DAA2E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronShapeAnimatableProperty;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronWidth] = 0x402E000000000000;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLineWidth] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronDistanceFromTopEdge] = 0xC026000000000000;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronHeightInUpState] = 0x4022000000000000;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_257DAA400();

  return v12;
}

void sub_257DAA400()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer];
  [v1 setAnchorPoint_];
  [v1 setCompositingFilter_];
  v2 = objc_opt_self();
  v3 = [v2 tertiaryLabelColor];
  v4 = [v3 CGColor];

  [v1 setStrokeColor_];
  v5 = [v2 clearColor];
  v6 = [v5 CGColor];

  [v1 setFillColor_];
  [v1 setLineWidth_];
  [v1 setLineCap_];
  [v1 setLineJoin_];
  LODWORD(v7) = 1.0;
  [v1 setOpacity_];
  v8 = [v0 layer];
  [v8 addSublayer_];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257ED9BF0;
  v11 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronShapeAnimatableProperty];
  *(v10 + 32) = v11;
  sub_257DAA96C();
  v12 = v11;
  v13 = sub_257ECF7F0();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_257DAA9B8;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_257D231C0;
  v16[3] = &block_descriptor_44;
  v15 = _Block_copy(v16);

  [v9 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v15);
}

void sub_257DAA6FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronShapeAnimatableProperty) presentationValue];
    sub_257DAA1B8(v3);
  }
}

void sub_257DAA884()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronShapeAnimatableProperty;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronWidth) = 0x402E000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLineWidth) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronDistanceFromTopEdge) = 0xC026000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronHeightInUpState) = 0x4022000000000000;
  sub_257ED0410();
  __break(1u);
}

unint64_t sub_257DAA96C()
{
  result = qword_281543E90;
  if (!qword_281543E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543E90);
  }

  return result;
}

double block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

id MAGCaptureService.__allocating_init(captureSession:eventHandler:)(void *a1, uint64_t a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = xmmword_281548330;
  v6 = qword_281548340;
  v7 = qword_281548348;
  v8 = qword_281548350;
  v9 = qword_281548358;
  objc_allocWithZone(type metadata accessor for MAGCaptureService(0));
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  return MAGCaptureService.init(captureSession:eventHandler:environment:)(a1, a2, &v5);
}

uint64_t sub_257DAAAD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

double sub_257DAAB4C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID + 8];
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v0;
  sub_257ECDD60();

  if (!v12)
  {
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = [v12 uniqueID];

  v6 = sub_257ECF500();
  v8 = v7;

  if (!v2)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v8)
  {
LABEL_10:

LABEL_11:
    if ([*&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning])
    {
      v10 = swift_allocObject();
      *(v10 + 16) = sub_257DB8298;
      *(v10 + 24) = v1;
      sub_257ECC3F0();
      sub_257DB0FF4(sub_257DB82A0, v10);
    }

    else
    {
      sub_257DAAD48(v4);
    }

    goto LABEL_14;
  }

  if (v3 == v6 && v2 == v8)
  {

    return result;
  }

  v11 = sub_257ED0640();

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:

  return result;
}

void sub_257DAAD48(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v1 = v5;
  if (v5)
  {
    v2 = [v5 uniqueID];

    v3 = sub_257ECF500();
    v1 = v4;
  }

  else
  {
    v3 = 0;
  }

  sub_257DB69CC(v3, v1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5)
  {

    sub_257DB05D0(0, 0);
  }
}

uint64_t sub_257DAAE70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t type metadata accessor for MAGCaptureService(uint64_t a1)
{
  result = qword_27F8F91C8;
  if (!qword_27F8F91C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MAGCaptureService.init(captureSession:eventHandler:environment:)(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v72 = a1;
  v73 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9108, &qword_257EE9210);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v69 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9110, &qword_257EE9218);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v66 = v61 - v17;
  v18 = sub_257ECFD20();
  v19 = *(v18 - 8);
  v74 = v18;
  v75 = v19;
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v31 = sub_257ECF190();
  MEMORY[0x28223BE20](v31 - 8, v32, v33, v34, v35);
  v62 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_dataOutputQueue;
  v61[4] = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v77 = MEMORY[0x277D84F90];
  v61[2] = sub_257DB7C60(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  v61[3] = "/MFChevronView.swift";
  v36 = *a3;
  v64 = a3[1];
  v65 = v36;
  v63 = a3[2];
  sub_257ED0180();
  v37 = *MEMORY[0x277D85260];
  v38 = *(v75 + 104);
  v75 += 104;
  v38(v25, v37, v74);
  *&v3[v62] = sub_257ECFD80();
  v62 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue;
  sub_257ECF150();
  v77 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v38(v25, v37, v74);
  *&v3[v62] = sub_257ECFD80();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_subscribers] = MEMORY[0x277D84FA0];
  v39 = &v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionRuntimeErrorSubscription];
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *(v39 + 4) = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCapturingPhoto] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCaptureStayingLive] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput] = 0;
  v40 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService__availableCaptureDevices;
  v41 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9168, &unk_257EF1C80);
  v42 = v66;
  sub_257ECDD20();
  (*(v67 + 32))(&v4[v40], v42, v68);
  v43 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService__captureDevice;
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9178, &qword_257EE9220);
  v44 = v69;
  sub_257ECDD20();
  (*(v70 + 32))(&v4[v43], v44, v71);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice] = 0;
  v45 = &v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureDeviceID];
  *v45 = 0;
  *(v45 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors] = v41;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_liveLensDisplayAppearanceSubscription] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_liveLensSelectedFiltersSubscription] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_contrastSliderControl] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_brightnessSliderControl] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_filterPickerControl] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_controls] = v41;
  v46 = &v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_environment];
  v47 = v64;
  *v46 = v65;
  *(v46 + 1) = v47;
  *(v46 + 2) = v63;
  v48 = v72;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] = v72;
  Strong = swift_unknownObjectWeakLoadStrong();
  v50 = v48;
  if (Strong)
  {
    [Strong setSessionWithNoConnection_];
  }

  AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_eventHandler] = v73;
  v51 = type metadata accessor for MAGCaptureService(0);
  v76.receiver = v4;
  v76.super_class = v51;
  sub_257ECC3F0();
  v52 = objc_msgSendSuper2(&v76, sel_init);
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 defaultCenter];
  [v55 addObserver:v54 selector:sel_sessionRuntimeErrorWithNotification_ name:*MEMORY[0x277CE59C0] object:v50];

  v56 = [v53 defaultCenter];
  [v56 addObserver:v54 selector:sel_sessionWasInterruptedWithNotification_ name:*MEMORY[0x277CE59C8] object:v50];

  v57 = [v53 defaultCenter];
  [v57 addObserver:v54 selector:sel_sessionInterruptionEndedWithNotification_ name:*MEMORY[0x277CE5948] object:v50];

  v58 = [v53 defaultCenter];
  [v58 addObserver:v54 selector:sel_wasConnectedNotificationWithNotification_ name:*MEMORY[0x277CE5898] object:0];

  v59 = [v53 defaultCenter];
  [v59 addObserver:v54 selector:sel_wasDisconnectedNotificationWithNotification_ name:*MEMORY[0x277CE58A0] object:0];

  sub_257DB1770();

  return v54;
}

void sub_257DAB7BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_257ECF4C0();
    v4 = objc_opt_self();
    v5 = [v4 deviceWithUniqueID_];

    if (v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v6 = v5;
      v7 = v2;
      sub_257ECDD70();
      [v4 setUserPreferredCamera_];
    }
  }
}

uint64_t sub_257DAB89C()
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v71 - v21;
  v23 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  if (!v23)
  {
    return 0;
  }

  v72.value = 0;
  v24 = v23;
  if (![v24 lockForConfiguration_])
  {
    v39 = v72.value;
    v40 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v41 = sub_257ECDA20();
    v42 = sub_257ECFBE0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_257BAC000, v41, v42, "Could not lock the device for configuration", v43, 2u);
      MEMORY[0x259C74820](v43, -1, -1);
    }

    (*(v2 + 8))(v22, v1);
    return 0;
  }

  v25 = v72.value;
  v26 = [v24 deviceType];
  v27 = sub_257ECF500();
  v29 = v28;
  if (v27 == sub_257ECF500() && v29 == v30)
  {

LABEL_17:
    v44 = v0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v46 = Strong;
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();

      if (v47)
      {
        [v24 setPrimaryConstituentDeviceSwitchingBehavior:1 restrictedSwitchingBehaviorConditions:0];
      }
    }

    if (sub_257CA9238())
    {
      v48 = [v24 activeFormat];
      v49 = [v48 isSpatialOverCaptureSupported];

      if (v49)
      {
        [v24 setSpatialOverCaptureEnabled_];
      }
    }

    goto LABEL_34;
  }

  v32 = sub_257ED0640();

  if (v32)
  {
    goto LABEL_17;
  }

  v33 = [v24 deviceType];
  v34 = sub_257ECF500();
  v36 = v35;
  if (v34 == sub_257ECF500() && v36 == v37)
  {
  }

  else
  {
    v50 = sub_257ED0640();

    if ((v50 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if ([v24 position] == 2)
  {
    v72.value = 0;
    if ([v24 lockForConfiguration_])
    {
      v44 = v0;
      v51 = v72.value;
LABEL_33:
      CMTimeMake(&v72, 1, 30);
      [v24 setActiveVideoMinFrameDuration_];
      CMTimeMake(&v72, 1, 30);
      [v24 setActiveVideoMaxFrameDuration_];
      goto LABEL_34;
    }

    v66 = v72.value;
    v67 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v68 = sub_257ECDA20();
    v69 = sub_257ECFBE0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_257BAC000, v68, v69, "Could not lock the device for configuration", v70, 2u);
      MEMORY[0x259C74820](v70, -1, -1);
    }

    (*(v2 + 8))(v15, v1);
    return 0;
  }

LABEL_27:
  v44 = v0;
  v52 = [v24 deviceType];
  v53 = sub_257ECF500();
  v55 = v54;
  if (v53 == sub_257ECF500() && v55 == v56)
  {

LABEL_31:
    v72.value = 0;
    if ([v24 lockForConfiguration_])
    {
      v58 = v72.value;
      goto LABEL_33;
    }

    v61 = v72.value;
    v62 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v63 = sub_257ECDA20();
    v64 = sub_257ECFBE0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_257BAC000, v63, v64, "Could not lock the device for configuration", v65, 2u);
      MEMORY[0x259C74820](v65, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
    return 0;
  }

  v57 = sub_257ED0640();

  if (v57)
  {
    goto LABEL_31;
  }

LABEL_34:
  sub_257D33C60(1);
  v59 = [v24 virtualDeviceSwitchOverVideoZoomFactors];
  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  v60 = sub_257ECF810();

  *(v44 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors) = v60;

  [v24 unlockForConfiguration];

  return 1;
}

uint64_t sub_257DAC004(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v256 = *MEMORY[0x277D85DE8];
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16, v17, v18, v19);
  v249 = &v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_257ECDA30();
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v27 = &v228 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  MEMORY[0x28223BE20](v39, v40, v41, v42, &v228 - v38);
  MEMORY[0x28223BE20](v44, v45, v46, &v228 - v43, v47);
  MEMORY[0x28223BE20](v49, v50, &v228 - v48, v51, v52);
  MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
  MEMORY[0x28223BE20](v59, &v228 - v58, v60, v61, v62);
  MEMORY[0x28223BE20](v63, v64, v65, v66, v67);
  v78 = &v228 - v77;
  v79 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice];
  if (!v79)
  {
    return 0;
  }

  v247 = v73;
  v246 = v72;
  v245 = v71;
  v244 = v70;
  v233 = v69;
  v242 = v76;
  v232 = v75;
  v243 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice;
  v236 = v15;
  v237 = v13;
  v238 = v14;
  v239 = v7;
  v240 = v6;
  v234 = a2;
  v241 = a1;
  v250 = v68;
  v251 = v74;
  v235 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession;
  v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isConfiguringSession] = 1;
  v80 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  v81 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession];
  v82 = v79;
  [v81 beginConfiguration];
  v83 = &selRef_rate;
  v84 = [*&v3[v80] inputs];
  sub_257BD2C2C(0, &qword_27F8F9310, 0x277CE5AF0);
  v85 = sub_257ECF810();

  if (v85 >> 62)
  {
    v86 = sub_257ED0210();
  }

  else
  {
    v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v86)
  {
    v248 = v27;
    v87 = [*&v3[v80] inputs];
    v88 = sub_257ECF810();

    if (v88 >> 62)
    {
      v89 = sub_257ED0210();
      if (v89)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v89)
      {
LABEL_7:
        if (v89 < 1)
        {
          __break(1u);
          goto LABEL_44;
        }

        for (i = 0; i != v89; ++i)
        {
          if ((v88 & 0xC000000000000001) != 0)
          {
            v91 = MEMORY[0x259C72E20](i, v88);
          }

          else
          {
            v91 = *(v88 + 8 * i + 32);
          }

          v92 = v91;
          [*&v3[v80] removeInput_];
        }
      }
    }

    v27 = v248;
  }

  AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
  v93 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
  aBlock[0] = 0;
  v89 = v82;
  v94 = [v93 initWithDevice:v89 error:aBlock];
  v95 = aBlock[0];
  if (!v94)
  {
    v112 = v95;
    v113 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v114 = sub_257ECDA20();
    v115 = sub_257ECFBE0();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_257BAC000, v114, v115, "Could not create camera device input", v116, 2u);
      MEMORY[0x259C74820](v116, -1, -1);
    }

    else
    {
    }

    v251[1](v78, v250);
    return 0;
  }

  v96 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput;
  v97 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraDeviceInput] = v94;
  v98 = v94;

  if (([*&v3[v80] canAddInput_] & 1) == 0)
  {

    sub_257ECD430();
    v117 = sub_257ECDA20();
    v118 = sub_257ECFBE0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_257BAC000, v117, v118, "Could not add camera device input", v119, 2u);
      MEMORY[0x259C74820](v119, -1, -1);
    }

    else
    {
    }

    v251[1](v27, v250);
    return 0;
  }

  [*&v3[v80] addInputWithNoConnections_];

  v99 = *&v3[v96];
  if (!v99)
  {
    goto LABEL_46;
  }

  v100 = *MEMORY[0x277CE5EA8];
  a1 = v99;
  v101 = [v89 deviceType];
  v102 = [a1 portsWithMediaType:v100 sourceDeviceType:v101 sourceDevicePosition:{objc_msgSend(v89, sel_position)}];

  v83 = sub_257BD2C2C(0, &unk_281543F00, 0x277CE5AF8);
  v78 = sub_257ECF810();

  if (!(v78 >> 62))
  {
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  if (!sub_257ED0210())
  {
LABEL_45:

LABEL_46:
    v120 = v247;
    sub_257ECD430();
    v121 = sub_257ECDA20();
    v122 = sub_257ECFBE0();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_257BAC000, v121, v122, "Could not find camera device input's video port", v123, 2u);
      MEMORY[0x259C74820](v123, -1, -1);
    }

    else
    {
    }

    v251[1](v120, v250);
    return 0;
  }

LABEL_21:
  v231 = a1;
  if ((v78 & 0xC000000000000001) != 0)
  {
    v103 = MEMORY[0x259C72E20](0, v78);
  }

  else
  {
    if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_53;
    }

    v103 = *(v78 + 32);
  }

  a1 = v103;

  v104 = [*&v3[v80] outputs];
  sub_257BD2C2C(0, &qword_27F8F9318, 0x277CE5B18);
  v105 = sub_257ECF810();

  if (v105 >> 62)
  {
    v106 = sub_257ED0210();
  }

  else
  {
    v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v248 = v89;

  if (v106)
  {
    v107 = [*&v3[v80] outputs];
    v78 = sub_257ECF810();

    if (!(v78 >> 62))
    {
      v108 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v108)
      {
LABEL_29:
        if (v108 < 1)
        {
          __break(1u);
        }

        for (j = 0; j != v108; ++j)
        {
          if ((v78 & 0xC000000000000001) != 0)
          {
            v110 = MEMORY[0x259C72E20](j, v78);
          }

          else
          {
            v110 = *(v78 + 8 * j + 32);
          }

          v111 = v110;
          [*&v3[v80] removeOutput_];
        }
      }

LABEL_54:

      goto LABEL_55;
    }

LABEL_53:
    v108 = sub_257ED0210();
    if (v108)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_55:
  v247 = v83;
  v124 = [objc_allocWithZone(MEMORY[0x277CE5B28]) init];
  [v124 setLivePhotoCaptureEnabled_];
  [v124 setDepthDataDeliveryEnabled_];
  [v124 setPortraitEffectsMatteDeliveryEnabled_];
  [v124 setMaxPhotoQualityPrioritization_];
  [v124 setPrivatePhotoDimensionsEnabled_];
  type metadata accessor for MatteType(0);
  v125 = sub_257ECF7F0();
  [v124 setEnabledSemanticSegmentationMatteTypes_];

  v126 = *&v3[v80];
  v127 = v124;
  if (![v126 canAddOutput_])
  {

    v161 = v246;
    sub_257ECD430();
    v162 = sub_257ECDA20();
    v163 = sub_257ECFBE0();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&dword_257BAC000, v162, v163, "Could not add camera photo output", v164, 2u);
      MEMORY[0x259C74820](v164, -1, -1);

LABEL_70:
      v168 = &v254;
LABEL_76:

LABEL_77:
      v251[1](v161, v250);
      return 0;
    }

    goto LABEL_75;
  }

  [*&v3[v80] addOutputWithNoConnections_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v128 = swift_allocObject();
  v230 = xmmword_257ED9BF0;
  *(v128 + 16) = xmmword_257ED9BF0;
  *(v128 + 32) = a1;
  v129 = objc_allocWithZone(MEMORY[0x277CE5AB0]);
  v246 = a1;
  v130 = sub_257ECF7F0();

  v131 = [v129 initWithInputPorts:v130 output:v127];

  if (![*&v3[v80] canAddConnection_])
  {
    v161 = v245;
    sub_257ECD430();
    v165 = sub_257ECDA20();
    v166 = sub_257ECFBE0();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&dword_257BAC000, v165, v166, "Could not add a connection to camera photo output", v167, 2u);
      MEMORY[0x259C74820](v167, -1, -1);

LABEL_69:
      goto LABEL_70;
    }

LABEL_75:
    v168 = &v255;
    goto LABEL_76;
  }

  v245 = v127;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v131 setVideoMirrored_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v132 = *&v3[v80];
  v229 = v131;
  [v132 addConnection_];
  v133 = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
  [v133 setAutomaticallyConfiguresOutputBufferDimensions_];
  [v133 setDeliversPreviewSizedOutputBuffers_];
  v134 = *&v3[v80];
  v135 = v133;
  if (![v134 canAddOutput_])
  {

    v169 = v244;
    sub_257ECD430();
    v170 = sub_257ECDA20();
    v171 = sub_257ECFBE0();
    v172 = os_log_type_enabled(v170, v171);
    v173 = v248;
    if (v172)
    {
      v174 = swift_slowAlloc();
      *v174 = 0;
      _os_log_impl(&dword_257BAC000, v170, v171, "Could not add camera video data output", v174, 2u);
      MEMORY[0x259C74820](v174, -1, -1);
    }

    else
    {
    }

    v251[1](v169, v250);
    return 0;
  }

  [*&v3[v80] addOutputWithNoConnections_];
  [v135 setAutomaticallyConfiguresOutputBufferDimensions_];
  [v135 setDeliversPreviewSizedOutputBuffers_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620, &unk_257EDCD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  *(inited + 32) = sub_257ECF500();
  v137 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v138;
  *(inited + 48) = 1111970369;
  *(inited + 80) = sub_257ECF500();
  *(inited + 88) = v139;
  *(inited + 120) = v137;
  *(inited + 96) = 90;
  *(inited + 128) = sub_257ECF500();
  *(inited + 136) = v140;
  *(inited + 168) = v137;
  *(inited + 144) = 90;
  sub_257BE9040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8, &qword_257EDA540);
  swift_arrayDestroy();
  v141 = sub_257ECF3C0();

  [v135 setVideoSettings_];

  [v135 setSampleBufferDelegate:v3 queue:*&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_dataOutputQueue]];
  v142 = swift_allocObject();
  *(v142 + 16) = v230;
  v143 = v246;
  *(v142 + 32) = v246;
  v144 = objc_allocWithZone(MEMORY[0x277CE5AB0]);
  v145 = v143;
  v146 = sub_257ECF7F0();

  v147 = [v144 initWithInputPorts:v146 output:v135];

  v148 = [*&v3[v80] canAddConnection_];
  v149 = v248;
  if (!v148)
  {
    v176 = v242;
    sub_257ECD430();
    v177 = sub_257ECDA20();
    v178 = sub_257ECFBE0();
    v179 = os_log_type_enabled(v177, v178);
    v180 = v231;
    v181 = v245;
    if (v179)
    {
      v182 = v147;
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_257BAC000, v177, v178, "Could not add a connection to the camera video data output", v183, 2u);
      MEMORY[0x259C74820](v183, -1, -1);
    }

    else
    {
    }

    v251[1](v176, v250);
    return 0;
  }

  [*&v3[v80] addConnection_];
  v150 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput] = v135;
  v151 = v135;

  Strong = swift_unknownObjectWeakLoadStrong();
  v153 = v245;
  v246 = v145;
  v247 = v147;
  if (Strong)
  {
    v154 = Strong;
    [Strong setSessionWithNoConnection_];
    v131 = [objc_allocWithZone(MEMORY[0x277CE5AB0]) initWithInputPort:v145 videoPreviewLayer:v154];
    if ([*&v3[v80] canAddConnection_])
    {
      v244 = v151;
      [*&v3[v80] addConnection_];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v155 = aBlock[0];
      if (aBlock[0])
      {
        v156 = [aBlock[0] deviceType];

        v157 = sub_257ECF500();
        v159 = v158;
        if (v157 == sub_257ECF500() && v159 == v160)
        {

          v153 = v245;
LABEL_92:
          v193 = [v154 connection];
          [v193 setAutomaticallyAdjustsVideoMirroring_];

          v194 = [v154 connection];
          [v194 setVideoMirrored_];

          goto LABEL_94;
        }

        v192 = sub_257ED0640();

        v153 = v245;
        if (v192)
        {
          goto LABEL_92;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      goto LABEL_94;
    }

    v161 = v232;
    sub_257ECD430();
    v188 = sub_257ECDA20();
    v189 = sub_257ECFBE0();
    if (!os_log_type_enabled(v188, v189))
    {

      goto LABEL_77;
    }

    v190 = v151;
    v191 = swift_slowAlloc();
    *v191 = 0;
    _os_log_impl(&dword_257BAC000, v188, v189, "Could not add a connection to the camera video preview layer", v191, 2u);
    MEMORY[0x259C74820](v191, -1, -1);

    goto LABEL_69;
  }

  v244 = v151;
  v184 = v233;
  sub_257ECD430();
  v185 = sub_257ECDA20();
  v186 = sub_257ECFBE0();
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    *v187 = 0;
    _os_log_impl(&dword_257BAC000, v185, v186, "No camera video preview layer", v187, 2u);
    MEMORY[0x259C74820](v187, -1, -1);
  }

  v251[1](v184, v250);
LABEL_94:
  [*&v3[v80] setSessionPreset_];
  v195 = *&v3[v243];
  if (v195)
  {
    v196 = swift_unknownObjectWeakLoadStrong();
    v197 = objc_allocWithZone(MEMORY[0x277CE5AE0]);
    v198 = v195;
    v199 = [v197 initWithDevice:v198 previewLayer:v196];

    v200 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator];
    *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator] = v199;
    v201 = v199;

    if (v201)
    {
      [v201 videoRotationAngleForHorizonLevelPreview];
      v203 = v202;

      [v229 setVideoRotationAngle_];
      [v247 setVideoRotationAngle_];
    }

    v204 = *&v3[v243];
    if (v204)
    {
      v205 = v204;
      v206 = [v205 activeFormat];
      v207 = [v206 supportedMaxPhotoDimensionsPrivate];

      sub_257BD2C2C(0, &qword_27F8F93A0, 0x277CCAE60);
      v208 = sub_257ECF810();

      if (v208 >> 62)
      {
        v209 = sub_257ED0210();
      }

      else
      {
        v209 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v209)
      {
        v251 = v205;
        aBlock[0] = MEMORY[0x277D84F90];
        result = sub_257BF29E4(0, v209 & ~(v209 >> 63), 0);
        if (v209 < 0)
        {
          __break(1u);
          return result;
        }

        v210 = 0;
        v211 = aBlock[0];
        do
        {
          if ((v208 & 0xC000000000000001) != 0)
          {
            v212 = MEMORY[0x259C72E20](v210, v208);
          }

          else
          {
            v212 = *(v208 + 8 * v210 + 32);
          }

          v213 = v212;
          v214 = [v212 CMVideoDimensionsValue];

          aBlock[0] = v211;
          v216 = v211[2];
          v215 = v211[3];
          if (v216 >= v215 >> 1)
          {
            sub_257BF29E4((v215 > 1), v216 + 1, 1);
            v211 = aBlock[0];
          }

          ++v210;
          v211[2] = v216 + 1;
          v211[v216 + 4] = v214;
        }

        while (v209 != v210);

        v149 = v248;
        v153 = v245;
        v205 = v251;
      }

      else
      {

        v211 = MEMORY[0x277D84F90];
      }

      v217 = v211[2];
      if (v217)
      {
        v218 = v211[v217 + 3];

        [v153 setMaxPhotoDimensions_];
      }

      else
      {
      }
    }
  }

  v219 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput] = v153;
  v220 = v153;

  [*&v3[v80] commitConfiguration];
  v3[v235] = 0;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v221 = sub_257ECFD30();
  v222 = swift_allocObject();
  *(v222 + 16) = v3;
  aBlock[4] = sub_257DB80C8;
  v253 = v222;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_283;
  v223 = _Block_copy(aBlock);
  v224 = v3;

  v225 = v249;
  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257DB7C60(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  v226 = v237;
  v227 = v240;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v225, v226, v223);
  _Block_release(v223);

  (*(v239 + 8))(v226, v227);
  (*(v236 + 8))(v225, v238);
  if (v241)
  {
    v241(1);
  }

  return 1;
}