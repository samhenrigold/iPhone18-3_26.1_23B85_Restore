void *sub_24832AA28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24832ACB0(a1, a2, a3, *v3, &qword_27EE93BB8, &qword_2483A1658, MEMORY[0x277CF8E08]);
  *v3 = result;
  return result;
}

void *sub_24832AB48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24832ACB0(a1, a2, a3, *v3, &qword_27EE93B68, &qword_2483A1648, MEMORY[0x277CF8E90]);
  *v3 = result;
  return result;
}

void *sub_24832AB8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24832AE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24832ABAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24832B07C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24832ACB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_24832AE8C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93B30, &qword_2483A1610);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0, qword_2483A1500) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0, qword_2483A1500) - 8);
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

char *sub_24832B07C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941E0, &unk_2483A1618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_24832B1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93B40, &unk_2483A1628);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24822B8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL sub_24832B2B4(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = sub_248382400();
  MEMORY[0x28223BE20](v7);
  v17[2] = a3;
  v17[3] = a2;
  sub_2483239B4(sub_24832B464, v17, v7);
  v9 = v8;

  if (v9 >> 62)
  {
LABEL_18:
    v10 = sub_248384360();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  do
  {
    v12 = v10 != v11;
    if (v10 == v11)
    {
      break;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1CBA50](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v9 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [a1 isEqual_];

    ++v11;
  }

  while (!v15);

  return v12;
}

uint64_t sub_24832B41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24832B528()
{
  result = qword_27EE93BA0;
  if (!qword_27EE93BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93BA0);
  }

  return result;
}

uint64_t sub_24832B57C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908F0, &unk_2483A15E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24832B5EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24832B658()
{
  result = qword_27EE93BB0;
  if (!qword_27EE93BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93AF0, &qword_2483A15D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93BB0);
  }

  return result;
}

id DBDashboardDimmingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DBDashboardDimmingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius] = 0;
  v10 = &v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = MEMORY[0x277D84F90];
  *&aBlock.a = MEMORY[0x277D84F90];
  sub_2483844C0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  *&v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews] = aBlock.a;
  v36 = v11;
  sub_2483844C0();
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 0.0);
  [v12 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 1.57079633);
  [v13 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 3.14159265);
  [v14 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 4.71238898);
  [v15 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  *&v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews] = v36;
  v16 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&aBlock.tx = sub_24815A108;
  aBlock.ty = 0.0;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_24815A7A0;
  *&aBlock.d = &block_descriptor_25;
  v17 = _Block_copy(&aBlock);
  v18 = [v16 initWithDynamicProvider_];
  _Block_release(v17);

  v19 = &qword_27EE93000;
  *&v5[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_overlayColor] = v18;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for DBDashboardDimmingView();
  v20 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *(v20 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews);
  if (v21 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248384360())
  {
    v23 = v19[380];
    v24 = v20;

    if (i)
    {
      v25 = 0;
      v19 = (v21 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x24C1CBA50](v25, v21);
        }

        else
        {
          if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v26 = *(v21 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v26 setBackgroundColor_];
        [v24 addSubview_];

        ++v25;
        if (v28 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:

    v20 = *&v24[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews];
    v21 = v20 >> 62 ? sub_248384360() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v21)
    {
      break;
    }

    v29 = 0;
    v19 = (v20 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x24C1CBA50](v29, v20);
      }

      else
      {
        if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v30 = *(v20 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      [v24 addSubview_];

      ++v29;
      if (v32 == v21)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_23:

  return v24;
}

void sub_24832BE34()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame);
  *v1 = 0u;
  v1[1] = 0u;
  sub_248384580();
  __break(1u);
}

void DBDashboardDimmingView.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_248159ED4();
  sub_2481542AC();
}

void (*DBDashboardDimmingView.cornerRadius.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832C098;
}

void sub_24832C098(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_248159ED4();
    sub_2481542AC();
  }
}

void DBDashboardDimmingView.contentFrame.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_2481542AC();
}

void (*DBDashboardDimmingView.contentFrame.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832C1F0;
}

void sub_24832C1F0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2481542AC();
  }
}

Swift::Void __swiftcall DBDashboardDimmingView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBDashboardDimmingView();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  sub_248159ED4();
  sub_2481542AC();
}

id DBDashboardDimmingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardDimmingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24832C300(uint64_t a1, uint8_t a2, __n128 a3)
{
  switch(a2)
  {
    case 0u:
      goto LABEL_26;
    case 1u:

      result = MEMORY[0x282133480](a1, a3);
      break;
    case 2u:

      result = sub_2483835F0();
      break;
    case 3u:

      result = MEMORY[0x282133418](a1, a3);
      break;
    case 4u:

      result = MEMORY[0x2821333E8](a1, a3);
      break;
    case 5u:

      result = MEMORY[0x2821334B0](a1, a3);
      break;
    case 6u:

      result = sub_2483835A0();
      break;
    case 7u:

      result = MEMORY[0x282133478](a1, a3);
      break;
    case 9u:

      result = MEMORY[0x282133498](a1, a3);
      break;
    case 0xAu:

      result = MEMORY[0x282133438](a1, a3);
      break;
    case 0xBu:

      result = MEMORY[0x282133408](a1, a3);
      break;
    case 0xCu:

      result = MEMORY[0x282133490](a1, a3);
      break;
    case 0xDu:

      result = MEMORY[0x2821334A8](a1, a3);
      break;
    case 0xEu:

      result = MEMORY[0x282133430](a1, a3);
      break;
    case 0xFu:

      result = MEMORY[0x282133458](a1, a3);
      break;
    default:
      if (a1)
      {
        v4 = a1;
        v5 = sub_248383DA0();
        a1 = os_log_type_enabled(v4, v5);
        if (a1)
        {
          v6 = swift_slowAlloc();
          *v6 = 16777472;
          v6[4] = a2;
          _os_log_impl(&dword_248146000, v4, v5, "Notification (%hhu is not a valid color number. Returning default primary color", v6, 5u);
          a1 = MEMORY[0x24C1CD5F0](v6, -1, -1);
        }
      }

LABEL_26:

      result = MEMORY[0x2821334C8](a1, a3);
      break;
  }

  return result;
}

void __swiftcall DBTouchPassthroughWindow.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for DBTouchPassthroughWindow();
  v7 = [(UIView_optional *)&v11 hitTest:isa withEvent:x, y];
  if (v7)
  {
    sub_24814CB58();
    v8 = v7;
    v9 = v3;
    v10 = sub_248384030();

    if (v10)
    {
    }
  }
}

id DBTouchPassthroughWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBTouchPassthroughWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DBDashboardEffectCoordinatingButton.focusEffectView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*DBDashboardEffectCoordinatingButton.focusEffectView.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832C824;
}

void *DBDashboardEffectCoordinatingButton.dimmingEffectView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24832C8D4(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = a3;
  v8 = a3;
  v9 = a1;

  v10 = ([v9 state] >> 3) & 1;
  v11 = MEMORY[0x277D85000];
  LOBYTE(v7) = (*((*MEMORY[0x277D85000] & *v9) + 0xB8))();
  (*((*v11 & *v9) + 0xD0))(v10, v7 & 1, [v9 state] & 1);
}

void sub_24832C9EC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  v7 = ([v2 state] >> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(v5) = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
  (*((*v8 & *v2) + 0xD0))(v7, v5 & 1, [v2 state] & 1);
}

uint64_t (*DBDashboardEffectCoordinatingButton.dimmingEffectView.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832DFEC;
}

uint64_t DBDashboardEffectCoordinatingButton.focusEffectStyle.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBDashboardEffectCoordinatingButton.focusEffectStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = ([v1 state] >> 3) & 1;
  v5 = MEMORY[0x277D85000];
  LOBYTE(v3) = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  return (*((*v5 & *v1) + 0xD0))(v4, v3 & 1, [v1 state] & 1);
}

uint64_t (*DBDashboardEffectCoordinatingButton.focusEffectStyle.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832DFEC;
}

uint64_t DBDashboardEffectCoordinatingButton.isTapped.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBDashboardEffectCoordinatingButton.isTapped.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = ([v1 state] >> 3) & 1;
  v5 = MEMORY[0x277D85000];
  LOBYTE(v3) = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  return (*((*v5 & *v1) + 0xD0))(v4, v3 & 1, [v1 state] & 1);
}

uint64_t (*DBDashboardEffectCoordinatingButton.isTapped.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832DFEC;
}

uint64_t sub_24832D0F0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = ([v5 state] >> 3) & 1;
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0xB8))();
    return (*((*v7 & *v5) + 0xD0))(v6, v8 & 1, [v5 state] & 1);
  }

  return result;
}

id DBDashboardEffectCoordinatingButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDashboardEffectCoordinatingButton.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle] = 0;
  v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  return objc_msgSendSuper2(&v2, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id DBDashboardEffectCoordinatingButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DBDashboardEffectCoordinatingButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped) = 0;
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBDashboardEffectCoordinatingButton.updateEffects(isFocused:isTapped:isPressed:)(Swift::Bool isFocused, Swift::Bool isTapped, Swift::Bool isPressed)
{
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0x70))();
  if (v8)
  {
    v9 = !isFocused;
    v10 = v8;
    [v8 setHidden_];
    [v10 setPressed_];
  }

  v11 = (*((*v7 & *v3) + 0x88))();
  if (v11)
  {
    v12 = v11;
    [v11 setHidden_];
  }
}

Swift::Void __swiftcall DBDashboardEffectCoordinatingButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v12, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedItem];
  if (v5 && (v6 = v5, swift_unknownObjectRelease(), v6 == v2) || (v7 = [(objc_class *)in.super.isa previouslyFocusedItem]) != 0 && (v8 = v7, swift_unknownObjectRelease(), v8 == v2))
  {
    v9 = ([v2 state] >> 3) & 1;
    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
    (*((*v10 & *v2) + 0xD0))(v9, v11 & 1, [v2 state] & 1);
  }
}

uint64_t sub_24832D894(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  sub_24814FB28(0, &qword_27EE92A70, 0x277D75C68);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70, 0x277D75C68);
  v8 = sub_248383C70();
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v10, *a3, v8, a2);

  return (*((*MEMORY[0x277D85000] & *v4) + 0xC0))(a4);
}

void sub_24832D994(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t a6)
{
  sub_24814FB28(0, &qword_27EE92A70, 0x277D75C68);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70, 0x277D75C68);
  sub_248383C80();
  v10 = a4;
  v11 = a1;
  v12 = sub_248383C70();

  v13.receiver = v11;
  v13.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v13, *a5, v12, v10);

  (*((*MEMORY[0x277D85000] & *v11) + 0xC0))(a6);
}

uint64_t sub_24832DB00(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80, 0x277D758B8);
  v6 = sub_248383C70();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v10, *a3, v6, a2);

  v7 = ([v3 state] >> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(a2) = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))();
  return (*((*v8 & *v3) + 0xD0))(v7, a2 & 1, [v3 state] & 1);
}

void sub_24832DC50(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80, 0x277D758B8);
  sub_248383C80();
  v8 = a4;
  v9 = a1;
  v10 = sub_248383C70();

  v13.receiver = v9;
  v13.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v13, *a5, v10, v8);

  v11 = ([v9 state] >> 3) & 1;
  v12 = MEMORY[0x277D85000];
  LOBYTE(v10) = (*((*MEMORY[0x277D85000] & *v9) + 0xB8))();
  (*((*v12 & *v9) + 0xD0))(v11, v10 & 1, [v9 state] & 1);
}

id DBDashboardEffectCoordinatingButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBDashboardEffectCoordinatingButton.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24832DF38(unint64_t *a1, unint64_t *a2, void *a3)
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

void type metadata accessor for CPUIFocusEffectStyleVariant()
{
  if (!qword_27EE93C08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE93C08);
    }
  }
}

void sub_24832DFF0()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27EE97B18 = v1;
}

uint64_t DBAppDockButton.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);

  return v1;
}

double DBAppDockButton.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  DBAppDockButton.setBundleIdentifier(_:animated:)(*&a1, 0);

  return result;
}

Swift::Void __swiftcall DBAppDockButton.setBundleIdentifier(_:animated:)(Swift::String_optional _, Swift::Bool animated)
{
  LODWORD(v3) = animated;
  object = _.value._object;
  countAndFlagsBits = _.value._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55[-v7];
  v9 = sub_248382A90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = &v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier];
  v14 = *&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8];
  if (v14)
  {
    if (object)
    {
      v15 = *v13 == countAndFlagsBits && v14 == object;
      if (v15 || (sub_248384680() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!object)
  {
    return;
  }

  v61 = v8;
  v16 = sub_24827C67C();
  (*(v10 + 16))(v12, v16, v9);

  v17 = v2;
  v18 = sub_248382A80();
  v19 = sub_248383DC0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v60 = v3;
    v3 = v20;
    v57 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63 = object;
    v64 = v59;
    *v3 = 136315394;
    v62 = countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v56 = v19;
    v21 = sub_2483841D0();
    v23 = sub_24814A378(v21, v22, &v64);
    v58 = v9;
    v24 = v18;
    v25 = countAndFlagsBits;
    v26 = v23;

    *(v3 + 4) = v26;
    countAndFlagsBits = v25;
    *(v3 + 12) = 2112;
    *(v3 + 14) = v17;
    v27 = v57;
    *v57 = v17;
    v28 = v17;
    _os_log_impl(&dword_248146000, v24, v56, "Updating active bundle identifier to %s in %@", v3, 0x16u);
    sub_24822D578(v27, &qword_27EE8FE40, &unk_24839C5A0);
    MEMORY[0x24C1CD5F0](v27, -1, -1);
    v29 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    v30 = v3;
    LOBYTE(v3) = v60;
    MEMORY[0x24C1CD5F0](v30, -1, -1);

    (*(v10 + 8))(v12, v58);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  *v13 = countAndFlagsBits;
  v13[1] = object;

  v31 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon;
  v32 = *&v17[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon];
  v33 = v61;
  if (v32)
  {
    [v32 removeObserver_];
  }

  if (object)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v36 = sub_248383930();
      v37 = [v35 iconForIdentifier_];
      swift_unknownObjectRelease();

      if (!v37)
      {
LABEL_20:
        Strong = 0;
        goto LABEL_21;
      }

      type metadata accessor for DBLeafIcon();
      Strong = swift_dynamicCastClass();
      if (!Strong)
      {

        goto LABEL_20;
      }
    }

LABEL_21:
    v38 = *&v17[v31];
    *&v17[v31] = Strong;

    v39 = *&v17[v31];
    if (v39)
    {
      [v39 addObserver_];
    }

    v40 = sub_248383930();
    [v17 setAccessibilityValue_];

    v41 = [objc_opt_self() sharedInstance];
    v42 = sub_248383930();
    v43 = [v41 applicationWithBundleIdentifier_];

    if (v43)
    {
      v44 = [v43 displayName];

      if (v44)
      {
        v45 = sub_248383960();
        v47 = v46;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_24839C7F0;
        *(v48 + 32) = v45;
        *(v48 + 40) = v47;
        v49 = sub_248383B00();

        [v17 setAccessibilityUserInputLabels_];
      }
    }

    v50 = sub_248383BE0();
    (*(*(v50 - 8) + 56))(v33, 1, 1, v50);
    sub_248383BB0();
    v51 = v17;
    v52 = sub_248383BA0();
    v53 = swift_allocObject();
    v54 = MEMORY[0x277D85700];
    *(v53 + 16) = v52;
    *(v53 + 24) = v54;
    *(v53 + 32) = v51;
    *(v53 + 40) = v3 & 1;
    sub_2482D8C74(0, 0, v33, &unk_2483A17A8, v53);
  }
}

double (*DBAppDockButton.bundleIdentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);
  a1[1] = v3;

  return sub_24832E808;
}

double sub_24832E808(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    v4.value._countAndFlagsBits = v3;
    v4.value._object = v2;
    DBAppDockButton.setBundleIdentifier(_:animated:)(v4, 0);
  }

  else
  {
    v5.value._countAndFlagsBits = *a1;
    v5.value._object = v2;
    DBAppDockButton.setBundleIdentifier(_:animated:)(v5, 0);
  }

  return result;
}

char *DBAppDockButton.init(iconProvider:iconImageInfo:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon] = 0;
  swift_unknownObjectWeakAssign();
  type metadata accessor for DBIconLayerClient();
  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerClient] = sub_24823E8E4();
  v12 = &v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo];
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  *v11 = 0;
  *(v11 + 1) = 0;

  v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = 0;
  type metadata accessor for DBIconLayerView();
  v13 = DBIconLayerView.__allocating_init()();
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v14 setUserInteractionEnabled_];
  [v14 setAlpha_];
  [v14 setHidden_];
  [v14 &selRef_stackedPrimaryMaskView + 2];
  v15 = [objc_opt_self() blackColor];
  [v14 setBackgroundColor_];

  v16 = [v14 layer];
  v17 = *MEMORY[0x277CDA138];
  [v16 setCornerCurve_];

  v18 = [v14 layer];
  [v18 setCornerRadius_];

  v19 = [v14 layer];
  v20 = *MEMORY[0x277CDA5D8];
  v21 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v19 setCompositingFilter_];

  *&v6[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView] = v14;
  v22 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v22 setHidden_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v6[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v24 = [v23 layer];
  [v24 setCornerRadius_];

  v25 = [v23 layer];
  [v25 setCornerCurve_];

  v26 = [v23 layer];
  v27 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v26 setCompositingFilter_];

  if (qword_27EE97B10 != -1)
  {
    swift_once();
  }

  [v23 setBackgroundColor_];
  [v23 setHidden_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] = v23;
  v28 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v29 = [v28 layer];
  v30 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v29 setCompositingFilter_];

  v31 = [v28 layer];
  [v31 setCornerRadius_];

  if (qword_27EE97B10 != -1)
  {
    swift_once();
  }

  [v28 &selRef:qword_27EE97B18 presentationViewWithIdentifier:? activate:? backgroundColor:?];
  [v28 setHidden_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] = v28;
  v32 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithCornerRadius:a5 + 3.0 strokeWidth:3.0];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView] = v32;
  v127.receiver = v6;
  v127.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v127, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v34 = [v33 layer];
  [v34 setAllowsGroupBlending_];

  [v33 setUserInteractionEnabled_];
  [v33 addSubview_];
  [v33 addSubview_];
  [v33 addSubview_];
  [v33 addSubview_];
  v35 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
  [v33 addSubview_];
  [*&v33[v35] addSubview_];
  v124 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2483A1790;
  v37 = *&v33[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView];
  v38 = [v37 widthAnchor];
  v39 = &v33[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo];
  v40 = [v38 constraintEqualToConstant_];

  *(v36 + 32) = v40;
  v41 = [v37 heightAnchor];
  v42 = [v41 &selRef:v39[1] filterWithName:? + 1];

  *(v36 + 40) = v42;
  v43 = [v37 centerXAnchor];
  v44 = [v33 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v36 + 48) = v45;
  v46 = [v37 centerYAnchor];
  v47 = [v33 centerYAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v36 + 56) = v48;
  v49 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView;
  v50 = [*&v33[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] widthAnchor];
  v51 = [v37 widthAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v36 + 64) = v52;
  v53 = [*&v33[v49] heightAnchor];
  v54 = [v37 heightAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v36 + 72) = v55;
  v56 = [*&v33[v49] centerXAnchor];
  v57 = [v37 centerXAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v36 + 80) = v58;
  v59 = [*&v33[v49] centerYAnchor];
  v60 = [v37 centerYAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v36 + 88) = v61;
  v62 = *&v33[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView];
  v63 = [v62 widthAnchor];
  v64 = [v37 widthAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v36 + 96) = v65;
  v66 = [v62 heightAnchor];
  v67 = [v37 heightAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v36 + 104) = v68;
  v69 = [v62 centerXAnchor];
  v70 = [v37 centerXAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v36 + 112) = v71;
  v72 = [v62 centerYAnchor];
  v73 = [v37 centerYAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v36 + 120) = v74;
  v75 = *&v33[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  v76 = [v75 &selRef_icon_imageWithInfo_ + 6];
  v77 = [v37 &selRef_icon_imageWithInfo_ + 6];
  v78 = [v76 constraintEqualToAnchor:v77 constant:6.0];

  *(v36 + 128) = v78;
  v79 = [v75 heightAnchor];
  v80 = [v37 heightAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:6.0];

  *(v36 + 136) = v81;
  v82 = [v75 centerXAnchor];
  v83 = [v37 centerXAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v36 + 144) = v84;
  v85 = [v75 centerYAnchor];
  v86 = [v37 centerYAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v36 + 152) = v87;
  v88 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
  v89 = [*&v33[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] widthAnchor];
  v90 = [v89 constraintEqualToConstant_];

  *(v36 + 160) = v90;
  v91 = [*&v33[v88] heightAnchor];
  v92 = [v91 constraintEqualToConstant_];

  *(v36 + 168) = v92;
  v93 = [*&v33[v88] centerXAnchor];
  v94 = [v37 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:-1.0];

  *(v36 + 176) = v95;
  v96 = [*&v33[v88] centerYAnchor];
  v97 = [v37 topAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:1.0];

  *(v36 + 184) = v98;
  v99 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView;
  v100 = [*&v33[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] widthAnchor];
  v101 = [*&v33[v88] widthAnchor];
  v102 = [v100 constraintEqualToAnchor_];

  *(v36 + 192) = v102;
  v103 = [*&v33[v99] heightAnchor];
  v104 = [*&v33[v88] heightAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v36 + 200) = v105;
  v106 = [*&v33[v99] centerXAnchor];
  v107 = [*&v33[v88] centerXAnchor];
  v108 = [v106 constraintEqualToAnchor_];

  *(v36 + 208) = v108;
  v109 = [*&v33[v99] centerYAnchor];
  v110 = [*&v33[v88] centerYAnchor];
  v111 = [v109 constraintEqualToAnchor_];

  *(v36 + 216) = v111;
  sub_24814FB28(0, &qword_27EE8FE90, 0x277CCAAD0);
  v112 = sub_248383B00();

  [v124 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CE0, qword_24839FA20);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_24839C7F0;
  *(v113 + 32) = sub_24814FB28(0, &unk_27EE91480, 0x277D66318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CF0, &qword_2483A1AB0);
  v114 = sub_248383B00();

  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_248333FFC;
  aBlock[5] = v115;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2482C441C;
  aBlock[3] = &block_descriptor_26;
  v116 = _Block_copy(aBlock);

  v117 = [v33 registerForTraitChanges:v114 withHandler:v116];
  _Block_release(v116);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90, &unk_24839CCF0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_24839C7F0;
  v119 = sub_248382C50();
  v120 = MEMORY[0x277D74BF0];
  *(v118 + 32) = v119;
  *(v118 + 40) = v120;
  v121 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = ObjectType;
  sub_248383FB0();
  swift_unknownObjectRelease();

  sub_24832FAA0();

  swift_unknownObjectRelease();
  return v33;
}

double sub_24832FAA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
  v5 = *&v0[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView];
  v6 = [v0 traitCollection];
  v7 = sub_248333C18(v6);

  [v5 setImage_];
  v8 = *&v0[v4];
  v9 = [v0 traitCollection];
  v10 = [v9 sbh_iconImageAppearance];

  LODWORD(v9) = [v10 hasGlass];
  v11 = objc_opt_self();
  v12 = &selRef_systemWhiteColor;
  if (!v9)
  {
    v12 = &selRef_externalSystemRedColor;
  }

  v13 = [v11 *v12];
  [v8 setTintColor_];

  v14 = [*&v0[v4] layer];
  v15 = [v0 traitCollection];
  v16 = [v15 sbh_iconImageAppearance];

  LODWORD(v15) = [v16 hasGlass];
  if (v15)
  {
    [v14 setShadowRadius_];
    LODWORD(v17) = 1045220557;
    [v14 setShadowOpacity_];
    [v14 setShadowOffset_];
    [v14 setShadowPathIsBounds_];
  }

  else
  {
    [v14 setShadowOpacity_];
  }

  sub_248331234();
  v18 = sub_248383BE0();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_248383BB0();
  v19 = v0;
  v20 = sub_248383BA0();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_2482D8C74(0, 0, v3, &unk_2483A1828, v21);

  return result;
}

void sub_24832FE2C()
{
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon) = 0;
  sub_248384580();
  __break(1u);
}

uint64_t sub_24832FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  sub_248383BB0();
  *(v5 + 24) = sub_248383BA0();
  v7 = sub_248383B90();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_24832FFE8, v7, v6);
}

uint64_t sub_24832FFE8()
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_24833008C;
  v3 = *(v0 + 56);

  return sub_2483301AC(v3, IsReduceMotionEnabled);
}

uint64_t sub_24833008C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24833443C, v3, v2);
}

uint64_t sub_2483301AC(char a1, char a2)
{
  *(v3 + 240) = v2;
  *(v3 + 361) = a2;
  *(v3 + 360) = a1;
  *(v3 + 248) = swift_getObjectType();
  v4 = sub_248382A90();
  *(v3 + 256) = v4;
  *(v3 + 264) = *(v4 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  sub_248383BB0();
  *(v3 + 288) = sub_248383BA0();
  v6 = sub_248383B90();
  *(v3 + 296) = v6;
  *(v3 + 304) = v5;

  return MEMORY[0x2822009F8](sub_2483302C0, v6, v5);
}

uint64_t sub_2483302C0()
{
  v1 = v0[30];
  v2 = *&v1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon];
  v0[39] = v2;
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerClient];
    v4 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo;
    v0[40] = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo;
    v5 = &v1[v4];
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    v10 = v2;
    v11 = [v1 traitCollection];
    v0[41] = v11;
    v19 = (*(*v3 + 128) + **(*v3 + 128));
    v12 = swift_task_alloc();
    v0[42] = v12;
    *v12 = v0;
    v12[1] = sub_2483304BC;
    v13.n128_u64[0] = v6;
    v14.n128_u64[0] = v7;
    v15.n128_u64[0] = v8;
    v16.n128_u64[0] = v9;

    return v19(v10, v11, v13, v14, v15, v16);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2483304BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  v5 = v3[41];
  if (v1)
  {
    v6 = v4[39];

    v7 = v4[37];
    v8 = v4[38];
    v9 = sub_248330FA4;
  }

  else
  {

    v7 = v4[37];
    v8 = v4[38];
    v9 = sub_248330604;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_248330604()
{
  v79 = v0;

  v1 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconProvider;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 312);
  if (!Strong)
  {

LABEL_7:
    v8 = 0;
    if (*(v0 + 360) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v4 = [Strong iconCanDisplayBadge_];

  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = [*(v0 + 312) badgeNumberOrString];
  v7 = *(v0 + 360);
  if (v6)
  {
    sub_248384230();
    swift_unknownObjectRelease();
    sub_24822D578(v0 + 160, &unk_27EE941B0, &unk_24839C9C0);
    v8 = 1;
    if ((v7 & 1) == 0)
    {
LABEL_5:
      v9 = *(v0 + 344);
      v10 = *(v0 + 312);
      v11 = *(v0 + 240);
      v81.is_nil = *(v0 + 361);
      v81.value.super.isa = v9;
      DBIconLayerView.set(_:animated:)(v81, v5);
      sub_248331508(v8, 0);
      v12 = *&v11[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
      [v12 setHidden_];
      [v12 setPressed_];
      goto LABEL_18;
    }
  }

  else
  {
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    sub_24822D578(v0 + 160, &unk_27EE941B0, &unk_24839C9C0);
    v8 = 0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_8:
  v13 = [*(v0 + 240) snapshotViewAfterScreenUpdates_];
  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  }

  v14 = *(v0 + 344);
  v15 = *(v0 + 312);
  v16 = *(v0 + 280);
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);
  v19 = *(v0 + 240);
  [v19 bounds];
  [v13 setBounds_];
  [v19 bounds];
  sub_248383F00();
  v77 = v13;
  [v13 setCenter_];
  sub_248331508(v8, 0);
  v20 = *&v19[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v20 setHidden_];
  [v20 setPressed_];
  v21 = *&v19[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView];
  v82.value.super.isa = v14;
  v82.is_nil = 0;
  DBIconLayerView.set(_:animated:)(v82, v22);
  v23 = sub_24827C40C();
  (*(v18 + 16))(v16, v23, v17);
  v24 = v15;
  v25 = sub_248382A80();
  v26 = sub_248383DC0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 312);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 67240450;
    *(v28 + 4) = 1;
    *(v28 + 8) = 2114;
    *(v28 + 10) = v27;
    *v29 = v27;
    v30 = v27;
    _os_log_impl(&dword_248146000, v25, v26, "Updating badge hidden state for image update to %{BOOL,public}d for %{public}@", v28, 0x12u);
    sub_24822D578(v29, &qword_27EE8FE40, &unk_24839C5A0);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    MEMORY[0x24C1CD5F0](v28, -1, -1);
  }

  v31 = *(v0 + 320);
  v32 = *(v0 + 280);
  v34 = *(v0 + 256);
  v33 = *(v0 + 264);
  v36 = *(v0 + 240);
  v35 = *(v0 + 248);

  v37 = &v36[v31];
  (*(v33 + 8))(v32, v34);
  [*&v36[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] setHidden_];
  [v21 setHidden_];
  [v20 setHidden_];
  [*&v36[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView] setHidden_];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = swift_unknownObjectWeakLoadStrong();
  v40 = *v37;
  v41 = v37[1];
  v42 = v37[2];
  v43 = v37[3];
  v44 = objc_allocWithZone(v35);
  v45 = v36;
  v46 = DBAppDockButton.init(iconProvider:iconImageInfo:)(v39, v40, v41, v42, v43);
  v47 = *&v45[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier];
  v48 = *&v45[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8];

  v49.value._countAndFlagsBits = v47;
  v49.value._object = v48;
  DBAppDockButton.setBundleIdentifier(_:animated:)(v49, 0);

  v46[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = v45[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge];
  *(v0 + 224) = v46;
  if (swift_dynamicCast())
  {
    v50 = *(v0 + 312);
    v51 = *(v0 + 361);
    v52 = *(v0 + 240);
    v53 = *(v0 + 232);
    [v52 bounds];
    [v53 setBounds_];
    [v52 bounds];
    sub_248383F00();
    [v53 setCenter_];
    [v52 addSubview_];
    [v52 addSubview_];
    v54 = swift_allocObject();
    v54[2] = v52;
    v54[3] = v50;
    v54[4] = sub_24833424C;
    v54[5] = v38;
    v54[6] = v53;
    v9 = *(v0 + 344);
    v55 = *(v0 + 312);
    v56 = *(v0 + 240);
    if (v51 == 1)
    {
      v10 = v55;
      v57 = v56;

      [v53 setAlpha_];

      v75 = objc_opt_self();
      v58 = swift_allocObject();
      *(v58 + 16) = v77;
      *(v58 + 24) = v53;
      *(v0 + 96) = sub_2483342D4;
      *(v0 + 104) = v58;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_24814C01C;
      *(v0 + 88) = &block_descriptor_64;
      v59 = _Block_copy((v0 + 64));
      v60 = v53;
      v61 = v77;

      v62 = swift_allocObject();
      *(v62 + 16) = sub_248334254;
      *(v62 + 24) = v54;
      *(v0 + 144) = sub_248271D98;
      *(v0 + 152) = v62;
      *(v0 + 112) = MEMORY[0x277D85DD0];
      *(v0 + 120) = 1107296256;
      *(v0 + 128) = sub_24824BBE0;
      *(v0 + 136) = &block_descriptor_70;
      v63 = _Block_copy((v0 + 112));

      [v75 animateWithDuration:v59 animations:v63 completion:0.5];

      _Block_release(v63);
      _Block_release(v59);
    }

    else
    {
      CGAffineTransformMakeScale(&v78, 0.0, 0.0);
      tx = v78.tx;
      ty = v78.ty;
      v74 = *&v78.c;
      *v76 = *&v78.a;
      v10 = v55;
      v66 = v56;

      *(v0 + 16) = *v76;
      *(v0 + 32) = v74;
      *(v0 + 48) = tx;
      *(v0 + 56) = ty;
      [v53 setTransform_];

      v67 = swift_allocObject();
      *(v67 + 16) = v77;
      v68 = swift_allocObject();
      *(v68 + 16) = v77;
      v69 = v77;
      sub_248333E80(sub_24833441C, v67, sub_248334264, v68);

      v70 = swift_allocObject();
      *(v70 + 16) = v53;
      v71 = swift_allocObject();
      *(v71 + 16) = sub_248334254;
      *(v71 + 24) = v54;
      v60 = v53;

      sub_248333E80(sub_248334274, v70, sub_24830E7FC, v71);
    }
  }

  else
  {
    v9 = *(v0 + 344);
    v10 = *(v0 + 312);
    sub_248332244(*(v0 + 240));
  }

LABEL_18:

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_248330FA4()
{
  v26 = v0;
  v1 = *(v0 + 352);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);

  v5 = sub_24827C480();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_248382A80();
  v8 = sub_248383DA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 352);
    v10 = *(v0 + 312);
    v11 = *(v0 + 264);
    v23 = *(v0 + 256);
    v24 = *(v0 + 272);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_248384720();
    v16 = sub_24814A378(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_248146000, v7, v8, "Error fetching icon layer: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
    MEMORY[0x24C1CD5F0](v12, -1, -1);

    (*(v11 + 8))(v24, v23);
  }

  else
  {
    v17 = *(v0 + 352);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 256);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

void sub_248331234()
{
  v1 = [v0 traitCollection];
  v5 = [v1 sbh_iconImageAppearance];

  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = v3 != 1 || [v5 appearanceType] != 2;
  [*&v0[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView] setHidden_];
}

uint64_t sub_248331318()
{
  v0[2] = sub_248383BB0();
  v0[3] = sub_248383BA0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2483313CC;

  return sub_2483301AC(0, 1);
}

uint64_t sub_2483313CC()
{

  v1 = sub_248383B90();

  return MEMORY[0x2822009F8](sub_24833443C, v1, v0);
}

void sub_248331508(int a1, int a2)
{
  v94 = a2;
  v4 = a1 & 1;
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v92 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v93 = &v89[-v9];
  MEMORY[0x28223BE20](v10);
  v99 = &v89[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v89[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v89[-v16];
  if (v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] != v4)
  {
    v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = v4;
    v18 = sub_24827C40C();
    v19 = *(v6 + 16);
    v96 = v18;
    v97 = v19;
    v98 = v6 + 16;
    v19(v17);
    v20 = v2;
    v21 = sub_248382A80();
    v22 = sub_248383DC0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v5;
      v25 = v6;
      v26 = swift_slowAlloc();
      *v23 = 67240450;
      *(v23 + 4) = a1 & 1;
      *(v23 + 8) = 2114;
      *(v23 + 10) = v20;
      *v26 = v20;
      v27 = v20;
      _os_log_impl(&dword_248146000, v21, v22, "Setting badge visible: %{BOOL,public}d for app dock button: %{public}@", v23, 0x12u);
      sub_24822D578(v26, &qword_27EE8FE40, &unk_24839C5A0);
      v28 = v26;
      v6 = v25;
      v5 = v24;
      MEMORY[0x24C1CD5F0](v28, -1, -1);
      MEMORY[0x24C1CD5F0](v23, -1, -1);
    }

    v29 = *(v6 + 8);
    v95 = v6 + 8;
    v91 = v29;
    v29(v17, v5);
    v97(v14, v96, v5);
    v30 = v20;
    v31 = sub_248382A80();
    v32 = sub_248383DC0();
    v33 = os_log_type_enabled(v31, v32);
    v34 = &selRef_isEnabled;
    v90 = a1 ^ 1;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 67240706;
      *(v35 + 4) = (a1 ^ 1) & 1;
      *(v35 + 8) = 1026;
      *(v35 + 10) = [*(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView) isHidden];

      *(v35 + 14) = 2114;
      *(v35 + 16) = v30;
      *v36 = v30;
      v37 = v30;
      _os_log_impl(&dword_248146000, v31, v32, "Attempting to update badge view visibility to %{BOOL,public}d. Badge view is hidden status is currently %{BOOL,public}d for app dock button: %{public}@", v35, 0x18u);
      sub_24822D578(v36, &qword_27EE8FE40, &unk_24839C5A0);
      MEMORY[0x24C1CD5F0](v36, -1, -1);
      v38 = v35;
      v34 = &selRef_isEnabled;
      MEMORY[0x24C1CD5F0](v38, -1, -1);
    }

    else
    {

      v31 = v30;
    }

    v39 = v91;
    v91(v14, v5);
    v40 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
    if ((([*(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView) v34[24]] ^ a1) & 1) == 0)
    {
      [*(&v30->isa + v40) setHidden_];
      v41 = *(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView);
      if (a1)
      {
        v42 = *(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView);
        v43 = v41;
        v44 = [v42 v34[24]];
      }

      else
      {
        v45 = v41;
        v44 = 1;
      }

      [v41 setHidden_];

      v97(v99, v96, v5);
      v46 = v30;
      v47 = sub_248382A80();
      v48 = sub_248383DC0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 67240450;
        *(v49 + 4) = v90 & 1;
        *(v49 + 8) = 2114;
        *(v49 + 10) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&dword_248146000, v47, v48, "Setting badge hidden: %{BOOL,public}d for app dock button: %{public}@", v49, 0x12u);
        sub_24822D578(v50, &qword_27EE8FE40, &unk_24839C5A0);
        MEMORY[0x24C1CD5F0](v50, -1, -1);
        MEMORY[0x24C1CD5F0](v49, -1, -1);
      }

      v39(v99, v5);
      if (v94)
      {
        v52 = *(&v30->isa + v40);
        if (a1)
        {
          CGAffineTransformMakeScale(&aBlock, 0.01, 0.01);
          [v52 setTransform_];
          v53 = objc_opt_self();
          v54 = swift_allocObject();
          *(v54 + 16) = v46;
          *&aBlock.tx = sub_248334200;
          *&aBlock.ty = v54;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_24814C01C;
          *&aBlock.d = &block_descriptor_38_0;
          v55 = _Block_copy(&aBlock);
          v56 = v46;

          [v53 animateWithDuration:v55 animations:0.3];
          _Block_release(v55);
          v57 = v92;
          v97(v92, v96, v5);
          v58 = v56;
          v59 = sub_248382A80();
          v60 = sub_248383DC0();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138543362;
            *(v61 + 4) = v58;
            *v62 = v58;
            v63 = v58;
            _os_log_impl(&dword_248146000, v59, v60, "Badge view is now visibible for: %{public}@", v61, 0xCu);
            sub_24822D578(v62, &qword_27EE8FE40, &unk_24839C5A0);
            MEMORY[0x24C1CD5F0](v62, -1, -1);
            MEMORY[0x24C1CD5F0](v61, -1, -1);
          }

          v39(v57, v5);
        }

        else
        {
          v64 = [*(&v30->isa + v40) image];
          v65 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

          v66 = [v46 traitCollection];
          v67 = [v66 sbh_iconImageAppearance];

          LODWORD(v66) = [v67 hasGlass];
          v68 = objc_opt_self();
          v69 = &selRef_systemWhiteColor;
          if (!v66)
          {
            v69 = &selRef_externalSystemRedColor;
          }

          v70 = [v68 *v69];
          [v65 setTintColor_];

          v71 = *(&v30->isa + v40);
          v72 = v65;
          [v71 frame];
          [v72 setFrame_];

          [v46 addSubview:v72];
          v73 = v93;
          v97(v93, v96, v5);
          v74 = v46;
          v75 = sub_248382A80();
          v76 = sub_248383DC0();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            *v77 = 138543362;
            *(v77 + 4) = v74;
            *v78 = v74;
            v79 = v74;
            _os_log_impl(&dword_248146000, v75, v76, "Adding badge view for app dock button animation in: %{public}@", v77, 0xCu);
            sub_24822D578(v78, &qword_27EE8FE40, &unk_24839C5A0);
            MEMORY[0x24C1CD5F0](v78, -1, -1);
            MEMORY[0x24C1CD5F0](v77, -1, -1);
          }

          v39(v73, v5);
          v80 = objc_opt_self();
          v81 = swift_allocObject();
          *(v81 + 16) = v72;
          *&aBlock.tx = sub_2483341EC;
          *&aBlock.ty = v81;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_24814C01C;
          *&aBlock.d = &block_descriptor_26_0;
          v82 = _Block_copy(&aBlock);
          v83 = v72;

          v84 = swift_allocObject();
          *(v84 + 16) = v83;
          *(v84 + 24) = v74;
          *&aBlock.tx = sub_2483341F8;
          *&aBlock.ty = v84;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_24824BBE0;
          *&aBlock.d = &block_descriptor_32;
          v85 = _Block_copy(&aBlock);
          v86 = v74;
          v87 = v83;

          [v80 animateWithDuration:v82 animations:v85 completion:0.3];
          _Block_release(v85);
          _Block_release(v82);
        }

        v88 = *(&v46->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView);
        [v88 setHidden_];
        [v88 setPressed_];
      }
    }
  }
}

uint64_t sub_24833207C(void *a1, void *a2)
{
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 removeFromSuperview];
  v9 = sub_24827C40C();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a2;
  v11 = sub_248382A80();
  v12 = sub_248383DC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_248146000, v11, v12, "Removing badge view for app dock button animation in: %{public}@", v13, 0xCu);
    sub_24822D578(v14, &qword_27EE8FE40, &unk_24839C5A0);
    MEMORY[0x24C1CD5F0](v14, -1, -1);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_248332244(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge;
  [*&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] setHidden_];
  v3 = *&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView];
  if (a1[v2])
  {
    v4 = *&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView];
    v5 = v3;
    v6 = [v4 isHidden];
  }

  else
  {
    v7 = v3;
    v6 = 1;
  }

  [v3 setHidden_];

  [*&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView] setHidden_];
  v8 = *&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v8 setHidden_];
  [v8 setPressed_];
  sub_248331234();
}

void DBAppDockButton.copy()(char **a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo);
  v7 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo + 8);
  v8 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo + 16);
  v9 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo + 24);
  v10 = objc_allocWithZone(ObjectType);
  v11 = DBAppDockButton.init(iconProvider:iconImageInfo:)(Strong, v6, v7, v8, v9);
  v12 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);
  v13 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8);

  v14.value._countAndFlagsBits = v12;
  v14.value._object = v13;
  DBAppDockButton.setBundleIdentifier(_:animated:)(v14, 0);

  v11[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge);
  a1[3] = ObjectType;
  *a1 = v11;
}

id sub_248332444(void *a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24827C40C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = a1;
  v16 = a2;
  v17 = sub_248382A80();
  v18 = sub_248383DC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = a3;
    v22 = a5;
    v23 = v21;
    *v20 = 67240450;
    *(v20 + 4) = (*(&v15->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge) & 1) == 0;

    *(v20 + 8) = 2114;
    *(v20 + 10) = v16;
    *v23 = v16;
    v24 = v16;
    _os_log_impl(&dword_248146000, v17, v18, "Updating badge hidden state for image update completion to %{BOOL,public}d for %{public}@", v20, 0x12u);
    sub_24822D578(v23, &qword_27EE8FE40, &unk_24839C5A0);
    v25 = v23;
    a5 = v22;
    a3 = v29;
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    MEMORY[0x24C1CD5F0](v20, -1, -1);
  }

  else
  {

    v17 = v15;
  }

  v26 = (*(v11 + 8))(v13, v10);
  a3(v26);
  return [a5 removeFromSuperview];
}

Swift::Void __swiftcall DBAppDockButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = *&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v3 setHidden_];
  v4 = [v2 isHighlighted];

  [v3 setPressed_];
}

id DBAppDockButton.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &qword_27EE92A70, 0x277D75C68);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70, 0x277D75C68);
  v5 = sub_248383C70();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_touchesBegan_withEvent_, v5, a2);

  [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  return [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] setHidden_];
}

id sub_248332900(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &qword_27EE92A70, 0x277D75C68);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70, 0x277D75C68);
  v7 = sub_248383C70();
  v9.receiver = v3;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, *a3, v7, a2);

  [*&v3[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  return [*&v3[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] setHidden_];
}

void sub_2483329FC(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &qword_27EE92A70, 0x277D75C68);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70, 0x277D75C68);
  sub_248383C80();
  v9 = a4;
  v10 = a1;
  v11 = sub_248383C70();

  v13.receiver = v10;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, *a5, v11, v9);

  [*&v10[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  v12 = *&v10[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView];
  [v12 setHidden_];
}

id DBAppDockButton.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80, 0x277D758B8);
  v5 = sub_248383C70();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_pressesBegan_withEvent_, v5, a2);

  [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] setHidden_];
  v6 = *&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v6 setHidden_];
  return [v6 setPressed_];
}

double sub_248332CA0(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, unint64_t *a7, void (*a8)(uint64_t, void *))
{
  sub_24814FB28(0, a5, a6);
  sub_24832DF38(a7, a5, a6);
  v14 = sub_248383C80();
  v15 = a4;
  v16 = a1;
  a8(v14, a4);

  return result;
}

id sub_248332D88(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80, 0x277D758B8);
  v7 = sub_248383C70();
  v10.receiver = v3;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a3, v7, a2);

  v8 = *&v3[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v8 setHidden_];
  return [v8 setPressed_];
}

void sub_248332EA4(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80, 0x277D758B8);
  sub_248383C80();
  v9 = a4;
  v10 = a1;
  v11 = sub_248383C70();

  v13.receiver = v10;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, *a5, v11, v9);

  v12 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView;
  [*&v10[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView] setHidden_];
  [*&v10[v12] setPressed_];
}

id DBAppDockButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBAppDockButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBAppDockButton.iconImageDidUpdate(_:)(SBIcon *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_248383BE0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_248383BB0();
  v6 = v1;
  v7 = sub_248383BA0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_2482D8C74(0, 0, v4, &unk_2483A17B8, v8);
}

uint64_t sub_248333340()
{
  v0[2] = sub_248383BB0();
  v0[3] = sub_248383BA0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2483333F4;

  return sub_2483301AC(1, 1);
}

uint64_t sub_2483333F4()
{

  v1 = sub_248383B90();

  return MEMORY[0x2822009F8](sub_248333530, v1, v0);
}

uint64_t sub_248333530()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall DBAppDockButton.iconAccessoriesDidUpdate(_:)(SBIcon *a1)
{
  v2 = v1;
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v38 - v9;
  v11 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon;
  v12 = *&v1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon];
  if (v12 && (sub_24814FB28(0, &unk_27EE93D00, 0x277D66368), v13 = a1, v14 = v12, v15 = sub_248384030(), v14, v13, (v15 & 1) != 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = [Strong iconCanDisplayBadge_];
      swift_unknownObjectRelease();
      if (v17)
      {
        v18 = [(SBIcon *)v13 badgeNumberOrString];
        v17 = v18 != 0;
        if (v18)
        {
          sub_248384230();
          swift_unknownObjectRelease();
        }

        else
        {
          memset(v38, 0, sizeof(v38));
        }

        sub_24822D578(v38, &unk_27EE941B0, &unk_24839C9C0);
      }
    }

    else
    {
      v17 = 0;
    }

    v29 = sub_24827C40C();
    (*(v5 + 16))(v10, v29, v4);
    v30 = v13;
    v31 = v2;
    v32 = sub_248382A80();
    v33 = sub_248383DC0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543874;
      *(v34 + 4) = v30;
      *(v34 + 12) = 1026;
      *(v34 + 14) = v17;
      *(v34 + 18) = 2114;
      *(v34 + 20) = v31;
      *v35 = v30;
      v35[1] = v31;
      v36 = v30;
      v37 = v31;
      _os_log_impl(&dword_248146000, v32, v33, "Icon accessories did update for icon: %{public}@, should show badge: %{BOOL,public}d, app dock button: %{public}@", v34, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40, &unk_24839C5A0);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v35, -1, -1);
      MEMORY[0x24C1CD5F0](v34, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    sub_248331508(v17, 1);
  }

  else
  {
    v19 = sub_24827C40C();
    (*(v5 + 16))(v7, v19, v4);
    v20 = a1;
    v21 = v2;
    v22 = sub_248382A80();
    v23 = sub_248383DC0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543618;
      *(v24 + 4) = v20;
      *(v24 + 12) = 2114;
      v26 = *&v2[v11];
      *(v24 + 14) = v26;
      *v25 = v20;
      v25[1] = v26;
      v27 = v20;
      v28 = v26;
      _os_log_impl(&dword_248146000, v22, v23, "Icon accessories update for icon: %{public}@, did not match self icon: %{public}@", v24, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40, &unk_24839C5A0);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v25, -1, -1);
      MEMORY[0x24C1CD5F0](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_248333B7C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24825ED28;

  return sub_24832FF4C(v4, v5, v6, v2, v3);
}

id sub_248333C18(void *a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE93D10, 0x277D755B8);
  result = sub_24833C1D0(0xD00000000000001FLL, 0x80000002483B3010, a1);
  if (!result)
  {
    v15 = 0;
    v7 = sub_24827C40C();
    (*(v3 + 16))(v5, v7, v2);
    v8 = a1;
    v9 = sub_248382A80();
    v10 = sub_248383DA0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_24814A378(0xD00000000000002CLL, 0x80000002483B3030, &v16);
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v14 = v8;
      _os_log_impl(&dword_248146000, v9, v10, "Unable to find unread badge image in app dock button %s with trait collection %@", v11, 0x16u);
      sub_24822D578(v12, &qword_27EE8FE40, &unk_24839C5A0);
      MEMORY[0x24C1CD5F0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
      MEMORY[0x24C1CD5F0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return v15;
  }

  return result;
}

void sub_248333E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v15 = a1;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24814C01C;
  v14 = &block_descriptor_73;
  v9 = _Block_copy(&v11);

  v15 = a3;
  v16 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2482614B8;
  v14 = &block_descriptor_76;
  v10 = _Block_copy(&v11);

  [v8 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
  _Block_release(v10);
  _Block_release(v9);
}

void sub_248333FFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24832FAA0();
  }
}

void sub_24833404C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24832FAA0();
  }
}

uint64_t sub_2483340A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24825ED28;

  return sub_248333340();
}

uint64_t sub_248334158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24823DDD0;

  return sub_248333340();
}

id sub_248334200()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

id sub_24833427C(CGFloat a1)
{
  v2 = *(v1 + 16);
  CGAffineTransformMakeScale(&v4, a1, a1);
  return [v2 setTransform_];
}

id sub_2483342D4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t objectdestroyTm_4(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24833436C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24825ED28;

  return sub_248331318();
}

void DBDefaultSceneWorkspaceManager.defaultWorkspaceIdentifier(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__displayToWorkspaceMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_248335180(a1);
    if (v6)
    {
      *(*(v4 + 56) + 8 * v5);
LABEL_14:

      return;
    }

    v28 = a1;

    v29 = v3;
    v4 = *(v1 + v3);
  }

  else
  {
    v28 = a1;
    v29 = v3;
  }

  v30 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__defaultWorkspaceIdentifiers);
  v8 = *(v7 + 16);

  if (!v8)
  {
LABEL_11:
    v14 = sub_248383DA0();
    v15 = *sub_24814FB80();
    sub_248382A40(v14, &dword_248146000, v15, "[DBDefaultSceneWorkspaceManager] All default workspaces unavailable!", 68, 2, MEMORY[0x277D84F90]);

    v12 = 0;
    v16 = v28;
LABEL_13:
    swift_beginAccess();
    v26 = v12;
    sub_248334744(v12, v16);
    swift_endAccess();
    goto LABEL_14;
  }

  v10 = 0;
  while (v10 < *(v7 + 16))
  {
    v31 = *(v7 + 32 + 8 * v10);
    MEMORY[0x28223BE20](v9);
    v27[2] = &v31;
    v12 = v11;
    sub_2483357B8(sub_248335994, v27, v4);
    if ((v13 & 1) == 0)
    {
      v17 = v12;
      v18 = sub_248383DC0();
      v19 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24839CCA0;
      v21 = sub_248383960();
      v23 = v22;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_2482970D8();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      *(v20 + 96) = sub_2483359B4();
      *(v20 + 104) = sub_248335B4C(&qword_27EE93D30, sub_2483359B4, MEMORY[0x277D85388]);
      v16 = v28;
      *(v20 + 72) = v28;
      v24 = v19;
      v25 = v16;
      sub_248382A40(v18, &dword_248146000, v24, "[DBDefaultSceneWorkspaceManager] Assigning default workspace %{public}@ to display %{public}@", 93, 2, v20);

      goto LABEL_13;
    }

    if (v8 == ++v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_248334744(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24833542C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_248335180(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_248335658();
        v10 = v13;
      }

      sub_2482B7068(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t DBDefaultSceneWorkspaceManager.relinquishWorkspaceIdentifier(for:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__displayToWorkspaceMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_248335180(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = sub_248383DC0();
      v9 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80, &unk_24839E500);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24839CCA0;
      v11 = sub_248383960();
      v13 = v12;
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_2482970D8();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      *(v10 + 96) = sub_2483359B4();
      *(v10 + 104) = sub_248335B4C(&qword_27EE93D30, sub_2483359B4, MEMORY[0x277D85388]);
      *(v10 + 72) = a1;
      v14 = v9;
      v15 = a1;
      sub_248382A40(v8, &dword_248146000, v14, "[DBDefaultSceneWorkspaceManager] Relinquishing workspace %{public}@ for display %{public}@", 90, 2, v10);
    }
  }

  swift_beginAccess();
  sub_248334744(0, a1);
  return swift_endAccess();
}

uint64_t variable initialization expression of DBDefaultSceneWorkspaceManager._defaultWorkspaceIdentifiers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D38, qword_2483A1868);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24839EA90;
  *(v0 + 32) = @"com.apple.DashBoard.scene-workspace.default0";
  *(v0 + 40) = @"com.apple.DashBoard.scene-workspace.default1";
  *(v0 + 48) = @"com.apple.DashBoard.scene-workspace.default2";
  *(v0 + 56) = @"com.apple.DashBoard.scene-workspace.default3";
  *(v0 + 64) = @"com.apple.DashBoard.scene-workspace.default4";
  v1 = @"com.apple.DashBoard.scene-workspace.default0";
  v2 = @"com.apple.DashBoard.scene-workspace.default1";
  v3 = @"com.apple.DashBoard.scene-workspace.default2";
  v4 = @"com.apple.DashBoard.scene-workspace.default3";
  v5 = @"com.apple.DashBoard.scene-workspace.default4";
  return v0;
}

id DBDefaultSceneWorkspaceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDefaultSceneWorkspaceManager.init()()
{
  v1 = OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__defaultWorkspaceIdentifiers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D38, qword_2483A1868);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24839EA90;
  *(v2 + 32) = @"com.apple.DashBoard.scene-workspace.default0";
  *(v2 + 40) = @"com.apple.DashBoard.scene-workspace.default1";
  *(v2 + 48) = @"com.apple.DashBoard.scene-workspace.default2";
  *(v2 + 56) = @"com.apple.DashBoard.scene-workspace.default3";
  *(v2 + 64) = @"com.apple.DashBoard.scene-workspace.default4";
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__displayToWorkspaceMap] = MEMORY[0x277D84F98];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for DBDefaultSceneWorkspaceManager();
  v3 = @"com.apple.DashBoard.scene-workspace.default0";
  v4 = @"com.apple.DashBoard.scene-workspace.default1";
  v5 = @"com.apple.DashBoard.scene-workspace.default2";
  v6 = @"com.apple.DashBoard.scene-workspace.default3";
  v7 = @"com.apple.DashBoard.scene-workspace.default4";
  return objc_msgSendSuper2(&v9, sel_init);
}

id DBDefaultSceneWorkspaceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDefaultSceneWorkspaceManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248334E00(uint64_t a1, id *a2)
{
  v3 = sub_248383950();
  *a2 = 0;
  return v3 & 1;
}

void sub_248334E80(uint64_t *a2@<X8>)
{
  sub_248383960();
  v3 = sub_248383930();

  *a2 = v3;
}

uint64_t sub_248334EC4(void *a1, uint64_t *a2)
{
  v2 = sub_248383960();
  v4 = v3;
  if (v2 == sub_248383960() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_248384680();
  }

  return v7 & 1;
}

void sub_248334F4C(uint64_t *a2@<X8>)
{
  v3 = sub_248383930();

  *a2 = v3;
}

uint64_t sub_248334F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248383960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_248334FC0(uint64_t a1)
{
  sub_248335B4C(&qword_27EE93D60, type metadata accessor for DBSceneWorkspaceIdentifier, &unk_2483A19A8);
  sub_248335B4C(&qword_27EE93D68, type metadata accessor for DBSceneWorkspaceIdentifier, &unk_2483A1950);

  return sub_248384600();
}

uint64_t sub_24833507C()
{
  v0 = sub_248383960();
  v1 = MEMORY[0x24C1CB050](v0);

  return v1;
}

double sub_2483350B8(uint64_t a1)
{
  sub_248383960();
  sub_2483839E0();

  return result;
}

uint64_t sub_24833510C(uint64_t a1)
{
  sub_248383960();
  sub_248384780();
  sub_2483839E0();
  v1 = sub_2483847B0();

  return v1;
}

unint64_t sub_248335180(uint64_t a1)
{
  v2 = sub_248384020();

  return sub_248335594(a1, v2);
}

void sub_2483351C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D70, &unk_2483A1A30);
  v6 = sub_2483845D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_248384020();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

id sub_24833542C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_248335180(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2483351C4(v13, a3 & 1);
      v8 = sub_248335180(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_2483359B4();
        v8 = sub_2483846E0();
        __break(1u);
        return MEMORY[0x2821F96F8](v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_248335658();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8](v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

unint64_t sub_248335594(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2483359B4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_248384030();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_248335658()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D70, &unk_2483A1A30);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

void sub_2483357B8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_248335904(void *a1, uint64_t *a2)
{
  v2 = sub_248383960();
  v4 = v3;
  if (v2 == sub_248383960() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_248384680();
  }

  return v7 & 1;
}

unint64_t sub_2483359B4()
{
  result = qword_27EE93D28;
  if (!qword_27EE93D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE93D28);
  }

  return result;
}

void type metadata accessor for DBSceneWorkspaceIdentifier()
{
  if (!qword_27EE93D40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE93D40);
    }
  }
}

uint64_t sub_248335B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL DBDashboardGlassView.isTranslucent.getter()
{
  sub_248383F60();
  v0 = v3 != 0;
  sub_248335C28(v2);
  return v0;
}

uint64_t sub_248335C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D78, &qword_2483A1A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DBDashboardGlassView.isTranslucent.setter(char a1)
{
  v3 = sub_248382CC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = sub_248382CE0();
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = v12;
    sub_248382C90();
    v19[1] = v1;
    sub_248382CA0();
    v16 = *(v4 + 8);
    v16(v6, v3);
    sub_248382C80();
    v16(v9, v3);
    sub_248382CF0();
    *(&v21 + 1) = v11;
    v22 = MEMORY[0x277D74E20];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v15 + 32))(boxed_opaque_existential_1, v14, v11);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  return sub_248383F70();
}

void (*DBDashboardGlassView.isTranslucent.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  sub_248383F60();
  v5 = *(v4 + 24) != 0;
  sub_248335C28(v4);
  *(v4 + 48) = v5;
  return sub_248335FA0;
}

void sub_248335FA0(uint64_t a1)
{
  v1 = *a1;
  DBDashboardGlassView.isTranslucent.setter(*(*a1 + 48));

  free(v1);
}

id DBDashboardGlassView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DBDashboardGlassView.init()()
{
  v0 = *(swift_getObjectType() + 104);
  v1 = v0(*MEMORY[0x277CDA138], 1, 0.0);
  swift_deallocPartialClassInstance();
  return v1;
}

void *DBDashboardGlassView.__allocating_init(cornerRadius:cornerCurve:isTranslucent:)(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v12.receiver = objc_allocWithZone(v4);
  v12.super_class = v4;
  v8 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  [v9 setCornerRadius_];

  v10 = [v8 layer];
  [v10 setCornerCurve_];

  (*((*MEMORY[0x277D85000] & *v8) + 0x58))(a2);
  return v8;
}

void *DBDashboardGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(void *a1, uint64_t a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for DBDashboardGlassView();
  v7 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = [v7 layer];
  [v8 setCornerRadius_];

  v9 = [v7 layer];
  [v9 setCornerCurve_];

  (*((*MEMORY[0x277D85000] & *v7) + 0x58))(a2);
  return v7;
}

id DBDashboardGlassView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBDashboardGlassView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardGlassView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *_s9DashBoard20DBDashboardGlassViewC27createWithDockConfigurationACyFZ_0()
{
  v0 = *MEMORY[0x277CDA138];
  v1 = type metadata accessor for DBDashboardGlassView();
  v6.receiver = objc_allocWithZone(v1);
  v6.super_class = v1;
  v2 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  v4 = [v2 layer];
  [v4 setCornerCurve_];

  (*((*MEMORY[0x277D85000] & *v2) + 0x58))(1);
  return v2;
}

void *DBGlassInCallWidgetAvatarView.currentCall.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBGlassInCallWidgetAvatarView.currentCall.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_248337CC8();
}

void (*DBGlassInCallWidgetAvatarView.currentCall.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248336870;
}

void sub_248336870(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_248337CC8();
  }
}

id DBGlassInCallWidgetAvatarView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *DBGlassInCallWidgetAvatarView.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0, &qword_24839E130);
  MEMORY[0x28223BE20](v2 - 8);
  v135 = &v122 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D90, &qword_24839F048);
  MEMORY[0x28223BE20](v4 - 8);
  v130 = &v122 - v5;
  v6 = sub_248382C30();
  v133 = *(v6 - 8);
  v134 = v6;
  MEMORY[0x28223BE20](v6);
  v131 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v122 - v9;
  v132 = sub_248384100();
  v129 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_focusEffectImage] = 0;
  v11 = &v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 contactStore];

  v14 = [objc_opt_self() settingsWithContactStore:v13 threeDTouchEnabled:0];
  v126 = v14;

  v15 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) initWithSettings_];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController] = v15;
  type metadata accessor for DBIconLayerView();
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView] = DBIconLayerView.__allocating_init()();
  v16 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingMask] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setBackgroundColor_];

  v21 = type metadata accessor for DBGlassInCallWidgetAvatarView();
  v137.receiver = v1;
  v137.super_class = v21;
  v22 = objc_msgSendSuper2(&v137, sel_init);
  v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v24 = v22;
  v25 = [v23 init];
  v26 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithImage_];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = v24;
  [v27 addSubview_];
  v28 = MEMORY[0x277D85000];
  v29 = *((*MEMORY[0x277D85000] & *v27) + 0x78);
  v125 = v26;
  v29(v26);
  v30 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController;
  v31 = [*(v27 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController) view];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];

  v32 = [*(v27 + v30) view];
  [v32 setUserInteractionEnabled_];

  v33 = [*(v27 + v30) view];
  [v27 addSubview_];

  v34 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = [v34 layer];
  v36 = sub_248340564();
  [v35 setCornerRadius_];

  [v27 addSubview_];
  v37 = *((*v28 & *v27) + 0x90);
  v136 = v34;
  v37(v34);

  v38 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView;
  v122 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView;
  [*(v27 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView) setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 addSubview_];
  v39 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView;
  [*(v27 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v27 + v39) setHidden_];
  v40 = *(v27 + v39);
  v123 = v39;
  [v40 setMaskView_];
  [v27 addSubview_];
  *&v124 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2483A1A80;
  v42 = [v27 widthAnchor];

  v43 = [v42 constraintEqualToConstant_];
  *(v41 + 32) = v43;
  v44 = [v27 heightAnchor];

  v45 = [v27 &selRef_icon_imageWithInfo_ + 6];
  v46 = [v44 constraintEqualToAnchor_];

  *(v41 + 40) = v46;
  v47 = [*(v27 + v30) view];
  v48 = [v47 leadingAnchor];

  v49 = [v27 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:4.0];

  *(v41 + 48) = v50;
  v51 = [*(v27 + v30) view];
  v52 = [v51 trailingAnchor];

  v53 = [v27 &selRef_systemImageNamed_withConfiguration_ + 4];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-5.0];

  *(v41 + 56) = v54;
  v55 = [*(v27 + v30) view];
  v56 = [v55 topAnchor];

  v57 = [v27 topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:4.0];

  *(v41 + 64) = v58;
  v59 = [*(v27 + v30) view];
  v60 = [v59 bottomAnchor];

  v61 = [v27 &selRef_assetVersion + 5];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-5.0];

  *(v41 + 72) = v62;
  v63 = v136;
  v64 = [v136 widthAnchor];
  v65 = [*(v27 + v30) view];
  v66 = [v65 widthAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v41 + 80) = v67;
  v68 = [v63 heightAnchor];
  v69 = [*(v27 + v30) &selRef_themeAssetLibrary];
  v70 = [v69 heightAnchor];

  v71 = [v68 constraintEqualToAnchor_];
  *(v41 + 88) = v71;
  v72 = [v63 centerXAnchor];
  v73 = [*(v27 + v30) &selRef_themeAssetLibrary];
  v74 = [v73 &selRef_fetchLastModifiedServiceOfType_completionHandler_ + 2];

  v75 = [v72 constraintEqualToAnchor_];
  *(v41 + 96) = v75;
  v76 = [v63 centerYAnchor];

  v77 = [*(v27 + v30) &selRef_themeAssetLibrary];
  v78 = [v77 &selRef_fillColor];

  v79 = [v76 constraintEqualToAnchor_];
  *(v41 + 104) = v79;
  v80 = v122;
  v81 = [*(v27 + v122) trailingAnchor];
  v82 = [v27 trailingAnchor];

  v83 = [v81 constraintEqualToAnchor:v82 constant:-4.0];
  *(v41 + 112) = v83;
  v84 = [*(v27 + v80) bottomAnchor];
  v85 = [v27 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:-4.0];

  *(v41 + 120) = v86;
  v87 = [*(v27 + v80) widthAnchor];
  v88 = [v87 constraintEqualToConstant_];

  *(v41 + 128) = v88;
  v89 = [*(v27 + v80) heightAnchor];
  v90 = [*(v27 + v80) widthAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v41 + 136) = v91;
  v92 = v123;
  v93 = [*(v27 + v123) widthAnchor];
  v94 = [*(v27 + v80) widthAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v41 + 144) = v95;
  v96 = [*(v27 + v92) heightAnchor];
  v97 = [*(v27 + v80) heightAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v41 + 152) = v98;
  v99 = [*(v27 + v92) centerXAnchor];
  v100 = [*(v27 + v80) centerXAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  *(v41 + 160) = v101;
  v102 = [*(v27 + v92) centerYAnchor];
  v103 = [*(v27 + v80) centerYAnchor];
  v104 = [v102 constraintEqualToAnchor_];

  *(v41 + 168) = v104;
  sub_24814FB28(0, &qword_27EE8FE90, 0x277CCAAD0);
  v105 = sub_248383B00();

  [v124 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90, &unk_24839CCF0);
  v106 = swift_allocObject();
  v124 = xmmword_24839C7F0;
  *(v106 + 16) = xmmword_24839C7F0;
  v107 = sub_248382C40();
  v108 = MEMORY[0x277D74BE0];
  *(v106 + 32) = v107;
  *(v106 + 40) = v108;
  MEMORY[0x24C1CB580](v106, sel_userInterfaceIdiomDidChange);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CE0, qword_24839FA20);
  v109 = swift_allocObject();
  *(v109 + 16) = v124;
  *(v109 + 32) = sub_24814FB28(0, &unk_27EE91480, 0x277D66318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CF0, &qword_2483A1AB0);
  v110 = sub_248383B00();

  v111 = [v27 registerForTraitChanges:v110 withAction:sel_homeScreenStyleDidChange];
  swift_unknownObjectRelease();

  sub_24833852C();
  v112 = v127;
  sub_2483840D0();
  v113 = v128;
  sub_248382C20();
  v114 = v130;
  sub_248382C70();
  v115 = sub_248382C60();
  (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  sub_248382C10();
  v117 = v133;
  v116 = v134;
  (*(v133 + 16))(v131, v113, v134);
  sub_248384060();
  v118 = v129;
  v119 = v135;
  v120 = v132;
  (*(v129 + 16))(v135, v112, v132);
  (*(v118 + 56))(v119, 0, 1, v120);
  sub_248384120();

  [v27 updateConfiguration];
  (*(v117 + 8))(v113, v116);
  (*(v118 + 8))(v112, v120);
  return v27;
}

id sub_2483379C0()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBGlassInCallWidgetAvatarView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingMask];
  [*&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView] bounds];
  [v1 setFrame_];
  v2 = [v1 layer];
  [v1 bounds];
  [v2 setCornerRadius_];
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.updateEffects(isFocused:isTapped:isPressed:)(Swift::Bool isFocused, Swift::Bool isTapped, Swift::Bool isPressed)
{
  DBDashboardEffectCoordinatingButton.updateEffects(isFocused:isTapped:isPressed:)(isFocused, isTapped, isPressed);
  v4 = *(v3 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView);
  v5 = (*((*MEMORY[0x277D85000] & *v3) + 0x88))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isHidden];
  }

  else
  {
    v7 = 1;
  }

  [v4 setHidden_];
}

void sub_248337CC8()
{
  v39[1] = *MEMORY[0x277D85DE8];
  v1.value.super.isa = (*((*MEMORY[0x277D85000] & *v0) + 0x118))();
  if (v1.value.super.isa)
  {
    isa = v1.value.super.isa;
    if (![(objc_class *)v1.value.super.isa isConferenced])
    {
      goto LABEL_6;
    }

    if ([(objc_class *)isa isConversation])
    {
      v3 = [objc_opt_self() sharedInstance];
      v4 = [v3 activeConversationForCall_];

      if (!v4)
      {
LABEL_17:
        v18 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController);
LABEL_18:
        sub_24814FB28(0, &qword_27EE93DD0, 0x277CBDA58);
        v25 = sub_248383B00();

        [v18 setContacts_];

        v26 = [(objc_class *)isa provider];
        v27 = [v26 displayAppBundleIdentifier];

        v28 = sub_248383960();
        v30 = v29;

        v31 = (v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier);
        v32 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier);
        v33 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8);
        *v31 = v28;
        v31[1] = v30;
        if (!v33 || (v32 == v28 ? (v34 = v33 == v30) : (v34 = 0), !v34 && (sub_248384680() & 1) == 0))
        {

          v35 = [v0 traitCollection];
          [v35 displayScale];

          v36 = sub_248383930();

          v37 = [v0 traitCollection];
          v38 = SBHGetApplicationIconLayerWithTraitCollection();

          v41.value.super.isa = v38;
          DBIconLayerView.set(_:)(v41);
        }

        return;
      }

      v5 = [v4 isOneToOneModeEnabled];

      if (v5)
      {
LABEL_6:
        v6 = [(objc_class *)isa contactIdentifiers];
        if (v6)
        {
          v7 = v6;
          v8 = sub_248383B10();

          if (*(v8 + 16))
          {

            v9 = [objc_opt_self() sharedInstance];
            v10 = [v9 contactStore];

            v11 = sub_248383930();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_24839C700;
            v13 = *MEMORY[0x277CBD020];
            *(v12 + 32) = *MEMORY[0x277CBD020];
            v14 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93E38, &qword_2483A1AF8);
            v15 = sub_248383B00();

            v39[0] = 0;
            v16 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v15 error:v39];

            v17 = v39[0];
            if (v16)
            {
              v18 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController);
              v19 = swift_allocObject();
              *(v19 + 16) = xmmword_24839C700;
              *(v19 + 32) = v16;
              v20 = v17;
              v4 = v16;
              goto LABEL_18;
            }

            v23 = v39[0];
            v24 = sub_2483810C0();

            swift_willThrow();
          }

          else
          {
          }
        }
      }
    }

    v4 = 0;
    goto LABEL_17;
  }

  v21 = (v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier);
  v22 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8);
  *v21 = 0;
  v21[1] = 0;
  if (v22)
  {
    v1.value.super.isa = 0;
    DBIconLayerView.set(_:)(v1);
  }
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.userInterfaceIdiomDidChange()()
{
  if (*&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8])
  {

    v2 = [v1 traitCollection];
    [v2 displayScale];

    v3 = sub_248383930();

    v4 = [v1 traitCollection];
    v5 = SBHGetApplicationIconLayerWithTraitCollection();

    v7.value.super.isa = v5;
    DBIconLayerView.set(_:)(v7);
  }

  else
  {
    v0.value.super.isa = 0;
    DBIconLayerView.set(_:)(v0);
  }

  sub_24833852C();
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.homeScreenStyleDidChange()()
{
  if (*&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8])
  {

    v2 = [v1 traitCollection];
    [v2 displayScale];

    v3 = sub_248383930();

    v4 = [v1 traitCollection];
    v5 = SBHGetApplicationIconLayerWithTraitCollection();

    v7.value.super.isa = v5;
    DBIconLayerView.set(_:)(v7);
  }

  else
  {
    v0.value.super.isa = 0;
    DBIconLayerView.set(_:)(v0);
  }
}

void sub_24833852C()
{
  v1 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_focusEffectImage;
  if (!*(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_focusEffectImage))
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
    if (v2)
    {
      v27 = v2;
      type metadata accessor for DBGlassInCallWidgetAvatarView();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      v5 = [v0 traitCollection];
      v6 = sub_248383930();
      v7 = [objc_opt_self() imageNamed:v6 inBundle:v4 compatibleWithTraitCollection:v5];

      v8 = *(v0 + v1);
      *(v0 + v1) = v7;
      v9 = v7;

      if (v9)
      {
        [v27 updateEffectWithImage_];
        v10 = v27;
        [v10 setNeedsLayout];
        v11 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_24839CCB0;
        v13 = [v10 widthAnchor];
        [v9 size];
        v14 = [v13 constraintEqualToConstant_];

        *(v12 + 32) = v14;
        v15 = [v10 heightAnchor];

        [v9 size];
        v17 = [v15 constraintEqualToConstant_];

        *(v12 + 40) = v17;
        v18 = [v10 leadingAnchor];

        v19 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController);
        v20 = [v19 view];
        v21 = [v20 leadingAnchor];

        v22 = [v18 constraintEqualToAnchor:v21 constant:-4.0];
        *(v12 + 48) = v22;
        v23 = [v10 topAnchor];

        v24 = [v19 view];
        v25 = [v24 topAnchor];

        v26 = [v23 constraintEqualToAnchor:v25 constant:-4.0];
        *(v12 + 56) = v26;
        sub_24814FB28(0, &qword_27EE8FE90, 0x277CCAAD0);
        v27 = sub_248383B00();

        [v11 activateConstraints_];
      }
    }
  }
}

double sub_248338924()
{

  return result;
}

id DBGlassInCallWidgetAvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBGlassInCallWidgetAvatarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248338A8C()
{
  v1 = v0;
  v2 = sub_248381570();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CF8898] || v7 == *MEMORY[0x277CF88A0])
  {
    return sub_248383960();
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

void sub_248338BD4()
{
  v0 = *MEMORY[0x277D1B200];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  [v3 scale];
  v5 = v4;

  qword_27EE97E28 = v5;
}

void sub_248338C60()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v4[4] = sub_248338D9C;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_248282F3C;
  v4[3] = &block_descriptor_19;
  v1 = _Block_copy(v4);

  v2 = [v0 imageWithActions_];

  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v3 = [v2 imageWithRenderingMode_];

    qword_27EE97E38 = v3;
  }
}

id sub_248338D9C(void *a1)
{
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v3 setFill];

  return [a1 fillRect_];
}

uint64_t CARSessionConfiguration.resolvedOEMIcon(iconImageInfo:)(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v126 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v123 - v10;
  MEMORY[0x28223BE20](v11);
  v142 = &v123 - v12;
  MEMORY[0x28223BE20](v13);
  v123 = &v123 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v123 - v16;
  MEMORY[0x28223BE20](v18);
  v144 = &v123 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v123 - v21;
  MEMORY[0x28223BE20](v23);
  v145 = &v123 - v24;
  if (qword_27EE97E20 != -1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    CGAffineTransformMakeScale(&v149, *&qword_27EE97E28, *&qword_27EE97E28);
    v124 = a1;
    v150.width = a1;
    v125 = a2;
    v150.height = a2;
    v25 = CGSizeApplyAffineTransform(v150, &v149);
    width = v25.width;
    height = v25.height;
    sub_248383F40();
    v27 = v26;
    v29 = v28;
    v30 = [v3 manufacturerIcons];
    v31 = sub_24814FB28(0, &qword_27EE93EA0, 0x277CF89B0);
    v32 = sub_248383B10();

    v33 = sub_24827C480();
    v34 = v7[2];
    v147 = v7 + 2;
    v148 = v33;
    v146 = v34;
    (v34)(v145);

    v35 = sub_248382A80();
    v36 = sub_248383DC0();

    v37 = os_log_type_enabled(v35, v36);
    v136 = v32;
    v143 = v22;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v149.a = v39;
      *v38 = 136446210;
      v40 = MEMORY[0x24C1CB100](v32, v31);
      v42 = sub_24814A378(v40, v41, &v149);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_248146000, v35, v36, "Available icons: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1CD5F0](v39, -1, -1);
      v43 = v38;
      v22 = v143;
      MEMORY[0x24C1CD5F0](v43, -1, -1);
    }

    v44 = v145;
    v145 = v7[1];
    (v145)(v44, v6);
    (v146)(v22, v148, v6);
    v45 = sub_248382A80();
    v46 = sub_248383DC0();
    v47 = os_log_type_enabled(v45, v46);
    v127 = v7;
    v48 = v144;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v149.a = v50;
      *v49 = 136446210;
      v51 = sub_248383F30();
      v53 = sub_24814A378(v51, v52, &v149);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_248146000, v45, v46, "Expected icon size: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      v7 = v127;
      MEMORY[0x24C1CD5F0](v50, -1, -1);
      MEMORY[0x24C1CD5F0](v49, -1, -1);

      v54 = v143;
    }

    else
    {

      v54 = v22;
    }

    (v145)(v54, v6);
    (v146)(v48, v148, v6);
    v55 = sub_248382A80();
    v56 = sub_248383DC0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v149.a = v58;
      *v57 = 136446210;
      v59 = sub_248383F30();
      v61 = sub_24814A378(v59, v60, &v149);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_248146000, v55, v56, "Expected masked icon size: %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v7 = v127;
      MEMORY[0x24C1CD5F0](v58, -1, -1);
      MEMORY[0x24C1CD5F0](v57, -1, -1);
    }

    (v145)(v48, v6);
    v63 = v136;
    if (v136 >> 62)
    {
      v121 = v136;
      v122 = sub_248384360();
      v63 = v121;
      v64 = v122;
    }

    else
    {
      v64 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v139 = v6;
    if (!v64)
    {
      break;
    }

    v65 = 0;
    v143 = 0;
    v3 = 0;
    v22 = 0;
    v133 = v63 & 0xC000000000000001;
    v128 = v63 & 0xFFFFFFFFFFFFFF8;
    v144 = (v7 + 1);
    a2 = 0.0;
    *&v62 = 138543362;
    v130 = v62;
    v7 = &selRef__eventStoreDidChange_;
    *&v62 = 67241216;
    v129 = v62;
    a1 = 0.0;
    v132 = v17;
    v131 = v64;
    while (1)
    {
      if (v133)
      {
        v66 = MEMORY[0x24C1CBA50](v65);
      }

      else
      {
        if (v65 >= *(v128 + 16))
        {
          goto LABEL_128;
        }

        v66 = *(v63 + 8 * v65 + 32);
      }

      v67 = v66;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v141 = v65 + 1;
      (v146)(v17, v148, v6);
      v68 = v67;
      v69 = sub_248382A80();
      v70 = sub_248383DC0();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = v130;
        *(v71 + 4) = v68;
        *v72 = v68;
        v73 = v68;
        _os_log_impl(&dword_248146000, v69, v70, "Testing icon: %{public}@", v71, 0xCu);
        sub_24827B684(v72);
        MEMORY[0x24C1CD5F0](v72, -1, -1);
        v74 = v71;
        v6 = v139;
        MEMORY[0x24C1CD5F0](v74, -1, -1);
      }

      (v145)(v17, v6);
      if (([v68 v7[78]] & 1) == 0)
      {
        if (v22)
        {
          v75 = [v22 v7[78]];
          v143 = v22;
          v3 = v22;
          if (v75)
          {

            (v146)(v123, v148, v6);
            v103 = v68;
            v104 = sub_248382A80();
            v105 = sub_248383DC0();

            if (os_log_type_enabled(v104, v105))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              *v107 = v130;
              *(v107 + 4) = v103;
              *v108 = v103;
              v109 = v103;
              _os_log_impl(&dword_248146000, v104, v105, "Already found a preferended icon, skipping %{public}@", v107, 0xCu);
              sub_24827B684(v108);
              MEMORY[0x24C1CD5F0](v108, -1, -1);
              v110 = v107;
              v6 = v139;
              MEMORY[0x24C1CD5F0](v110, -1, -1);
            }

            else
            {
              v109 = v104;
              v104 = v103;
            }

            v101 = v125;
            v102 = v124;

            (v145)(v123, v6);
            goto LABEL_119;
          }
        }

        else
        {
          v143 = 0;
          v3 = 0;
        }
      }

      [v68 pixelSize];
      v77 = v76;
      v79 = v78;
      v80 = [v68 v7[78]];
      if (v80)
      {
        v81 = width;
      }

      else
      {
        v81 = v27;
      }

      if (v80)
      {
        v82 = height;
      }

      else
      {
        v82 = v29;
      }

      v83 = [v68 v7[78]];
      v138 = v22;
      if (!v83)
      {
        if (a1 < v79)
        {
          v85 = a2 < v77;
          if (v79 >= a1)
          {
            if (a1 >= v82)
            {
              v86 = 0;
              v140 = 0;
              goto LABEL_75;
            }

            v140 = 0;
          }

          else
          {
            v140 = v77 < a2;
            if (a1 >= v82)
            {
              v86 = 0;
LABEL_75:
              v84 = 0;
              v87 = 0;
              if (v82 > v79)
              {
                goto LABEL_100;
              }

LABEL_99:
              v87 = v81 <= v77;
              goto LABEL_100;
            }
          }

LABEL_61:
          v84 = 0;
          v87 = 0;
          v86 = a2 < v81;
          if (v82 > v79)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        if (v79 >= a1)
        {
          if (a1 >= v82)
          {
            v86 = 0;
            v140 = 0;
            goto LABEL_74;
          }

          v140 = 0;
        }

        else
        {
          v140 = v77 < a2;
          if (a1 >= v82)
          {
            v86 = 0;
LABEL_74:
            v85 = 0;
            goto LABEL_75;
          }
        }

        v85 = 0;
        goto LABEL_61;
      }

      if (v3)
      {
        v84 = [v3 v7[78]] ^ 1;
        if (a1 < v79)
        {
          v85 = a2 < v77;
          if (v79 < a1)
          {
            v140 = v77 < a2;
            if (a1 < v82)
            {
              v86 = a2 < v81;
              if (v82 > v79)
              {
                v87 = 0;
                v143 = v3;
                goto LABEL_100;
              }

              v143 = v3;
              goto LABEL_99;
            }

            v86 = 0;
LABEL_87:
            v87 = 0;
LABEL_88:
            v143 = v3;
            if (v82 <= v79)
            {
              goto LABEL_99;
            }

            goto LABEL_100;
          }

          if (a1 >= v82)
          {
            v86 = 0;
            v140 = 0;
            goto LABEL_87;
          }

          v140 = 0;
LABEL_71:
          v87 = 0;
          v86 = a2 < v81;
          goto LABEL_88;
        }

        if (v79 >= a1)
        {
          if (a1 >= v82)
          {
            v86 = 0;
            v140 = 0;
            goto LABEL_86;
          }

          v140 = 0;
        }

        else
        {
          v140 = v77 < a2;
          if (a1 >= v82)
          {
            v86 = 0;
LABEL_86:
            v85 = 0;
            goto LABEL_87;
          }
        }

        v85 = 0;
        goto LABEL_71;
      }

      if (a1 >= v79)
      {
        if (v79 >= a1)
        {
          if (a1 < v82)
          {
            v140 = 0;
LABEL_81:
            v85 = 0;
LABEL_82:
            v143 = 0;
            v87 = 0;
            v86 = a2 < v81;
LABEL_91:
            v84 = 1;
            if (v82 > v79)
            {
              goto LABEL_100;
            }

            goto LABEL_99;
          }

          v86 = 0;
          v140 = 0;
        }

        else
        {
          v140 = v77 < a2;
          if (a1 < v82)
          {
            goto LABEL_81;
          }

          v86 = 0;
        }

        v85 = 0;
      }

      else
      {
        v85 = a2 < v77;
        if (v79 < a1)
        {
          v140 = v77 < a2;
          if (a1 < v82)
          {
            v143 = 0;
            v86 = a2 < v81;
            v84 = 1;
            if (v82 > v79)
            {
              v87 = 0;
              goto LABEL_100;
            }

            goto LABEL_99;
          }

          v86 = 0;
          v143 = 0;
          v87 = 0;
          goto LABEL_91;
        }

        if (a1 < v82)
        {
          v140 = 0;
          goto LABEL_82;
        }

        v86 = 0;
        v140 = 0;
      }

      v143 = 0;
      v87 = 0;
      v84 = 1;
      if (v82 <= v79)
      {
        goto LABEL_99;
      }

LABEL_100:
      (v146)(v142, v148, v6);
      v88 = sub_248382A80();
      v89 = sub_248383DC0();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = v129;
        *(v90 + 4) = v84;
        *(v90 + 8) = 1026;
        *(v90 + 10) = v85;
        *(v90 + 14) = 1026;
        *(v90 + 16) = v140;
        *(v90 + 20) = 1026;
        *(v90 + 22) = v86;
        *(v90 + 26) = 1026;
        *(v90 + 28) = v87;
        _os_log_impl(&dword_248146000, v88, v89, "shouldReplaceWithPrerenderedIcon: %{BOOL,public}d\ntestIconIsLargerThanSelected: %{BOOL,public}d\ntestIconIsSmallerThanSelected: %{BOOL,public}d\nselectedIconIsTooSmall: %{BOOL,public}d\ntestIconIsLargeEnough: %{BOOL,public}d", v90, 0x20u);
        v91 = v90;
        v6 = v139;
        MEMORY[0x24C1CD5F0](v91, -1, -1);
      }

      (v145)(v142, v6);
      v92 = v84 | (v85 && v86);
      v7 = &selRef__eventStoreDidChange_;
      if ((v92 & 1) == 0 && (!v87 || !v140))
      {
        v17 = v132;
        v22 = v138;
LABEL_14:

        goto LABEL_15;
      }

      (v146)(v137, v148, v6);
      v3 = v68;
      v93 = sub_248382A80();
      v94 = sub_248383DC0();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v95 = v130;
        *(v95 + 4) = v3;
        *v96 = v3;
        v97 = v3;
        _os_log_impl(&dword_248146000, v93, v94, "Selecting new icon: %{public}@", v95, 0xCu);
        sub_24827B684(v96);
        MEMORY[0x24C1CD5F0](v96, -1, -1);
        v98 = v95;
        v6 = v139;
        MEMORY[0x24C1CD5F0](v98, -1, -1);
      }

      (v145)(v137, v6);
      v99 = v3;

      v17 = v132;
      if (v81 != v77 || v82 != v79)
      {
        a2 = v77;
        a1 = v79;
        v143 = v3;
        v22 = v3;
        goto LABEL_14;
      }

      v100 = [v99 isPrerendered];

      if (v100)
      {

        v22 = v3;
        goto LABEL_118;
      }

      a2 = v77;
      v143 = v3;
      v22 = v3;
      a1 = v79;
LABEL_15:
      v63 = v136;
      ++v65;
      if (v141 == v131)
      {

        v22 = v143;
LABEL_118:
        v101 = v125;
        v102 = v124;
        goto LABEL_119;
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    swift_once();
  }

  v22 = 0;
  v101 = v125;
  v102 = v124;
LABEL_119:
  (v146)(v126, v148, v6);
  v111 = sub_248382A80();
  v112 = sub_248383DC0();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v113 = 138543362;
    *(v113 + 4) = v22;
    *v114 = v22;
    v115 = v22;
    _os_log_impl(&dword_248146000, v111, v112, "Final OEM Icon: %{public}@", v113, 0xCu);
    sub_24827B684(v114);
    v116 = v114;
    v6 = v139;
    MEMORY[0x24C1CD5F0](v116, -1, -1);
    MEMORY[0x24C1CD5F0](v113, -1, -1);
  }

  (v145)(v126, v6);
  if (!v22)
  {
    return 0;
  }

  v117 = v22;
  sub_248339F78(v102, v101);
  v119 = v118;

  return v119;
}

void sub_248339F78(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - v14;
  if (qword_27EE97E20 != -1)
  {
    swift_once();
  }

  v16 = *&qword_27EE97E28;
  CGAffineTransformMakeScale(&aBlock, *&qword_27EE97E28, *&qword_27EE97E28);
  v92.width = a1;
  v92.height = a2;
  v17 = CGSizeApplyAffineTransform(v92, &aBlock);
  v18 = [v3 imageData];
  v19 = sub_2483811B0();
  v21 = v20;

  v22 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v23 = sub_2483811A0();
  v24 = [v22 initWithData:v23 scale:v16];

  sub_24823BD70(v19, v21);
  if (v24)
  {
    v87 = v12;
    v25 = v24;
    if (([v3 isPrerendered] & 1) == 0)
    {
      if (qword_27EE97E30 != -1)
      {
        swift_once();
      }

      v25 = qword_27EE97E38;
    }

    v26 = swift_allocObject();
    v89 = v26;
    *(v26 + 16) = v25;
    v27 = (v26 + 16);
    v28 = v25;
    v29 = &selRef_presentAppLink_;
    if (([v3 isPrerendered] & 1) == 0)
    {
      v30 = [objc_opt_self() whiteColor];
      v31 = [v24 _flatImageWithColor_];

      if (v31)
      {
        goto LABEL_15;
      }

      v28 = *v27;
      v29 = &selRef_presentAppLink_;
    }

    [v28 size];
    [*v27 size];
    [*v27 v29[191]];
    sub_248383F40();
    v31 = 0;
    v88 = 0;
    if (v17.width == v33 && v17.height == v32)
    {
LABEL_19:
      if ([v3 isPrerendered])
      {
        swift_beginAccess();
        v47 = *v27;
        sub_24833AA34();
        v49 = v48;

        v50 = *v27;
        *v27 = v49;
      }

      swift_beginAccess();
      v51 = UIImagePNGRepresentation(*v27);
      if (v51)
      {
        v52 = v51;
        v53 = sub_2483811B0();
        v55 = v54;

        v56 = [objc_allocWithZone(MEMORY[0x277CF8FF8]) initWithBundleIdentifier_];
        [v56 setIsPrerendered_];
        v57 = sub_2483811A0();
        [v56 setIconImageData_];

        [*(v89 + 16) scale];
        [v56 setIconImageScale_];
        v90[0] = 0;
        v90[1] = 0xE000000000000000;
        sub_248384440();

        strcpy(v90, "LAUNCHER_NAME-");
        HIBYTE(v90[1]) = -18;
        v58 = sub_248383960();
        MEMORY[0x24C1CAFD0](v58);

        sub_24814FB28(0, &qword_27EE8FD80, off_278EFF1E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v60 = [objc_opt_self() bundleForClass_];
        sub_2483810A0();

        v61 = sub_248383930();

        [v56 setLocalizedDisplayName_];

        sub_24823BD70(v53, v55);
      }

      else
      {
        v73 = sub_24827C480();
        v74 = v87;
        (*(v7 + 16))(v87, v73, v6);
        v75 = v6;
        v76 = v3;
        v77 = sub_248382A80();
        v78 = sub_248383DA0();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v90[0] = v80;
          *v79 = 136315138;
          v81 = [v76 description];
          v82 = sub_248383960();
          v84 = v83;

          v85 = sub_24814A378(v82, v84, v90);

          *(v79 + 4) = v85;
          _os_log_impl(&dword_248146000, v77, v78, "Unable to get png data from CARManufacturer icon: %s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
          MEMORY[0x24C1CD5F0](v80, -1, -1);
          MEMORY[0x24C1CD5F0](v79, -1, -1);

          (*(v7 + 8))(v87, v75);
        }

        else
        {

          (*(v7 + 8))(v74, v75);
        }
      }

      return;
    }

LABEL_15:
    v35 = v17.width / v16;
    v36 = v17.height / v16;
    v37 = sub_24827C480();
    v38 = v6;
    (*(v7 + 16))(v15, v37, v6);
    v39 = sub_248382A80();
    v40 = sub_248383DC0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_248146000, v39, v40, "Compositing OEM icon image", v41, 2u);
      MEMORY[0x24C1CD5F0](v41, -1, -1);
    }

    (*(v7 + 8))(v15, v38);
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = v35;
    *(v43 + 24) = v36;
    *(v43 + 32) = v16;
    *(v43 + 40) = v89;
    *(v43 + 48) = v31;
    *&aBlock.tx = sub_24833AC04;
    *&aBlock.ty = v43;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_24814C01C;
    *&aBlock.d = &block_descriptor_27;
    v44 = _Block_copy(&aBlock);
    v88 = v31;

    v45 = [v42 sbf:0 imageFromContextWithSize:0 scale:v44 type:v35 pool:v36 drawing:v16];
    _Block_release(v44);
    if (!v45)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    v46 = *v27;
    *v27 = v45;

    v6 = v38;
    goto LABEL_19;
  }

  v62 = sub_24827C480();
  (*(v7 + 16))(v9, v62, v6);
  v63 = v3;
  v64 = sub_248382A80();
  v65 = sub_248383DA0();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&aBlock.a = v67;
    *v66 = 136315138;
    v68 = [v63 description];
    v69 = sub_248383960();
    v71 = v70;

    v72 = sub_24814A378(v69, v71, &aBlock);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_248146000, v64, v65, "Unable to create UIImage from imageData in CARManufacturerIcon: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x24C1CD5F0](v67, -1, -1);
    MEMORY[0x24C1CD5F0](v66, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

id sub_24833A9D8(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  v6 = CARSessionConfiguration.resolvedOEMIcon(iconImageInfo:)(a2, a3);

  return v6;
}

void sub_24833AA34()
{
  v1 = v0;
  [v0 size];
  v4 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24833AD3C;
  *(v6 + 24) = v5;
  v10[4] = sub_248282F14;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_248282F3C;
  v10[3] = &block_descriptor_12_2;
  v7 = _Block_copy(v10);
  v8 = v1;

  v9 = [v4 imageWithActions_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    [v9 imageWithRenderingMode_];
  }
}

void sub_24833AC04()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  UIRectCenteredAboutPointScale();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_beginAccess();
  [*(v2 + 16) drawInRect:17 blendMode:v4 alpha:{v6, v8, v10, 1.0}];
  if (v1)
  {
    v11 = v1;
    [v11 size];
    [v11 size];
    UIRectCenteredAboutPointScale();
    [v11 drawInRect:0 blendMode:? alpha:?];
  }
}

id sub_24833AD3C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() blackColor];
  [v4 setFill];

  [v3 size];
  v6 = v5;
  v8 = v7;
  [a1 fillRect_];

  return [v3 drawInRect_];
}

uint64_t sub_24833AE40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v75 = a2;
  v4 = sub_2483817D0();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_248382A90();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248381770();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  v12 = sub_248382220();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = &v64 - v17;
  v18 = sub_2483817B0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - v23;
  sub_2483817C0();
  v25 = (*(v19 + 88))(v24, v18);
  if (v25 != *MEMORY[0x277CF8AE8])
  {
    v32 = v74;
    v72 = v24;
    if (v25 != *MEMORY[0x277CF8AF0])
    {
      v41 = sub_24827C568();
      v42 = v71;
      v43 = v69;
      (*(v71 + 16))(v69, v41, v73);
      v45 = v66;
      v44 = v67;
      v46 = v68;
      (*(v67 + 16))(v66, v3, v68);
      v47 = sub_248382A80();
      v48 = sub_248383DC0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v80[0] = v74;
        *v49 = 136446210;
        LODWORD(v70) = v48;
        sub_2483817C0();
        v50 = sub_2483817A0();
        v52 = v51;
        (*(v19 + 8))(v21, v18);
        (*(v44 + 8))(v45, v46);
        v53 = sub_24814A378(v50, v52, v80);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_248146000, v47, v70, "No App Scene URL available for instrument kind %{public}s", v49, 0xCu);
        v54 = v74;
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x24C1CD5F0](v54, -1, -1);
        MEMORY[0x24C1CD5F0](v49, -1, -1);

        (*(v71 + 8))(v69, v73);
      }

      else
      {

        (*(v44 + 8))(v45, v46);
        (*(v42 + 8))(v43, v73);
      }

      v62 = sub_248381170();
      (*(*(v62 - 8) + 56))(v75, 1, 1, v62);
      return (*(v19 + 8))(v72, v18);
    }

    v33 = v72;
    (*(v19 + 96))(v72, v18);
    v34 = v65;
    (*(v13 + 16))(v65, v32, v12);
    v35 = (*(v13 + 88))(v34, v12);
    if (v35 == *MEMORY[0x277CF8D88])
    {
      (*(v13 + 96))(v34, v12);

      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BE0, &qword_24839DE90) + 64);
    }

    else
    {
      if (v35 != *MEMORY[0x277CF8D78])
      {
        if (v35 == *MEMORY[0x277CF8D80])
        {
          sub_248381140();
        }

        else
        {
          v63 = sub_248381170();
          (*(*(v63 - 8) + 56))(v75, 1, 1, v63);
          (*(v13 + 8))(v34, v12);
        }

        goto LABEL_25;
      }

      (*(v13 + 96))(v34, v12);

      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BD0, &qword_24839DE88) + 48);
    }

    sub_248381140();
    v59 = sub_248381D00();
    (*(*(v59 - 8) + 8))(&v34[v36], v59);
LABEL_25:
    v60 = sub_248381760();
    return (*(*(v60 - 8) + 8))(v33, v60);
  }

  (*(v19 + 96))(v24, v18);
  v26 = v72;
  (*(v72 + 4))(v11, v24, v7);
  (*(v13 + 16))(v15, v74, v12);
  v27 = (*(v13 + 88))(v15, v12);
  v28 = v7;
  if (v27 == *MEMORY[0x277CF8D88])
  {
    (*(v13 + 96))(v15, v12);

    v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BE0, &qword_24839DE90) + 64);
    v30 = "creenPresentation=";
    v31 = 0xD00000000000006ALL;
  }

  else
  {
    if (v27 != *MEMORY[0x277CF8D78])
    {
      (*(v26 + 1))(v11, v7);
      v61 = sub_248381170();
      (*(*(v61 - 8) + 56))(v75, 1, 1, v61);
      return (*(v13 + 8))(v15, v12);
    }

    (*(v13 + 96))(v15, v12);

    v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BD0, &qword_24839DE88) + 48);
    v30 = "&mapsPresentation=anyContent";
    v31 = 0xD000000000000057;
  }

  v37 = *v29;
  v80[0] = v31;
  v80[1] = v30 | 0x8000000000000000;
  v38 = sub_248381D00();
  (*(*(v38 - 8) + 8))(&v15[v37], v38);
  v39 = v70;
  (*(v26 + 13))(v70, *MEMORY[0x277CF8AD8], v28);
  sub_24833B920();
  sub_248383AE0();
  sub_248383AE0();
  if (v78 == v76 && v79 == v77)
  {
    v40 = 1;
  }

  else
  {
    v40 = sub_248384680();
  }

  v55 = *(v26 + 1);
  v55(v39, v28);

  if (v40)
  {
    v56 = 0xD00000000000001CLL;
  }

  else
  {
    v56 = 0xD000000000000021;
  }

  if (v40)
  {
    v57 = "n=instructioncard";
  }

  else
  {
    v57 = "maneuverLayout=leftAligned";
  }

  MEMORY[0x24C1CAFD0](v56, v57 | 0x8000000000000000);

  sub_248381140();

  return (v55)(v11, v28);
}

unint64_t sub_24833B920()
{
  result = qword_27EE93EA8;
  if (!qword_27EE93EA8)
  {
    sub_248381770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93EA8);
  }

  return result;
}

id SBHIconImageStyleConfiguration.init(homeScreenStyleData:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHomeScreenStyleData_];

  return v2;
}

{
  v2 = sub_24833BF74(a1);

  return v2;
}

uint64_t sub_24833B9F0()
{
  v1 = [v0 styleType];
  if (v1)
  {
    return v1 == 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_24833BA28()
{
  v1 = [v0 styleVariant];
  if (v1 >= 3)
  {
    return 0;
  }

  else
  {
    return 2 - v1;
  }
}

id sub_24833BA5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_24833BF74(v3);

  return v4;
}

id sub_24833BA94(void *a1)
{
  v1 = a1;
  SBHIconImageStyleConfiguration.dbDescription.getter();

  v2 = sub_248383930();

  return v2;
}

uint64_t SBHIconImageStyleConfiguration.dbDescription.getter()
{
  v1 = [v0 configurationType];
  v2 = 0xE600000000000000;
  v3 = 0x6465746E6974;
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  if (v1 == 1)
  {
    v5 = 0x7261656C63;
    v4 = 0xE500000000000000;
  }

  if (v1 != 2)
  {
    v3 = v5;
    v2 = v4;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x726F6C6F63;
  }

  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = [v0 variant];
  v9 = 0xE900000000000063;
  v10 = 0x6974616D6F747561;
  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
  if (v8 == 1)
  {
    v12 = 1802658148;
    v11 = 0xE400000000000000;
  }

  if (v8 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0x746867696CLL;
  }

  if (v8)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15 = [v0 description];
  v16 = sub_248383960();

  sub_248384440();

  MEMORY[0x24C1CAFD0](v6, v7);

  MEMORY[0x24C1CAFD0](0x6E6169726176202CLL, 0xEB00000000203A74);
  MEMORY[0x24C1CAFD0](v13, v14);

  MEMORY[0x24C1CAFD0](41, 0xE100000000000000);

  MEMORY[0x24C1CAFD0](0xD000000000000015, 0x80000002483B3640);

  return v16;
}

id SBHIconImageAppearance.init(homeScreenStyleData:userInterfaceStyle:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHomeScreenStyleData:a1 userInterfaceStyle:a2];

  return v3;
}

{
  v3 = sub_24833BFF8(a1, a2);

  return v3;
}

id sub_24833BDB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = sub_24833BFF8(v5, a4);

  return v6;
}

BOOL sub_24833BDF8()
{
  v1 = [v0 sbh_iconImageStyleConfiguration];
  v2 = [v1 variant];

  return v2 == 1;
}

uint64_t sub_24833BE4C()
{
  v1 = [v0 sbh_iconImageStyleConfiguration];
  v2 = [v1 configurationType];

  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_2483A1B40[v2];
  }
}

uint64_t sub_24833BEB4(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 1802658148;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_24833BF00(uint64_t a1)
{
  v1 = 0x656C6261746E6974;
  v2 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v2 = 0x746C7561666564;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1 == 3)
  {
    return 0x7261656C63;
  }

  else
  {
    return v1;
  }
}

id sub_24833BF74(void *a1)
{
  v3 = [a1 styleType];
  v4 = [a1 styleVariant];
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2 - v4;
  }

  if (v3)
  {
    v6 = v3 == 1;
  }

  else
  {
    v6 = 2;
  }

  return [v1 initWithConfigurationType:v6 variant:v5];
}

id sub_24833BFF8(void *a1, uint64_t a2)
{
  v5 = [a1 styleType];
  v6 = [a1 styleVariant];
  v7 = 2 - v6;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      if (v7)
      {
        if (v7 == 2)
        {
          if (a2 == 2)
          {
            v5 = 3;
          }

          else
          {
            v5 = 2;
          }
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
      }
    }

    else if (v7 >= 2)
    {
      v5 = a2 == 2;
    }

    else
    {
      v5 = v7;
    }
  }

  return [v2 initWithAppearanceType_];
}

id sub_24833C0B8(double a1, double a2, double a3)
{
  v5 = [v3 CGImage];
  v6 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v5 scale:a3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24839C700;
  *(v7 + 32) = v6;
  v8 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  sub_24814FB28(0, &qword_27EE93EB0, 0x277D1B160);
  v9 = v6;
  v10 = sub_248383B00();

  v11 = [v8 initWithImages_];

  return v11;
}

id sub_24833C1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24814FB28(0, &qword_27EE8FD80, off_278EFF1E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_248383930();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:a3];

  return v7;
}

id sub_24833C294(void *a1)
{
  v1 = a1;
  [v1 userInterfaceStyle];

  v2 = sub_248383930();

  return v2;
}

uint64_t UITraitCollection.dbUserInterfaceStyleDescription.getter()
{
  v1 = [v0 userInterfaceStyle];
  if (!v1)
  {
    return 0x6669636570736E75;
  }

  v2 = 0x6E776F6E6B6E75;
  if (v1 == 2)
  {
    v2 = 1802658148;
  }

  if (v1 == 1)
  {
    return 0x746867696CLL;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24833C3F4(void *a1)
{
  v1 = a1;
  v2 = UITraitCollection.homeScreenStyleWantsDimmedWallpaper.getter();

  return v2 & 1;
}

uint64_t UITraitCollection.homeScreenStyleWantsDimmedWallpaper.getter()
{
  sub_24833C524();
  v1 = [v0 sbh_iconImageAppearance];
  v2 = objc_opt_self();
  v3 = [v2 clearLightAppearance];
  v4 = sub_248384030();

  if (v4)
  {
    return 1;
  }

  v6 = [v0 sbh_iconImageAppearance];
  v7 = [v2 clearDarkAppearance];
  v8 = sub_248384030();

  return v8 & 1;
}

unint64_t sub_24833C524()
{
  result = qword_27EE91478;
  if (!qword_27EE91478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE91478);
  }

  return result;
}

id sub_24833C570(void *a1, char a2)
{
  if (!a1 || (result = [a1 sbh_iconImageAppearance]) == 0)
  {
    result = [objc_opt_self() defaultAppearance];
  }

  if ((a2 & 1) == 0)
  {
    v4 = result;
    v5 = [result appearanceType];
    result = v4;
    if (!v5)
    {
      v6 = v4;
      v7 = [objc_opt_self() darkAppearance];

      return v7;
    }
  }

  return result;
}

uint64_t sub_24833C620()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EB8, &qword_2483A1B60);
    sub_24822D648(&qword_27EE93F00, &qword_27EE93EB8, &qword_2483A1B60, MEMORY[0x277CBCE48]);
    v1 = sub_248382F10();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_24833C6E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28, &qword_24839C8F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_2483818B0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EB8, &qword_2483A1B60);
  swift_allocObject();
  return sub_248382E20();
}

void *sub_24833C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24833E558(a1, a2, a3, a4);

  return v8;
}

void *sub_24833C838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24833E558(a1, a2, a3, a4);

  return v4;
}

id sub_24833C880@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24833C88C(void *a1, uint64_t a2)
{
  v119 = a1;
  v3 = sub_2483816E0();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x28223BE20](v3);
  v110 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EF0, &qword_2483A1BF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v95 - v8;
  v117 = sub_248381740();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v111 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28, &qword_24839C8F0);
  MEMORY[0x28223BE20](v13 - 8);
  v112 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v95 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308, &qword_24839E860);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v95 - v19;
  v21 = sub_2483820C0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v108 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v107 = &v95 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v95 - v29;
  v32 = v31;
  sub_248232C78(a2, v20, &qword_27EE91308, &qword_24839E860);
  if ((*(v32 + 48))(v20, 1, v21) == 1)
  {
    sub_24822D578(v20, &qword_27EE91308, &qword_24839E860);
    v33 = sub_248383D80();
    v34 = *sub_24827B964();
    sub_248382A40(v33, &dword_248146000, v34, "Cannot update widget without RequestContent model", 49, 2, MEMORY[0x277D84F90]);

    return;
  }

  v102 = *(v32 + 32);
  v103 = v32 + 32;
  v102(v30, v20, v21);
  v35 = sub_2483818B0();
  v36 = *(v35 - 8);
  v105 = *(v36 + 56);
  v106 = v35;
  v104 = v36 + 56;
  v105(v17, 1, 1);
  v37 = sub_2483820B0();
  v38 = v17;
  v118 = v32;
  if ((v37 & 1) == 0)
  {
    goto LABEL_13;
  }

  v39 = v9;
  if (!v119)
  {
LABEL_9:
    v51 = sub_248382080();
    v53 = String.isLegacyDynamicContentElementRequest.getter(v51, v52);

    if (!v53)
    {
      goto LABEL_13;
    }

    v54 = sub_248382080();
    v50 = sub_24833D610(v54, v55);
    v48 = v56;

    v49 = sub_2483820A0();
    if (!v48)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v40 = v119;
  v41 = sub_248382080();
  v43 = String.isDynamicContentElementRequest.getter(v41, v42);

  if (!v43)
  {

    v32 = v118;
    goto LABEL_9;
  }

  v44 = sub_248380F20();
  v46 = sub_24833D610(v44, v45);
  v48 = v47;

  v49 = sub_248380F30();

  v50 = v46;
  v32 = v118;
  if (!v48)
  {
    goto LABEL_13;
  }

LABEL_11:
  v100 = v49;
  v101 = v50;
  sub_2483816B0();
  v57 = v115;
  v58 = v117;
  if ((*(v115 + 48))(v39, 1, v117) != 1)
  {
    (*(v57 + 32))(v116, v39, v58);
    v70 = sub_248383D80();
    v71 = *sub_24827B964();
    v72 = *(v32 + 16);
    v73 = v107;
    v98 = v32 + 16;
    v97 = v72;
    v72(v107, v30, v21);
    v74 = os_log_type_enabled(v71, v70);
    v99 = v48;
    if (v74)
    {
      v96 = v71;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v119 = v38;
      v77 = v76;
      v120[0] = v76;
      *v75 = 136315138;
      sub_24833EEA8(&qword_27EE93EF8, MEMORY[0x277CF8D38], MEMORY[0x277CF8D48]);
      v78 = sub_248384650();
      v79 = v70;
      v81 = v80;
      v68 = *(v32 + 8);
      v68(v73, v21);
      v82 = sub_24814A378(v78, v81, v120);

      *(v75 + 4) = v82;
      v83 = v96;
      _os_log_impl(&dword_248146000, v96, v79, "RequestContent widget - Presenting: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v84 = v77;
      v38 = v119;
      MEMORY[0x24C1CD5F0](v84, -1, -1);
      MEMORY[0x24C1CD5F0](v75, -1, -1);
    }

    else
    {
      v68 = *(v32 + 8);
      v68(v73, v21);
    }

    v85 = v109;
    sub_248381700();
    v87 = v113;
    v86 = v114;
    v88 = v110;
    (*(v113 + 104))(v110, *MEMORY[0x277CF8AC0], v114);
    LODWORD(v119) = sub_2483816D0();
    v89 = *(v87 + 8);
    v89(v88, v86);
    v89(v85, v86);
    v90 = v115;
    (*(v115 + 16))(v111, v116, v117);
    v91 = v108;
    v97(v108, v30, v21);
    v92 = (*(v118 + 80) + 17) & ~*(v118 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = v100 & 1;
    v102((v93 + v92), v91, v21);
    v94 = v112;
    sub_2483818A0();
    (*(v90 + 8))(v116, v117);
    sub_24822D578(v38, &qword_27EE8FC28, &qword_24839C8F0);
    (v105)(v94, 0, 1, v106);
    sub_24833EF54(v94, v38);
    goto LABEL_17;
  }

  sub_24822D578(v39, &qword_27EE93EF0, &qword_2483A1BF8);
LABEL_13:
  v59 = sub_248383D80();
  v60 = *sub_24827B964();
  (*(v32 + 16))(v23, v30, v21);
  if (os_log_type_enabled(v60, v59))
  {
    v61 = v60;
    v119 = v38;
    v62 = v61;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v120[0] = v64;
    *v63 = 136315138;
    sub_24833EEA8(&qword_27EE93EF8, MEMORY[0x277CF8D38], MEMORY[0x277CF8D48]);
    v65 = sub_248384650();
    v67 = v66;
    v68 = *(v32 + 8);
    v68(v23, v21);
    v69 = sub_24814A378(v65, v67, v120);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_248146000, v62, v59, "RequestContent widget: Ignoring request for: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x24C1CD5F0](v64, -1, -1);
    MEMORY[0x24C1CD5F0](v63, -1, -1);

    v38 = v119;
  }

  else
  {
    v68 = *(v32 + 8);
    v68(v23, v21);
  }

  sub_24822D578(v38, &qword_27EE8FC28, &qword_24839C8F0);
  (v105)(v38, 1, 1, v106);
LABEL_17:

  sub_248382E10();

  sub_24822D578(v38, &qword_27EE8FC28, &qword_24839C8F0);
  v68(v30, v21);
}

BOOL String.isDynamicContentElementRequest.getter(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0, &qword_24839D660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_248381170();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24822D578(v4, &qword_27EE904C0, &qword_24839D660);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = sub_248381130();
  if (!v11)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  if (v10 != 0xD000000000000015 || v11 != 0x80000002483B36D0)
  {
    v13 = sub_248384680();

    (*(v6 + 8))(v8, v5);
    return (v13 & 1) != 0;
  }

  (*(v6 + 8))(v8, v5);
  return 1;
}

uint64_t sub_24833D610(uint64_t a1, uint64_t a2)
{
  v2 = sub_248381020();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EC0, &qword_2483A1B68);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EC8, &qword_2483A1B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0, &qword_24839D660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_248381170();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &qword_27EE904C0;
    v21 = &qword_24839D660;
    v22 = v15;
LABEL_34:
    sub_24822D578(v22, v20, v21);
    return 0;
  }

  v58 = v2;
  v59 = v3;
  (*(v17 + 32))(v19, v15, v16);
  v23 = sub_248381130();
  v25 = v24;
  v26 = sub_248383960();
  if (v25)
  {
    if (v23 == v26 && v25 == v27)
    {
LABEL_12:

      goto LABEL_13;
    }

    v28 = sub_248384680();

    if (v28)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v29 = sub_248381130();
  v31 = v30;
  v32 = sub_248383960();
  if (!v31)
  {

LABEL_28:
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  if (v29 == v32 && v31 == v33)
  {
    goto LABEL_12;
  }

  v50 = sub_248384680();

  if ((v50 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_13:
  v34 = v60;
  sub_248381040();
  sub_248232C78(v34, v10, &qword_27EE93EC8, &qword_2483A1B70);
  v35 = sub_248381050();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v10, 1, v35) == 1)
  {
    sub_24822D578(v34, &qword_27EE93EC8, &qword_2483A1B70);
    (*(v17 + 8))(v19, v16);
    v22 = v10;
    v20 = &qword_27EE93EC8;
    v21 = &qword_2483A1B70;
    goto LABEL_34;
  }

  v37 = sub_248381030();
  result = (*(v36 + 8))(v10, v35);
  if (!v37)
  {
    sub_24822D578(v34, &qword_27EE93EC8, &qword_2483A1B70);
    goto LABEL_28;
  }

  v39 = v58;
  v54 = *(v37 + 16);
  if (!v54)
  {
LABEL_23:

    v47 = 1;
    v48 = v59;
    v49 = v57;
LABEL_32:
    v51 = v60;
    (*(v48 + 56))(v49, v47, 1, v39);
    if ((*(v48 + 48))(v49, 1, v39) != 1)
    {
      v52 = sub_248381010();
      sub_24822D578(v51, &qword_27EE93EC8, &qword_2483A1B70);
      (*(v17 + 8))(v19, v16);
      (*(v48 + 8))(v49, v39);
      return v52;
    }

    sub_24822D578(v51, &qword_27EE93EC8, &qword_2483A1B70);
    (*(v17 + 8))(v19, v16);
    v20 = &qword_27EE93EC0;
    v21 = &qword_2483A1B68;
    v22 = v49;
    goto LABEL_34;
  }

  v40 = 0;
  v56 = v59 + 16;
  v55 = @"identifier";
  v41 = (v59 + 8);
  while (v40 < *(v37 + 16))
  {
    (*(v59 + 16))(v5, v37 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40, v39);
    v42 = sub_248381000();
    v44 = v43;
    if (v42 == sub_248383960() && v44 == v45)
    {

LABEL_31:
      v48 = v59;
      v49 = v57;
      (*(v59 + 32))(v57, v5, v39);
      v47 = 0;
      goto LABEL_32;
    }

    v46 = sub_248384680();

    if (v46)
    {

      v39 = v58;
      goto LABEL_31;
    }

    ++v40;
    v39 = v58;
    result = (*v41)(v5, v58);
    if (v54 == v40)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

BOOL String.isLegacyDynamicContentElementRequest.getter(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0, &qword_24839D660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_248381170();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24822D578(v4, &qword_27EE904C0, &qword_24839D660);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = sub_248381130();
  if (v11)
  {
    if (v10 == 0x746567646977 && v11 == 0xE600000000000000)
    {
LABEL_17:

      goto LABEL_18;
    }

    v13 = sub_248384680();

    if (v13)
    {
LABEL_18:
      (*(v6 + 8))(v8, v5);
      return 1;
    }
  }

  v14 = sub_248381130();
  if (!v15)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  if (v14 == 0x7274537475706E69 && v15 == 0xEB000000006D6165)
  {
    goto LABEL_17;
  }

  v17 = sub_248384680();

  (*(v6 + 8))(v8, v5);
  return (v17 & 1) != 0;
}

double sub_24833DFCC(char a1, uint64_t a2)
{
  v4 = sub_2483820C0();
  v5 = *(v4 - 8);
  *&result = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = sub_248383D80();
    v10 = *sub_24827B964();
    (*(v5 + 16))(v8, a2, v4);
    if (os_log_type_enabled(v10, v9))
    {
      v11 = v10;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      sub_24833EEA8(&qword_27EE93EF8, MEMORY[0x277CF8D38], MEMORY[0x277CF8D48]);
      v14 = sub_248384650();
      v16 = v15;
      (*(v5 + 8))(v8, v4);
      v17 = sub_24814A378(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_248146000, v11, v9, "RequestContent widget - Dismissing: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
      MEMORY[0x24C1CD5F0](v12, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    v18 = sub_248382090();
    v18();
  }

  return result;
}

uint64_t sub_24833E214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93ED0, qword_2483A1B78);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_24833C620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC30, &qword_24839C8F8);
  sub_24822D648(&qword_27EE8FC38, &qword_27EE8FC30, &qword_24839C8F8, MEMORY[0x277CBCD90]);
  sub_24833EDD0();
  sub_248382FD0();

  sub_24822D648(&qword_27EE93EE8, &qword_27EE93ED0, qword_2483A1B78, MEMORY[0x277CBCBE0]);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24833E3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93ED0, qword_2483A1B78);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_24833C620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC30, &qword_24839C8F8);
  sub_24822D648(&qword_27EE8FC38, &qword_27EE8FC30, &qword_24839C8F8, MEMORY[0x277CBCD90]);
  sub_24833EDD0();
  sub_248382FD0();

  sub_24822D648(&qword_27EE93EE8, &qword_27EE93ED0, qword_2483A1B78, MEMORY[0x277CBCBE0]);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void *sub_24833E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912D0, &qword_24839E830);
  MEMORY[0x28223BE20](v56);
  v53 = &v43 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F08, &qword_2483A1C00);
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F10, &qword_2483A1C08);
  v11 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v43 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F18, &qword_2483A1C10);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F20, &qword_2483A1C18);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  MEMORY[0x28223BE20](v16);
  v51 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28, &qword_24839C8F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - v20;
  v4[2] = 0;
  v22 = sub_2483818B0();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EB8, &qword_2483A1B60);
  swift_allocObject();
  v23 = sub_248382E20();
  v24 = MEMORY[0x277D84FA0];
  v50 = v4;
  v4[3] = v23;
  v4[4] = v24;
  v52 = v4 + 4;
  v43 = a1;
  v4[5] = a1;
  v57 = a2;
  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 16) = v44;
  *(v25 + 24) = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92FD0, &qword_2483A0568);
  v27 = MEMORY[0x277CBCD90];
  sub_24822D648(&qword_27EE92FE0, &qword_27EE92FD0, &qword_2483A0568, MEMORY[0x277CBCD90]);
  sub_248382F70();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F28, &qword_2483A1C20);
  sub_24822D648(&qword_27EE93F30, &qword_27EE93F08, &qword_2483A1C00, MEMORY[0x277CBCC90]);
  v28 = v46;
  sub_248382F60();
  (*(v8 + 8))(v10, v28);
  sub_24822D648(&qword_27EE93F38, &qword_27EE93F10, &qword_2483A1C08, MEMORY[0x277CBCC08]);
  v29 = v48;
  sub_248382F90();
  (*(v11 + 8))(v13, v29);
  v30 = MEMORY[0x277CBCB40];
  sub_24822D648(&qword_27EE93F40, &qword_27EE93F18, &qword_2483A1C10, MEMORY[0x277CBCB40]);
  v31 = v47;
  v32 = sub_248382F10();
  (*(v49 + 8))(v15, v31);
  v57 = v32;
  v58 = sub_248382B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91300, &unk_2483A0DA0);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308, &qword_24839E860) - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24839C7F0;
  v36 = sub_2483820C0();
  (*(*(v36 - 8) + 56))(v35 + v34, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91310, &qword_24839E868);
  sub_24822D648(&qword_27EE91318, &qword_27EE91310, &qword_24839E868, v27);
  sub_248382F90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F48, &qword_2483A1C28);
  sub_24822D648(&qword_27EE93F50, &qword_27EE93F48, &qword_2483A1C28, v27);
  sub_24822D648(&qword_27EE91328, &qword_27EE912D0, &qword_24839E830, v30);
  v37 = v51;
  sub_248382D00();
  v38 = swift_allocObject();
  v39 = v50;
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_24833F030;
  *(v40 + 24) = v38;
  sub_24822D648(&qword_27EE93F58, &qword_27EE93F20, &qword_2483A1C18, MEMORY[0x277CBCAF0]);
  v41 = v54;
  sub_248383000();

  (*(v55 + 8))(v37, v41);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  return v39;
}

unint64_t sub_24833EDD0()
{
  result = qword_27EE93ED8;
  if (!qword_27EE93ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FC28, &qword_24839C8F0);
    sub_24833EEA8(&qword_27EE93EE0, MEMORY[0x277CF8B38], MEMORY[0x277CF8B40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93ED8);
  }

  return result;
}

uint64_t sub_24833EEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24833EEF0()
{
  v1 = *(sub_2483820C0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_24833DFCC(v2, v3);
}

uint64_t sub_24833EF54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28, &qword_24839C8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24833EFC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (sub_248380F40() == v1 && v3 == v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_248384680();
  }

  return v5 & 1;
}

double sub_24833F030(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24833C88C(a1, a2);
  }

  return result;
}

uint64_t sub_24833F0A0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F60, &unk_2483A1C30);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_24833F0F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

void sub_24833F154(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id DBLeafIcon.application.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24833F208(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DBLeafIcon.isLaunchEnabled.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = [v1 isPlaceholder];

  return v2 ^ 1;
}

id DBLeafIcon.__allocating_init(leafIdentifier:applicationBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

id DBLeafIcon.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBLeafIcon();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s9DashBoard10DBLeafIconC4with10drawBorderACSo13DBApplicationC_Sbtcfc_0(void *a1)
{
  v2 = v1;
  v4 = [a1 bundleIdentifier];
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    sub_248383960();
    v6 = sub_248383930();

    sub_248383960();
    v5 = sub_248383930();
  }

  *&v2[OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application] = a1;
  type metadata accessor for DBLeafIconDataSource();
  v7 = a1;
  v8 = v4;
  v9 = DBLeafIconDataSource.__allocating_init(for:)(v7);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DBLeafIcon();
  v10 = objc_msgSendSuper2(&v13, sel_initWithLeafIdentifier_applicationBundleID_, v6, v5);

  v11 = v10;
  [v11 addIconDataSource_];

  return v11;
}

uint64_t sub_24833F634(uint64_t a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v6 = sub_24822B8A0(0x6E61726165707061, 0xEE0065646F4D6563), (v7 & 1) != 0))
  {
    sub_24814A550(*(a1 + 56) + 32 * v6, v16);

    if (swift_dynamicCast())
    {
      v8 = v15;
      if ((v15 + 1) < 3)
      {
        return qword_2483A1C50[v15 + 1];
      }

      v10 = sub_24827C568();
      (*(v3 + 16))(v5, v10, v2);
      v11 = sub_248382A80();
      v12 = sub_248383DA0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134349056;
        *(v13 + 4) = v8;
        _os_log_impl(&dword_248146000, v11, v12, "Unknown appearance mode %{public}ld", v13, 0xCu);
        MEMORY[0x24C1CD5F0](v13, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
  }

  return -1;
}

id static DBAppToAppAnimation.animation(with:)(void (*a1)(void))
{
  type metadata accessor for DBAnimationSettings();
  v2 = DBAnimationSettings.__allocating_init()();
  a1();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = type metadata accessor for _DBAppSwitchReducedMotionAnimation();
  }

  else
  {
    v3 = type metadata accessor for _DBAppSwitchDosidoAnimation();
  }

  v4 = objc_allocWithZone(v3);
  return DBDashboardAnimation.init(settings:)(v2);
}

void sub_24833FA2C(void (*a1)(void), uint64_t a2)
{
  v5 = DBDashboardAnimation.fromTransitionContainerView.getter();
  if (v5)
  {
    v6 = v5;
    v7 = DBDashboardAnimation.toTransitionContainerView.getter();
    if (v7)
    {
      v8 = v7;
      v9 = DBDashboardAnimation.toView.getter();
      if (v9)
      {
        v10 = v9;
        v11 = DBDashboardAnimation.fromView.getter();
        if (v11)
        {
          v12 = v11;
          v13 = DBDashboardAnimation.rootContainerView.getter();
          if (v13)
          {
            v37 = v12;
            v38 = v13;
            [v8 addSubview_];
            [v8 bounds];
            [v10 setFrame_];
            CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
            [v10 setTransform_];
            type metadata accessor for DBAnimationView();
            v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_24839C7F0;
            *(v15 + 32) = sub_248383960();
            *(v15 + 40) = v16;
            v17 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
            swift_beginAccess();
            *&v14[v17] = v15;

            v18 = v14;
            [v6 addSubview_];
            [v6 bounds];
            [v18 setFrame_];
            [v18 addSubview_];
            v19 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
            [v19 setName_];
            v20 = sub_248383CC0();
            [v19 setValue:v20 forKey:@"inputRadius"];

            v21 = [v18 layer];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0, &qword_2483A01A0);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_24839C7F0;
            *(v22 + 56) = sub_248260D3C();
            *(v22 + 32) = v19;
            v36 = v19;
            v23 = sub_248383B00();

            [v21 setFilters_];

            v35 = objc_opt_self();
            v24 = swift_allocObject();
            v24[2] = v38;
            v24[3] = v2;
            v24[4] = v10;
            v24[5] = v18;
            *&aBlock.tx = sub_248340430;
            *&aBlock.ty = v24;
            *&aBlock.a = MEMORY[0x277D85DD0];
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_24814C01C;
            *&aBlock.d = &block_descriptor_64_0;
            v34 = _Block_copy(&aBlock);
            v25 = v18;
            v26 = v38;
            v27 = v2;
            v28 = v10;

            v29 = swift_allocObject();
            v29[2] = v25;
            v29[3] = a1;
            v29[4] = a2;
            *&aBlock.tx = sub_248340504;
            *&aBlock.ty = v29;
            *&aBlock.a = MEMORY[0x277D85DD0];
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_2482614B8;
            *&aBlock.d = &block_descriptor_70_0;
            v30 = _Block_copy(&aBlock);
            v31 = v25;
            sub_248167910(a1, a2);

            [v35 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

            _Block_release(v30);
            _Block_release(v34);
            return;
          }

          v33 = v8;
          v32 = v10;
          v6 = v12;
        }

        else
        {
          v33 = v6;
          v32 = v8;
          v6 = v10;
        }
      }

      else
      {
        v32 = v6;
        v6 = v8;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_248340004(void (*a1)(void), uint64_t a2)
{
  v5 = DBDashboardAnimation.fromTransitionContainerView.getter();
  if (v5)
  {
    v6 = v5;
    v7 = DBDashboardAnimation.toTransitionContainerView.getter();
    if (v7)
    {
      v8 = v7;
      v9 = DBDashboardAnimation.toView.getter();
      if (v9)
      {
        v10 = v9;
        v11 = DBDashboardAnimation.fromView.getter();
        if (v11)
        {
          v12 = v11;
          v13 = DBDashboardAnimation.rootContainerView.getter();
          if (v13)
          {
            v14 = v13;
            [v8 addSubview_];
            [v8 bounds];
            [v10 setFrame_];
            [v6 addSubview_];
            [v6 bounds];
            [v12 setFrame_];
            v24 = objc_opt_self();
            v15 = swift_allocObject();
            v15[2] = v14;
            v15[3] = v2;
            v15[4] = v12;
            v29 = sub_2483403C0;
            v30 = v15;
            aBlock = MEMORY[0x277D85DD0];
            v26 = 1107296256;
            v27 = sub_24814C01C;
            v28 = &block_descriptor_28;
            v23 = _Block_copy(&aBlock);
            v16 = v14;
            v17 = v2;
            v18 = v12;

            v19 = swift_allocObject();
            *(v19 + 16) = a1;
            *(v19 + 24) = a2;
            v29 = sub_248260F70;
            v30 = v19;
            aBlock = MEMORY[0x277D85DD0];
            v26 = 1107296256;
            v27 = sub_24824BBE0;
            v28 = &block_descriptor_55;
            v20 = _Block_copy(&aBlock);
            sub_248167910(a1, a2);

            [v24 animateWithDuration:v23 animations:v20 completion:0.5];
            _Block_release(v20);
            _Block_release(v23);

            return;
          }

          v22 = v8;
          v21 = v10;
          v6 = v12;
        }

        else
        {
          v22 = v6;
          v21 = v8;
          v6 = v10;
        }
      }

      else
      {
        v21 = v6;
        v6 = v8;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

id sub_248340388(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2483403C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  return [v2 setAlpha_];
}

id sub_248340430()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v4 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  CGAffineTransformMakeScale(&v6, 1.0, 1.0);
  [v3 setTransform_];
  [v2 setAlpha_];
  CGAffineTransformMakeScale(&v6, 1.05, 1.05);
  return [v2 setTransform_];
}

id sub_248340504()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) removeFromSuperview];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

void *DBGlassInCallWidgetButton.init(buttonType:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0, &qword_24839E130);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v53 - v4;
  v5 = sub_248384070();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248384100();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC9DashBoard25DBGlassInCallWidgetButton_focusEffectConstraints] = 0;
  v12 = type metadata accessor for DBGlassInCallWidgetButton();
  v60.receiver = v1;
  v60.super_class = v12;
  v13 = objc_msgSendSuper2(&v60, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  [v14 defaultStrokeWidth];
  v17 = v16 + 20.0;
  [v14 defaultStrokeWidth];
  v19 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithCornerRadius:v17 strokeWidth:v18];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = v15;
  [v20 addSubview_];
  v21 = *((*MEMORY[0x277D85000] & *v20) + 0x78);
  v58 = v19;
  v21(v19);

  v22 = objc_opt_self();
  if (a1 == 1)
  {
    v23 = &selRef__carSystemTertiaryColor;
    v24 = 22;
  }

  else
  {
    if (a1)
    {
      v49 = v22;
      v50 = [v22 whiteColor];
      v51 = [v49 whiteColor];

      return v20;
    }

    v23 = &selRef_externalSystemRedColor;
    v24 = 2;
  }

  v25 = v22;
  v26 = [v22 *v23];
  v27 = [v25 externalSystemRedColor];
  sub_2483840E0();
  v28 = objc_opt_self();
  v29 = *MEMORY[0x277D76920];
  v30 = [v28 tpImageForSymbolType:v24 textStyle:*MEMORY[0x277D76920] scale:3 isStaticSize:1];
  sub_2483840C0();
  (*(v6 + 104))(v8, *MEMORY[0x277D74FD8], v5);
  sub_248384080();
  v31 = [objc_opt_self() configurationWithTextStyle:v29 scale:-1];
  sub_248384040();
  v32 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v26;
  v33[4] = v27;
  aBlock[4] = sub_2483414AC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24826F624;
  aBlock[3] = &block_descriptor_29;
  v34 = _Block_copy(aBlock);
  v35 = v20;
  v54 = v26;
  v53 = v27;

  [v35 setConfigurationUpdateHandler_];
  _Block_release(v34);
  v36 = v55;
  v37 = v56;
  v38 = v57;
  (*(v56 + 16))(v55, v11, v57);
  (*(v37 + 56))(v36, 0, 1, v38);
  sub_248384120();

  [v35 setNeedsUpdateConfiguration];
  v55 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24839D8B0;
  v40 = [v35 widthAnchor];

  v41 = [v40 constraintEqualToConstant_];
  *(v39 + 32) = v41;
  v42 = [v35 heightAnchor];

  v43 = [v35 widthAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v39 + 40) = v44;
  sub_248264108();
  v45 = sub_248383B00();

  [v55 activateConstraints_];

  sub_248340F9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90, &unk_24839CCF0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_24839C7F0;
  v47 = sub_248382BE0();
  v48 = MEMORY[0x277D74B68];
  *(v46 + 32) = v47;
  *(v46 + 40) = v48;
  MEMORY[0x24C1CB580](v46, sel_updateFocusEffectConstraints);

  swift_unknownObjectRelease();

  (*(v37 + 8))(v11, v38);
  return v20;
}

void sub_248340CE0(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0, &qword_24839E130);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_248384110();
  v14 = sub_248384100();
  v15 = *(*(v14 - 8) + 48);
  if (v15(v12, 1, v14))
  {
    sub_2482A0A94(v12, v9);
    sub_248384120();

    sub_2482A0B04(v12);
  }

  else
  {
    v25 = a3;
    v16 = swift_unknownObjectUnownedLoadStrong();
    v17 = [v16 isSelected];

    if (v17)
    {
      v18 = [objc_opt_self() _carSystemPrimaryColor];
    }

    else
    {
      v19 = v26;
    }

    sub_248384090();
    sub_248384120();

    a3 = v25;
  }

  v20 = swift_unknownObjectUnownedLoadStrong();
  sub_248384110();
  if (v15(v6, 1, v14))
  {
    sub_2482A0A94(v6, v9);
    sub_248384120();

    sub_2482A0B04(v6);
  }

  else
  {
    v21 = swift_unknownObjectUnownedLoadStrong();
    v22 = [v21 isSelected];

    if (v22)
    {
      v23 = a3;
    }

    else
    {
      v24 = [objc_opt_self() whiteColor];
    }

    sub_2483840A0();
    sub_248384120();
  }
}

void sub_248340F9C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC9DashBoard25DBGlassInCallWidgetButton_focusEffectConstraints;
    if (*(v0 + OBJC_IVAR____TtC9DashBoard25DBGlassInCallWidgetButton_focusEffectConstraints))
    {
      v4 = objc_opt_self();
      sub_248264108();
      swift_bridgeObjectRetain_n();
      v5 = sub_248383B00();
      [v4 deactivateConstraints_];
      swift_bridgeObjectRelease_n();
    }

    v6 = [v0 traitCollection];
    [v6 displayScale];
    v8 = v7;

    if (v8 != 0.0)
    {
      v9 = [v0 traitCollection];
      [v9 displayScale];
    }

    v10 = [v0 traitCollection];
    [v10 displayScale];
    v12 = v11;

    v13 = objc_opt_self();
    [v13 defaultStrokeWidth];
    v15 = v14 + -1.0 / v12 + v14 + -1.0 / v12 + 40.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24839CCB0;
    v17 = v2;
    v18 = [v17 widthAnchor];
    v19 = [v18 constraintEqualToConstant_];

    *(v16 + 32) = v19;
    v20 = [v17 heightAnchor];
    v21 = [v17 widthAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v16 + 40) = v22;
    v23 = [v17 centerXAnchor];
    v24 = [v0 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v16 + 48) = v25;
    v26 = [v17 centerYAnchor];

    v27 = [v0 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v16 + 56) = v28;
    [v13 defaultStrokeWidth];
    [v17 updateEffectWithCornerRadius:v15 * 0.5 strokeWidth:v29];
    v30 = objc_opt_self();
    sub_248264108();
    v31 = sub_248383B00();
    [v30 activateConstraints_];

    *(v0 + v3) = v16;
  }
}

id DBGlassInCallWidgetButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBGlassInCallWidgetButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBGlassInCallWidgetButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2483414B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2, v5);
  sub_2483415A8(v7, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_2483415A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_248382E50();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_248341698()
{
  v1 = *(v0 + *(*v0 + 112));

  return v1;
}

id sub_2483416FC()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t sub_24834173C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  sub_2483417A4(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_2483417A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v31 = *v5;
  v9 = v31;
  v32 = a1;
  v10 = *(v31 + 80);
  v11 = sub_2483841F0();
  v30[1] = *(v11 - 8);
  v30[2] = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v30 - v19;
  v21 = (v5 + *(v9 + 112));
  *v21 = a2;
  v21[1] = a3;
  *(v5 + *(*v5 + 120)) = a4;

  v22 = a4;
  v23 = sub_248383930();

  v24 = [v22 objectForKey_];

  if (v24)
  {
    sub_248384230();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_24822D578(v37, &unk_27EE941B0, &unk_24839C9C0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v27 = v32;
    (*(v14 + 16))(v17, v32, v10);
    swift_beginAccess();
    sub_2483414B8(v17, v10);
    swift_endAccess();

    (*(v14 + 8))(v27, v10);
    return v5;
  }

  v26 = v33;
  v25 = v34;
  sub_248380F80();
  swift_allocObject();
  sub_248380F70();
  v31 = v25;
  sub_248380F60();

  (*(v14 + 56))(v13, 0, 1, v10);
  (*(v14 + 32))(v20, v13, v10);
  (*(v14 + 16))(v17, v20, v10);
  swift_beginAccess();
  sub_2483414B8(v17, v10);
  swift_endAccess();
  sub_24823BD70(v26, v31);

  v29 = *(v14 + 8);
  v29(v32, v10);
  v29(v20, v10);
  return v5;
}

double sub_248341C4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248382E90();

  return result;
}

uint64_t sub_248341D24(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v33[0] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33[1] = v33 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  v15 = *(v4 + 16);
  v35 = v16;
  v15(v33 - v13, v12);
  v45 = v3;
  v46 = *(v2 + 88);
  v17 = v46;
  v18 = *(v2 + 96);
  v47 = v18;
  KeyPath = swift_getKeyPath();
  v42 = v3;
  v43 = v17;
  v44 = v18;
  swift_getKeyPath();
  (v15)(v10, v14, v3);

  sub_248382EA0();
  v19 = *(v4 + 8);
  KeyPath = v4 + 8;
  v19(v14, v3);
  v39 = v3;
  v40 = v17;
  v41 = v18;
  swift_getKeyPath();
  v36 = v3;
  v37 = v17;
  v38 = v18;
  swift_getKeyPath();
  sub_248382E90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F78, &qword_2483A1DA0);
  if (swift_dynamicCast())
  {
    sub_24814F6F4(v48, v50);
    __swift_project_boxed_opaque_existential_0(v50, v50[3]);
    if (sub_248381810())
    {
      v20 = *(v1 + *(*v1 + 120));
      v21 = sub_248383930();
      [v20 removeObjectForKey_];

      v19(v35, v3);
      return __swift_destroy_boxed_opaque_existential_0(v50);
    }

    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    sub_24822D578(v48, &qword_27EE93F80, &qword_2483A1DA8);
  }

  v23 = *(v1 + *(*v1 + 120));
  sub_248380FB0();
  swift_allocObject();
  v24 = sub_248380FA0();
  MEMORY[0x28223BE20](v24);
  v33[-4] = v3;
  v33[-3] = v17;
  v33[-2] = v18;
  v25 = swift_getKeyPath();
  MEMORY[0x28223BE20](v25);
  v33[-4] = v3;
  v33[-3] = v17;
  v33[-2] = v18;
  swift_getKeyPath();
  v26 = v33[0];
  sub_248382E90();
  v27 = v26;

  v28 = sub_248380F90();
  v30 = v29;
  v19(v27, v3);

  v50[0] = v28;
  v50[1] = v30;
  v31 = sub_248384670();
  sub_248344170(v50);
  v32 = sub_248383930();
  [v23 setObject:v31 forKey:v32];
  swift_unknownObjectRelease();

  return (v19)(v35, v3);
}

void (*sub_2483422BC(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_248341C48();
  return sub_2483423D0;
}

void sub_2483423D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_248341D24(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_248341D24(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_248342484()
{
  swift_beginAccess();
  sub_248382EC0();
  sub_248382E60();
  return swift_endAccess();
}

uint64_t sub_248342510(__n128 a1)
{
  v2 = *(*v1 + 104);
  v3 = sub_248382EC0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t sub_2483425D0(__n128 a1)
{
  sub_248342510(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_248342628()
{
  v1 = *v0;
  v16 = *(*v0 + 80);
  v2 = sub_248382EB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  swift_getWitnessTable();
  v6 = sub_248382D40();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v1 + 208);
  v1 += 208;
  v11(v8);
  v12 = swift_allocObject();
  v12[2] = v16;
  v12[3] = *(v1 - 120);
  v12[4] = *(v1 - 112);
  sub_248382F60();

  (*(v3 + 8))(v5, v2);
  swift_getWitnessTable();
  v13 = sub_248382F10();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_2483428B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](*(v3 + 80));
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248384660();
  return (*(v3 + 176))(v8, a1, a2, a3);
}

void *sub_248342974()
{
  type metadata accessor for DBDefaults();
  v0 = swift_allocObject();
  result = sub_248342E04();
  qword_27EE99030 = v0;
  return result;
}

uint64_t sub_2483429B0()
{
  v0 = swift_allocObject();
  sub_248342E04();
  return v0;
}

uint64_t *sub_2483429E8()
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  return &qword_27EE99030;
}

double sub_248342A38()
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double sub_248342AB0(uint64_t a1)
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EE99030 = a1;

  return result;
}

uint64_t (*sub_248342B30(uint64_t a1))(uint64_t a1)
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_248342BB8(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F88, qword_2483A1DB0);
  swift_allocObject();
  v3 = sub_248345620(a1, 0xD00000000000001CLL, 0x80000002483B3970, v2);

  return v3;
}

uint64_t sub_248342C58()
{
  v1 = *(**(v0 + 16) + 184);

  v1(&v4, v2);

  return v4;
}

double sub_248342CC4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v3 = *(*v2 + 192);

  v3(&v5);

  return result;
}

double sub_248342D3C()
{
  v1 = *(**(v0 + 16) + 208);

  v1(v2);

  return result;
}

unint64_t sub_248342DAC()
{
  if (!(MEMORY[0x277D84F90] >> 62) || !sub_248384360())
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = MEMORY[0x277D84F90];

  return sub_24822D018(v2);
}

void *sub_248342E04()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2483847E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_2483458BC(MEMORY[0x277D84F90]);
  v9 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F88, qword_2483A1DB0);
  swift_allocObject();
  v10 = sub_248345620(v8, 0xD00000000000001CLL, 0x80000002483B3970, v9);

  v1[2] = v10;
  if (v7 >> 62 && sub_248384360())
  {
    v11 = sub_24822D018(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v1[3] = v11;
  v13[5] = v2;
  v13[2] = v1;

  sub_2483847C0();
  sub_2483847D0();
  (*(v4 + 8))(v6, v3);
  sub_248384520();

  return v1;
}

void sub_24834301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A98, &qword_24839FEE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  (*(v17 + 16))(&v36 - v15, a2, v14);
  sub_248232C78(a1, v12, &qword_27EE92A98, &qword_24839FEE0);
  v18 = *(**(v4 + 16) + 200);

  v36 = v18(v38);
  v20 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v20;
  v22 = v37;
  *v20 = 0x8000000000000000;
  v24 = sub_24822B8A0(a3, a4);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v23;
  if (v22[3] >= v27)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_2483454B0();
    goto LABEL_6;
  }

  sub_248344670(v27, isUniquelyReferenced_nonNull_native);
  v28 = sub_24822B8A0(a3, a4);
  if ((v5 & 1) != (v29 & 1))
  {
    goto LABEL_13;
  }

  v24 = v28;
LABEL_6:
  *v20 = v37;

  v30 = *v20;
  if (v5)
  {
LABEL_9:
    sub_248343300(v12, v16);
    v36(v38, 0);

    return;
  }

  v31 = sub_248345B84(MEMORY[0x277D84F90]);
  v30[(v24 >> 6) + 8] |= 1 << v24;
  v32 = (v30[6] + 16 * v24);
  *v32 = a3;
  v32[1] = a4;
  *(v30[7] + 8 * v24) = v31;
  v33 = v30[2];
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    v30[2] = v35;

    goto LABEL_9;
  }

  __break(1u);
LABEL_13:
  sub_2483846E0();
  __break(1u);
}

uint64_t sub_248343300(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A98, &qword_24839FEE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_24822D578(a1, &qword_27EE92A98, &qword_24839FEE0);
    sub_248344A24(a2, v7);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_24822D578(v7, &qword_27EE92A98, &qword_24839FEE0);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_248344F34(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_24834354C(uint64_t *a1)
{
  v2 = v1;
  sub_248383BB0();

  v4 = sub_248383BA0();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v1;
  v5[5] = a1;

  v7 = sub_248383BA0();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v2;
  v8[5] = a1;

  return sub_248383720();
}

double sub_24834368C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(v8 - v5, v4);
  v8[1] = a2;

  swift_setAtReferenceWritableKeyPath();

  return result;
}

uint64_t sub_24834379C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v29 = a2;
  v30 = *(*a1 + *MEMORY[0x277D84568] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v26 = *(v6 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = v24 - v8;
  v28 = *(v6 + 16);
  v28(v7);
  sub_248383BB0();

  v9 = sub_248383BA0();
  v24[0] = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v10 = v24[0];
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v9;
  v11[3] = v12;
  v13 = v31;
  v11[4] = v30;
  v11[5] = v13;
  v11[6] = v3;
  v11[7] = a1;
  v14 = *(v6 + 32);
  v24[1] = v6 + 32;
  v15 = v11 + v10;
  v16 = v25;
  v17 = AssociatedTypeWitness;
  v14(v15, v25, AssociatedTypeWitness);
  (v28)(v16, v29, v17);

  v18 = sub_248383BA0();
  v19 = v24[0];
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  v22 = v30;
  v21 = v31;
  *(v20 + 3) = MEMORY[0x277D85700];
  *(v20 + 4) = v22;
  *(v20 + 5) = v21;
  *(v20 + 6) = v4;
  *(v20 + 7) = a1;
  v14(&v20[v19], v16, v17);
  sub_248383720();
  return v32;
}

uint64_t sub_248343A48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a5@<X8>)
{
  v6 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15[-v8 - 8];
  v16 = v10;

  v11 = swift_readAtKeyPath();
  (*(v7 + 16))(v9);
  v11(v15, 0);

  v12 = sub_2483842A0();
  result = (*(v7 + 8))(v9, v6);
  *a5 = v12 & 1;
  return result;
}

double sub_248343BD0(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a4;
  v24 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_2483841F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (*v22 == 1)
  {
    (*(v11 + 16))(v14, v23, AssociatedTypeWitness, v16);
    v26 = a2;

    v19 = swift_modifyAtReferenceWritableKeyPath();
    sub_248384270();
    (*(v11 + 8))(v18, AssociatedTypeWitness);
    v19(v25, 0);
  }

  else
  {
    v26 = a2;

    v20 = swift_modifyAtReferenceWritableKeyPath();
    sub_248384280();
    (*(v8 + 8))(v10, v7);
    v20(v25, 0);
  }

  return result;
}

uint64_t sub_248343E8C()
{

  return v0;
}

uint64_t sub_248343EB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_248343EF4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_248382DE0();
  *a2 = result;
  return result;
}

double sub_248343F44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248382E90();

  return result;
}

uint64_t sub_248343FE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  v14 = *(v7 + 16);
  v14(v16 - v12, v11);
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v6;
  swift_getKeyPath();
  v16[0] = v4;
  v16[1] = v5;
  v16[2] = v6;
  swift_getKeyPath();
  (v14)(v9, v13, v4);

  sub_248382EA0();
  return (*(v7 + 8))(v13, v4);
}

void sub_2483441C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v41 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F98, &qword_2483A1EA8);
  v48 = v4;
  v11 = sub_2483845D0();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_2482EBCC0(&qword_27EE92D10, MEMORY[0x277D837E0], MEMORY[0x277CF8B10]);
      v32 = sub_2483838D0();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_248344670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F90, &unk_2483A1E98);
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

uint64_t sub_248344918(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_248344A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2482E6D00(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24834514C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_248344BE8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_248344BE8(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_2483842F0();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_2482EBCC0(&qword_27EE92D10, MEMORY[0x277D837E0], MEMORY[0x277CF8B10]);
      v21 = sub_2483838D0();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_248344F34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = *v3;
  v14 = sub_2482E6D00(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24834514C();
      goto LABEL_7;
    }

    sub_2483441C4(v17, a3 & 1);
    v28 = sub_2482E6D00(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_248344918(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2483846E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_24834514C()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F98, &qword_2483A1EA8);
  v4 = *v0;
  v5 = sub_2483845C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_2483454B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F90, &unk_2483A1E98);
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

uint64_t sub_248345620(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = (v5 + *(*v5 + 112));
  *v7 = a2;
  v7[1] = a3;
  *(v5 + *(*v5 + 120)) = a4;

  v8 = a4;
  v9 = sub_248383930();

  v10 = [v8 objectForKey_];

  if (v10)
  {
    sub_248384230();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_24822D578(v16, &unk_27EE941B0, &unk_24839C9C0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FD0, &qword_2483A1ED8);
    sub_248382E50();
    swift_endAccess();
    return v5;
  }

  sub_248380F80();
  swift_allocObject();
  sub_248380F70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FD0, &qword_2483A1ED8);
  sub_2483462A4();
  sub_248380F60();

  swift_beginAccess();

  sub_248382E50();
  swift_endAccess();

  sub_24823BD70(v12, v13);
  return v5;
}

unint64_t sub_2483458BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F90, &unk_2483A1E98);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24822B8A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

double sub_2483459C0(uint64_t a1)
{
  sub_248232C78(a1, v5, &qword_27EE93FA8, &qword_2483A1EB8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FB0, &qword_2483A1EC0);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType);
    swift_unknownObjectRelease();
    sub_24834625C(&qword_27EE93FB8, v3, type metadata accessor for DBDefaults, &unk_2483A1DC8);
    sub_248382DE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FC0, &qword_2483A1EC8);
    sub_2483461F8();
    sub_248383000();

    swift_beginAccess();
    sub_248382DB0();
    swift_endAccess();
  }

  return result;
}

unint64_t sub_248345B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FA0, &qword_2483A1EB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F98, &qword_2483A1EA8);
    v7 = sub_2483845F0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_248232C78(v9, v5, &qword_27EE93FA0, &qword_2483A1EB0);
      result = sub_2482E6D00(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40, &unk_24839FEB0);
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50, &qword_24839FEC0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

double sub_248345DBC@<D0>(uint64_t a1@<X8>)
{
  v3 = **(v1 + 40);
  v7 = *(v1 + 32);

  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a1);
  v4(v6, 0);

  return result;
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248345EF0@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);

  return sub_248343A48(v3, v4, a1);
}

uint64_t objectdestroy_9Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_248346074(_BYTE *a1)
{
  v3 = v1[5];
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_248343BD0(a1, v5, v6, v7, v3);
}

uint64_t sub_24834610C(uint64_t a1, __n128 a2)
{
  result = sub_248382EC0();
  if (v3 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2483461F8()
{
  result = qword_27EE93FC8;
  if (!qword_27EE93FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93FC0, &qword_2483A1EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93FC8);
  }

  return result;
}

uint64_t sub_24834625C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_2483462A4()
{
  result = qword_27EE93FD8;
  if (!qword_27EE93FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93FD0, &qword_2483A1ED8);
    sub_248346330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93FD8);
  }

  return result;
}

unint64_t sub_248346330()
{
  result = qword_27EE93FE0;
  if (!qword_27EE93FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE92D08, &qword_2483A1EE0);
    sub_2483463EC(&qword_27EE93FE8, &unk_27EE92A40, &unk_24839FEB0);
    sub_2483463EC(&unk_27EE93FF0, &unk_27EE92A50, &qword_24839FEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93FE0);
  }

  return result;
}

uint64_t sub_2483463EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DBUISyncSessionError.hashValue.getter(unsigned __int8 a1)
{
  sub_248384780();
  MEMORY[0x24C1CBD70](a1);
  return sub_2483847B0();
}

uint64_t sub_2483464E4(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_248346520(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x80000002483B3A20;
      v3 = 0xD000000000000024;
    }

    else
    {
      v4 = 0xE500000000000000;
      v3 = 0x7964616572;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x696C616974696E69;
    }

    if (v2)
    {
      v4 = 0x80000002483B3A00;
    }

    else
    {
      v4 = 0xEB0000000064657ALL;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002483B3A20;
      if (v3 != 0xD000000000000024)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE500000000000000;
      if (v3 != 0x7964616572)
      {
LABEL_26:
        v7 = sub_248384680();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x696C616974696E69;
    }

    if (a2)
    {
      v6 = 0x80000002483B3A00;
    }

    else
    {
      v6 = 0xEB0000000064657ALL;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_248346680()
{
  v1 = *v0;
  sub_248384780();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x24C1CBD70](v2);
  return sub_2483847B0();
}