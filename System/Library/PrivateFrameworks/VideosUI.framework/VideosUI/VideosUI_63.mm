unint64_t sub_1E3B39158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE289CF8;
  if (!qword_1EE289CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CF8);
  }

  return result;
}

unint64_t sub_1E3B391AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3B39288()
{
  result = qword_1EE2886E0;
  if (!qword_1EE2886E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33910, &qword_1E42BC408);
    sub_1E3B3930C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886E0);
  }

  return result;
}

unint64_t sub_1E3B3930C()
{
  result = qword_1EE288DA0;
  if (!qword_1EE288DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33918, &qword_1E42BC410);
    sub_1E3743478(&unk_1EE2884D8);
    sub_1E3743478(&unk_1EE288528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DA0);
  }

  return result;
}

unint64_t sub_1E3B3941C()
{
  result = qword_1EE289C20;
  if (!qword_1EE289C20)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33930, &qword_1E42BC428);
    sub_1E3B394A8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C20);
  }

  return result;
}

unint64_t sub_1E3B394A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A7440[0];
  if (!qword_1EE2A7440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A7440);
  }

  return result;
}

uint64_t sub_1E3B3955C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33990, &qword_1E42BC610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B395CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3B39628(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3B396CC()
{
  result = qword_1EE289CB8;
  if (!qword_1EE289CB8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF339A8, &unk_1E42BC630);
    sub_1E3880454(v1, v2, v3);
    sub_1E3743478(&qword_1EE2889E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CB8);
  }

  return result;
}

unint64_t sub_1E3B39784()
{
  result = qword_1EE289C08;
  if (!qword_1EE289C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33990, &qword_1E42BC610);
    sub_1E3B398F4(&unk_1EE282150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C08);
  }

  return result;
}

unint64_t sub_1E3B39840()
{
  result = qword_1EE269CA0;
  if (!qword_1EE269CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF339B8, qword_1E42BC648);
    sub_1E3B398F4(&unk_1EE269CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269CA0);
  }

  return result;
}

unint64_t sub_1E3B398F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_56_21(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  STACK[0x4F0] = a9;
  STACK[0x4F8] = 0;
  LOBYTE(STACK[0x500]) = a1;
}

uint64_t OUTLINED_FUNCTION_69_16(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_70_17(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

void sub_1E3B39990(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView] = a1;
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  v3 = a1;
  if (v2)
  {
    if (v2 == v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    [v1 vui:v2 addSubview:v4 oldView:?];
  }

LABEL_4:
}

id sub_1E3B39A2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView];
  }

  else
  {
    v4 = v0;
    sub_1E38D37F0();
    type metadata accessor for MediaShowcaseCollectionLayout();
    v5 = *sub_1E3FC70CC();
    v6 = (*(v5 + 2408))();

    v7 = sub_1E3810954(46, 0xE100000000000000, v6, 0);
    [v4 vui:v7 addSubview:0 oldView:?];
    [v7 setHidden_];

    v8 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

unint64_t sub_1E3B39B4C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD00000000000001ALL;
    *v1 = 0xD00000000000001ALL;
    v1[1] = 0x80000001E4272160;
  }

  return v2;
}

id sub_1E3B39C60(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_toolbarLayout;
  type metadata accessor for MediaShowcasingToolbarLayout();
  *(v1 + v3) = sub_1E3FBD718();
  *(v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass) = 7;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix);
  *v4 = 0;
  v4[1] = 0;

  v5 = OUTLINED_FUNCTION_51_1();
  sub_1E3ED15A8(a1, v5 & 1);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E4297BE0;
  v9 = sub_1E42001D4();
  v10 = MEMORY[0x1E69DC2B0];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  sub_1E4206944();

  swift_unknownObjectRelease();

  return v11;
}

void sub_1E3B39DDC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong view];
    if (v3)
    {
      v4 = v3;
      [v3 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3B39E48()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_toolbarLayout;
  type metadata accessor for MediaShowcasingToolbarLayout();
  *(v0 + v1) = sub_1E3FBD718();
  *(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass) = 7;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix);
  *v2 = 0;
  v2[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3B39F24()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_vui_viewDidLayoutSubviews);
  v1 = sub_1E3B39FF8();
  v4 = v1;
  v5 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass) == 7 || (sub_1E37F99D4(v1, v2, v3), (sub_1E4205E84() & 1) == 0))
  {
    *(v0 + v5) = v4;
    sub_1E3B3A2A4();
  }

  if (sub_1E39DFFC8())
  {
    sub_1E3B3A99C();
  }

  else
  {
    sub_1E3B3AED8();
    v6 = sub_1E41C85FC();
    sub_1E3B3B340(v6);

    sub_1E3B3BC90();
  }

  sub_1E3B3BDB8();
}

uint64_t sub_1E3B39FF8()
{
  v1 = v0;
  v2 = sub_1E41C8EFC();
  v3 = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v4 = (*(*v2 + 464))(v2);

  if (!v4)
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  result = sub_1E32AE9B0(v4);
  if (!result)
  {

    goto LABEL_10;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  type metadata accessor for CollectionViewModel();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
  }

  else
  {
  }

LABEL_11:
  type metadata accessor for MediaShowcaseHostingView();
  v6 = sub_1E40037C8(v3);

  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;

  v12 = objc_opt_self();
  if ([v12 isPad])
  {
    v13 = [v1 vuiIsRTL];
    result = [v1 view];
    v14 = result;
    if (!v13)
    {
      if (result)
      {
        [result safeAreaInsets];
        v16 = v17;
LABEL_18:

        if (v9 - v16 < 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v9 - v16;
        }

        goto LABEL_21;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    if (result)
    {
      [result safeAreaInsets];
      v16 = v15;
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_21:
  type metadata accessor for MediaShowcaseCollectionLayout();
  v18 = sub_1E3FC706C(v9, v11, v6);
  if ([v12 isPad] && (sub_1E3A24FDC(v18) & 1) != 0)
  {
    v19 = [v1 vuiTraitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 1)
    {
      return v18;
    }

    else
    {
      return 3;
    }
  }

  else
  {
  }

  return v18;
}

void sub_1E3B3A2A4()
{
  v1 = v0;
  if (sub_1E39DFFC8())
  {
    return;
  }

  v2 = [v0 parentViewController];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = type metadata accessor for DocumentViewController(0);
  if (!OUTLINED_FUNCTION_22_10(v4) || (OUTLINED_FUNCTION_64(), (v6 = (*(v5 + 752))()) == 0) || (v7 = v6, swift_beginAccess(), v8 = *(v7 + 64), , v9 = , !v8))
  {
LABEL_12:

    goto LABEL_13;
  }

  v10 = (*(*v8 + 488))(v9);
  if (!v10)
  {

    goto LABEL_12;
  }

  if (!sub_1E373E010(39, v10, v11))
  {
LABEL_26:

    goto LABEL_13;
  }

  type metadata accessor for ImageViewModel();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_26;
  }

  v13 = v12;
  if (sub_1E3ED10FC())
  {
    v14 = sub_1E3FC6C0C();
  }

  else
  {
    v14 = sub_1E3FC6C18();
  }

  v27 = *v14;
  v28 = [v1 vuiView];
  if (!v28)
  {
    __break(1u);
    return;
  }

  v29 = v28;

  type metadata accessor for LayoutGrid();
  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v66.origin.x = v31;
  v66.origin.y = v33;
  v66.size.width = v35;
  v66.size.height = v37;
  Width = CGRectGetWidth(v66);
  v39 = sub_1E3A2579C(Width);
  v40 = *&v27 * (*(*v13 + 1056))(v39);
  v41 = j__OUTLINED_FUNCTION_18();
  v42 = j__OUTLINED_FUNCTION_18();
  sub_1E3DF9EB0(*&v40, v27, 0, 0, 0, 1, v41 & 1, 0, __src, 0, 1, 2, 1, 0, v42 & 1, 2);
  v43 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v44 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  v64[3] = &unk_1F5D869A0;
  v64[4] = &off_1F5D868A0;
  v64[0] = swift_allocObject();
  memcpy((v64[0] + 16), __src, 0x52uLL);
  v45 = v44;
  v46 = v43;
  v47 = sub_1E393D9C4(v13, v44, v64, 0);

  sub_1E373C624(v64);
  if (v47)
  {
    v48 = v47;
    [v48 setFrame_];

    v16 = v48;
    v49 = v47;
LABEL_34:
    sub_1E3B39990(v49);
LABEL_35:

    goto LABEL_36;
  }

LABEL_13:
  v15 = [v1 parentViewController];
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for DocumentViewController(0);
    if (!OUTLINED_FUNCTION_22_10(v17))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_64();
    v19 = (*(v18 + 752))();
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = v19;
    swift_beginAccess();
    v21 = *(v20 + 64);

    if (!v21)
    {
      goto LABEL_35;
    }

    v23 = (*(*v21 + 488))(v22);
    if (v23)
    {
      v25 = sub_1E373E010(23, v23, v24);

      if (v25)
      {
        if (*v25 == _TtC8VideosUI13TextViewModel)
        {
          if (sub_1E3ED10FC())
          {
            type metadata accessor for TextLayout();
            v26 = sub_1E38AA7C4();
          }

          else
          {
            type metadata accessor for MediaShowcaseCollectionLayout();
            v26 = sub_1E3FC70CC();
          }

          v50 = v26;
          type metadata accessor for MediaShowcaseCollectionLayout();
          v51 = sub_1E3FC7330();
          (*(*v50 + 608))(v51);
          (*(*v50 + 2320))(1);
          v52 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v53 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
          memset(__src, 0, 40);
          v54 = v53;
          v55 = v52;

          v57 = sub_1E393D9C4(v56, v53, __src, v50);

          sub_1E373C624(__src);
          if (v57)
          {
            v58 = *(*v25 + 344);
            v59 = v57;
            v63 = v57;
            v60 = v58();

            [v59 setAccessibilityIgnoresInvertColors_];

            v16 = v59;
            v49 = v63;
            goto LABEL_34;
          }

          goto LABEL_24;
        }
      }
    }

LABEL_24:
  }

LABEL_36:
  v61 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  if (v61)
  {
    [v61 vui:2 setOverrideUserInterfaceStyle:?];
  }

  v62 = sub_1E41C85FC();
  sub_1E3B3B340(v62);
}

void sub_1E3B3A99C()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  if (sub_1E39DFFC8())
  {
    v10 = [v0 vuiView];
    if (v10)
    {
      v11 = v10;
      [v10 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v66.origin.x = v13;
      v66.origin.y = v15;
      v66.size.width = v17;
      v66.size.height = v19;
      if (CGRectGetWidth(v66) > 0.0)
      {
        v20 = [v0 parentViewController];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 vuiIsNavigationRoot];
        }

        else
        {
          v22 = 0;
        }

        v23 = objc_opt_self();
        if ([v23 isPhone])
        {
          v24 = 1;
        }

        else if ([v23 isPad])
        {
          v25 = sub_1E3B39FF8();
          v24 = sub_1E3A24FDC(v25);
        }

        else
        {
          v24 = 0;
        }

        v58 = v6;
        v26 = sub_1E3B3CE88();
        v64 = v22;
        if ((v22 & 1) != 0 || (v27 = [v23 isPad], v63 = v26, v24 & 1 | ((v27 & 1) == 0)))
        {
          v63 = 0;
        }

        v61 = v24;
        v28 = sub_1E324FBDC();
        v59 = *(v3 + 16);
        v60 = v28;
        v59(v9);
        v29 = v0;
        v30 = sub_1E41FFC94();
        v31 = sub_1E4206814();

        v32 = os_log_type_enabled(v30, v31);
        v62 = v3;
        if (v32)
        {
          v33 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v65 = v57;
          *v33 = 136315906;
          v34 = sub_1E3B39B4C();
          v36 = v26;
          v37 = sub_1E3270FC8(v34, v35, &v65);

          *(v33 + 4) = v37;
          *(v33 + 12) = 1024;
          *(v33 + 14) = v36 & 1;
          *(v33 + 18) = 1024;
          *(v33 + 20) = v64;
          *(v33 + 24) = 1024;
          *(v33 + 26) = v63 & 1;
          _os_log_impl(&dword_1E323F000, v30, v31, "%s updateNavigationBar: isFloatingTabbar: %{BOOL}d, isRootController: %{BOOL}d, leadingStyle: %{BOOL}d", v33, 0x1Eu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          v3 = v62;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v57 = *(v3 + 8);
        (v57)(v9, v1);
        v38 = [v29 parentViewController];
        v39 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
        if (v38)
        {
          v40 = v38;
          v41 = [v38 navigationItem];

          [v41 setStyle_];
        }

        v42 = v64 & v61;
        v43 = v58;
        (v59)(v58, v60, v1);
        v44 = v29;
        v45 = sub_1E41FFC94();
        v46 = sub_1E4206814();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v65 = v48;
          *v47 = 136315394;
          v49 = sub_1E3B39B4C();
          v51 = sub_1E3270FC8(v49, v50, &v65);

          *(v47 + 4) = v51;
          *(v47 + 12) = 1024;
          *(v47 + 14) = v42;
          _os_log_impl(&dword_1E323F000, v45, v46, "%s updateNavigationBar: useLargeTitle: %{BOOL}d", v47, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v48);
          OUTLINED_FUNCTION_6_0();
          v39 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
          OUTLINED_FUNCTION_6_0();
        }

        (v57)(v43, v1);
        v52 = [v44 parentViewController];
        if (v52)
        {
          v53 = v52;
          v54 = [v52 v39[510]];

          if (v42)
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          [v54 setLargeTitleDisplayMode_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3B3AED8()
{
  v1 = v0;
  if (sub_1E39DFFC8())
  {
    goto LABEL_18;
  }

  v2 = objc_opt_self();
  if ([v2 isPhone])
  {
    v3 = 1;
  }

  else if ([v2 isPad])
  {
    v4 = sub_1E3B39FF8();
    v3 = sub_1E3A24FDC(v4);
  }

  else
  {
    v3 = 0;
  }

  v5 = sub_1E3ED10FC();
  if ([v2 isPad] && (v3 & 1) == 0 && (sub_1E3B3CE88() & 1) != 0)
  {
    v5 = 1;
  }

  v6 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  if (!v6 || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_18:
    OUTLINED_FUNCTION_8_19();
    return;
  }

  v8 = v7;
  v9 = v6;
  v10 = [v1 vuiView];
  if (!v10)
  {
    __break(1u);
    goto LABEL_40;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;

  if ([v2 isPad])
  {
    v16 = [v1 vuiIsRTL];
    v17 = [v1 vuiView];
    v18 = v17;
    if (!v16)
    {
      if (v17)
      {
        [v17 safeAreaInsets];
        v20 = v21;
        goto LABEL_21;
      }

LABEL_41:
      __break(1u);
      return;
    }

    if (v17)
    {
      [v17 safeAreaInsets];
      v20 = v19;
LABEL_21:

      v13 = v13 - v20;
      goto LABEL_22;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_22:
  v22 = *(*&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_toolbarLayout] + 112);
  v23 = *sub_1E3FBD4AC();
  v24 = (*(v23 + 2096))();

  *&v26 = COERCE_DOUBLE((*(*v24 + 248))(v25));
  v28 = v27;

  v29 = *&v26;
  if (v28)
  {
    v29 = 0.0;
  }

  v30 = v22 + v29;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v13);
  v35 = sub_1E3952BE0(v31, v32, v33, v34);
  if (v5)
  {
    if (v3)
    {
      v36 = v13 - v35 + v30 * -3.0;
    }

    else
    {
      v36 = v13 * 0.6;
    }
  }

  else if (v3)
  {
    v36 = v13 - v35 - (v30 + v30 + v30 + v30);
  }

  else
  {
    v37 = [v1 parentViewController];
    MaxX = 0.0;
    if (v37)
    {
      v39 = v37;
      v40 = [v37 navigationItem];

      v41 = [v40 titleView];
      if (v41)
      {
        type metadata accessor for UberNavigationBarTitleView();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_64();
          v43 = (*(v42 + 176))();

          [v43 frame];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;

          v57.origin.x = v45;
          v57.origin.y = v47;
          v57.size.width = v49;
          v57.size.height = v51;
          MaxX = CGRectGetMaxX(v57);
        }

        else
        {
        }
      }
    }

    v36 = v13 - (v30 + v30 + v35 * 0.5) - (MaxX + *sub_1E3FC6C30());
  }

  v56 = v9;
  [v8 vui:v36 sizeThatFits:v15];
  [v8 setBounds_];

  OUTLINED_FUNCTION_8_19();
}

void sub_1E3B3B340(void *a1)
{
  v2 = v1;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v4 = *&v2[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
    if (v4)
    {
      v5 = v4;
      v6 = &selRef_dismissPresentedViewController;
      [v5 frame];
      v8 = v7;
      v10 = v9;
      v119 = v12;
      v120 = v11;
      [a1 contentOffset];
      v13 = objc_opt_self();
      if ([v13 isPhone])
      {
        v14 = 1;
      }

      else if ([v13 isPad])
      {
        v15 = sub_1E3B39FF8();
        v14 = sub_1E3A24FDC(v15);
      }

      else
      {
        v14 = 0;
      }

      v16 = OUTLINED_FUNCTION_11_85();
      if (!v16)
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v17 = v16;
      [v16 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v127.origin.x = v19;
      v127.origin.y = v21;
      v127.size.width = v23;
      v127.size.height = v25;
      Width = CGRectGetWidth(v127);
      v27 = sub_1E3ED10FC();
      if ([v13 isPad])
      {
        v28 = OUTLINED_FUNCTION_10_83();
        v29 = OUTLINED_FUNCTION_11_85();
        v30 = v29;
        if (v28)
        {
          if (!v29)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          [v29 safeAreaInsets];
          v32 = v31;
        }

        else
        {
          if (!v29)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          [v29 safeAreaInsets];
          v32 = v33;
        }

        if (sub_1E41C8EFC())
        {
          v124 = &unk_1F5D5DF48;
          v125 = &off_1F5D5CA98;
          LOBYTE(aBlock) = 1;
          v36 = j__OUTLINED_FUNCTION_18();
          v37 = sub_1E39C29F0(&aBlock, v36 & 1);

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
        }

        else
        {
          v37 = 0;
        }

        Width = Width - v32;
        if (TVAppFeature.isEnabled.getter(20, v34, v35) & 1) != 0 && (v37)
        {
          v6 = &selRef_dismissPresentedViewController;
          goto LABEL_35;
        }

        if (v14)
        {
          v6 = &selRef_dismissPresentedViewController;
          if ((v27 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v6 = &selRef_dismissPresentedViewController;
          if (((sub_1E3B3CE88() | v27) & 1) == 0)
          {
LABEL_35:
            v56 = OUTLINED_FUNCTION_11_85();
            if (!v56)
            {
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v57 = v56;
            v58 = [v56 window];

            Height = 0.0;
            rect = v10;
            if (v58)
            {
              v60 = [v58 windowScene];

              v38 = &selRef_advisoryDisabledTimeRanges;
              if (v60)
              {
                v61 = [v60 statusBarManager];

                if (v61)
                {
                  [v61 statusBarFrame];
                  v63 = v62;
                  v65 = v64;
                  v67 = v66;
                  v69 = v68;

                  v130.origin.x = v63;
                  v130.origin.y = v65;
                  v130.size.width = v67;
                  v130.size.height = v69;
                  Height = CGRectGetHeight(v130);
                }
              }
            }

            else
            {
              v38 = &selRef_advisoryDisabledTimeRanges;
            }

            v70 = Height + sub_1E3FC6CDC();
            objc_opt_self();
            OUTLINED_FUNCTION_19_3();
            if (swift_dynamicCastObjCClass())
            {
              v71 = sub_1E3B39A2C();
              [v71 sizeThatFits_];
              v73 = v72;

              v74 = *sub_1E3FC6D18() * 0.5 - v73 * 0.5;
            }

            else
            {
              v74 = *sub_1E3FC6C24();
            }

            v75 = v70 + v74;
            if (v14)
            {
              v131.origin.x = v8;
              v131.origin.y = rect;
              v131.size.height = v119;
              v131.size.width = v120;
              CGRectGetWidth(v131);
              objc_opt_self();
              OUTLINED_FUNCTION_19_3();
              v76 = swift_dynamicCastObjCClass();
              if (v76)
              {
                [v76 setVuiTextAlignment_];
              }

LABEL_50:
              [v5 setAlpha_];
LABEL_72:
              v116 = OUTLINED_FUNCTION_11_85();
              if (v116)
              {
                v117 = v116;
                [v116 v38[326]];

                OUTLINED_FUNCTION_10_83();
                VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
                [v5 setFrame_];

                return;
              }

              goto LABEL_76;
            }

            v77 = [v2 parentViewController];
            v78 = 0.0;
            if (v77)
            {
              v79 = v77;
              v80 = [v77 navigationItem];

              v81 = [v80 titleView];
              if (v81)
              {
                type metadata accessor for UberNavigationBarTitleView();
                if (swift_dynamicCastClass())
                {
                  OUTLINED_FUNCTION_64();
                  v83 = (*(v82 + 176))();

                  [v83 v6[440]];
                  v78 = v84;
                  v86 = v85;
                  v88 = v87;
                  v90 = v89;

LABEL_59:
                  v132.origin.x = OUTLINED_FUNCTION_12_80();
                  if (CGRectEqualToRect(v132, v136))
                  {
                    [v5 setAlpha_];
                  }

                  else
                  {
                    [v5 alpha];
                    if (v91 == 0.0)
                    {
                      rect = COERCE_DOUBLE(objc_opt_self());
                      OUTLINED_FUNCTION_4_0();
                      v92 = swift_allocObject();
                      *(v92 + 16) = v5;
                      v125 = sub_1E3B3CFF0;
                      v126 = v92;
                      aBlock = MEMORY[0x1E69E9820];
                      v122 = 1107296256;
                      v123 = sub_1E378AEA4;
                      v124 = &block_descriptor_63;
                      v93 = _Block_copy(&aBlock);
                      v94 = v5;

                      OUTLINED_FUNCTION_4_0();
                      v95 = swift_allocObject();
                      *(v95 + 16) = v94;
                      v125 = sub_1E3B3CFF0;
                      v126 = v95;
                      aBlock = MEMORY[0x1E69E9820];
                      v122 = 1107296256;
                      v123 = sub_1E37EB82C;
                      v124 = &block_descriptor_11_0;
                      v96 = _Block_copy(&aBlock);
                      v97 = v94;
                      v38 = &selRef_advisoryDisabledTimeRanges;

                      [*&rect animateWithDuration:v93 animations:v96 completion:0.2];
                      _Block_release(v96);
                      _Block_release(v93);
                    }
                  }

                  if (OUTLINED_FUNCTION_10_83())
                  {
                    rect = v75;
                    v98 = v90;
                    v99 = v88;
                    v100 = v86;
                    v101 = v78;
                    v102 = OUTLINED_FUNCTION_11_85();
                    if (!v102)
                    {
LABEL_81:
                      __break(1u);
                      return;
                    }

                    v103 = v102;
                    [v102 v38[326]];
                    v105 = v104;
                    v107 = v106;
                    v109 = v108;
                    v111 = v110;

                    v133.origin.x = v105;
                    v133.origin.y = v107;
                    v133.size.width = v109;
                    v133.size.height = v111;
                    CGRectGetWidth(v133);
                    v134.origin.x = v101;
                    v134.origin.y = v100;
                    v134.size.width = v99;
                    v134.size.height = v98;
                    CGRectGetMinX(v134);
                  }

                  else
                  {
                    v135.origin.x = OUTLINED_FUNCTION_12_80();
                    CGRectGetMaxX(v135);
                  }

                  sub_1E3FC6C30();
                  objc_opt_self();
                  OUTLINED_FUNCTION_19_3();
                  v112 = swift_dynamicCastObjCClass();
                  if (v112)
                  {
                    v113 = v112;
                    v114 = v5;
                    if (OUTLINED_FUNCTION_10_83())
                    {
                      v115 = 2;
                    }

                    else
                    {
                      v115 = 0;
                    }

                    [v113 setVuiTextAlignment_];
                  }

                  goto LABEL_72;
                }
              }
            }

            v86 = 0.0;
            v88 = 0.0;
            v90 = 0.0;
            goto LABEL_59;
          }
        }
      }

      else if ((v27 & 1) == 0)
      {
        goto LABEL_35;
      }

      type metadata accessor for LayoutGrid();
      sub_1E3A258E4(Width);
      if ([v13 isPhone])
      {
        sub_1E3FC6D30();
      }

      else
      {
        sub_1E3FC6D3C();
      }

      v38 = &selRef_advisoryDisabledTimeRanges;
      [v5 v6[440]];
      CGRectGetHeight(v128);
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        [v39 vuiBaselineHeight];
      }

      v40 = sub_1E3EDABBC();
      if (v40)
      {
        v41 = v40;
        v42 = [v40 vuiView];
        if (!v42)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v43 = v42;
        [v42 bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;

        v129.origin.x = v45;
        v129.origin.y = v47;
        v129.size.width = v49;
        v129.size.height = v51;
        CGRectGetHeight(v129);
      }

      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v52 = swift_dynamicCastObjCClass();
      if (v52)
      {
        v53 = v52;
        v54 = v5;
        if (OUTLINED_FUNCTION_10_83())
        {
          v55 = 2;
        }

        else
        {
          v55 = 0;
        }

        [v53 setVuiTextAlignment_];
      }

      goto LABEL_50;
    }
  }
}

void sub_1E3B3BC90()
{
  if (sub_1E39DFFC8())
  {
    goto LABEL_14;
  }

  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 vuiIsNavigationRoot];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  if ([v4 isPhone])
  {
    v5 = 0;
  }

  else if ([v4 isPad])
  {
    v6 = sub_1E3B39FF8();
    v5 = sub_1E3A24FDC(v6) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v7 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  if (!v7)
  {
LABEL_14:
    OUTLINED_FUNCTION_200();
  }

  else
  {
    [v7 setHidden_];
    OUTLINED_FUNCTION_200();
  }
}

void sub_1E3B3BDB8()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v9, v10, "MediaShowcase:: updateNavigationBarButtonVisibilities", v11, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v7, v2);
  if (sub_1E39DFFC8())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v13 = Strong;
    v14 = [v1 parentViewController];
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (![objc_opt_self() isPad])
  {
    return;
  }

  v15 = [v1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  v17 = swift_unknownObjectWeakLoadStrong();
  v13 = v17;
  if (v16 == 1)
  {
    if (!v17)
    {
      return;
    }

    v14 = [v1 parentViewController];
    if (!v14)
    {
      v19 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (!v17)
  {
    return;
  }

  v14 = [v1 parentViewController];
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_11:
  v18 = v14;
  v19 = [v14 navigationItem];

LABEL_15:
  sub_1E38B5610();
}

void sub_1E3B3C0B0(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_vuiScrollViewDidScroll_, a1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    sub_1E3B3B340(a1);
  }
}

void sub_1E3B3C170(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_vui_viewWillAppear_, a1 & 1);
  if (sub_1E39DFFC8())
  {
    sub_1E3B3A99C();
  }

  else
  {
    sub_1E3B3BC90();
  }
}

void sub_1E3B3C214(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_vui_viewDidAppear_, a1 & 1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v3 = [v1 parentViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationItem];

      v6 = [v5 titleView];
      if (v6)
      {
        type metadata accessor for UberNavigationBarTitleView();
        OUTLINED_FUNCTION_19_3();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = v7;
          v9 = [v1 vuiView];
          (*((*MEMORY[0x1E69E7D40] & *v8) + 0x178))(v9);
        }
      }
    }
  }
}

void sub_1E3B3C394(char a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_vui_viewDidDisappear_, a1 & 1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v4 = [v2 parentViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationItem];

      v7 = [v6 titleView];
      if (v7)
      {
        v8 = type metadata accessor for UberNavigationBarTitleView();
        v9 = OUTLINED_FUNCTION_22_10(v8);
        if (v9)
        {
          v10 = v9;
          v11 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_64();
          v13 = (*(v12 + 368))();
          v14 = [v2 vuiView];
          v15 = v14;
          if (v13)
          {
            if (!v14)
            {

              goto LABEL_13;
            }

            if (v15 == v13)
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (!v14)
            {
LABEL_11:
              (*((*v11 & *v10) + 0x178))(0);
              goto LABEL_13;
            }
          }
        }

LABEL_13:
      }
    }
  }

  OUTLINED_FUNCTION_200();
}

void sub_1E3B3C574(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1E3ED6E94();
  if (((sub_1E39DFFC8() & 1) != 0 || [objc_opt_self() isPad]) && (ObjectType = swift_getObjectType(), v6 = type metadata accessor for ViewControllerHostingCollectionViewCell(), (v7 = dynamic_cast_existential_1_superclass_conditional(a2, ObjectType, v6, &protocol descriptor for ShowcasingCollectionViewCell)) != 0))
  {
    v8 = v7;
    v14 = a2;
    if ((sub_1E3C7654C() & 1) != 0 && !sub_1E41FE854())
    {
      v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
      v15 = v14;
      v12 = v11();

      if (v12)
      {
        v13 = type metadata accessor for MediaShowcaseHostingViewController();
        if (OUTLINED_FUNCTION_22_10(v13))
        {
          swift_unknownObjectWeakAssign();
          sub_1E3B3BDB8();
        }
      }
    }

    OUTLINED_FUNCTION_200();
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3B3C754(uint64_t a1, void *a2)
{
  sub_1E3ED75C8(a1);
  if ((sub_1E39DFFC8() & 1) == 0 && ![objc_opt_self() isPad] || (ObjectType = swift_getObjectType(), v4 = type metadata accessor for ViewControllerHostingCollectionViewCell(), (v5 = dynamic_cast_existential_1_superclass_conditional(a2, ObjectType, v4, &protocol descriptor for ShowcasingCollectionViewCell)) == 0))
  {
    OUTLINED_FUNCTION_200();
    return;
  }

  v6 = v5;
  v12 = a2;
  if ((sub_1E3C7654C() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (sub_1E41FE854())
  {
    goto LABEL_6;
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x60);
  v11 = v12;
  v13 = v9();

  if (!v13)
  {
    goto LABEL_6;
  }

  type metadata accessor for MediaShowcaseHostingViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    OUTLINED_FUNCTION_200();

    return;
  }

  sub_1E38B5610();

  OUTLINED_FUNCTION_200();

  swift_unknownObjectWeakAssign();
}

void sub_1E3B3C90C()
{
  sub_1E3ED97A0();
  if ((sub_1E39DFFC8() & 1) == 0 && (v1 = [v0 parentViewController]) != 0 && (v2 = v1, v3 = objc_msgSend(v1, sel_navigationItem), v2, v11 = objc_msgSend(v3, sel_titleView), v3, v11))
  {
    type metadata accessor for UberNavigationBarTitleView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      OUTLINED_FUNCTION_4_0();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xE8);

      v7(sub_1E3B3CA98, v6);

      OUTLINED_FUNCTION_200();
    }

    else
    {
      OUTLINED_FUNCTION_200();
    }
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

void sub_1E3B3CA98(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3B3AED8();
    v3 = v2;
    v4 = sub_1E41C85FC();

    sub_1E3B3B340(v4);
  }
}

uint64_t sub_1E3B3CAF8()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 parentViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 vuiIsNavigationRoot];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1E3B39FF8();
  v12 = v10 & sub_1E3A2511C(v11);
  v13 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v13, v1);
  v14 = v0;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v26) = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315650;
    v20 = sub_1E3B39B4C();
    v22 = sub_1E3270FC8(v20, v21, &v27);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    v23 = HIDWORD(v26);
    *(v18 + 14) = HIDWORD(v26);
    *(v18 + 18) = 1024;
    *(v18 + 20) = v10;
    _os_log_impl(&dword_1E323F000, v15, v16, "%s shouldHideTitle:%{BOOL}d, isRootController:%{BOOL}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 8))(v7, v1);
    v24 = v23;
  }

  else
  {

    (*(v3 + 8))(v7, v1);
    v24 = v12;
  }

  if (v24)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1E3B3CD70()
{

  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_mediaShowcaseHostingViewController);
}

void sub_1E3B3CE54()
{
  if (sub_1E39DFFC8())
  {

    sub_1E3B3A99C();
  }
}

id sub_1E3B3CE88()
{
  if (![objc_opt_self() isPad])
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 splitViewController];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isFloatingTabBarInHierarchy];

  return v2;
}

uint64_t type metadata accessor for MediaShowcasingTemplateController(uint64_t a1)
{
  result = qword_1EE2919E0;
  if (!qword_1EE2919E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3B3D008()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3B3D050(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_55_24();
      break;
    case 2:
      result = OUTLINED_FUNCTION_54_21();
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B3D104(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3B3D154(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3B3D154(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3B3D228(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3B3D154(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3B3D26C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B3D008();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B3D29C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3B3D050(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B3D2C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B3D338@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B3D3CC(char a1)
{

  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_49_0();
    v12 = OUTLINED_FUNCTION_72_0();
    *v5 = 136315394;
    OUTLINED_FUNCTION_111();
    v7 = (*(v6 + 216))();
    sub_1E3270FC8(v7, v8, &v12);
    OUTLINED_FUNCTION_14_52();
    *(v5 + 4) = v1;
    *(v5 + 12) = 2080;
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
    switch(a1)
    {
      case 1:
        v9 = 0xE900000000000064;
        v10 = OUTLINED_FUNCTION_55_24();
        break;
      case 2:
        OUTLINED_FUNCTION_68_16();
        v10 = OUTLINED_FUNCTION_54_21();
        break;
      case 3:
        v9 = 0x80000001E42721B0;
        v10 = 0xD000000000000013;
        break;
      default:
        break;
    }

    sub_1E3270FC8(v10, v9, &v12);
    OUTLINED_FUNCTION_14_52();
    *(v5 + 14) = v1;
    _os_log_impl(&dword_1E323F000, v3, v4, "%s Setting playhead position to %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E3B3D5B8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E3B3D2C8();
  return sub_1E3B3D600;
}

uint64_t sub_1E3B3D628()
{
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor__playheadPosition, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0, &qword_1E42BC758);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3B3D694(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD10, &qword_1E42B50B0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_77();
  v7();
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor__playheadPosition, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0, &qword_1E42BC758);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E3B3D7A8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD10, &qword_1E42B50B0);
  v3[4] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v3[5] = v5;
  v7 = *(v6 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v3[7] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor__playheadPosition, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0, &qword_1E42BC758);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3B3D8BC;
}

void sub_1E3B3D8BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    sub_1E3B3D694(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3B3D694(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3B3D96C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  if (![v1 currentMediaItem] || (ObjectType = swift_getObjectType(), v3 = *MEMORY[0x1E69D5DC0], v4 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), sub_1E4123590(v3, v4, v11), swift_unknownObjectRelease(), !v11[1]))
  {
  }

  v5 = [v1 description];
  v6 = sub_1E4205F14();
  v8 = v7;

  MEMORY[0x1E69109E0](v6, v8);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  v9 = OUTLINED_FUNCTION_74();
  MEMORY[0x1E69109E0](v9);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_1E3B3DAB8()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_50();
  sub_1E3B3DAF4(v1);
  return v0;
}

uint64_t sub_1E3B3DAF4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0, &qword_1E42BC758);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor__playheadPosition;
  HIBYTE(v23) = 0;
  sub_1E4200634();
  (*(v6 + 32))(v1 + v8, v2, v4);
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1E41FFCA4();
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) = v9;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver) = 0;
  v10 = (v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken);
  *v11 = 0u;
  v11[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) = a1;
  v12 = a1;
  sub_1E3B3D3CC(0);
  sub_1E3B3DFD4();
  sub_1E3B3EB34();
  sub_1E3B3ECB4();
  sub_1E3B41698();
  sub_1E3B3FC4C();
  sub_1E3B3E4D4(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25);

  return v1;
}

uint64_t sub_1E3B3DCB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken, v23);
  sub_1E37E93E8(v0 + v1, &v21, &unk_1ECF296E0, &unk_1E4298030);
  if (v22)
  {
    sub_1E329504C(&v21, &v24);
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v3 = v2;
    OUTLINED_FUNCTION_13_8();
    v4 = sub_1E4207994();
    OUTLINED_FUNCTION_73_11(v4);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
  }

  v5 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken, &v20);
  sub_1E37E93E8(v0 + v5, &v21, &unk_1ECF296E0, &unk_1E4298030);
  if (v22)
  {
    sub_1E329504C(&v21, &v24);
    v6 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v7 = v6;
    OUTLINED_FUNCTION_13_8();
    v8 = sub_1E4207994();
    OUTLINED_FUNCTION_73_11(v8);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  v9 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor__playheadPosition;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0, &qword_1E42BC758);
  OUTLINED_FUNCTION_2();
  (*(v10 + 8))(v0 + v9);

  v11 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v12 + 8))(v0 + v11);

  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v13, v14, v15);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v16, v17, v18);

  return v0;
}

uint64_t sub_1E3B3DF7C()
{
  sub_1E3B3DCB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3B3DFD4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v1 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10, &unk_1E42BC8E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_2_118();
  sub_1E3B443D8(v10, v11, MEMORY[0x1E6969F18]);
  sub_1E42007B4();

  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_52_24(v12);
  OUTLINED_FUNCTION_11_86();
  sub_1E32752B0(v13, &unk_1ECF33A10, &unk_1E42BC8E0, v14);
  OUTLINED_FUNCTION_31_40();
  OUTLINED_FUNCTION_16_5();

  v15 = OUTLINED_FUNCTION_74();
  v16(v15);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_cancellables, &v17);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B3E238(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_1E41FDF14();
  if (!v15[3])
  {
    v12 = v15;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A150, &qword_1E42BC8F0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5_0(a3 + 16, v18);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v5 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);

    v6 = [v5 currentMediaItem];

    if (!v6)
    {
      goto LABEL_13;
    }

    if (([v6 isEqualToMediaItem_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v7 = sub_1E41FDF24();
    if (v7)
    {
      v8 = v7;
      v14[5] = sub_1E4205F14();
      v14[6] = v9;
      sub_1E4207414();
      sub_1E375D7E8(v8, &v16, v15);

      sub_1E375D84C(v15);
      if (*(&v17 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A20, &qword_1E42BC8F8);
        v10 = swift_dynamicCast();
        if (v10)
        {
          v11 = v15[0];
          v15[0] = *MEMORY[0x1E69D5B38];
          MEMORY[0x1EEE9AC00](v10);
          v14[2] = v15;
          sub_1E3B42F1C(sub_1E3B44AE0, v14, v11);
          OUTLINED_FUNCTION_87_0();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return 0;
        }

        swift_unknownObjectRelease();
LABEL_13:
        swift_unknownObjectRelease();
        return 0;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v16 = 0u;
      v17 = 0u;
    }

    v12 = &v16;
LABEL_11:
    sub_1E325F6F0(v12, &unk_1ECF296E0, &unk_1E4298030);
  }

  return 0;
}

void sub_1E3B3E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v14 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10, &unk_1E42BC8E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_2();
  v23 = *(v13 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  v24 = [v23 currentMediaItem];
  if (v24)
  {
    v25 = [v24 hasTrait_];
    swift_unknownObjectRelease();
    if (v25)
    {
      v26 = [v23 state];
      v27 = [objc_opt_self() playing];
      v28 = v27;
      if (v26)
      {
        if (v27)
        {

          if (v26 == v28)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }

        v28 = v26;
      }

      else if (!v27)
      {
LABEL_13:
        OUTLINED_FUNCTION_25_2();

        sub_1E3B408A0();
        return;
      }

LABEL_18:
      v55 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
      if (!*(v12 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver))
      {

        v37 = sub_1E41FFC94();
        v38 = sub_1E4206814();

        if (os_log_type_enabled(v37, v38))
        {
          v53 = OUTLINED_FUNCTION_6_21();
          v52 = OUTLINED_FUNCTION_100();
          v56 = v52;
          *v53 = 136315138;
          OUTLINED_FUNCTION_111();
          v40 = (*(v39 + 216))();
          OUTLINED_FUNCTION_58_0(v40, v41);
          OUTLINED_FUNCTION_14_52();
          *(v53 + 4) = v53;
          _os_log_impl(&dword_1E323F000, v37, v38, "%s Waiting for player to start playing before polling for playback date", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v42 = [objc_opt_self() defaultCenter];
        sub_1E4206C14();

        OUTLINED_FUNCTION_2_118();
        sub_1E3B443D8(v43, v44, MEMORY[0x1E6969F18]);
        sub_1E42007B4();
        (*(v16 + 8))(v20, v14);
        OUTLINED_FUNCTION_4_0();
        v45 = swift_allocObject();
        OUTLINED_FUNCTION_52_24(v45);
        OUTLINED_FUNCTION_11_86();
        sub_1E32752B0(v46, v47, v48, v49);
        OUTLINED_FUNCTION_31_40();
        OUTLINED_FUNCTION_16_5();

        v50 = OUTLINED_FUNCTION_74();
        v51(v50);
        *(v12 + v55) = v20;
      }

      goto LABEL_22;
    }
  }

  v54 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_87_0();

  if (os_log_type_enabled(v54, v21))
  {
    v29 = OUTLINED_FUNCTION_6_21();
    v30 = OUTLINED_FUNCTION_100();
    v56 = v30;
    *v29 = 136315138;
    OUTLINED_FUNCTION_111();
    v32 = (*(v31 + 216))();
    sub_1E3270FC8(v32, v33, &v56);
    OUTLINED_FUNCTION_50();

    *(v29 + 4) = v12;
    _os_log_impl(&dword_1E323F000, v54, v21, "%s Not waiting for playback date availability because current media item is not a sporting event", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();

LABEL_22:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3B3E9DC(uint64_t a1, double a2)
{
  v2 = sub_1E41FDF24();
  if (!v2)
  {
    v10 = 0u;
    v11 = 0u;
    goto LABEL_6;
  }

  v3 = v2;
  *&v10 = sub_1E4205F14();
  *(&v10 + 1) = v4;
  sub_1E4207414();
  sub_1E375D7E8(v3, &v10, v9);

  sub_1E375D84C(v9);
  if (!*(&v11 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v10, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  sub_1E3280A90(0, &qword_1EE23B280, 0x1E69D5A40);
  if (swift_dynamicCast())
  {
    v5 = v9[0];
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [objc_opt_self() playing];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {

      swift_unknownObjectRelease();
      return v7 == v5;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (v6)
  {

    return 0;
  }

  return 1;
}

double sub_1E3B3EB34()
{
  OUTLINED_FUNCTION_156_0();
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_52_24(v3);
  OUTLINED_FUNCTION_2_118();
  sub_1E3B443D8(v4, v5, MEMORY[0x1E6969F18]);
  OUTLINED_FUNCTION_31_40();
  OUTLINED_FUNCTION_16_5();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_cancellables, v9);
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

void sub_1E3B3ECB4()
{
  OUTLINED_FUNCTION_31_1();
  v20 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v12 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v13 = sub_1E4206A04();
  v21 = v13;
  v14 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v14);
  OUTLINED_FUNCTION_2_118();
  sub_1E3B443D8(v15, v16, MEMORY[0x1E6969F18]);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v3, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v17 = v20;
  swift_weakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  v18 = OUTLINED_FUNCTION_8_6();
  v19(v18);
  OUTLINED_FUNCTION_11_3(v17 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_cancellables, &v21);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B3EFE8()
{
  v2 = v0;
  v131 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v129 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v8);
  v130 = v121 - v9;
  v10 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_logger;

  v128 = v10;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_100();
    *&aBlock = v14;
    OUTLINED_FUNCTION_41_35(4.8149e-34);
    v16 = (*(v15 + 216))();
    v18 = sub_1E3270FC8(v16, v17, &aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v11, v12, "%s Removing any existing boundary time observers", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v19 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken, v138);
  sub_1E37E93E8(v0 + v19, &v139, &unk_1ECF296E0, &unk_1E4298030);
  if (*(&v140 + 1))
  {
    v20 = OUTLINED_FUNCTION_39_28();
    OUTLINED_FUNCTION_78_10(v20);
    swift_unknownObjectRelease();
    v140 = 0u;
    v139 = 0u;
    OUTLINED_FUNCTION_11_3(v0 + v19, v137);
    sub_1E37EB5D0(&v139, v0 + v19);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1E325F6F0(&v139, &unk_1ECF296E0, &unk_1E4298030);
  }

  v21 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken, v137);
  sub_1E37E93E8(v0 + v21, &v139, &unk_1ECF296E0, &unk_1E4298030);
  if (*(&v140 + 1))
  {
    v22 = OUTLINED_FUNCTION_39_28();
    OUTLINED_FUNCTION_78_10(v22);
    swift_unknownObjectRelease();
    v140 = 0u;
    v139 = 0u;
    OUTLINED_FUNCTION_11_3(v0 + v21, v132);
    sub_1E37EB5D0(&v139, v0 + v21);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1E325F6F0(&v139, &unk_1ECF296E0, &unk_1E4298030);
  }

  v23 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates;
  v24 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
  if (!*(*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) + 16) && !*(*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) + 16))
  {

    v45 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_112();

    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_36_6();
      *&aBlock = v46;
      LODWORD(OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss) = 136315138;
      v118 = (*(*v0 + 216))();
      v120 = sub_1E3270FC8(v118, v119, &aBlock);

      *(&OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss + 4) = v120;
      v52 = "%s Not adding boundary time observers because no date range metadata exists";
      goto LABEL_43;
    }

LABEL_44:

    goto LABEL_45;
  }

  v25 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  v26 = [v25 playbackDate];
  if (!v26)
  {

    v45 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_112();

    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_36_6();
      *&aBlock = v46;
      LODWORD(OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss) = 136315138;
      v47 = (*(*v0 + 216))();
      v49 = sub_1E3270FC8(v47, v48, &aBlock);

      *(&OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss + 4) = v49;
      v52 = "%s Not adding boundary time observers because playback date is nil";
LABEL_43:
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v50, v51, v52);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  v27 = v26;
  v123 = v19;
  v124 = v21;
  sub_1E41FE584();

  v127 = v25;
  [v25 elapsedTime];
  v29 = v28;
  v121[2] = v23;
  v30 = *(*(v2 + v23) + 16);
  v126 = v4;
  v125 = v2;
  if (v30)
  {
    v31 = *(v4 + 16);
    OUTLINED_FUNCTION_81();
    v34 = v32 + v33;
    v35 = *(v4 + 72);
    v36 = (v4 + 8);
    v122 = v32;

    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_61_13();
      v31();
      sub_1E41FE4F4();
      v39 = v38;
      (*v36)(v1, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_27();
        v37 = sub_1E3B42BC0(v41, v42, v43, v37);
      }

      v21 = *(v37 + 2);
      v40 = *(v37 + 3);
      if (v21 >= v40 >> 1)
      {
        v44 = OUTLINED_FUNCTION_35(v40);
        v37 = sub_1E3B42BC0(v44, v21 + 1, 1, v37);
      }

      *(v37 + 2) = v21 + 1;
      *&v37[8 * v21 + 32] = v29 + v39;
      v34 += v35;
      --v30;
    }

    while (v30);

    v2 = v125;
    v4 = v126;
    v24 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
  }

  v122 = v24[511];
  v53 = *(*(v2 + v122) + 16);
  if (v53)
  {
    v54 = *(v4 + 16);
    OUTLINED_FUNCTION_81();
    v57 = v55 + v56;
    v58 = *(v4 + 72);
    v121[1] = v55;

    v59 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_61_13();
      v54();
      sub_1E41FE4F4();
      v61 = v60;
      v62 = OUTLINED_FUNCTION_210();
      v63(v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = OUTLINED_FUNCTION_27();
        v59 = sub_1E3B42BC0(v66, v67, v68, v59);
      }

      v65 = *(v59 + 2);
      v64 = *(v59 + 3);
      if (v65 >= v64 >> 1)
      {
        v69 = OUTLINED_FUNCTION_35(v64);
        v59 = sub_1E3B42BC0(v69, v65 + 1, 1, v59);
      }

      *(v59 + 2) = v65 + 1;
      *&v59[8 * v65 + 32] = v29 + v61;
      v57 += v58;
      --v53;
    }

    while (v53);

    v2 = v125;
  }

  v70 = sub_1E41FFC94();
  v71 = sub_1E4206814();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_100();
    v129 = OUTLINED_FUNCTION_164_1();
    *&aBlock = v129;
    OUTLINED_FUNCTION_41_35(4.8152e-34);
    v74 = (*(v73 + 216))();
    sub_1E3270FC8(v74, v75, &aBlock);
    OUTLINED_FUNCTION_50();

    *(v72 + 4) = v2;
    *(v72 + 12) = 2080;

    v77 = MEMORY[0x1E6910C30](v76, MEMORY[0x1E69E63B0]);
    v79 = v78;

    v80 = sub_1E3270FC8(v77, v79, &aBlock);

    *(v72 + 14) = v80;
    *(v72 + 22) = 2080;

    v82 = MEMORY[0x1E6910C30](v81, v131);
    v84 = v83;

    v85 = sub_1E3270FC8(v82, v84, &aBlock);

    *(v72 + 24) = v85;
    OUTLINED_FUNCTION_76_9(&dword_1E323F000, v86, v87, "%s Adding game end boundary time observer for times/dates - %s %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v88 = sub_1E41FFC94();
  v89 = sub_1E4206814();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = OUTLINED_FUNCTION_100();
    v129 = OUTLINED_FUNCTION_164_1();
    *&aBlock = v129;
    OUTLINED_FUNCTION_41_35(4.8152e-34);
    v92 = (*(v91 + 216))();
    sub_1E3270FC8(v92, v93, &aBlock);
    OUTLINED_FUNCTION_50();

    *(v90 + 4) = v2;
    *(v90 + 12) = 2080;

    v95 = MEMORY[0x1E6910C30](v94, MEMORY[0x1E69E63B0]);
    v97 = v96;

    v98 = sub_1E3270FC8(v95, v97, &aBlock);

    *(v90 + 14) = v98;
    *(v90 + 22) = 2080;

    v100 = MEMORY[0x1E6910C30](v99, v131);
    v102 = v101;

    v103 = sub_1E3270FC8(v100, v102, &aBlock);

    *(v90 + 24) = v103;
    OUTLINED_FUNCTION_76_9(&dword_1E323F000, v104, v105, "%s Adding broadcast end boundary time observer for times/dates - %s %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v106 = v124;
  v107 = v123;

  sub_1E37EB640(v108);

  OUTLINED_FUNCTION_4_0();
  v109 = swift_allocObject();
  swift_weakInit();
  v135 = sub_1E3B445A0;
  v136 = v109;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1E37EB82C;
  *(&v134 + 1) = &block_descriptor_64;
  _Block_copy(&aBlock);

  OUTLINED_FUNCTION_77_12();
  v110 = OUTLINED_FUNCTION_16_5();
  _Block_release(v110);
  if (v109)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v134 = 0u;
  }

  OUTLINED_FUNCTION_11_3(v2 + v107, &v139);
  sub_1E37EB5D0(&aBlock, v2 + v107);
  swift_endAccess();

  sub_1E37EB640(v111);

  OUTLINED_FUNCTION_4_0();
  v112 = swift_allocObject();
  swift_weakInit();
  v135 = sub_1E3B445AC;
  v136 = v112;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1E37EB82C;
  *(&v134 + 1) = &block_descriptor_42;
  _Block_copy(&aBlock);

  OUTLINED_FUNCTION_77_12();
  v113 = OUTLINED_FUNCTION_16_5();
  _Block_release(v113);
  if (v112)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
    v114 = OUTLINED_FUNCTION_43_34();
    v115(v114);
  }

  else
  {
    v116 = OUTLINED_FUNCTION_43_34();
    v117(v116);
    aBlock = 0u;
    v134 = 0u;
  }

  OUTLINED_FUNCTION_11_3(v2 + v106, &v139);
  sub_1E37EB5D0(&aBlock, v2 + v106);
  swift_endAccess();

LABEL_45:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3B3FC4C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v124 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v117 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v117 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v117 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v125 = (&v117 - v19);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66_5();
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = &v117 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  v26 = [v25 currentMediaItem];
  if (!v26 || (v122 = v3, v123 = v11, v27 = [v26 hasTrait_], swift_unknownObjectRelease(), !v27) || *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) != 1 || (v28 = objc_msgSend(v25, sel_playbackDate)) == 0)
  {
    v37 = 0;
    goto LABEL_11;
  }

  v29 = v28;
  v129 = v24;
  sub_1E41FE584();

  v120 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates;
  v121 = v0;
  v30 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates);
  v31 = *(v30 + 16);
  v127 = (v6 + 8);
  v128 = (v6 + 16);

  for (i = 0; ; ++i)
  {
    if (v31 == i)
    {

      v37 = 0;
LABEL_20:
      v66 = *(v121 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates);
      v67 = *(v66 + 16);

      v43 = 0;
      v41 = &qword_1ECF2F220;
      while (1)
      {
        if (v67 == v43)
        {

          v73 = OUTLINED_FUNCTION_55_24();
          v74 = 0xE900000000000064;
          switch(v37)
          {
            case 1:
              goto LABEL_32;
            case 2:
              goto LABEL_31;
            case 3:
              goto LABEL_29;
            default:

              goto LABEL_33;
          }
        }

        if (v43 >= *(v66 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_81();
        v69 = *(v6 + 16);
        v69(v15, v66 + v68 + *(v6 + 72) * v43, v4);
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(&qword_1ECF2F220, v70, MEMORY[0x1E6969548]);
        if ((sub_1E4205E14() & 1) == 0)
        {

          v75 = v122;
          v69(v122, v129, v4);
          v43 = v123;
          v69(v123, v15, v4);

          v76 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_83_6();
          if (os_log_type_enabled(v76, &qword_1ECF2F220))
          {
            v77 = OUTLINED_FUNCTION_100();
            v126 = OUTLINED_FUNCTION_164_1();
            v130 = v126;
            *v77 = 136315650;
            OUTLINED_FUNCTION_111();
            v79 = *(v78 + 216);
            v125 = v76;
            v80 = v79();
            OUTLINED_FUNCTION_58_0(v80, v81);
            LODWORD(v119) = &qword_1ECF2F220;
            OUTLINED_FUNCTION_33_12();
            *(v77 + 4) = &qword_1ECF2F220;
            *(v77 + 12) = 2080;
            OUTLINED_FUNCTION_0_150();
            v84 = sub_1E3B443D8(v82, v83, MEMORY[0x1E6969570]);
            OUTLINED_FUNCTION_34();
            sub_1E4207944();
            v86 = v85;
            isa = v127->isa;
            (v127->isa)(v75, v4);
            v88 = OUTLINED_FUNCTION_47_34();
            v90 = sub_1E3270FC8(v88, v86, v89);

            *(v77 + 14) = v90;
            *(v77 + 22) = 2080;
            OUTLINED_FUNCTION_34();
            sub_1E4207944();
            OUTLINED_FUNCTION_49_4();
            isa(v43, v4);
            v91 = OUTLINED_FUNCTION_47_34();
            sub_1E3270FC8(v91, v84, v92);
            OUTLINED_FUNCTION_31_4();

            *(v77 + 24) = v43;
            v74 = v125;
            _os_log_impl(&dword_1E323F000, v125, v119, "%s Current playback date %s is beyond event end trigger date %s", v77, 0x20u);
            v41 = v126;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            v93 = OUTLINED_FUNCTION_8_6();
            (isa)(v93);
          }

          else
          {

            v74 = v127;
            v94 = v127->isa;
            (v127->isa)(v43, v4);
            v94(v75, v4);
            v95 = OUTLINED_FUNCTION_8_6();
            (v94)(v95);
          }

LABEL_31:
          OUTLINED_FUNCTION_54_21();
          OUTLINED_FUNCTION_68_16();
          v37 = 2;
          goto LABEL_32;
        }

        ++v43;
        OUTLINED_FUNCTION_71_20();
        v71 = OUTLINED_FUNCTION_8_6();
        v72(v71);
      }

LABEL_45:
      __break(1u);
      return;
    }

    if (i >= *(v30 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_81();
    v34 = *(v6 + 16);
    v34(v2, v30 + v33 + *(v6 + 72) * i, v4);
    OUTLINED_FUNCTION_0_150();
    sub_1E3B443D8(&qword_1ECF2F220, v35, MEMORY[0x1E6969548]);
    if ((sub_1E4205E14() & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_71_20();
    v36(v2, v4);
  }

  v40 = v125;
  v34(v125, v129, v4);
  v41 = v126;
  v34(v126, v2, v4);

  v42 = sub_1E41FFC94();
  v43 = sub_1E4206814();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_100();
    v118 = v43;
    v43 = v44;
    v119 = OUTLINED_FUNCTION_164_1();
    v130 = v119;
    *v43 = 136315650;
    OUTLINED_FUNCTION_111();
    v46 = *(v45 + 216);
    v117 = v42;
    v47 = v46();
    OUTLINED_FUNCTION_58_0(v47, v48);
    OUTLINED_FUNCTION_33_12();
    *(v43 + 4) = v41;
    *(v43 + 12) = 2080;
    OUTLINED_FUNCTION_0_150();
    v41 = sub_1E3B443D8(v49, v50, MEMORY[0x1E6969570]);
    OUTLINED_FUNCTION_34();
    sub_1E4207944();
    v52 = v51;
    v53 = v127->isa;
    (v127->isa)(v40, v4);
    v54 = OUTLINED_FUNCTION_47_34();
    v56 = sub_1E3270FC8(v54, v52, v55);

    *(v43 + 14) = v56;
    *(v43 + 22) = 2080;
    v57 = v126;
    OUTLINED_FUNCTION_34();
    sub_1E4207944();
    OUTLINED_FUNCTION_49_4();
    v58 = OUTLINED_FUNCTION_45_1();
    v53(v58);
    v59 = v53;
    v60 = OUTLINED_FUNCTION_47_34();
    sub_1E3270FC8(v60, v41, v61);
    OUTLINED_FUNCTION_31_4();

    *(v43 + 24) = v57;
    v62 = v117;
    _os_log_impl(&dword_1E323F000, v117, v118, "%s Current playback date %s is beyond broadcast end trigger date %s", v43, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v59(v2, v4);
  }

  else
  {

    v63 = v127->isa;
    v64 = OUTLINED_FUNCTION_74();
    v63(v64);
    (v63)(v40, v4);
    (v63)(v2, v4);
  }

  v65 = OUTLINED_FUNCTION_42_40(0xD000000000000013, 0x80000001E42721B0);

  if (v65)
  {
    v37 = 3;
    goto LABEL_20;
  }

LABEL_29:
  v73 = 0xD000000000000013;
  v74 = 0x80000001E42721B0;
  v37 = 3;
LABEL_32:
  OUTLINED_FUNCTION_42_40(v73, v74);
  OUTLINED_FUNCTION_112();

  if (v41)
  {
LABEL_33:
    if (*(*(v121 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) + 16) || *(*(v121 + v120) + 16))
    {
      v96 = v124;
      (*v128)(v124, v129, v4);

      v97 = sub_1E41FFC94();
      v98 = sub_1E4206814();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = OUTLINED_FUNCTION_49_0();
        v130 = OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_4_125(4.8151e-34);
        v101 = (*(v100 + 216))();
        OUTLINED_FUNCTION_58_0(v101, v102);
        OUTLINED_FUNCTION_33_12();
        *(v99 + 4) = v41;
        *(v99 + 12) = 2080;
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(v103, v104, MEMORY[0x1E6969570]);
        sub_1E4207944();
        OUTLINED_FUNCTION_49_4();
        v105 = v127->isa;
        (v127->isa)(v96, v4);
        v106 = OUTLINED_FUNCTION_47_34();
        sub_1E3270FC8(v106, v41, v107);
        OUTLINED_FUNCTION_31_4();

        *(v99 + 14) = v96;
        _os_log_impl(&dword_1E323F000, v97, v98, "%s Current playback date %s is prior to all end dates", v99, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {

        v105 = v127->isa;
        (v127->isa)(v96, v4);
      }

      v108 = OUTLINED_FUNCTION_45_1();
      v105(v108);
      v0 = v121;
    }

    else
    {

      v0 = v121;
      v110 = sub_1E41FFC94();
      v111 = sub_1E4206814();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = OUTLINED_FUNCTION_6_21();
        v130 = OUTLINED_FUNCTION_100();
        *v112 = 136315138;
        OUTLINED_FUNCTION_111();
        v114 = (*(v113 + 216))();
        OUTLINED_FUNCTION_58_0(v114, v115);
        OUTLINED_FUNCTION_14_52();
        *(v112 + 4) = v43;
        _os_log_impl(&dword_1E323F000, v110, v111, "%s No HLS end dates exist", v112, 0xCu);
        OUTLINED_FUNCTION_24_18();
        OUTLINED_FUNCTION_6_0();
      }

      OUTLINED_FUNCTION_71_20();
      v116(v129, v4);
    }

    v37 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_71_20();
    v109(v129, v4);
    v0 = v121;
  }

LABEL_11:
  v38 = (*(*v0 + 168))();
  if ((sub_1E389D688(v37, v38, v39) & 1) == 0)
  {
    (*(*v0 + 176))(v37);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B408A0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask))
  {

    v9 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (os_log_type_enabled(v9, v1))
    {
      OUTLINED_FUNCTION_6_21();
      v18[1] = OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v11 = (*(v10 + 216))();
      OUTLINED_FUNCTION_58_0(v11, v12);
      OUTLINED_FUNCTION_14_52();
      *(v2 + 4) = v3;
      _os_log_impl(&dword_1E323F000, v9, v1, "%s Starting playback date poll task", v2, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    v13 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    swift_weakInit();
    sub_1E4206434();
    OUTLINED_FUNCTION_31_4();

    v15 = sub_1E4206424();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;

    *(v4 + v8) = sub_1E37748D8(0, 0, v7, &unk_1E42BC8D0, v16);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B40A98()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v2 = sub_1E42075D4();
  v0[14] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[15] = v3;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v4 = sub_1E42075E4();
  v0[18] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[19] = v5;
  v0[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v0[21] = swift_task_alloc();
  sub_1E4206434();
  v0[22] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();
  v0[23] = v7;
  v0[24] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E3B40C14, v7, v6);
}

uint64_t sub_1E3B40C14()
{
  OUTLINED_FUNCTION_5_0(*(v0 + 104) + 16, v0 + 16);
  *(v0 + 200) = 1;
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (!Strong)
  {
    goto LABEL_4;
  }

  v3 = Strong;
  if (sub_1E4206504())
  {

    goto LABEL_4;
  }

  v6 = [*(v3 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) playbackDate];
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 168);

    sub_1E41FE584();

    v9 = sub_1E41FE5D4();
    OUTLINED_FUNCTION_75_0(v9);
    sub_1E325F6F0(v8, &unk_1ECF28E20, &unk_1E42986D0);

    v10 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (OUTLINED_FUNCTION_81_10())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v12 = *(v11 + 216);

      v12(v13);
      OUTLINED_FUNCTION_25_56();
      v14 = OUTLINED_FUNCTION_210();
      sub_1E3270FC8(v14, v15, v16);
      OUTLINED_FUNCTION_57_17();
      *(v1 + 4) = v3;
      OUTLINED_FUNCTION_15_87();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    *(v3 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 1;
    sub_1E3B41698();
    sub_1E3B3EFE8();
    sub_1E3B3FC4C();

    OUTLINED_FUNCTION_5_0(*(v0 + 104) + 16, v0 + 40);
    v22 = swift_weakLoadStrong();
    if (!v22)
    {
      goto LABEL_5;
    }

    *(v22 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask) = 0;

LABEL_4:

LABEL_5:

    v4 = *(v0 + 8);

    return v4();
  }

  v23 = *(v0 + 168);
  v24 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_74_13(v24);
  sub_1E325F6F0(v23, &unk_1ECF28E20, &unk_1E42986D0);

  v25 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_53_26();
  if (OUTLINED_FUNCTION_81_10())
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_11_16();
    OUTLINED_FUNCTION_4_125(4.8151e-34);
    v27 = *(v26 + 216);

    v27(v28);
    OUTLINED_FUNCTION_25_56();
    v29 = OUTLINED_FUNCTION_210();
    sub_1E3270FC8(v29, v30, v31);
    OUTLINED_FUNCTION_57_17();
    *(v1 + 4) = v3;
    *(v1 + 12) = 2048;
    *(v1 + 14) = 1;
    OUTLINED_FUNCTION_15_87();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_21_0();
  }

  sub_1E4207AA4();
  *(v0 + 88) = xmmword_1E42BC700;
  v37 = OUTLINED_FUNCTION_8_88();

  return MEMORY[0x1EEE6DFA0](v37, v38, v39);
}

uint64_t sub_1E3B40F9C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_1E3B443D8(&unk_1ECF2C4D0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_13_8();
  sub_1E4207A84();
  sub_1E3B443D8(&unk_1ECF2CCD0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1E42075F4();
  v5 = *(v2 + 8);
  v0[27] = v5;
  v0[28] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1E3B4111C;
  v8 = v0[17];
  v7 = v0[18];

  return MEMORY[0x1EEE6DE58](v8, v0 + 8, v7, v4);
}

uint64_t sub_1E3B4111C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[27];

    v4 = OUTLINED_FUNCTION_13_8();
    v3(v4);
    v5 = sub_1E3B41628;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = v2[19];
    v8 = v2[20];
    v10 = v2[18];
    (v2[27])(v2[17], v2[14]);
    (*(v9 + 8))(v8, v10);
    v6 = v2[23];
    v7 = v2[24];
    v5 = sub_1E3B4128C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3B4128C()
{
  v2 = *(v0 + 200);

  if (v2 == 5)
  {
LABEL_2:

    OUTLINED_FUNCTION_5_0(*(v0 + 104) + 16, v0 + 40);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_8:

      v7 = *(v0 + 8);

      return v7();
    }

    *(Strong + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask) = 0;

LABEL_7:

    goto LABEL_8;
  }

  v4 = *(v0 + 200) + 1;
  *(v0 + 200) = v4;
  v5 = swift_weakLoadStrong();
  *(v0 + 208) = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if (sub_1E4206504())
  {

    goto LABEL_7;
  }

  v9 = [*(v6 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) playbackDate];
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 168);

    sub_1E41FE584();

    v12 = sub_1E41FE5D4();
    OUTLINED_FUNCTION_75_0(v12);
    sub_1E325F6F0(v11, &unk_1ECF28E20, &unk_1E42986D0);

    v13 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (OUTLINED_FUNCTION_81_10())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v15 = *(v14 + 216);

      v15(v16);
      OUTLINED_FUNCTION_25_56();
      v17 = OUTLINED_FUNCTION_210();
      sub_1E3270FC8(v17, v18, v19);
      OUTLINED_FUNCTION_57_17();
      *(v1 + 4) = v6;
      OUTLINED_FUNCTION_15_87();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    *(v6 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 1;
    sub_1E3B41698();
    sub_1E3B3EFE8();
    sub_1E3B3FC4C();
    goto LABEL_2;
  }

  v25 = *(v0 + 168);
  v26 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_74_13(v26);
  sub_1E325F6F0(v25, &unk_1ECF28E20, &unk_1E42986D0);

  v27 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_53_26();
  if (OUTLINED_FUNCTION_81_10())
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_11_16();
    OUTLINED_FUNCTION_4_125(4.8151e-34);
    v29 = *(v28 + 216);

    v29(v30);
    OUTLINED_FUNCTION_25_56();
    v31 = OUTLINED_FUNCTION_210();
    sub_1E3270FC8(v31, v32, v33);
    OUTLINED_FUNCTION_57_17();
    *(v1 + 4) = v6;
    *(v1 + 12) = 2048;
    *(v1 + 14) = v4;
    OUTLINED_FUNCTION_15_87();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_21_0();
  }

  sub_1E4207AA4();
  *(v0 + 88) = v4 * 0xDE0B6B3A7640000uLL;
  v39 = OUTLINED_FUNCTION_8_88();

  return MEMORY[0x1EEE6DFA0](v39, v40, v41);
}

uint64_t sub_1E3B41628()
{
  OUTLINED_FUNCTION_24();
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[23];
  v2 = v0[24];

  return MEMORY[0x1EEE6DFA0](sub_1E3B44BD4, v1, v2);
}

void sub_1E3B41698()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1E4205ED4();
  [v1 doubleForKey_];
  v4 = v3;

  v5 = [v0 standardUserDefaults];
  v6 = sub_1E4205ED4();
  [v5 doubleForKey_];
  v8 = v7;

  if (v4 == 0.0 && v8 == 0.0)
  {

    sub_1E3B417EC();
  }

  else
  {

    sub_1E3B41EE8(v4, v8);
  }
}

void sub_1E3B417EC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v83 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v76 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v72 - v7;
  v8 = MEMORY[0x1E69E7CC0];
  v85 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates;
  *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) = MEMORY[0x1E69E7CC0];

  v81 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates;
  *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) = v8;

  if (![*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) currentMediaItem] || (ObjectType = swift_getObjectType(), v10 = *MEMORY[0x1E69D5B38], v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF339F0, &unk_1E42BC8B8), sub_1E4123588(ObjectType, v11), sub_1E4123590(v10, v11, &v86), swift_unknownObjectRelease(), !v86))
  {

    v65 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_83_6();
    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v66 = OUTLINED_FUNCTION_36_6();
      v86 = v66;
      *v1 = 136315138;
      OUTLINED_FUNCTION_111();
      v68 = (*(v67 + 216))();
      sub_1E3270FC8(v68, v69, &v86);
      OUTLINED_FUNCTION_50();

      *(v1 + 4) = v0;
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v70, v71, "%s Not parsing date range metadata because no date range metadata is available");
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    goto LABEL_54;
  }

  v86 = sub_1E3B441AC(v12);
  sub_1E3B42FC4(&v86);

  v13 = v86;
  v14 = sub_1E32AE9B0(v86);
  if (!v14)
  {
LABEL_53:

LABEL_54:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v16 = v14;
  if (v14 >= 1)
  {
    v17 = 0;
    v84 = v13 & 0xC000000000000001;
    v79 = 0x80000001E4272340;
    v80 = v83 + 32;
    v78 = 0x80000001E42723A0;
    v74 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_logger;
    v75 = 0x80000001E4272370;
    *&v15 = 136315138;
    v72 = v15;
    v19 = v76;
    v18 = v77;
    v82 = v13;
    v73 = v2;
    while (1)
    {
      if (v84)
      {
        v20 = OUTLINED_FUNCTION_45_1();
        v21 = MEMORY[0x1E6911E60](v20);
      }

      else
      {
        v21 = *(v13 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = sub_1E3B4413C(v22);
      if (v24)
      {
        LOBYTE(v10) = v24;
        if (v23 == 0xD000000000000021 && v24 == v79)
        {

LABEL_24:
          v31 = [v22 startDate];
          sub_1E41FE584();

          v32 = v85;
          v10 = *(v0 + v85);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v32) = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v57 = OUTLINED_FUNCTION_27();
            v10 = sub_1E3B42AD4(v57, v58, v59, v10);
            *(v0 + v85) = v10;
          }

          isa = v10[2].isa;
          v34 = v10[3].isa;
          if (isa >= v34 >> 1)
          {
            v60 = OUTLINED_FUNCTION_35(v34);
            v10 = sub_1E3B42AD4(v60, isa + 1, 1, v10);
          }

          v10[2].isa = (isa + 1);
          OUTLINED_FUNCTION_81();
          (*(v37 + 32))(v10 + v36 + *(v37 + 72) * isa, v18, v2);
          *(v0 + v85) = v10;

LABEL_42:
          v13 = v82;
          goto LABEL_43;
        }

        v26 = sub_1E42079A4();

        if (v26)
        {

          goto LABEL_24;
        }
      }

      v27 = v22;
      v28 = sub_1E3B4413C(v27);
      if (v29)
      {
        if (v28 == 0xD000000000000021 && v29 == v78)
        {

          goto LABEL_37;
        }

        sub_1E42079A4();
        OUTLINED_FUNCTION_112();

        if (v10)
        {

LABEL_37:
          v41 = [v27 startDate];
          sub_1E41FE584();

          v42 = v81;
          v43 = *(v0 + v81);
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v42) = v43;
          if ((v44 & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_27();
            v43 = sub_1E3B42AD4(v61, v62, v63, v43);
            *(v0 + v81) = v43;
          }

          v46 = *(v43 + 2);
          v45 = *(v43 + 3);
          v10 = (v46 + 1);
          if (v46 >= v45 >> 1)
          {
            v64 = OUTLINED_FUNCTION_35(v45);
            v43 = sub_1E3B42AD4(v64, v46 + 1, 1, v43);
          }

          *(v43 + 2) = v10;
          OUTLINED_FUNCTION_81();
          (*(v48 + 32))(&v43[v47 + *(v48 + 72) * v46], v19, v2);
          *(v0 + v81) = v43;

          goto LABEL_42;
        }
      }

      v38 = sub_1E3B4413C(v27);
      if (v39)
      {
        if (v38 == 0xD000000000000024 && v39 == v75)
        {

LABEL_47:

          v10 = sub_1E41FFC94();
          v49 = sub_1E4206814();

          if (os_log_type_enabled(v10, v49))
          {
            v50 = OUTLINED_FUNCTION_6_21();
            v51 = OUTLINED_FUNCTION_100();
            v86 = v51;
            *v50 = v72;
            OUTLINED_FUNCTION_111();
            v53 = (*(v52 + 216))();
            v55 = OUTLINED_FUNCTION_58_0(v53, v54);

            *(v50 + 4) = v55;
            v13 = v82;
            _os_log_impl(&dword_1E323F000, v10, v49, "%s removing all existing trigger dates as a cancel tag is encountered", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            v19 = v76;
            OUTLINED_FUNCTION_6_0();
            v2 = v73;
            OUTLINED_FUNCTION_6_0();
          }

          v18 = v77;
          v56 = MEMORY[0x1E69E7CC0];
          *(v0 + v85) = MEMORY[0x1E69E7CC0];

          *(v0 + v81) = v56;

          goto LABEL_43;
        }

        sub_1E42079A4();
        OUTLINED_FUNCTION_112();

        if (v10)
        {
          goto LABEL_47;
        }

        v18 = v77;
      }

      else
      {
      }

LABEL_43:
      if (v16 == ++v17)
      {
        goto LABEL_53;
      }
    }
  }

  __break(1u);

  __break(1u);
}

void sub_1E3B41EE8(double a1, double a2)
{
  v4 = v2;
  v7 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v87 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v79[-v13];
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79[-v22];
  v24 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates;
  v25 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) = MEMORY[0x1E69E7CC0];

  v88 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates;
  *(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) = v25;

  v26 = [*(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) playbackDate];
  if (v26)
  {
    v27 = v26;
    v86 = v17;
    sub_1E41FE584();

    v28 = v23;
    if (a1 != 0.0)
    {
      v29 = v9;
      v84 = v9;
      v85 = v28;
      v30 = *(v9 + 16);
      v30(v86);
      v31 = v7;
      v32 = v20;
      sub_1E41FE4E4();
      v82 = v30;
      v83 = v29 + 2;
      (v30)(v3, v20, v7);

      v33 = sub_1E41FFC94();
      v34 = sub_1E4206814();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_100();
        v81 = OUTLINED_FUNCTION_72_0();
        v90 = v81;
        *v35 = 136315650;
        OUTLINED_FUNCTION_111();
        v37 = *(v36 + 216);
        v80 = v34;
        v38 = v37();
        sub_1E3270FC8(v38, v39, &v90);
        OUTLINED_FUNCTION_33_12();
        *(v35 + 4) = "ractor";
        *(v35 + 12) = 2048;
        *(v35 + 14) = a1;
        *(v35 + 22) = 2080;
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(v40, v41, MEMORY[0x1E6969570]);
        sub_1E4207944();
        OUTLINED_FUNCTION_49_4();
        v42 = OUTLINED_FUNCTION_37_37();
        v43(v42);
        sub_1E3270FC8(v3, "ractor", &v90);
        OUTLINED_FUNCTION_31_4();

        *(v35 + 24) = v3;
        _os_log_impl(&dword_1E323F000, v33, v80, "%s Overriding event end time to %f seconds after playback start (%s)", v35, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        v44 = v84;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v44 = v84;
        v52 = OUTLINED_FUNCTION_37_37();
        v53(v52);
      }

      v7 = v31;
      sub_1E3B42A48();
      v54 = *(*(v4 + v24) + 16);
      sub_1E3B42A94(v54);
      v55 = *(v4 + v24);
      *(v55 + 16) = v54 + 1;
      OUTLINED_FUNCTION_81();
      (v82)(v55 + v56 + *(v44 + 72) * v54, v32, v31);
      *(v4 + v24) = v55;
      v3(v32, v31);
      v28 = v85;
      v9 = v44;
    }

    if (a2 == 0.0)
    {
      (*(v9 + 8))(v28, v7);
    }

    else
    {
      v57 = v9;
      v58 = *(v9 + 16);
      v59 = v86;
      v85 = v28;
      (v58)(v86);
      v60 = v89;
      sub_1E41FE4E4();
      v61 = v87;
      v58(v87, v60, v7);

      v62 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_87_0();

      if (os_log_type_enabled(v62, v59))
      {
        v63 = OUTLINED_FUNCTION_100();
        v86 = v58;
        v64 = v63;
        v84 = OUTLINED_FUNCTION_72_0();
        v90 = v84;
        *v64 = 136315650;
        OUTLINED_FUNCTION_111();
        v66 = *(v65 + 216);
        v83 = v62;
        v67 = v66();
        sub_1E3270FC8(v67, v68, &v90);
        OUTLINED_FUNCTION_33_12();
        *(v64 + 4) = v60;
        *(v64 + 12) = 2048;
        *(v64 + 14) = a2;
        *(v64 + 22) = 2080;
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(v69, v70, MEMORY[0x1E6969570]);
        sub_1E4207944();
        OUTLINED_FUNCTION_49_4();
        LODWORD(v82) = v59;
        v71 = OUTLINED_FUNCTION_27_41();
        v57(v71);
        sub_1E3270FC8(v61, v60, &v90);
        OUTLINED_FUNCTION_31_4();

        *(v64 + 24) = v61;
        v72 = v83;
        _os_log_impl(&dword_1E323F000, v83, v82, "%s Overriding broadcast end time to %f seconds after playback start (%s)", v64, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        v58 = v86;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v73 = OUTLINED_FUNCTION_27_41();
        v57(v73);
      }

      v74 = v88;
      sub_1E3B42A48();
      v75 = *(*(v4 + v74) + 16);
      sub_1E3B42A94(v75);
      v76 = *(v4 + v74);
      *(v76 + 16) = v75 + 1;
      OUTLINED_FUNCTION_81();
      v58(v76 + v77 + *(v7 + 72) * v75, v89, v59);
      *(v4 + v74) = v76;
      v78 = OUTLINED_FUNCTION_74();
      v57(v78);
      (v57)(v85, v59);
    }

    goto LABEL_18;
  }

  v89 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_87_0();

  if (os_log_type_enabled(v89, v17))
  {
    v45 = OUTLINED_FUNCTION_6_21();
    v46 = OUTLINED_FUNCTION_100();
    v90 = v46;
    *v45 = 136315138;
    OUTLINED_FUNCTION_111();
    v48 = (*(v47 + 216))();
    sub_1E3270FC8(v48, v49, &v90);
    OUTLINED_FUNCTION_50();

    *(v45 + 4) = v2;
    _os_log_impl(&dword_1E323F000, v89, v17, "%s Not parsing date range metadata from defaults because playback date is nil", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();

LABEL_18:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t type metadata accessor for PlayerLiveEventMonitor(uint64_t a1)
{
  result = qword_1EE29A410;
  if (!qword_1EE29A410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B42718(uint64_t a1)
{
  sub_1E38C734C(319, &qword_1EE28A000, &type metadata for PlayerLiveEventMonitor.PlayheadPosition, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1E41FFCB4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlayerLiveEventMonitor.PlayheadPosition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3B42920(uint64_t a1)
{
  sub_1E3B443D8(&qword_1ECF33A48, type metadata accessor for TVPMediaItemMetadataKey, &unk_1E42BC9F4);
  sub_1E3B443D8(&unk_1ECF33A50, type metadata accessor for TVPMediaItemMetadataKey, &unk_1E42BC99C);

  return sub_1E4207764();
}

uint64_t sub_1E3B429DC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E3280A90(0, &qword_1ECF339F8, 0x1E6987F80);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1E3B42A48()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3B42AD4(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3B42A94(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E3B42AD4((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_1E3B42AD4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E3B42CC0(v8, v7);
  v10 = *(sub_1E41FE5D4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3B42DBC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_1E3B42BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A080, qword_1E429EEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1E3B42CC0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339E0, &unk_1E42BC8A8);
  v4 = *(sub_1E41FE5D4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

uint64_t sub_1E3B42DBC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E41FE5D4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E41FE5D4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3B42E90(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E4205F14();
  v4 = v3;
  if (v2 == sub_1E4205F14() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E42079A4();
  }

  return v7 & 1;
}

BOOL sub_1E3B42F1C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_1E3B42FC4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3B43040(v6);
  return sub_1E4207554();
}

void sub_1E3B43040(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E3B429DC(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E3B4338C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1E3B43120(0, v3, 1, a1);
  }
}

void sub_1E3B43120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v28 - v11;
  v29 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v33 = (v10 + 8);
    v37 = v12;
    v13 = v12 + 8 * a3 - 8;
    v14 = a1 - a3;
    while (2)
    {
      v31 = v13;
      v32 = a3;
      v15 = *(v37 + 8 * a3);
      v30 = v14;
      v16 = v13;
      do
      {
        v17 = *v16;
        v18 = v15;
        v38 = v18;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v35;
        sub_1E41FE584();

        v22 = [v19 startDate];
        v23 = v36;
        sub_1E41FE584();

        sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v24 = v34;
        LOBYTE(v22) = sub_1E4205E14();
        v25 = *v33;
        (*v33)(v23, v24);
        v25(v21, v24);

        if (v22)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v26 = *v16;
        v15 = *(v16 + 8);
        *v16 = v15;
        *(v16 + 8) = v26;
        v16 -= 8;
      }

      while (!__CFADD__(v14++, 1));
      a3 = v32 + 1;
      v13 = v31 + 8;
      v14 = v30 - 1;
      if (v32 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E3B4338C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v118 = a1;
  v127 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v114 - v10;
  v122 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v130 = *v118;
    if (!v130)
    {
      goto LABEL_133;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v123;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_94:
      v107 = v13 + 16;
      v108 = *(v13 + 2);
      while (v108 >= 2)
      {
        if (!*v122)
        {
          goto LABEL_130;
        }

        v109 = v13;
        v110 = &v13[16 * v108];
        v111 = *v110;
        v13 = &v107[2 * v108];
        v112 = *(v13 + 1);
        sub_1E3B43CA4((*v122 + 8 * *v110), (*v122 + 8 * *v13), (*v122 + 8 * v112), v130);
        if (v4)
        {
          break;
        }

        if (v112 < v111)
        {
          goto LABEL_118;
        }

        if (v108 - 2 >= *v107)
        {
          goto LABEL_119;
        }

        *v110 = v111;
        *(v110 + 1) = v112;
        v113 = *v107 - v108;
        if (*v107 < v108)
        {
          goto LABEL_120;
        }

        v108 = *v107 - 1;
        memmove(v13, v13 + 16, 16 * v113);
        *v107 = v108;
        v13 = v109;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v13 = sub_1E37FFF5C(v13);
    goto LABEL_94;
  }

  v115 = a4;
  v12 = 0;
  v126 = (v9 + 8);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v12++;
    if (v12 < v11)
    {
      v116 = v13;
      v15 = *(*v122 + 8 * v12);
      v16 = v14;
      v17 = (*v122 + 8 * v14);
      v119 = (8 * v14);
      v19 = *v17;
      v18 = v17 + 2;
      v20 = v15;
      v130 = v20;
      v21 = v19;
      v124 = v21;
      v22 = [v20 startDate];
      v23 = v128;
      sub_1E41FE584();

      v24 = [v21 startDate];
      v25 = v129;
      sub_1E41FE584();

      v26 = sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v4 = v127;
      v121 = v26;
      LODWORD(v125) = sub_1E4205E14();
      v13 = v126;
      v27 = *v126;
      (*v126)(v25, v4);
      v120 = v27;
      (v27)(v23, v4);

      v117 = v16;
      v28 = (v16 + 2);
      while (1)
      {
        v29 = v28;
        v30 = (v12 + 1);
        if (v30 >= v11)
        {
          break;
        }

        v32 = *(v18 - 1);
        v31 = *v18;
        v130 = v29;
        v13 = v31;
        v33 = v32;
        v34 = [v13 startDate];
        v124 = v30;
        v35 = v128;
        sub_1E41FE584();

        v36 = [v33 startDate];
        v37 = v11;
        v38 = v129;
        sub_1E41FE584();

        v4 = v127;
        LODWORD(v36) = sub_1E4205E14() & 1;
        v39 = v120;
        (v120)(v38, v4);
        v40 = v35;
        v12 = v124;
        v39(v40, v4);
        v11 = v37;

        v29 = v130;
        ++v18;
        v28 = (v130 + 1);
        if ((v125 & 1) != v36)
        {
          goto LABEL_9;
        }
      }

      v12 = v11;
LABEL_9:
      if (v125)
      {
        v13 = v116;
        v14 = v117;
      }

      else
      {
        v14 = v117;
        if (v12 < v117)
        {
          goto LABEL_124;
        }

        if (v117 >= v12)
        {
          v13 = v116;
        }

        else
        {
          if (v11 >= v29)
          {
            v41 = v29;
          }

          else
          {
            v41 = v11;
          }

          v42 = 8 * v41 - 8;
          v43 = v12;
          v44 = v117;
          v13 = v116;
          v45 = v119;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v122;
              if (!*v122)
              {
                goto LABEL_131;
              }

              v47 = *&v45[v46];
              *&v45[v46] = *(v46 + v42);
              *(v46 + v42) = v47;
            }

            ++v44;
            v42 -= 8;
            v45 += 8;
          }

          while (v44 < v43);
        }
      }
    }

    v48 = v122[1];
    if (v12 < v48)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_123;
      }

      if (v12 - v14 < v115)
      {
        break;
      }
    }

LABEL_39:
    if (v12 < v14)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1E37FFF70(0, *(v13 + 2) + 1, 1, v13);
    }

    v64 = *(v13 + 2);
    v63 = *(v13 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v13 = sub_1E37FFF70((v63 > 1), v64 + 1, 1, v13);
    }

    *(v13 + 2) = v65;
    v66 = v13 + 32;
    v67 = &v13[16 * v64 + 32];
    *v67 = v14;
    *(v67 + 1) = v12;
    v130 = *v118;
    if (!v130)
    {
      goto LABEL_132;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = &v66[16 * v65 - 16];
        v70 = &v13[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v13 + 4);
          v72 = *(v13 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_59:
          if (v74)
          {
            goto LABEL_109;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_112;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_117;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v65 < 2)
        {
          goto LABEL_111;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_74:
        if (v89)
        {
          goto LABEL_114;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_116;
        }

        if (v96 < v88)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_126;
        }

        if (!*v122)
        {
          goto LABEL_129;
        }

        v100 = v13;
        v101 = &v66[16 * v68 - 16];
        v102 = *v101;
        v4 = v66;
        v13 = &v66[16 * v68];
        v103 = *(v13 + 1);
        v104 = v123;
        sub_1E3B43CA4((*v122 + 8 * *v101), (*v122 + 8 * *v13), (*v122 + 8 * v103), v130);
        v123 = v104;
        if (v104)
        {
          goto LABEL_102;
        }

        if (v103 < v102)
        {
          goto LABEL_104;
        }

        v105 = *(v100 + 2);
        if (v68 > v105)
        {
          goto LABEL_105;
        }

        *v101 = v102;
        *(v101 + 1) = v103;
        if (v68 >= v105)
        {
          goto LABEL_106;
        }

        v65 = v105 - 1;
        memmove(v13, v13 + 16, 16 * (v105 - 1 - v68));
        v13 = v100;
        *(v100 + 2) = v105 - 1;
        v66 = v4;
        if (v105 <= 2)
        {
          goto LABEL_88;
        }
      }

      v75 = &v66[16 * v65];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_107;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_108;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_110;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_113;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_121;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v11 = v122[1];
    if (v12 >= v11)
    {
      goto LABEL_92;
    }
  }

  v49 = (v14 + v115);
  if (__OFADD__(v14, v115))
  {
    goto LABEL_125;
  }

  if (v49 >= v48)
  {
    v49 = v122[1];
  }

  if (v49 < v14)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v12 == v49)
  {
    goto LABEL_39;
  }

  v116 = v13;
  v117 = v14;
  v125 = *v122;
  v50 = v125 + 8 * v12 - 8;
  v51 = (v14 - v12);
  v119 = v49;
LABEL_32:
  v124 = v12;
  v52 = *(v125 + 8 * v12);
  v120 = v51;
  v121 = v50;
  while (1)
  {
    v53 = *v50;
    v54 = v52;
    v130 = v54;
    v55 = v53;
    v56 = [v54 startDate];
    v57 = v128;
    sub_1E41FE584();

    v58 = [v55 startDate];
    v59 = v129;
    sub_1E41FE584();

    sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v4 = v127;
    LOBYTE(v58) = sub_1E4205E14();
    v60 = *v126;
    (*v126)(v59, v4);
    (v60)(v57, v4);

    if (v58)
    {
LABEL_37:
      v12 = (v124 + 1);
      v50 = v121 + 8;
      v51 = v120 - 1;
      if (v124 + 1 == v119)
      {
        v12 = v119;
        v13 = v116;
        v14 = v117;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v125)
    {
      break;
    }

    v61 = *v50;
    v52 = *(v50 + 8);
    *v50 = v52;
    *(v50 + 8) = v61;
    v50 -= 8;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1E3B43CA4(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1E41FE5D4();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v49 - v11;
  v12 = a2 - a1;
  v13 = a3 - a2;
  if (v12 < v13)
  {
    v14 = a4 == a1 && &a1[v12] > a4;
    v15 = a4;
    if (!v14)
    {
      memmove(a4, a1, 8 * v12);
    }

    v16 = &a4[v12];
    v52 = (v8 + 8);
    v53 = v16;
    for (i = a3; ; a3 = i)
    {
      if (v15 >= v16 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_38;
      }

      v59 = a1;
      v18 = *v15;
      v19 = *a2;
      v55 = v19;
      v20 = v18;
      v21 = [v19 startDate];
      v22 = v57;
      sub_1E41FE584();

      v23 = [v20 startDate];
      v24 = v58;
      sub_1E41FE584();

      sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v25 = a2;
      v26 = v56;
      LOBYTE(v23) = sub_1E4205E14();
      v27 = *v52;
      (*v52)(v24, v26);
      v27(v22, v26);

      if ((v23 & 1) == 0)
      {
        break;
      }

      v28 = v15;
      v29 = v59;
      v30 = v59 == v15++;
      a2 = v25;
      if (!v30)
      {
        goto LABEL_17;
      }

LABEL_18:
      a1 = v29 + 1;
      v16 = v53;
    }

    v28 = v25;
    a2 = v25 + 1;
    v29 = v59;
    if (v59 == v25)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v29 = *v28;
    goto LABEL_18;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    memmove(a4, a2, 8 * v13);
  }

  v16 = &a4[v13];
  v50 = (v8 + 8);
  v51 = a4;
  v15 = a4;
  v59 = a1;
LABEL_25:
  v32 = a2 - 1;
  v33 = a3 - 1;
  v52 = a2 - 1;
  v53 = a2;
  while (v16 > v15 && a2 > a1)
  {
    v35 = v33;
    v36 = *v32;
    v37 = *(v16 - 1);
    v55 = v37;
    v38 = v36;
    i = v38;
    v39 = [v37 startDate];
    v40 = v57;
    sub_1E41FE584();

    v41 = [v38 startDate];
    v42 = v58;
    sub_1E41FE584();

    sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v43 = v56;
    LOBYTE(v41) = sub_1E4205E14();
    v44 = *v50;
    (*v50)(v42, v43);
    v44(v40, v43);

    if ((v41 & 1) == 0)
    {
      a3 = v35;
      v45 = v52;
      a2 = v52;
      v15 = v51;
      a1 = v59;
      if (v35 + 1 != v53)
      {
        *v35 = *v52;
        a2 = v45;
      }

      goto LABEL_25;
    }

    if (v16 != v35 + 1)
    {
      *v35 = *(v16 - 1);
    }

    v33 = v35 - 1;
    --v16;
    v15 = v51;
    v32 = v52;
    a2 = v53;
    a1 = v59;
  }

LABEL_38:
  v46 = v16 - v15;
  if (a2 != v15 || a2 >= &v15[v46])
  {
    memmove(a2, v15, 8 * v46);
  }

  return 1;
}

uint64_t sub_1E3B4413C(void *a1)
{
  v2 = [a1 classifyingLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void *sub_1E3B441AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3B44240((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3B44240(uint64_t result, uint64_t a2, unint64_t a3)
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
        sub_1E3280A90(0, &qword_1ECF339F8, 0x1E6987F80);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&unk_1ECF33A00, &qword_1ECF339F0, &unk_1E42BC8B8, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF339F0, &unk_1E42BC8B8);
          v9 = sub_1E374111C(v12, i, a3);
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

uint64_t sub_1E3B443D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3B44420()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3B444B0;

  return sub_1E3B40A98();
}

uint64_t sub_1E3B444B0()
{
  OUTLINED_FUNCTION_24();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1E3B445B8(uint64_t a1, const char *a2, ...)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    v8 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (os_log_type_enabled(v8, v2))
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v10 = *(v9 + 216);

      v10(v11);
      OUTLINED_FUNCTION_25_56();
      v12 = OUTLINED_FUNCTION_210();
      sub_1E3270FC8(v12, v13, v14);
      OUTLINED_FUNCTION_57_17();
      *(v3 + 4) = v7;
      _os_log_impl(&dword_1E323F000, v8, v2, a2, v3, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E3B3FC4C();
  }

  return result;
}

double sub_1E3B446DC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver))
    {

      sub_1E42004E4();
    }

    *(v3 + v4) = 0;

    sub_1E3B408A0();
  }

  return result;
}

double sub_1E3B44764(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_83_6();
    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_36_6();
      v26[0] = v6;
      *v1 = 136315138;
      OUTLINED_FUNCTION_111();
      v8 = *(v7 + 216);

      v10 = v8(v9);
      v12 = v11;

      v13 = sub_1E3270FC8(v10, v12, v26);

      *(v1 + 4) = v13;
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v14, v15, "%s Current media item did change");
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    *(v4 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 0;
    v16 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask;
    if (*(v4 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      sub_1E42064D4();
    }

    *(v4 + v16) = 0;

    v17 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
    if (*(v4 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver))
    {

      sub_1E42004E4();
    }

    *(v4 + v17) = 0;

    sub_1E3B41698();
    sub_1E3B3FC4C();
    sub_1E3B3E4D4(v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3]);
  }

  return result;
}

double sub_1E3B44940(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_weakLoadStrong())
  {
    sub_1E3B3FC4C();
  }

  return result;
}

double sub_1E3B4498C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_weakLoadStrong())
  {

    v3 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_83_6();
    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v4 = OUTLINED_FUNCTION_36_6();
      v14[0] = v4;
      *v1 = 136315138;
      OUTLINED_FUNCTION_111();
      v6 = *(v5 + 216);

      v8 = v6(v7);
      v10 = v9;

      v11 = sub_1E3270FC8(v8, v10, v14);

      *(v1 + 4) = v11;
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v12, v13, "%s Received date range metadata groups");
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    sub_1E3B41698();
    sub_1E3B3EFE8();
    sub_1E3B3FC4C();
  }

  return result;
}

double OUTLINED_FUNCTION_53_26()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_57_17()
{
}

BOOL OUTLINED_FUNCTION_58_20()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_74_13(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_77_12()
{
  v4 = *(v2 - 304);

  return sub_1E37F9910(v0, v1, v4);
}

double OUTLINED_FUNCTION_83_6()
{

  return result;
}

void *sub_1E3B44C90(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, void *a4, __objc2_class **a5)
{
  v9 = (*a4 + 1584);
  v10 = *v9;
  v11 = (*v9)();
  if (sub_1E389CC78(v11, 2, v12))
  {
    goto LABEL_2;
  }

  v15 = v10();
  if ((sub_1E389CC78(v15, 1, v16) & 1) == 0)
  {
LABEL_9:
    v34 = a1;
    v27 = *a3;
    if (*a3 == 2)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v33[1] = 0;
      v33[2] = 0;
    }

    else
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = *(a3 + 1);
      *(v28 + 40) = *(a3 + 3);
      *(v28 + 55) = *(a3 + 39);
      v30 = &off_1F5D621F8;
      v29 = &type metadata for CollectionViewCellContext;
    }

    v33[0] = v28;
    v33[3] = v29;
    v33[4] = v30;
    type metadata accessor for UIFactory();
    v31 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    sub_1E38E5240(a2, &v34, v33, 0, 0, v31, &v35);
    sub_1E325F748(v33, &qword_1ECF296C0, &unk_1E429BBE0);
    return v35;
  }

  v21 = a2[49];
  if ((sub_1E373F6E0(v21, 216, v17, v18, v19, v20) & 1) == 0 && (sub_1E373F6E0(v21, 215, v22, v23, v24, v25) & 1) == 0)
  {
LABEL_2:
    if (TVAppFeature.isEnabled.getter(10, v13, v14))
    {
      goto LABEL_9;
    }
  }

  if (a1)
  {
    type metadata accessor for SearchListCell();
    v26 = swift_dynamicCastClass();
  }

  else
  {
    v26 = 0;
  }

  sub_1E3B44E70(a2, v26, a5);
  return v26;
}

void *sub_1E3B44E70(__int16 *a1, void *a2, __objc2_class **a3)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v217 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v212 = v17 - v16;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D250, &unk_1E42BCAA0);
  MEMORY[0x1EEE9AC00](v219);
  v220 = &v210 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v210 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  v222 = &v210 - v26;
  if (!a2)
  {
    v201 = sub_1E324FBDC();
    (*(v8 + 16))(v12, v201, v6);

    v202 = v12;
    v203 = sub_1E41FFC94();
    v204 = sub_1E4206814();

    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      __src[0] = v206;
      *v205 = 136315138;
      sub_1E384EE08(a1[49]);
      v209 = sub_1E3270FC8(v207, v208, __src);

      *(v205 + 4) = v209;
      _os_log_impl(&dword_1E323F000, v203, v204, "SearchListCell: Failed to get correct cell for [%s]", v205, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v206);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v8 + 8))(v202, v6);
    OUTLINED_FUNCTION_15_88();
    v210 = 102;
    OUTLINED_FUNCTION_6_102();
    goto LABEL_72;
  }

  v27 = *(*a1 + 488);
  v28 = a2;
  v29 = v27();
  if (!v29)
  {
LABEL_12:

    v69 = v28;
    return a2;
  }

  if (!*(v29 + 16))
  {

    goto LABEL_12;
  }

  v223 = v29;
  if (a3 && *a3 == _TtC8VideosUI26LegacySearchListCellLayout)
  {
    v210 = a1;
    v214 = v22;
    OUTLINED_FUNCTION_9_87();
    v31 = *(v30 + 184);
    v32 = swift_retain_n();
    v31(v32);
    v211 = objc_opt_self();
    v33 = [v211 isSearchEnabled];
    v224 = a2;
    if (v33)
    {
      type metadata accessor for UIFactory();
      v35 = sub_1E373E010(16, v223, v34);
      OUTLINED_FUNCTION_13_92();
      v37 = (*(v36 + 200))();
      OUTLINED_FUNCTION_3_124();
      v38 = sub_1E37BD068();
      v39 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      sub_1E393D92C(v35, v37, __src, v38, v39);

      sub_1E325F748(__src, &qword_1ECF296C0, &unk_1E429BBE0);
      OUTLINED_FUNCTION_9_87();
      v40 = OUTLINED_FUNCTION_4_126();
      v41(v40);
    }

    v42 = type metadata accessor for UIFactory();
    v43 = v223;
    v45 = sub_1E373E010(23, v223, v44);
    OUTLINED_FUNCTION_9_87();
    v47 = (*(v46 + 224))();
    OUTLINED_FUNCTION_3_124();
    v48 = sub_1E374EA2C();
    v49 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    sub_1E393D92C(v45, v47, __src, v48, v49);

    sub_1E325F748(__src, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_13_92();
    v50 = OUTLINED_FUNCTION_4_126();
    v51(v50);
    v53 = sub_1E373E010(15, v43, v52);
    OUTLINED_FUNCTION_13_92();
    v55 = (*(v54 + 248))();
    OUTLINED_FUNCTION_3_124();
    v221 = a3;
    v56 = sub_1E374EA94();
    v213 = v42;
    sub_1E393D92C(v53, v55, __src, v56, v49);

    v57 = MEMORY[0x1E69E7D40];
    sub_1E325F748(__src, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_7_119();
    v58 = OUTLINED_FUNCTION_4_126();
    v59(v58);
    OUTLINED_FUNCTION_7_119();
    v61 = (*((*v57 & v60) + 0x110))();
    if (v61)
    {
      v62 = v61;
      v63 = [v61 latestImageURL];

      v64 = v220;
      v65 = v218;
      if (v63)
      {
        v66 = v216;
        sub_1E41FE3C4();

        v67 = 0;
        v68 = v214;
      }

      else
      {
        v67 = 1;
        v68 = v214;
        v66 = v216;
      }

      __swift_storeEnumTagSinglePayload(v66, v67, 1, v13);
      sub_1E327D738(v66, v65);
      if (OUTLINED_FUNCTION_18_59(v65) != 1)
      {
        sub_1E41FE3A4();
        (*(v217 + 8))(v65, v13);
        v70 = 0;
LABEL_18:
        v71 = v222;
        __swift_storeEnumTagSinglePayload(v222, v70, 1, v13);
        sub_1E3B46A74(v223, v68);
        v72 = *(v219 + 48);
        sub_1E38B2468(v68, v64);
        sub_1E38B2468(v71, v64 + v72);
        if (OUTLINED_FUNCTION_18_59(v64) == 1)
        {
          if (OUTLINED_FUNCTION_18_59(v64 + v72) == 1)
          {
            sub_1E325F748(v64, &unk_1ECF363C0, &unk_1E42A9420);
            v73 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          v74 = v215;
          sub_1E38B2468(v64, v215);
          if (OUTLINED_FUNCTION_18_59(v64 + v72) != 1)
          {
            v75 = v217;
            v76 = v212;
            (*(v217 + 32))(v212, v64 + v72, v13);
            sub_1E3B46C90();
            v77 = sub_1E4205E84();
            v78 = *(v75 + 8);
            v78(v76, v13);
            v78(v74, v13);
            sub_1E325F748(v64, &unk_1ECF363C0, &unk_1E42A9420);
            v73 = v77 ^ 1;
LABEL_25:
            v79 = v73 & 1;
            v80 = j__OUTLINED_FUNCTION_18();
            v81 = j__OUTLINED_FUNCTION_18();
            sub_1E3DF9EB0(0, 0, 1, 0, 0, 1, v80 & 1, 0, __src, 0, 1, 2, 1, 0, v81 & 1, v79);
            sub_1E373E010(39, v223, v82);
            OUTLINED_FUNCTION_7_119();
            v84 = *((*v57 & v83) + 0x110);
            v85 = v84();
            *(&v226 + 1) = &unk_1F5D869A0;
            v227 = &off_1F5D868A0;
            *&v225 = swift_allocObject();
            memcpy((v225 + 16), __src, 0x52uLL);
            sub_1E38A86A4();
            sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
            v86 = OUTLINED_FUNCTION_2_119();
            v220 = v87;
            sub_1E393D92C(v86, v88, v89, v90, v87);

            sub_1E325F748(&v225, &qword_1ECF296C0, &unk_1E429BBE0);
            v91 = OUTLINED_FUNCTION_4_126();
            v92(v91);
            v93 = *sub_1E38A86A4();
            (*(v93 + 552))(v229);
            v94 = *v229;
            v95 = *&v229[1];
            v96 = *&v229[2];
            v97 = *&v229[3];

            v99 = 0.0;
            if ((v230 & 1) == 0)
            {
              v99 = sub_1E3952BE8(v94, v95, v96, v97);
            }

            v100 = (v84)(v98);
            if (v100)
            {
              v102 = v100;
              v103 = [v100 vuiLayer];

              [v103 setCornerRadius_];
            }

            v104 = v223;
            sub_1E373E010(41, v223, v101);
            a2 = v224;
            OUTLINED_FUNCTION_7_119();
            v105 = MEMORY[0x1E69E7D40];
            v107 = (*((*MEMORY[0x1E69E7D40] & v106) + 0x128))();
            v108.n128_f64[0] = OUTLINED_FUNCTION_4_3();
            sub_1E3AFF5D8(v108);
            sub_1E3280A90(0, &unk_1EE23B2D0, off_1E87284C0);
            v109 = OUTLINED_FUNCTION_14_98();
            v110 = v213;
            sub_1E393D92C(v109, v111, v112, v113, v114);

            sub_1E325F748(&v225, &qword_1ECF296C0, &unk_1E429BBE0);
            OUTLINED_FUNCTION_7_119();
            v115 = OUTLINED_FUNCTION_4_126();
            v116(v115);
            v118 = sub_1E373E010(155, v104, v117);
            if (v118)
            {
              v119 = v118;
              (*(*v118 + 488))();
              OUTLINED_FUNCTION_17_75();

              v107 = sub_1E373E010(53, v119, v120);

              if (v107)
              {

                OUTLINED_FUNCTION_1_144();
                v123 = *(v122 + 392);

                v125 = v123(v124);
                OUTLINED_FUNCTION_4_3();
                v126 = sub_1E3AFF75C();
LABEL_34:
                v130 = v126;
                v131 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
                sub_1E393D92C(v107, v125, &v225, v130, v131);
                OUTLINED_FUNCTION_17_75();

                sub_1E325F748(&v225, &qword_1ECF296C0, &unk_1E429BBE0);
                OUTLINED_FUNCTION_7_119();
                v132 = OUTLINED_FUNCTION_4_126();
                v133(v132);

LABEL_36:
                sub_1E3AFF6D0();
                OUTLINED_FUNCTION_11_87();
                v137 = v136;
                (*(v135 + 936))();
                OUTLINED_FUNCTION_12_81();
                if ((v107 == 2 || (v137 & 1) == 0) && (v139 = sub_1E373E010(67, v104, v138)) != 0)
                {
                  LODWORD(v107) = v139;
                  OUTLINED_FUNCTION_1_144();
                  v141 = *(v140 + 344);

                  v143 = v141(v142);
                  if (v143)
                  {
                    v144 = v143;
                    type metadata accessor for ContextMenuButton();
                    v145 = swift_dynamicCastClass();
                    if (!v145)
                    {
                    }
                  }

                  else
                  {
                    v145 = 0;
                  }

                  OUTLINED_FUNCTION_4_3();
                  sub_1E3AFF6D0();
                  type metadata accessor for ContextMenuButton();
                  v166 = OUTLINED_FUNCTION_2_119();
                  sub_1E393D92C(v166, v167, v168, v169, v170);
                  OUTLINED_FUNCTION_17_75();

                  sub_1E325F748(&v225, &qword_1ECF296C0, &unk_1E429BBE0);
                  if (v110)
                  {
                    v171 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel;
                    swift_beginAccess();
                    *&v110[v171] = v210;
                    v172 = v110;
                  }

                  OUTLINED_FUNCTION_1_144();
                  v174 = *(v173 + 352);
                  v175 = v110;
                  v176 = OUTLINED_FUNCTION_4_126();
                  v174(v176);
                }

                else
                {
                  sub_1E3AFF644();
                  OUTLINED_FUNCTION_11_87();
                  v148 = v147;
                  (*(v146 + 936))();
                  OUTLINED_FUNCTION_12_81();
                  if ((v107 == 2 || (v148 & 1) == 0) && (v150 = sub_1E373E010(59, v104, v149)) != 0)
                  {
                    LODWORD(v107) = v150;
                    OUTLINED_FUNCTION_1_144();
                    v151 += 43;
                    v152 = *v151;
                    v153 = (*v151)();
                    if (!v153 || (v154 = v153, type metadata accessor for ContextMenuButton(), v155 = swift_dynamicCastClass(), v154, v156 = 0, !v155))
                    {
                      v156 = v152();
                    }

                    OUTLINED_FUNCTION_4_3();

                    sub_1E3AFF644();
                    sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);
                    v157 = OUTLINED_FUNCTION_2_119();
                    sub_1E393D92C(v157, v158, v159, v160, v161);
                    OUTLINED_FUNCTION_17_75();

                    sub_1E325F748(&v225, &qword_1ECF296C0, &unk_1E429BBE0);
                    if (v110)
                    {
                      [v110 setUsesSymbolPointerInteraction_];
                    }

                    OUTLINED_FUNCTION_13_92();
                    a2 = *(v162 - 256);
                    v163 = OUTLINED_FUNCTION_4_126();
                    v164(v163);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_1_144();
                    (*(v165 + 352))(0);
                  }
                }

                sub_1E38A8794();
                OUTLINED_FUNCTION_11_87();
                v179 = v178;
                (*(v177 + 936))();
                OUTLINED_FUNCTION_12_81();
                if (v107 == 2 || (v179 & 1) == 0)
                {
                  sub_1E373E010(31, v104, v180);
                  OUTLINED_FUNCTION_7_119();
                  v182 = (*((*v105 & v181) + 0x140))();
                  OUTLINED_FUNCTION_4_3();
                  sub_1E38A8794();
                  v183 = OUTLINED_FUNCTION_14_98();
                  sub_1E393D92C(v183, v184, v185, v186, v220);

                  sub_1E325F748(&v225, &qword_1ECF296C0, &unk_1E429BBE0);
                }

                OUTLINED_FUNCTION_1_144();
                v187 = OUTLINED_FUNCTION_4_126();
                v188(v187);
                if ([v211 isSearchEnabled])
                {
                  v190 = sub_1E373E010(79, v104, v189);

                  if (v190 && (v192 = (*(*v190 + 488))(v191), , v192))
                  {
                    v194 = sub_1E373E010(9, v192, v193);
                  }

                  else
                  {
                    v194 = 0;
                  }

                  OUTLINED_FUNCTION_1_144();
                  v196 = (*(v195 + 368))();
                  v197 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
                  v225 = 0u;
                  v226 = 0u;
                  v227 = 0;
                  sub_1E393D92C(v194, v196, &v225, 0, v197);

                  sub_1E325F748(&v225, &qword_1ECF296C0, &unk_1E429BBE0);
                  OUTLINED_FUNCTION_7_119();
                  v198 = OUTLINED_FUNCTION_4_126();
                  v199(v198);
                }

                else
                {
                }

                sub_1E325F748(v214, &unk_1ECF363C0, &unk_1E42A9420);
                sub_1E325F748(v222, &unk_1ECF363C0, &unk_1E42A9420);
                return a2;
              }

              v107 = sub_1E373E010(54, v119, v121);

              if (v107)
              {
                OUTLINED_FUNCTION_1_144();
                v128 = *(v127 + 392);

                v125 = v128(v129);
                OUTLINED_FUNCTION_4_3();
                v126 = sub_1E3AFF8D0();
                goto LABEL_34;
              }
            }

            OUTLINED_FUNCTION_1_144();
            (*(v134 + 400))(0);
            goto LABEL_36;
          }

          (*(v217 + 8))(v74, v13);
        }

        sub_1E325F748(v64, &qword_1ECF2D250, &unk_1E42BCAA0);
        v73 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v65 = v218;
      __swift_storeEnumTagSinglePayload(v218, 1, 1, v13);
      v68 = v214;
      v64 = v220;
    }

    sub_1E325F748(v65, &unk_1ECF363C0, &unk_1E42A9420);
    v70 = 1;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_15_88();
  v210 = 111;
  OUTLINED_FUNCTION_6_102();
LABEL_72:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void *sub_1E3B46574(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (!a2)
  {
    v25 = sub_1E324FBDC();
    v34 = v6;
    (*(v6 + 16))(v10, v25, v4);

    v26 = v10;
    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v29 = 136315138;
      sub_1E384EE08(a1[49]);
      v33 = sub_1E3270FC8(v31, v32, v37);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1E323F000, v27, v28, "HintListCell: Failed to get correct cell for [%s]", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v34 + 8))(v26, v4);
    OUTLINED_FUNCTION_15_88();
    OUTLINED_FUNCTION_6_102();
    goto LABEL_24;
  }

  v11 = *(*a1 + 488);
  v12 = a2;
  v13 = v11();
  if (!v13)
  {
LABEL_13:

    v23 = v12;
    return a2;
  }

  v14 = v13;
  if (!*(v13 + 16))
  {

    goto LABEL_13;
  }

  if ((*(*a1 + 392))())
  {
    type metadata accessor for HintListCellLayout();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x1E69E7D40];
      v18 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x80);

      v18(v16);
      v20 = sub_1E373E010(17, v14, v19);

      if (v20)
      {
        if (*v20 == _TtC8VideosUI13TextViewModel && (v22 = (*(*a1 + 552))(v21)) != 0)
        {
          v37[3] = &unk_1F5D7BEF8;
          v37[4] = &off_1F5D7BC58;
          LOBYTE(v37[0]) = 3;
          sub_1E3F9F164(v37, v22, MEMORY[0x1E69E7CA0] + 8);

          if (!v39)
          {

            __swift_destroy_boxed_opaque_existential_1(v37);
            sub_1E325F748(v38, &unk_1ECF296E0, &unk_1E4298030);
            return a2;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_destroy_boxed_opaque_existential_1(v37);
            return a2;
          }

          __swift_destroy_boxed_opaque_existential_1(v37);
          (*((*v17 & *v12) + 0xF0))(v35, v36, v20);
        }

        else
        {
        }
      }

      return a2;
    }
  }

  OUTLINED_FUNCTION_15_88();
  OUTLINED_FUNCTION_6_102();
LABEL_24:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E3B46A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - v7;
  if (*(a1 + 16) && (sub_1E3740AE8(39, v5, v6), (v9 & 1) != 0) && (type metadata accessor for ImageViewModel(), (v10 = swift_dynamicCastClass()) != 0) && (v11 = *(*v10 + 1016), , v11(7), v13 = v12, , v13))
  {
    sub_1E41FE404();

    v14 = sub_1E41FE414();
    if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
    {
      sub_1E325F748(v8, &unk_1ECF363C0, &unk_1E42A9420);
      v15 = a2;
      v16 = 1;
    }

    else
    {
      sub_1E41FE3A4();
      (*(*(v14 - 8) + 8))(v8, v14);
      v15 = a2;
      v16 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
  }

  else
  {
    v17 = sub_1E41FE414();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v17);
  }
}

unint64_t sub_1E3B46C90()
{
  result = qword_1ECF2D258;
  if (!qword_1ECF2D258)
  {
    sub_1E41FE414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D258);
  }

  return result;
}

double sub_1E3B46CE8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  type metadata accessor for LibMediaEntityTypeFactory();
  v7 = OUTLINED_FUNCTION_38();
  switch(sub_1E39CAC48(v7, v4))
  {
    case 1u:
      if (v4 >> 6)
      {
        if (v4 >> 6 == 1)
        {
          v27 = objc_opt_self();
          v28 = OUTLINED_FUNCTION_3_125(v27);
          if (v28)
          {
            v29 = v28;
            v3 = type metadata accessor for LibSidebandShowMediaEntity(0);
            v30 = a1;
            v31 = sub_1E3A6723C(v29);
            v86 = v3;
            v32 = sub_1E3B475C4(&qword_1ECF33AC8, type metadata accessor for LibSidebandShowMediaEntity, &unk_1E42B58A0);
            v40 = v32;
            v87 = v32;
            v83 = v31;
            if (!v3)
            {
              goto LABEL_51;
            }

LABEL_49:
            v78 = OUTLINED_FUNCTION_4_127(v32, v33, v34, v35, v36, v37, v38, v39, v83);
            *(a3 + 24) = v3;
            v79 = *(v40 + 8);
            goto LABEL_50;
          }

          goto LABEL_35;
        }

        type metadata accessor for LibFamilySharingShowMediaEntity(0);
        OUTLINED_FUNCTION_38();

        v32 = sub_1E37C45E4(v76);
        v49 = v32;
        if (v32)
        {
          v50 = &unk_1ECF33AC0;
          v51 = type metadata accessor for LibFamilySharingShowMediaEntity;
          v52 = &unk_1E429D7C8;
          goto LABEL_31;
        }

        v3 = 0;
        v40 = 0;
      }

      else
      {
        if ((v4 & 1) == 0)
        {
LABEL_35:
          OUTLINED_FUNCTION_28_0();
          goto LABEL_51;
        }

        v3 = type metadata accessor for LibMPShowMediaEntity(0);
        v32 = sub_1E37E9F8C(a1);
        v49 = v32;
        if (v32)
        {
          v50 = &unk_1EE26C480;
          v51 = type metadata accessor for LibMPShowMediaEntity;
          v52 = &unk_1E429EDF0;
LABEL_31:
          v32 = sub_1E3B475C4(v50, v51, v52);
          v40 = v32;
          goto LABEL_48;
        }

        v40 = 0;
        v3 = 0;
      }

LABEL_48:
      v83 = v49;
      v84 = 0;
      v85 = 0;
      v86 = v3;
      v87 = v40;
      if (v3)
      {
        goto LABEL_49;
      }

LABEL_51:
      v47 = &qword_1ECF2A778;
      v48 = &unk_1E429E340;
LABEL_59:
      sub_1E325F748(&v83, v47, v48);
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    case 2u:
      if (v4 >> 6)
      {
        if (v4 >> 6 == 1)
        {
          v41 = objc_opt_self();
          v42 = OUTLINED_FUNCTION_3_125(v41);
          if (v42)
          {
            v43 = v42;
            v3 = type metadata accessor for LibSidebandSeasonMediaEntity(0);
            v44 = a1;
            v45 = sub_1E3AF7C10(v43);
            if (v45)
            {
              v46 = sub_1E3B475C4(&qword_1ECF33AD8, type metadata accessor for LibSidebandSeasonMediaEntity, &unk_1E42B9CF0);
            }

            else
            {
              v3 = 0;
              v46 = 0;
            }

            sub_1E3B47594(a1, v4);
            v83 = v45;
            goto LABEL_54;
          }

LABEL_36:
          OUTLINED_FUNCTION_28_0();
          goto LABEL_58;
        }

        type metadata accessor for LibFamilySharingSeasonMediaEntity(0);
        OUTLINED_FUNCTION_38();

        v53 = sub_1E414D398(v77);
        v61 = v53;
        if (!v53)
        {
          v3 = 0;
          v46 = 0;
          goto LABEL_53;
        }

        v62 = &unk_1ECF33AD0;
        v63 = type metadata accessor for LibFamilySharingSeasonMediaEntity;
        v64 = &unk_1E42EF118;
      }

      else
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_36;
        }

        v3 = type metadata accessor for LibMPSeasonMediaEntity(0);
        v53 = sub_1E3B6A35C(a1);
        v61 = v53;
        if (!v53)
        {
          v46 = 0;
          v3 = 0;
          goto LABEL_53;
        }

        v62 = &unk_1ECF33AE0;
        v63 = type metadata accessor for LibMPSeasonMediaEntity;
        v64 = &unk_1E42BE530;
      }

      v53 = sub_1E3B475C4(v62, v63, v64);
      v46 = v53;
LABEL_53:
      v83 = v61;
LABEL_54:
      v84 = 0;
      v85 = 0;
      v86 = v3;
      v87 = v46;
      if (v3)
      {
        v17 = OUTLINED_FUNCTION_4_127(v53, v54, v55, v56, v57, v58, v59, v60, v83);
        *(a3 + 24) = v3;
        v18 = *(v46 + 8);
        goto LABEL_56;
      }

LABEL_58:
      v47 = &qword_1ECF2D640;
      v48 = &qword_1E42A9BA0;
      goto LABEL_59;
    case 3u:
      if (v4 >> 6)
      {
        if (v4 >> 6 != 1)
        {
          type metadata accessor for LibFamilySharingEpisodeMediaEntity(0);
          OUTLINED_FUNCTION_38();

          v66 = sub_1E3CEF970(v65);
          v74 = v66;
          if (v66)
          {
            v66 = sub_1E3B475C4(&qword_1ECF33AE8, type metadata accessor for LibFamilySharingEpisodeMediaEntity, &unk_1E42CB248);
            v75 = v66;
          }

          else
          {
            v3 = 0;
            v75 = 0;
          }

          v83 = v74;
          v84 = 0;
          v85 = 0;
          v86 = v3;
          v87 = v75;
          if (v3)
          {
            goto LABEL_39;
          }

LABEL_42:
          v47 = &qword_1ECF2CE70;
          v48 = qword_1E42A8850;
          goto LABEL_59;
        }

        v19 = objc_opt_self();
        v20 = OUTLINED_FUNCTION_3_125(v19);
        if (v20)
        {
          v21 = v20;
          v3 = type metadata accessor for LibSidebandEpisodeMediaEntity(0);
          v22 = a1;
          v23 = sub_1E38F6A6C(v21);
          v86 = v3;
          v24 = &unk_1ECF32E30;
          v25 = type metadata accessor for LibSidebandEpisodeMediaEntity;
          v26 = &unk_1E42A9BD0;
          goto LABEL_38;
        }

LABEL_20:
        OUTLINED_FUNCTION_28_0();
        goto LABEL_42;
      }

      if (v4)
      {
        goto LABEL_20;
      }

      v3 = type metadata accessor for LibMPEpisodeMediaEntity(0);
      v23 = sub_1E3D60BC8(a1);
      v86 = v3;
      v24 = &unk_1ECF33AF0;
      v25 = type metadata accessor for LibMPEpisodeMediaEntity;
      v26 = &unk_1E42CE4B8;
LABEL_38:
      v66 = sub_1E3B475C4(v24, v25, v26);
      v75 = v66;
      v87 = v66;
      v83 = v23;
      if (!v3)
      {
        goto LABEL_42;
      }

LABEL_39:
      v78 = OUTLINED_FUNCTION_4_127(v66, v67, v68, v69, v70, v71, v72, v73, v83);
      *(a3 + 24) = v3;
      v79 = *(*(v75 + 8) + 8);
LABEL_50:
      *(a3 + 32) = v79;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v78, v3);
LABEL_57:
      __swift_destroy_boxed_opaque_existential_1(&v83);
      return result;
    default:
      sub_1E3B472D0(a1, v4, &v83);
      v3 = v86;
      if (!v86)
      {
        v47 = &qword_1ECF2CEA0;
        v48 = &unk_1E42A8980;
        goto LABEL_59;
      }

      v16 = v87;
      v17 = OUTLINED_FUNCTION_4_127(v8, v9, v10, v11, v12, v13, v14, v15, v83);
      *(a3 + 24) = v3;
      v18 = *(*(v16 + 8) + 8);
LABEL_56:
      *(a3 + 32) = v18;
      v81 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(*(v3 - 8) + 16))(v81, v17, v3);
      goto LABEL_57;
  }
}

double sub_1E3B472D0@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  if (!(a2 >> 6))
  {
    if (a2)
    {
      v10 = 0;
      v3 = 0;
      v14 = 0;
LABEL_11:
      *a3 = v10;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v3;
      a3[4] = v14;
      return result;
    }

    v3 = type metadata accessor for LibMPMovieMediaEntity(0);
    v10 = sub_1E3A68300(a1);
    v11 = &unk_1ECF33B08;
    v12 = type metadata accessor for LibMPMovieMediaEntity;
    v13 = &unk_1E42B5970;
LABEL_10:
    v14 = sub_1E3B475C4(v11, v12, v13);
    goto LABEL_11;
  }

  if (a2 >> 6 != 1)
  {
    type metadata accessor for LibFamilySharingMovieMediaEntity(0);
    OUTLINED_FUNCTION_38();

    v14 = sub_1E41A9350(v15);
    v10 = v14;
    if (!v14)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v11 = &unk_1ECF33AF8;
    v12 = type metadata accessor for LibFamilySharingMovieMediaEntity;
    v13 = &unk_1E42F2B50;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = OUTLINED_FUNCTION_3_125(v6);
  if (v7)
  {
    v8 = v7;
    v3 = type metadata accessor for LibSidebandMovieMediaEntity(0);
    v9 = a1;
    v10 = sub_1E3CDBA90(v8);
    v11 = &unk_1ECF33B00;
    v12 = type metadata accessor for LibSidebandMovieMediaEntity;
    v13 = &unk_1E42CA7B0;
    goto LABEL_10;
  }

  a3[4] = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1E3B4744C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3B474A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1E3B474F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      return OUTLINED_FUNCTION_123(result, 2 * (((-a2 >> 2) & 0x1F) - 32 * a2));
    }
  }

  return result;
}

void sub_1E3B47594(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 2:

      break;
    case 3:
      return;
    default:

      break;
  }
}

uint64_t sub_1E3B475C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3B47648()
{
  type metadata accessor for SportsClockTextLayout();
  v0 = swift_allocObject();
  return sub_1E3B48DD0(v0);
}

void sub_1E3B476D4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_4_128();
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for SportsClockView(0);
  v15 = v14[5];
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + v14[6];
  *v16 = v11;
  *(v16 + 1) = v9;
  v16[16] = v7;
  *(v13 + v14[7]) = v5;
  *(v13 + v14[8]) = v3;
  *(v13 + v14[9]) = v1;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B477B4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v95 = v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B10, &qword_1E42BCCC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v85 = v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B18, &qword_1E42BCCC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v90 = v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B20, &qword_1E42BCCD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B28, &qword_1E42BCCD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v82 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B30, &qword_1E42BCCE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B38, &qword_1E42BCCE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_41();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B40, &qword_1E42BCCF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v93 = v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B48, &qword_1E42BCCF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v86 = v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B50, &qword_1E42BCD00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v89 = v23;
  v24 = type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_0_10();
  v80 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B58, &qword_1E42BCD08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v79 - v30);
  v32 = v2;
  v33 = v2 + v24[6];
  v34 = *v33;
  switch(*(v33 + 16))
  {
    case 1:
      v66 = v32;
      if ((*(v32 + v24[7]) & 0xFE) == 2)
      {
        v67 = *v33;
      }

      else
      {
        v67 = *(v33 + 8);
      }

      if ((*(v66 + v24[9]) & 1) != 0 || (*(v66 + v24[7]) & 0xFE) != 2)
      {
        v96 = sub_1E4201B84();
        v97 = 0;
        v98 = 1;
        sub_1E37E658C(v96, v70, v71);
      }

      else
      {
        v96 = sub_1E4201D44();
        v97 = 0;
        v98 = 1;
        sub_1E37E65E0(v96, v68, v69);
      }

      *v31 = sub_1E4203E84();
      v96 = v67;
      swift_getKeyPath();
      sub_1E3B49868(v66, &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v72 = (*(v80 + 80) + 16) & ~*(v80 + 80);
      v73 = swift_allocObject();
      sub_1E3B49AC0(&v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v73 + v72, type metadata accessor for SportsClockView);
      v74 = OUTLINED_FUNCTION_34();
      __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
      sub_1E32752B0(&qword_1EE23B5B8, &qword_1ECF2B6E8, &qword_1E42A0FA0, MEMORY[0x1E69E6338]);
      sub_1E375BEF4();
      sub_1E3B49610();
      sub_1E4203B34();
      v40 = &qword_1ECF33B58;
      v41 = &qword_1E42BCD08;
      sub_1E3294EE4(v31, v86, &qword_1ECF33B58, &qword_1E42BCD08);
      swift_storeEnumTagMultiPayload();
      sub_1E3B494D4();
      v76 = v89;
      sub_1E4201F44();
      v77 = OUTLINED_FUNCTION_17_76();
      sub_1E3294EE4(v77, v78, &qword_1ECF33B50, &qword_1E42BCD00);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      OUTLINED_FUNCTION_8_89();
      sub_1E4201F44();
      sub_1E325F6F0(v76, &qword_1ECF33B50, &qword_1E42BCD00);
      v45 = v31;
      goto LABEL_13;
    case 2:
      v89 = *(v33 + 8);

      sub_1E3B483F0(v32, v34);
      v46 = *(v32 + v24[8]);
      KeyPath = swift_getKeyPath();
      v48 = &v10[*(v81 + 36)];
      *v48 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
      OUTLINED_FUNCTION_4_128();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_82();
      *(v48 + v49) = v46;
      sub_1E3B49190();

      v88 = v34;
      v50 = v82;
      sub_1E4203004();
      sub_1E325F6F0(v10, &qword_1ECF33B20, &qword_1E42BCCD0);
      v51 = swift_getKeyPath();
      v52 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B70, &qword_1E42BCD10) + 36);
      *v52 = v51;
      *(v52 + 8) = 1;
      *(v52 + 16) = 0;
      *(v50 + *(v83 + 36)) = 257;
      sub_1E3294EE4(v50, v85, &qword_1ECF33B28, &qword_1E42BCCD8);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49010();
      v53 = v90;
      sub_1E4201F44();
      v54 = OUTLINED_FUNCTION_17_76();
      sub_1E3294EE4(v54, v55, &qword_1ECF33B18, &qword_1E42BCCC8);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      OUTLINED_FUNCTION_8_89();
      sub_1E4201F44();
      sub_1E3827608(v88, v89, 2);
      sub_1E325F6F0(v53, &qword_1ECF33B18, &qword_1E42BCCC8);
      v45 = v50;
      v56 = &qword_1ECF33B28;
      v57 = &qword_1E42BCCD8;
      break;
    case 3:
      sub_1E4201C14();
      v58 = sub_1E4202C24();
      v60 = v59;
      v61 = v85;
      *v85 = v58;
      v61[1] = v59;
      v63 = v62 & 1;
      *(v61 + 16) = v62 & 1;
      v61[3] = v64;
      swift_storeEnumTagMultiPayload();
      sub_1E37E6F1C(v58, v60, v63);
      sub_1E3B49010();

      v65 = v90;
      sub_1E4201F44();
      sub_1E3294EE4(v65, v93, &qword_1ECF33B18, &qword_1E42BCCC8);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      sub_1E4201F44();
      sub_1E37434B8(v58, v60, v63);

      v45 = v65;
      v56 = &qword_1ECF33B18;
      v57 = &qword_1E42BCCC8;
      break;
    default:
      v35 = *(v32 + v24[8]);
      v36 = *(v33 + 8);

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      v37 = swift_getKeyPath();
      v38 = &v16[*(v13 + 36)];
      *v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
      OUTLINED_FUNCTION_4_128();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_82();
      *(v38 + v39) = v35;
      sub_1E3B496D8();

      sub_1E4203004();
      sub_1E325F6F0(v16, &qword_1ECF33B30, &qword_1E42BCCE0);
      *(v1 + *(v88 + 36)) = 257;
      v40 = &qword_1ECF33B38;
      v41 = &qword_1E42BCCE8;
      sub_1E3294EE4(v1, v86, &qword_1ECF33B38, &qword_1E42BCCE8);
      swift_storeEnumTagMultiPayload();
      sub_1E3B494D4();
      sub_1E3B49610();
      v42 = v89;
      sub_1E4201F44();
      v43 = OUTLINED_FUNCTION_17_76();
      sub_1E3294EE4(v43, v44, &qword_1ECF33B50, &qword_1E42BCD00);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      OUTLINED_FUNCTION_8_89();
      sub_1E4201F44();
      sub_1E3827608(v34, v36, 0);
      sub_1E325F6F0(v42, &qword_1ECF33B50, &qword_1E42BCD00);
      v45 = v1;
LABEL_13:
      v56 = v40;
      v57 = v41;
      break;
  }

  sub_1E325F6F0(v45, v56, v57);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B4823C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E3C27024();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E3B48268@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_34();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *(a2 + *(type metadata accessor for SportsClockView(0) + 32));
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  KeyPath = swift_getKeyPath();
  v13 = &v10[*(v7 + 36)];
  *v13 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12_82();
  *(v13 + v14) = v11;
  sub_1E3B496D8();

  sub_1E4203004();
  sub_1E325F6F0(v10, &qword_1ECF33B30, &qword_1E42BCCE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B38, &qword_1E42BCCE8);
  *(a3 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1E3B483BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E3B4994C(a1, a3);
  result = OUTLINED_FUNCTION_12_82();
  *(a3 + v6) = a2;
  return result;
}

uint64_t sub_1E3B483F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C30, &qword_1E42BD048);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = sub_1E4205094();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = *(a1 + *(type metadata accessor for SportsClockView(0) + 28));

  if (v14 == 3)
  {
    sub_1E4205084();
    (*(v9 + 16))(v6, v13, v7);
    OUTLINED_FUNCTION_34();
    v15 = swift_storeEnumTagMultiPayload();
    sub_1E3B4938C(v15, v16, v17);
    OUTLINED_FUNCTION_6_103();
    v20 = sub_1E3B493E0(v18, v19, MEMORY[0x1E69D3A40]);
    OUTLINED_FUNCTION_24_49(v20, &type metadata for CanonicalRunningClockView);
    return (*(v9 + 8))(v13, v7);
  }

  else
  {
    *v6 = sub_1E39E2164(a2, v14);
    *(v6 + 1) = v22;
    *(v6 + 2) = v23;
    OUTLINED_FUNCTION_34();
    v24 = swift_storeEnumTagMultiPayload();
    sub_1E3B4938C(v24, v25, v26);
    OUTLINED_FUNCTION_6_103();
    v29 = sub_1E3B493E0(v27, v28, MEMORY[0x1E69D3A40]);
    return OUTLINED_FUNCTION_24_49(v29, &type metadata for CanonicalRunningClockView);
  }
}

uint64_t sub_1E3B485F0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_128();

  return swift_storeEnumTagMultiPayload();
}

void sub_1E3B48648()
{
  OUTLINED_FUNCTION_31_1();
  v39 = v2;
  v42 = v3;
  v41 = type metadata accessor for VibrantViewModifier(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v8 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BE0, &qword_1E42BCD90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BE8, &qword_1E42BCD98);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  OUTLINED_FUNCTION_12_82();
  v22 = *(v0 + v21);
  sub_1E3746E10(v1);
  sub_1E3E3B878();
  v24 = v23;
  (*(v10 + 8))(v1, v8);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BF0, &unk_1E42BCDD0);
  OUTLINED_FUNCTION_2();
  v27 = (*(v26 + 16))(v15, v39);
  v28 = &v15[*(v12 + 36)];
  *v28 = KeyPath;
  v28[1] = v24;
  v29 = (*(*v22 + 672))(v27);
  sub_1E3B499DC();
  sub_1E39B9138();

  v30 = sub_1E325F6F0(v15, &qword_1ECF33BE0, &qword_1E42BCD90);
  v31 = (*(*v22 + 2264))(v30);
  if (v31 == 3)
  {
    v34 = 0;
  }

  else
  {
    v44 = v31;
    v43 = 1;
    sub_1E376C468(v31, v32, v33);
    v34 = sub_1E4205E84();
  }

  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  OUTLINED_FUNCTION_4_128();
  swift_storeEnumTagMultiPayload();
  v35 = v40;
  *(v7 + *(v41 + 20)) = v34 & 1;
  v36 = v42;
  (*(v17 + 32))(v42, v20, v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BF8, &qword_1E42BCE18);
  sub_1E3B49AC0(v7, v36 + *(v37 + 36), type metadata accessor for VibrantViewModifier);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B489F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E379EBAC(v1);
  v7 = (*(v5 + 88))(v1, v3);
  if (v7 == *MEMORY[0x1E697DBB8])
  {
    v8 = *MEMORY[0x1E6981DA0];
    sub_1E4203E94();
    OUTLINED_FUNCTION_2();
    return (*(v9 + 104))(a1, v8);
  }

  else
  {
    v11 = v7;
    v12 = *MEMORY[0x1E697DBA8];
    sub_1E4203E94();
    OUTLINED_FUNCTION_2();
    v14 = *(v13 + 104);
    if (v11 == v12)
    {
      return v14(a1, *MEMORY[0x1E6981DB8]);
    }

    else
    {
      v14(a1, *MEMORY[0x1E6981DF0]);
      return (*(v5 + 8))(v1, v3);
    }
  }
}

void sub_1E3B48B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C18, &qword_1E42BD028);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C20, &qword_1E42BD030);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  if (*(v20 + *(type metadata accessor for VibrantViewModifier(0) + 20)) == 1)
  {
    sub_1E3B489F8(&v31[*(v28 + 36)]);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C28, &unk_1E42BD038);
    OUTLINED_FUNCTION_2();
    (*(v33 + 16))(v31, v24, v32);
    sub_1E3294EE4(v31, v27, &qword_1ECF33C20, &qword_1E42BD030);
    swift_storeEnumTagMultiPayload();
    sub_1E3B4A0DC();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v34, v35, &unk_1E42BD038, v36);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E325F6F0(v31, &qword_1ECF33C20, &qword_1E42BD030);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C28, &unk_1E42BD038);
    OUTLINED_FUNCTION_2();
    (*(v38 + 16))(v27, v24, v37);
    swift_storeEnumTagMultiPayload();
    sub_1E3B4A0DC();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v39, v40, &unk_1E42BD038, v41);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B48DD0(uint64_t a1)
{
  v1 = sub_1E41144C8();
  LOBYTE(v51[0]) = 19;
  LOBYTE(v57) = 22;
  LOBYTE(v56) = 14;
  LOBYTE(v55) = 14;
  swift_retain_n();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_19_68();
  sub_1E3C3DE00();
  v65 = v52;
  sub_1E3C2FCB8(v51, &v53, &v65, &v57, &v56, &v55, &qword_1F5D549D8, &v58);
  v2 = OUTLINED_FUNCTION_18_60();
  v10 = OUTLINED_FUNCTION_15_89(v2, v3, v4, v5, v6, v7, v8, v9, v48, v51[0]);
  sub_1E3C2FDFC(v10, 48, v11, &qword_1F5D549D8);
  LOBYTE(v51[0]) = 11;
  LOBYTE(v57) = 10;
  sub_1E3C2FC98();
  LOBYTE(v55) = v56;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_19_68();
  sub_1E3C3DE00();
  v65 = v52;
  sub_1E3C3DE00();
  v64[0] = v64[1];
  sub_1E3C2FCB8(v51, &v55, &v53, &v65, &v57, v64, &qword_1F5D54AF8, &v58);
  v12 = OUTLINED_FUNCTION_18_60();
  v20 = OUTLINED_FUNCTION_15_89(v12, v13, v14, v15, v16, v17, v18, v19, v49, v51[0]);
  sub_1E3C2FDFC(v20, 54, v21, &qword_1F5D54AF8);
  v22 = sub_1E3E5FDEC();
  v51[0] = *v22;
  v23 = v51[0];
  v24 = *sub_1E3E5FD88();
  v56 = v24;
  v57 = v24;
  v25 = *v22;
  v54 = v25;
  v55 = v25;
  v26 = sub_1E3755B54();
  v27 = v24;
  v28 = v25;
  v29 = v27;
  v30 = v28;
  sub_1E3C3DE00();
  v52 = v53;
  sub_1E3C2FCB8(v51, &v57, &v56, &v55, &v54, &v52, v26, &v58);
  v31 = v58;
  v32 = v59;
  v33 = v60;
  v34 = v61;
  v35 = v62;
  v36 = v63;
  v51[0] = v58;
  v51[1] = v59;
  v51[2] = v60;
  v51[3] = v61;
  v51[4] = v62;
  v51[5] = v63;
  v37 = OUTLINED_FUNCTION_18();
  v45 = OUTLINED_FUNCTION_15_89(v37, v38, v39, v40, v41, v42, v43, v44, v50, v51[0]);
  sub_1E3C2FDFC(v45, 21, v46, v26);

  sub_1E41115A0();

  return v1;
}

unint64_t sub_1E3B49010()
{
  result = qword_1ECF33B60;
  if (!qword_1ECF33B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B28, &qword_1E42BCCD8);
    sub_1E3B4909C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B60);
  }

  return result;
}

unint64_t sub_1E3B4909C()
{
  result = qword_1ECF33B68;
  if (!qword_1ECF33B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B70, &qword_1E42BCD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B20, &qword_1E42BCCD0);
    sub_1E3B49190();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE288770, &qword_1ECF2A238, &qword_1E429D128, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B68);
  }

  return result;
}

unint64_t sub_1E3B49190()
{
  result = qword_1ECF33B78;
  if (!qword_1ECF33B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B20, &qword_1E42BCCD0);
    sub_1E3B4924C();
    sub_1E3B493E0(qword_1EE245440, type metadata accessor for RunningClockTextLayoutModifier, &unk_1E42BCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B78);
  }

  return result;
}

unint64_t sub_1E3B4924C()
{
  result = qword_1ECF33B80;
  if (!qword_1ECF33B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B88, &qword_1E42BCD18);
    sub_1E3B492D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B80);
  }

  return result;
}

unint64_t sub_1E3B492D0()
{
  result = qword_1ECF33B90;
  if (!qword_1ECF33B90)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B98, &qword_1E42BCD20);
    sub_1E3B4938C(v1, v2, v3);
    sub_1E3B493E0(&qword_1EE23B688, MEMORY[0x1E69D3A48], MEMORY[0x1E69D3A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B90);
  }

  return result;
}

unint64_t sub_1E3B4938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF33BA0;
  if (!qword_1ECF33BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BA0);
  }

  return result;
}

uint64_t sub_1E3B493E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3B49448()
{
  result = qword_1ECF33BA8;
  if (!qword_1ECF33BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B50, &qword_1E42BCD00);
    sub_1E3B494D4();
    sub_1E3B49610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BA8);
  }

  return result;
}

unint64_t sub_1E3B494D4()
{
  result = qword_1ECF33BB0;
  if (!qword_1ECF33BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B58, &qword_1E42BCD08);
    sub_1E32752B0(&qword_1EE289DD0, &qword_1ECF2AAA0, &qword_1E429EAE0, MEMORY[0x1E697DDD0]);
    sub_1E3B4958C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BB0);
  }

  return result;
}

unint64_t sub_1E3B4958C()
{
  result = qword_1ECF33BB8;
  if (!qword_1ECF33BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BC0, &qword_1E42BCD28);
    sub_1E3B49610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BB8);
  }

  return result;
}

unint64_t sub_1E3B49610()
{
  result = qword_1ECF33BC8;
  if (!qword_1ECF33BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B38, &qword_1E42BCCE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B30, &qword_1E42BCCE0);
    sub_1E3B496D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BC8);
  }

  return result;
}

unint64_t sub_1E3B496D8()
{
  result = qword_1ECF33BD0;
  if (!qword_1ECF33BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B30, &qword_1E42BCCE0);
    swift_getOpaqueTypeConformance2();
    sub_1E3B493E0(qword_1EE245440, type metadata accessor for RunningClockTextLayoutModifier, &unk_1E42BCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BD0);
  }

  return result;
}

unint64_t sub_1E3B497AC()
{
  result = qword_1ECF33BD8;
  if (!qword_1ECF33BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B18, &qword_1E42BCCC8);
    sub_1E3B49010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BD8);
  }

  return result;
}

uint64_t sub_1E3B49838()
{
  v0 = sub_1E41144CC();

  return MEMORY[0x1EEE6BDC0](v0, 98, 7);
}

uint64_t sub_1E3B49868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsClockView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B498CC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SportsClockView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1E3B48268(v5, a2);
}

uint64_t sub_1E3B4994C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3B499DC()
{
  result = qword_1EE289A98;
  if (!qword_1EE289A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BE0, &qword_1E42BCD90);
    sub_1E32752B0(&qword_1EE288920, &qword_1ECF33BF0, &unk_1E42BCDD0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208, &unk_1E42BB350, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A98);
  }

  return result;
}

uint64_t sub_1E3B49AC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI16SportsClockStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E3B49B6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3B49BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1E3B49BF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1E3B49C40(uint64_t a1)
{
  OUTLINED_FUNCTION_7_120(a1, &qword_1EE289EB0);
  if (v1 <= 0x3F)
  {
    sub_1E3B4A070(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
    if (v2 <= 0x3F)
    {
      sub_1E3B49D1C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TextLayout();
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3B49D1C()
{
  if (!qword_1ECF33C00)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF33C00);
    }
  }
}

void sub_1E3B49D94(uint64_t a1)
{
  OUTLINED_FUNCTION_7_120(a1, &qword_1EE289EB0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TextLayout();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E3B49E14()
{
  result = qword_1ECF33C08;
  if (!qword_1ECF33C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C10, &qword_1E42BCFB8);
    sub_1E3B49448();
    sub_1E3B497AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33C08);
  }

  return result;
}

unint64_t sub_1E3B49EA0()
{
  result = qword_1EE289940;
  if (!qword_1EE289940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BF8, &qword_1E42BCE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BE0, &qword_1E42BCD90);
    sub_1E3B499DC();
    swift_getOpaqueTypeConformance2();
    sub_1E3B49F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289940);
  }

  return result;
}

unint64_t sub_1E3B49F68()
{
  result = qword_1EE29DD00[0];
  if (!qword_1EE29DD00[0])
  {
    type metadata accessor for VibrantViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29DD00);
  }

  return result;
}

void sub_1E3B49FE8()
{
  sub_1E3B4A070(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_72();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E3B4A070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E3B4A0DC()
{
  result = qword_1EE289A88;
  if (!qword_1EE289A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C20, &qword_1E42BD030);
    sub_1E32752B0(&qword_1EE288900, &qword_1ECF33C28, &unk_1E42BD038, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A88);
  }

  return result;
}

unint64_t sub_1E3B4A194()
{
  result = qword_1EE288F38;
  if (!qword_1EE288F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C38, &qword_1E42BD050);
    sub_1E3B4A0DC();
    sub_1E32752B0(&qword_1EE288900, &qword_1ECF33C28, &unk_1E42BD038, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F38);
  }

  return result;
}

void sub_1E3B4A268(void *a1, void *a2)
{
  v4 = v2;
  v5 = *&v2[*a2];
  *&v2[*a2] = a1;
  v6 = a1;
  v7 = [v4 vuiView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v7 vui:*&v4[*a2] addSubview:v5 oldView:?];

  v9 = [v4 vuiView];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 vui_setNeedsLayout];
}

id sub_1E3B4A340()
{
  v1 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView];
LABEL_11:
    v15 = v2;
    return v3;
  }

  v4 = [v0 vuiTraitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v9 = [v8 vuiLayer];
  if (v9)
  {
    v10 = v9;
    [v9 setMasksToBounds_];
  }

  result = [v0 view];
  if (result)
  {
    v12 = result;
    [result vui:v8 addSubview:0 oldView:?];

    result = [v0 view];
    if (result)
    {
      v13 = result;
      [result vui:v8 sendSubviewToBack:?];

      v14 = *&v0[v1];
      *&v0[v1] = v8;
      v3 = v8;

      v2 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1E3B4A4D8(uint64_t a1, void *a2)
{
  v3 = (*(*a1 + 488))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  OUTLINED_FUNCTION_8();
  if (!(*(v5 + 392))())
  {

    return 0;
  }

  type metadata accessor for ConfirmationDialogLayout();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  if (a2)
  {
    type metadata accessor for ConfirmationDialogTemplateController();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = a2;
    }
  }

  else
  {
    v8 = 0;
  }

  v58 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C40, qword_1E42BD058);
  sub_1E4148C68(sub_1E3B4A8EC, v11, &v55);

  v12 = v55;
  type metadata accessor for UIFactory();
  sub_1E373E010(23, v4, v13);
  v14 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  v22 = OUTLINED_FUNCTION_2_120(v14, v15, v16, v17, v18, v19, v20, v21, v55, v56, v57);

  sub_1E373C624(&v55);
  sub_1E3B4A250(v22);
  sub_1E373E010(36, v4, v23);
  v24 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
  v32 = OUTLINED_FUNCTION_2_120(v24, v25, v26, v27, v28, v29, v30, v31, v55, v56, v57);

  sub_1E373C624(&v55);
  sub_1E3B4A25C(v32);
  v33 = sub_1E3B4A340();
  v34 = [v33 vuiLayer];

  if (v34)
  {
    OUTLINED_FUNCTION_47_0();
    v36 = *(v35 + 552);

    v36(&v55, v37);
    v38 = v55;
    v39 = v56;

    v40 = 0.0;
    if ((v57 & 1) == 0)
    {
      v40 = sub_1E3952BE8(*&v38, *(&v38 + 1), *&v39, *(&v39 + 1));
    }

    [v34 setCornerRadius_];
  }

  v10 = v12;
  result = [v10 vuiView];
  if (result)
  {
    v42 = result;

    v43 = [objc_opt_self() clearColor];
    [v42 setVuiBackgroundColor_];

    OUTLINED_FUNCTION_47_0();
    v45 = *(v44 + 200);

    v47 = v45(v46);
    if (v48)
    {
    }

    else
    {
      v49 = *&v47;
      OUTLINED_FUNCTION_47_0();
      v51 = COERCE_DOUBLE((*(v50 + 304))());
      v53 = v52;

      if ((v53 & 1) == 0)
      {
        [v10 setVuiPreferredContentSize_];
      }
    }

    *&v10[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout] = v7;

    v10[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet] = 0;
    v54 = *&v10[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer];
    [v54 invalidate];

    return v10;
  }

  __break(1u);
  return result;
}

id sub_1E3B4A8EC@<X0>(void *a1@<X8>)
{
  type metadata accessor for ConfirmationDialogTemplateController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1E3B4A94C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  OUTLINED_FUNCTION_6_104(v8.super_class, sel_vui_viewWillAppear_, v1, v2, v3, v4, v5, v6, v8);
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v0 selector:sel_onApplicationDidEnterBackground_ name:*MEMORY[0x1E69DF7E0] object:0];
}

void sub_1E3B4AA20()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  OUTLINED_FUNCTION_6_104(v10.super_class, sel_vui_viewDidAppear_, v1, v2, v3, v4, v5, v6, v10);
  v7 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet;
  if ((v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet] & 1) == 0)
  {
    v8 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_dismissConfirmation selector:0 userInfo:0 repeats:1.5];
    v9 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer];
    *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer] = v8;

    v0[v7] = 1;
  }
}

id sub_1E3B4AB08()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  OUTLINED_FUNCTION_6_104(v8.super_class, sel_vui_viewWillDisappear_, v1, v2, v3, v4, v5, v6, v8);
  return [v0 vui:0 dismissViewControllerAnimated:0 completion:?];
}

id sub_1E3B4ABA4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DF7E0] object:0];

  v9.receiver = v0;
  v9.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  return OUTLINED_FUNCTION_6_104(v9.super_class, sel_vui_viewDidDisappear_, v2, v3, v4, v5, v6, v7, v9);
}

id sub_1E3B4AC78()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  objc_msgSendSuper2(&v57, sel_vui_viewDidLayoutSubviews);
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_1E3B4A340();
    v56 = v11;
    [v12 setFrame_];

    v13 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout;
    if (!*&v1[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout] || (OUTLINED_FUNCTION_8(), v15 = *(v14 + 176), v16 = , v15(v58, v16), v18 = *v58, v17 = *&v58[1], v19 = *&v58[2], v20 = *&v58[3], , (v59 & 1) != 0))
    {
      v18 = *MEMORY[0x1E69DDCE0];
      v17 = *(MEMORY[0x1E69DDCE0] + 8);
      v19 = *(MEMORY[0x1E69DDCE0] + 16);
      v20 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v55 = v18;
    v21 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_badgeView;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = v56;
    if (*&v1[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_badgeView] && *&v1[v13])
    {
      OUTLINED_FUNCTION_8();
      v28 = *(v27 + 1704);

      v30 = v28(v29);

      v23 = (*(*v30 + 2288))(v31);
      v22 = v32;

      v26 = v56;
      v24 = (v9 - v23) * 0.5;
      v25 = v22 + 0.0;
    }

    v33 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_label;
    v34 = *&v1[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_label];
    if (v34 && *&v1[v13])
    {
      v35 = v9 - v17 - v20;
      v36 = v26 - v55 - v19;
      v37 = v17;
      v38 = v35;
      OUTLINED_FUNCTION_8();
      v40 = *(v39 + 1728);

      v41 = v34;
      v42 = v40();

      [v41 sizeThatFits_];
      v44 = v43;
      v45 = *(*v42 + 152);

      v45(v60, v46);

      v26 = v56;
      v47 = v60[0];
      if (v61)
      {
        v47 = 0.0;
      }

      v25 = v44 + v25 + v47;
    }

    else
    {
      v44 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
    }

    v48 = (v26 - v25) * 0.5;
    v49 = *&v1[v21];
    if (v49)
    {
      [v49 setFrame_];
    }

    if (*&v1[v13])
    {
      OUTLINED_FUNCTION_8();
      v51 = *(v50 + 1728);

      v51(v52);

      OUTLINED_FUNCTION_47_0();
      (*(v53 + 152))(v62);

      v54 = v62[0];
      if (v63)
      {
        v54 = 0.0;
      }
    }

    else
    {
      v54 = 0.0;
    }

    result = *&v1[v33];
    if (result)
    {
      return [result setFrame_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3B4B0D0()
{

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView);
}

id sub_1E3B4B13C()
{
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1E3B4B264(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1_145(&OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout);
  if (v5)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_1E3B4B350(void *a1)
{
  OUTLINED_FUNCTION_1_145(&OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3B4B3EC()
{
  v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet] = 0;
  [*&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer] invalidate];

  return [v0 vui:0 dismissViewControllerAnimated:0 completion:?];
}

uint64_t sub_1E3B4B660(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_5_0(v2, v5);
  v3 = *v2;

  return v3;
}

uint64_t sub_1E3B4B6B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1E3B4B760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B4B7D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x180))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B4B838(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x188);

  return v2(v3);
}

uint64_t sub_1E3B4B8A4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1E4200684();
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & v4) + 0x180))();
  OUTLINED_FUNCTION_26_3();
  v7 = (*((*v3 & v6) + 0x1B8))();
  sub_1E37D466C(v5, v7);
  v9 = v8;

  OUTLINED_FUNCTION_26_3();
  return (*((*v3 & v10) + 0x1C0))(v9);
}

uint64_t (*sub_1E3B4BA04(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3B4B760();
  return sub_1E3B4BA4C;
}

uint64_t sub_1E3B4BA4C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3B4B8A4(*a1);
  }

  sub_1E3B4B8A4(v2);
}

uint64_t sub_1E3B4BAA4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3B4BB18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70, &qword_1E42BEF60);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41();
  (*(v5 + 16))(v1, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E3B4BC40(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70, &qword_1E42BEF60);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3B4BD64;
}

void sub_1E3B4BD64(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3B4BB18(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3B4BB18(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3B4BE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78, &unk_1E42BD110);
  sub_1E32752B0(&qword_1EE28A168, &qword_1ECF33C78, &unk_1E42BD110, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

double sub_1E3B4BEAC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

uint64_t sub_1E3B4BEE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_phoneRecentlyPurchasedMenuItems;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3B4BF78(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_shouldShowConnectionErrorMessage;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3B4BFAC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_shouldShowConnectionErrorMessage;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_1E3B4C038(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_mediaLibrary;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1E3B4C07C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_mediaLibrary;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1E3B4C0F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41();
  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_24_50();
  v13 = sub_1E3741090(v11, v12, v10);
  v15 = v14;

  if (!v15)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v16 = (v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_sourceTypeName);
  *v16 = v13;
  v16[1] = v15;
  v17 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource__menuItems;
  v18 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60, &qword_1E42BD0B0);
  sub_1E4200634();
  (*(v7 + 32))(v3 + v17, v2, v5);
  *(v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_phoneRecentlyPurchasedMenuItems) = v18;
  *(v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_shouldShowConnectionErrorMessage) = 0;
  v19 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue;
  *(v3 + v19) = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v20 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_menuItemUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78, &unk_1E42BD110);
  swift_allocObject();
  *(v3 + v20) = sub_1E4200544();
  v21 = sub_1E32859C4(a1, &selRef_uniqueIdentifier);
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v23 = (v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_id);
  *v23 = v21;
  v23[1] = v22;
  v24 = sub_1E32859C4(a1, &selRef_name);
  if (v25)
  {
    v26 = (v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_displayName);
    *v26 = v24;
    v26[1] = v25;
    *(v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_mediaLibrary) = a1;
    v27 = a1;
    sub_1E3AD25B8();
    v29 = *&v28[OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue];
    v30 = v28;
    [v29 setMaxConcurrentOperationCount_];

    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1E3B4C374()
{

  v1 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource__menuItems;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68, &unk_1E42BD100);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  return result;
}

id sub_1E3B4C45C()
{
  [*&v0[OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue] cancelAllOperations];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibHomeSharingSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3B4C5C0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_26_3();
  v10 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & v11) + 0x188);

  v12(v13);
  v14 = *((*v10 & *v0) + 0x180);

  v16 = v14(v15);
  OUTLINED_FUNCTION_27_42(v16);

  sub_1E41A3110();
  v17 = OUTLINED_FUNCTION_18_61();
  v18(v17);

  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    v23 = type metadata accessor for LibMenuItem(0);
    v24 = MEMORY[0x1E6910C30](v2, v23);
    v26 = sub_1E3270FC8(v24, v25, &v27);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1E323F000, v19, v20, "LibHomeSharingSource:: update with menu items %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B4C808()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_26_3();
  v9 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & v10) + 0x180);
  v11();
  OUTLINED_FUNCTION_21();
  v13 = (*(v12 + 232))();

  (*((*v9 & *v1) + 0x188))(v13);

  v15 = (v11)(v14);
  OUTLINED_FUNCTION_27_42(v15);

  v16 = sub_1E41A3110();
  v28 = v2;
  (*(v4 + 16))(v8, v16, v2);
  v17 = v1;
  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v22 = (v11)();
    v23 = type metadata accessor for LibMenuItem(0);
    v24 = MEMORY[0x1E6910C30](v22, v23);
    v26 = v25;

    v27 = sub_1E3270FC8(v24, v26, &v29);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1E323F000, v18, v19, "LibHomeSharingSource:: did update downloaded menu, new menu items %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v28);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B4CAD4(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 384))();
  v3 = sub_1E32AE9B0(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](i, v2);
      v5 = v6;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E37D4BA4(v6, v7, v8);
    sub_1E4206254();
    sub_1E4206254();
    if (v14 == v12 && v15 == v13)
    {

LABEL_16:

      (*(*v5 + 232))(a1);
      (*(*v5 + 264))(1);

      return;
    }

    v10 = sub_1E42079A4();

    if (v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1E3B4CCE0(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v6 + 480))(0);
  OUTLINED_FUNCTION_26_3();
  v8 = *((*v5 & v7) + 0x1F0);
  v9 = v8();
  v10 = [objc_allocWithZone(VUIMPMediaLibraryConnectOperation) initWithMediaLibrary_];

  sub_1E3280A90(0, &qword_1EE23B2A0, 0x1E696AAE0);
  OUTLINED_FUNCTION_10_9();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v12 = v2;
  v13 = v10;

  v14 = sub_1E378A448(sub_1E3B4E470, v11);
  [v14 addDependency_];
  v15 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue;
  [*&v12[OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue] addOperation_];
  [*&v12[v15] addOperation_];
  v16 = [objc_opt_self() defaultCenter];
  v17 = *MEMORY[0x1E696FBB0];
  v18 = v8();
  [v16 addObserver:v12 selector:sel_mpMediaLibraryStatusChanged name:v17 object:v18];
}

void sub_1E3B4CF08()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v26 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v13 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v5;
  v15[4] = v3;
  v15[5] = v1;
  v27[4] = sub_1E3B4E760;
  v27[5] = v15;
  OUTLINED_FUNCTION_12_0();
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v27[2] = v16;
  v27[3] = &block_descriptor_51_0;
  v17 = _Block_copy(v27);
  v18 = v5;

  sub_1E4203FE4();
  v27[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_146();
  sub_1E3B4E6D0(v19, v20, MEMORY[0x1E69E7F70]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  v22 = OUTLINED_FUNCTION_4_129(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_22_54(v27, v21, v22);
  v23 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v23);
  _Block_release(v17);

  v24 = OUTLINED_FUNCTION_16_80();
  v25(v24);
  (*(v8 + 8))(v12, v26);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3B4D188(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 192);

  v7(sub_1E3B4E47C, v5);

  return result;
}

void sub_1E3B4D26C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v28 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v15 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_5_0(v5 + 16, &v30);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_10_9();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v3;
  v18[4] = v1;
  v18[5] = v7;
  v29[4] = sub_1E3B4E754;
  v29[5] = v18;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v29[2] = v19;
  v29[3] = &block_descriptor_41;
  v20 = _Block_copy(v29);

  sub_1E4203FE4();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_146();
  sub_1E3B4E6D0(v21, v22, MEMORY[0x1E69E7F70]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  v24 = OUTLINED_FUNCTION_4_129(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_22_54(v29, v23, v24);
  v25 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v25);
  _Block_release(v20);

  v26 = OUTLINED_FUNCTION_16_80();
  v27(v26);
  (*(v10 + 8))(v14, v28);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B4D524()
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
  OUTLINED_FUNCTION_5_0(v5 + 16, &v29);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x188);

    v15(v16);
    v17 = sub_1E41A3110();
    v27 = v6;
    (*(v8 + 16))(v12, v17, v6);

    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    if (os_log_type_enabled(v18, v19))
    {
      v26 = v3;
      v20 = OUTLINED_FUNCTION_6_21();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = type metadata accessor for LibMenuItem(0);
      v23 = MEMORY[0x1E6910C30](v1, v22);
      v25 = sub_1E3270FC8(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1E323F000, v18, v19, "LibHomeSharingSource:: fetched menu items %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      v3 = v26;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v8 + 8))(v12, v27);
    v3(v1);
  }

  else
  {
    v3(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3B4D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 200);

  v8(a1, sub_1E3B4E488, v6);

  return result;
}

void sub_1E3B4D834(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  sub_1E327F454(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  type metadata accessor for LibMPShowMediaEntity(0);
  if (swift_dynamicCast())
  {

    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = (*(*(v11 + 8) + 16))(v10);
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0);

    v16(v12, v14, a2 & 1, sub_1E3B4E4C8, v15);
  }

  else
  {
    a3(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1E3B4D9B0()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v28 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v15 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v3;
  v16[4] = v7;
  v29[4] = v26;
  v29[5] = v16;
  OUTLINED_FUNCTION_12_0();
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v29[2] = v17;
  v29[3] = v27;
  v18 = _Block_copy(v29);

  sub_1E4203FE4();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_146();
  sub_1E3B4E6D0(v19, v20, MEMORY[0x1E69E7F70]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  v22 = OUTLINED_FUNCTION_4_129(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_22_54(v29, v21, v22);
  v23 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v23);
  _Block_release(v18);

  v24 = OUTLINED_FUNCTION_16_80();
  v25(v24);
  (*(v10 + 8))(v14, v28);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B4DC04()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 312))();
}

uint64_t sub_1E3B4DC58()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 336))();
}

uint64_t sub_1E3B4DCAC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 360))();
}

uint64_t sub_1E3B4DD00()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 384))();
}

uint64_t sub_1E3B4DD54()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 392))();
}

void (*sub_1E3B4DDA8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 400))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3B4DE44()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 432))();
}

uint64_t sub_1E3B4DE98()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 440))();
}

uint64_t sub_1E3B4DEEC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 448))();
}

void (*sub_1E3B4DF40(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 456))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E3B4DFDC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 464))() & 1;
}

uint64_t sub_1E3B4E034()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 576))();
}

uint64_t sub_1E3B4E088()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 584))();
}

uint64_t sub_1E3B4E0DC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 592))();
}

uint64_t sub_1E3B4E130()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 600))();
}

uint64_t sub_1E3B4E184()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 608))();
}

uint64_t sub_1E3B4E1D8@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 312))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3B4E234()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E41A3110();
  v8 = OUTLINED_FUNCTION_18_61();
  v9(v8);
  v10 = v0;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    *v13 = 134217984;
    v14 = (*((*MEMORY[0x1E69E7D40] & v10->isa) + 0x1F0))();
    v15 = [v14 status];

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v11, v12, "LibHomeSharingSource::mpMediaLibraryStatusChanged. New status %ld", v13, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v11 = v10;
  }

  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LibHomeSharingSource(uint64_t a1)
{
  result = qword_1EE29D730;
  if (!qword_1EE29D730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B4E508(uint64_t a1)
{
  result = sub_1E3B4E6D0(&qword_1ECF33C80, type metadata accessor for LibHomeSharingSource, &unk_1E42BD13C);
  *(a1 + 8) = result;
  return result;
}

void sub_1E3B4E568(uint64_t a1)
{
  sub_1E3B4E63C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3B4E63C(uint64_t a1)
{
  if (!qword_1EE289FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C60, &qword_1E42BD0B0);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289FA0);
    }
  }
}

uint64_t sub_1E3B4E6D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_27Tm_0()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}