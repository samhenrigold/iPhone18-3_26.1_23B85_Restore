id sub_1E3DCE9A8(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_vui_setHighlighted_, a1 & 1);
  v3 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
  OUTLINED_FUNCTION_15_0(v1 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0], v4);
  result = *(v3 + v1);
  if (result)
  {
    return [result vui:a1 & 1 setHighlighted:?];
  }

  return result;
}

id sub_1E3DCEA64()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout) = 0;
  *(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0] + v0) = 0;
  *(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel + v0) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3DCEB14()
{
  OUTLINED_FUNCTION_11_5();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0]] = 0;
  *(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel + v0) = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, v1);

  if (v3)
  {
  }

  return v3;
}

void *sub_1E3DCEC5C@<X0>(void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v8 = v7;
  sub_1E41A300C(__src);
  v15 = [v7 vui:a3 sizeThatFits:0.0];
  sub_1E41A2FE8(v15, v16, v17);
  v18 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel;
  OUTLINED_FUNCTION_5_0(&v8[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel], v32);
  v19 = *&v8[v18];
  if (v19)
  {
    v20 = *&v8[v18];
LABEL_5:
    v24 = v20;
    [v19 bottomMarginWithBaselineMargin_];
    a6 = v25;

    goto LABEL_6;
  }

  v21 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel;
  OUTLINED_FUNCTION_5_0(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel + v8, v31);
  v23 = *(v21 + v8);
  if (v23)
  {
    v19 = v23;
    v20 = 0;
    goto LABEL_5;
  }

  v19 = 0;
LABEL_6:
  v26 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
  OUTLINED_FUNCTION_15_0(&v8[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout], v22);
  if (*&v8[v26])
  {
    OUTLINED_FUNCTION_8();
    v28 = *(v27 + 1728);

    LOBYTE(v28) = v28(v29);

    if (v28)
    {
      a6 = 0.0;
    }
  }

  else
  {
  }

  *&__src[6] = a4;
  *&__src[7] = a5;
  *&__src[8] = a6;
  *&__src[9] = a7;
  return memcpy(a2, __src, 0x50uLL);
}

void sub_1E3DCEE30(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
  OUTLINED_FUNCTION_15_0(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0] + v2, a2);
  v5 = *(v4 + v2);
  if (v5)
  {
    v6 = v5;
    sub_1E38B1D18(a1 & 1);
  }
}

uint64_t sub_1E3DCEE98(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1E39C2CD0();
  if (!v5)
  {
    return 2;
  }

  if (!a3 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_8:
    v21 = [objc_opt_self() favoritesSyncCompleted];
    v22 = v21;
    if (a3)
    {
      if (v21)
      {
        sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
        v23 = a3;
        v24 = sub_1E4206F64();

        if (v24)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!v21)
      {
LABEL_16:
        sub_1E3CFEA54();
        OUTLINED_FUNCTION_8();
        v27 = *(v26 + 376);

        v28 = OUTLINED_FUNCTION_53();
        v29 = v27(v28);

        v32 = 0;
        v31 = MEMORY[0x1E69E6370];
        v30[0] = v29 & 1;
        (*(*a1 + 784))(&v32, v30, &unk_1F5D5D528, &off_1F5D5C858);
        sub_1E325F748(v30, &unk_1ECF296E0, &unk_1E4298030);
        sub_1E3DCEE30(v29 & 1, 1);
        return 0;
      }
    }

    return 2;
  }

  v7 = v6;
  v8 = a3;
  v9 = [v7 addedEntityIDs];
  v10 = sub_1E4206624();

  v11 = OUTLINED_FUNCTION_53();
  LOBYTE(v9) = sub_1E3862230(v11, v12, v10);

  if ((v9 & 1) == 0)
  {
    v13 = [v7 removedEntityIDs];
    v14 = sub_1E4206624();

    v15 = OUTLINED_FUNCTION_53();
    LOBYTE(v13) = sub_1E3862230(v15, v16, v14);

    if ((v13 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v17 = [v7 addedEntityIDs];
  v18 = sub_1E4206624();

  v19 = OUTLINED_FUNCTION_53();
  LOBYTE(v17) = sub_1E3862230(v19, v20, v18);

  v32 = 0;
  v31 = MEMORY[0x1E69E6370];
  v30[0] = v17 & 1;
  (*(*a1 + 784))(&v32, v30, &unk_1F5D5D528, &off_1F5D5C858);
  sub_1E325F748(v30, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E3DCEE30(v17 & 1, 1);

  return 0;
}

id sub_1E3DCF238(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v2 + v1);
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageAndShadowContainerView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 layer];
    [v6 frame];
    [v7 setCornerRadius_];
  }

  return v5;
}

uint64_t sub_1E3DCF35C()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted, v3);
  return *(v0 + v1);
}

uint64_t sub_1E3DCF398(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

double sub_1E3DCF414()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (!v1)
  {
    return 0.0;
  }

  v9 = v1;
  v10 = OUTLINED_FUNCTION_8_148(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15);
  if (v10)
  {
    [v10 contentsHeight];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

void sub_1E3DCF638()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v12 = &unk_1F5F3CDE0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = (v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad);
      OUTLINED_FUNCTION_5_0(v6, v11);
      if (*v6)
      {
        v7 = v6[1];
        v10[4] = *v6;
        v10[5] = v7;
        OUTLINED_FUNCTION_3_4();
        v10[1] = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v10[2] = v8;
        v10[3] = &block_descriptor_55_0;
        v9 = _Block_copy(v10);
      }

      else
      {
        v9 = 0;
      }

      [v5 setContentsDidLoad_];
      _Block_release(v9);
    }
  }
}

uint64_t (*sub_1E3DCF75C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3DCF7B0;
}

uint64_t sub_1E3DCF878(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  OUTLINED_FUNCTION_5_0(v4, v7);
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E3DCF9B4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t))
{
  v12 = (v6 + *a3);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = a1;
  v12[1] = a2;
  a4(a1, a2);
  v15 = a5(v13, v14);
  a6(v15);
  return a5(a1, a2);
}

void sub_1E3DCFA68()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v12 = &unk_1F5F3CDE0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = (v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract);
      OUTLINED_FUNCTION_5_0(v6, v11);
      if (*v6)
      {
        v7 = v6[1];
        v10[4] = *v6;
        v10[5] = v7;
        OUTLINED_FUNCTION_3_4();
        v10[1] = 1107296256;
        OUTLINED_FUNCTION_26_41();
        v10[2] = v8;
        v10[3] = &block_descriptor_52_2;
        v9 = _Block_copy(v10);
      }

      else
      {
        v9 = 0;
      }

      [v5 setDidInteract_];
      _Block_release(v9);
    }
  }
}

uint64_t (*sub_1E3DCFB8C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3DCFBE0;
}

uint64_t sub_1E3DCFBF8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1E3DCFC70()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (!v1)
  {
    return 0;
  }

  v9 = v1;
  v10 = OUTLINED_FUNCTION_8_148(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  if (v10)
  {
    v11 = [v10 itemCount];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1E3DCFDD4(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
  sub_1E3DCFE28();
  return swift_unknownObjectRelease();
}

void sub_1E3DCFE28()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v6[3] = &unk_1F5F3CDE0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_detailDelegate, v6);
      [v5 setDetailDelegate_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void (*sub_1E3DCFEFC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_detailDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E3DCFF80;
}

void sub_1E3DCFF80(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1E3DCFE28();
  }

  free(v3);
}

id sub_1E3DD0008()
{
  OUTLINED_FUNCTION_21();
  (*(v1 + 1336))();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PlayerHUDDocumentViewController(0);
  return OUTLINED_FUNCTION_6_104(v9.super_class, sel_vui_viewWillAppear_, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t type metadata accessor for PlayerHUDDocumentViewController(uint64_t a1)
{
  result = qword_1EE292700;
  if (!qword_1EE292700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DD0120()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PlayerHUDDocumentViewController(0);
  OUTLINED_FUNCTION_6_104(v7.super_class, sel_vui_viewWillDisappear_, v1, v2, v3, v4, v5, v6, v7);
  sub_1E3DD01B0(0);
}

void sub_1E3DD01B0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView))
  {
    return;
  }

  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 multiviewIdentifiers];

  v5 = sub_1E42062B4();
  OUTLINED_FUNCTION_26_3();
  v6 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & v7) + 0x1B0))();
  if (!v8)
  {
    goto LABEL_10;
  }

  v12 = v8;
  type metadata accessor for PlayerHUDTemplateController(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    if (*(v5 + 16))
    {
      v10 = MEMORY[0x1EEE9AC00](v9);
      (*((*v6 & *v11) + 0x9A0))(a1 & 1, sub_1E3DD28A8, v10);

      return;
    }

LABEL_10:

    return;
  }
}

BOOL sub_1E3DD03C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v6[0] = *(a1 + 16);
    v6[1] = v1;
    MEMORY[0x1EEE9AC00](a1);
    v5[2] = v6;
    return sub_1E3849DF8(sub_1E3756228, v5, v2);
  }

  else
  {
    return 0;
  }
}

id sub_1E3DD045C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayerHUDDocumentViewController(0);
  return OUTLINED_FUNCTION_6_104(v8.super_class, sel_vui_viewDidAppear_, v1, v2, v3, v4, v5, v6, v8);
}

void sub_1E3DD04E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v29 - v3;
  v5 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  v17 = type metadata accessor for PlayerHUDDocumentViewController(0);
  v30.receiver = v0;
  v30.super_class = v17;
  objc_msgSendSuper2(&v30, sel_vui_viewDidLoad);
  v18 = [v0 vuiView];
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [objc_opt_self() clearColor];
  [v19 setVuiBackgroundColor_];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 setClipsToBounds_];

  if ((*(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView) & 1) == 0)
  {
    v23 = [objc_opt_self() defaultCenter];
    sub_1E4206C14();

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v24 = sub_1E4206A04();
    v29[1] = v24;
    v25 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v25);
    sub_1E38DF10C();
    v29[0] = v11;
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F748(v4, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v7 + 8))(v10, v5);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E38DF1B8();
    v26 = v29[0];
    sub_1E4200844();

    (*(v13 + 8))(v16, v26);
    swift_beginAccess();
    sub_1E42004C4();
    swift_endAccess();

    OUTLINED_FUNCTION_4_0();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2E0);

    v28(sub_1E3DD0FE8, v27);
  }
}

double sub_1E3DD094C()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v59);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v3 = Strong;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_64();
  v6 = *(v5 + 432);
  v7 = v3;
  v8 = v6();
  if (v8)
  {
    v9 = v8;
    type metadata accessor for ErrorTemplateController();
    v10 = swift_dynamicCastClass();

    if (v10)
    {
      DocumentRequestViewController.resetRequest()();
    }
  }

  sub_1E41FDF14();
  v11 = &selRef_gridStyle;
  if (v56)
  {
    v12 = sub_1E3280A90(0, &qword_1ECF38E50, off_1E8728388);
    if (OUTLINED_FUNCTION_16_114(v12, v13, v14, v15))
    {
      v16 = [v57[0] hudContentViewController];
      if (v16)
      {
        v17 = v16;
        sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
        if (sub_1E4206F64())
        {
          sub_1E3DD01B0(1);
          v18 = *(v7 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData);

          v20.value._rawValue = (v6)(v19);
          if (v20.value._rawValue)
          {
            rawValue = v20.value._rawValue;
            type metadata accessor for PlayerHUDTemplateController(0);
            if (swift_dynamicCastClass())
            {

              OUTLINED_FUNCTION_21();
              v18 = (*(v22 + 2168))();
            }
          }

          v20.value._rawValue = v18;
          DocumentRequestViewController.updatePrefetchData(_:)(v20);

          DocumentRequestViewController.sendInitialRequestIfApplicableAndMarkDocumentInteractorAsVisible()();

          v4 = MEMORY[0x1E69E7D40];
        }

        else
        {
        }

        v11 = 0x1FCA69000;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1E325F748(v55, &unk_1ECF296E0, &unk_1E4298030);
  }

  v23 = sub_1E41FDF24();
  if (!v23)
  {

    *v57 = 0u;
    v58 = 0u;
LABEL_29:
    v33 = v57;
LABEL_30:
    sub_1E325F748(v33, &unk_1ECF296E0, &unk_1E4298030);
    return result;
  }

  v24 = v23;
  sub_1E4205F14();
  sub_1E4207414();
  sub_1E375D7E8(v24, v57, v55);

  sub_1E375D84C(v55);
  if (!*(&v58 + 1))
  {

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return result;
  }

  v25 = v11;
  v26 = v4;
  v28 = v55[0];
  v27 = v55[1];
  v29 = [objc_opt_self() sharedInstance];
  if (v28 == sub_1E4205F14() && v27 == v30)
  {
  }

  else
  {
    v32 = sub_1E42079A4();

    if ((v32 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  sub_1E41FDF14();
  if (!v56)
  {

    v33 = v55;
    goto LABEL_30;
  }

  v34 = sub_1E3280A90(0, &qword_1ECF38E50, off_1E8728388);
  if ((OUTLINED_FUNCTION_16_114(v34, v35, v36, v37) & 1) == 0)
  {
LABEL_43:

    return result;
  }

  v38 = v57[0];
  v39 = [v57[0] v25 + 1264];
  if (!v39)
  {

    goto LABEL_48;
  }

  v40 = v39;
  sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
  if ((sub_1E4206F64() & 1) == 0 || (v38 = v38, sub_1E37AD648(v38), !v41) || (v42 = sub_1E4205ED4(), , v43 = [v29 getPageEventDataWithSelectedTab_], v42, !v43))
  {

LABEL_46:
LABEL_48:

    return result;
  }

  v44 = [v43 generateMetricsDataDictionary];
  v45 = sub_1E4205C64();

  v46 = sub_1E374BD08(v45);

  if (!v46)
  {

    goto LABEL_46;
  }

  type metadata accessor for Metrics(0);
  v47 = sub_1E3BA5560(v46, 1);
  v48 = (*((*v26 & *v7) + 0x2F0))();

  if (v48 && (OUTLINED_FUNCTION_5_0(v48 + 56, v55), v49 = *(v48 + 56), , , v49))
  {
    v50 = *(*v49 + 584);

    v50(v51);

    v52 = *sub_1E328FE4C();
    v53 = v7;
    v54 = v52;
    sub_1E3EF58B8(v53);
  }

  else
  {

    *(v7 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics) = v47;
  }

  return result;
}

void sub_1E3DD0FE8()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics;
    v4 = *(Strong + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics);
    if (v4)
    {
      v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x2F0);
      v6 = Strong;

      v8 = v5(v7);

      if (v8 && (OUTLINED_FUNCTION_5_0(v8 + 56, &v14), v9 = *(v8 + 56), , , v9))
      {
        v10 = *(*v9 + 584);

        v10(v4);

        v11 = *sub_1E328FE4C();
        v12 = v6;
        v13 = v11;
        sub_1E3EF58B8(v12);

        *(v2 + v3) = 0;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1E3DD11C8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PlayerHUDDocumentViewController(0);
  OUTLINED_FUNCTION_6_104(v10.super_class, sel_vui_viewDidDisappear_, v1, v2, v3, v4, v5, v6, v10);
  v7 = MEMORY[0x1E69E7D40];
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView))
  {
    OUTLINED_FUNCTION_21();
    if (!(*(v8 + 1888))())
    {
      DocumentRequestViewController.resetRequest()();
    }
  }

  if ((*((*v7 & *v0) + 0x198))())
  {
    v9 = *sub_1E328FE4C();
    sub_1E3EF5ABC(v0);
  }
}

void sub_1E3DD130C(uint64_t a1)
{
  v1 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x2C8))();

  DocumentViewController.showLoadingView(show:initialAlphaOfLoadingView:)();
}

void sub_1E3DD13A8(UIViewController_optional *a1)
{
  v2 = v1;
  DocumentViewController.willHostTemplateController(_:)(a1);
  if (a1)
  {
    type metadata accessor for PlayerHUDTemplateController(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_21();
        v10 = *(v9 + 2200);
        swift_unknownObjectRetain();
        v11 = a1;
        v10(v7);
        v12 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData;
        v13 = *((*v8 & *v5) + 0x880);

        v15 = v13(v14);
        v16.n128_u64[0] = *(v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
        v17.n128_u64[0] = *(v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize + 8);
        (*((*v8 & *v5) + 0x8B0))(v15, v16, v17);
        v18 = *(v2 + v12);
        if (!v18)
        {
          swift_unknownObjectRelease();

LABEL_12:
          swift_unknownObjectWeakAssign();
          *(v2 + v12) = 0;

          return;
        }

        sub_1E3277E60(0xD000000000000011, 0x80000001E42837D0, v18, &v30);

        swift_unknownObjectRelease();

        if (v31)
        {
          if (OUTLINED_FUNCTION_13_14(v19, v20, v21, MEMORY[0x1E69E6370], v22, v23, v24, v25, v27, v28, SWORD2(v28), SBYTE6(v28), SHIBYTE(v28), v30))
          {
            v26 = v29;
LABEL_11:
            *(v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_refetchUpNext) = v26;
            goto LABEL_12;
          }
        }

        else
        {
          sub_1E325F748(&v30, &unk_1ECF296E0, &unk_1E4298030);
        }

        v26 = 0;
        goto LABEL_11;
      }
    }
  }
}

void sub_1E3DD15D8(UIViewController_optional *a1)
{
  DocumentViewController.didHostTemplateController(_:)(a1);
  if (a1)
  {
    v18 = &unk_1F5F3CDE0;
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_21();
      v6 = *(v5 + 1920);
      v7 = a1;
      [v3 setDetailDelegate_];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_3();
      if ((*((*v4 & v8) + 0x730))())
      {
        OUTLINED_FUNCTION_4_192();
        v15 = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v16 = v9;
        v17 = &block_descriptor_4_1;
        v10 = _Block_copy(aBlock);
      }

      else
      {
        v10 = 0;
      }

      [v3 setContentsDidLoad_];
      _Block_release(v10);
      OUTLINED_FUNCTION_26_3();
      if ((*((*v4 & v11) + 0x748))())
      {
        OUTLINED_FUNCTION_4_192();
        v15 = 1107296256;
        OUTLINED_FUNCTION_26_41();
        v16 = v12;
        v17 = &block_descriptor_114;
        v13 = _Block_copy(aBlock);
      }

      else
      {
        v13 = 0;
      }

      [v3 setDidInteract_];
      _Block_release(v13);
    }
  }
}

void sub_1E3DD17CC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 432))();
  if (v4)
  {
    v12 = v4;
    v13 = OUTLINED_FUNCTION_8_148(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E42062A4();
      [v14 updateWithSelectedPlaybackIdentifiers:v15 reloadingData:a2 & 1];

      v12 = v15;
    }
  }
}

void sub_1E3DD18F4()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent) == 1)
  {
    DocumentViewController.recordDocumentAppear()();
    OUTLINED_FUNCTION_21();
    v2 = *(v1 + 1032);

    v2(1);
  }
}

void sub_1E3DD1970(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v10 = v2;
    v11 = OUTLINED_FUNCTION_8_148(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15);
    if (v11)
    {
      v12 = v11;
      v13 = sub_1E42062A4();
      [v12 updateVisibleCellsWithPlaybackIdentifiers_];

      v10 = v13;
    }
  }
}

void sub_1E3DD1A88()
{
  OUTLINED_FUNCTION_10_127();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_9_135();
  sub_1E3DD1AD4();
}

void sub_1E3DD1AD4()
{
  OUTLINED_FUNCTION_10_127();
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted) = 0;
  OUTLINED_FUNCTION_3_14();
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_refetchUpNext) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract);
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView) = 0;
  OUTLINED_FUNCTION_3_14();
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v1 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_focusButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  OUTLINED_FUNCTION_9_135();

  DocumentRequestViewController.init(_:supplementaryData:loadingConfiguration:documentOptions:viewControllerIdentifier:)();
}

id sub_1E3DD1BC0(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted] = 0;
  OUTLINED_FUNCTION_3_14();
  *&v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_refetchUpNext] = 0;
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract);
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView] = 0;
  OUTLINED_FUNCTION_3_14();
  *&v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_cancellables] = MEMORY[0x1E69E7CD0];
  v3 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_focusButton;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PlayerHUDDocumentViewController(0);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1E3DD1CF4()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_nowPlayingTabDelegate);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad), *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad + 8));
  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract), *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract + 8));
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_detailDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_focusButton);
}

id sub_1E3DD1D98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerHUDDocumentViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3DD1E78()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent;
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent) = 1;
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 1040))();
  *(v0 + v1) = 0;
  return result;
}

void sub_1E3DD1FAC(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v1 + 432))();
  if (v5)
  {
    type metadata accessor for PlayerHUDTemplateController(0);
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_64();
      v3 = *(v2 + 2200);
      v4 = swift_unknownObjectRetain();
      v3(v4);

      return;
    }
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3DD212C()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (!v2)
  {
LABEL_6:
    if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData))
    {

      v6 = sub_1E3744600(v8);

      return v6;
    }

    return 0;
  }

  v3 = v2;
  type metadata accessor for PlayerHUDTemplateController(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_64();
  v6 = v5;
  v7 = (*(v4 + 2168))();
  if (!v7)
  {

    return 0;
  }

  sub_1E3744600(v7);
  OUTLINED_FUNCTION_38();

  return v6;
}

void sub_1E3DD22B4(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v17 = (*(v4 + 432))();
  if (!v17)
  {
LABEL_7:
    v8 = sub_1E374BD08(a1);
    *(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData) = v8;

    if (v8)
    {
      sub_1E3277E60(0xD000000000000011, 0x80000001E42616E0, v8, &v20);

      if (*(&v21 + 1))
      {
        if (OUTLINED_FUNCTION_13_14(v9, v10, v11, MEMORY[0x1E69E6370], v12, v13, v14, v15, v17, v18, SWORD2(v18), SBYTE6(v18), SHIBYTE(v18), v20))
        {
          v16 = v19;
LABEL_14:
          *(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView) = v16;
          return;
        }

LABEL_13:
        v16 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    sub_1E325F748(&v20, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_13;
  }

  type metadata accessor for PlayerHUDTemplateController(0);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_1E374BD08(a1);
  (*((*v3 & *v6) + 0x880))(v7);
}

double sub_1E3DD24D8()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  type metadata accessor for PlayerHUDTemplateController(0);
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_64();
    v4 = (*(v3 + 440))();
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v15.origin.x = v6;
    v15.origin.y = v8;
    v15.size.width = v10;
    v15.size.height = v12;
    Height = CGRectGetHeight(v15);
  }

  else
  {
    Height = 0.0;
  }

  return Height;
}

void sub_1E3DD2628(double a1, double a2)
{
  v3 = a2;
  v4 = a1;
  if (a1 == 0.0 && a2 == 0.0)
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 appWindow];

    if (!v6)
    {
      return;
    }

    [v6 bounds];
    v4 = v7;
    v3 = v8;
  }

  OUTLINED_FUNCTION_21();
  v12 = (*(v9 + 432))();
  if (!v12)
  {
    goto LABEL_11;
  }

  type metadata accessor for PlayerHUDTemplateController(0);
  if (!swift_dynamicCastClass())
  {

LABEL_11:
    v11 = (v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
    *v11 = v4;
    v11[1] = v3;
    return;
  }

  OUTLINED_FUNCTION_64();
  (*(v10 + 2224))(v4, v3);
}

void sub_1E3DD28E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = sub_1E3DD2B7C(a1, a2);
  v6 = sub_1E32AE9B0(v5);
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (v6 != v7)
  {
    if (v8)
    {
      v9 = MEMORY[0x1E6911E60](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    (*(*v9 + 264))(1);

    ++v7;
  }

  v10 = swift_allocObject();
  v11 = sub_1E32AE9B0(v5);
  *(v10 + 16) = v11;
  if (v11 < 1)
  {

    a3(v16);
  }

  else
  {
    if (v6)
    {
      if (v6 < 1)
      {
        goto LABEL_27;
      }

      for (i = 0; i != v6; ++i)
      {
        if (v8)
        {
          v13 = MEMORY[0x1E6911E60](i, v5);
        }

        else
        {
          v13 = *(v5 + 8 * i + 32);
        }

        if ((*(*v13 + 256))())
        {
          v14 = swift_allocObject();
          v14[2] = v10;
          v14[3] = a3;
          v14[4] = a4;
          v15 = *(*v13 + 472);

          v15(sub_1E3DD3DD8, v14);
        }
      }
    }
  }
}

uint64_t sub_1E3DD2B7C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v3 = *sub_1E3B6C5E0();

  sub_1E3DD2CE4(v4);

  sub_1E3DD2CE4(v5);
  v12 = v2;
  v6 = sub_1E32AE9B0(v13);
  v7 = 0;
  v8 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v7)
    {

      v13 = v12;
      sub_1E3DD2EA0(&v13, v3);
      return v13;
    }

    sub_1E34AF4E4(v7, v8 == 0, v13);
    if (v8)
    {
      result = MEMORY[0x1E6911E60](v7, v13);
      v9 = result;
    }

    else
    {
      v9 = *(v13 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (sub_1E3DD2D90(*(v9 + 32), v3, v11))
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DD2CE4(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3DD3C74(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_1E3DD2D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = a2 + 32;
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    ++v4;
    sub_1E37DA4B8(a1, a2, a3);
    a1 = sub_1E4205E84();
  }

  while ((a1 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1E3DD2E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a2 + 16);
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    sub_1E37DA4B8(a1, a2, a3);
    a1 = sub_1E4205E84();
    if (a1)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_1E3DD2EA0(unint64_t *a1, char *a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_1E37EFA58(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v7[1] = v5;

  sub_1E3DD2F48(v7, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3DD2F48(uint64_t *a1, char *a2)
{
  v5 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v5)
  {
    v7 = result;
    v8 = sub_1E3B88FE4(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);

    result = sub_1E3DD3198(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1E3DD3074(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1E3DD3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = a1 - a3;
    while (2)
    {
      v25 = a3;
      v9 = *(v6 + 8 * a3);
      v23 = v8;
      v24 = v7;
      while (1)
      {
        v10 = *v7;
        v11 = *(v9 + 32);

        v13 = sub_1E3DD2E14(v11, a5, v12);
        if (v15)
        {
          break;
        }

        v16 = v13;
        v17 = sub_1E3DD2E14(*(v10 + 32), a5, v14);
        v19 = v18;

        if ((v19 & 1) == 0 && v16 < v17)
        {
          if (!v6)
          {
            __break(1u);
            return;
          }

          v20 = *v7;
          v9 = v7[1];
          *v7 = v9;
          v7[1] = v20;
          --v7;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_12;
      }

LABEL_12:
      a3 = v25 + 1;
      v7 = v24 + 1;
      v8 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1E3DD3198(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v7 = a3[1];
  swift_bridgeObjectRetain_n();
  v142 = a5;
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v134 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v113 = v9 + 16;
      v112 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        if (v112 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v114 = *a3;
        if (!*a3)
        {
          goto LABEL_146;
        }

        v115 = &v9[16 * v112];
        v116 = *v115;
        v117 = v113;
        v118 = &v113[16 * v112];
        v119 = *(v118 + 1);
        v120 = (v114 + 8 * *v115);
        v121 = (v114 + 8 * *v118);
        v141 = (v114 + 8 * v119);
        v9 = v142;

        sub_1E3DD399C(v120, v121, v141, v134, v142);
        if (v136)
        {
          break;
        }

        if (v119 < v116)
        {
          goto LABEL_134;
        }

        if (v112 - 2 >= *v117)
        {
          goto LABEL_135;
        }

        v113 = v117;
        *v115 = v116;
        *(v115 + 1) = v119;
        v122 = *v117 - v112;
        if (*v117 < v112)
        {
          goto LABEL_136;
        }

        v112 = *v117 - 1;
        memmove(v118, v118 + 16, 16 * v122);
        *v117 = v112;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_143:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_108;
  }

  v124 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_31;
    }

    v134 = v7;
    v12 = *a3;
    v137 = v8 + 1;
    v13 = *(*a3 + 8 * v8);
    v14 = *(*(*a3 + 8 * v11) + 32);

    v16 = sub_1E3DD2E14(v14, a5, v15);
    v128 = v9;
    if (v18)
    {

      v131 = 0;
    }

    else
    {
      v19 = v16;
      v20 = sub_1E3DD2E14(*(v13 + 32), a5, v17);
      v22 = v21;

      v23 = v19 < v20;
      a5 = v142;
      v24 = v23;
      if (v22)
      {
        v24 = 0;
      }

      v131 = v24;
    }

    v125 = v10;
    v25 = 8 * v10;
    v26 = v12 + 8 * v10 + 16;
    v9 = (v25 + 8);
    v27 = v137;
    v28 = v134;
    while (1)
    {
      v29 = v27 + 1;
      if (v27 + 1 >= v28)
      {
        break;
      }

      v138 = v27;
      v30 = *(v26 - 8);
      v31 = *(*v26 + 32);

      v33 = sub_1E3DD2E14(v31, a5, v32);
      if (v35)
      {

LABEL_17:
        a5 = v142;
        v27 = v138;
        v28 = v134;
        if (v131)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v36 = v33;
      v37 = sub_1E3DD2E14(*(v30 + 32), a5, v34);
      v39 = v38;

      if (v39)
      {
        goto LABEL_17;
      }

      v40 = v36 >= v37;
      a5 = v142;
      v27 = v138;
      v28 = v134;
      if (((v131 ^ v40) & 1) == 0)
      {
        break;
      }

LABEL_20:
      v26 += 8;
      v9 += 8;
      v27 = v29;
    }

    if (!v131)
    {
      v11 = v29;
      v9 = v128;
      v10 = v125;
      goto LABEL_31;
    }

LABEL_22:
    v41 = v27 + 1;
    v10 = v125;
    if (v27 + 1 < v125)
    {
      goto LABEL_140;
    }

    if (v125 < v41)
    {
      v42 = v125;
      do
      {
        if (v42 != v27)
        {
          v43 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v44 = *(v43 + v25);
          *(v43 + v25) = *&v9[v43];
          *&v9[v43] = v44;
        }

        ++v42;
        v9 -= 8;
        v25 += 8;
        v23 = v42 < v27--;
      }

      while (v23);
    }

    v11 = v41;
    v9 = v128;
LABEL_31:
    v45 = a3[1];
    if (v11 >= v45)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_139;
    }

    if (v11 - v10 >= v124)
    {
LABEL_52:
      if (v11 < v10)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E37FFF70(0, *(v9 + 2) + 1, 1, v9);
      }

      v65 = *(v9 + 2);
      v64 = *(v9 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v9 = sub_1E37FFF70((v64 > 1), v65 + 1, 1, v9);
      }

      *(v9 + 2) = v66;
      v67 = v9 + 32;
      v68 = &v9[16 * v65 + 32];
      *v68 = v10;
      *(v68 + 1) = v11;
      v134 = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      v140 = v11;
      if (!v65)
      {
LABEL_102:
        v7 = a3[1];
        v8 = v140;
        if (v140 >= v7)
        {
          goto LABEL_106;
        }

        continue;
      }

      v133 = v9 + 32;
      while (1)
      {
        v69 = v66 - 1;
        v70 = &v67[16 * v66 - 16];
        v71 = &v9[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v72 = *(v9 + 4);
          v73 = *(v9 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_73:
          if (v75)
          {
            goto LABEL_125;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_128;
          }

          v91 = *(v70 + 1);
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_131;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_133;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v66 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v66 < 2)
        {
          goto LABEL_127;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_88:
        if (v90)
        {
          goto LABEL_130;
        }

        v96 = *v70;
        v95 = *(v70 + 1);
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_132;
        }

        if (v97 < v89)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v69 - 1 >= v66)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v101 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v102 = v9;
        v103 = &v67[16 * v69 - 16];
        v9 = *v103;
        v104 = v69;
        v105 = &v67[16 * v69];
        v106 = *(v105 + 1);
        v107 = (v101 + 8 * *v103);
        v108 = (v101 + 8 * *v105);
        v109 = (v101 + 8 * v106);

        v110 = v109;
        a5 = v142;
        sub_1E3DD399C(v107, v108, v110, v134, v142);
        if (v136)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v106 < v9)
        {
          goto LABEL_120;
        }

        v111 = *(v102 + 2);
        if (v104 > v111)
        {
          goto LABEL_121;
        }

        *v103 = v9;
        *(v103 + 1) = v106;
        if (v104 >= v111)
        {
          goto LABEL_122;
        }

        v66 = v111 - 1;
        memmove(v105, v105 + 16, 16 * (v111 - 1 - v104));
        v9 = v102;
        *(v102 + 2) = v111 - 1;
        v67 = v133;
        if (v111 <= 2)
        {
          goto LABEL_102;
        }
      }

      v76 = &v67[16 * v66];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = *(v70 + 1);
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_137;
        }

        if (v74 < v100)
        {
          v69 = v66 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

    break;
  }

  v46 = v10 + v124;
  if (__OFADD__(v10, v124))
  {
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v10)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v11 == v46)
  {
    goto LABEL_52;
  }

  v129 = v9;
  v132 = v46;
  v47 = *a3;
  v48 = (*a3 + 8 * v11 - 8);
  v126 = v10;
  v49 = v10 - v11;
LABEL_40:
  v139 = v11;
  v50 = *(v47 + 8 * v11);
  v51 = v49;
  v134 = v48;
  while (1)
  {
    v52 = *v48;
    v53 = *(v50 + 32);

    v55 = sub_1E3DD2E14(v53, a5, v54);
    if (v57)
    {

      goto LABEL_50;
    }

    v58 = v55;
    v59 = sub_1E3DD2E14(*(v52 + 32), a5, v56);
    v61 = v60;

    if ((v61 & 1) != 0 || v58 >= v59)
    {
      a5 = v142;
LABEL_50:
      v11 = v139 + 1;
      v48 = v134 + 8;
      --v49;
      if (v139 + 1 == v132)
      {
        v11 = v132;
        v9 = v129;
        v10 = v126;
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    a5 = v142;
    if (!v47)
    {
      break;
    }

    v62 = *v48;
    v50 = *(v48 + 1);
    *v48 = v50;
    *(v48 + 1) = v62;
    v48 -= 8;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_50;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_145:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_146:

  __break(1u);
LABEL_147:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_148:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_149:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1E3DD399C(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = (__dst - __src) / 8;
  v10 = (a3 - __dst) / 8;
  if (v9 < v10)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v12 = &v5[8 * v9];
    v13 = a5;
    v53 = v6;
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_43;
      }

      v15 = v12;
      v16 = *v5;
      v17 = *(*v7 + 32);

      v19 = sub_1E3DD2E14(v17, v13, v18);
      if (v21)
      {
        break;
      }

      v24 = v19;
      v25 = sub_1E3DD2E14(*(v16 + 32), v13, v20);
      v27 = v26;

      if ((v27 & 1) != 0 || v24 >= v25)
      {
        goto LABEL_14;
      }

      v22 = v7;
      v23 = v8 == v7;
      v7 += 8;
LABEL_18:
      v6 = v53;
      if (!v23)
      {
        *v8 = *v22;
      }

      v8 += 8;
      v13 = a5;
      v12 = v15;
    }

LABEL_14:
    v22 = v5;
    v23 = v8 == v5;
    v5 += 8;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v12 = &v5[8 * v10];
  v29 = a5;
  v51 = v5;
  v52 = v8;
LABEL_27:
  v30 = v7 - 8;
  v31 = v6 - 8;
  v54 = v7;
  while (v12 > v5 && v7 > v8)
  {
    v33 = v31;
    v34 = v12;
    v35 = v12 - 8;
    v36 = v30;
    v37 = *v30;
    v38 = *(*(v12 - 1) + 32);

    v40 = sub_1E3DD2E14(v38, v29, v39);
    if (v42)
    {
    }

    else
    {
      v43 = v40;
      v44 = sub_1E3DD2E14(*(v37 + 32), v29, v41);
      v46 = v45;

      if ((v46 & 1) == 0 && v43 < v44)
      {
        v6 = v33;
        v47 = v36;
        v7 = v36;
        v29 = a5;
        v12 = v34;
        v5 = v51;
        v8 = v52;
        if (v33 + 8 != v54)
        {
          *v33 = *v47;
          v7 = v47;
        }

        goto LABEL_27;
      }
    }

    v30 = v36;
    if (v34 != v33 + 8)
    {
      *v33 = *v35;
    }

    v31 = v33 - 8;
    v12 = v35;
    v29 = a5;
    v8 = v52;
    v7 = v54;
    v5 = v51;
  }

LABEL_43:
  v48 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v48])
  {
    memmove(v7, v5, 8 * v48);
  }

  return 1;
}

uint64_t sub_1E3DD3C74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for LibMenuItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3DD3E40();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60, &qword_1E42BD0B0);
          v9 = sub_1E3797EB0(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DD3DD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v6;
    if (!v6)
    {
      return v1(result);
    }
  }

  return result;
}

unint64_t sub_1E3DD3E40()
{
  result = qword_1ECF38E58;
  if (!qword_1ECF38E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C60, &qword_1E42BD0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38E58);
  }

  return result;
}

uint64_t sub_1E3DD3ECC(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 402, a2);
  *(v2 + 402) = a1;
  return result;
}

uint64_t sub_1E3DD3F2C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 408, a2);
  *(v2 + 408) = a1;
  *(v2 + 416) = v3 & 1;
  return result;
}

uint64_t sub_1E3DD3F9C(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 417, a2);
  *(v2 + 417) = a1;
  return result;
}

uint64_t sub_1E3DD4024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 402) = 0;
  *(v3 + 408) = 0;
  *(v3 + 416) = 1793;

  v7 = sub_1E40B19D4(a1, a2, a3);
  if (v7)
  {
    OUTLINED_FUNCTION_111();
    v9 = *(v8 + 392);

    if (v9(v10))
    {
      OUTLINED_FUNCTION_26_0();
      v12 = (*(v11 + 984))();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 1;
    }

    OUTLINED_FUNCTION_14_0(v7 + 408, v15);
    *(v7 + 408) = v12;
    *(v7 + 416) = v14 & 1;
  }

  return v7;
}

uint64_t sub_1E3DD4150(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1632))();
  if (v3 != 7)
  {
    sub_1E37F99D4(v3, v4, v5);
    if (sub_1E4205E84())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v7 + 1664))(a1);
  return 1;
}

uint64_t sub_1E3DD4220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *(v6 + 98);
  if (sub_1E373F6E0(v9, 132, a3, a4, a5, a6))
  {
    v14 = sub_1E3A24FDC(a1);
    if ((v14 & 1) == 0)
    {
      v62 = OUTLINED_FUNCTION_0_244(v14, v15, v16, v17, v18, v19, v20, v21, v110);
      v7[402] = 0;
      v63 = *(*v7 + 392);
      v64 = v63(v62);
      if (v64)
      {
        type metadata accessor for CollectionLayoutFactory();
        sub_1E3C11CA0(v7);
        OUTLINED_FUNCTION_1_223();
        v73 = OUTLINED_FUNCTION_8_149(v65, v66, v67, v68, v69, v70, v71, v72, v112, v115, v116, v117, v118, v119, v120);
        v74(v73);
      }

      if (v63(v64))
      {
        OUTLINED_FUNCTION_111();
        (*(v75 + 1608))();
        OUTLINED_FUNCTION_12_6();
        v28 = *(v76 + 992);
        v30 = v77 & 1;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    goto LABEL_3;
  }

  if (sub_1E373F6E0(v9, 133, v10, v11, v12, v13))
  {
    OUTLINED_FUNCTION_111();
    v36 = (*(v35 + 1608))();
    if ((v37 & 1) == 0)
    {
      v93 = OUTLINED_FUNCTION_0_244(v36, v37, v38, v39, v40, v41, v42, v43, v110);
      v7[402] = 1;
      if (!(*(*v7 + 392))(v93))
      {
        goto LABEL_27;
      }

      v94 = *(MEMORY[0x1E69DDCE0] + 16);
      v120 = *MEMORY[0x1E69DDCE0];
      v121 = v94;
      v122 = 0;
      OUTLINED_FUNCTION_26_0();
      v103 = OUTLINED_FUNCTION_8_149(v95, v96, v97, v98, v99, v100, v101, v102, v114, v115, v116, v117, v118, v119, v120);
      v104(v103);
      goto LABEL_26;
    }

    v14 = sub_1E3A24FDC(a1);
    if ((v14 & 1) == 0)
    {
      v44 = OUTLINED_FUNCTION_0_244(v14, v15, v16, v17, v18, v19, v20, v21, v110);
      v7[402] = 2;
      v45 = *(*v7 + 392);
      if ((v45)(v44))
      {
        type metadata accessor for CollectionLayoutFactory();
        sub_1E3C11CA0(v7);
        OUTLINED_FUNCTION_1_223();
        v54 = OUTLINED_FUNCTION_8_149(v46, v47, v48, v49, v50, v51, v52, v53, v111, v115, v116, v117, v118, v119, v120);
        v55(v54);
      }

      if (*sub_1E3C2AEE0() == 1)
      {
        v56 = [objc_opt_self() currentDevice];
        v57 = [v56 orientation];

        if (UIDeviceOrientationIsLandscape(v57))
        {
          v58 = v45();
          v61 = v58;
          if (a1 != 3)
          {
            if (!v58)
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_12_6();
            v28 = *(v109 + 992);
            v29 = 7;
            goto LABEL_7;
          }

          if (v58)
          {
            if (TVAppFeature.isEnabled.getter(10, v59, v60))
            {
              v29 = 0;
            }

            else
            {
              v29 = 6;
            }

            v28 = *(*v61 + 992);
            goto LABEL_7;
          }

          goto LABEL_27;
        }
      }

      if (!v45())
      {
        goto LABEL_27;
      }

LABEL_46:
      OUTLINED_FUNCTION_12_6();
      v28 = *(v108 + 992);
      v29 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((sub_1E373F6E0(v9, 134, v31, v32, v33, v34) & 1) == 0)
    {
      goto LABEL_27;
    }

    v14 = sub_1E3A25254(a1);
    if (v14 & 1) != 0 || (v14 = sub_1E39DFFC8(), (v14) && (v14 = [objc_opt_self() isPad], v14))
    {
      v79 = OUTLINED_FUNCTION_0_244(v14, v15, v16, v17, v18, v19, v20, v21, v110);
      v7[402] = 2;
      v80 = *(*v7 + 392);
      if ((v80)(v79))
      {
        type metadata accessor for CollectionLayoutFactory();
        sub_1E3C11CA0(v7);
        OUTLINED_FUNCTION_1_223();
        v89 = OUTLINED_FUNCTION_8_149(v81, v82, v83, v84, v85, v86, v87, v88, v113, v115, v116, v117, v118, v119, v120);
        v90(v89);
      }

      v91 = objc_opt_self();
      if ([v91 isTV])
      {
        if (!v80())
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_26_0();
        v28 = *(v92 + 992);
        v29 = 3;
        goto LABEL_7;
      }

      v105 = [v91 isPad];
      v106 = v80();
      if (v105)
      {
        if (!v106)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_12_6();
        v28 = *(v107 + 992);
        v29 = 12;
        goto LABEL_7;
      }

      if (!v106)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

LABEL_3:
  v22 = OUTLINED_FUNCTION_0_244(v14, v15, v16, v17, v18, v19, v20, v21, v110);
  v7[402] = 1;
  v23 = *(*v7 + 392);
  v24 = v23(v22);
  if (v24)
  {
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v120 = *MEMORY[0x1E69DDCE0];
    v121 = v25;
    v122 = 0;
    OUTLINED_FUNCTION_26_0();
    (*(v26 + 184))(&v120);
  }

  if (v23(v24))
  {
    OUTLINED_FUNCTION_26_0();
    v28 = *(v27 + 992);
    v29 = 21;
LABEL_7:
    v30 = 0;
LABEL_25:
    v28(v29, v30);
LABEL_26:
  }

LABEL_27:
  result = swift_beginAccess();
  v7[417] = a1;
  return result;
}

BOOL sub_1E3DD4884()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1584))();
  sub_1E3AFFC64(v1, v2, v3);
  return (sub_1E4205E84() & 1) == 0;
}

uint64_t sub_1E3DD4900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 98);
  if (sub_1E373F6E0(v7, 132, a3, a4, a5, a6))
  {
    return 0;
  }

  if (sub_1E373F6E0(v7, 133, v8, v9, v10, v11))
  {
    OUTLINED_FUNCTION_8();
    (*(v17 + 1608))();
    if (v18)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (sub_1E373F6E0(v7, 134, v13, v14, v15, v16))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3DD4998(unsigned int a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v8 = ((sub_1E40B2C84(a1, a2, a3) >> 8) & 1);
  v47 = 0;
  v9 = (*(*v3 + 1016))();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1E32AE9B0(v10);
  if (v11)
  {
    v12 = v11;
    if (v11 >= 1)
    {
      v13 = 0;
      v39 = v6 & 0xFFFFFF00;
      v37 = *(*v5 + 392);
      v36 = v10 & 0xC000000000000001;
      v38 = v10;
      while (1)
      {
        if (v36)
        {
          v14 = MEMORY[0x1E6911E60](v13, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = a2;
        sub_1E4038DF8(a1, a2, v39 | 4u, v14, v48);
        v47 = v49;
        if (v37())
        {
          type metadata accessor for CollectionViewLayout();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_26_0();
            (*(v16 + 1704))(v48);
          }
        }

        OUTLINED_FUNCTION_111();
        v18 = (*(v17 + 392))();
        if (v18)
        {
          v44[0] = v18;
          type metadata accessor for ViewLayout();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E68, &qword_1E42D2CE8);
          if (swift_dynamicCast())
          {
            if (*(&v42 + 1))
            {
              sub_1E3251BE8(&v41, v44);
              if (v8)
              {
                LOBYTE(v8) = 1;
              }

              else
              {
                v19 = v45;
                v8 = v46;
                __swift_project_boxed_opaque_existential_1(v44, v45);
                LOBYTE(v8) = (*(v8 + 1))(a1, a2, v39 | 4u, v19, v8);
              }

              __swift_destroy_boxed_opaque_existential_1(v44);
              goto LABEL_23;
            }
          }

          else
          {
            v43 = 0;
            v41 = 0u;
            v42 = 0u;
          }
        }

        else
        {

          v43 = 0;
          v41 = 0u;
          v42 = 0u;
        }

        sub_1E3DD4F88(&v41);
LABEL_23:
        v10 = v38;
        if (v12 == ++v13)
        {
          v4 = v8;

          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_62:
    MEMORY[0x1E6911E60](0, v6);
    goto LABEL_33;
  }

  v4 = v8;

LABEL_28:
  v21 = (*v5 + 1040);
  v8 = *v21;
  v22 = (*v21)(v20);
  if (!v22)
  {
    goto LABEL_35;
  }

  v6 = v22;
  result = sub_1E32AE9B0(v22);
  if (!result)
  {
    v26 = 0;
    goto LABEL_37;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_33:

  OUTLINED_FUNCTION_8();
  v25 = (*(v24 + 872))();

  if (!v25)
  {
LABEL_35:
    v26 = 0;
    goto LABEL_38;
  }

  v26 = sub_1E32AE9B0(v25);
LABEL_37:

LABEL_38:
  v27 = v8(v22);
  if (!v27)
  {
    goto LABEL_45;
  }

  v28 = v27;
  result = sub_1E32AE9B0(v27);
  if (result)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v28);
      goto LABEL_43;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_43:

      OUTLINED_FUNCTION_8();
      (*(v29 + 888))();

      goto LABEL_45;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_45:
  v30 = v8(v27);
  if (!v30)
  {
    goto LABEL_52;
  }

  v31 = v30;
  result = sub_1E32AE9B0(v30);
  if (!result)
  {
    v34 = 0;
    goto LABEL_54;
  }

  if ((v31 & 0xC000000000000001) == 0)
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_50;
    }

LABEL_67:
    __break(1u);
    return result;
  }

  MEMORY[0x1E6911E60](0, v31);
LABEL_50:

  OUTLINED_FUNCTION_8();
  v33 = (*(v32 + 872))();

  if (v33)
  {
    v34 = sub_1E32AE9B0(v33);
LABEL_54:

    goto LABEL_55;
  }

LABEL_52:
  v34 = 0;
LABEL_55:
  if (v4)
  {
    v35 = 256;
  }

  else
  {
    v35 = 0;
  }

  if (v34 == v26)
  {
    return v35;
  }

  else
  {
    return v35 + 1;
  }
}

uint64_t sub_1E3DD4F58()
{
  v0 = CollectionViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 418, 7);
}

uint64_t sub_1E3DD4F88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E60, &qword_1E42D2CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DD5014(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E4207104();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v44 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  *(&v56 + 1) = &type metadata for ViewModelKeys;
  v57 = &off_1F5D7BCA8;
  LOBYTE(v54) = a1;
  sub_1E3F9F164(&v54, a2, MEMORY[0x1E69E7CA0] + 8);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  v58 = 0;
  sub_1E3294F34(v59, &v54);
  if (!*(&v56 + 1))
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((OUTLINED_FUNCTION_0_245() & 1) == 0)
  {
LABEL_30:
    v43 = v59;
    goto LABEL_31;
  }

  sub_1E3294F34(v59, &v54);
  if (!*(&v56 + 1))
  {
LABEL_29:
    sub_1E325F748(v59, &unk_1ECF296E0, &unk_1E4298030);
    v43 = &v54;
LABEL_31:
    sub_1E325F748(v43, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  result = OUTLINED_FUNCTION_0_245();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

  v46 = v15;
  v20 = v52;
  v21 = *(v52 + 16);
  if (!v21)
  {

    v42 = 0;
LABEL_34:
    sub_1E325F748(v59, &unk_1ECF296E0, &unk_1E4298030);
    return v42;
  }

  v45 = v8;
  v47 = a3;
  v22 = 0;
  v23 = v52 + 32;
  v44[4] = v9 + 8;
  v44[3] = v12 + 32;
  v44[2] = v12 + 16;
  v44[1] = v12 + 8;
  v49 = v52 + 32;
  v48 = v21;
  while (v22 < *(v20 + 16))
  {
    v24 = 0;
    v25 = *(v23 + 8 * v22++);
    v26 = (v25 + 64);
    v27 = 1 << *(v25 + 32);
    v28 = (v27 + 63) >> 6;
    if (!v28)
    {
      goto LABEL_27;
    }

    while (!*v26)
    {
      ++v26;
      v24 -= 64;
      if (!--v28)
      {
        goto LABEL_27;
      }
    }

    v29 = __clz(__rbit64(*v26));
    if (v29 - v27 == v24)
    {
      goto LABEL_27;
    }

    if (-v24 < 0)
    {
      goto LABEL_36;
    }

    v30 = v29 - v24;
    if (v30 >= v27)
    {
      goto LABEL_36;
    }

    if (((*v26 >> v29) & 1) == 0)
    {
      goto LABEL_37;
    }

    v31 = (*(v25 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    sub_1E328438C(*(v25 + 56) + 32 * v30, v51);
    sub_1E329504C(v51, v53);
    v54 = v32;
    v55 = v33;
    sub_1E329504C(v53, &v56);
    v35 = v54;
    v34 = v55;
    sub_1E329504C(&v56, &v52);
    sub_1E328438C(&v52, &v54);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (!swift_dynamicCast() || (v36 = *(v50 + 16), , v36))
    {
      v37 = sub_1E3A7CD30(v35, v34, &v52, v47);

      if (v37)
      {
        if (!v58)
        {
          v58 = sub_1E4205C34();
        }

        v54 = v37;
        type metadata accessor for ViewModel();

        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1(&v52);

          __swift_storeEnumTagSinglePayload(v11, 1, 1, a4);
          OUTLINED_FUNCTION_36_5();
          result = v41(v11, v45);
          goto LABEL_26;
        }

        __swift_storeEnumTagSinglePayload(v11, 0, 1, a4);
        OUTLINED_FUNCTION_36_5();
        v38(v18, v11, a4);
        OUTLINED_FUNCTION_36_5();
        v39(v46, v18, a4);
        sub_1E4206374();
        sub_1E4206354();

        OUTLINED_FUNCTION_36_5();
        v40(v18, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v52);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v52);
    }

LABEL_26:
    v23 = v49;
    v21 = v48;
LABEL_27:
    if (v22 == v21)
    {

      v42 = v58;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1E3DD55E0(char a1, uint64_t a2, uint64_t a3)
{
  v9[3] = &type metadata for ViewModelKeys;
  v9[4] = &off_1F5D7BCA8;
  LOBYTE(v9[0]) = a1;
  v4 = sub_1E39BD1A0(v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v4)
  {
    return 0;
  }

  sub_1E39C36BC(v4, &v10);

  if (!*(&v10 + 1))
  {
    sub_1E325F748(&v10, &qword_1ECF30008, &qword_1E42B0018);
    return 0;
  }

  v12 = v10;
  sub_1E329504C(&v11, v13);
  v5 = v12;
  sub_1E329504C(v13, &v10);

  if (sub_1E38506C8() != 263)
  {
    v7 = sub_1E3A7CD30(v5, *(&v5 + 1), &v10, a3);

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&v10);
    return v7;
  }

  v6 = sub_1E41240F4();
  if (v6 != 31)
  {
    v7 = sub_1E3A7C9B4(v6, &v10, a3);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(&v10);
  return 0;
}

uint64_t sub_1E3DD573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E70, &qword_1E42D2D50);
  sub_1E3DD5B7C();
  sub_1E4203174();
}

uint64_t sub_1E3DD57E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4201C44();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4202654();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    (*(v16 + 552))(v33);
    if ((v34 & 1) == 0)
    {
      v13.n128_f64[0] = sub_1E3952BE8(v33[0], v33[1], v33[2], v33[3]);
    }
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E697F468], v3, v13);
  sub_1E4202634();
  (*(v5 + 8))(v8, v3);
  if (!a2 || (OUTLINED_FUNCTION_26(), (v18 = (*(v17 + 600))()) == 0) || (v19 = v18, v20 = sub_1E40B0254(), v19, !v20))
  {
    v21 = [objc_opt_self() clearColor];
  }

  sub_1E4203644();
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    v23 = (*(v22 + 600))();
    if (v23)
    {
      v24 = v23;
      [v23 shadowBlurRadius];
    }

    OUTLINED_FUNCTION_26();
    v26 = (*(v25 + 600))();
    if (v26)
    {
      v27 = v26;
      [v26 shadowOffset];
    }

    OUTLINED_FUNCTION_26();
    v29 = (*(v28 + 600))();
    if (v29)
    {
      v30 = v29;
      [v29 shadowOffset];
    }
  }

  sub_1E4202644();

  return (*(v11 + 8))(v15, v9);
}

unint64_t sub_1E3DD5B7C()
{
  result = qword_1EE288938;
  if (!qword_1EE288938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E70, &qword_1E42D2D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288938);
  }

  return result;
}

char *sub_1E3DD5C18()
{
  OUTLINED_FUNCTION_0_8();
  v1 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  v3 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView;
  type metadata accessor for GradientBackgroundDecorationView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  v4 = OUTLINED_FUNCTION_2_0();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, v13);
  v8 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView;
  v9 = *&v7[OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView];
  v10 = v7;
  v11 = v9;
  [v11 setVuiBackgroundColor_];

  [v10 addSubview_];
  [v10 addSubview_];

  return v10;
}

void sub_1E3DD5D84()
{
  v1 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  v3 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView;
  type metadata accessor for GradientBackgroundDecorationView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3DD5E5C(char a1, double a2, double a3)
{
  v4 = v3;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  result = objc_msgSendSuper2(&v12, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if ((a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_5_6();
    Width = CGRectGetWidth(v13);
    sub_1E3A258E4(Width);
    OUTLINED_FUNCTION_5_6();
    CGRectGetWidth(v14);
    v10 = *&v4[OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView];
    OUTLINED_FUNCTION_5_6();
    [v4 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v10 setFrame_];
    OUTLINED_FUNCTION_5_6();
    CGRectGetWidth(v15);
    OUTLINED_FUNCTION_5_6();
    CGRectGetHeight(v16);
    v11 = *&v4[OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView];
    OUTLINED_FUNCTION_5_6();
    [v4 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    return [v11 setFrame_];
  }

  return result;
}

void sub_1E3DD6064()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView);
}

id sub_1E3DD60AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UnifiedOverlay(uint64_t a1)
{
  result = qword_1EE2A48F0;
  if (!qword_1EE2A48F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DD6178(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  type metadata accessor for ViewInteractionStates(0);
  OUTLINED_FUNCTION_6_163();
  sub_1E3DDBD84(v23, v24);
  *(a9 + 40) = 0u;
  v25 = (a9 + 40);
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = sub_1E4201754();
  *(a9 + 96) = v26;
  v27 = type metadata accessor for UnifiedOverlay(0);
  v28 = v27[14];
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v29 = v27[15];
  *(a9 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v30 = (a9 + v27[17]);
  *&v90 = 0;
  sub_1E42038E4();
  v30[1] = v93;
  *v30 = v92;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  v31 = *(*a1 + 488);

  v33 = v31(v32);
  *(a9 + 32) = v33;
  v34 = (a9 + v27[16]);
  *v34 = a10;
  v34[1] = a11;
  v34[2] = a12;
  v34[3] = a13;
  if ((sub_1E373F6E0(a1[49], 155, v35, v36, v37, v38) & 1) == 0 && (sub_1E373F6E0(a1[49], 156, v39, v40, v41, v42) & 1) == 0 || !(*(*a1 + 392))())
  {
LABEL_12:

    if (!v33)
    {
LABEL_15:
      v59 = 0;
      v61 = 0;
      goto LABEL_16;
    }

LABEL_13:
    if (sub_1E373E010(36, v33, v58))
    {
      v94 = &unk_1F5D5D498;
      v95 = &off_1F5D5C838;
      v59 = sub_1E39C29A4(&v92);
      v61 = v60;

      __swift_destroy_boxed_opaque_existential_1(&v92);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  type metadata accessor for UnifiedOverlayLayout();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {

    goto LABEL_12;
  }

  v44 = v43;
  v94 = &unk_1F5D5D528;
  v95 = &off_1F5D5C858;
  LOBYTE(v92) = 1;
  v45 = sub_1E39C29A4(&v92);
  v47 = v46;
  v48 = __swift_destroy_boxed_opaque_existential_1(&v92);
  v92 = v45;
  v93 = v47;
  sub_1E39DFE78(v48, v49, v50);
  sub_1E4149694();
  if (v90 != 3)
  {
    v52 = sub_1E3AA9CE0(v90);
    (*(*v44 + 1824))(v52);
  }

  if (v33)
  {
    v53 = sub_1E373E010(234, v33, v51);
    if (!v53)
    {

      *v25 = 0;
      goto LABEL_13;
    }

    v54 = v53;
    OUTLINED_FUNCTION_26_0();
    v56 = (*(v55 + 600))();
    if (v56)
    {
      *v25 = v56;
      v57 = v56;
    }

    else
    {
      v81 = (*(*v54 + 552))();
      *v25 = v81;
      if (!v81)
      {

LABEL_63:

        goto LABEL_13;
      }

      v57 = v81;
    }

    sub_1E382766C();

    v82 = sub_1E3744600(v57);

    v83 = sub_1E37766C4(v82);
    sub_1E3780EC0(v83);
    if (v84)
    {

      type metadata accessor for ScoreboardObservable(0);
      sub_1E4067BA0();
      v86 = v85;

      *(a9 + 80) = v86;
      goto LABEL_13;
    }

    goto LABEL_63;
  }

  v59 = 0;
  v61 = 0;
  *v25 = 0;
LABEL_16:
  v62 = sub_1E4205F14();
  if (v61)
  {
    if (v59 == v62 && v61 == v63)
    {

      if (v33)
      {
LABEL_23:
        if (sub_1E373E010(36, v33, v66))
        {
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for ImageViewModel();
          OUTLINED_FUNCTION_19_3();
          v68 = swift_dynamicCastClass();
          if (!v68)
          {

            v68 = 0;
          }

          *(a9 + 56) = v68;
        }

        else
        {
          *(a9 + 56) = 0;
        }

        goto LABEL_40;
      }

LABEL_34:
      *(a9 + 56) = 0;
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_16_0();
    v65 = sub_1E42079A4();

    if (v65)
    {
      if (v33)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

  if (!v33)
  {
    *(a9 + 48) = 0;
    goto LABEL_55;
  }

  if (!sub_1E373E010(36, v33, v66))
  {
LABEL_39:
    *(a9 + 48) = 0;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_9_5();
  type metadata accessor for ImageViewModel();
  OUTLINED_FUNCTION_19_3();
  v69 = swift_dynamicCastClass();
  if (!v69)
  {

    goto LABEL_39;
  }

  *(a9 + 48) = v69;
  OUTLINED_FUNCTION_26_0();
  if ((*(v70 + 392))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v71 + 504))();
  }

LABEL_40:
  if (!sub_1E373E010(44, v33, v67))
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_26_0();
  v72 += 67;
  v73 = *v72;
  v74 = (*v72)();
  v75 = MEMORY[0x1E69E7CA0];
  if (!v74)
  {
    v90 = 0u;
    v91 = 0u;
    goto LABEL_46;
  }

  v94 = &unk_1F5D5E4E8;
  v95 = &off_1F5D5CBE8;
  LOBYTE(v92) = 1;
  sub_1E3F9F164(&v92, v74, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v92);
  if (!*(&v91 + 1))
  {
LABEL_46:
    v76 = v75;
    v77 = sub_1E325F6F0(&v90, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v76 = v75;
  v77 = swift_dynamicCast();
  if (v77)
  {
    type metadata accessor for ImageViewModel();
    v77 = OUTLINED_FUNCTION_62_28();
    *(a9 + 64) = v77;
  }

LABEL_47:
  v78 = (v73)(v77);
  if (!v78)
  {

    v90 = 0u;
    v91 = 0u;
LABEL_53:
    sub_1E325F6F0(&v90, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_55;
  }

  v94 = &unk_1F5D5E4E8;
  v95 = &off_1F5D5CBE8;
  LOBYTE(v92) = 0;
  sub_1E3F9F164(&v92, v78, v76 + 8);

  __swift_destroy_boxed_opaque_existential_1(&v92);
  if (!*(&v91 + 1))
  {

    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    type metadata accessor for ImageViewModel();
    v79 = OUTLINED_FUNCTION_62_28();

    *(a9 + 72) = v79;
  }

  else
  {
  }

LABEL_55:
  *(a9 + v27[18]) = a5 & 1;
  v80 = a9 + v27[19];
  *v80 = a6;
  *(v80 + 8) = a7;
  *(v80 + 16) = a8 & 1;
}

uint64_t sub_1E3DD69FC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E78, &qword_1E42D2E98);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  sub_1E3DD6BD4(v1);
  type metadata accessor for UnifiedOverlay(0);
  OUTLINED_FUNCTION_10_128();
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  MEMORY[0x1E690E3F0](&v19, v7);
  if (v19 == 1)
  {
    OUTLINED_FUNCTION_8();
    if (!(*(v8 + 392))() || (OUTLINED_FUNCTION_26_0(), v10 = (*(v9 + 1392))(), , !v10))
    {
      v11 = [objc_opt_self() clearColor];
    }

    v12 = sub_1E4203644();
  }

  else
  {
    v12 = sub_1E42036E4();
  }

  v13 = v12;
  v14 = sub_1E4202734();
  v15 = OUTLINED_FUNCTION_114_0();
  v16(v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E80, &qword_1E42D2EA0);
  v18 = a1 + *(result + 36);
  *v18 = v13;
  *(v18 + 8) = v14;
  return result;
}

void sub_1E3DD6BD4(uint64_t a1@<X8>)
{
  v81 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F50, &qword_1E42D3148);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v72 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EB0, &qword_1E42D2F28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EC0, &qword_1E42D2F30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E98, &qword_1E42D2F20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v75 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E90, &qword_1E42D2F18);
  OUTLINED_FUNCTION_0_10();
  v78 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v17 = *v1;
  if ((*(**v1 + 392))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v18 + 176))(&v90);
  }

  *v10 = sub_1E4201D44();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F58, &qword_1E42D3150) + 44)];
  v80 = v1;
  v20 = sub_1E3DD72E0(v1, v19);
  LOWORD(v87) = *(v17 + 98);
  LOWORD(v83) = 157;
  sub_1E3741534(v20, v21, v22);
  v23 = sub_1E4205E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v25 = sub_1E4202764();
  *(inited + 32) = v25;
  v26 = sub_1E4202784();
  *(inited + 33) = v26;
  v27 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    v27 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v26)
  {
    v27 = sub_1E4202774();
  }

  v28 = OUTLINED_FUNCTION_6();
  sub_1E3952BE0(v28, v29, v30, v31);
  if (v23)
  {
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v32, v33, v34, v35);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDB084();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_82();
    sub_1E328FCF4(v36, v37, v38);
    v39 = v75;
    sub_1E4201F44();
  }

  else
  {
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v40 = v73;
    sub_1E3743538(v10, v73, &qword_1ECF38EC0, &qword_1E42D2F30);
    v41 = (v40 + *(v76 + 36));
    *v41 = v27;
    OUTLINED_FUNCTION_11_4(v41);
    sub_1E3743538(v40, v5, &qword_1ECF38EB0, &qword_1E42D2F28);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDB084();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v42, &qword_1ECF38EC0, &qword_1E42D2F30);
    v39 = v75;
    sub_1E4201F44();
    sub_1E325F6F0(v40, &qword_1ECF38EB0, &qword_1E42D2F28);
  }

  sub_1E325F6F0(v10, &qword_1ECF38EC0, &qword_1E42D2F30);
  sub_1E3741EA0(v39, v2, &qword_1ECF38E98, &qword_1E42D2F20);
  sub_1E373F6E0(*(v17 + 98), 158, v43, v44, v45, v46);
  v87 = v17;
  v47 = sub_1E3DDAFCC();
  v50 = sub_1E3DDB13C(v47, v48, v49);

  v51 = v77;
  sub_1E3E35E58();
  sub_1E325F6F0(v2, &qword_1ECF38E98, &qword_1E42D2F20);
  if ((sub_1E373F6E0(*(v17 + 98), 154, v52, v53, v54, v55) & 1) == 0)
  {
    sub_1E373F6E0(*(v17 + 98), 156, v56, v57, v58, v59);
  }

  v60 = type metadata accessor for UnifiedOverlay(0);
  v61 = v80;
  v62 = (v80 + *(v60 + 68));
  v63 = *v62;
  v64 = v62[1];
  v83 = v63;
  v84 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  v65 = (v61 + *(v60 + 64));
  v86 = v50;
  v87 = v17;
  v66 = v65[1];
  v88 = *v65;
  v89 = v66;
  v83 = v51;
  v84 = &type metadata for EditorialOverlayGradient;
  v85 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3DDB190(OpaqueTypeConformance2, v68, v69);
  v70 = v79;
  v71 = v82;
  sub_1E3E35E58();

  (*(v78 + 8))(v71, v70);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3DD72E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F60, &qword_1E42D3158);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F68, &qword_1E42D3160);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v98 = v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F70, &qword_1E42D3168);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v102 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F78, &qword_1E42D3170);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v106 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v96 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v105 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F80, &qword_1E42D3178);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v96 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F88, &qword_1E42D3180);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F90, &qword_1E42D3188);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v99 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v96 - v32;
  v34 = *a1;
  v111[0] = *(*a1 + 98);
  v110 = 157;
  sub_1E3741534(v35, v36, v37);
  v38 = 1;
  if ((sub_1E4205E84() & 1) == 0)
  {
    v97 = v5;
    *v22 = sub_1E4201B64();
    *(v22 + 1) = 0;
    v22[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F98, &qword_1E42D3190);
    sub_1E3DD7964(a1, v39, v40, v41, v42, v43, v44, v45, a1, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    v46 = sub_1E4202744();
    v47 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v46)
    {
      v47 = sub_1E4202774();
    }

    sub_1E4200A54();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_1E3741EA0(v22, v4, &qword_1ECF38F80, &qword_1E42D3178);
    v56 = v4 + *(v23 + 36);
    *v56 = v47;
    *(v56 + 8) = v49;
    *(v56 + 16) = v51;
    *(v56 + 24) = v53;
    *(v56 + 32) = v55;
    *(v56 + 40) = 0;
    sub_1E3741EA0(v4, v27, &qword_1ECF38F88, &qword_1E42D3180);
    v57 = OUTLINED_FUNCTION_55_39();
    sub_1E3741EA0(v57, v58, &qword_1ECF38F88, &qword_1E42D3180);
    v38 = 0;
    a1 = v96;
    v5 = v97;
  }

  __swift_storeEnumTagSinglePayload(v33, v38, 1, v23);
  v59 = v102;
  sub_1E3DD8468(a1, v102);
  v109 = *(v34 + 98);
  v108 = 157;
  v60 = sub_1E4205E84();
  v61 = sub_1E4202754();
  v62 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v61)
  {
    v62 = sub_1E4202774();
  }

  if (v60)
  {
    sub_1E3743538(v59, v5, &qword_1ECF38F70, &qword_1E42D3168);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBB58();
    sub_1E3DDBBE4();
    sub_1E4201F44();
  }

  else
  {
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v63 = v98;
    sub_1E3743538(v59, v98, &qword_1ECF38F70, &qword_1E42D3168);
    v64 = (v63 + *(v104 + 36));
    *v64 = v62;
    OUTLINED_FUNCTION_11_4(v64);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v65, v66, v67, v68);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBB58();
    sub_1E3DDBBE4();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v69, v70, v71);
  }

  sub_1E325F6F0(v59, &qword_1ECF38F70, &qword_1E42D3168);
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v72, v73, v74, v75);
  v76 = v99;
  sub_1E3743538(v33, v99, &qword_1ECF38F90, &qword_1E42D3188);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v77, v78, v79, v80);
  v81 = v107;
  sub_1E3743538(v76, v107, &qword_1ECF38F90, &qword_1E42D3188);
  v82 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FD8, &qword_1E42D31B0) + 48);
  *v82 = 0;
  *(v82 + 8) = 0;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v83, v84, v85, v86);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v87, v88, v89);
  v90 = OUTLINED_FUNCTION_114_0();
  sub_1E325F6F0(v90, v91, &qword_1E42D3188);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v92, v93, v94);
  return sub_1E325F6F0(v76, &qword_1ECF38F90, &qword_1E42D3188);
}

void sub_1E3DD7964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39028, &qword_1E42D3210);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_34_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39008, &qword_1E42D31F0);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &a9 - v42;
  sub_1E3DD7BF8();
  sub_1E3DD81E0();
  sub_1E3DD7BF8();
  sub_1E3743538(v43, v39, &qword_1ECF39008, &qword_1E42D31F0);
  sub_1E3743538(v21, v30, &qword_1ECF39028, &qword_1E42D3210);
  sub_1E3743538(v20, v36, &qword_1ECF39008, &qword_1E42D31F0);
  sub_1E3743538(v39, v25, &qword_1ECF39008, &qword_1E42D31F0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39030, &qword_1E42D3218);
  v45 = v25 + v44[12];
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_1E3743538(v30, v25 + v44[16], &qword_1ECF39028, &qword_1E42D3210);
  sub_1E3743538(v36, v25 + v44[20], &qword_1ECF39008, &qword_1E42D31F0);
  sub_1E325F6F0(v20, &qword_1ECF39008, &qword_1E42D31F0);
  sub_1E325F6F0(v21, &qword_1ECF39028, &qword_1E42D3210);
  sub_1E325F6F0(v43, &qword_1ECF39008, &qword_1E42D31F0);
  sub_1E325F6F0(v36, &qword_1ECF39008, &qword_1E42D31F0);
  sub_1E325F6F0(v30, &qword_1ECF39028, &qword_1E42D3210);
  sub_1E325F6F0(v39, &qword_1ECF39008, &qword_1E42D31F0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD7BF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v75 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v74 = v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39018, &qword_1E42D3200);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  v77 = type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 48);
  if (v17)
  {
    v18 = (*(*v17 + 392))(v15);
  }

  else
  {
    v18 = 0;
  }

  if ((sub_1E3A92050(v3, 14, v14) & 1) != 0 && (v19 = *(v1 + 32)) != 0)
  {
    v70 = v12;
    v71 = v6;
    v72 = v5;
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 64);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    if (v22)
    {
      while (1)
      {
        v25 = v24;
LABEL_13:
        v26 = *(*(v19 + 56) + 8 * (__clz(__rbit64(v22)) | (v25 << 6)));

        if (sub_1E385050C())
        {
          break;
        }

        v22 &= v22 - 1;

        v24 = v25;
        if (!v22)
        {
          goto LABEL_10;
        }
      }

      OUTLINED_FUNCTION_18();
      v64 = v73;
      sub_1E3FC96D0(v26, 0, v73);
      sub_1E38115FC(v64, v70);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_136();
      v67 = sub_1E3DDBD84(v65, v66);
      OUTLINED_FUNCTION_6_15(v67);
      v68 = v72;
      sub_1E4201F44();

      sub_1E3811660(v64);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39020, &qword_1E42D3208);
      v63 = v68;
      goto LABEL_36;
    }

LABEL_10:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        v6 = v71;
        v5 = v72;
        v12 = v70;
        goto LABEL_17;
      }

      v22 = *(v19 + 64 + 8 * v25);
      ++v24;
      if (v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    if (v17)
    {
      if (v18)
      {
        OUTLINED_FUNCTION_8();
        v28 = *(v27 + 504);

        v30 = v28(v29);

        if (v30 == 18)
        {
          v32 = 14;
        }

        else
        {
          v32 = v30;
        }
      }

      else
      {

        v32 = 14;
      }

      if (sub_1E3A92050(v32, v3, v31))
      {
        if (v18)
        {
          OUTLINED_FUNCTION_8();
          v34 = *(v33 + 200);

          v36 = v34(v35);
          v38 = v37;

          v39 = *(*v18 + 304);

          v41 = v39(v40);
          v43 = v42;

          if (v43)
          {
            v41 = 0;
          }

          if (v38)
          {
            v36 = 0;
          }
        }

        else
        {
          v41 = 0;
          v36 = 0;
        }

        v49 = j__OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_55_3();
        OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_6_14(v36, v41, v49 & 1, v78, 0, 1, 0, 1, v73, v74, SBYTE1(v74), SBYTE2(v74));
        OUTLINED_FUNCTION_18();
        v50 = v74;
        OUTLINED_FUNCTION_30_5();
        sub_1E37E8BE8(v51, v52, v53, v54, v55, v56, v57);
        sub_1E375C31C(v78);
        v58 = v75;
        (*(v75 + 16))(v12, v50, v6);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_136();
        v61 = sub_1E3DDBD84(v59, v60);
        OUTLINED_FUNCTION_6_15(v61);
        sub_1E4201F44();

        (*(v58 + 8))(v50, v6);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39020, &qword_1E42D3208);
        v63 = v5;
LABEL_36:
        __swift_storeEnumTagSinglePayload(v63, 0, 1, v62);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39020, &qword_1E42D3208);
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  }
}

void sub_1E3DD81E0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39038, &qword_1E42D3220);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39040, &qword_1E42D3228);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v10 + 392))())
    {
      type metadata accessor for UnifiedOverlayLayout();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *(v0 + 80);
        if (v12)
        {
          v13 = v11;
          v28 = *(*v12 + 128);

          v15 = v28(v14);
          v16 = [v15 showScoreboard];

          if (v16)
          {
            v28 = *(*v13 + 1816);

            v28(v17);
            sub_1E4068D54();
            sub_1E4067E98(v12, &v7[*(v4 + 36)]);

            sub_1E3741EA0(v7, v1, &qword_1ECF39038, &qword_1E42D3220);
            v18 = 0;
          }

          else
          {

            v18 = 1;
          }

          __swift_storeEnumTagSinglePayload(v1, v18, 1, v4);
          sub_1E3741EA0(v1, v3, &qword_1ECF39040, &qword_1E42D3228);
          v24 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_1E3DD8468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FD0, &qword_1E42D31A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FE0, &qword_1E42D31B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FC0, &qword_1E42D31A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = *a1;
  if (*(*a1 + 98) - 154 > 6 || ((1 << (*(*a1 + 98) + 102)) & 0x47) == 0)
  {
    *v7 = sub_1E4201B74();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FE8, &qword_1E42D31C0);
    sub_1E3DD8994();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v24, v25, v26, v27);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBD20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_82();
    sub_1E328FCF4(v28, v29, v30);
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
  }

  else
  {
    v70 = a2;
    v16 = a1[4];
    v17 = a1[1];
    v67 = a1[2];
    v68 = v17;
    v66 = *(a1 + 24);
    v18 = a1[7];
    v19 = a1[9];
    v64 = a1[8];
    v65 = v18;
    v63 = v19;
    if (v16)
    {

      v21 = sub_1E373E010(115, v16, v20);
      if (v21)
      {
      }
    }

    else
    {
    }

    v22 = (*(*v14 + 392))(v21);
    v69 = v8;
    if (v22)
    {
      type metadata accessor for UnifiedOverlayLayout();
      OUTLINED_FUNCTION_40_3();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_26_0();
        (*(v23 + 1864))();
      }
    }

    v34 = &v13[v10[14]];
    *v34 = sub_1E4201D44();
    *(v34 + 1) = 0;
    v34[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF0, &unk_1E42D31C8);
    sub_1E3DD8CDC();

    v35 = type metadata accessor for UnifiedOverlay(0);
    v36 = v35[17];
    v37 = (a1 + v35[16]);
    v38 = *(a1 + v36 + 8);
    v72 = *(a1 + v36);
    v73 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
    v39 = *v37;
    v61 = v37[1];
    v62 = v39;
    sub_1E4203914();
    v40 = v75;
    v41 = v76;
    v42 = v77;
    v43 = v35[19];
    LOBYTE(v35) = *(a1 + v35[18]);
    v44 = *(a1 + v43 + 8);
    v45 = *(a1 + v43 + 16);
    v75 = *(a1 + v43);
    v76 = v44;
    LOBYTE(v77) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
    sub_1E4203AB4();
    v46 = v72;
    v47 = v73;
    v48 = v74;
    *v13 = v16;
    *(v13 + 1) = v14;
    *(v13 + 2) = v68;
    *(v13 + 3) = v67;
    v13[32] = v66;
    *(v13 + 5) = v65;
    *(v13 + 6) = v64;
    *(v13 + 7) = v63;
    v49 = &v13[v10[15]];
    v50 = v61;
    *v49 = v62;
    *(v49 + 1) = v50;
    v51 = &v13[v10[16]];
    *v51 = v40;
    *(v51 + 1) = v41;
    *(v51 + 2) = v42;
    v13[v10[17]] = v35;
    v52 = &v13[v10[18]];
    *v52 = v46;
    *(v52 + 1) = v47;
    v52[16] = v48;
    v53 = &v13[v10[19]];
    type metadata accessor for ViewInteractionStates(0);
    OUTLINED_FUNCTION_6_163();
    sub_1E3DDBD84(v54, v55);
    OUTLINED_FUNCTION_19_3();
    *v53 = sub_1E4201754();
    v53[1] = v56;
    sub_1E3743538(v13, v2, &qword_1ECF38FC0, &qword_1E42D31A0);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBD20();
    OUTLINED_FUNCTION_9_0();
    sub_1E328FCF4(v57, v58, v59);
    sub_1E4201F44();
    v31 = v13;
    v32 = &qword_1ECF38FC0;
    v33 = &qword_1E42D31A0;
  }

  return sub_1E325F6F0(v31, v32, v33);
}

void sub_1E3DD8994()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v36 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39000, &qword_1E42D31E8);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39008, &qword_1E42D31F0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34_1();
  sub_1E3DD7BF8();
  v22 = *(v4 + 32);
  if (v22 && sub_1E373E010(115, v22, v21))
  {

    LODWORD(v35) = 1;
  }

  else
  {
    LODWORD(v35) = 0;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v23 + 392))(v24))
  {
    type metadata accessor for UnifiedOverlayLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v25 + 1864))(v26);
    }
  }

  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF0, &unk_1E42D31C8);
  sub_1E3DD8CDC();

  v27 = v19;
  sub_1E3DD7BF8();
  OUTLINED_FUNCTION_63_26(v2, v16);
  sub_1E3743538(v1, v0, &qword_1ECF39000, &qword_1E42D31E8);
  OUTLINED_FUNCTION_63_26(v19, v13);
  v28 = v36;
  OUTLINED_FUNCTION_63_26(v16, v36);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39010, &qword_1E42D31F8);
  v35 = v16;
  v30 = v0;
  v31 = v29;
  sub_1E3743538(v30, v28 + *(v29 + 48), &qword_1ECF39000, &qword_1E42D31E8);
  v32 = v28 + *(v31 + 64);
  *v32 = 0;
  *(v32 + 8) = 0;
  OUTLINED_FUNCTION_63_26(v13, v28 + *(v31 + 80));
  OUTLINED_FUNCTION_64_24(v27);
  sub_1E325F6F0(v1, &qword_1ECF39000, &qword_1E42D31E8);
  OUTLINED_FUNCTION_64_24(v2);
  OUTLINED_FUNCTION_64_24(v13);
  v33 = OUTLINED_FUNCTION_55_39();
  sub_1E325F6F0(v33, v34, &qword_1E42D31E8);
  OUTLINED_FUNCTION_64_24(v35);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD8CDC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  v17 = *(v3 + 32);
  if (v17)
  {
    if (*(v17 + 16))
    {
      v36 = v16;
      v18 = sub_1E3740AE8(23, v14, v15);
      if ((v19 & 1) != 0 && **(*(v17 + 56) + 8 * v18) == _TtC8VideosUI13TextViewModel)
      {

        if (sub_1E3C27528(v35, v20))
        {
          type metadata accessor for TextLayout();
          OUTLINED_FUNCTION_20_2();
          v21 = swift_dynamicCastClass();
          if (v21)
          {
            v34 = v21;
LABEL_13:
            OUTLINED_FUNCTION_18();
            sub_1E3F23370();
            type metadata accessor for UnifiedOverlay(0);
            sub_1E374709C(v1);
            (*(v6 + 104))(v10, *MEMORY[0x1E697E7D8], v4);
            v27 = sub_1E4201314();
            v28 = *(v6 + 8);
            v28(v10, v4);
            v28(v1, v4);
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            sub_1E38841FC(v34, v27 & 1, v12, OpaqueTypeConformance2);

            (*(v36 + 8))(v0, v12);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF8, &unk_1E42D31D8);
            v30 = OUTLINED_FUNCTION_22_1();
            __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
            OUTLINED_FUNCTION_25_2();
            return;
          }
        }

        v34 = 0;
        goto LABEL_13;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF8, &unk_1E42D31D8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_1E3DD9010(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  MEMORY[0x1E690E3F0](&v7, v5);
  return v7;
}

void sub_1E3DD9070()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v62 = v4;
  OUTLINED_FUNCTION_60_5();
  v61 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v59 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF08, &unk_1E42D3100);
  v9 = *(v0 + 24);
  v63 = v8;
  v64 = v9;
  v10 = v9;
  v65 = MEMORY[0x1E6981840];
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29608, &qword_1E42B96E0);
  v12 = OUTLINED_FUNCTION_37_60(v66, v11, &v63);
  OUTLINED_FUNCTION_51_18(v12);
  OUTLINED_FUNCTION_15_120();
  swift_getWitnessTable();
  v13 = sub_1E42039C4();
  OUTLINED_FUNCTION_3_2();
  WitnessTable = swift_getWitnessTable();
  v63 = v13;
  v64 = WitnessTable;
  OUTLINED_FUNCTION_4_193();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EF8, &qword_1E42D3110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F00, &unk_1E42D3118);
  OUTLINED_FUNCTION_30_5();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_51_18(TupleTypeMetadata3);
  v52[1] = swift_getWitnessTable();
  v16 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v57 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v22 = OUTLINED_FUNCTION_24_84(v19, v20, v21);
  v58 = v16;
  v63 = v16;
  v64 = v22;
  v52[2] = v22;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v55 = v24;
  v56 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v53 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v54 = v27;
  if ((*(**(v1 + 8) + 392))())
  {
    type metadata accessor for UnifiedOverlayLayout();
    OUTLINED_FUNCTION_40_3();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
    }
  }

  else
  {
    v28 = 0;
  }

  OUTLINED_FUNCTION_8();
  v30 = (*(v29 + 488))();
  if (v30)
  {
    sub_1E373E010(115, v30, v31);
  }

  v52[0] = v28;
  if (v28)
  {
    v32 = *(*v28 + 1864);

    v34 = v32(v33);

    if (v34)
    {
      v35 = *(*v34 + 152);

      v35(&v63, v36);
    }
  }

  MEMORY[0x1EEE9AC00](v30);
  v37 = *(v3 + 24);
  v52[-4] = v10;
  v52[-3] = v37;
  v52[-2] = v1;
  sub_1E4201D44();
  sub_1E4203A34();
  v38 = v61;
  v39 = v59;
  (*(v61 + 16))(v59, v1, v3);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v10;
  *(v41 + 24) = v37;
  (*(v38 + 32))(v41 + v40, v39, v3);
  v42 = OUTLINED_FUNCTION_51_1();
  v43 = v53;
  sub_1E40AB6EC(v42 & 1);

  v44 = OUTLINED_FUNCTION_55_39();
  v45(v44);
  v47 = v54;
  v46 = v55;
  v48 = *(v55 + 16);
  v49 = v56;
  v48(v54, v43, v56);
  v50 = *(v46 + 8);
  v50(v43, v49);
  v48(v62, v47, v49);
  v51 = OUTLINED_FUNCTION_55_39();
  (v50)(v51);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F00, &unk_1E42D3118);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF08, &unk_1E42D3100);
  v15 = a2;
  v16 = MEMORY[0x1E6981840];
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29608, &qword_1E42B96E0);
  v8 = OUTLINED_FUNCTION_37_60(v17, v7, &v14);
  OUTLINED_FUNCTION_51_18(v8);
  swift_getWitnessTable();
  v9 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_2();
  WitnessTable = swift_getWitnessTable();
  v14 = v9;
  v15 = WitnessTable;
  OUTLINED_FUNCTION_4_193();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  sub_1E4201B34();
  sub_1E42039B4();
  sub_1E3E358E0();
}

uint64_t sub_1E3DD98D8()
{
  v8 = OUTLINED_FUNCTION_16_0();
  v9(v8);
  *(v7 - 136) = v0;
  *(v7 - 128) = v1;
  *(v7 - 296) = swift_getOpaqueTypeConformance2();
  v10 = *(v6 + 16);
  v11 = v2;
  v10(v2, v4, v3);
  v12 = *(v6 + 8);
  v12(v4, v3);
  v15 = 0.0;
  if (*v5)
  {
    if (*(*v5 + 16) && (sub_1E3740AE8(115, v13, v14), (v16 & 1) != 0))
    {

      v15 = sub_1E39295EC(v17);
      *(v7 - 248) = 0;
    }

    else
    {
      *(v7 - 248) = 1;
    }
  }

  sub_1E3DDA4C8(*(v7 - 272));
  v10(v4, v11, v3);
  *(v7 - 152) = v15;
  *(v7 - 144) = *(v7 - 248);
  *(v7 - 136) = v4;
  *(v7 - 128) = v7 - 152;
  v18 = *(v7 - 264);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v19, v20, v21, v22);
  *(v7 - 120) = v18;
  *(v7 - 176) = v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EF8, &qword_1E42D3110);
  v24 = *(v7 - 280);
  *(v7 - 168) = v23;
  *(v7 - 160) = v24;
  *(v7 - 200) = *(v7 - 296);
  *(v7 - 192) = sub_1E3DDB82C();
  *(v7 - 184) = sub_1E3DDB904();
  sub_1E3910324((v7 - 136), 3, v7 - 176);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v25, v26, v27);
  v12(v11, v3);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v28, v29, v30);
  return (v12)(v4, v3);
}

void sub_1E3DD9AB4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v63 = v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29608, &qword_1E42B96E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v64 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v61 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v55 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_19_2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF08, &unk_1E42D3100);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v25 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v28 = v27;
  v29 = v4;
  v62 = v2;
  v31 = type metadata accessor for UnifiedOverlay.ContentProgressAndAttributes(0, v4, v2, v30);
  if ((sub_1E3DD9010(v31) & 1) != 0 || *(v6 + *(v31 + 68)) == 1)
  {
    v32 = sub_1E3DD9010(v31);
    v33 = 56;
    if (v32)
    {
      v33 = 48;
    }

    if (*(v6 + v33))
    {

      sub_1E3EB9BB4(v73);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_30_5();
      sub_1E37E8BE8(v34, v35, v36, v37, v38, v39, v40);

      sub_1E375C31C(v73);
      (*(v55 + 32))(v0, v20, v16);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    __swift_storeEnumTagSinglePayload(v0, v41, 1, v16);
    sub_1E3741EA0(v0, v28, &qword_1ECF29938, &unk_1E429C3F0);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  __swift_storeEnumTagSinglePayload(v28, v42, 1, v21);
  v43 = v28;
  v44 = v58;
  v45 = *(v58 + 16);
  v46 = v56;
  v45(v56, v6 + *(v31 + 56), v29);
  v47 = v59;
  sub_1E3DD9FE4(v31, v59);
  sub_1E3743538(v43, v25, &qword_1ECF2AF08, &unk_1E42D3100);
  v72[0] = v25;
  v48 = v61;
  v45(v61, v46, v29);
  v70 = 0;
  v71 = 1;
  v72[1] = v48;
  v72[2] = &v70;
  v49 = v64;
  sub_1E3743538(v47, v64, &qword_1ECF29608, &qword_1E42B96E0);
  v72[3] = v49;
  v69[0] = v57;
  v69[1] = v29;
  v69[2] = MEMORY[0x1E6981840];
  v69[3] = v60;
  v65 = sub_1E3DDB9B4();
  v66 = v62;
  v67 = MEMORY[0x1E6981838];
  v68 = sub_1E3DDBAD4();
  sub_1E3910324(v72, 4, v69);
  sub_1E325F6F0(v47, &qword_1ECF29608, &qword_1E42B96E0);
  v50 = *(v44 + 8);
  v51 = OUTLINED_FUNCTION_114_0();
  v50(v51);
  sub_1E325F6F0(v43, &qword_1ECF2AF08, &unk_1E42D3100);
  sub_1E325F6F0(v49, &qword_1ECF29608, &qword_1E42B96E0);
  (v50)(v48, v29);
  v52 = OUTLINED_FUNCTION_16_0();
  sub_1E325F6F0(v52, v53, &unk_1E42D3100);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD9FE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = *v2;
  if (v21)
  {
    if (*(v21 + 16))
    {
      v22 = sub_1E3740AE8(32, v17, v18);
      if (v23 & 1) != 0 || *(v21 + 16) && (v22 = sub_1E3740AE8(40, v23, v24), (v25))
      {
        v26 = *(*(v21 + 56) + 8 * v22);

        type metadata accessor for ImageViewModel();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {
          v78 = v7;
          v81 = v9;
          v82 = a2;
          OUTLINED_FUNCTION_26_0();
          v28 = *(v27 + 392);
          v80 = v26;
          v30 = v29;

          v79 = v30;
          if (v28(v31))
          {
            OUTLINED_FUNCTION_9_5();
            type metadata accessor for ImageLayout();
            OUTLINED_FUNCTION_19_3();
            v32 = swift_dynamicCastClass();
            if (v32)
            {
              OUTLINED_FUNCTION_8();
              v34 = *(v33 + 1696);

              v74 = v34(v35);
              v37 = v36;
              HIDWORD(v73) = v38;

              v39 = (v4 + *(a1 + 60));
              v40 = v39[2];
              v41 = v39[3];
              v42 = *(*v32 + 2296);

              v44 = v42(v43, v40, v41);
              v46 = v45;

              HIDWORD(v75) = 0;
              v77 = *&v44;
              v76 = v46;
              v47 = v74;
              if ((v73 & 0x100000000) != 0)
              {
                v47 = 0;
              }

              v74 = v47;
              if ((v73 & 0x100000000) != 0)
              {
                a1 = 0;
              }

              else
              {
                a1 = v37;
              }

              goto LABEL_21;
            }

            OUTLINED_FUNCTION_35_59();
          }

          else
          {
            OUTLINED_FUNCTION_35_59();
            v32 = 0;
          }

          HIDWORD(v75) = 1;
LABEL_21:
          v53 = v81;
          v54 = v78;
          v55 = j__OUTLINED_FUNCTION_51_1();
          j__OUTLINED_FUNCTION_18();
          j__OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_55_3();
          OUTLINED_FUNCTION_58_2();
          LOBYTE(v76) = 1;
          LOBYTE(v74) = 1;
          sub_1E3EB9C0C(v74, a1, 0, v77, v76, 0, v55 & 1, 2, v83, 0, 1, 0, 1, v77, v78, SBYTE1(v78), SBYTE2(v78));
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_30_5();
          sub_1E37E8BE8(v56, v57, v58, v59, v60, v61, v62);
          if (v32 && (OUTLINED_FUNCTION_8(), v64 = *(v63 + 152), v65 = , v64(&v84, v65), , (v85 & 1) == 0))
          {
            v66.n128_f64[0] = OUTLINED_FUNCTION_6();
            j_nullsub_1(v66, v67, v68, v69);
          }

          else
          {
            OUTLINED_FUNCTION_5_8();
          }

          OUTLINED_FUNCTION_3();
          v70 = sub_1E4202734();
          sub_1E375C31C(v83);

          (*(v53 + 32))(v15, v3, v54);
          v71 = (v15 + *(v11 + 36));
          *v71 = v70;
          OUTLINED_FUNCTION_11_4(v71);
          sub_1E3741EA0(v15, v20, &qword_1ECF29240, &unk_1E429B770);
          v72 = v82;
          sub_1E3741EA0(v20, v82, &qword_1ECF29240, &unk_1E429B770);
          __swift_storeEnumTagSinglePayload(v72, 0, 1, v11);
          OUTLINED_FUNCTION_10_3();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
}

uint64_t sub_1E3DDA4C8@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F28, &qword_1E42D3128);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  if (*(v1 + 40))
  {

    *v2 = sub_1E4201B84();
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F30, &unk_1E42D3130);
    sub_1E3DDA5E0(v2 + *(v6 + 44));

    sub_1E3741EA0(v2, a1, &qword_1ECF38F28, &qword_1E42D3128);
    v7 = OUTLINED_FUNCTION_22_1();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_2();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }
}

uint64_t sub_1E3DDA5E0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_6_14(0, 0, v9 & 1, v21, 0, 1, 0, 1, v21[4], v22, v23, v24);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_30_5();
  sub_1E37E8BE8(v10, v11, v12, v13, v14, v15, v16);
  sub_1E375C31C(v21);
  v17 = *(v6 + 16);
  v17(v1, v2, v4);
  *a1 = 0;
  *(a1 + 8) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F38, &qword_1E42D3140);
  v17(a1 + *(v18 + 48), v1, v4);
  v19 = *(v6 + 8);
  v19(v2, v4);
  return (v19)(v1, v4);
}

double sub_1E3DDA7A4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!(*(*a1 + 392))() || (OUTLINED_FUNCTION_26_0(), v4 = (*(v3 + 840))(), , !v4))
  {
    type metadata accessor for ViewGradientLayout(0);
    v4 = sub_1E40C3088();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38ED0, &qword_1E42D30E0);
  OUTLINED_FUNCTION_1_11();
  v7 = sub_1E328FCF4(v6, &qword_1ECF38ED0, &qword_1E42D30E0);
  sub_1E392F9D0(v4, v5, v7, a2);

  return result;
}

uint64_t sub_1E3DDA8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EE0, &qword_1E42D30E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = sub_1E4202744();
  v8 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v7)
  {
    v8 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 488))();
  if (v10)
  {
    v12 = sub_1E373E010(23, v10, v11);

    if (v12)
    {
      v14 = (*(*v12 + 392))(v13);

      if (v14)
      {
        OUTLINED_FUNCTION_8();
        (*(v15 + 176))(v23);
      }
    }
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EE8, &qword_1E42D30F0);
  OUTLINED_FUNCTION_2();
  (*(v16 + 16))(v2, a1);
  v17 = (v2 + *(v5 + 36));
  *v17 = v8;
  OUTLINED_FUNCTION_11_4(v17);
  v18 = sub_1E4203D44();
  v20 = v19;
  sub_1E3741EA0(v2, a2, &qword_1ECF38EE0, &qword_1E42D30E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EF0, &qword_1E42D30F8);
  v22 = (a2 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

void sub_1E3DDAB50(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3DDADC8(319, &qword_1EE23B620, &qword_1ECF34240, &unk_1E4297E90);
    if (v2 <= 0x3F)
    {
      sub_1E3DDADC8(319, &qword_1EE23B608, &qword_1ECF2A770, &qword_1E42992B0);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_17_114();
        sub_1E3DDAE18(319, v4, v5, MEMORY[0x1E69E6720]);
        if (v6 <= 0x3F)
        {
          sub_1E3DDAE18(319, qword_1EE269ED8, type metadata accessor for ScoreboardObservable, MEMORY[0x1E69E6720]);
          if (v7 <= 0x3F)
          {
            sub_1E3AB4054(319);
            if (v8 <= 0x3F)
            {
              sub_1E3DDAE18(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              if (v9 <= 0x3F)
              {
                sub_1E3DDAE18(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                if (v10 <= 0x3F)
                {
                  type metadata accessor for CGRect(319);
                  if (v11 <= 0x3F)
                  {
                    sub_1E3DDBDC8(319, &qword_1EE288680, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                    if (v13 <= 0x3F)
                    {
                      OUTLINED_FUNCTION_7_174(v12, &qword_1EE288418, MEMORY[0x1E69E6370]);
                      if (v14 <= 0x3F)
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

void sub_1E3DDADC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_20_2();
    v5 = sub_1E4207104();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1E3DDAE18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_40_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1E3DDAE78()
{
  result = qword_1ECF38E88;
  if (!qword_1ECF38E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E80, &qword_1E42D2EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E90, &qword_1E42D2F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E98, &qword_1E42D2F20);
    v1 = sub_1E3DDAFCC();
    sub_1E3DDB13C(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3DDB190(OpaqueTypeConformance2, v4, v5);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288898, &qword_1ECF2DCD8, &qword_1E42AE9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38E88);
  }

  return result;
}

unint64_t sub_1E3DDAFCC()
{
  result = qword_1ECF38EA0;
  if (!qword_1ECF38EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E98, &qword_1E42D2F20);
    sub_1E3DDB084();
    sub_1E328FCF4(&qword_1ECF38EB8, &qword_1ECF38EC0, &qword_1E42D2F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38EA0);
  }

  return result;
}

unint64_t sub_1E3DDB084()
{
  result = qword_1ECF38EA8;
  if (!qword_1ECF38EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EB0, &qword_1E42D2F28);
    sub_1E328FCF4(&qword_1ECF38EB8, &qword_1ECF38EC0, &qword_1E42D2F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38EA8);
  }

  return result;
}

unint64_t sub_1E3DDB13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE297EE0[0];
  if (!qword_1EE297EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE297EE0);
  }

  return result;
}

unint64_t sub_1E3DDB190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2967D8[0];
  if (!qword_1EE2967D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2967D8);
  }

  return result;
}

void sub_1E3DDB204(uint64_t a1)
{
  sub_1E3DDADC8(319, &qword_1EE23B620, &qword_1ECF34240, &unk_1E4297E90);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ViewModel();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_114();
      sub_1E3DDAE18(319, v3, v4, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_7_174(v7, &qword_1ECF38EC8, MEMORY[0x1E69E7DE0]);
            if (v10 <= 0x3F)
            {
              OUTLINED_FUNCTION_7_174(v9, &qword_1EE288418, MEMORY[0x1E69E6370]);
              if (v11 <= 0x3F)
              {
                sub_1E3AB4054(319);
                if (v12 <= 0x3F)
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

uint64_t sub_1E3DDB37C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 64) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
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
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3DDB4E8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_32_0();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3DDB774(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for UnifiedOverlay.ContentProgressAndAttributes(0, *(v6 + 16), *(v6 + 24), a6);
  OUTLINED_FUNCTION_17_2(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270, &unk_1E42C7CC0);
  return sub_1E4203AA4();
}

unint64_t sub_1E3DDB82C()
{
  result = qword_1ECF38F08;
  if (!qword_1ECF38F08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EF8, &qword_1E42D3110);
    sub_1E3DDB8B0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F08);
  }

  return result;
}

unint64_t sub_1E3DDB8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38F10;
  if (!qword_1ECF38F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F10);
  }

  return result;
}

unint64_t sub_1E3DDB904()
{
  result = qword_1ECF38F18;
  if (!qword_1ECF38F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F00, &unk_1E42D3118);
    sub_1E328FCF4(&qword_1ECF38F20, &qword_1ECF38F28, &qword_1E42D3128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F18);
  }

  return result;
}

unint64_t sub_1E3DDB9B4()
{
  result = qword_1ECF38F40;
  if (!qword_1ECF38F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF08, &unk_1E42D3100);
    sub_1E3DDBA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F40);
  }

  return result;
}

unint64_t sub_1E3DDBA38()
{
  result = qword_1EE284CA8;
  if (!qword_1EE284CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29938, &unk_1E429C3F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284CA8);
  }

  return result;
}

unint64_t sub_1E3DDBAD4()
{
  result = qword_1ECF38F48;
  if (!qword_1ECF38F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29608, &qword_1E42B96E0);
    sub_1E3761A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F48);
  }

  return result;
}

unint64_t sub_1E3DDBB58()
{
  result = qword_1ECF38FA0;
  if (!qword_1ECF38FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F68, &qword_1E42D3160);
    sub_1E3DDBBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38FA0);
  }

  return result;
}

unint64_t sub_1E3DDBBE4()
{
  result = qword_1ECF38FA8;
  if (!qword_1ECF38FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F70, &qword_1E42D3168);
    sub_1E3DDBC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38FA8);
  }

  return result;
}

unint64_t sub_1E3DDBC68()
{
  result = qword_1ECF38FB0;
  if (!qword_1ECF38FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38FB8, &qword_1E42D3198);
    sub_1E3DDBD20();
    sub_1E328FCF4(&qword_1ECF38FC8, &qword_1ECF38FD0, &qword_1E42D31A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38FB0);
  }

  return result;
}

unint64_t sub_1E3DDBD20()
{
  result = qword_1EE2A4980[0];
  if (!qword_1EE2A4980[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38FC0, &qword_1E42D31A0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A4980);
  }

  return result;
}

uint64_t sub_1E3DDBD84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3DDBDC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E3DDBE18()
{
  result = qword_1ECF39048;
  if (!qword_1ECF39048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EF0, &qword_1E42D30F8);
    sub_1E3DDBED0();
    sub_1E328FCF4(&qword_1ECF39060, &qword_1ECF39068, &qword_1E42D3230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39048);
  }

  return result;
}

unint64_t sub_1E3DDBED0()
{
  result = qword_1ECF39050;
  if (!qword_1ECF39050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EE0, &qword_1E42D30E8);
    sub_1E328FCF4(&qword_1ECF39058, &qword_1ECF38EE8, &qword_1E42D30F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_28()
{

  return sub_1E3F5321C(39, v0, 0);
}

uint64_t sub_1E3DDBFC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8;
  v11 = a2;
  v12 = a1;
  switch(a4 >> 13)
  {
    case 1:
      if ((a8 & 0xE000) != 0x2000)
      {
        goto LABEL_26;
      }

      if (a1)
      {
        if (!a5)
        {
          goto LABEL_24;
        }

        type metadata accessor for Document();
        OUTLINED_FUNCTION_19_109();
        sub_1E3DE5A48(v15, v16);
        OUTLINED_FUNCTION_122();

        v17 = sub_1E4205E84();

        v12 = 0;
        if ((v17 & 1) == 0)
        {
          return v12 & 1;
        }
      }

      else if (a5)
      {
        return v12 & 1;
      }

      if (((v11 ^ a6) & 1) == 0)
      {
        if (BYTE1(v11) == 5)
        {
          v18 = BYTE1(a6) == 5;
          goto LABEL_29;
        }

        if (BYTE1(a6) == 5)
        {
          goto LABEL_26;
        }

        sub_1E37D17DC(a1, a2, a3);
        v12 = sub_1E4205E84();
      }

      return v12 & 1;
    case 2:
      if ((a8 & 0xE000) != 0x4000)
      {
        goto LABEL_26;
      }

      if (sub_1E38BBA04(a1, a5))
      {
        v12 = a6 ^ v11 ^ 1;
      }

      else
      {
        v12 = 0;
      }

      return v12 & 1;
    case 3:
      goto LABEL_26;
    case 4:
      if ((a8 & 0xE000) != 0x8000 || a6 | a5 | a7 || (a8 & 0xFFFFFF) != 0x8000)
      {
        goto LABEL_26;
      }

      v12 = 1;
      return v12 & 1;
    default:
      if (a8 & 0xE000) != 0 || ((a6 ^ a2))
      {
        goto LABEL_26;
      }

      if (a1)
      {
        if (a5)
        {
          type metadata accessor for Document();
          OUTLINED_FUNCTION_19_109();
          sub_1E3DE5A48(v13, v14);
          OUTLINED_FUNCTION_11_5();

          v12 = sub_1E4205E84();
        }

        else
        {
LABEL_24:
          sub_1E3DDC228(a1, a2, a3, a4);
          sub_1E3DDC228(0, a6, a7, v8);

LABEL_26:
          v12 = 0;
        }
      }

      else
      {
        v18 = a5 == 0;
LABEL_29:
        v12 = v18;
      }

      return v12 & 1;
  }
}

void sub_1E3DDC228(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 13) <= 3u)
  {
    v4 = a4;
    switch(a4 >> 13)
    {
      case 2:

        break;
      case 3:

        sub_1E37CDABC(a2, a3, v4);
        break;
      default:

        break;
    }
  }
}

uint64_t sub_1E3DDC32C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_27_0();
  sub_1E3DDC228(v3, v4, v1, v2);
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3DDC398()
{
  v5 = v1;
  OUTLINED_FUNCTION_48_1();
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
  *(v5 + 42) = BYTE2(v0);
  v10 = OUTLINED_FUNCTION_53();
  sub_1E3DDC228(v10, v11, v2, v0);
  sub_1E39050C0(v6, v7, v8, v9);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *(v5 + 16);
  v13 = *(v5 + 40);
  if ((v13 & 0xE000) == 0x6000 && v12 != 0)
  {
    v15 = *(v5 + 24);
    v16 = *(v5 + 32);

    v52 = v15;
    v54 = v13;
    sub_1E3DDC228(v17, v15, v16, v13);
    v50 = *(*v5 + 344);
    v51 = *v5 + 344;
    v18 = v50();
    if (v18)
    {
      v19 = v18;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      HIDWORD(v49) = v0;
      v20 = *(*v19 + 216);

      v20(v21);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v12 + 56) && (OUTLINED_FUNCTION_8(), v22 += 72, v23 = *v22, v24 = v22, v25 = , v23(v25), OUTLINED_FUNCTION_33_65(), , v24))
    {
      OUTLINED_FUNCTION_11_13();
      (*(v26 + 304))(__src);

      memcpy(__dst, __src, sizeof(__dst));
    }

    else
    {
      __dst[0] = xmmword_1E4297170;
      memset(&__dst[1], 0, 96);
    }

    v27 = memcpy(__src, __dst, 0x70uLL);
    if ((v50)(v27))
    {
      OUTLINED_FUNCTION_30();
      (*(v28 + 224))(__src);
      sub_1E325F6F0(__dst, &qword_1ECF39098, &qword_1E42E0280);
    }

    else
    {
      v29 = sub_1E325F6F0(__dst, &qword_1ECF39098, &qword_1E42E0280);
    }

    if ((*(*v5 + 344))(v29))
    {
      OUTLINED_FUNCTION_30();
      (*(v30 + 208))(1, 0, 1);

      OUTLINED_FUNCTION_86_12(v31, v32, v33, v34, v35, v36, v37, v38, v49, v50, v51, v52, v53, v54);
    }

    else
    {

      OUTLINED_FUNCTION_86_12(v39, v40, v41, v42, v43, v44, v45, v46, v49, v50, v51, v52, v53, v54);
    }
  }

  v47 = OUTLINED_FUNCTION_53();
  sub_1E39050C0(v47, v48, v2, v0);
}

double sub_1E3DDC738(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 48, a2);
  *(v2 + 48) = a1;

  return result;
}

uint64_t sub_1E3DDC774()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_1E3DDC7EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E3DDC820(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 88, a2);
  *(v2 + 88) = a1;

  return result;
}

uint64_t sub_1E3DDC85C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E3DDC890(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 96, a2);
  *(v2 + 96) = a1;

  return result;
}

uint64_t sub_1E3DDC8CC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3DDC900()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3DDC934()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3DDC9A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3DDCA28(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3DDCA98()
{
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor__documentViewIsVisible, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3DDCB04(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_41();
  (*(v6 + 16))(v2, a1, v4);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor__documentViewIsVisible, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  v8 = OUTLINED_FUNCTION_27_0();
  return v9(v8);
}

uint64_t sub_1E3DDCC1C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E3DDCC60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_pageMetrics;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_pageMetrics, a2);
  *(v2 + v4) = a1;

  return result;
}

uint64_t sub_1E3DDCD04()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_123_1();
  sub_1E3DDCD80();
  return v0;
}

void sub_1E3DDCD80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v61 = v5;
  v7 = v6;
  v59 = v8;
  v58 = v9;
  v11 = v10;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v13;
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v60 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_41();
  *(v0 + 16) = xmmword_1E4297170;
  *(v0 + 32) = 0;
  *(v0 + 42) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *(v0 + 80) = sub_1E4200544();
  *(v0 + 88) = 0;
  v20 = (v0 + 88);
  type metadata accessor for ShowcaseValue(0);
  *(v0 + 96) = sub_1E40AAAB8();
  type metadata accessor for NavigationBarObservableModel(0);
  *(v0 + 104) = sub_1E39EE6D8();
  type metadata accessor for ViewMetricsRecorder();
  *(v0 + 112) = sub_1E3FEFA68();
  v21 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor__documentViewIsVisible;
  LOBYTE(v64[0]) = 0;
  sub_1E4200634();
  (*(v18 + 32))(&v2[v21], v1, v16);
  v22 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_documentType;
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_documentType] = 0;
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_paginationSubscriber] = 0;
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070, &unk_1E42D3280);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_pageMetrics] = 0;
  v27 = *(v11 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);
  v28 = &v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef];
  *v28 = *(v11 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  *(v28 + 1) = v27;
  v2[v22] = *(v11 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_documentType);
  swift_beginAccess();
  *v20 = v4;

  *(v2 + 7) = v58;
  *(v2 + 8) = v59;
  if (v7)
  {

    sub_1E4207414();
    sub_1E375D7E8(v7, &v65, v64);

    v29 = sub_1E375D84C(v64);
    if (*(&v66 + 1))
    {
      if (OUTLINED_FUNCTION_87_13(v29, v30, v31, MEMORY[0x1E69E6370]))
      {
        v32 = v64[0];
      }

      else
      {
        v32 = 0;
      }

      v33 = v62;
      v34 = v63;
      v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_supportsAnimatedStateTransitions] = v32;
      goto LABEL_11;
    }
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  sub_1E325F6F0(&v65, &unk_1ECF296E0, &unk_1E4298030);
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_supportsAnimatedStateTransitions] = 0;
  if (!v7)
  {
    v65 = 0u;
    v66 = 0u;
    v33 = v62;
    v34 = v63;
LABEL_14:
    sub_1E325F6F0(&v65, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  v33 = v62;
  v34 = v63;
LABEL_11:
  sub_1E4207414();
  sub_1E375D7E8(v7, &v65, v64);

  v35 = sub_1E375D84C(v64);
  if (!*(&v66 + 1))
  {
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_87_13(v35, v36, v37, MEMORY[0x1E69E6370]))
  {
    v38 = v64[0];
    goto LABEL_16;
  }

LABEL_15:
  v38 = 0;
LABEL_16:
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_performsUpdatesInBackground] = v38;
  v39 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_paginationSubscriber;
  if (*&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_paginationSubscriber])
  {

    sub_1E42004E4();
  }

  v64[0] = *(v2 + 10);
  OUTLINED_FUNCTION_4_0();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_31_3(v40);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1E3DE5CF8;
  *(v41 + 24) = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E328FCF4(&unk_1EE28A130, &unk_1ECF326C0, &qword_1E429D160);
  v42 = sub_1E4200844();

  *&v2[v39] = v42;

  v43 = [objc_opt_self() sharedApplication];
  v44 = [v43 launchedToTest];

  v45 = &OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
  if (v44)
  {

    v46 = OUTLINED_FUNCTION_67_21();

    if (v46)
    {
      OUTLINED_FUNCTION_92_12();
    }
  }

  v47 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent;
  if ((v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent] & 1) != 0 || (v61 & 1) == 0)
  {
    OUTLINED_FUNCTION_92_12();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39078, &qword_1E42D3290);
    v48 = sub_1E37B2760();
    v49 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
    *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest] = v48;

    if (*&v2[v49])
    {
      v45 = "performsUpdatesInBackground";
      OUTLINED_FUNCTION_8();
      v51 = *(v50 + 200);

      v51(0xD000000000000023, 0x80000001E4283AD0);
      v33 = v62;
    }

    v2[v47] = 1;
    sub_1E3DDD588();
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v52(v60);

  v53 = sub_1E41FFC94();
  v54 = sub_1E4206814();

  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_42_9();
    v55 = OUTLINED_FUNCTION_16_2();
    v64[0] = v55;
    *v45 = 136446466;
    sub_1E3DDE028();
    sub_1E3270FC8(v56, v57, v64);
    OUTLINED_FUNCTION_33_65();

    *(v45 + 4) = v39;
    *(v45 + 6) = 1024;
    *(v45 + 14) = v61 & 1;
    _os_log_impl(&dword_1E323F000, v53, v54, "%{public}s creating new document interactor load immediately %{BOOL}d", v45, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_9();

    (*(v33 + 8))(v60, v63);
  }

  else
  {

    (*(v33 + 8))(v60, v34);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDD588()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  LODWORD(v125) = v2;
  LODWORD(v4) = v3;
  v5 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v121 = v7;
  v122 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v119 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v114 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v114 - v12;
  v124 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v120 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v116 = v15;
  v117 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v114 - v17;
  v20 = VUISignpostLogObject(v19);
  swift_unknownObjectRetain();
  sub_1E41FFBB4();
  v21 = sub_1E4206BA4();
  v22 = VUISignpostLogObject(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E4297BE0;
  v24 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
  v25 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1E3283528(v23, v26, v27);
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;

  OUTLINED_FUNCTION_74_19();
  v123 = v18;
  sub_1E41FFB94();

  if (v5 == 5)
  {
    goto LABEL_16;
  }

  LOBYTE(v126) = v4;
  v127 = 0;
  sub_1E37D17DC(v28, v29, v30);
  OUTLINED_FUNCTION_49_48();
  if (sub_1E4205E84())
  {
    OUTLINED_FUNCTION_111();
    if ((*(v31 + 344))())
    {
      OUTLINED_FUNCTION_30();
      (*(v32 + 208))(0, 0, 1);
    }
  }

  LOBYTE(v126) = v4;
  v127 = 0;
  OUTLINED_FUNCTION_49_48();
  if ((sub_1E4205E84() & 1) == 0 || (v33 = [objc_opt_self() sharedApplication], v34 = objc_msgSend(v33, sel_launchedToTest), v33, !v34) || (, v35 = OUTLINED_FUNCTION_67_21(), , (v35 & 1) == 0))
  {
LABEL_16:
    if (v125)
    {
      OUTLINED_FUNCTION_111();
      v65 = (*(v64 + 296))();
      v67 = v121;
      v66 = v122;
      v68 = v119;
      if (v65)
      {

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }
    }

    else
    {
      v69 = 1;
      v67 = v121;
      v66 = v122;
      v68 = v119;
    }

    sub_1E3DDE028();
    v71 = v70;
    v73 = v72;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v74(v68);

    v75 = sub_1E41FFC94();
    sub_1E4206814();

    v76 = OUTLINED_FUNCTION_67_5();
    v118 = v4;
    v121 = v71;
    if (v76)
    {
      v4 = v68;
      v77 = swift_slowAlloc();
      v78 = OUTLINED_FUNCTION_100();
      v79 = v71;
      v80 = v78;
      v126 = v78;
      *v77 = 136315650;
      *(v77 + 4) = sub_1E3270FC8(v79, v73, &v126);
      *(v77 + 12) = 1024;
      *(v77 + 14) = v69;
      *(v77 + 18) = 1024;
      *(v77 + 20) = v125 & 1;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v81, v82, v83, v84, v77, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      v85 = v4;
      LOBYTE(v4) = v118;
      (*(v67 + 8))(v85, v66);
    }

    else
    {

      (*(v67 + 8))(v68, v66);
    }

    OUTLINED_FUNCTION_111();
    (*(v86 + 296))();
    v87 = [objc_opt_self() isSUIEnabled];
    if (v4 == 5 || !v87 || (LOBYTE(v126) = v4, v127 = 1, sub_1E37D17DC(v87, v88, v89), OUTLINED_FUNCTION_49_48(), v69 & 1 | ((sub_1E4205E84() & 1) == 0)))
    {
      OUTLINED_FUNCTION_82_16();
      sub_1E3DDFF68();
    }

    else
    {

      OUTLINED_FUNCTION_82_16();
      sub_1E3DDC398();
    }

    v90 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
    v91 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
    if (v91 && (OUTLINED_FUNCTION_111(), v93 = *(v92 + 344), v94 = , v95 = v93(v94), (*(*v91 + 304))(v95), , (v96 = *(v1 + v90)) != 0))
    {
      v97 = *(*v96 + 352);

      v99 = v97(v98);

      if (v99)
      {
        OUTLINED_FUNCTION_4_0();
        v122 = swift_allocObject();
        OUTLINED_FUNCTION_31_3(v122);
        v100 = v120;
        v101 = v117;
        (*(v120 + 16))(v117, v123, v124);
        v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
        v103 = (v116 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
        v104 = swift_allocObject();
        v105 = v104 + v102;
        v106 = v124;
        (*(v100 + 32))(v105, v101, v124);
        v107 = (v104 + v103);
        v108 = v122;
        *v107 = v121;
        v107[1] = v73;
        v109 = v104 + ((v103 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v109 = v108;
        *(v109 + 8) = v118;
        *(v109 + 9) = v125 & 1;
        sub_1E41EC148(sub_1E3DE5C2C, v104);
        OUTLINED_FUNCTION_11_5();

        (*(v100 + 8))(v123, v106);
LABEL_35:
        *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = v101;

        goto LABEL_36;
      }

      v112 = OUTLINED_FUNCTION_45_53();
      v113(v112);
    }

    else
    {

      v110 = OUTLINED_FUNCTION_45_53();
      v111(v110);
    }

    v101 = 0;
    goto LABEL_35;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent) = 1;
  type metadata accessor for StaticPPTDocumentLoader();
  v36 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext);

  sub_1E3DE271C();
  v38 = v37;

  if (!v38)
  {
    v52 = sub_1E324FBDC();
    v54 = v121;
    v53 = v122;
    v55 = v114;
    (*(v121 + 16))(v114, v52, v122);

    v56 = sub_1E41FFC94();
    v57 = sub_1E42067F4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_6_21();
      v59 = OUTLINED_FUNCTION_100();
      v126 = v59;
      *v58 = 136446210;
      sub_1E3DDE028();
      sub_1E3270FC8(v60, v61, &v126);
      OUTLINED_FUNCTION_122();

      *(v58 + 4) = v36;
      _os_log_impl(&dword_1E323F000, v56, v57, "%{public}s failed to load static PPT document", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();

      (*(v54 + 8))(v55, v122);
    }

    else
    {

      (*(v54 + 8))(v55, v53);
    }

    goto LABEL_16;
  }

  v39 = sub_1E324FBDC();
  v41 = v121;
  v40 = v122;
  v42 = v115;
  (*(v121 + 16))(v115, v39, v122);

  v43 = sub_1E41FFC94();
  v44 = sub_1E4206814();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v41;
    v46 = OUTLINED_FUNCTION_6_21();
    v47 = OUTLINED_FUNCTION_100();
    v125 = v38;
    v126 = v47;
    v48 = v47;
    *v46 = 136446210;
    sub_1E3DDE028();
    v51 = sub_1E3270FC8(v49, v50, &v126);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1E323F000, v43, v44, "%{public}s load static PPT document", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v45 + 8))(v42, v40);
  }

  else
  {

    (*(v41 + 8))(v42, v40);
  }

  sub_1E3DDF7A4();

  v62 = OUTLINED_FUNCTION_45_53();
  v63(v62);
LABEL_36:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDE028()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  sub_1E42074B4();

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);

  MEMORY[0x1E69109E0](v2, v3);

  MEMORY[0x1E69109E0](5975389, 0xE300000000000000);
  v4 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v4);

  OUTLINED_FUNCTION_69_25();
  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  if (!v5)
  {
    v22 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
    if (v22)
    {
      v23 = v22[5];
      v24 = v22[6];
      __swift_project_boxed_opaque_existential_1(v22 + 2, v23);
      v25 = *(v24 + 8);

      v25(v23, v24);
      v26 = sub_1E41FE5E4();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_53();
      v30(v29);
      MEMORY[0x1E69109E0](v26, v28);

      OUTLINED_FUNCTION_69_25();

      MEMORY[0x1E69109E0](0x746E656D67617246, 0xEA00000000005B20);
    }

    else
    {
      OUTLINED_FUNCTION_111();
      v31 += 37;
      v32 = *v31;
      v33 = (*v31)();
      if (!v33)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_35_10(v33);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v34 = *(v0 + 56);

      if (!v34)
      {
        goto LABEL_13;
      }

      v35 = 0x6E776F6E6B6E55;

      v37 = (v32)(v36);
      if (v37 && (OUTLINED_FUNCTION_36_56(v37), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v0))
      {
        OUTLINED_FUNCTION_8();
        v35 = (*(v38 + 368))();
        v40 = v39;
      }

      else
      {
        v40 = 0xE700000000000000;
      }

      OUTLINED_FUNCTION_28_69();
      MEMORY[0x1E69109E0](v35, v40);

      OUTLINED_FUNCTION_69_25();

      MEMORY[0x1E69109E0]();
    }

    goto LABEL_13;
  }

  v6 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  v7 = *(v6 + 8);

  v8 = OUTLINED_FUNCTION_146();
  v7(v8);
  sub_1E41FE5E4();
  OUTLINED_FUNCTION_16_11();
  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
  v11 = OUTLINED_FUNCTION_146();
  MEMORY[0x1E69109E0](v11);

  OUTLINED_FUNCTION_69_25();

  v12 = 0xE90000000000005BLL;
  MEMORY[0x1E69109E0](0x2074736575716552, 0xE90000000000005BLL);

  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 296);
  v15 = v14();
  if (v15)
  {
    OUTLINED_FUNCTION_35_10(v15);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v16 = *(v0 + 56);

    if (v16)
    {
      OUTLINED_FUNCTION_81_19();

      v18 = (v14)(v17);
      if (v18 && (OUTLINED_FUNCTION_36_56(v18), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v0))
      {
        OUTLINED_FUNCTION_8();
        v12 = (*(v19 + 368))();
        v21 = v20;
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      OUTLINED_FUNCTION_28_69();
      MEMORY[0x1E69109E0](v12, v21);

      OUTLINED_FUNCTION_69_25();

      MEMORY[0x1E69109E0]();
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DDE570()
{
  sub_1E3DDE6B8();
  sub_1E39050C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor__documentViewIsVisible;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation, &qword_1ECF39080, &qword_1E42D3298);

  return v0;
}

void sub_1E3DDE6B8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v43 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v46 = v13;
  v45 = v14;
  (v14)(v2);

  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  v44 = v3;
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_36_6();
    v48 = v17;
    OUTLINED_FUNCTION_64_25(4.8751e-34);
    sub_1E3270FC8(v18, v19, &v48);
    OUTLINED_FUNCTION_63_2();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_88_15(&dword_1E323F000, v20, v21, "%{public}s cancelServiceRequests: begin");
    __swift_destroy_boxed_opaque_existential_1(v17);
    v3 = v44;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();
  }

  v22 = *(v5 + 8);
  v22(v2, v3);
  OUTLINED_FUNCTION_111();
  v24 = (*(v23 + 296))();
  if (v24)
  {
    OUTLINED_FUNCTION_35_10(v24);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v1 = *(v0 + 56);

    if (v1)
    {
      sub_1E411021C();
    }
  }

  v25 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
  v26 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  if (v26)
  {
    v42 = v22;
    v45(v43, v46, v3);

    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_6_21();
      v47 = OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_64_25(4.8751e-34);
      OUTLINED_FUNCTION_38_8(v29, v30);
      OUTLINED_FUNCTION_63_2();
      *(v1 + 4) = v5;
      OUTLINED_FUNCTION_88_15(&dword_1E323F000, v31, v32, "%{public}s cancelServiceRequests: cancel activeServiceRequest");
      __swift_destroy_boxed_opaque_existential_1(v47);
      v3 = v44;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();
    }

    v22 = v42;
    v33 = (v42)(v43, v3);
    (*(*v26 + 376))(v33);

    *(v0 + v25) = 0;
  }

  v34 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest;
  v35 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
  if (v35)
  {
    v45(v9, v46, v3);

    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_6_21();
      v38 = OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_64_25(4.8751e-34);
      OUTLINED_FUNCTION_38_8(v39, v40);
      OUTLINED_FUNCTION_33_65();

      *(v1 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v36, v37, "%{public}s cancelServiceRequests: cancel activeFragmentServiceRequest", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_65_0();

      v41 = (v22)(v9, v44);
    }

    else
    {

      v41 = (v22)(v9, v3);
    }

    (*(*v35 + 376))(v41);

    *(v0 + v34) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DDEB70()
{
  sub_1E3DDE570();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void sub_1E3DDEBC4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext))
  {
    v10 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent;
    if ((*(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39078, &qword_1E42D3290);

      *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest) = sub_1E37B2760();

      OUTLINED_FUNCTION_8();
      (*(v11 + 200))(0xD000000000000021, v12 | 0x8000000000000000);

      *(v0 + v9) = 0;

      *(v0 + v10) = 1;
      v13 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v13, v2);

      v14 = sub_1E41FFC94();
      v15 = sub_1E4206814();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_6_21();
        v20 = OUTLINED_FUNCTION_100();
        v21 = v20;
        *v16 = 136446210;
        sub_1E3DDE028();
        v19 = sub_1E3270FC8(v17, v18, &v21);

        *(v16 + 4) = v19;
        _os_log_impl(&dword_1E323F000, v14, v15, "%{public}s performing initial request", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();
      }

      (*(v4 + 8))(v8, v2);
      sub_1E3DDD588();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDEE1C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v53 = v6;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E3DDE028();
  v12 = v11;
  v14 = v13;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v15(v10);

  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();

  if (os_log_type_enabled(v16, v17))
  {
    swift_slowAlloc();
    v54[0] = OUTLINED_FUNCTION_16_2();
    *v5 = 136315650;
    v18 = sub_1E3270FC8(v12, v14, v54);

    *(v5 + 4) = v18;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v53 & 1;
    *(v5 + 18) = 1024;
    *(v5 + 20) = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates);

    _os_log_impl(&dword_1E323F000, v16, v17, "%s updateDocumentVisibility to %{BOOL}d hasPendingViewUpdates %{BOOL}d", v5, 0x18u);
    OUTLINED_FUNCTION_98_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v19 = OUTLINED_FUNCTION_123_1();
    v20(v19);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_123_1();
    v22(v21);
  }

  sub_1E3DDCA28(v53 & 1);
  OUTLINED_FUNCTION_111();
  if (((*(v23 + 440))() & 1) != 0 && *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) = 0;
    sub_1E3DDF3D8();
  }

  OUTLINED_FUNCTION_111();
  if (((*(v24 + 440))() & 1) == 0)
  {
    v31 = v5 | v3;
    v32 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
    if (v32)
    {
      v33 = v32;
      sub_1E3B056A4();
    }

    sub_1E3DE2678(v31 & 1);
    if (v5)
    {
      sub_1E3DDE6B8();
      goto LABEL_40;
    }

    v34 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
    if (v34)
    {
      sub_1E327F454(v34 + 16, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
      v35 = OUTLINED_FUNCTION_106();
      type metadata accessor for DocumentServiceRequestContext(v35);
      if (swift_dynamicCast())
      {
        if (sub_1E37D01CC(*(v54[5] + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestType), 0, v36))
        {
          OUTLINED_FUNCTION_111();
          v38 = (*(v37 + 296))();

          if (!v38)
          {
            goto LABEL_40;
          }
        }
      }
    }

    sub_1E3DE1228();
    goto LABEL_40;
  }

  v25 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
  if (!*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest))
  {
    v29 = 0;
    v30 = 0;
    if (!*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 168);

  v29 = v27(v28);

  if (*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest))
  {
LABEL_22:
    OUTLINED_FUNCTION_8();
    v40 = *(v39 + 168);

    v30 = v40(v41);

    if ((v29 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    v30 = 1;
    goto LABEL_24;
  }

  if (v29)
  {
    goto LABEL_23;
  }

  v30 = 0;
LABEL_24:
  OUTLINED_FUNCTION_111();
  v43 = (*(v42 + 296))();
  if (v43)
  {
    OUTLINED_FUNCTION_35_10(v43);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v44 = *(v1 + 56);

    if (v44)
    {

LABEL_28:
      v45 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
      if (v45 && (v46 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty, OUTLINED_FUNCTION_25(), swift_beginAccess(), *(v45 + v46) == 1))
      {
        sub_1E3DDE6B8();
      }

      else
      {
        sub_1E3DE16F4();
        if (*(v1 + v25))
        {
          goto LABEL_40;
        }
      }

      goto LABEL_32;
    }
  }

  if (v30)
  {
    goto LABEL_28;
  }

LABEL_32:
  OUTLINED_FUNCTION_111();
  v48 = (*(v47 + 320))();
  v49 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v48)
  {
    if (v49)
    {
      v50 = v49;
      sub_1E3B050F0();
    }

    OUTLINED_FUNCTION_111();
    (*(v51 + 328))(0);
  }

  else if (v49)
  {
    v52 = v49;
    sub_1E3B050E8();
    sub_1E3B050F0();
  }

LABEL_40:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDF3D8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = sub_1E324FBDC();
  (*(v5 + 16))(v1, v7, v3);

  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_100();
    v34 = v11;
    *v10 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v12, v13, &v34);
    OUTLINED_FUNCTION_33_65();

    *(v10 + 4) = v2;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v14, v15, "%{public}s signalStateChangeWithAnimationIfNeeded");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();
  }

  v16 = OUTLINED_FUNCTION_74();
  v17(v16);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_supportsAnimatedStateTransitions) != 1)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_111();
  v18 += 34;
  v19 = *v18;
  v21 = (*v18)(v20);
  v25 = v22;
  if ((v24 & 0xE000) == 0x2000)
  {
    sub_1E39050C0(v21, v22, v23, v24);
    if (v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1E39050C0(v21, v22, v23, v24);
  }

  v27 = v19(v26);
  v31 = v30;
  if ((v30 & 0xE000) != 0x6000)
  {
    sub_1E39050C0(v27, v28, v29, v30);
    goto LABEL_12;
  }

  sub_1E37CD868(v28, v29, v30);

  if ((v31 & 0x100) == 0)
  {
LABEL_12:
    type metadata accessor for DocumentInteractor(0);
    OUTLINED_FUNCTION_18_98();
    sub_1E3DE5A48(v32, v33);
    OUTLINED_FUNCTION_20_2();
    sub_1E4200514();
    sub_1E4200594();
    goto LABEL_13;
  }

LABEL_10:
  sub_1E4203E44();
  sub_1E4200FE4();
LABEL_13:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDF698(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v2)
  {
    v4 = v2;
    sub_1E3B04344(a1 & 1);
  }
}

uint64_t sub_1E3DDF70C(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (*(a1 + 48))
  {

    sub_1E3DDF7A4();
    *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent) = 1;

    OUTLINED_FUNCTION_169();
    sub_1E3DDFF68();

    *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) = 0;
  }

  return result;
}

void sub_1E3DDF7A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v81 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v80 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  OUTLINED_FUNCTION_25();
  v15 = swift_beginAccess();
  if (*(v6 + 56))
  {
    OUTLINED_FUNCTION_8();
    v19 = *(v18 + 1000);

    v19(v20);
    v22 = v21;

    if (v22)
    {
    }

    else if (*(v6 + 56))
    {
      v23 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
      v79 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
      OUTLINED_FUNCTION_8();
      v25 = *(v24 + 1008);

      v25(v79, v23);
    }
  }

  if ((v4 == 5 || (LOBYTE(v84) = v4, v83 = 0, sub_1E37D17DC(v15, v16, v17), v15 = sub_1E4205E84(), (v15 & 1) == 0)) && (v26 = *(v6 + 56)) != 0)
  {
    LOBYTE(v84) = *(v26 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
    v83 = 10;
    sub_1E3905190(v15, v16, v17);
    v27 = sub_1E4205E84();
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_1E324FBDC();
  v29 = *(v9 + 16);
  v78 = v28;
  v79 = v9 + 16;
  v77 = v29;
  (v29)(v14);

  v30 = sub_1E41FFC94();
  v31 = sub_1E4206814();

  v32 = os_log_type_enabled(v30, v31);
  v82 = v4;
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_42_9();
    v34 = OUTLINED_FUNCTION_100();
    v74 = v6;
    v73 = v9;
    v35 = v7;
    v36 = v34;
    v84 = v34;
    *v33 = 136446466;
    sub_1E3DDE028();
    OUTLINED_FUNCTION_97_4(v37, v38);
    OUTLINED_FUNCTION_63_2();
    *(v33 + 4) = v27;
    *(v33 + 12) = 1024;
    *(v33 + 14) = v27 & 1;
    _os_log_impl(&dword_1E323F000, v30, v31, "%{public}s will update with new document, restoreOldTemplate: [%{BOOL}d]", v33, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v7 = v35;
    v9 = v73;
    v6 = v74;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v76 = *(v9 + 8);
  v76(v14, v7);
  if ((v27 & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v40 = (*(v39 + 296))();
    if (v40)
    {
      v30 = v40;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      isa = v30[7].isa;

      if (isa)
      {
        OUTLINED_FUNCTION_8();
        (*(v42 + 1176))(0, 0);
      }
    }

    if (*(v6 + 56))
    {
      OUTLINED_FUNCTION_8();
      v30 = *(v43 + 1176);

      (v30)(v1, &off_1F5D861A0);
    }
  }

  v44 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController;
  v45 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v45)
  {
    v46 = v45;
    j__OUTLINED_FUNCTION_18();
    sub_1E3B056A4();
  }

  sub_1E3DE2678(1);
  if ((v27 & 1) == 0)
  {
    v50 = *(v6 + 56);

    if (!v50)
    {
LABEL_24:
      if (v27)
      {
        goto LABEL_40;
      }

LABEL_39:

      v66 = v6;
      goto LABEL_43;
    }

LABEL_27:
    LODWORD(v74) = v27;
    v51 = *(v6 + 56);
    if (v51)
    {
      v52 = *(*v51 + 1000);

      v30 = v52(v53);
      v55 = v54;

      if (v55)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v55 = 0xE700000000000000;
    OUTLINED_FUNCTION_81_19();
LABEL_32:
    v56 = *(v1 + v44);
    v75 = v7;
    if (v56)
    {
      v57 = *(v56 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore);
      v58 = v57;
    }

    else
    {
      v57 = 0;
    }

    type metadata accessor for UpdateEventMonitorController();
    OUTLINED_FUNCTION_4_0();
    v59 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v59);

    sub_1E3B03DA0(v60, v30, v55, v57, sub_1E3DE5A98, v59);
    v61 = *(v1 + v44);
    *(v1 + v44) = v62;

    OUTLINED_FUNCTION_9_2();
    if ((*(v63 + 440))())
    {
      v64 = *(v1 + v44);
      if (v64)
      {
        v65 = v64;
        sub_1E3B050E8();
        sub_1E3B050F0();
      }
    }

    v7 = v75;
    if (v74)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_111();
  v48 = (*(v47 + 296))();
  if (v48)
  {
    OUTLINED_FUNCTION_35_10(v48);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v49 = *(v1 + 56);

    if (!v49)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

LABEL_40:
  v67 = v80;
  v77(v80, v78, v7);

  v68 = sub_1E41FFC94();
  v69 = sub_1E42067F4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1E323F000, v68, v69, "Error encountered while updating", v70, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v76(v67, v7);
  OUTLINED_FUNCTION_9_2();
  v66 = (*(v71 + 296))();

LABEL_43:
  swift_beginAccess();
  *(v1 + 48) = v66;

  sub_1E3DDFF68();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDFF68()
{
  OUTLINED_FUNCTION_48_1();
  sub_1E3DDC228(v1, v2, v3, v4);
  OUTLINED_FUNCTION_53();
  sub_1E3DDC398();
  OUTLINED_FUNCTION_36();
  if (((*(v5 + 440))() & 1) != 0 || *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_performsUpdatesInBackground) == 1)
  {

    sub_1E3DDF3D8();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) = 1;
  }
}

uint64_t sub_1E3DE002C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DocumentInteractor(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

void sub_1E3DE009C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v1;
  v5 = v4;
  v125 = v6;
  v122 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v121 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v124 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v123 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v118 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v117 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v119 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_36();
  v22 = *(v21 + 296);
  v23 = v22();
  if (v23 && (v24 = v23, OUTLINED_FUNCTION_25(), swift_beginAccess(), v25 = *(v24 + 56), , , v25) && (OUTLINED_FUNCTION_8(), v27 = (*(v26 + 1000))(), v29 = v28, v30 = , v29))
  {
    v120 = v27;
  }

  else
  {
    v29 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
    v120 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
  }

  if (!(v22)(v30) || (OUTLINED_FUNCTION_25(), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_56_30();
    v36(v0);

    v37 = sub_1E41FFC94();
    v38 = sub_1E4206814();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_49_0();
      v126[0] = OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_95_18(4.8752e-34);
      OUTLINED_FUNCTION_96_17(v40, v41);
      OUTLINED_FUNCTION_11_5();

      *(v39 + 4) = v3;
      *(v39 + 12) = 2080;
      v42 = ViewModelRequestType.rawValue.getter(v125);
      OUTLINED_FUNCTION_96_17(v42, v43);
      OUTLINED_FUNCTION_11_5();

      *(v39 + 14) = v3;
      OUTLINED_FUNCTION_90_17(&dword_1E323F000, v44, v45, "%{public}s Failed to execute command [%s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v2 + 8))(v0, v124);
    goto LABEL_50;
  }

  if (sub_1E37D01CC(v125, 1, v32))
  {
    v33 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
    if (v33)
    {
      sub_1E327F454(v33 + 16, v126);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
      v34 = type metadata accessor for DocumentServiceRequestContext(0);
      if (OUTLINED_FUNCTION_65_25(v34))
      {
        v35 = *(*&v129[0] + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_animateUpdates);

        if (v35 != 1)
        {
LABEL_22:
          v49 = sub_1E324FBDC();
          (*(v123 + 16))(v2, v49, v124);

          v50 = sub_1E41FFC94();
          v51 = sub_1E4206814();

          v116 = v51;
          if (os_log_type_enabled(v50, v51))
          {
            v52 = OUTLINED_FUNCTION_42_9();
            v53 = OUTLINED_FUNCTION_100();
            v126[0] = v53;
            *v52 = 136446466;
            sub_1E3DDE028();
            v115 = OUTLINED_FUNCTION_96_17(v54, v55);

            *(v52 + 4) = v115;
            *(v52 + 12) = 1024;
            *(v52 + 14) = 0;
            _os_log_impl(&dword_1E323F000, v50, v116, "%{public}s transferred animated flag, animated = %{BOOL}d", v52, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v53);
            OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_6_0();
          }

          (*(v123 + 8))(v2, v124);
          v5 = 0;
          goto LABEL_25;
        }
      }
    }

    else if (!*(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest))
    {
      goto LABEL_25;
    }

    v46 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
    if (v46)
    {
      sub_1E327F454(v46 + 16, v126);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
      v47 = type metadata accessor for DocumentServiceRequestContext(0);
      if (OUTLINED_FUNCTION_65_25(v47))
      {
        v48 = *(*&v129[0] + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_animateUpdates);

        if (v48 != 1)
        {
          goto LABEL_22;
        }
      }
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }

    v5 = 1;
  }

LABEL_25:
  type metadata accessor for DocumentServiceRequestContext(0);
  v56 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_documentType);
  *&v57 = OUTLINED_FUNCTION_8_150();
  v129[0] = v57;
  v129[1] = v57;
  Strong;
  DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v56, v125, v120, v29, Strong, v126, v129, v5 & 1);
  v58 = v22();
  if (v58 && (OUTLINED_FUNCTION_36_56(v58), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v3) && (OUTLINED_FUNCTION_8(), (*(v59 + 1024))(), OUTLINED_FUNCTION_35_2(), v56))
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_85_16(v60);
  }

  else
  {
    OUTLINED_FUNCTION_8_150();
  }

  OUTLINED_FUNCTION_11_13();
  v62 = (*(v61 + 224))(v126);
  v63 = (v22)(v62);
  if (v63)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_33();

    if (v3)
    {
      sub_1E39C1AA0();
      OUTLINED_FUNCTION_35_2();
    }

    else
    {
      v63 = 0;
    }
  }

  OUTLINED_FUNCTION_11_13();
  v65 = (*(v64 + 272))(v63);
  v66 = (v22)(v65);
  if (v66 && (OUTLINED_FUNCTION_36_56(v66), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v3) && (OUTLINED_FUNCTION_8(), (*(v67 + 1072))(), OUTLINED_FUNCTION_35_2(), v63))
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_85_16(v68);
  }

  else
  {
    OUTLINED_FUNCTION_8_150();
  }

  OUTLINED_FUNCTION_11_13();
  (*(v69 + 248))(v126);
  v70 = sub_1E4206BA4();
  v71 = VUISignpostLogObject(v70);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  (*(v121 + 8))(v11, v122);
  if (sub_1E37D01CC(v125, 1, v72))
  {
    sub_1E3DDE6B8();
    sub_1E324FBDC();
    OUTLINED_FUNCTION_56_30();
    v74(v119);

    v75 = sub_1E41FFC94();
    v76 = sub_1E4206814();

    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_42_9();
      v126[0] = OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_95_18(4.8752e-34);
      v79 = OUTLINED_FUNCTION_96_17(v77, v78);

      *(v5 + 4) = v79;
      *(v5 + 12) = 1024;
      *(v5 + 14) = v5 & 1;
      OUTLINED_FUNCTION_48_38();
      _os_log_impl(v80, v81, v82, v83, v84, 0x12u);
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v125 + 8))(v119, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39078, &qword_1E42D3290);
    *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest) = sub_1E37B2760();

    (*(*v3 + 344))(v91);
    OUTLINED_FUNCTION_9_2();
    (*(v92 + 304))();

    sub_1E3DDD588();
    goto LABEL_49;
  }

  if ((sub_1E37D01CC(v125, 2, v73) & 1) == 0)
  {
LABEL_49:

    OUTLINED_FUNCTION_94_17();
    goto LABEL_50;
  }

  v85 = v22();
  if (v85)
  {
    OUTLINED_FUNCTION_36_56(v85);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_33();

    if (v3)
    {
      OUTLINED_FUNCTION_8();
      (*(v86 + 1048))();
      OUTLINED_FUNCTION_35_2();
      if (v70)
      {
        OUTLINED_FUNCTION_11_13();
        v88 = (*(v87 + 296))(v70);
        v89 = (v22)(v88);
        if (v89)
        {
          OUTLINED_FUNCTION_35_10(v89);
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v90 = v3[7];
        }

        else
        {
          v90 = 0;
        }

        OUTLINED_FUNCTION_11_13();
        (*(v103 + 200))(v90);
        sub_1E324FBDC();
        OUTLINED_FUNCTION_51_4();
        v104(v117);

        v105 = sub_1E41FFC94();
        v106 = sub_1E4206814();

        if (os_log_type_enabled(v105, v106))
        {
          OUTLINED_FUNCTION_6_21();
          v127 = OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_95_18(4.8751e-34);
          v109 = sub_1E3270FC8(v107, v108, &v127);

          *(v5 + 4) = v109;
          OUTLINED_FUNCTION_48_38();
          _os_log_impl(v110, v111, v112, v113, v114, 0xCu);
          OUTLINED_FUNCTION_5_175();
          OUTLINED_FUNCTION_65_0();
        }

        (*(v123 + 8))(v117, v124);
        sub_1E3DE0E8C();
        goto LABEL_49;
      }
    }
  }

  v93 = sub_1E324FBDC();
  (*(v123 + 16))(v118, v93, v124);

  v94 = sub_1E41FFC94();
  v95 = sub_1E42067F4();

  if (os_log_type_enabled(v94, v95))
  {
    OUTLINED_FUNCTION_6_21();
    v128 = OUTLINED_FUNCTION_36_6();
    OUTLINED_FUNCTION_95_18(4.8751e-34);
    sub_1E3270FC8(v96, v97, &v128);
    OUTLINED_FUNCTION_11_5();

    *(v5 + 4) = v3;
    OUTLINED_FUNCTION_48_38();
    _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_94_17();
  }

  else
  {

    OUTLINED_FUNCTION_94_17();
  }

  (*(v123 + 8))(v118, v124);
LABEL_50:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE0E8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39088, &unk_1E42D35C0);
  OUTLINED_FUNCTION_20_2();
  v12 = sub_1E37B2760();
  v13 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest;
  *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest) = v12;

  OUTLINED_FUNCTION_8();
  (*(v14 + 200))(0xD000000000000012, v15 | 0x8000000000000000);

  v16 = *(v0 + v13);
  if (v16)
  {
    v17 = v5;
    v18 = *(*v0 + 344);

    v20 = v18(v19);
    v5 = v17;
    (*(*v16 + 304))(v20);
  }

  v21 = sub_1E324FBDC();
  (*(v7 + 16))(v11, v21, v5);

  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    v34 = v3;
    v24 = OUTLINED_FUNCTION_6_21();
    v25 = OUTLINED_FUNCTION_100();
    v36 = v25;
    *v24 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v26, v27, &v36);
    OUTLINED_FUNCTION_11_5();

    *(v24 + 4) = v5;
    _os_log_impl(&dword_1E323F000, v22, v23, "%{public}s Starting fragment update request", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_6_0();
    v3 = v34;
    OUTLINED_FUNCTION_6_0();

    (*(v7 + 8))(v11, v5);
  }

  else
  {

    (*(v7 + 8))(v11, v5);
  }

  v28 = *(v0 + v13);
  if (v28 && (v29 = *(*v28 + 352), v30 = , v31 = v29(v30), , v31))
  {
    OUTLINED_FUNCTION_4_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v32);
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v35;
    v33[4] = v3;
    sub_1E34AF604(v35, v3);
    sub_1E41EC148(sub_1E3DE5A8C, v33);
    OUTLINED_FUNCTION_11_5();
  }

  else
  {
    v32 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = v32;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE1228()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v41 = v11;
  v42 = v12;
  v40 = v13;
  (v13)(v2);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_6_21();
    LODWORD(v39) = v15;
    v16 = OUTLINED_FUNCTION_16_2();
    v38 = v3;
    v44 = v16;
    *v15 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v17, v18, &v44);
    OUTLINED_FUNCTION_63_2();
    *(v15 + 4) = v5;
    OUTLINED_FUNCTION_103_0(&dword_1E323F000, v14, v39, "%{public}s suspendServiceRequests: begin");
    OUTLINED_FUNCTION_98_14();
    v3 = v38;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_9();
  }

  v19 = *(v5 + 8);
  v20 = v19(v2, v3);
  v21 = (*(*v1 + 296))(v20);
  if (v21)
  {
    OUTLINED_FUNCTION_35_10(v21);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v15 = v1[7];

    if (v15)
    {
      sub_1E410FD34();
    }
  }

  v22 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  v39 = v19;
  if (v22)
  {
    v40(v9, v41, v3);

    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();

    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_6_21();
      v25 = OUTLINED_FUNCTION_16_2();
      v38 = v3;
      v43 = v25;
      *v15 = 136446210;
      sub_1E3DDE028();
      OUTLINED_FUNCTION_38_8(v26, v27);
      v37 = v9;
      OUTLINED_FUNCTION_63_2();
      *(v15 + 4) = v5;
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, v23, v24, "%{public}s suspendServiceRequests: suspend activeServiceRequest");
      OUTLINED_FUNCTION_98_14();
      v3 = v38;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();

      v28 = v37;
    }

    else
    {

      v28 = v9;
    }

    v19 = v39;
    v29 = v39(v28, v3);
    (*(*v22 + 360))(v29);
  }

  v30 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
  if (v30)
  {
    v40(v0, v41, v3);

    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_6_21();
      v43 = OUTLINED_FUNCTION_16_2();
      *v15 = 136446210;
      sub_1E3DDE028();
      OUTLINED_FUNCTION_38_8(v33, v34);
      OUTLINED_FUNCTION_122();

      *(v15 + 4) = v1;
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, v31, v32, "%{public}s suspendServiceRequests: suspended activeFragmentServiceRequest");
      OUTLINED_FUNCTION_98_14();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();

      v35 = v39(v0, v3);
    }

    else
    {

      v36 = OUTLINED_FUNCTION_27_0();
      v35 = (v19)(v36);
    }

    (*(*v30 + 360))(v35);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE16F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v65 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v12 = sub_1E324FBDC();
  v13 = *(v5 + 2);
  v66 = v12;
  v67 = v13;
  v68 = v5 + 16;
  (v13)(v11);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = os_log_type_enabled(v14, v15);
  v69 = v0;
  if (v16)
  {
    v17 = v3;
    v18 = OUTLINED_FUNCTION_6_21();
    v19 = OUTLINED_FUNCTION_100();
    v71 = v19;
    *v18 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v20, v21, &v71);
    OUTLINED_FUNCTION_63_2();
    *(v18 + 4) = v2;
    _os_log_impl(&dword_1E323F000, v14, v15, "%{public}s resumeServiceRequests: begin", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6_0();
    v3 = v17;
    OUTLINED_FUNCTION_6_0();

    v22 = *(v5 + 1);
    v23 = v22(v11, v17);
  }

  else
  {

    v22 = *(v5 + 1);
    v23 = v22(v11, v3);
  }

  v24 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  if (!v24)
  {
    v41 = (*(*v1 + 296))(v23);
    if (v41)
    {
      OUTLINED_FUNCTION_36_56(v41);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_54_33();

      if (v1)
      {
        sub_1E410FFA8();
      }
    }

    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
    if (!v24)
    {
      goto LABEL_31;
    }

    v42 = v65;
    v67(v65, v66, v3);

    v43 = sub_1E41FFC94();
    v44 = sub_1E4206814();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_100();
      v70 = v46;
      *v45 = 136446210;
      sub_1E3DDE028();
      v49 = OUTLINED_FUNCTION_38_8(v47, v48);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1E323F000, v43, v44, "%{public}s resumeServiceRequests: resume activeFragmentServiceRequest", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      v50 = v65;
LABEL_30:
      v59 = v22(v50, v3);
      (*(*v24 + 368))(v59);

LABEL_31:
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_29:
    v50 = v42;
    goto LABEL_30;
  }

  v25 = *(*v1 + 296);

  v27 = v25(v26);
  if (!v27 || (OUTLINED_FUNCTION_36_56(v27), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , !v1))
  {
LABEL_26:
    v42 = v69;
    v67(v69, v66, v3);

    v51 = sub_1E41FFC94();
    v52 = sub_1E4206814();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v24;
      v54 = OUTLINED_FUNCTION_6_21();
      v55 = OUTLINED_FUNCTION_100();
      v70 = v55;
      *v54 = 136446210;
      sub_1E3DDE028();
      v58 = OUTLINED_FUNCTION_38_8(v56, v57);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1E323F000, v51, v52, "%{public}s resumeServiceRequests: resume activeServiceRequest", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_6_0();
      v24 = v53;
      OUTLINED_FUNCTION_6_0();

      v50 = v69;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v62 = v24;
  v63 = v22;
  v64 = v1;
  v65 = v5;
  sub_1E410F81C();
  v29 = v28;

  v30 = sub_1E3798694(v29);
  if (!v30)
  {

LABEL_25:
    v24 = v62;
    v22 = v63;
    goto LABEL_26;
  }

  v31 = v30;
  v61 = v3;
  v70 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v30 & ~(v30 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v33 = v70;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v32, v29);
      }

      else
      {
      }

      OUTLINED_FUNCTION_8();
      v35 = (*(v34 + 376))();
      v37 = v36;

      v70 = v33;
      v39 = v33[2];
      v38 = v33[3];
      if (v39 >= v38 >> 1)
      {
        sub_1E377FD30((v38 > 1), v39 + 1, 1);
        v33 = v70;
      }

      ++v32;
      v33[2] = v39 + 1;
      v40 = &v33[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
    }

    while (v31 != v32);

    v3 = v61;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1E3DE1D10(uint64_t a1)
{
  *(v1 + 40) = a1;
  OUTLINED_FUNCTION_169();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3DE1D3C()
{
  v41 = v0;
  v1 = *(v0 + 40);
  v2 = sub_1E32859C4(v1, &selRef_documentType);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  sub_1E3DE55E0(v2, v3, v4);
  sub_1E4149694();
  if (*(v0 + 80) == 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 80);
  }

  v6 = sub_1E32859C4(v1, &selRef_controllerRef);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v10 = [*(v0 + 40) documentRef];
    v8 = sub_1E4205F14();
    v9 = v11;
  }

  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 appController];

  if (v13)
  {
    v14 = [v13 appContext];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 40);
  type metadata accessor for DocumentServiceRequestContext(0);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = OUTLINED_FUNCTION_18();
  *(v0 + 48) = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v5, 0, v8, v9, v14, &v37, &v39, v16 & 1);
  v17 = [v15 contextData];
  if (v17 && (v18 = v17, v19 = [v17 jsonData], v18, v19))
  {
    v20 = sub_1E4205C64();

    *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *&v39 = v20;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v21 = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  (*(v22 + 224))(&v39);
  v23 = [v21 prefetchData];
  if (v23 && (v24 = v23, v25 = [v23 jsonData], v24, v25))
  {
    v26 = sub_1E4205C64();

    *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *&v39 = v26;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  OUTLINED_FUNCTION_8();
  (*(v27 + 248))(&v39);
  type metadata accessor for DocumentInteractor(0);
  v28 = swift_allocObject();
  *(v0 + 56) = v28;

  sub_1E3DDCD80();
  v29 = swift_task_alloc();
  *(v0 + 64) = v29;
  type metadata accessor for Document();
  *v29 = v0;
  v29[1] = sub_1E3DE2124;
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DE38](v30, v31, v32, 0xD00000000000001ELL, v33, v34, v28, v35);
}

uint64_t sub_1E3DE2124()
{
  *(*v1 + 72) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3DE2234()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3DE22A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E3DE2310()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v22 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080, &qword_1E42D3298);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070, &unk_1E42D3280);
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v15, v0, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation;
  OUTLINED_FUNCTION_11_3(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation, v25);
  sub_1E3DE59A0(v15, v3 + v18);
  swift_endAccess();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v19 = sub_1E4206A04();
  v25[4] = sub_1E3DE5A10;
  v25[5] = v3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1E329EEC4;
  v25[3] = &block_descriptor_115;
  v20 = _Block_copy(v25);

  sub_1E4203FE4();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E3DE5A48(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v12, v1, v20);
  _Block_release(v20);

  (*(v23 + 8))(v1, v4);
  (*(v8 + 8))(v12, v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE2678(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v2 && (a1 & 1) != 0)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedMonitor];
    [v5 removeObserver_];
  }
}

void sub_1E3DE271C()
{
  OUTLINED_FUNCTION_31_1();
  v16 = v0;
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E3DE5560(v4, v2, 0xD000000000000022, 0x80000001E4283D80);
  sub_1E3DE5560(0x617461642ELL, 0xE500000000000000, v13, v14);

  sub_1E41FE344();
  sub_1E41FE424();
  (*(v8 + 8))(v12, v6);
  sub_1E3280A90(0, &qword_1ECF39090, 0x1E696ACD0);
  sub_1E4206954();

  sub_1E37E93E8(v20, v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      if (v16)
      {
        type metadata accessor for Document();
        v15 = OUTLINED_FUNCTION_106();
        v18 = type metadata accessor for DocumentServiceRequestContext(v15);
        v19 = &off_1F5D583B8;
        v17[0] = v16;
        swift_retain_n();
        sub_1E4017924();
        OUTLINED_FUNCTION_68_27();

        sub_1E325F6F0(v20, &unk_1ECF296E0, &unk_1E4298030);
      }

      else
      {
        sub_1E325F6F0(v20, &unk_1ECF296E0, &unk_1E4298030);
        OUTLINED_FUNCTION_68_27();
      }
    }

    else
    {
      sub_1E325F6F0(v20, &unk_1ECF296E0, &unk_1E4298030);
      OUTLINED_FUNCTION_68_27();
    }
  }

  else
  {
    sub_1E325F6F0(v20, &unk_1ECF296E0, &unk_1E4298030);
    OUTLINED_FUNCTION_68_27();
    sub_1E325F6F0(v17, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE2BF4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E4206B94();
  v14 = VUISignpostLogObject(v13);
  sub_1E41FFBA4();

  v15 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v15, v6);

  v16 = sub_1E41FFC94();
  LOBYTE(v14) = sub_1E4206814();

  if (os_log_type_enabled(v16, v14))
  {
    OUTLINED_FUNCTION_6_21();
    v30[0] = OUTLINED_FUNCTION_36_6();
    *v5 = 136315138;
    *(v5 + 4) = sub_1E3270FC8(v3, v1, v30);
    OUTLINED_FUNCTION_13_24(&dword_1E323F000, v17, v18, "%s Received fetch document response");
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_65_0();
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = sub_1E4206BA4();
    v22 = VUISignpostLogObject(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E4297BE0;
    v25 = *(v20 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
    v24 = *(v20 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1E3283528(v23, v26, v27);
    *(v23 + 32) = v25;
    *(v23 + 40) = v24;

    OUTLINED_FUNCTION_74_19();
    sub_1E41FFB94();

    sub_1E3DE2F20();
    v28 = sub_1E4206B94();
    v29 = VUISignpostLogObject(v28);
    sub_1E41FFBA4();

    *(v20 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE2F20()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v43 = v3;
  LODWORD(v44) = v2;
  v5 = v4;
  v7 = v6;
  v45 = v8;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  sub_1E3DDE028();
  v20 = v19;
  v22 = v21;
  v23 = sub_1E324FBDC();
  v24 = *(v11 + 16);
  if ((v5 & 0x100) != 0)
  {
    v24(v15, v23, v9);

    v31 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      v32 = OUTLINED_FUNCTION_6_21();
      v44 = v1;
      v33 = v32;
      v34 = OUTLINED_FUNCTION_100();
      v42 = v7;
      v35 = v34;
      v46 = v34;
      *v33 = 136315138;
      v36 = sub_1E3270FC8(v20, v22, &v46);

      *(v33 + 4) = v36;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v37, v38, v39, v40, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v11 + 8))(v15, v9);
    sub_1E3DE3ED0();
  }

  else
  {
    v24(v18, v23, v9);

    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_6_21();
      v28 = OUTLINED_FUNCTION_100();
      v42 = v7;
      v29 = v28;
      v46 = v28;
      *v27 = 136315138;
      v30 = sub_1E3270FC8(v20, v22, &v46);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1E323F000, v25, v26, "%s Fetch document/fragment response was success", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v11 + 8))(v18, v9);
    sub_1E3DE3230();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE3230()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v150 = v6;
  v8 = v7;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070, &unk_1E42D3280);
  OUTLINED_FUNCTION_0_10();
  v139 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080, &qword_1E42D3298);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_5();
  v141 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v135 - v15;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v151 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v146 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v142 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v135 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  v136 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v137 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v135 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v135 - v34;
  sub_1E3DDE028();
  v147 = v36;
  v149 = v37;
  v140 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_111();
    v148 = (*(v38 + 440))();
    if (v8 < 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v148 = 0;
    if (v8 < 0)
    {
LABEL_3:
      OUTLINED_FUNCTION_111();
      v40 = *(v39 + 272);
      v144 = v41;

      v43 = v40(v42);
      if ((v46 & 0x8000) != 0)
      {
        v81 = sub_1E324FBDC();
        v82 = OUTLINED_FUNCTION_53();
        v145 = v83;
        (v83)(v82);
        v84 = v149;

        v85 = sub_1E41FFC94();
        sub_1E4206814();

        v86 = OUTLINED_FUNCTION_67_5();
        v143 = v5;
        if (v86)
        {
          v87 = OUTLINED_FUNCTION_6_21();
          v88 = OUTLINED_FUNCTION_100();
          v153[0] = v88;
          *v87 = 136315138;
          *(v87 + 4) = sub_1E3270FC8(v147, v84, v153);
          OUTLINED_FUNCTION_136();
          _os_log_impl(v89, v90, v91, v92, v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          OUTLINED_FUNCTION_7_7();
          OUTLINED_FUNCTION_21_0();
        }

        v67 = *(v151 + 8);
        v67(v32, v17);
        v93 = v144;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v49 = v145;
        if (*(v93 + 24))
        {
          v94 = v137;
          (v145)(v137, v81, v17);
          v95 = v94;

          v16 = sub_1E41FFC94();
          LOBYTE(v94) = sub_1E4206814();

          if (os_log_type_enabled(v16, v94))
          {
            v96 = OUTLINED_FUNCTION_49_0();
            v152[0] = OUTLINED_FUNCTION_72_0();
            OUTLINED_FUNCTION_64_25(4.8752e-34);
            OUTLINED_FUNCTION_97_4(v97, v98);
            OUTLINED_FUNCTION_33_65();

            *(v96 + 4) = v95;
            *(v96 + 12) = 2080;
            v99 = sub_1E328692C(v148 & 1);
            OUTLINED_FUNCTION_97_4(v99, v100);
            OUTLINED_FUNCTION_33_65();

            *(v96 + 14) = v95;
            OUTLINED_FUNCTION_90_17(&dword_1E323F000, v101, v102, "%{public}s will perform partial updates, animated: %s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_7_7();
            v49 = v145;
            OUTLINED_FUNCTION_6_0();

            OUTLINED_FUNCTION_34_62();
            v103 = v137;
          }

          else
          {

            OUTLINED_FUNCTION_34_62();
            v103 = v95;
          }

          v67(v103, v17);
          v5 = v143;
          v75 = v149;
          sub_1E3DDFF68();

          goto LABEL_27;
        }

        v105 = v136;
        (v145)(v136, v81, v17);
        v106 = v105;

        v107 = sub_1E41FFC94();
        v16 = sub_1E4206814();

        if (os_log_type_enabled(v107, v16))
        {
          OUTLINED_FUNCTION_6_21();
          v152[0] = OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_64_25(4.8751e-34);
          v110 = OUTLINED_FUNCTION_97_4(v108, v109);

          *(v49 + 4) = v110;
          OUTLINED_FUNCTION_13_24(&dword_1E323F000, v111, v112, "%{public}s Received empty items in fragment in multi part document request.");
          OUTLINED_FUNCTION_5_175();
          v49 = v145;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        OUTLINED_FUNCTION_34_62();
        v67(v106, v17);
        v5 = v143;
      }

      else
      {
        sub_1E39050C0(v43, v44, v45, v46);
        v47 = sub_1E324FBDC();
        v48 = v151;
        v49 = *(v151 + 16);
        (v49)(v25, v47, v17);

        v50 = sub_1E41FFC94();
        v16 = sub_1E42067F4();

        if (os_log_type_enabled(v50, v16))
        {
          OUTLINED_FUNCTION_6_21();
          v145 = v49;
          v51 = OUTLINED_FUNCTION_36_6();
          v141 = v17;
          v52 = v5;
          v53 = v51;
          v153[0] = v51;
          OUTLINED_FUNCTION_64_25(4.8751e-34);
          OUTLINED_FUNCTION_38_8(v54, v55);
          OUTLINED_FUNCTION_33_65();

          *(v49 + 4) = v35;
          OUTLINED_FUNCTION_13_24(&dword_1E323F000, v56, v57, "%{public}s fragments when not expecting them.");
          __swift_destroy_boxed_opaque_existential_1(v53);
          v5 = v52;
          v17 = v141;
          OUTLINED_FUNCTION_6_0();
          v49 = v145;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v104 = *(v48 + 8);
        v104(v25, v17);
        v67 = v104;
      }

      v75 = v149;
LABEL_27:
      v80 = v146;
      goto LABEL_28;
    }
  }

  v58 = sub_1E324FBDC();
  v145 = *(v151 + 16);
  (v145)(v35, v58, v17);
  v59 = v149;

  v60 = sub_1E41FFC94();
  v61 = sub_1E4206814();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_6_21();
    v63 = OUTLINED_FUNCTION_100();
    v137 = v1;
    v64 = v17;
    v65 = v5;
    v66 = v63;
    v153[0] = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_1E3270FC8(v147, v59, v153);
    _os_log_impl(&dword_1E323F000, v60, v61, "%s Document returned", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v5 = v65;
    v17 = v64;
    v1 = v137;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();
  }

  v67 = *(v151 + 8);
  v67(v35, v17);
  sub_1E3DDF7A4();
  v68 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(&v1[v68], v16, &qword_1ECF39080, &qword_1E42D3298);
  v69 = v144;
  if (__swift_getEnumTagSinglePayload(v16, 1, v144))
  {

    sub_1E325F6F0(v16, &qword_1ECF39080, &qword_1E42D3298);
  }

  else
  {
    v70 = v139;
    v71 = v5;
    v72 = v67;
    v73 = v138;
    (*(v139 + 16))(v138, v16, v69);
    sub_1E325F6F0(v16, &qword_1ECF39080, &qword_1E42D3298);
    v152[0] = v8;
    sub_1E42063D4();
    v69 = v144;
    v74 = v73;
    v67 = v72;
    v5 = v71;
    (*(v70 + 8))(v74, v144);
  }

  v75 = v149;
  v76 = v141;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v69);
  OUTLINED_FUNCTION_11_3(&v1[v68], v152);
  sub_1E3DE59A0(v76, &v1[v68]);
  swift_endAccess();
  v49 = v145;
  v80 = v146;
LABEL_28:
  if (v150)
  {
    v143 = v5;
    v113 = v67;

    OUTLINED_FUNCTION_169();
    sub_1E3DDFF68();
    v114 = sub_1E324FBDC();
    v115 = v142;
    (v49)(v142, v114, v17);

    v116 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v117 = OUTLINED_FUNCTION_16_2();
      v152[0] = v117;
      *v16 = 136315138;
      v118 = v147;
      *(v16 + 4) = sub_1E3270FC8(v147, v75, v152);
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103_0(v119, v120, v121, v122);
      __swift_destroy_boxed_opaque_existential_1(v117);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_9();

      OUTLINED_FUNCTION_34_62();
      v113(v115, v17);
    }

    else
    {

      OUTLINED_FUNCTION_34_62();
      v113(v115, v17);
      v118 = v147;
    }

    OUTLINED_FUNCTION_4_0();
    v131 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v131);
    v132 = swift_allocObject();
    *(v132 + 16) = v118;
    *(v132 + 24) = v75;
    *(v132 + 32) = v131;
    *(v132 + 40) = v143;
    *(v132 + 41) = v148 & 1;
    v133 = sub_1E41EC148(sub_1E3DE5CE4, v132);

    *&v1[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable] = v133;
  }

  else
  {
    v123 = sub_1E324FBDC();
    (v49)(v80, v123, v17);

    v124 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v125 = OUTLINED_FUNCTION_16_2();
      v152[0] = v125;
      *v16 = 136315138;
      v126 = sub_1E3270FC8(v147, v75, v152);

      *(v16 + 4) = v126;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103_0(v127, v128, v129, v130);
      __swift_destroy_boxed_opaque_existential_1(v125);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_9();
    }

    else
    {
    }

    OUTLINED_FUNCTION_34_62();
    v67(v80, v17);
    *&v1[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest] = 0;

    OUTLINED_FUNCTION_111();
    (*(v134 + 296))();
    OUTLINED_FUNCTION_169();
    sub_1E3DDFF68();
  }

  OUTLINED_FUNCTION_25_2();
}