void sub_257CA3A1C()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control] - 5 <= 1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction] = v1;
    v3 = v1;

    if (v3)
    {
      [v0 addInteraction_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257CA3B08()
{
  v1 = v0;
  v2 = sub_257CA0E28();
  [v2 setIsAccessibilityElement_];

  v3 = sub_257CA150C();
  [v3 setIsAccessibilityElement_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton;
  v5 = *&v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton];
  sub_257D14A40(v5);
  v6 = sub_257ECF4C0();

  [v5 setAccessibilityLabel_];

  v7 = *&v1[v4];
  Control.rawValue.getter();
  v8 = v1;
  v9 = v7;
  v10 = sub_257ECF4C0();

  [v9 setAccessibilityIdentifier_];

  v11 = *&v8[v4];
  v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (v8[v12])
  {
    v13 = v11;
    v14 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();
    v13 = v11;
    v17 = [v16 bundleForClass_];
    v18 = sub_257ECF4C0();
    v19 = sub_257ECF4C0();
    v14 = [v17 localizedStringForKey:v18 value:0 table:v19];

    if (!v14)
    {
      sub_257ECF500();
      v14 = sub_257ECF4C0();
    }
  }

  [v13 setAccessibilityHint_];

  v20 = *MEMORY[0x277D765A0];
  v21 = *&v8[v4];
  [v21 setAccessibilityTraits_];

  [v8 setAccessibilityTraits_];
  sub_257C9FD54();
}

void sub_257CA3DC8()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - v6 - v15 - v16;
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = v6;
    v25.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v25);
    v20 = sub_257CA0E28();
    v21 = [objc_opt_self() systemFontOfSize_];
    [v20 setFont_];
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v22 = sub_257CA150C();
  [v22 setFrame_];

  v23 = sub_257CA0E28();
  [v23 setFrame_];
}

uint64_t sub_257CA4070(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v8 = sub_257ECF120();
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_257ECF190();
  v15 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v16, v17, v18, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v23 = sub_257ECFD30();
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v22;
  aBlock[4] = a4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = v28;
  v25 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v21, v14, v25);
  _Block_release(v25);

  (*(v30 + 8))(v14, v8);
  return (*(v15 + 8))(v21, v29);
}

void sub_257CA4338(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn;
    v6 = Strong[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    Strong[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = a2 & 1;
    if (v6 != (a2 & 1))
    {
      [Strong sendActionsForControlEvents_];
      v7 = v4[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
      v4[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = v4[v5];
      sub_257CA0708(v7);
      sub_257C9FD54();
    }
  }
}

void sub_257CA43E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v5)
    {
      v4 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v5 && v5 == 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = sub_257ED0640();
      }
    }

    v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] = v4 & 1;
    sub_257CA1814();
    sub_257C9FD54();
  }
}

void sub_257CA45A0()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control];
  v3 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v2 == 6)
  {
    if (Strong)
    {
      v5 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 16))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v11 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    if (v1[v11] != 1 || (v7 & 1) != 0)
    {
      if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
      {
        return;
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
LABEL_19:
      v15 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn;
      v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] & 1) == 0;
      [v1 sendActionsForControlEvents_];
      v16 = v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
      v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = v1[v15];
      sub_257CA0708(v16);
      sub_257C9FD54();
      return;
    }
  }

  else
  {
    if (Strong)
    {
      v8 = *(v3 + 1);
      v9 = swift_getObjectType();
      v10 = (*(v8 + 16))(v9, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    if (v1[v12] != 1 || (v10 & 1) != 0)
    {
      if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
      {
        return;
      }

      goto LABEL_19;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v3 + 1);
    v14 = swift_getObjectType();
    (*(v13 + 8))(v1, &off_28690A770, v14, v13);
    swift_unknownObjectRelease();
  }
}

void sub_257CA4818()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (v0[v1] == 1 && (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn;
    v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] & 1) == 0;
    [v0 sendActionsForControlEvents_];
    v6 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
    v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = v0[v5];
    sub_257CA0708(v6);
    sub_257C9FD54();
  }

  else
  {
    v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v0, &off_28690A770, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_257CA4938(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
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

  a4(v9);

  return sub_257BE4084(v9, &unk_27F8F62F0, &unk_257ED9D30);
}

id sub_257CA49C8()
{
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_257D53928();
  v3 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control;
  v4 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control], v2);

  if (v4)
  {
    v8 = v0[v3];
    sub_257D56A50(&v8);
    v7 = v0;
    v5 = &v7;
  }

  else
  {
    v9.receiver = v0;
    v5 = &v9;
  }

  v5->super_class = ObjectType;
  return [(objc_super *)v5 removeFromSuperview];
}

uint64_t sub_257CA4C3C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_257CA4C84(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_257CA16B8(v2);
  return sub_257CA4CF4;
}

void sub_257CA4CF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_257CA4D74(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257C9FD54();

  return swift_unknownObjectRelease();
}

uint64_t sub_257CA4DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257CA150C();
  return v0;
}

double sub_257CA4ED8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) & 1) == 0)
  {
    v2 = sub_257CA0E28();
  }

  else
  {
    v2 = sub_257CA150C();
  }

  v3 = v2;
  [v2 accessibilityActivationPoint];
  v5 = v4;

  return v5;
}

uint64_t sub_257CA4FE8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

BOOL sub_257CA5218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      swift_getObjectType();
      v6 = *(v5 + 8);
      v7 = v3;
      v6();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v3 != 0;
}

void sub_257CA5454(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction;
  v13 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (v13)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v14 = v13;
    v15 = a1;
    v16 = sub_257ECFF50();

    if (v16)
    {
      v17 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
      swift_beginAccess();
      v18 = v2[v17];
      sub_257ECD350();
      v19 = v2;
      v20 = sub_257ECDA20();
      v21 = sub_257ECFBD0();
      if (os_log_type_enabled(v20, v21))
      {
        v31 = v19;
        v22 = v18 ^ 1;
        v23 = swift_slowAlloc();
        v30 = v18;
        v24 = v23;
        *v23 = 67109632;
        *(v23 + 4) = v22;
        v19 = v31;
        *(v23 + 8) = 1024;
        *(v23 + 10) = v2[v17];
        *(v23 + 14) = 1024;
        *(v23 + 16) = *(&v19->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v20, v21, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v24, 0x14u);
        v25 = v24;
        v18 = v30;
        MEMORY[0x259C74820](v25, -1, -1);
      }

      else
      {

        v20 = v19;
      }

      (*(v5 + 8))(v11, v4);
      if (v18)
      {
        v26 = *&v2[v12];
        if (v26)
        {
          [v26 cancelInteraction];
          v27 = *&v2[v12];
          if (v27)
          {
            v28 = v27;
            sub_257CA62DC(1);

            if (*&v2[v12])
            {
              [v19 removeInteraction:?];
              sub_257CA3A1C();
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_257CA5740(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v31 - v17;
  v19 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction;
  v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (v20)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v21 = v20;
    v22 = a1;
    v23 = sub_257ECFF50();

    if (v23)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v27 = sub_257ECDA20();
        v30 = sub_257ECFBD0();
        if (!os_log_type_enabled(v27, v30))
        {
          goto LABEL_15;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_257BAC000, v27, v30, "will present", v29, 2u);
        goto LABEL_12;
      }

      v24 = *&v2[v19];
      if (v24)
      {
        [v24 cancelInteraction];
        v25 = *&v2[v19];
        if (v25)
        {
          v26 = v25;
          sub_257CA62DC(1);

          if (*&v2[v19])
          {
            [v2 removeInteraction_];
            sub_257CA3A1C();
            sub_257ECD350();
            v27 = sub_257ECDA20();
            v28 = sub_257ECFBD0();
            if (!os_log_type_enabled(v27, v28))
            {
              v18 = v11;
              goto LABEL_15;
            }

            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_257BAC000, v27, v28, "will not present", v29, 2u);
            v18 = v11;
LABEL_12:
            MEMORY[0x259C74820](v29, -1, -1);
LABEL_15:

            (*(v5 + 8))(v18, v4);
            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

id sub_257CA5AC8(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *&v4[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (!v14)
  {
    return 0;
  }

  sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
  v15 = v14;
  v16 = a1;
  v17 = sub_257ECFF50();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_257ECD350();
  v18 = v4;
  v19 = sub_257ECDA20();
  v20 = sub_257ECFBD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315650;
    v23 = sub_257ECFEC0();
    v25 = sub_257BF1FC8(v23, v24, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 1024;
    v26 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    LODWORD(v26) = v18[v26];

    *(v21 + 14) = v26;
    *(v21 + 18) = 1024;
    v27 = v18[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed];

    *(v21 + 20) = v27;
    _os_log_impl(&dword_257BAC000, v19, v20, "location: %s, expanded: %{BOOL}d, dimmed: %{BOOL}d", v21, 0x18u);
    v28 = __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x259C74820](v22, -1, -1, v28);
    MEMORY[0x259C74820](v21, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v13, v6);
  return [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
}

void sub_257CA5DFC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257CA5E7C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257CA5F10()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_peopleDetectionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_doorDetectionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_imageCaptionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_pointSpeakGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_textDetectionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_focusLockGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_freezeFrameReviewSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CA6044(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (v12)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      sub_257ECD350();
      v16 = v2;
      v17 = sub_257ECDA20();
      v18 = sub_257ECFBD0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109376;
        v20 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
        swift_beginAccess();
        *(v19 + 4) = *(&v16->isa + v20);
        *(v19 + 8) = 1024;
        *(v19 + 10) = *(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v17, v18, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v19, 0xEu);
        MEMORY[0x259C74820](v19, -1, -1);
      }

      else
      {

        v17 = v16;
      }

      (*(v5 + 8))(v11, v4);
      if (*(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) != 1 || (v21 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded, swift_beginAccess(), *(&v16->isa + v21) == 1))
      {
        v22 = v16 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v22 + 1);
          ObjectType = swift_getObjectType();
          (*(v23 + 8))(v16, &off_28690A770, ObjectType, v23);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

uint64_t sub_257CA62DC(char a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v11 = v1;
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109632;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    v15 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    *(v14 + 10) = *(&v11->isa + v15);
    *(v14 + 14) = 1024;
    *(v14 + 16) = *(&v11->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v12, v13, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v14, 0x14u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_257CA64A0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_257BD2C2C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257CA6764(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640, &unk_257EDAB50);
  result = sub_257ED02B0();
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
    sub_257ED07B0();

    sub_257ECF5D0();
    result = sub_257ED0800();
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

uint64_t sub_257CA6988(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Occupant(0);
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6580, &qword_257EDCD00);
  result = sub_257ED02B0();
  v14 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 56;
  v19 = v35;
  v34 = a4;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_16:
    v23 = *(a4 + 48);
    v24 = *(v36 + 72);
    sub_257CA80C0(v23 + v24 * (v20 | (v17 << 6)), v19);
    sub_257ED07B0();
    sub_257ECCCF0();
    sub_257CA8180();
    sub_257ECF400();
    result = sub_257ED0800();
    v25 = -1 << *(v14 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      v19 = v35;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v18 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v19 = v35;
LABEL_26:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_257C587D8(v19, *(v14 + 48) + v28 * v24);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    if (!a3)
    {
LABEL_28:

      return v14;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      goto LABEL_28;
    }

    v22 = a1[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v16 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_257CA6C50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6540, &qword_257EDCCB8);
  result = sub_257ED02B0();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_257ECFF40();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_257CA6E44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6548, &qword_257EDCCC0);
  result = sub_257ED02B0();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    result = MEMORY[0x259C732B0](*(v9 + 40), v16, 4);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

void *sub_257CA7034(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_257CA72B4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_257CA70C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v33 = a4;
  v29 = a2;
  v30 = a1;
  v6 = type metadata accessor for Occupant(0);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v13 = 0;
  v34 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_11:
    v24 = v21 | (v13 << 6);
    sub_257CA80C0(*(v34 + 48) + *(v32 + 72) * v24, v12);
    v25 = v33(v12);
    sub_257CA8124(v12);
    if (v4)
    {
      return;
    }

    if (v25)
    {
      *(v30 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v34;
        sub_257ECC3F0();
        sub_257CA6988(v30, v29, v31, v27);
        return;
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_257CA72B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:
        sub_257ECC3F0();
        sub_257CA6C50(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_257CA7420(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = v3;
    if (!v3)
    {
      return v3;
    }

    --v3;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x259C72E20](v4 - 1, a1);
      goto LABEL_9;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if (v3 >= *(v2 + 16))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      v3 = sub_257ED0210();
    }

    else
    {
      v5 = *(a1 + 32 + 8 * v3);
LABEL_9:
      v6 = v5;
      v7 = [v5 isKeyWindow];

      if (v7)
      {
        return v3;
      }
    }
  }
}

unint64_t sub_257CA7508@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x259C72E20](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_257CA7574()
{
  v0 = 0;
  v75 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  v3 = sub_257BD2C2C(0, &unk_281543DE0, 0x277D75940);
  v67 = sub_257C82BC4();
  v4 = sub_257ECFA70();

  v66 = 0;
  if ((v4 & 0xC000000000000001) == 0)
  {
    v25 = *(v4 + 32);
    v11 = ((1 << v25) + 63) >> 6;
    v15 = 8 * v11;
    if ((v25 & 0x3Fu) > 0xD)
    {
      goto LABEL_40;
    }

LABEL_23:
    v64[1] = v64;
    v65 = v11;
    MEMORY[0x28223BE20](v5, v15, v6, v7, v8);
    v27 = v64 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v26);
    v28 = 0;
    v29 = 0;
    v11 = v4 + 56;
    v30 = 1 << *(v4 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v0 = v31 & *(v4 + 56);
    v32 = (v30 + 63) >> 6;
    while (1)
    {
      if (!v0)
      {
        v34 = v29;
        while (1)
        {
          v29 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_39;
          }

          if (v29 >= v32)
          {
            goto LABEL_37;
          }

          v35 = *(v11 + 8 * v29);
          ++v34;
          if (v35)
          {
            v33 = __clz(__rbit64(v35));
            v0 = (v35 - 1) & v35;
            goto LABEL_33;
          }
        }
      }

      v33 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
LABEL_33:
      v36 = v33 | (v29 << 6);
      if (![*(*(v4 + 48) + 8 * v36) activationState])
      {
        *&v27[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
        if (__OFADD__(v28++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    v9 = sub_257CA6C50(v27, v65, v28, v4);
    if ((v9 & 0xC000000000000001) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v9 = MEMORY[0x277D84FA0];
  v70 = MEMORY[0x277D84FA0];
  sub_257ED01D0();
  v10 = sub_257ED0230();
  if (!v10)
  {
LABEL_20:

    if ((v9 & 0xC000000000000001) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v0 = 63;
  v11 = 1;
  while (1)
  {
    v68 = v10;
    swift_dynamicCast();
    v12 = v69;
    if (![v69 activationState])
    {
      break;
    }

LABEL_5:
    v10 = sub_257ED0230();
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v13 = *(v9 + 16);
  if (*(v9 + 24) <= v13)
  {
    sub_257C51BC4(v13 + 1);
  }

  v9 = v70;
  v4 = v69;
  v14 = sub_257ECFF40();
  v16 = v70 + 56;
  v17 = -1 << *(v70 + 32);
  v18 = v14 & ~v17;
  v19 = v18 >> 6;
  if (((-1 << v18) & ~*(v70 + 56 + 8 * (v18 >> 6))) != 0)
  {
    v20 = __clz(__rbit64((-1 << v18) & ~*(v70 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v12;
    ++*(v9 + 16);
    goto LABEL_5;
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  v43 = v15;

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v43;
    goto LABEL_23;
  }

  v44 = swift_slowAlloc();
  v9 = sub_257CA7034(v44, v11, v4, sub_257CA6728);
  v66 = v0;

  MEMORY[0x259C74820](v44, -1, -1);
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_38:
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257ECFAA0();
    v39 = v70;
    v38 = v71;
    v40 = v72;
    v41 = v73;
    v42 = v74;
    goto LABEL_47;
  }

LABEL_43:
  v45 = -1 << *(v9 + 32);
  v38 = v9 + 56;
  v40 = ~v45;
  v46 = -v45;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v42 = v47 & *(v9 + 56);
  sub_257ECC3F0();
  v41 = 0;
  v39 = v9;
LABEL_47:
  v67 = v40;
  v48 = (v40 + 64) >> 6;
  if (v39 < 0)
  {
    goto LABEL_54;
  }

LABEL_48:
  v49 = v41;
  v50 = v42;
  v51 = v41;
  if (v42)
  {
LABEL_52:
    v52 = (v50 - 1) & v50;
    v53 = *(*(v39 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
    if (!v53)
    {
      goto LABEL_59;
    }

    while (1)
    {
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        break;
      }

      v41 = v51;
      v42 = v52;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_54:
      v54 = sub_257ED0230();
      if (v54)
      {
        v68 = v54;
        swift_dynamicCast();
        v53 = v69;
        v51 = v41;
        v52 = v42;
        if (v69)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v58 = v55;
    sub_257C02520(v39);

    v59 = [v58 windows];

    sub_257BD2C2C(0, &qword_27F8F6F90, 0x277D75DA0);
    v3 = sub_257ECF810();

    if (v3 >> 62)
    {
      goto LABEL_77;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v61 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x259C72E20](v61, v3);
        }

        else
        {
          if (v61 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v62 = *(v3 + 8 * v61 + 32);
        }

        v56 = v62;
        v63 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if ([v62 isKeyWindow])
        {

          return v56;
        }

        ++v61;
        if (v63 == i)
        {
          goto LABEL_78;
        }
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      ;
    }

LABEL_78:
  }

  else
  {
    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_75;
      }

      if (v51 >= v48)
      {
        break;
      }

      v50 = *(v38 + 8 * v51);
      ++v49;
      if (v50)
      {
        goto LABEL_52;
      }
    }

LABEL_59:
    sub_257C02520(v39);
  }

  return 0;
}

unint64_t sub_257CA7C64()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = sub_257BD2C2C(0, &unk_281543DE0, 0x277D75940);
  sub_257C82BC4();
  v3 = sub_257ECFA70();

  v47 = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_257ED01D0();
    sub_257ECFAA0();
    v3 = v41;
    v4 = v42;
    v5 = v43;
    v6 = v44;
    v7 = v45;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_257ED0230())
    {
      goto LABEL_21;
    }

    swift_dynamicCast();
    v16 = v46;
    v14 = v6;
    v15 = v7;
    if (!v46)
    {
      goto LABEL_21;
    }

LABEL_19:
    if ([v16 activationState])
    {
    }

    else
    {
      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

LABEL_21:
  v17.n128_f64[0] = sub_257C02520(v3);
  v2 = v47;
  if ((v47 & 0x8000000000000000) != 0 || (v47 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v18 = *(v47 + 16);
  if (v18)
  {
    while (2)
    {
      while (!__OFSUB__(v18--, 1))
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x259C72E20](v18, v2, v17);
        }

        else
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          if (v18 >= *(v2 + 16))
          {
            goto LABEL_37;
          }

          v20 = *(v2 + 32 + 8 * v18);
        }

        v21 = v20;
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();

        if (v22)
        {
          MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
          v46 = v18;
          sub_257CA80A0(&v46, &v47);
          v28 = v47;
          goto LABEL_40;
        }

        if (!v18)
        {
          goto LABEL_39;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v18 = sub_257ED0210();
      if (!v18)
      {
        break;
      }

      continue;
    }
  }

LABEL_39:
  v28 = 0;
LABEL_40:

  if (!v28)
  {
    return 0;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {

    return 0;
  }

  v30 = [v29 windows];

  sub_257BD2C2C(0, &qword_27F8F6F90, 0x277D75DA0);
  v31 = sub_257ECF810();

  v32 = sub_257CA7420(v31);
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v38 = 0;
  if ((v39 & 1) == 0)
  {
    v46 = v37;
    sub_257CA81D8(&v46, &v47);
    v38 = v47;
  }

  return v38;
}

uint64_t sub_257CA80C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Occupant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CA8124(uint64_t a1)
{
  v2 = type metadata accessor for Occupant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257CA8180()
{
  result = qword_27F8F57B0;
  if (!qword_27F8F57B0)
  {
    sub_257ECCCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F57B0);
  }

  return result;
}

uint64_t sub_257CA8200(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

id sub_257CA837C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 - 5 < 2)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (a1 <= 1u || a1 == 2)
  {
LABEL_7:
    v1 = sub_257ECF4C0();
    v2 = [objc_opt_self() systemImageNamed_];

    if (v2)
    {
      return v2;
    }

    goto LABEL_13;
  }

  v4 = sub_257ECF4C0();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed_];

  if (v6)
  {
    return v6;
  }

  v7 = sub_257ECF4C0();
  v8 = [v5 systemImageNamed_];

  if (v8)
  {
    return v8;
  }

LABEL_13:
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v9 init];
}

uint64_t sub_257CA85E8(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

unint64_t sub_257CA8764@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257CA9794(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_257CA8854()
{
  result = qword_27F8F6F98;
  if (!qword_27F8F6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6FA0, qword_257EDFA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6F98);
  }

  return result;
}

unint64_t sub_257CA88BC()
{
  result = qword_27F8F6FA8;
  if (!qword_27F8F6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6FA8);
  }

  return result;
}

void (*sub_257CA8910(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_257CA9B84;
  }

  __break(1u);
  return result;
}

void (*sub_257CA8990(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_257CA8A10;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_257CA8A18(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_257ECC3F0();
LABEL_5:
    *v3 = v4;
    return sub_257CA8A98;
  }

  __break(1u);
  return result;
}

void sub_257CA8AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB0, &qword_257EE97A0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277CE5860];
  *(v0 + 16) = xmmword_257EDBE50;
  v2 = *v1;
  v3 = *MEMORY[0x277CE5840];
  *(v0 + 32) = *v1;
  *(v0 + 40) = v3;
  v4 = *MEMORY[0x277CE5878];
  v5 = *MEMORY[0x277CE5870];
  *(v0 + 48) = *MEMORY[0x277CE5878];
  *(v0 + 56) = v5;
  v6 = *MEMORY[0x277CE5EA8];
  type metadata accessor for DeviceType(0);
  v7 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = sub_257ECF7F0();

  v72 = objc_opt_self();
  v18 = [v72 discoverySessionWithDeviceTypes:v17 mediaType:v16 position:1];

  v66 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB8, &qword_257EDFB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDFA20;
  v67 = v12;
  *(inited + 32) = v12;
  *(inited + 40) = 0;
  *(inited + 48) = v14;
  *(inited + 56) = 1;
  *(inited + 64) = v13;
  *(inited + 72) = 2;
  *(inited + 80) = v15;
  *(inited + 88) = 3;
  v20 = *MEMORY[0x277CE5880];
  *(inited + 96) = *MEMORY[0x277CE5880];
  *(inited + 104) = 5;
  v21 = *MEMORY[0x277CE5888];
  *(inited + 112) = *MEMORY[0x277CE5888];
  *(inited + 120) = 6;
  v22 = *MEMORY[0x277CE5890];
  *(inited + 128) = *MEMORY[0x277CE5890];
  *(inited + 136) = 7;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  v71 = v23;
  v70 = v24;
  v69 = v25;
  v26 = sub_257BE8E28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FC0, &qword_257EDFB78);
  swift_arrayDestroy();
  v65 = v18;
  v27 = [v18 devices];
  sub_257CA9748();
  v28 = sub_257ECF810();

  if (v28 >> 62)
  {
    goto LABEL_20;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_21:
    v31 = MEMORY[0x277D84F90];
LABEL_22:

    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_257ED6D30;
    *(v41 + 32) = v67;
    v42 = v66;
    v43 = sub_257ECF7F0();

    v44 = [v72 discoverySessionWithDeviceTypes:v43 mediaType:v42 position:2];

    v68 = v44;
    v45 = [v44 devices];
    v46 = sub_257ECF810();

    if (v46 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
    {

      if (i)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_257BFCF08(0, *(v31 + 2) + 1, 1, v31);
        }

        v49 = *(v31 + 2);
        v48 = *(v31 + 3);
        if (v49 >= v48 >> 1)
        {
          v31 = sub_257BFCF08((v48 > 1), v49 + 1, 1, v31);
        }

        *(v31 + 2) = v49 + 1;
        v31[v49 + 32] = 4;
      }

      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_257EDBBA0;
      *(v50 + 32) = v69;
      *(v50 + 40) = v71;
      *(v50 + 48) = v70;
      v51 = sub_257ECF7F0();

      v52 = [v72 discoverySessionWithDeviceTypes:v51 mediaType:v42 position:0];

      v72 = v52;
      v53 = [v52 devices];
      v54 = sub_257ECF810();

      if (v54 >> 62)
      {
        v55 = sub_257ED0210();
        if (!v55)
        {
LABEL_51:

          return;
        }
      }

      else
      {
        v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v55)
        {
          goto LABEL_51;
        }
      }

      v42 = 0;
      v74 = v54 & 0xFFFFFFFFFFFFFF8;
      v76 = v54 & 0xC000000000000001;
      v56 = v54;
      while (1)
      {
        if (v76)
        {
          v57 = MEMORY[0x259C72E20](v42, v54);
        }

        else
        {
          if (v42 >= *(v74 + 16))
          {
            goto LABEL_48;
          }

          v57 = *(v54 + 8 * v42 + 32);
        }

        v58 = v57;
        v59 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
          break;
        }

        inited = [v57 deviceType];
        if (!*(v26 + 16))
        {
          goto LABEL_53;
        }

        v60 = sub_257C09E74();
        if ((v61 & 1) == 0)
        {
          goto LABEL_53;
        }

        v62 = *(*(v26 + 56) + v60);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_257BFCF08(0, *(v31 + 2) + 1, 1, v31);
        }

        v64 = *(v31 + 2);
        v63 = *(v31 + 3);
        if (v64 >= v63 >> 1)
        {
          v31 = sub_257BFCF08((v63 > 1), v64 + 1, 1, v31);
        }

        *(v31 + 2) = v64 + 1;
        v31[v64 + 32] = v62;
        ++v42;
        v40 = v59 == v55;
        v54 = v56;
        if (v40)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }
  }

LABEL_3:
  v30 = 0;
  v73 = v28 & 0xFFFFFFFFFFFFFF8;
  v75 = v28 & 0xC000000000000001;
  v31 = MEMORY[0x277D84F90];
  v32 = v28;
  while (1)
  {
    if (v75)
    {
      v33 = MEMORY[0x259C72E20](v30, v28);
    }

    else
    {
      if (v30 >= *(v73 + 16))
      {
        goto LABEL_19;
      }

      v33 = *(v28 + 8 * v30 + 32);
    }

    v34 = v33;
    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v29 = sub_257ED0210();
      if (!v29)
      {
        goto LABEL_21;
      }

      goto LABEL_3;
    }

    v35 = [v33 deviceType];
    if (!*(v26 + 16))
    {
      break;
    }

    v36 = sub_257C09E74();
    if ((v37 & 1) == 0)
    {
      break;
    }

    inited = *(*(v26 + 56) + v36);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_257BFCF08(0, *(v31 + 2) + 1, 1, v31);
    }

    v39 = *(v31 + 2);
    v38 = *(v31 + 3);
    if (v39 >= v38 >> 1)
    {
      v31 = sub_257BFCF08((v38 > 1), v39 + 1, 1, v31);
    }

    *(v31 + 2) = v39 + 1;
    v31[v39 + 32] = inited;
    ++v30;
    v40 = v28 == v29;
    v28 = v32;
    if (v40)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_53:

  __break(1u);
}

BOOL sub_257CA9238()
{
  sub_257CA8AA0();
  v1 = sub_257C592D0(2u, v0);

  if (!v1)
  {
    return 0;
  }

  v2 = 1;
  v3 = [objc_opt_self() defaultDeviceWithDeviceType:*MEMORY[0x277CE5870] mediaType:*MEMORY[0x277CE5EA8] position:1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 activeFormat];
    v6 = [v5 autoFocusSystem];

    return v6 != 0;
  }

  return v2;
}

uint64_t sub_257CA930C()
{
  sub_257CA8AA0();
  v1 = v0;
  if (sub_257C592D0(2u, v0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5940, &unk_257EDB0F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_257ED6D30;
    *(v2 + 32) = 2;
    if (sub_257CA9238())
    {
      if (sub_257C592D0(3u, v1))
      {
        v2 = sub_257BFCF08(1, 2, 1, v2);
        *(v2 + 16) = 2;
        *(v2 + 33) = 3;
      }

      v3 = sub_257C592D0(4u, v1);

      if (v3)
      {
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          v2 = sub_257BFCF08((v4 > 1), v5 + 1, 1, v2);
        }

        *(v2 + 16) = v5 + 1;
        v6 = v2 + v5;
        v7 = 4;
LABEL_42:
        *(v6 + 32) = v7;
        return v2;
      }

      return v2;
    }

LABEL_11:
    v8 = sub_257C592D0(4u, v1);

    if (v8)
    {
      v2 = sub_257BFCF08(1, 2, 1, v2);
      *(v2 + 16) = 2;
      *(v2 + 33) = 4;
    }

    return v2;
  }

  if (sub_257C592D0(1u, v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5940, &unk_257EDB0F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_257ED6D30;
    *(v2 + 32) = 1;
    goto LABEL_11;
  }

  if (sub_257C592D0(0, v1))
  {
    v2 = sub_257BFCF08(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      v25 = sub_257BFCF08((v9 > 1), v10 + 1, 1, v2);
      v11 = v10 + 1;
      v2 = v25;
    }

    *(v2 + 16) = v11;
    *(v2 + v10 + 32) = 0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (sub_257C592D0(4u, v1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v26 = sub_257BFCF08((v12 > 1), v13 + 1, 1, v2);
      v14 = v13 + 1;
      v2 = v26;
    }

    *(v2 + 16) = v14;
    *(v2 + v13 + 32) = 4;
  }

  if (sub_257C592D0(7u, v1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v27 = sub_257BFCF08((v15 > 1), v16 + 1, 1, v2);
      v17 = v16 + 1;
      v2 = v27;
    }

    *(v2 + 16) = v17;
    *(v2 + v16 + 32) = 7;
  }

  if (sub_257C592D0(5u, v1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v28 = sub_257BFCF08((v18 > 1), v19 + 1, 1, v2);
      v20 = v19 + 1;
      v2 = v28;
    }

    *(v2 + 16) = v20;
    *(v2 + v19 + 32) = 5;
  }

  v21 = sub_257C592D0(6u, v1);

  if (v21)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v23 = *(v2 + 16);
    v22 = *(v2 + 24);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_257BFCF08((v22 > 1), v23 + 1, 1, v2);
    }

    *(v2 + 16) = v23 + 1;
    v6 = v2 + v23;
    v7 = 6;
    goto LABEL_42;
  }

  return v2;
}

unint64_t sub_257CA9748()
{
  result = qword_281543F70;
  if (!qword_281543F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543F70);
  }

  return result;
}

unint64_t sub_257CA9794(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t sub_257CA97A4()
{
  result = qword_281545A78;
  if (!qword_281545A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A78);
  }

  return result;
}

void sub_257CA97F8(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB8, &qword_257EDFB70);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277CE5878];
  *(inited + 16) = xmmword_257EDFA20;
  v4 = *v3;
  *(inited + 32) = v4;
  *(inited + 40) = 0;
  v5 = *MEMORY[0x277CE5840];
  *(inited + 48) = *MEMORY[0x277CE5840];
  *(inited + 56) = 1;
  v6 = *MEMORY[0x277CE5860];
  *(inited + 64) = *MEMORY[0x277CE5860];
  *(inited + 72) = 2;
  v7 = *MEMORY[0x277CE5870];
  *(inited + 80) = *MEMORY[0x277CE5870];
  *(inited + 88) = 3;
  v8 = *MEMORY[0x277CE5880];
  *(inited + 96) = *MEMORY[0x277CE5880];
  *(inited + 104) = 5;
  v9 = *MEMORY[0x277CE5888];
  *(inited + 112) = *MEMORY[0x277CE5888];
  *(inited + 120) = 6;
  v10 = *MEMORY[0x277CE5890];
  *(inited + 128) = *MEMORY[0x277CE5890];
  *(inited + 136) = 7;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = sub_257BE8E28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FC0, &qword_257EDFB78);
  swift_arrayDestroy();
  if (a1 >> 62)
  {
LABEL_30:
    v19 = sub_257ED0210();
    if (!v19)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_31;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v37 = v18;
  while (1)
  {
LABEL_6:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x259C72E20](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v22 = *(a1 + 32 + 8 * v20);
    }

    v23 = v22;
    if (__OFADD__(v20++, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v22 position] == 2)
    {
      break;
    }

    v29 = [v23 deviceType];
    if (!*(v18 + 16) || (v30 = sub_257C09E74(), (v31 & 1) == 0))
    {

      __break(1u);
      return;
    }

    v32 = *(*(v18 + 56) + v30);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_257BFCF08(0, *(v21 + 2) + 1, 1, v21);
    }

    v34 = *(v21 + 2);
    v33 = *(v21 + 3);
    if (v34 >= v33 >> 1)
    {
      v21 = sub_257BFCF08((v33 > 1), v34 + 1, 1, v21);
    }

    *(v21 + 2) = v34 + 1;
    v21[v34 + 32] = v32;
LABEL_5:
    v18 = v37;
    if (v20 == v19)
    {
      goto LABEL_31;
    }
  }

  v25 = *(v21 + 2);
  v26 = (v21 + 32);
  v27 = v25;
  do
  {
    if (!v27)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_257BFCF08(0, v25 + 1, 1, v21);
      }

      v36 = *(v21 + 2);
      v35 = *(v21 + 3);
      if (v36 >= v35 >> 1)
      {
        v21 = sub_257BFCF08((v35 > 1), v36 + 1, 1, v21);
      }

      *(v21 + 2) = v36 + 1;
      v21[v36 + 32] = 4;
      goto LABEL_5;
    }

    v28 = *v26++;
    --v27;
  }

  while (v28 != 4);

  if (v20 != v19)
  {
    goto LABEL_6;
  }

LABEL_31:
}

id sub_257CA9B98(uint64_t a1)
{
  v1 = sub_257ECF030();
  v2 = objc_opt_self();
  v3 = &selRef_secondarySystemFillColor;
  if ((v1 & 1) == 0)
  {
    v3 = &selRef_secondarySystemBackgroundColor;
  }

  result = [v2 *v3];
  qword_281548308 = result;
  return result;
}

uint64_t sub_257CA9C10()
{
  result = AXDeviceHasJindo();
  v1 = 8.0;
  if (result)
  {
    v1 = 24.0;
  }

  qword_2815482F8 = *&v1;
  return result;
}

CGFloat sub_257CA9C70()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) / 3.0;
  qword_27F912F38 = *&result;
  return result;
}

uint64_t sub_257CA9D24()
{
  if (qword_27F8F4668 != -1)
  {
    result = swift_once();
  }

  v0 = 16.0;
  if (byte_27F8F8D88)
  {
    v0 = 12.0;
  }

  qword_2815482F0 = *&v0;
  return result;
}

double sub_257CA9D98()
{
  if (qword_281544A58 != -1)
  {
    swift_once();
  }

  return *&qword_2815482F0;
}

id sub_257CA9DF0()
{
  v0 = sub_257ECCD90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultMetrics];
  [objc_opt_self() defaultFontSize];
  sub_257ECCD80();
  v9 = sub_257ECCD60();
  (*(v1 + 8))(v7, v0);
  CEKIsSFCameraSupportedForLocale();

  v10 = CEKFontOfSizeAndStyle();
  v11 = [v8 scaledFontForFont_];

  return v11;
}

id sub_257CA9F5C()
{
  v28 = objc_opt_self();
  [v28 defaultFontSize];
  v0 = CEKFontOfSizeAndStyle();
  v27 = [v0 fontDescriptor];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FC8, &qword_257EDFBA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v2 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FD0, &qword_257EDFBB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_257EDBBA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FD8, &qword_257EDFBB8);
  v4 = swift_initStackObject();
  v5 = MEMORY[0x277D76908];
  *(v4 + 16) = xmmword_257ED9BD0;
  v6 = *v5;
  *(v4 + 32) = v6;
  v7 = *MEMORY[0x277D76900];
  *(v4 + 40) = 6;
  *(v4 + 48) = v7;
  *(v4 + 56) = 0;
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v11 = v9;
  v12 = v10;
  v13 = v11;
  v14 = v2;
  v15 = sub_257BE99E0(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FE0, &qword_257EDFBC0);
  swift_arrayDestroy();
  *(v3 + 32) = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_257ED9BD0;
  *(v16 + 32) = v12;
  *(v16 + 40) = 35;
  *(v16 + 48) = v13;
  *(v16 + 56) = 2;
  v17 = sub_257BE99E0(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_257ED9BD0;
  *(v18 + 32) = v12;
  *(v18 + 40) = 2;
  *(v18 + 48) = v13;
  *(v18 + 56) = 4;
  v19 = sub_257BE99E0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + 48) = v19;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FE8, &unk_257EDFBC8);
  *(inited + 40) = v3;
  sub_257BE9ACC(inited);
  swift_setDeallocating();
  sub_257CAA308(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_257CAA370();
  v20 = sub_257ECF3C0();

  v21 = [v27 fontDescriptorByAddingAttributes_];

  v22 = [objc_opt_self() defaultMetrics];
  v23 = v21;
  [v28 defaultFontSize];
  v24 = [v28 fontWithDescriptor:v23 size:?];

  v25 = [v22 scaledFontForFont_];
  return v25;
}

uint64_t sub_257CAA308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55F8, &qword_257EDA550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257CAA370()
{
  result = qword_281543E68;
  if (!qword_281543E68)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543E68);
  }

  return result;
}

uint64_t sub_257CAA3E8(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

id sub_257CAA5D8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_257CAA650(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 - 3) >= 8u)
  {
    MEMORY[0x259C732E0](1);
    v2 = a2;
  }

  else
  {
    v2 = qword_257EDFFD8[(a2 - 3)];
  }

  return MEMORY[0x259C732E0](v2);
}

uint64_t sub_257CAA6A8()
{
  v1 = *v0;
  sub_257ED07B0();
  sub_257CAA650(v3, v1);
  return sub_257ED0800();
}

uint64_t sub_257CAA6F8(uint64_t a1)
{
  v2 = *v1;
  sub_257ED07B0();
  sub_257CAA650(v4, v2);
  return sub_257ED0800();
}

uint64_t sub_257CAA748(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_257ECF500();
  return v8;
}

uint64_t sub_257CAA870(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_257ECF500();
  return v8;
}

id sub_257CAAA3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257CAE178(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_257CAAA98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetectionModeSettingsViewController.DataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_257CAAB24()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    objc_allocWithZone(type metadata accessor for DetectionModeSettingsViewController.DataSource(0));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_257CAE144;
    *(v6 + 24) = v5;
    v7 = v4;
    v8 = v0;
    v9 = v0;
    v10 = sub_257ECDBD0();
    v11 = *&v0[v1];
    *&v9[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_257CAAC20(void *a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  if (a3 > 6u)
  {
    if (a3 > 8u)
    {
      if (a3 == 9)
      {
        v126 = sub_257ECF4C0();
        v127 = sub_257ECCE30();
        v27 = [a1 dequeueReusableCellWithIdentifier:v126 forIndexPath:v127];

        v128 = [v27 textLabel];
        if (v128)
        {
          v129 = v128;
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v131 = [objc_opt_self() bundleForClass_];
          v132 = sub_257ECF4C0();
          v133 = sub_257ECF4C0();
          v134 = [v131 localizedStringForKey:v132 value:0 table:v133];

          if (!v134)
          {
            sub_257ECF500();
            v134 = sub_257ECF4C0();
          }

          [v129 setText_];
        }

        v135 = [v27 textLabel];
        if (v135)
        {
          v136 = v135;
          [v135 setNumberOfLines_];
        }

        v137 = [v27 textLabel];
        if (v137)
        {
          v138 = v137;
          [v137 setLineBreakMode_];
        }

        if (sub_257ECF030())
        {
          _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6569762E74786574, 0xEF7265646E696677, a4);
          if (v139)
          {
            v46 = v139;
            v47 = [v27 imageView];
            if (!v47)
            {
LABEL_141:

              goto LABEL_142;
            }

            goto LABEL_107;
          }

          goto LABEL_142;
        }

        v167 = [v27 imageView];
        if (!v167)
        {
          goto LABEL_142;
        }

        v140 = v167;
        v168 = sub_257ECF4C0();
        v46 = [objc_opt_self() systemImageNamed_];

        if (!v46)
        {
          goto LABEL_140;
        }

        v169 = objc_opt_self();
        v170 = v46;
        v171 = [v169 configurationWithPointSize:4 weight:-1 scale:25.0];
        v161 = [v170 imageByApplyingSymbolConfiguration_];

        if (v161)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      if (a3 != 10)
      {
        goto LABEL_108;
      }

      v62 = sub_257ECF4C0();
      v63 = sub_257ECCE30();
      v27 = [a1 dequeueReusableCellWithIdentifier:v62 forIndexPath:v63];

      v64 = [v27 textLabel];
      if (v64)
      {
        v65 = v64;
        type metadata accessor for MAGUtilities();
        v66 = swift_getObjCClassFromMetadata();
        v67 = [objc_opt_self() bundleForClass_];
        v68 = sub_257ECF4C0();
        v69 = sub_257ECF4C0();
        v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

        if (!v70)
        {
          sub_257ECF500();
          v70 = sub_257ECF4C0();
        }

        [v65 setText_];
      }

      v71 = [v27 textLabel];
      if (v71)
      {
        v72 = v71;
        [v71 setNumberOfLines_];
      }

      v73 = [v27 textLabel];
      if (v73)
      {
        v74 = v73;
        [v73 setLineBreakMode_];
      }

      if ((sub_257ECF030() & 1) == 0)
      {
        v182 = [v27 imageView];
        if (!v182)
        {
          goto LABEL_142;
        }

        v140 = v182;
        v183 = sub_257ECF4C0();
        v46 = [objc_opt_self() systemImageNamed_];

        if (!v46)
        {
          goto LABEL_140;
        }

        v184 = objc_opt_self();
        v185 = v46;
        v186 = [v184 configurationWithPointSize:4 weight:-1 scale:25.0];
        v161 = [v185 imageByApplyingSymbolConfiguration_];

        if (v161)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000020, 0x8000000257EFD170, a4);
      if (!v75)
      {
        goto LABEL_142;
      }

      v46 = v75;
      v47 = [v27 imageView];
      if (!v47)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (a3 != 7)
      {
        if (a3 == 8)
        {
          v32 = sub_257ECF4C0();
          v33 = sub_257ECCE30();
          v27 = [a1 dequeueReusableCellWithIdentifier:v32 forIndexPath:v33];

          v34 = [v27 textLabel];
          if (v34)
          {
            v35 = v34;
            type metadata accessor for MAGUtilities();
            v36 = swift_getObjCClassFromMetadata();
            v37 = [objc_opt_self() bundleForClass_];
            v38 = sub_257ECF4C0();
            v39 = sub_257ECF4C0();
            v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

            if (!v40)
            {
              sub_257ECF500();
              v40 = sub_257ECF4C0();
            }

            [v35 setText_];
          }

          v41 = [v27 textLabel];
          if (v41)
          {
            v42 = v41;
            [v41 setNumberOfLines_];
          }

          v43 = [v27 textLabel];
          if (v43)
          {
            v44 = v43;
            [v43 setLineBreakMode_];
          }

          if (sub_257ECF030())
          {
            _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6C69662E61666F73, 0xE90000000000006CLL, a4);
            if (v45)
            {
              v46 = v45;
              v47 = [v27 imageView];
              if (!v47)
              {
                goto LABEL_141;
              }

              goto LABEL_107;
            }

            goto LABEL_142;
          }

          v172 = [v27 imageView];
          if (!v172)
          {
            goto LABEL_142;
          }

          v140 = v172;
          v173 = sub_257ECF4C0();
          v46 = [objc_opt_self() systemImageNamed_];

          if (!v46)
          {
            goto LABEL_140;
          }

          v174 = objc_opt_self();
          v175 = v46;
          v176 = [v174 configurationWithPointSize:4 weight:-1 scale:25.0];
          v161 = [v175 imageByApplyingSymbolConfiguration_];

          if (v161)
          {
LABEL_138:
            v187 = [objc_opt_self() whiteColor];
            v46 = [v161 imageWithTintColor:v187 renderingMode:1];

            goto LABEL_140;
          }

LABEL_139:
          v46 = 0;
          goto LABEL_140;
        }

LABEL_108:
        v141 = sub_257ECF4C0();
        v142 = sub_257ECCE30();
        v27 = [a1 dequeueReusableCellWithIdentifier:v141 forIndexPath:v142];

        v143 = [v27 textLabel];
        if (v143)
        {
          v144 = v143;
          sub_257CAA3E8(a3);
          v145 = sub_257ECF4C0();

          [v144 setText_];
        }

        v146 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v147 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
        swift_beginAccess();
        v191 = *v147;
        v194 = v147[1];
        v197 = v147[2];
        v148 = qword_2815447E0;

        if (v148 != -1)
        {
          v149 = swift_once();
        }

        MEMORY[0x28223BE20](v149, v150, v151, v152, v153);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
        sub_257ECFD50();

        v154 = sub_257C592D0(a3, v198);

        [v146 setOn_];
        v155 = v146;
        [v155 setTag_];
        [v155 addTarget:a4 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
        [v27 setAccessoryView_];

        [v27 setAccessoryType_];
        return v27;
      }

      v98 = sub_257ECF4C0();
      v99 = sub_257ECCE30();
      v27 = [a1 dequeueReusableCellWithIdentifier:v98 forIndexPath:v99];

      v100 = [v27 textLabel];
      if (v100)
      {
        v101 = v100;
        type metadata accessor for MAGUtilities();
        v102 = swift_getObjCClassFromMetadata();
        v103 = [objc_opt_self() bundleForClass_];
        v104 = sub_257ECF4C0();
        v105 = sub_257ECF4C0();
        v106 = [v103 localizedStringForKey:v104 value:0 table:v105];

        if (!v106)
        {
          sub_257ECF500();
          v106 = sub_257ECF4C0();
        }

        [v101 setText_];
      }

      v107 = [v27 textLabel];
      if (v107)
      {
        v108 = v107;
        [v107 setNumberOfLines_];
      }

      v109 = [v27 textLabel];
      if (v109)
      {
        v110 = v109;
        [v109 setLineBreakMode_];
      }

      if ((sub_257ECF030() & 1) == 0)
      {
        v156 = [v27 imageView];
        if (!v156)
        {
          goto LABEL_142;
        }

        v140 = v156;
        v157 = sub_257ECF4C0();
        v46 = [objc_opt_self() systemImageNamed_];

        if (!v46)
        {
          goto LABEL_140;
        }

        v158 = objc_opt_self();
        v159 = v46;
        v160 = [v158 configurationWithPointSize:4 weight:-1 scale:25.0];
        v161 = [v159 imageByApplyingSymbolConfiguration_];

        if (v161)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000016, 0x8000000257EFBC30, a4);
      if (!v111)
      {
        goto LABEL_142;
      }

      v46 = v111;
      v47 = [v27 imageView];
      if (!v47)
      {
        goto LABEL_141;
      }
    }

LABEL_107:
    v140 = v47;
LABEL_140:
    [v140 setImage_];

    goto LABEL_141;
  }

  if (a3 > 4u)
  {
    if (a3 != 5)
    {
      if (a3 == 6)
      {
        v48 = sub_257ECF4C0();
        v49 = sub_257ECCE30();
        v27 = [a1 dequeueReusableCellWithIdentifier:v48 forIndexPath:v49];

        v50 = [v27 textLabel];
        if (v50)
        {
          v51 = v50;
          type metadata accessor for MAGUtilities();
          v52 = swift_getObjCClassFromMetadata();
          v53 = [objc_opt_self() bundleForClass_];
          v54 = sub_257ECF4C0();
          v55 = sub_257ECF4C0();
          v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

          if (!v56)
          {
            sub_257ECF500();
            v56 = sub_257ECF4C0();
          }

          [v51 setText_];
        }

        v57 = [v27 textLabel];
        if (v57)
        {
          v58 = v57;
          [v57 setNumberOfLines_];
        }

        v59 = [v27 textLabel];
        if (v59)
        {
          v60 = v59;
          [v59 setLineBreakMode_];
        }

        if (sub_257ECF030())
        {
          _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000025, 0x8000000257EFBBE0, a4);
          if (v61)
          {
            v46 = v61;
            v47 = [v27 imageView];
            if (!v47)
            {
              goto LABEL_141;
            }

            goto LABEL_107;
          }

LABEL_142:
          [v27 setAccessoryType_];
          return v27;
        }

        v177 = [v27 imageView];
        if (!v177)
        {
          goto LABEL_142;
        }

        v140 = v177;
        v178 = sub_257ECF4C0();
        v46 = [objc_opt_self() systemImageNamed_];

        if (!v46)
        {
          goto LABEL_140;
        }

        v179 = objc_opt_self();
        v180 = v46;
        v181 = [v179 configurationWithPointSize:4 weight:-1 scale:25.0];
        v161 = [v180 imageByApplyingSymbolConfiguration_];

        if (v161)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      goto LABEL_108;
    }

    v112 = sub_257ECF4C0();
    v113 = sub_257ECCE30();
    v27 = [a1 dequeueReusableCellWithIdentifier:v112 forIndexPath:v113];

    v114 = [v27 textLabel];
    if (v114)
    {
      v115 = v114;
      type metadata accessor for MAGUtilities();
      v116 = swift_getObjCClassFromMetadata();
      v117 = [objc_opt_self() bundleForClass_];
      v118 = sub_257ECF4C0();
      v119 = sub_257ECF4C0();
      v120 = [v117 localizedStringForKey:v118 value:0 table:v119];

      if (!v120)
      {
        sub_257ECF500();
        v120 = sub_257ECF4C0();
      }

      [v115 setText_];
    }

    v121 = [v27 textLabel];
    if (v121)
    {
      v122 = v121;
      [v121 setNumberOfLines_];
    }

    v123 = [v27 textLabel];
    if (v123)
    {
      v124 = v123;
      [v123 setLineBreakMode_];
    }

    if ((sub_257ECF030() & 1) == 0)
    {
      v162 = [v27 imageView];
      if (!v162)
      {
        goto LABEL_142;
      }

      v140 = v162;
      v163 = sub_257ECF4C0();
      v46 = [objc_opt_self() _systemImageNamed_];

      if (!v46)
      {
        goto LABEL_140;
      }

      v164 = objc_opt_self();
      v165 = v46;
      v166 = [v164 configurationWithPointSize:4 weight:-1 scale:25.0];
      v161 = [v165 imageByApplyingSymbolConfiguration_];

      if (v161)
      {
        goto LABEL_138;
      }

      goto LABEL_139;
    }

    _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x75622E6F746F6870, 0xEC000000656C6262, a4);
    if (!v125)
    {
      goto LABEL_142;
    }

    v46 = v125;
    v47 = [v27 imageView];
    if (!v47)
    {
      goto LABEL_141;
    }

    goto LABEL_107;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v7 = sub_257ECF4C0();
      v8 = sub_257ECCE30();
      v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:v8];

      v10 = [v9 textLabel];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for MAGUtilities();
        v12 = swift_getObjCClassFromMetadata();
        v13 = [objc_opt_self() bundleForClass_];
        v14 = sub_257ECF4C0();
        v15 = sub_257ECF4C0();
        v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

        if (!v16)
        {
          sub_257ECF500();
          v16 = sub_257ECF4C0();
        }

        [v11 setText_];
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v18 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v189 = *v18;
      v192 = *(v18 + 8);
      LOBYTE(v195) = *(v18 + 16);
      v19 = qword_2815447E0;

      if (v19 != -1)
      {
        v20 = swift_once();
      }

      MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
      sub_257ECFD50();

      [v17 setOn_];
      [v17 addTarget:a4 action:sel_didToggleDetectLanguagesSwitch_ forControlEvents:4096];
      [v9 setAccessoryView_];
      [v9 setAccessoryType_];
      type metadata accessor for MAGUtilities();
      v25 = swift_getObjCClassFromMetadata();
      v26 = objc_opt_self();
      v27 = v9;
      v28 = [v26 bundleForClass_];
      v29 = sub_257ECF4C0();
      v30 = sub_257ECF4C0();
      v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

      if (!v31)
      {
        sub_257ECF500();
        v31 = sub_257ECF4C0();
      }

      [v27 setAccessibilityLabel_];

      return v27;
    }

    goto LABEL_108;
  }

  v76 = sub_257ECF4C0();
  v77 = sub_257ECCE30();
  v27 = [a1 dequeueReusableCellWithIdentifier:v76 forIndexPath:v77];

  v78 = [v27 textLabel];
  if (v78)
  {
    v79 = v78;
    type metadata accessor for MAGUtilities();
    v80 = swift_getObjCClassFromMetadata();
    v81 = [objc_opt_self() bundleForClass_];
    v82 = sub_257ECF4C0();
    v83 = sub_257ECF4C0();
    v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

    if (!v84)
    {
      sub_257ECF500();
      v84 = sub_257ECF4C0();
    }

    [v79 setText_];
  }

  v85 = [v27 textLabel];
  if (v85)
  {
    v86 = v85;
    [v85 setNumberOfLines_];
  }

  v87 = [v27 textLabel];
  if (v87)
  {
    v88 = v87;
    [v87 setLineBreakMode_];
  }

  v89 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v90 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v190 = *v90;
  v193 = v90[1];
  v196 = v90[2];
  v91 = qword_2815447E0;

  if (v91 != -1)
  {
    v92 = swift_once();
  }

  MEMORY[0x28223BE20](v92, v93, v94, v95, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  v97 = sub_257C592D0(2u, v198);

  [v89 setOn_];
  [v89 addTarget:a4 action:sel_didToggleDetectionSwitch_ forControlEvents:4096];
  [v27 setAccessoryView_];
  [v27 setAccessoryType_];

  return v27;
}

id sub_257CACA5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F70B8, &unk_257EDFFC8);
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v20 - v10;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v9);
  result = [v1 view];
  if (result)
  {
    v13 = result;
    v14 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView];
    [result addSubview_];

    [v14 setDelegate_];
    sub_257C60F40();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = sub_257ECF4C0();
    [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v16];

    v17 = sub_257ECF4C0();
    [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

    [v14 setAllowsSelectionDuringEditing_];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v1 view];
    if (result)
    {
      v18 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      v19 = sub_257CAAB24();
      sub_257CACCCC();
      sub_257ECDBF0();

      return (*(v4 + 8))(v11, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_257CACCCC()
{
  sub_257CAEC58();
  sub_257CAECAC();
  sub_257ECDBB0();
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v0 = byte_27F8F78A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F70B8, &unk_257EDFFC8);
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  if (v0 == 1)
  {
    sub_257ECDB20();
    sub_257ECDB20();
    sub_257ECDB20();
  }

  sub_257ECDB20();
  sub_257ECDB20();
  return sub_257ECDB20();
}

id sub_257CAD110(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___peopleDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___imageCaptionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___objectUnderstandingSettingsViewController] = 0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_languageTranslator;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___pointSpeakSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___textDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_availablePauseDetectionModeFeedbacks] = &unk_286904970;
  v8 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  *&v3[v8] = v11;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_257CAD344(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___peopleDetectionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___imageCaptionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___objectUnderstandingSettingsViewController] = 0;
  v4 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_languageTranslator;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___pointSpeakSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___textDetectionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_availablePauseDetectionModeFeedbacks] = &unk_286904998;
  v5 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  *&v1[v5] = v8;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t type metadata accessor for DetectionModeSettingsViewController.DataSource(uint64_t a1)
{
  result = qword_27F8F7060;
  if (!qword_27F8F7060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CAD984(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_257CAAB24();
  sub_257ECDBE0();

  if (v17 != 11)
  {
    v6 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v6 animated:1];

    if (v17 > 7u)
    {
      switch(v17)
      {
        case 8u:
          v13 = [v3 navigationController];
          if (!v13)
          {
            return;
          }

          v8 = v13;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___objectUnderstandingSettingsViewController;
          v10 = type metadata accessor for ObjectUnderstandingSettingsViewController;
          goto LABEL_21;
        case 9u:
          v15 = [v3 navigationController];
          if (!v15)
          {
            return;
          }

          v8 = v15;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___textDetectionSettingsViewController;
          v10 = type metadata accessor for TextDetectionSettingsViewController;
          goto LABEL_21;
        case 0xAu:
          v11 = [v3 navigationController];
          if (v11)
          {
            v8 = v11;
            v9 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___pointSpeakSettingsViewController;
            v10 = type metadata accessor for PointSpeakSettingsViewController;
            goto LABEL_21;
          }

          break;
      }
    }

    else
    {
      switch(v17)
      {
        case 5u:
          v12 = [v3 navigationController];
          if (!v12)
          {
            return;
          }

          v8 = v12;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___imageCaptionSettingsViewController;
          v10 = type metadata accessor for ImageCaptionSettingsViewController;
          goto LABEL_21;
        case 6u:
          v14 = [v3 navigationController];
          if (!v14)
          {
            return;
          }

          v8 = v14;
          v9 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___peopleDetectionSettingsViewController;
          v10 = type metadata accessor for PeopleDetectionSettingsViewController;
          goto LABEL_21;
        case 7u:
          v7 = [v3 navigationController];
          if (v7)
          {
            v8 = v7;
            v9 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
            v10 = type metadata accessor for DoorDetectionSettingsViewController;
LABEL_21:
            v16 = sub_257CAA5D8(v9, v10);
            [v8 pushViewController:v16 animated:1];
          }

          break;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DetectionModeSettingsViewController.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 9)
  {
    return v8 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetectionModeSettingsViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_257CADE38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_257CADE4C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_257CADE8C()
{
  result = qword_27F8F7070;
  if (!qword_27F8F7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7070);
  }

  return result;
}

unint64_t sub_257CADF44()
{
  result = qword_27F8F7098;
  if (!qword_27F8F7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7098);
  }

  return result;
}

unint64_t sub_257CADF9C()
{
  result = qword_27F8F70A0;
  if (!qword_27F8F70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F70A0);
  }

  return result;
}

BOOL sub_257CADFF0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 6u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        return a2 == 9;
      }

      if (a1 == 10)
      {
        return a2 == 10;
      }
    }

    else
    {
      if (a1 == 7)
      {
        return a2 == 7;
      }

      if (a1 == 8)
      {
        return a2 == 8;
      }
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    if (a1 == 6)
    {
      return a2 == 6;
    }
  }

  else
  {
    if (a1 == 3)
    {
      return a2 == 3;
    }

    if (a1 == 4)
    {
      return a2 == 4;
    }
  }

  if (a2 - 3 < 8)
  {
    return 0;
  }

  return a1 == a2;
}

unint64_t sub_257CAE0F0()
{
  result = qword_281544598;
  if (!qword_281544598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544598);
  }

  return result;
}

uint64_t sub_257CAE178(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

double sub_257CAE1AC(uint64_t a1)
{
  if (qword_281544FE0 == -1)
  {
    goto LABEL_2;
  }

LABEL_40:
  swift_once();
LABEL_2:
  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  v8 = v33;
  if ([a1 isOn])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_257BFD908(0, *(v33 + 16) + 1, 1, v33);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_257BFD908((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v8[v10 + 32] = 2;
    goto LABEL_29;
  }

  v11 = *(v33 + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

  a1 = 0;
  do
  {
    if (*(v33 + a1 + 32) == 2)
    {
      v12 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_44;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v11 = *(v8 + 2);
        if (v12 != v11)
        {
          v27 = v8 + 32;
          v28 = &v8[a1 + 33];
          while (v12 < v11)
          {
            v30 = *v28;
            if (v30 != 2)
            {
              if (v12 != a1)
              {
                if (a1 >= v11)
                {
                  __break(1u);
                  break;
                }

                v29 = v27[a1];
                v27[a1] = v30;
                *v28 = v29;
                v11 = *(v8 + 2);
              }

              ++a1;
            }

            ++v12;
            ++v28;
            if (v12 == v11)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v11 = v12;
LABEL_19:
        if (v11 < a1)
        {
          goto LABEL_42;
        }

        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v8 = sub_257C7DF14(v8);
      }
    }

    ++a1;
  }

  while (v11 != a1);
LABEL_14:
  a1 = *(v33 + 16);
LABEL_21:
  v12 = a1;
  if (__OFADD__(v11, a1 - v11))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v8 + 3) >> 1)
  {
    if (v11 <= a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = v11;
    }

    v8 = sub_257BFD908(isUniquelyReferenced_nonNull_native, v14, 1, v8);
  }

  sub_257E541E0();
LABEL_29:
  v15 = swift_beginAccess();
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v20 = swift_beginAccess();
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);

  sub_257ECFD50();

  v25 = sub_257D53928();
  sub_257D53B38(v8, v31, v32, v25);

  return result;
}

double sub_257CAE694(void *a1)
{
  v2 = [a1 tag];
  if (v2 <= 2)
  {
    v4 = v2;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v5 = qword_2815447E0;

      if (v5 != -1)
      {
        v6 = swift_once();
      }

      MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F68A0, &qword_257EDB220);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v4;
      sub_257EB0EA4(inited);
      sub_257D57C64(v25, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_2815447E0;

      if (v12 != -1)
      {
        v13 = swift_once();
      }

      MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
      sub_257ECFD50();

      v18 = *(v25 + 16);
      if (v18)
      {
        v19 = (v25 + 32);
        v20 = MEMORY[0x277D84F90];
        do
        {
          v24 = *v19++;
          v23 = v24;
          if (v24 != v4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF28E4(0, *(v20 + 16) + 1, 1);
            }

            v22 = *(v20 + 16);
            v21 = *(v20 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_257BF28E4((v21 > 1), v22 + 1, 1);
            }

            *(v20 + 16) = v22 + 1;
            *(v20 + v22 + 32) = v23;
          }

          --v18;
        }

        while (v18);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      sub_257D57C64(v20, 1);
    }
  }

  return result;
}

double sub_257CAEA74(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  v11 = [a1 isOn];
  v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
  swift_beginAccess();
  v20 = v11;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *&v19[-16] = &v20;
  *&v19[-8] = v12;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  return result;
}

unint64_t sub_257CAEC58()
{
  result = qword_27F8F70C8;
  if (!qword_27F8F70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F70C8);
  }

  return result;
}

unint64_t sub_257CAECAC()
{
  result = qword_27F8F70D0;
  if (!qword_27F8F70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F70D0);
  }

  return result;
}

uint64_t sub_257CAED1C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD52CC();
  v17 = sub_257ECFD30();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = sub_257C1C6EC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_18;
  v19 = _Block_copy(aBlock);
  v20 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v8, v19);
  _Block_release(v19);

  (*(v2 + 8))(v8, v1);
  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_257CAF010(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 56);
  v29 = ObjectType;
  v6((&v30 + 4), ObjectType, a2);
  if (Control.rawValue.getter() == 0x67696C6873616C66 && v7 == 0xEA00000000007468)
  {

LABEL_12:
    v12 = 0;
    return v12 & 1;
  }

  v9 = sub_257ED0640();

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons;
  if (*(*(v2 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons) + 16) < 2uLL)
  {
    goto LABEL_12;
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (BYTE3(v30) != 1 || (v10 = *(v3 + v10), *(v10 + 16) != 2))
    {
      v12 = 1;
      return v12 & 1;
    }

    v27 = a2;

    a2 = 0;
    v11 = (v10 + 40);
    v26 = v10;
LABEL_17:
    if (a2 < *(v10 + 16))
    {
      break;
    }

    __break(1u);
LABEL_76:
    swift_once();
  }

  v14 = *(v11 - 1);
  v15 = *v11;
  ++a2;
  v16 = swift_getObjectType();
  v17 = *(v15 + 56);
  v28 = v14;
  v17((&v30 + 2), v16, v15);
  v18 = BYTE2(v30);
  v6((&v30 + 1), v29, v27);
  v19 = 0xEA00000000007468;
  v20 = 0x67696C6873616C66;
  switch(v18)
  {
    case 1:
      v20 = 0xD000000000000011;
      v19 = 0x8000000257EF7780;
      break;
    case 2:
      v20 = 0x4379616C70736964;
      v19 = 0xEF74736172746E6FLL;
      break;
    case 3:
      v19 = 0xE700000000000000;
      v20 = 0x737265746C6966;
      break;
    case 4:
      break;
    case 5:
      v20 = 0x6544656C706F6570;
      v19 = 0xEF6E6F6974636574;
      break;
    case 6:
      v20 = 0x636F4C7375636F66;
      v19 = 0xE90000000000006BLL;
      break;
    case 7:
      v19 = 0xEA00000000006570;
      v20 = 0x79546172656D6163;
      break;
    case 8:
      v20 = 0x4D65727574706163;
      v19 = 0xEB0000000065646FLL;
      break;
    case 9:
      v20 = 0x6F69746365746564;
      v19 = 0xED000065646F4D6ELL;
      break;
    case 10:
      v21 = 1919905636;
      goto LABEL_33;
    case 11:
      v20 = 0xD000000000000013;
      v19 = 0x8000000257EF74D0;
      break;
    case 12:
      v20 = 0x7061436567616D69;
      v19 = 0xEC0000006E6F6974;
      break;
    case 13:
      v19 = 0xEA00000000006B61;
      v20 = 0x657053746E696F70;
      break;
    case 14:
      v21 = 1954047348;
LABEL_33:
      v20 = v21 | 0x6574654400000000;
      v19 = 0xED00006E6F697463;
      break;
    case 15:
      v19 = 0xEA00000000007365;
      v20 = 0x6974697669746361;
      break;
    default:
      v19 = 0xEA0000000000726FLL;
      v20 = 0x746361466D6F6F7ALL;
      break;
  }

  v22 = 0x67696C6873616C66;
  v23 = 0xEA00000000007468;
  switch(BYTE1(v30))
  {
    case 1:
      v23 = 0x8000000257EF7780;
      if (v20 == 0xD000000000000011)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    case 2:
      v23 = 0xEF74736172746E6FLL;
      if (v20 != 0x4379616C70736964)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 3:
      v23 = 0xE700000000000000;
      if (v20 != 0x737265746C6966)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 4:
      goto LABEL_63;
    case 5:
      v23 = 0xEF6E6F6974636574;
      if (v20 != 0x6544656C706F6570)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 6:
      v23 = 0xE90000000000006BLL;
      if (v20 != 0x636F4C7375636F66)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 7:
      v23 = 0xEA00000000006570;
      if (v20 != 0x79546172656D6163)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 8:
      v23 = 0xEB0000000065646FLL;
      if (v20 != 0x4D65727574706163)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 9:
      v24 = 0x6F69746365746564;
      v25 = 0x65646F4D6ELL;
      goto LABEL_46;
    case 0xA:
      v22 = 0x65746544726F6F64;
      v23 = 0xED00006E6F697463;
LABEL_63:
      if (v20 == v22)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    case 0xB:
      v23 = 0x8000000257EF74D0;
      if (v20 != 0xD000000000000013)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xC:
      v23 = 0xEC0000006E6F6974;
      if (v20 != 0x7061436567616D69)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xD:
      v23 = 0xEA00000000006B61;
      if (v20 != 0x657053746E696F70)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xE:
      v24 = 0x6574654474786574;
      v25 = 0x6E6F697463;
LABEL_46:
      v23 = v25 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v20 != v24)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xF:
      v23 = 0xEA00000000007365;
      if (v20 != 0x6974697669746361)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    default:
      v23 = 0xEA0000000000726FLL;
      if (v20 != 0x746361466D6F6F7ALL)
      {
        goto LABEL_65;
      }

LABEL_64:
      if (v19 == v23)
      {

        goto LABEL_15;
      }

LABEL_65:
      v3 = sub_257ED0640();

      if (v3)
      {
LABEL_15:

        v10 = v26;
LABEL_16:
        v11 += 2;
        if (a2 == 2)
        {

          v12 = 1;
          return v12 & 1;
        }

        goto LABEL_17;
      }

      v17(&v30, v16, v15);
      v10 = v26;
      switch(v30)
      {
        case 4:

          break;
        default:
          v3 = sub_257ED0640();

          if ((v3 & 1) == 0)
          {
            goto LABEL_16;
          }

          break;
      }

      v12 = (*(v27 + 8))(v29) ^ 1;
      return v12 & 1;
  }
}

void sub_257CAF984(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      v20 = v4 + 32;
      v21 = v5;
      v22 = v4;
      while (v6 < *(v4 + 16))
      {
        v8 = *(v7 + 16 * v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0, &unk_257EDB120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70F0, &qword_257EE00A8);
        if (swift_dynamicCast())
        {
          v9 = *(&v24 + 1);
          v10 = v25;
          __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
          v11 = (*(v10 + 8))(v9, v10);
          v12 = v11;
          if (v11 >> 62)
          {
            v13 = sub_257ED0210();
            v14 = v8;
            if (v13)
            {
LABEL_10:
              v15 = 0;
              while (1)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v16 = MEMORY[0x259C72E20](v15, v12);
                }

                else
                {
                  if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_23;
                  }

                  v16 = *(v12 + 8 * v15 + 32);
                }

                v17 = v16;
                v18 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  break;
                }

                [v16 rotateIfPossibleTo_];

                ++v15;
                v14 = v8;
                if (v18 == v13)
                {
                  goto LABEL_19;
                }
              }

              __break(1u);
LABEL_23:
              __break(1u);
              break;
            }
          }

          else
          {
            v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v14 = v8;
            if (v13)
            {
              goto LABEL_10;
            }
          }

LABEL_19:

          __swift_destroy_boxed_opaque_existential_0(&v23);
          v5 = v21;
          v4 = v22;
          v7 = v20;
        }

        else
        {

          v25 = 0;
          v23 = 0u;
          v24 = 0u;
          sub_257CAFCF4(&v23);
        }

        if (++v6 == v5)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
    }
  }
}

id sub_257CAFC20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonRowBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CAFCF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70F8, &unk_257EE00B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257CAFD5C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_257EB6FD8(v7, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_257CAFFEC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray] = MEMORY[0x277D84F90];
  v8 = AXIsInternalInstall();
  v9 = &unk_2869049C0;
  if (!v8)
  {
    v9 = v7;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections] = v9;
  v10 = AXIsInternalInstall();
  v11 = &unk_2869049E8;
  if (!v10)
  {
    v11 = v7;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks] = v11;
  v12 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v3[v12] = v15;
  if (AXIsInternalInstall())
  {
    if (a2)
    {
      v17 = sub_257ECF4C0();
    }

    else
    {
      v17 = 0;
    }

    v20.receiver = v3;
    v20.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, v17, a3);

    return v18;
  }

  else
  {
    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257CB0334(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECF4C0();
  v7 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = sub_257ECCEA0();
  v10 = sub_257C6B1C0(v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      v40 = sub_257ECCE60();
      if (v40 > 2)
      {
        return v8;
      }

      v41 = v40;
      v42 = [v8 textLabel];
      if (v42)
      {
        v43 = v42;
        sub_257C6A188(v41);
        v44 = sub_257ECF4C0();

        [v43 setText_];
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v45 = qword_2815447E0;

      if (v45 != -1)
      {
        v46 = swift_once();
      }

      MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
      sub_257ECFD50();

      if (v55 == v41)
      {
        v39 = 3;
      }

      else
      {
        v39 = 0;
      }

      goto LABEL_48;
    }

    v18 = [v8 textLabel];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks);
      v21 = sub_257ECCE60();
      if ((v21 & 0x8000000000000000) != 0)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v21 >= *(v20 + 16))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        a2 = MEMORY[0x259C72E20](a2);
LABEL_10:
        swift_endAccess();
        v15 = [v8 textLabel];
        if (v15)
        {
          v16 = v15;
          if (*(a2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8))
          {

            v17 = sub_257ECF4C0();
          }

          else
          {
            v17 = 0;
          }

          [v16 setText_];
        }

        if (qword_281544FE0 == -1)
        {
          goto LABEL_52;
        }

        goto LABEL_65;
      }

      sub_257C69DB4(*(v20 + v21 + 32));
      v22 = sub_257ECF4C0();

      [v19 setText_];
    }

    v23 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks);
    v24 = sub_257ECCE60();
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v23 + 16))
    {
      if (*(v23 + v24 + 32) != 1)
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v51 = qword_2815447E0;

        if (v51 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_68;
      }

      if (qword_281544FE0 == -1)
      {
LABEL_22:
        swift_beginAccess();
        v25 = qword_2815447E0;

        if (v25 == -1)
        {
LABEL_45:
          MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
          sub_257ECFD50();

          if (v55)
          {
            v39 = 3;
          }

          else
          {
            v39 = 0;
          }

          goto LABEL_48;
        }

LABEL_68:
        v26 = swift_once();
        goto LABEL_45;
      }

LABEL_67:
      swift_once();
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_61;
  }

  if (v10 == 2)
  {
    if (sub_257ECCE60())
    {
      return v8;
    }

    v31 = [v8 textLabel];
    if (v31)
    {
      v32 = v31;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass_];
      v35 = sub_257ECF4C0();
      v36 = sub_257ECF4C0();
      v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

      sub_257ECF500();
      v38 = sub_257ECF4C0();

      [v32 setText_];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    if (*(*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) + 16))
    {
      v39 = 3;
    }

    else
    {
      v39 = 0;
    }

LABEL_48:
    [v8 setAccessoryType_];
    [v8 setAccessoryView_];
    return v8;
  }

  if (v10 != 3)
  {
    return v8;
  }

  v11 = sub_257ECCE60();
  v12 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (v13 >> 62)
  {
    if (v11 >= sub_257ED0210())
    {
      return v8;
    }
  }

  else if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v8;
  }

  a2 = sub_257ECCE60();
  swift_beginAccess();
  v14 = *(v3 + v12);
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      a2 = *(v14 + 8 * a2 + 32);
      sub_257ECC3F0();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_67;
  }

  __break(1u);
LABEL_65:
  swift_once();
LABEL_52:
  v52 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
  sub_257ECC3F0();
  if (sub_257C6AB98(a2, v52))
  {
    v53 = 3;
  }

  else
  {
    v53 = 0;
  }

  [v8 setAccessoryType_];
  [v8 setAccessoryView_];

  return v8;
}

void sub_257CB0D68(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v131 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v130 - v15;
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v130 - v22;
  v136 = sub_257ECCEB0();
  v132 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v24, v25, v26, v27);
  v29 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v36 = &v130 - v35;
  v37 = sub_257ECF120();
  v135 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v43 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_257ECCE30();
  v137 = [a1 cellForRowAtIndexPath_];

  if (!v137)
  {
    return;
  }

  v45 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v45 animated:1];

  v46 = sub_257ECCEA0();
  v47 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections);
  if (v46 >= *(v47 + 16))
  {
    goto LABEL_33;
  }

  v48 = sub_257ECCEA0();
  if ((v48 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v48 >= *(v47 + 16))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (*(v47 + v48 + 32) > 1u)
  {
    if (*(v47 + v48 + 32) != 2)
    {
      v16 = sub_257ECCE60();
      v47 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
      swift_beginAccess();
      v79 = *(v1 + v47);
      if (!(v79 >> 62))
      {
        if (v16 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_62:

          return;
        }

LABEL_38:
        v80 = sub_257ECCE60();
        swift_beginAccess();
        v81 = *(v1 + v47);
        if ((v81 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x259C72E20](v80);
        }

        else
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_72:
            swift_once();
LABEL_43:
            v82 = qword_281548348;
            v83 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile;
            v84 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
            sub_257ECC3F0();
            if (sub_257C6AB98(v80, v84))
            {

LABEL_85:

              return;
            }

            v100 = *(v2 + v47);
            v135 = v82;
            v130 = v83;
            if (v100 >> 62)
            {
              v115 = sub_257ED0210();
              if (v115 < 0)
              {
                __break(1u);
              }

              v101 = v115;
              if (!v115)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v101)
              {
LABEL_80:
                [v137 setAccessoryType_];
                v116 = v131;
                sub_257ECD420();
                sub_257ECC3F0();
                v117 = sub_257ECDA20();
                v118 = sub_257ECFBD0();

                if (os_log_type_enabled(v117, v118))
                {
                  v119 = swift_slowAlloc();
                  v120 = swift_slowAlloc();
                  v139 = v120;
                  *v119 = 136315138;
                  v121 = *(v80 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
                  if (!v121)
                  {
                    __break(1u);
                    return;
                  }

                  v122 = v120;
                  v123 = *(v80 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);

                  v124 = sub_257BF1FC8(v123, v121, &v139);

                  *(v119 + 4) = v124;
                  _os_log_impl(&dword_257BAC000, v117, v118, "New people detection replay file: %s", v119, 0xCu);
                  v125 = __swift_destroy_boxed_opaque_existential_0(v122);
                  MEMORY[0x259C74820](v122, -1, -1, v125);
                  MEMORY[0x259C74820](v119, -1, -1);
                }

                (*(v133 + 8))(v116, v134);
                v126 = v135;
                v127 = v130;
                v128 = sub_257ECC3F0();
                v129 = sub_257C6AB98(v128, v80);

                if ((v129 & 1) == 0)
                {
                  *(v126 + v127) = v80;
                }

                goto LABEL_85;
              }
            }

            v102 = 0;
            v103 = (v132 + 8);
            do
            {
              MEMORY[0x259C6F970](v102, 3);
              v104 = sub_257ECCE30();
              v105 = [a1 cellForRowAtIndexPath_];

              if (v105)
              {
                [v105 setAccessoryType_];
              }

              ++v102;
              (*v103)(v29, v136);
            }

            while (v101 != v102);
            goto LABEL_80;
          }

          if (v80 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_75;
          }

          v80 = *(v81 + 8 * v80 + 32);
          sub_257ECC3F0();
        }

        swift_endAccess();
        if (qword_281544FE0 == -1)
        {
          goto LABEL_43;
        }

        goto LABEL_72;
      }

LABEL_66:
      if (v16 >= sub_257ED0210())
      {
        goto LABEL_62;
      }

      goto LABEL_38;
    }

    if (!sub_257ECCE60())
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v58 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions);
      if (*(v58 + 16))
      {
        [v137 setAccessoryType_];
        v59 = MEMORY[0x277D84F90];
      }

      else
      {

        [v137 setAccessoryType_];
        v142[0] = v58;
        sub_257EB0FF0(&unk_286904A88);
        v59 = v142[0];
      }

      sub_257ECD420();

      v106 = sub_257ECDA20();
      v107 = sub_257ECFBD0();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v142[0] = v109;
        *v108 = 136315138;
        v110 = MEMORY[0x259C72340](v59, &type metadata for DetectionRecording);
        v112 = v111;

        v113 = sub_257BF1FC8(v110, v112, v142);

        *(v108 + 4) = v113;
        _os_log_impl(&dword_257BAC000, v106, v107, "New people detection recording options: %s", v108, 0xCu);
        v114 = __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x259C74820](v109, -1, -1, v114);
        MEMORY[0x259C74820](v108, -1, -1);
      }

      else
      {
      }

      (*(v133 + 8))(v16, v134);
      sub_257D5854C(v59);

      goto LABEL_62;
    }
  }

  else
  {
    if (!*(v47 + v48 + 32))
    {
      v16 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks);
      v49 = sub_257ECCE60();
      if ((v49 & 0x8000000000000000) == 0)
      {
        if (v49 < *(v16 + 2))
        {
          if (v16[v49 + 32] == 1)
          {
            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            v50 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionCenterDetection;
            v51 = swift_beginAccess();
            v56 = *(v50 + 8);
            v57 = *(v50 + 16);
            v139 = *v50;
            v140 = v56;
            v141 = v57;
            if (qword_2815447E0 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_76;
          }

          if (qword_281544FE0 == -1)
          {
LABEL_46:
            v50 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionAudioBalancing;
            v51 = swift_beginAccess();
            v85 = *(v50 + 8);
            v86 = *(v50 + 16);
            v139 = *v50;
            v140 = v85;
            v141 = v86;
            if (qword_2815447E0 == -1)
            {
LABEL_47:
              MEMORY[0x28223BE20](v51, v52, v53, v54, v55);
              *(&v130 - 2) = &v139;
              sub_257ECFD50();
              LOBYTE(v139) = (v138 & 1) == 0;
              v87 = sub_257ECF110();
              MEMORY[0x28223BE20](v87, v88, v89, v90, v91);
              *(&v130 - 2) = &v139;
              *(&v130 - 1) = v50;
              sub_257ECFD40();
              (*(v135 + 8))(v43, v37);
              v92 = swift_endAccess();
              v93 = *(v50 + 8);
              v94 = *(v50 + 16);
              v142[0] = *v50;
              v142[1] = v93;
              v143 = v94;
              MEMORY[0x28223BE20](v92, v95, v96, v97, v98);
              *(&v130 - 2) = v142;

              sub_257ECFD50();

              if (v139)
              {
                v99 = 3;
              }

              else
              {
                v99 = 0;
              }

              [v137 setAccessoryType_];
              goto LABEL_62;
            }

LABEL_76:
            v51 = swift_once();
            goto LABEL_47;
          }

LABEL_75:
          swift_once();
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    v60 = sub_257ECCE60();
    if (v60 < 3)
    {
      v16 = v60;
      if (qword_281544FE0 == -1)
      {
LABEL_22:
        v61 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionDebugOption;
        swift_beginAccess();
        LOBYTE(v139) = v16;
        if (qword_2815447E0 != -1)
        {
          swift_once();
        }

        v62 = sub_257ECF110();
        MEMORY[0x28223BE20](v62, v63, v64, v65, v66);
        *(&v130 - 2) = &v139;
        *(&v130 - 1) = v61;
        sub_257ECFD40();
        (*(v135 + 8))(v43, v37);
        swift_endAccess();
        v67 = (v132 + 8);
        MEMORY[0x259C6F970](byte_286904A80, 1);
        v68 = sub_257ECCE30();
        v69 = [a1 cellForRowAtIndexPath_];

        if (v69)
        {
          [v69 setAccessoryType_];
        }

        v70 = *v67;
        (*v67)(v36, v136);
        MEMORY[0x259C6F970](byte_286904A81, 1);
        v71 = sub_257ECCE30();
        v72 = [a1 cellForRowAtIndexPath_];

        if (v72)
        {
          [v72 setAccessoryType_];
        }

        v70(v36, v136);
        MEMORY[0x259C6F970](byte_286904A82, 1);
        v73 = sub_257ECCE30();
        v74 = [a1 cellForRowAtIndexPath_];

        if (v74)
        {
          [v74 setAccessoryType_];
        }

        v70(v36, v136);
        [v137 setAccessoryType_];
        sub_257ECD420();
        v75 = sub_257ECDA20();
        v76 = sub_257ECFBD0();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 134217984;
          *(v77 + 4) = v16;
          _os_log_impl(&dword_257BAC000, v75, v76, "New people detection debug option: %ld", v77, 0xCu);
          MEMORY[0x259C74820](v77, -1, -1);
        }

        (*(v133 + 8))(v23, v134);
        return;
      }

LABEL_69:
      swift_once();
      goto LABEL_22;
    }
  }

LABEL_33:
  v78 = v137;
}

void sub_257CB2040(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v76 = a2;
  v71 = a1;
  v78 = *MEMORY[0x277D85DE8];
  v6 = sub_257ECDA30();
  v73 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECCEB0();
  v74 = *(v12 - 8);
  v75 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v19 - 8, v20, v21, v22, v23);
  v25 = &v70 - v24;
  v26 = sub_257ECCB70();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28, v29, v30, v31);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_257ECCEA0() != 3)
  {
    return;
  }

  v34 = sub_257ECCE60();
  v35 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  v36 = *(v4 + v35);
  if (v36 >> 62)
  {
    if (v34 >= sub_257ED0210())
    {
      return;
    }
  }

  else if (v34 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v70 = v6;
  v37 = v33;
  v38 = v26;
  v39 = v27;
  v40 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections);
  v41 = a3;
  v42 = sub_257ECCEA0();
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v42 >= *(v40 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    v44 = MEMORY[0x259C72E20](v41);
LABEL_11:
    swift_endAccess();
    v45 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
    swift_beginAccess();
    sub_257C1C614(v44 + v45, v25);
    if ((*(v40 + 48))(v25, 1, v39) == 1)
    {

      sub_257BE4084(v25, &qword_27F8F5F30, &qword_257EDA9E0);
      return;
    }

    (*(v40 + 32))(v37, v25, v39);
    if (v76 != 1)
    {
      (*(v40 + 8))(v37, v39);

      return;
    }

    v76 = v44;
    if (qword_281544FE0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

  if (*(v40 + v42 + 32) != 3)
  {
    return;
  }

  v40 = v39;
  v39 = v38;
  v41 = sub_257ECCE60();
  swift_beginAccess();
  v43 = *(v4 + v35);
  if ((v43 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v41 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v43 + 8 * v41 + 32);
    sub_257ECC3F0();
    goto LABEL_11;
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_15:
  v46 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
  sub_257ECC3F0();
  v47 = sub_257C6AB98(v76, v46);

  v48 = v37;
  if (v47)
  {
    v49 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView);
    v50 = sub_257ECCEA0();
    MEMORY[0x259C6F970](0, v50);
    sub_257CB0D68(v49);
    (*(v74 + 8))(v18, v75);
  }

  v51 = [objc_opt_self() defaultManager];
  v52 = sub_257ECCAE0();
  v77[0] = 0;
  v53 = [v51 removeItemAtURL:v52 error:v77];

  if (v53)
  {
    v54 = v77[0];
    v55 = sub_257ECCE60();
    swift_beginAccess();
    sub_257C1C9AC(v55);
    swift_endAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
    v56 = v74;
    v57 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_257ED6D30;
    (*(v56 + 16))(v58 + v57, a3, v75);
    v59 = sub_257ECF7F0();

    [v71 deleteRowsAtIndexPaths:v59 withRowAnimation:0];
  }

  else
  {
    v60 = v77[0];
    v61 = sub_257ECC9F0();

    swift_willThrow();
    v62 = v72;
    sub_257ECD420();
    v63 = v61;
    v64 = sub_257ECDA20();
    v65 = sub_257ECFBD0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      v68 = v61;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_257BAC000, v64, v65, "Cannot delete recorded file: %@", v66, 0xCu);
      sub_257BE4084(v67, &unk_27F8F5490, &unk_257EDC470);
      MEMORY[0x259C74820](v67, -1, -1);
      MEMORY[0x259C74820](v66, -1, -1);
    }

    (*(v73 + 8))(v62, v70);
  }

  (*(v40 + 8))(v48, v39);
}

void sub_257CB28D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  if (v3 == 2)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3)
  {
    return;
  }

  v4 = *a2;
  v5 = *(*a2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  if (v5 == 2)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    return;
  }

  v6 = sub_257ECF4C0();
  v7 = [v6 stringByDeletingPathExtension];

  v8 = sub_257ECF500();
  v10 = v9;

  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
  v12 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
  if (!v12)
  {
    v14 = (v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
    v15 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v13 = v11 == v8 && v12 == v10;
  if (v13 || (sub_257ED0640() & 1) != 0)
  {

    return;
  }

  v14 = (v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
  v15 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = *v14;
  v17 = *v14 == v8 && v15 == v10;
  if (v17 || (sub_257ED0640() & 1) != 0)
  {

    return;
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  if (v15 != v12 || v16 != v11)
  {
    sub_257ED0640();
  }
}

uint64_t sub_257CB2A94(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_257C69A3C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_257CB2B10(v6);
  return sub_257ED0340();
}

void sub_257CB2B10(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DetectionRecordedFile(0);
        v6 = sub_257ECF850();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_257CB2EC4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_257CB2C14(0, v2, 1, a1);
  }
}

void sub_257CB2C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = *a4;
  v5 = (*a4 + 8 * a3 - 8);
  v6 = a1 - a3;
  v30 = *a4;
LABEL_7:
  v28 = v5;
  v29 = a3;
  v7 = *(v4 + 8 * a3);
  v27 = v6;
  while (1)
  {
    v8 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v8 == 2)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      v9 = *v5;
      v10 = *(*v5 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
      if (v10 == 2)
      {
        goto LABEL_38;
      }

      if (v10)
      {
        goto LABEL_6;
      }

      sub_257ECC3F0();
      sub_257ECC3F0();
      v11 = sub_257ECF4C0();
      v12 = [v11 stringByDeletingPathExtension];

      v13 = sub_257ECF500();
      v15 = v14;

      v16 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v17 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (v17)
      {
        v18 = v16 == v13 && v17 == v15;
        if (v18 || (sub_257ED0640() & 1) != 0)
        {

          v4 = v30;
          goto LABEL_31;
        }

        v31 = v16;
        v19 = (v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v20 = *(v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v20)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v31 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v19 = (v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v20 = *(v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v20)
        {
          goto LABEL_39;
        }
      }

      v21 = *v19;
      v22 = *v19 == v13 && v20 == v15;
      if (v22 || (sub_257ED0640() & 1) != 0)
      {

LABEL_5:
        v4 = v30;
LABEL_6:
        a3 = v29 + 1;
        v5 = v28 + 1;
        v6 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return;
        }

        goto LABEL_7;
      }

      if (!v17)
      {
        goto LABEL_39;
      }

      if (v20 == v17 && v21 == v31)
      {

        goto LABEL_5;
      }

      v23 = sub_257ED0640();

      v4 = v30;
      if ((v23 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_31:
    if (!v4)
    {
      goto LABEL_37;
    }

    v24 = *v5;
    v7 = v5[1];
    *v5 = v7;
    v5[1] = v24;
    --v5;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_257CB2EC4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_149:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_182;
      }

      goto LABEL_151;
    }

    goto LABEL_195;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
  while (1)
  {
    v10 = v7;
    v11 = v7 + 1;
    v130 = v8;
    if (v7 + 1 < v6)
    {
      break;
    }

LABEL_52:
    v43 = a3[1];
    if (v11 >= v43)
    {
      goto LABEL_95;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_178;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_95;
    }

    v44 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_179;
    }

    if (v44 >= v43)
    {
      v44 = a3[1];
    }

    if (v44 < v10)
    {
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    if (v11 == v44)
    {
      goto LABEL_95;
    }

    v119 = v5;
    v121 = v10;
    v45 = *a3;
    v46 = (*a3 + 8 * v11 - 8);
    v47 = v10 - v11;
    v123 = v44;
    v132 = *a3;
    while (2)
    {
      v125 = v46;
      v127 = v11;
      v48 = *(v45 + 8 * v11);
      v124 = v47;
      while (1)
      {
        v49 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
        if (v49 == 2)
        {
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          return;
        }

        if ((v49 & 1) == 0)
        {
          break;
        }

LABEL_89:
        if (!v45)
        {
          goto LABEL_184;
        }

        v65 = *v46;
        v48 = v46[1];
        *v46 = v48;
        v46[1] = v65;
        --v46;
        if (__CFADD__(v47++, 1))
        {
          goto LABEL_64;
        }
      }

      v50 = *v46;
      v51 = *(*v46 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
      if (v51 == 2)
      {
        goto LABEL_185;
      }

      if (v51)
      {
        goto LABEL_63;
      }

      sub_257ECC3F0();
      sub_257ECC3F0();
      v52 = sub_257ECF4C0();
      v53 = [v52 stringByDeletingPathExtension];

      v54 = sub_257ECF500();
      v56 = v55;

      v57 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v58 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v58)
      {
        v134 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v60 = (v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v61 = *(v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v61)
        {
          goto LABEL_186;
        }

        goto LABEL_80;
      }

      v59 = v57 == v54 && v58 == v56;
      if (v59 || (sub_257ED0640() & 1) != 0)
      {

        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        v45 = v132;
        goto LABEL_89;
      }

      v134 = v57;
      v60 = (v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v61 = *(v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v61)
      {
        goto LABEL_189;
      }

LABEL_80:
      v62 = *v60;
      v63 = *v60 == v54 && v61 == v56;
      if (v63 || (sub_257ED0640() & 1) != 0)
      {

        goto LABEL_62;
      }

      if (!v58)
      {
        goto LABEL_186;
      }

      if (v61 != v58 || v62 != v134)
      {
        v64 = sub_257ED0640();

        v8 = v130;
        v45 = v132;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        if ((v64 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_89;
      }

LABEL_62:
      v8 = v130;
      v45 = v132;
LABEL_63:
      v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
LABEL_64:
      v11 = v127 + 1;
      v46 = v125 + 1;
      v47 = v124 - 1;
      if (v127 + 1 != v123)
      {
        continue;
      }

      break;
    }

    v11 = v123;
    v5 = v119;
    v10 = v121;
LABEL_95:
    if (v11 < v10)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_257BFCB00(0, *(v8 + 2) + 1, 1, v8);
    }

    v68 = *(v8 + 2);
    v67 = *(v8 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v8 = sub_257BFCB00((v67 > 1), v68 + 1, 1, v8);
    }

    *(v8 + 2) = v69;
    v70 = &v8[16 * v68];
    *(v70 + 4) = v10;
    *(v70 + 5) = v11;
    v128 = v11;
    v71 = *a1;
    if (!*a1)
    {
      goto LABEL_193;
    }

    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v8 + 4);
          v74 = *(v8 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_115:
          if (v76)
          {
            goto LABEL_166;
          }

          v89 = &v8[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_169;
          }

          v95 = &v8[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_172;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_173;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_136;
          }

          goto LABEL_129;
        }

        v99 = &v8[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_129:
        if (v94)
        {
          goto LABEL_168;
        }

        v102 = &v8[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_171;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_136:
        v110 = v72 - 1;
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        if (!*a3)
        {
          goto LABEL_187;
        }

        v111 = *&v8[16 * v110 + 32];
        v112 = *&v8[16 * v72 + 40];
        sub_257CB3910((*a3 + 8 * v111), (*a3 + 8 * *&v8[16 * v72 + 32]), (*a3 + 8 * v112), v71);
        if (v5)
        {
          goto LABEL_159;
        }

        if (v112 < v111)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_257C66E20(v8);
        }

        if (v110 >= *(v8 + 2))
        {
          goto LABEL_163;
        }

        v113 = &v8[16 * v110];
        *(v113 + 4) = v111;
        *(v113 + 5) = v112;
        v137 = v8;
        sub_257C66D94(v72);
        v8 = v137;
        v69 = *(v137 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v8[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_164;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_165;
      }

      v84 = &v8[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_167;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_170;
      }

      if (v88 >= v80)
      {
        v106 = &v8[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_174;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_136;
      }

      goto LABEL_115;
    }

LABEL_3:
    v7 = v128;
    v6 = a3[1];
    if (v128 >= v6)
    {
      goto LABEL_149;
    }
  }

  v133 = v6;
  v12 = v7;
  v13 = *a3;
  v14 = *(*a3 + 8 * v11);
  v135 = *(*a3 + 8 * v7);
  v136 = v14;
  sub_257ECC3F0();
  sub_257ECC3F0();
  v15 = v5;
  sub_257CB28D0(&v136, &v135);
  if (v5)
  {

    return;
  }

  v131 = v16;

  v11 = v12 + 2;
  v17 = v133;
  v120 = v12;
  if (v12 + 2 >= v133)
  {
    v19 = v131;
LABEL_41:
    v10 = v120;
    if ((v19 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_44:
    if (v11 < v10)
    {
      goto LABEL_181;
    }

    goto LABEL_45;
  }

  v18 = (v13 + 8 * v12 + 16);
  v19 = v131;
  while (1)
  {
    v20 = *v18;
    v21 = *(*v18 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v21 == 2)
    {
      goto LABEL_188;
    }

    if (v21)
    {
      goto LABEL_9;
    }

    v22 = *(v18 - 1);
    v23 = *(v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v23 == 2)
    {
      goto LABEL_190;
    }

    if (v23)
    {
      if (v19)
      {
        break;
      }

      goto LABEL_10;
    }

    sub_257ECC3F0();
    sub_257ECC3F0();
    v24 = sub_257ECF4C0();
    v25 = [v24 stringByDeletingPathExtension];

    v26 = sub_257ECF500();
    v28 = v27;

    v29 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
    v30 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
    if (v30)
    {
      v31 = v29 == v26 && v30 == v28;
      if (v31 || (sub_257ED0640() & 1) != 0)
      {

        v8 = v130;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        v17 = v133;
        v19 = v131;
LABEL_9:
        if ((v19 & 1) == 0)
        {
          v10 = v120;
          goto LABEL_52;
        }

        goto LABEL_10;
      }

      v126 = v29;
      v32 = (v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v33 = *(v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v33)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v126 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v32 = (v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v33 = *(v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v33)
      {
        goto LABEL_194;
      }
    }

    v34 = *v32;
    v35 = *v32 == v26 && v33 == v28;
    if (v35 || (sub_257ED0640() & 1) != 0)
    {
    }

    else
    {
      if (!v30)
      {
        goto LABEL_194;
      }

      if (v33 != v30 || v34 != v126)
      {
        v36 = sub_257ED0640();

        v19 = v131;
        v5 = v15;
        v8 = v130;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        v17 = v133;
        if ((v131 ^ v36))
        {
          goto LABEL_41;
        }

        goto LABEL_10;
      }
    }

    v5 = v15;
    v8 = v130;
    v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
    v17 = v133;
    v19 = v131;
    if (v131)
    {
      break;
    }

LABEL_10:
    ++v18;
    if (v17 == ++v11)
    {
      v11 = v17;
      v10 = v120;
      if ((v19 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    }
  }

  v10 = v120;
  if (v11 >= v120)
  {
LABEL_45:
    if (v10 < v11)
    {
      v37 = 8 * v11 - 8;
      v38 = 8 * v10;
      v39 = v11;
      v40 = v10;
      while (1)
      {
        if (v40 != --v39)
        {
          v41 = *a3;
          if (!*a3)
          {
            goto LABEL_191;
          }

          v42 = *(v41 + v38);
          *(v41 + v38) = *(v41 + v37);
          *(v41 + v37) = v42;
        }

        ++v40;
        v37 -= 8;
        v38 += 8;
        if (v40 >= v39)
        {
          goto LABEL_52;
        }
      }
    }

    goto LABEL_52;
  }

LABEL_181:
  __break(1u);
LABEL_182:
  v8 = sub_257C66E20(v8);
LABEL_151:
  v114 = v5;
  v137 = v8;
  v115 = *(v8 + 2);
  if (v115 >= 2)
  {
    while (*a3)
    {
      v116 = *&v8[16 * v115];
      v5 = *&v8[16 * v115 + 24];
      sub_257CB3910((*a3 + 8 * v116), (*a3 + 8 * *&v8[16 * v115 + 16]), (*a3 + 8 * v5), v9);
      if (v114)
      {
        goto LABEL_159;
      }

      if (v5 < v116)
      {
        goto LABEL_175;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_257C66E20(v8);
      }

      if (v115 - 2 >= *(v8 + 2))
      {
        goto LABEL_176;
      }

      v117 = &v8[16 * v115];
      *v117 = v116;
      *(v117 + 1) = v5;
      v137 = v8;
      sub_257C66D94(v115 - 1);
      v8 = v137;
      v115 = *(v137 + 2);
      if (v115 <= 1)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_192;
  }

LABEL_159:
}

void sub_257CB3910(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != a2 || &a2[8 * v11] <= a4)
    {
      v34 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v34;
    }

    v35 = a2;
    v14 = &v4[8 * v11];
    if (v9 < 8 || a2 <= __src)
    {
      goto LABEL_91;
    }

    v63 = v4;
    while (1)
    {
      __dsta = v35;
      v36 = v35 - 8;
      v5 -= 8;
      v37 = v14;
      v56 = v35 - 8;
      while (1)
      {
        v39 = *(v37 - 1);
        v37 -= 8;
        v38 = v39;
        v40 = *(v39 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
        if (v40 == 2)
        {
          goto LABEL_96;
        }

        if (v40)
        {
          goto LABEL_84;
        }

        v41 = *v36;
        v42 = *(*v36 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
        if (v42 == 2)
        {
          goto LABEL_97;
        }

        if (v42)
        {
          goto LABEL_75;
        }

        v61 = v5;
        v65 = v14;
        sub_257ECC3F0();
        sub_257ECC3F0();
        v43 = sub_257ECF4C0();
        v44 = [v43 stringByDeletingPathExtension];

        v45 = sub_257ECF500();
        v47 = v46;

        v49 = *(v38 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v48 = *(v38 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v48)
        {
          v51 = (v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
          v52 = *(v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
          if (!v52)
          {
            goto LABEL_99;
          }

          goto LABEL_68;
        }

        v50 = v49 == v45 && v48 == v47;
        if (v50 || (sub_257ED0640() & 1) != 0)
        {
          break;
        }

        v51 = (v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v52 = *(v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v52)
        {
          goto LABEL_100;
        }

LABEL_68:
        v53 = *v51;
        v54 = *v51 == v45 && v52 == v47;
        if (v54 || (sub_257ED0640() & 1) != 0)
        {
        }

        else
        {
          if (!v48)
          {
            goto LABEL_99;
          }

          if (v52 != v48 || v53 != v49)
          {
            v55 = sub_257ED0640();

            v5 = v61;
            v4 = v63;
            v14 = v65;
            v36 = v56;
            if (v55)
            {
              goto LABEL_84;
            }

            goto LABEL_75;
          }
        }

        v5 = v61;
        v4 = v63;
        v14 = v65;
        v36 = v56;
LABEL_75:
        if (v5 + 8 != v14)
        {
          *v5 = *v37;
        }

        v5 -= 8;
        v14 = v37;
        if (v37 <= v4)
        {
          v14 = v37;
          v35 = __dsta;
          goto LABEL_91;
        }
      }

      v14 = v65;
      v36 = v56;
      v5 = v61;
LABEL_84:
      if (v5 + 8 != __dsta)
      {
        *v5 = *v36;
      }

      if (v14 > v4)
      {
        v35 = v36;
        if (v36 > __src)
        {
          continue;
        }
      }

      v35 = v36;
LABEL_91:
      if (v35 != v4 || v35 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v35, v4, 8 * ((v14 - v4) / 8));
      }

      return;
    }
  }

  v12 = a2;
  v13 = __src;
  if (a4 != __src || &__src[8 * v8] <= a4)
  {
    memmove(a4, __src, 8 * v8);
  }

  v14 = &v4[8 * v8];
  if (v6 < 8 || (v15 = v12, v12 >= v5))
  {
LABEL_89:
    v35 = v13;
    goto LABEL_91;
  }

  v64 = v14;
  while (1)
  {
    v16 = *v15;
    v17 = *(*v15 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v17 == 2)
    {
      break;
    }

    if (v17)
    {
      goto LABEL_14;
    }

    v19 = *v4;
    v20 = *(*v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v20 == 2)
    {
      goto LABEL_98;
    }

    if ((v20 & 1) == 0)
    {
      v57 = v13;
      __dst = v15;
      v62 = v4;
      sub_257ECC3F0();
      sub_257ECC3F0();
      v21 = sub_257ECF4C0();
      v22 = [v21 stringByDeletingPathExtension];

      v23 = sub_257ECF500();
      v25 = v24;

      v27 = *(v16 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v26 = *(v16 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (v26)
      {
        v28 = v27 == v23 && v26 == v25;
        if (v28 || (sub_257ED0640() & 1) != 0)
        {

          v4 = v62;
          v13 = v57;
          v15 = __dst;
LABEL_14:
          v18 = v15;
          v28 = v13 == v15;
          v15 += 8;
          if (v28)
          {
            goto LABEL_16;
          }

LABEL_15:
          *v13 = *v18;
          goto LABEL_16;
        }

        v29 = (v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v30 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v30)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v29 = (v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v30 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v30)
        {
          goto LABEL_101;
        }
      }

      v31 = *v29;
      v32 = *v29 == v23 && v30 == v25;
      if (v32 || (sub_257ED0640() & 1) != 0)
      {

LABEL_37:
        v4 = v62;
        v13 = v57;
        v15 = __dst;
        v14 = v64;
        goto LABEL_38;
      }

      if (!v26)
      {
        goto LABEL_101;
      }

      if (v30 == v26 && v31 == v27)
      {

        goto LABEL_37;
      }

      v33 = sub_257ED0640();

      v4 = v62;
      v13 = v57;
      v15 = __dst;
      v14 = v64;
      if (v33)
      {
        goto LABEL_14;
      }
    }

LABEL_38:
    v18 = v4;
    v28 = v13 == v4;
    v4 += 8;
    if (!v28)
    {
      goto LABEL_15;
    }

LABEL_16:
    v13 += 8;
    if (v4 >= v14 || v15 >= v5)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

unint64_t sub_257CB3F94(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_257ED0210();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

id sub_257CB4058()
{
  v91[3] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v84 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v83 = &v75 - v12;
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v19 = &v75 - v18;
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v76 = &v75 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v26 - 8, v27, v28, v29, v30);
  v32 = &v75 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_257ED9BF0;
  v81 = type metadata accessor for DetectionRecordedFile(0);
  v34 = swift_allocObject();
  v35 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  v77 = v1;
  v36 = *(v1 + 56);
  v36(v34 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url, 1, 1, v0);
  v37 = v0;
  v79 = v36;
  v80 = v1 + 56;
  v36(v32, 1, 1, v0);
  swift_beginAccess();
  v82 = v32;
  sub_257CB4B80(v32, v34 + v35);
  swift_endAccess();
  *(v34 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive) = 1;
  *(v34 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name) = xmmword_257EE00C0;
  *(v33 + 32) = v34;
  v90 = v33;
  sub_257CF4C78();
  if (!v38)
  {
    return v33;
  }

  v39 = v76;
  sub_257ECCAB0();

  v40 = [objc_opt_self() defaultManager];
  v41 = sub_257ECCAE0();
  v91[0] = 0;
  v42 = [v40 contentsOfDirectoryAtURL:v41 includingPropertiesForKeys:0 options:1 error:v91];

  v43 = v91[0];
  if (v42)
  {
    v44 = sub_257ECF810();
    v45 = v43;

    v46 = v44;
    v47 = *(v44 + 16);
    v48 = v77;
    if (v47)
    {
      v88 = *(v77 + 16);
      v89 = v77 + 16;
      v49 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v75 = v46;
      v50 = v46 + v49;
      v51 = *(v77 + 72);
      v85 = (v77 + 8);
      v86 = v51;
      v78 = v19;
      v88(v19, v46 + v49, v37);
      while (1)
      {
        sub_257ECCA80();
        v52 = sub_257ECF580();
        v54 = v53;

        if (v52 == 5656397 && v54 == 0xE300000000000000)
        {
        }

        else
        {
          v55 = sub_257ED0640();

          if ((v55 & 1) == 0)
          {
            (*v85)(v19, v37);
            goto LABEL_6;
          }
        }

        v87 = v47;
        v56 = v83;
        v57 = v88;
        v88(v83, v19, v37);
        v58 = swift_allocObject();
        v59 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
        v60 = v79;
        v79(v58 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url, 1, 1, v37);
        v61 = v82;
        v57(v82, v56, v37);
        v60(v61, 0, 1, v37);
        swift_beginAccess();
        sub_257CB4B80(v61, v58 + v59);
        swift_endAccess();
        *(v58 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive) = 0;
        v62 = v78;
        v63 = v37;
        v64 = v84;
        sub_257ECCAF0();
        v65 = sub_257ECCAD0();
        v67 = v66;
        v68 = *v85;
        (*v85)(v64, v63);
        v37 = v63;
        v69 = (v68)(v56, v63);
        v70 = (v58 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        *v70 = v65;
        v70[1] = v67;
        MEMORY[0x259C72300](v69);
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_257ECF830();
        }

        sub_257ECF860();
        v68(v62, v63);
        v19 = v62;
        v47 = v87;
LABEL_6:
        v50 += v86;
        if (!--v47)
        {

          v39 = v76;
          v48 = v77;
          goto LABEL_19;
        }

        v88(v19, v50, v37);
      }
    }

LABEL_19:

    v91[0] = sub_257CB3F94(v74, sub_257C69A4C, sub_257EB4D88);
    sub_257CB2A94(v91);
    (*(v48 + 8))(v39, v37);

    return v91[0];
  }

  else
  {
    v72 = v91[0];
    v73 = sub_257ECC9F0();

    swift_willThrow();
    (*(v77 + 8))(v39, v37);
    return v33;
  }
}

void sub_257CB473C()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray) = MEMORY[0x277D84F90];
  v2 = AXIsInternalInstall();
  v3 = &unk_286904A10;
  if (!v2)
  {
    v3 = v1;
  }

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections) = v3;
  v4 = AXIsInternalInstall();
  v5 = &unk_286904A38;
  if (!v4)
  {
    v5 = v1;
  }

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks) = v5;
  v6 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemYellowColor];
  [v9 setTintColor_];

  [v9 setClipsToBounds_];
  *(v0 + v6) = v9;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CB4894(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections);
  if (*(v3 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    return sub_257ED0210();
  }

  v4 = *(v3 + a1 + 32);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return 1;
    }

    v6 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (!(v7 >> 62))
    {
      return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return sub_257ED0210();
  }

  if (v4)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_257CB4954()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v19[-v7];
  if (sub_257ECCEA0() != 3)
  {
    return 0;
  }

  v9 = sub_257ECCE60();
  v10 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (v11 >> 62)
  {
    if (v9 < sub_257ED0210())
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_4:
  v12 = sub_257ECCE60();
  result = swift_beginAccess();
  v14 = *(v1 + v10);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x259C72E20](v12);
    goto LABEL_8;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 8 * v12 + 32);
    sub_257ECC3F0();
LABEL_8:
    swift_endAccess();
    v16 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
    swift_beginAccess();
    sub_257C1C614(v15 + v16, v8);

    v17 = sub_257ECCB70();
    v18 = (*(*(v17 - 8) + 48))(v8, 1, v17) != 1;
    sub_257BE4084(v8, &qword_27F8F5F30, &qword_257EDA9E0);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_257CB4B48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D14394(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_257CB4B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double MAGAREventHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7760(&unk_257EDCE60, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  swift_endAccess();
  return result;
}

uint64_t MAGAREventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE9BF4(MEMORY[0x277D84F90]);
  return v0;
}

Swift::Void __swiftcall MAGAREventHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  sub_257C03F6C(countAndFlagsBits, object);
  v6 = v5;

  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C08CD4();
    }

    sub_257C09E7C();
    *(v2 + 16) = v8;
  }

  swift_endAccess();
}

uint64_t MAGAREventHandler.send(_:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *a1;
  *(v2 + 81) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 144) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  *(v2 + 152) = v6;
  *(v2 + 160) = v5;

  return MEMORY[0x2822009F8](sub_257CB4F20, v6, v5);
}

uint64_t sub_257CB4F20()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  v3 = *(v2 + 32);
  *(v0 + 82) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 176) = v6;
    *(v0 + 184) = v7;
    v9 = *(v0 + 81);
    v10 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = (*(v2 + 48) + v10);
    *(v0 + 192) = *v11;
    *(v0 + 200) = v11[1];
    v12 = (*(v2 + 56) + v10);
    v13 = *v12;
    *(v0 + 208) = v12[1];
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v9;

    sub_257ECC3F0();
    v17 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_257CB5150;

    return v17();
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_257CB5150()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_257CB5474;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_257CB527C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_257CB527C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 184);
  v4 = (*(v2 + 176) - 1) & *(v2 + 176);
  if (v4)
  {
    v5 = *(v2 + 168);
LABEL_7:
    *(v2 + 176) = v4;
    *(v2 + 184) = v3;
    v7 = *(v2 + 81);
    v8 = (v3 << 10) | (16 * __clz(__rbit64(v4)));
    v9 = (*(v5 + 48) + v8);
    *(v2 + 192) = *v9;
    *(v2 + 200) = v9[1];
    v10 = (*(v5 + 56) + v8);
    v11 = *v10;
    *(v2 + 208) = v10[1];
    *(v2 + 64) = *(v2 + 128);
    *(v2 + 80) = v7;

    sub_257ECC3F0();
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v2 + 216) = v12;
    *v12 = v2;
    v12[1] = sub_257CB5150;

    v14();
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 168);
      if (v6 >= (((1 << *(v2 + 82)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v13 = *(v2 + 8);

    v13();
  }
}

uint64_t sub_257CB5474()
{
  v35 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  v4 = *(v0 + 81);

  sub_257ECD4F0();

  sub_257C73068(v3, v2, v4);
  v5 = v1;
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBE0();

  sub_257CB57A8(v3, v2, v4);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 81);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v26 = *(v0 + 112);
    v27 = *(v0 + 104);
    v28 = *(v0 + 120);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315650;
    v15 = sub_257BF1FC8(v9, v8, &v29);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v30 = 0x746E657645205241;
    v31 = 0xEA0000000000203ALL;
    v32 = v11;
    v33 = v12;
    v34 = v10;
    v16 = MAGAREvent.AREventType.description.getter();
    MEMORY[0x259C72150](v16);

    v17 = sub_257BF1FC8(v30, v31, &v29);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_257ED0720();
    v20 = sub_257BF1FC8(v18, v19, &v29);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v6, v7, "Handler=%s error handling event=%s. Error=%s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v14, -1, -1);
    MEMORY[0x259C74820](v13, -1, -1);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t MAGAREventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_257CB57A8(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3 && a3 != 4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

LABEL_5:

    return;
  }
}

uint64_t MAGTextDetectionService.__allocating_init()()
{
  v0 = swift_allocObject();
  MAGTextDetectionService.init()();
  return v0;
}

uint64_t MAGTextDetectionService.init()()
{
  v21 = sub_257ECFD20();
  v0 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v1, v2, v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v12 = sub_257ECF190();
  MEMORY[0x28223BE20](v12 - 8, v13, v14, v15, v16);
  v20 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF180();
  v23 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200);
  sub_257ED0180();
  (*(v0 + 104))(v6, *MEMORY[0x277D85260], v21);
  v17 = sub_257ECFD80();
  v18 = v22;
  *(v22 + 16) = v17;
  return v18;
}

uint64_t sub_257CB5B50(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_257CB5B70, 0, 0);
}

uint64_t sub_257CB5B70()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_257BD2C2C(0, &qword_27F8F97F0, 0x277CE2CC8);
  *v2 = v0;
  v2[1] = sub_257CB5C80;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000257EFD650, sub_257CB7D2C, v1, v3);
}

uint64_t sub_257CB5C80()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257CB8DC8;
  }

  else
  {

    v2 = sub_257CB8DDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

double sub_257CB5D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[0] = a3;
  v5 = sub_257ECF120();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128, &qword_257EE01F8);
  v20 = *(v19 - 8);
  v25 = MEMORY[0x28223BE20](v19, v21, v22, v23, v24);
  v27 = v33 - v26;
  v33[1] = *(a2 + 16);
  (*(v20 + 16))(v33 - v26, a1, v19, v25);
  v28 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v29 = swift_allocObject();
  v30 = v33[0];
  *(v29 + 16) = a2;
  *(v29 + 24) = v30;
  (*(v20 + 32))(v29 + v28, v27, v19);
  aBlock[4] = sub_257CB8D20;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_39_1;
  v31 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECF150();
  v37 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v18, v11, v31);
  _Block_release(v31);
  (*(v36 + 8))(v11, v5);
  (*(v34 + 8))(v18, v35);

  return result;
}

uint64_t sub_257CB613C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_257CB7AE4(v2, 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128, &qword_257EE01F8);
  return sub_257ECF8D0();
}

void sub_257CB61DC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = a2;
  v5 = *(a1 + 16);
  sub_257CB7AE4(v5, v4);
  v7 = v6;

  v8 = v7;
  a3(v7);
}

void sub_257CB62A8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_257CB7AE4(a1, a2);
  v5 = v4;
  v6 = v4;
  a3(v5);
}

uint64_t sub_257CB6350(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_257CB6370, 0, 0);
}

uint64_t sub_257CB6370()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_257BD2C2C(0, &qword_27F8F97F0, 0x277CE2CC8);
  *v2 = v0;
  v2[1] = sub_257CB5C80;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x8000000257EFD680, sub_257CB7D34, v1, v3);
}

uint64_t sub_257CB64A8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_257CB64C8, 0, 0);
}

uint64_t sub_257CB64C8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_257BD2C2C(0, &qword_27F8F97F0, 0x277CE2CC8);
  *v2 = v0;
  v2[1] = sub_257CB65D8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x8000000257EFD6A0, sub_257CB7D74, v1, v3);
}

uint64_t sub_257CB65D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257CB6710;
  }

  else
  {

    v2 = sub_257CB66F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257CB6710()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_257CB6774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v38 = a3;
  v39 = a5;
  v37[1] = a4;
  v8 = sub_257ECF120();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECF190();
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128, &qword_257EE01F8);
  v23 = *(v22 - 8);
  v28 = MEMORY[0x28223BE20](v22, v24, v25, v26, v27);
  v30 = v37 - v29;
  v40 = *(a2 + 16);
  (*(v23 + 16))(v37 - v29, a1, v22, v28);
  v31 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v32 = swift_allocObject();
  v33 = v38;
  *(v32 + 16) = a2;
  *(v32 + 24) = v33;
  (*(v23 + 32))(v32 + v31, v30, v22);
  aBlock[4] = v39;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = v41;
  v34 = _Block_copy(aBlock);
  sub_257ECC3F0();
  v35 = v33;
  sub_257ECF150();
  v45 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v21, v14, v34);
  _Block_release(v34);
  (*(v44 + 8))(v14, v8);
  (*(v42 + 8))(v21, v43);

  return result;
}

uint64_t sub_257CB6B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  a4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128, &qword_257EE01F8);
  return sub_257ECF8D0();
}

uint64_t sub_257CB6B94(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_257CB6BB8, 0, 0);
}

uint64_t sub_257CB6BB8()
{
  v11 = v0;
  v1 = *(v0 + 32);
  sub_257BE9394(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v3 = sub_257ECCAE0();
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption, &unk_257ED8114);
  v4 = sub_257ECF3C0();

  v5 = [v2 initWithURL:v3 options:v4];

  v6 = objc_autoreleasePoolPush();
  sub_257CB6D60(v1, v5, (v0 + 16), &v10);
  objc_autoreleasePoolPop(v6);

  v7 = v10;
  v8 = *(v0 + 8);

  return v8(v7);
}

void sub_257CB6D60(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v72 = a3;
  v73 = a2;
  v67 = a4;
  v75[1] = *MEMORY[0x277D85DE8];
  v5 = sub_257ECD9D0();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_257ECD990();
  v12 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v13, v14, v15, v16);
  v71 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v66 - v23;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = &v66 - v30;
  v32 = [objc_allocWithZone(MEMORY[0x277CE2DB0]) init];
  [v32 setRecognitionLevel_];
  v33 = [objc_opt_self() preferredLanguages];
  if (!v33)
  {
    sub_257ECF810();
    v33 = sub_257ECF7F0();
  }

  v68 = v11;
  [v32 setRecognitionLanguages_];

  [v32 setUsesLanguageCorrection_];
  [v32 setUsesLanguageDetection_];
  if (qword_27F8F45B0 != -1)
  {
    swift_once();
  }

  v34 = sub_257ECD9C0();
  __swift_project_value_buffer(v34, qword_27F8F5DA8);
  v35 = v32;
  sub_257ECD980();
  v36 = sub_257ECD9A0();
  v37 = sub_257ECFDC0();
  if (sub_257ED0090())
  {
    v38 = swift_slowAlloc();
    *v38 = 134218496;
    *(v38 + 4) = [v35 recognitionLevel];
    *(v38 + 12) = 1024;
    *(v38 + 14) = [v35 usesLanguageDetection];
    *(v38 + 18) = 1024;
    *(v38 + 20) = [v35 usesLanguageCorrection];

    v39 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v36, v37, v39, "DetectText", "lvl=%ld langDtct=%{BOOL}d langCrct=%{BOOL}d", v38, 0x18u);
    MEMORY[0x259C74820](v38, -1, -1);
  }

  else
  {

    v36 = v35;
  }

  v40 = v74;
  (*(v12 + 16))(v24, v31, v74);
  sub_257ECDA00();
  swift_allocObject();
  sub_257ECD9F0();
  v41 = *(v12 + 8);
  v41(v31, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_257ED9BF0;
  *(v42 + 32) = v35;
  sub_257BD2C2C(0, &qword_27F8F5FD8, 0x277CE2DF0);
  v43 = v35;
  v44 = sub_257ECF7F0();

  v75[0] = 0;
  v45 = [v73 performRequests:v44 error:v75];

  if (!v45)
  {
    v54 = v75[0];
    v55 = sub_257ECC9F0();

    swift_willThrow();

LABEL_25:
    *v72 = v55;
    return;
  }

  v46 = v75[0];
  v47 = sub_257ECD9A0();
  v48 = v71;
  sub_257ECD9E0();
  v49 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    v50 = v68;
    sub_257ECDA10();

    v52 = v69;
    v51 = v70;
    if ((*(v69 + 88))(v50, v70) == *MEMORY[0x277D85B00])
    {
      v53 = "[Error] Interval already ended";
    }

    else
    {
      (*(v52 + 8))(v50, v51);
      v53 = "";
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = v71;
    v58 = sub_257ECD970();
    v59 = v53;
    v48 = v57;
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v47, v49, v58, "DetectText", v59, v56, 2u);
    MEMORY[0x259C74820](v56, -1, -1);
  }

  v41(v48, v74);
  v60 = [v43 results];
  if (!v60)
  {
LABEL_24:
    sub_257BEBEF0();
    v55 = swift_allocError();
    *(v65 + 8) = 0;
    *(v65 + 16) = 0;
    *v65 = 5;
    *(v65 + 24) = 4;
    swift_willThrow();

    goto LABEL_25;
  }

  v61 = v60;
  sub_257BD2C2C(0, &qword_27F8F97F0, 0x277CE2CC8);
  v62 = sub_257ECF810();

  if (v62 >> 62)
  {
    if (sub_257ED0210())
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_18:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x259C72E20](0, v62);
  }

  else
  {
    if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v63 = *(v62 + 32);
  }

  v64 = v63;

  *v67 = v64;
}

uint64_t sub_257CB747C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_257CB749C, 0, 0);
}

uint64_t sub_257CB749C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_257C2F88C;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](&v0[3].u64[1], 0, 0, 0xD000000000000024, 0x8000000257EFD6C0, sub_257CB7DB4, v1, v3);
}

double sub_257CB7590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a3;
  v5 = sub_257ECF120();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
  v20 = *(v19 - 8);
  v25 = MEMORY[0x28223BE20](v19, v21, v22, v23, v24);
  v27 = v32 - v26;
  v32[1] = *(a2 + 16);
  (*(v20 + 16))(v32 - v26, a1, v19, v25);
  v28 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v32[0];
  *(v29 + 24) = a2;
  (*(v20 + 32))(v29 + v28, v27, v19);
  aBlock[4] = sub_257CB84F8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_19;
  v30 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECF150();
  v36 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v18, v11, v30);
  _Block_release(v30);
  (*(v35 + 8))(v11, v5);
  (*(v33 + 8))(v18, v34);

  return result;
}

void sub_257CB7930(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_257BE9394(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption, &unk_257ED8114);
  v3 = sub_257ECF3C0();

  v4 = [v2 initWithCVPixelBuffer:v1 orientation:6 options:v3];

  sub_257CB8890(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
  sub_257ECF8D0();
}

uint64_t MAGTextDetectionService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_257CB7AE4(uint64_t a1, char a2)
{
  sub_257BE9394(MEMORY[0x277D84F90]);
  v4 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption, &unk_257ED8114);
  v5 = sub_257ECF3C0();

  v6 = [v4 initWithCVPixelBuffer:a1 orientation:6 options:v5];

  v7 = objc_autoreleasePoolPush();
  sub_257CB6D60(a2, v6, &v8, &v9);
  objc_autoreleasePoolPop(v7);
}

id sub_257CB7C20(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CE2DB0]) init];
  [v2 setRecognitionLevel_];
  v9[0] = 0;
  v3 = [v2 supportedRecognitionLanguagesAndReturnError_];
  v4 = v9[0];
  if (v3)
  {
    v5 = v3;
    v6 = sub_257ECF810();
    v7 = v4;
  }

  else
  {
    v6 = v9[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

  return v6;
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB8DCC;

  return v6(a1);
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromUIImage:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB8DCC;

  return v6(a1);
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromCGImage:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB81B4;

  return v6(a1);
}

uint64_t sub_257CB81B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromImageURL:useLanguageCorrection:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_257CB8DCC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MAGTextDetectionService.isTextPresent(inPixelBufferWrapper:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB81B4;

  return v6(a1);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CB8538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257CB8580(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];
  if (v2 || (v2 = [a1 CIImage]) != 0)
  {
    v3 = v2;
    sub_257BE9394(MEMORY[0x277D84F90]);
    v4 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    type metadata accessor for VNImageOption(0);
    sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption, &unk_257ED8114);
    v5 = sub_257ECF3C0();

    v6 = [v4 initWithCIImage:v3 orientation:6 options:v5];

    v7 = objc_autoreleasePoolPush();
    sub_257CB6D60(1, v6, &v8, &v9);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CE2CC8]) init];
  }
}

void sub_257CB8724(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
  sub_257BE9394(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption, &unk_257ED8114);
  v3 = sub_257ECF3C0();

  v4 = [v2 initWithCIImage:v1 orientation:6 options:v3];

  v5 = objc_autoreleasePoolPush();
  sub_257CB6D60(1, v4, &v6, &v7);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_257CB8890(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CE2CB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_257ED9BF0;
  *(v3 + 32) = v2;
  sub_257BD2C2C(0, &qword_27F8F5FD8, 0x277CE2DF0);
  v4 = v2;
  v5 = sub_257ECF7F0();

  v16[0] = 0;
  v6 = [a1 performRequests:v5 error:v16];

  if (!v6)
  {
    v13 = v16[0];
    sub_257ECC9F0();

LABEL_13:
    swift_willThrow();

    return 1;
  }

  v7 = v16[0];
  v8 = [v4 results];
  if (!v8)
  {
LABEL_12:
    sub_257BEBEF0();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 5;
    *(v14 + 24) = 4;
    goto LABEL_13;
  }

  v9 = v8;
  sub_257BD2C2C(0, &qword_27F8F7120, 0x277CE2E20);
  v10 = sub_257ECF810();

  if (v10 >> 62)
  {
    if (sub_257ED0210())
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x259C72E20](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  return 1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128, &qword_257EE01F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_257CB8D48(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t sub_257CB8DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_257CB8E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257CB8EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = *v1;
  v19[0] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7138, &unk_257EE0328);
  sub_257ECEE60();
  v4 = [objc_opt_self() sharedApplication];
  [v4 userInterfaceLayoutDirection];

  v5 = sub_257ECEE10();
  sub_257ECEE60();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = sub_257ECF4C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_257ECF500();
  v13 = v12;

  v14 = sub_257D42694();
  v15 = swift_allocObject();
  v16 = v2[1];
  v15[1] = *v2;
  v15[2] = v16;
  v17 = v2[3];
  v15[3] = v2[2];
  v15[4] = v17;
  *a1 = v5;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_257CB9280;
  *(a1 + 48) = v15;
  return sub_257CB9288(v2, v19);
}