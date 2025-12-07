id sub_1B374763C@<X0>(void *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  v5 = sub_1B3C986B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v8 = sub_1B3C98F28();
  v19 = v9;
  v20 = v8;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v10 = sub_1B3C98F08();
  v12 = v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B3723558(a1, v23);
  (*(v6 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v5);
  v14 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_1B370EF10(v23, v15 + 24);
  (*(v6 + 32))(v15 + v14, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v16 = objc_allocWithZone(MEMORY[0x1E69C4450]);
  result = sub_1B3728644(v20, v19, v10, v12, 0, sub_1B374C364, v15);
  *v22 = result;
  return result;
}

void sub_1B3747840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5 && (v6 = [v5 oneUpChromeViewControllerPresentationEnvironment_], swift_unknownObjectRelease(), v6))
    {
      sub_1B3C98718();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1B374791C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852380, &unk_1B3CFB6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1B3C991F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B373EE18(a1, v4, &qword_1EB852380, &unk_1B3CFB6A0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1B371B36C(v4, &qword_1EB852380, &unk_1B3CFB6A0);
    return sub_1B3C97D18();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_1B3C991E8();
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

id OneUpChromeViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpChromeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void OneUpChromeViewController.oneUpActionsControllerPopoverSourceView(actionType:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852498, &qword_1B3CFB750);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - v4;
  v6 = sub_1B3C995D8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  sub_1B37255AC(v1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1B371B36C(v5, &qword_1EB852498, &qword_1B3CFB750);
    v13 = sub_1B3C9A538();
    v14 = sub_1B3C9CAE8();
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_5:

LABEL_8:
      OUTLINED_FUNCTION_27();
      return;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    *v15 = 136315138;
    v17 = PUAssetActionTypeDescription(v1);
    if (v17)
    {
      v18 = v17;
      v19 = sub_1B3C9C5E8();
      v21 = v20;

      v22 = sub_1B3749364(v19, v21, &v53);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1B36F3000, v13, v14, "Unable to find chrome action for action: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    OUTLINED_FUNCTION_12_2();
    sub_1B374C464(v23, v24);
    OUTLINED_FUNCTION_5_1();
    if (sub_1B3C9CF68())
    {
      v25 = OUTLINED_FUNCTION_5_1();
      v26(v25);
      goto LABEL_8;
    }

    v27 = OUTLINED_FUNCTION_29();
    v28(v27);
    v29 = sub_1B3C9A538();
    v30 = sub_1B3C9CAE8();
    if (!os_log_type_enabled(v29, v30))
    {

      v47 = *(v8 + 8);
      v48 = OUTLINED_FUNCTION_42_0();
      v47(v48);
      v49 = OUTLINED_FUNCTION_5_1();
      v47(v49);
      goto LABEL_8;
    }

    v31 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v31 = 136315394;
    v32 = PUAssetActionTypeDescription(v1);
    if (v32)
    {
      v33 = v32;
      v34 = sub_1B3C9C5E8();
      v36 = v35;

      v37 = sub_1B3749364(v34, v36, &v53);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      OUTLINED_FUNCTION_12_2();
      sub_1B374C464(v38, v39);
      v40 = sub_1B3C9D678();
      v42 = v41;
      v43 = *(v8 + 8);
      v44 = OUTLINED_FUNCTION_42_0();
      v43(v44);
      v45 = sub_1B3749364(v40, v42, &v53);

      *(v31 + 14) = v45;
      _os_log_impl(&dword_1B36F3000, v29, v30, "Unable to find source view for presenting popover for action: %s / %s.", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();

      v46 = OUTLINED_FUNCTION_5_1();
      v43(v46);
      goto LABEL_8;
    }
  }

  v50 = OUTLINED_FUNCTION_42_0();
  v51(v50);
  __break(1u);
}

id OneUpChromeViewController.currentAssetForDefaultOneUpBadgeContentProvider(_:)()
{
  result = [*(v0 + OBJC_IVAR___PUOneUpChromeViewController_browsingSession) viewModel];
  if (result)
  {
    v2 = result;
    v3 = [result currentAssetReference];

    v4 = [v3 asset];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id OneUpChromeViewController.undoManagerForDefaultOneUpBadgeContentProvider(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];
  }

  v3 = [Strong oneUpChromeViewControllerUndoManager_];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];
  }

  return v3;
}

id OneUpChromeViewController.presentationEnvironmentForDefaultOneUpBadgeContentProvider(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong oneUpChromeViewControllerPresentationEnvironment_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B3748350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, void *x1_0@<X1>, uint64_t a8)
{
  sub_1B37485A0(x1_0, a7);
  KeyPath = swift_getKeyPath();
  v17 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852658, &qword_1B3CFBA60) + 36));
  *v17 = KeyPath;
  v17[1] = a2;
  v17[2] = a3;
  v18 = swift_getKeyPath();
  v19 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852660, &qword_1B3CFBA68) + 36));
  *v19 = v18;
  v19[1] = a1;
  v20 = swift_getKeyPath();
  v21 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852668, &qword_1B3CFBA70) + 36));
  *v21 = v20;
  v21[1] = a4;
  v21[2] = a5;
  v22 = swift_getKeyPath();
  v23 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852670, &qword_1B3CFBAA8) + 36));
  *v23 = v22;
  v23[1] = a6;
  v23[2] = a8;
  v24 = swift_getKeyPath();
  v25 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852678, &qword_1B3CFBAE0) + 36));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852680, &qword_1B3CFBAE8);
  v27 = *(v26 + 28);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1B3748A88(&selRef_videoScrubberPaletteShadowOpacity, &selRef_videoScrubberPaletteShadowBlurRadius, &selRef_videoScrubberPaletteShadowOffsetX, &selRef_videoScrubberPaletteShadowOffsetY);
  v28 = sub_1B3C99088();
  __swift_storeEnumTagSinglePayload(v25 + v27, 0, 1, v28);
  *v25 = v24;
  v29 = swift_getKeyPath();
  v30 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852648, &qword_1B3CFBA20) + 36));
  v31 = *(v26 + 28);
  sub_1B3748A88(&selRef_videoScrubberTrackShadowOpacity, &selRef_videoScrubberTrackShadowBlurRadius, &selRef_videoScrubberTrackShadowOffsetX, &selRef_videoScrubberTrackShadowOffsetY);
  result = __swift_storeEnumTagSinglePayload(v30 + v31, 0, 1, v28);
  *v30 = v29;
  return result;
}

uint64_t sub_1B37485A0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852690, &qword_1B3CFBB28);
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852698, &qword_1B3CFBB30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8526A0, &qword_1B3CFBB38);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  if (sub_1B3C992D8())
  {
    *(swift_allocObject() + 16) = a1;
    sub_1B374C4B8();
    v13 = a1;

    sub_1B3C998B8();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1B374C50C(&qword_1EB84F430, &unk_1EB8526A0, &qword_1B3CFBB38);
    sub_1B374C50C(&unk_1EB84F438, &qword_1EB852690, &qword_1B3CFBB28);
    sub_1B3C9B168();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_1B374C4B8();
    v15 = a1;

    sub_1B3C99538();
    v16 = v18;
    (*(v3 + 16))(v8, v5, v18);
    swift_storeEnumTagMultiPayload();
    sub_1B374C50C(&qword_1EB84F430, &unk_1EB8526A0, &qword_1B3CFBB38);
    sub_1B374C50C(&unk_1EB84F438, &qword_1EB852690, &qword_1B3CFBB28);
    sub_1B3C9B168();
    return (*(v3 + 8))(v5, v16);
  }
}

uint64_t sub_1B374899C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_1B37489E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852688, &qword_1B3CFBB20);
  OUTLINED_FUNCTION_8_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1B373EE18(a1, &v12 - v9, &qword_1EB852688, &qword_1B3CFBB20);
  return a5(v10);
}

void sub_1B3748A88(SEL *a1, SEL *a2, SEL *a3, SEL *a4)
{
  sub_1B3710718(0, &qword_1EB84FE30, 0x1E69C3640);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v8 *a1];
  [v8 *a2];
  [v8 *a3];
  [v8 *a4];
  sub_1B3C9BB68();
  sub_1B3C9BBA8();

  sub_1B3C99078();
}

void sub_1B3748BA0()
{
  v1 = (v0 + OBJC_IVAR____TtCC15PhotosUIPrivate25OneUpChromeViewController10ChromeView_touchInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B3748C30(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for OneUpChromeViewController.ChromeView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtCC15PhotosUIPrivate25OneUpChromeViewController10ChromeView_hostView];
  [v1 bounds];
  return [v2 setFrame_];
}

void sub_1B3748CE0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = sub_1B3C98678();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate25OneUpChromeViewController10ChromeView_hostView);
  sub_1B3710718(0, &unk_1EB84F790, 0x1E69DD250);
  v12 = v11;
  v13 = sub_1B3C9CFA8();

  if ((v13 & 1) == 0)
  {
    sub_1B3748F38();
    sub_1B3C98668();
    OUTLINED_FUNCTION_14_4();
    sub_1B374C464(v14, v15);
    v16 = OUTLINED_FUNCTION_47();
    v17 = *(v5 + 8);
    v17(v9, v3);
    v18 = OUTLINED_FUNCTION_29();
    (v17)(v18);
    if (v16)
    {
      v19 = [v2 isUserInteractionEnabled];
    }

    else
    {
      v19 = 1;
    }

    sub_1B3748F38();
    sub_1B3C98658();
    v20 = OUTLINED_FUNCTION_47();
    v17(v9, v3);
    v21 = OUTLINED_FUNCTION_29();
    (v17)(v21);
    if ((v20 & 1) != 0 && v19)
    {
      [v2 alpha];
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3748F38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525F0, &qword_1B3CFB9D8);
  sub_1B3C98678();
  *(swift_allocObject() + 16) = xmmword_1B3CFA2E0;
  sub_1B3C98668();
  sub_1B3C98658();
  OUTLINED_FUNCTION_14_4();
  sub_1B374C464(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852600, &unk_1B3CFB9E0);
  sub_1B374C50C(&qword_1EB84F8C8, &qword_1EB852600, &unk_1B3CFB9E0);
  return sub_1B3C9D278();
}

id sub_1B3749100(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1B374922C(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v3 = [v1 initWithTarget_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

id sub_1B3749298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B3C9C5A8();

  if (a4)
  {
    v8 = sub_1B3C9C5A8();
  }

  else
  {
    v8 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525A0, &unk_1B3CFB9A0);
  v9 = sub_1B3C9C778();

  v10 = [v5 initWithTitle:v7 systemImageName:v8 childElements:v9];

  return v10;
}

unint64_t sub_1B3749364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B3749428(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1B37106B4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1B3749428(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B3749528(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B3C9D3F8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B3749528(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B3749574(a1, a2);
  sub_1B374968C(&unk_1F2AB2AA0);
  return v3;
}

uint64_t sub_1B3749574(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B3C9C6A8())
  {
    result = sub_1B389E828(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B3C9D368();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B3C9D3F8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B374968C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1B3749770(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B3749770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852630, &qword_1B3CFBA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1B3749864()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852020, &qword_1B3CFB040);
  v6 = *v0;
  v7 = sub_1B3C9D328();
  if (*(v6 + 16))
  {
    OUTLINED_FUNCTION_16_4();
    OUTLINED_FUNCTION_28_1();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_11_3();
    while (v4)
    {
      OUTLINED_FUNCTION_44_0();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_27_0();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void sub_1B3749958()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852040, &qword_1B3CFB060);
  v9 = *v0;
  v10 = sub_1B3C9D328();
  if (*(v9 + 16))
  {
    v25 = v1;
    v11 = OUTLINED_FUNCTION_16_4();
    v13 = (v12 + 63) >> 6;
    if (v10 != v9 || v11 >= v9 + 56 + 8 * v13)
    {
      memmove(v11, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v10 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v24 = *(v4 + 72) * (v20 | (v15 << 6));
      (*(v4 + 16))(v8, *(v9 + 48) + v24, v2);
      (*(v4 + 32))(*(v10 + 48) + v24, v8, v2);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v1 = v25;
        goto LABEL_21;
      }

      ++v21;
      if (*(v9 + 56 + 8 * v15))
      {
        OUTLINED_FUNCTION_27_0();
        v18 = v23 & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v10;
    OUTLINED_FUNCTION_27();
  }
}

void sub_1B3749B54()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525E0, &qword_1B3CFB038);
  v6 = *v0;
  v7 = sub_1B3C9D328();
  if (*(v6 + 16))
  {
    OUTLINED_FUNCTION_16_4();
    OUTLINED_FUNCTION_28_1();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_11_3();
    while (v4)
    {
      OUTLINED_FUNCTION_44_0();
LABEL_15:
      *(*(v7 + 48) + 8 * (v13 | (v2 << 6))) = *(*(v6 + 48) + 8 * (v13 | (v2 << 6)));
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_27_0();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void sub_1B3749C40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8559A0, &qword_1B3CFB9D0);
  v2 = *v0;
  v3 = sub_1B3C9D328();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1B3749D90()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_29_0(v8, v9, v10, v11, v12, v13, v14, v15, v33);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852040, &qword_1B3CFB060), OUTLINED_FUNCTION_13(), v16 = sub_1B3C9D358(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_10_4();
    while (v17 < *(v4 + 16))
    {
      v18 = OUTLINED_FUNCTION_13_6(v17);
      (v4)(v18);
      OUTLINED_FUNCTION_0_8();
      sub_1B374C464(&unk_1EB84F950, v19);
      OUTLINED_FUNCTION_37_0();
      sub_1B3C9C4F8();
      OUTLINED_FUNCTION_19_2();
      while (1)
      {
        OUTLINED_FUNCTION_21_1();
        if (v21)
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_26_0();
        (v4)(v22);
        OUTLINED_FUNCTION_0_8();
        v24 = sub_1B374C464(&unk_1EB84F940, v23);
        v25 = OUTLINED_FUNCTION_35_0(v24);
        v26 = *v0;
        v27 = OUTLINED_FUNCTION_29();
        v26(v27);
        if (v25)
        {
          (v26)(v34, v5);
          v16 = v2;
          goto LABEL_12;
        }

        v16 = v2;
      }

      v28 = OUTLINED_FUNCTION_18_2(v20);
      v29(v28);
      v30 = *(v16 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v16 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_33();
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_27();
  }
}

void sub_1B3749F9C()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = sub_1B3C981B8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_29_0(v8, v9, v10, v11, v12, v13, v14, v15, v33);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852618, &qword_1B3CFB9F8), OUTLINED_FUNCTION_13(), v16 = sub_1B3C9D358(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_10_4();
    while (v17 < *(v4 + 16))
    {
      v18 = OUTLINED_FUNCTION_13_6(v17);
      (v4)(v18);
      OUTLINED_FUNCTION_15_5();
      sub_1B374C464(&qword_1EB852620, v19);
      OUTLINED_FUNCTION_37_0();
      sub_1B3C9C4F8();
      OUTLINED_FUNCTION_19_2();
      while (1)
      {
        OUTLINED_FUNCTION_21_1();
        if (v21)
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_26_0();
        (v4)(v22);
        OUTLINED_FUNCTION_15_5();
        v24 = sub_1B374C464(&qword_1EB852628, v23);
        v25 = OUTLINED_FUNCTION_35_0(v24);
        v26 = *v0;
        v27 = OUTLINED_FUNCTION_29();
        v26(v27);
        if (v25)
        {
          (v26)(v34, v5);
          v16 = v2;
          goto LABEL_12;
        }

        v16 = v2;
      }

      v28 = OUTLINED_FUNCTION_18_2(v20);
      v29(v28);
      v30 = *(v16 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v16 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_33();
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_27();
  }
}

void sub_1B374A1A8(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852610, &qword_1B3CFB9F0), OUTLINED_FUNCTION_13(), v2 = sub_1B3C9D358(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = v5 + 1;
      sub_1B3720CB4(a1 + 32 + 40 * v5, v23);
      sub_1B3C9D2F8();
      OUTLINED_FUNCTION_19_2();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v6 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        sub_1B3720CB4(*(v3 + 48) + 40 * v11, v22);
        v15 = MEMORY[0x1B8C6A880](v22, v23);
        sub_1B3720D10(v22);
        if (v15)
        {
          sub_1B3720D10(v23);
          goto LABEL_12;
        }

        v8 = v11 + 1;
      }

      *(v6 + 8 * v12) = v14 | v13;
      v16 = *(v3 + 48) + 40 * v11;
      v17 = v23[0];
      v18 = v23[1];
      *(v16 + 32) = v24;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_15;
      }

      *(v3 + 16) = v21;
LABEL_12:
      v5 = v7;
      if (v7 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void sub_1B374A32C()
{
  OUTLINED_FUNCTION_39();
  v25 = v1;
  v2 = sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v24 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_0_8();
  sub_1B374C464(v10, v11);
  OUTLINED_FUNCTION_37_0();
  sub_1B3C9C4F8();
  OUTLINED_FUNCTION_19_2();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    if (((*(v9 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
    {
      v19 = 1;
      v20 = v25;
      goto LABEL_9;
    }

    v16 = *(v4 + 72) * v15;
    (*(v4 + 16))(v8, *(v9 + 48) + v16, v2);
    OUTLINED_FUNCTION_0_8();
    sub_1B374C464(&unk_1EB84F940, v17);
    v18 = sub_1B3C9C528();
    (*(v4 + 8))(v8, v2);
    if (v18)
    {
      break;
    }

    v12 = v15 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v24;
  v26 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B3749958();
    v22 = v26;
  }

  v23 = *(v22 + 48) + v16;
  v20 = v25;
  (*(v4 + 32))(v25, v23, v2);
  sub_1B374A7F0(v15);
  v19 = 0;
  *v24 = v26;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v2);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B374A554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1B3C9C5E8();
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  v5 = sub_1B3C9D7F8();

  OUTLINED_FUNCTION_19_2();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    if (((*(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = sub_1B3C9C5E8();
    v11 = v10;
    if (v9 == sub_1B3C9C5E8() && v11 == v12)
    {
      break;
    }

    v14 = sub_1B3C9D6A8();

    if (v14)
    {
      goto LABEL_11;
    }

    v5 = v8 + 1;
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  v19 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B3749C40();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + 8 * v8);
  sub_1B374AAFC(v8);
  *v3 = v19;
  return v15;
}

uint64_t sub_1B374A6CC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  sub_1B3C9D7F8();
  OUTLINED_FUNCTION_19_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B3C9D6A8() & 1) != 0)
    {
      break;
    }

    v6 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B3749864();
    v13 = v16;
  }

  v14 = *(*(v13 + 48) + 16 * v9);
  sub_1B374ACD0(v9);
  *v2 = v16;
  return v14;
}

void sub_1B374A7F0(int64_t a1)
{
  v3 = sub_1B3C995F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1B3C9D298();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_1B374C464(&unk_1EB84F950, MEMORY[0x1E69C2BD8]);
        v23 = sub_1B3C9C4F8();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

void sub_1B374AAFC(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B3C9D298();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1B3C9C5E8();
        sub_1B3C9D7C8();
        v11 = v10;
        sub_1B3C9C668();
        v12 = sub_1B3C9D7F8();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }
}

void sub_1B374ACD0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B3C9D298();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B3C9D7C8();

        sub_1B3C9C668();
        v10 = sub_1B3C9D7F8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

char *sub_1B374AE88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7)
{
  v28 = a1;
  swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852648, &qword_1B3CFBA20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_1B374C464(&qword_1EB84F980, type metadata accessor for OneUpDefaultChromeActionsDelegate);
  v16 = sub_1B374C464(&unk_1EB84FC60, type metadata accessor for PhotosUIOneUpChromeEnvironment);
  v17 = sub_1B374C464(&qword_1EB84F9A8, type metadata accessor for DefaultOneUpBadgeContentProvider);
  v18 = &a7[OBJC_IVAR____TtCC15PhotosUIPrivate25OneUpChromeViewController10ChromeView_touchInsets];
  v19 = *(MEMORY[0x1E69DDCE0] + 16);
  *v18 = *MEMORY[0x1E69DDCE0];
  *(v18 + 1) = v19;
  v20 = v28;
  sub_1B3748350(a5, a3, v15, a4, v16, a6, v14, v28, v17);

  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852650, &qword_1B3CFBA28));
  *&a7[OBJC_IVAR____TtCC15PhotosUIPrivate25OneUpChromeViewController10ChromeView_hostView] = sub_1B3C9AAB8();
  v22 = type metadata accessor for OneUpChromeViewController.ChromeView();
  v29.receiver = a7;
  v29.super_class = v22;
  v23 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = *&v23[OBJC_IVAR____TtCC15PhotosUIPrivate25OneUpChromeViewController10ChromeView_hostView];
  v25 = v23;
  [v25 addSubview_];
  [v25 setDelegate_];

  return v25;
}

uint64_t sub_1B374B0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8526B0, &qword_1B3CFBB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = sub_1B374C464(&unk_1EB84FC60, type metadata accessor for PhotosUIOneUpChromeEnvironment);
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = OUTLINED_FUNCTION_17_3;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  sub_1B3C98308();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v10;
  swift_unknownObjectRetain();
  sub_1B3805038();
  (*(v7 + 104))(v9, *MEMORY[0x1E69C4410], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8526B8, &qword_1B3CFBB48);
  swift_allocObject();

  sub_1B3C9A048();
  sub_1B38052C4();
  swift_unknownObjectRelease();
  return a3;
}

uint64_t type metadata accessor for OneUpChromeViewController(uint64_t a1)
{
  result = qword_1EB84FA68;
  if (!qword_1EB84FA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B374B34C(uint64_t a1)
{
  result = sub_1B3C9A558();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpChromeViewController.Updatable(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeViewController.Updatable(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B374B670()
{
  result = qword_1EB84FA78;
  if (!qword_1EB84FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FA78);
  }

  return result;
}

unint64_t sub_1B374B6C8()
{
  result = qword_1EB84FA90;
  if (!qword_1EB84FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FA90);
  }

  return result;
}

unint64_t sub_1B374B720()
{
  result = qword_1EB84FA88;
  if (!qword_1EB84FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FA88);
  }

  return result;
}

uint64_t sub_1B374B79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v62 = a5;
  v63 = a3;
  v69 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852048, &qword_1B3CFB068);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v59[-v8];
  v65 = sub_1B3C995F8();
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852050, &qword_1B3CFB070);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59[-v14];
  v16 = sub_1B3C99B58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59[-v21];
  ObjectType = swift_getObjectType();
  if (sub_1B3C998C8())
  {
    v24 = sub_1B3C999D8() ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v64 = sub_1B3C998F8();
  v60 = sub_1B3C99948();
  v66 = ObjectType;
  v67 = a1;
  v68 = a2;
  sub_1B3C99998();
  (*(v17 + 104))(v19, *MEMORY[0x1E69C2CF8], v16);
  LODWORD(a2) = sub_1B3C99B48();
  v25 = *(v17 + 8);
  v25(v19, v16);
  v25(v22, v16);
  v26 = sub_1B3C995E8();
  sub_1B370B718(v26);
  v72 = v27;
  v28 = MEMORY[0x1E69E7CD0];
  if ((v24 & 1) == 0)
  {

    v72 = v28;
  }

  v29 = v70;
  v30 = v65;
  sub_1B373EE18(v62, v15, &qword_1EB852050, &qword_1B3CFB070);
  v31 = sub_1B3C99B78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v31);
  v33 = MEMORY[0x1E69C2BB0];
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_12;
  }

  v34 = *(v31 - 8);
  v35 = (*(v34 + 88))(v15, v31);
  if (v35 != *MEMORY[0x1E69C2D50])
  {
    if (v35 != *MEMORY[0x1E69C2D58])
    {
      result = sub_1B3C9D4C8();
      __break(1u);
      return result;
    }

    goto LABEL_11;
  }

  (*(v34 + 96))(v15, v31);
  v36 = *v15;
  [v69 dismissalFractionForHidingChrome];
  if (v37 <= v36)
  {
LABEL_11:

    v72 = v28;
    goto LABEL_12;
  }

  (*(v29 + 104))(v12, *v33, v30);
  v38 = a2;
  a2 = v71;
  sub_1B374A32C();
  (*(v29 + 8))(v12, v30);
  v39 = a2;
  LODWORD(a2) = v38;
  sub_1B371B36C(v39, &qword_1EB852048, &qword_1B3CFB068);
LABEL_12:
  v40 = MEMORY[0x1E69C2BD0];
  v41 = MEMORY[0x1E69C2BB8];
  if (v63)
  {
    LODWORD(v65) = a2;
    v42 = *MEMORY[0x1E69C2BD0];
    v43 = *(v29 + 104);
    v43(v12, v42, v30);
    sub_1B373F184();
    v45 = v44;
    v46 = *(v29 + 8);
    v46(v12, v30);
    a2 = v71;
    if ((v45 & 1) == 0)
    {
      v43(v12, v42, v30);
      sub_1B374A32C();
      v46(v12, v30);
      sub_1B371B36C(a2, &qword_1EB852048, &qword_1B3CFB068);
    }

    v47 = *MEMORY[0x1E69C2BC0];
    v43(v12, v47, v30);
    sub_1B373F184();
    v49 = v48;
    v46(v12, v30);
    if ((v49 & 1) == 0)
    {
      v43(v12, v47, v30);
      sub_1B374A32C();
      v46(v12, v30);
      sub_1B371B36C(a2, &qword_1EB852048, &qword_1B3CFB068);
    }

    v43(v12, *MEMORY[0x1E69C2BC8], v30);
    sub_1B374A32C();
    v46(v12, v30);
    sub_1B371B36C(a2, &qword_1EB852048, &qword_1B3CFB068);
    v43(v12, *MEMORY[0x1E69C2BB8], v30);
    sub_1B374A32C();
    v46(v12, v30);
    sub_1B371B36C(a2, &qword_1EB852048, &qword_1B3CFB068);
    v50 = MEMORY[0x1E69C2BB0];
    v43(v12, *MEMORY[0x1E69C2BB0], v30);
    v41 = MEMORY[0x1E69C2BB8];
    v33 = v50;
    sub_1B374A32C();
    v46(v12, v30);
    sub_1B371B36C(a2, &qword_1EB852048, &qword_1B3CFB068);
    v29 = v70;
    LOBYTE(a2) = v65;
    v40 = MEMORY[0x1E69C2BD0];
  }

  v51 = [v69 chromeLibraryScrubberEnabled];
  v52 = v71;
  if (!v51 || (sub_1B3C99B08() & 1) != 0 || (v60 & 1) != 0 && ([v69 chromeLibraryScrubberHiddenWhileZoomed] & 1) != 0 || (sub_1B3C99D58(), sub_1B3C99D48(), v53 = sub_1B3C99D08(), , (v53 & 1) != 0))
  {
    (*(v29 + 104))(v12, *v41, v30);
    sub_1B374A32C();
    (*(v29 + 8))(v12, v30);
    sub_1B371B36C(v52, &qword_1EB852048, &qword_1B3CFB068);
  }

  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525C0, &unk_1B3CFB9C0);
    v54 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1B3CF6CE0;
    (*(v29 + 104))(v55 + v54, *v40, v30);
    sub_1B3749D90();
    v72 = v56;
  }

  if ((v64 & 1) == 0)
  {
    (*(v29 + 104))(v12, *MEMORY[0x1E69C2BC0], v30);
    sub_1B374A32C();
    (*(v29 + 8))(v12, v30);
    sub_1B371B36C(v52, &qword_1EB852048, &qword_1B3CFB068);
  }

  if (sub_1B3C99928() != 2 || (sub_1B3C99A78() & 1) != 0)
  {
    (*(v29 + 104))(v12, *v33, v30);
    sub_1B374A32C();
    (*(v29 + 8))(v12, v30);
    sub_1B371B36C(v52, &qword_1EB852048, &qword_1B3CFB068);
  }

  if (sub_1B3C998E8())
  {
    swift_getObjectType();
    v57 = sub_1B3C99558();
    swift_unknownObjectRelease();
    if (v57)
    {
      (*(v29 + 104))(v61, *v33, v30);
      sub_1B3734C0C();
      (*(v29 + 8))(v12, v30);
    }
  }

  if (sub_1B3C99AF8())
  {
    (*(v29 + 104))(v12, *v33, v30);
    sub_1B374A32C();
    (*(v29 + 8))(v12, v30);
    sub_1B371B36C(v52, &qword_1EB852048, &qword_1B3CFB068);
  }

  if (sub_1B3C99AC8())
  {
    (*(v29 + 104))(v12, *MEMORY[0x1E69C2BC8], v30);
    sub_1B374A32C();
    (*(v29 + 8))(v12, v30);
    sub_1B371B36C(v52, &qword_1EB852048, &qword_1B3CFB068);
  }

  return v72;
}

void *sub_1B374C2E4()
{
  v1 = sub_1B3C991F8();
  OUTLINED_FUNCTION_8_0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1B374713C(v3, v4);
}

void sub_1B374C364()
{
  v1 = sub_1B3C986B8();
  OUTLINED_FUNCTION_8_0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  sub_1B3747840(v3, v0 + 24, v4);
}

uint64_t sub_1B374C3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852050, &qword_1B3CFB070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B374C464(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_13();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1B374C4AC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_1B374C4B8()
{
  result = qword_1EB84FA38;
  if (!qword_1EB84FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FA38);
  }

  return result;
}

uint64_t sub_1B374C50C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_13();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_10_4()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1)
{

  return sub_1B3C9C528();
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_45_0(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47()
{

  return MEMORY[0x1EEE6A0A8](v1, v0, v2);
}

uint64_t sub_1B374C7E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1B3C97F38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1B3C97F48();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1B3C97D08();
  __swift_allocate_value_buffer(v10, qword_1EB878C30);
  __swift_project_value_buffer(v10, qword_1EB878C30);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1B3C97F58();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1B3C97CF8();
}

uint64_t sub_1B374CA9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852788, &qword_1B3CFBFA0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v4 = sub_1B3C97F38();
  OUTLINED_FUNCTION_15_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = sub_1B3C98188();
  v12 = OUTLINED_FUNCTION_8_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = sub_1B3C9C598();
  v17 = OUTLINED_FUNCTION_8_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v103 = sub_1B3C97F48();
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852790, &qword_1B3CFBFA8);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852798, &qword_1B3CFBFB0) - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v100 = *(v22 + 72);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1B3CFBB50;
  *(v97 + v23) = 0;
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  v102 = *MEMORY[0x1E6968DF0];
  v101 = *(v6 + 104);
  v101(v10);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_6_2(v20, v24, v25, v15, v10);
  v26 = OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v103);
  v98 = sub_1B3C97C48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v99 = v97 + v23;
  sub_1B3C97C58();
  *(v99 + v100) = 1;
  OUTLINED_FUNCTION_7_9();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v101)(v10, v102, v4);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_6_2(v33, v34, v35, v15, v10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v103);
  v39 = OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v98);
  sub_1B3C97C58();
  *(v99 + 2 * v100) = 2;
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v101)(v10, v102, v4);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_6_2(v42, v43, v44, v15, v10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v103);
  v48 = OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v98);
  sub_1B3C97C58();
  *(v99 + 3 * v100) = 3;
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v101)(v10, v102, v4);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_6_2(v51, v52, v53, v15, v10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v103);
  v57 = OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v98);
  sub_1B3C97C58();
  *(v99 + 4 * v100) = 4;
  OUTLINED_FUNCTION_7_9();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v101)(v10, v102, v4);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_6_2(v60, v61, v62, v15, v10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v103);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v98);
  sub_1B3C97C58();
  *(v97 + v23 + 5 * v100) = 5;
  OUTLINED_FUNCTION_7_9();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v101)(v10, v102, v4);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_6_2(v69, v70, v71, v15, v10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v103);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v98);
  sub_1B3C97C58();
  *(v99 + 6 * v100) = 6;
  OUTLINED_FUNCTION_7_9();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v101)(v10, v102, v4);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_7(v78, v79, v80, v15);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v103);
  v84 = OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v98);
  OUTLINED_FUNCTION_22_0();
  *(v97 + v23 + 7 * v100) = 7;
  OUTLINED_FUNCTION_7_9();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v101)(v10, v102, v4);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_7(v87, v88, v89, v15);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v103);
  v93 = OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v98);
  OUTLINED_FUNCTION_22_0();
  sub_1B3C97C68();
  sub_1B374D9C8();
  return sub_1B3C9C4D8();
}

unint64_t sub_1B374D360(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B3C9D568();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B374D3AC(char a1)
{
  result = 0x6C616E696769726FLL;
  switch(a1)
  {
    case 1:
      result = 0x687475416D726177;
      break;
    case 2:
      result = 0x57426B72617473;
      break;
    case 3:
      result = 0x6C7566726F6C6F63;
      break;
    case 4:
      result = 0x7548796D61657264;
      break;
    case 5:
      result = 0x6F6F436E61627275;
      break;
    case 6:
      result = 0x796874726165;
      break;
    case 7:
      result = 0x766F4364756F6C63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B374D4B4()
{
  result = qword_1EB8526C0;
  if (!qword_1EB8526C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526C0);
  }

  return result;
}

unint64_t sub_1B374D520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B374D360(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B374D550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B374D3AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B374D580()
{
  result = qword_1EB8526C8;
  if (!qword_1EB8526C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526C8);
  }

  return result;
}

unint64_t sub_1B374D5D8()
{
  result = qword_1EB8526D0;
  if (!qword_1EB8526D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526D0);
  }

  return result;
}

unint64_t sub_1B374D630()
{
  result = qword_1EB8526D8;
  if (!qword_1EB8526D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526D8);
  }

  return result;
}

unint64_t sub_1B374D694()
{
  result = qword_1EB8526E0;
  if (!qword_1EB8526E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526E0);
  }

  return result;
}

unint64_t sub_1B374D6E8()
{
  result = qword_1EB8526E8;
  if (!qword_1EB8526E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526E8);
  }

  return result;
}

unint64_t sub_1B374D73C()
{
  result = qword_1EB8526F0;
  if (!qword_1EB8526F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526F0);
  }

  return result;
}

unint64_t sub_1B374D794()
{
  result = qword_1EB8526F8;
  if (!qword_1EB8526F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8526F8);
  }

  return result;
}

unint64_t sub_1B374D874()
{
  result = qword_1EB852700;
  if (!qword_1EB852700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852700);
  }

  return result;
}

uint64_t sub_1B374D8C8(uint64_t a1)
{
  v2 = sub_1B374D874();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1B374D918()
{
  result = qword_1EB852708;
  if (!qword_1EB852708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852708);
  }

  return result;
}

unint64_t sub_1B374D970()
{
  result = qword_1EB852710;
  if (!qword_1EB852710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852710);
  }

  return result;
}

unint64_t sub_1B374D9C8()
{
  result = qword_1EB852718;
  if (!qword_1EB852718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852718);
  }

  return result;
}

uint64_t sub_1B374DA20(uint64_t a1)
{
  v2 = sub_1B374D794();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1B374DAC4()
{
  result = qword_1EB852730;
  if (!qword_1EB852730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852730);
  }

  return result;
}

unint64_t sub_1B374DB1C()
{
  result = qword_1EB852738;
  if (!qword_1EB852738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852738);
  }

  return result;
}

uint64_t sub_1B374DBD0()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878C48);
  __swift_project_value_buffer(v6, qword_1EB878C48);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B374DDC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852770, &qword_1B3CFBF60);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852778, &qword_1B3CFBF68);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B374FBEC();
  sub_1B3C97CA8();
  OUTLINED_FUNCTION_13_0();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852780, &qword_1B3CFBF98);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  OUTLINED_FUNCTION_0_9();
  return sub_1B3C97C78();
}

uint64_t sub_1B374DF70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B374DF4C();
  *a1 = result;
  return result;
}

uint64_t sub_1B374DF9C()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B374E034, v5, v4);
}

uint64_t sub_1B374E034()
{
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_1B3C97B28();
  v3 = sub_1B374D3AC(*(v0 + 112));
  v5 = v4;
  *(v0 + 80) = v4;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  sub_1B374FBEC();
  *v7 = v0;
  v7[1] = sub_1B374E164;
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE2CA70](v8, 0, 0, v3, v5, 0, 1, &unk_1B3CFBF48);
}

uint64_t sub_1B374E164()
{
  OUTLINED_FUNCTION_0_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v2[13] = v0;

  if (v0)
  {
    v6 = v2[8];
    v7 = v2[9];
    v8 = sub_1B374E2D0;
  }

  else
  {

    v6 = v2[8];
    v7 = v2[9];
    v8 = sub_1B374E274;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B374E274()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B374E2D0()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B374E340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1B3C98638();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1B3C9C888();
  v3[8] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B374E438, v6, v5);
}

uint64_t sub_1B374E438()
{
  OUTLINED_FUNCTION_9();
  sub_1B3C97B28();
  *(v0 + 88) = sub_1B374D348(*(v0 + 112));
  sub_1B3C97B28();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B374E500;

  return sub_1B374E77C();
}

uint64_t sub_1B374E500()
{
  OUTLINED_FUNCTION_19_3();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  *v4 = *v1;
  *(v3 + 104) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[10];
  v9 = v2[9];
  if (v0)
  {
    v10 = sub_1B374E70C;
  }

  else
  {
    v10 = sub_1B374E68C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1B374E68C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 88);

  sub_1B3C97B18();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_1B374E70C()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_1B374E77C()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1B3C9A558();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8, &qword_1B3D02E20);
  OUTLINED_FUNCTION_8_0(v4);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  sub_1B3C9C888();
  v0[10] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v0[11] = v6;
  v0[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B374E8B8, v6, v5);
}

uint64_t sub_1B374E8B8()
{
  v38 = v0;
  v1 = v0[9];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1B3C98638();
  v0[13] = v4;
  OUTLINED_FUNCTION_18_3();
  v6 = *(v5 + 16);
  v0[14] = v6;
  v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v4);
  OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  v36 = sub_1B3C98D08();
  v11 = v10;
  sub_1B3713154(v1);
  sub_1B3C987F8();
  v12 = v3;

  v13 = sub_1B3C9A538();
  v14 = sub_1B3C9CAE8();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  if (v15)
  {
    v34 = v0[4];
    v35 = v6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315394;
    v21 = sub_1B3C9C5E8();
    v33 = v16;
    v23 = sub_1B3749364(v21, v22, &v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = sub_1B3749364(v36, v11, &v37);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1B36F3000, v13, v14, "Parameters: { cast: %s, asset: %{public}s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C6EC70](v20, -1, -1);
    v25 = v19;
    v6 = v35;
    MEMORY[0x1B8C6EC70](v25, -1, -1);

    (*(v17 + 8))(v33, v34);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v26 = v0[8];
  v27 = v0[2];
  v0[16] = type metadata accessor for PXEditAppDependencyManager();
  v6(v26, v27, v4);
  OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v4);
  v31 = swift_task_alloc();
  v0[17] = v31;
  *v31 = v0;
  v31[1] = sub_1B374EBA4;

  return sub_1B37BD42C();
}

uint64_t sub_1B374EBA4()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = v2[8];
  *v4 = *v1;
  *(v3 + 144) = v0;

  sub_1B3713154(v5);
  v6 = v2[12];
  v7 = v2[11];
  if (v0)
  {
    v8 = sub_1B374F024;
  }

  else
  {
    v8 = sub_1B374ECF0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1B374ECF0()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = xmmword_1B3CF9810;
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x1E69C4240]) initWithCast_];
  v1(v3, v5, v2);
  OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1B374EE28;

  return sub_1B37BD81C();
}

uint64_t sub_1B374EE28()
{
  OUTLINED_FUNCTION_19_3();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = v2[7];
  *v4 = *v1;
  *(v3 + 168) = v0;

  sub_1B3713154(v5);

  v6 = v2[12];
  v7 = v2[11];
  if (v0)
  {
    v8 = sub_1B374F0B8;
  }

  else
  {
    v8 = sub_1B374EF98;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1B374EF98()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B374F024()
{
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B374F0B8()
{
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B374F14C()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_15_0();
  v85 = v0;
  v86 = v1;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v81 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0, &unk_1B3CF9C60);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  v84 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8, &qword_1B3D02E20);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v80 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v82 = v14;
  v15 = sub_1B3C97F38();
  OUTLINED_FUNCTION_15_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = sub_1B3C98188();
  v23 = OUTLINED_FUNCTION_8_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  v27 = sub_1B3C9C598();
  v28 = OUTLINED_FUNCTION_8_0(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v31 = v30 - v29;
  v32 = sub_1B3C97F48();
  v79 = v32;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v71[1] = v35 - v34;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758, &qword_1B3D02D40);
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  v37 = *(v17 + 104);
  v72 = *MEMORY[0x1E6968DF0];
  v36 = v72;
  v73 = v15;
  v37(v21, v72, v15);
  v74 = v37;
  OUTLINED_FUNCTION_4_7(v31, 0x6E65746E49707041, 0xEA00000000007374, v26);
  OUTLINED_FUNCTION_16_5();
  sub_1B3C98178();
  v37(v21, v36, v15);
  OUTLINED_FUNCTION_4_7(v31, 0x6E65746E49707041, 0xEA00000000007374, v26);
  OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v32);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = sub_1B3C97AE8();
  v75 = v45;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  v49 = OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
  v76 = *MEMORY[0x1E695A500];
  v52 = *(v86 + 104);
  v86 += 104;
  v77 = v52;
  v53 = v81;
  v52(v81);
  sub_1B374FC40();
  v80 = sub_1B3C97B78();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852768, &qword_1B3CFBF30);
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  v54 = v72;
  v56 = v73;
  v55 = v74;
  v74(v21, v72, v73);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_4_7(v31, v57, 0xEF73656C7974532DLL, v26);
  OUTLINED_FUNCTION_16_5();
  sub_1B3C98178();
  v55(v21, v54, v56);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_4_7(v58, v59, 0xEF73656C7974532DLL, v26);
  OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v79);
  v87[0] = 8;
  v63 = OUTLINED_FUNCTION_3_11();
  v64 = v75;
  __swift_storeEnumTagSinglePayload(v63, v65, v66, v75);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v64);
  v77(v53, v76, v85);
  sub_1B374D874();
  sub_1B3C97B58();
  return v80;
}

uint64_t sub_1B374F764@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  __swift_project_value_buffer(v8, a3);
  OUTLINED_FUNCTION_18_3();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t sub_1B374F808()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B374DF9C();
}

uint64_t sub_1B374F8B4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_1B374F998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B374F14C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B374F9C0(uint64_t a1)
{
  v2 = sub_1B374FBEC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1B374F9FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B374FA3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplyStyleIntent.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ApplyStyleIntent.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B374FBEC()
{
  result = qword_1EB852750;
  if (!qword_1EB852750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852750);
  }

  return result;
}

unint64_t sub_1B374FC40()
{
  result = qword_1EB852760;
  if (!qword_1EB852760)
  {
    sub_1B3C98638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852760);
  }

  return result;
}

uint64_t sub_1B374FC98()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B374F8B4;

  return sub_1B374E340(v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_1B3C97C58();
}

unint64_t static OneUpChromeUserDefaultsWrapper.preferredPocketStyle.getter(uint64_t a1)
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B3C9C5A8();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1B3C9D1E8();

    swift_unknownObjectRelease();
  }

  else
  {

    v8 = 0u;
    v9 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1B36FA490(v7);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = OneUpChromeUserDefaultsWrapper.PocketStyle.init(rawValue:)(v6);
  if (v5)
  {
    return 0;
  }

  return result;
}

unint64_t OneUpChromeUserDefaultsWrapper.PocketStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B374FF88(uint64_t a1, uint64_t a2)
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1B3C9C5A8();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1B3C9D1E8();

    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0u;
    v10 = 0u;
  }

  v8[0] = v9;
  v8[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1B36FA490(v8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = OneUpChromeUserDefaultsWrapper.BarElementPosition.init(rawValue:)(v7);
  if (v6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B37500E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = OneUpChromeUserDefaultsWrapper.PocketStyle.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t OneUpChromeUserDefaultsWrapper.BarElementPosition.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B375012C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = OneUpChromeUserDefaultsWrapper.BarElementPosition.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id OneUpChromeUserDefaultsWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpChromeUserDefaultsWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpChromeUserDefaultsWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OneUpChromeUserDefaultsWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpChromeUserDefaultsWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B3750248()
{
  result = qword_1EB8527A0;
  if (!qword_1EB8527A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8527A0);
  }

  return result;
}

unint64_t sub_1B37502A0()
{
  result = qword_1EB8527A8;
  if (!qword_1EB8527A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8527A8);
  }

  return result;
}

uint64_t sub_1B37503B8(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1B3750400(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v5 = v4;
  v371 = a4;
  ObjectType = swift_getObjectType();
  *&v363 = sub_1B3C9D068();
  OUTLINED_FUNCTION_0();
  v362 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_24(v11);
  v359 = sub_1B3C9D028();
  OUTLINED_FUNCTION_0();
  v358 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_24(v14);
  v372 = sub_1B3C9D0C8();
  OUTLINED_FUNCTION_0();
  v370 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_24(v17);
  sub_1B3C9D128();
  OUTLINED_FUNCTION_0();
  v378 = v19;
  v379 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v360 = &v355 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v380 = &v355 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v377 = &v355 - v24;
  swift_unknownObjectWeakInit();
  LODWORD(v375) = a3;
  if (a3)
  {
    v25 = sub_1B3C9C5A8();
    v26 = PULocalizedString(v25);

    v366 = sub_1B3C9C5E8();
    v28 = v27;

    if (a2)
    {
      v29 = a1 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(a2) & 0xF;
      }

      if (v29)
      {
        v30 = sub_1B3C9C5A8();
        v31 = PULocalizedString(v30);

        sub_1B3C9C5E8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810, &qword_1B3CFCD60);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1B3CF6CE0;
        *(v32 + 56) = MEMORY[0x1E69E6158];
        *(v32 + 64) = sub_1B3753408();
        *(v32 + 32) = a1;
        *(v32 + 40) = a2;
        v33 = sub_1B3C9C5F8();
        OUTLINED_FUNCTION_3_12(v33, v34);
LABEL_12:

        goto LABEL_18;
      }
    }

    v44 = sub_1B3C9C5A8();
    v45 = PULocalizedString(v44);
  }

  else
  {
    v35 = sub_1B3C9C5A8();
    v36 = PULocalizedString(v35);

    v366 = sub_1B3C9C5E8();
    v28 = v37;

    if (a2)
    {
      v38 = a1 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v38 = HIBYTE(a2) & 0xF;
      }

      if (v38)
      {
        v39 = sub_1B3C9C5A8();
        v40 = PULocalizedString(v39);

        sub_1B3C9C5E8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810, &qword_1B3CFCD60);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1B3CF6CE0;
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 64) = sub_1B3753408();
        *(v41 + 32) = a1;
        *(v41 + 40) = a2;
        v42 = sub_1B3C9C5F8();
        OUTLINED_FUNCTION_3_12(v42, v43);
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_12_3();
    v44 = sub_1B3C9C5A8();
    v45 = PULocalizedString(v44);
  }

  v46 = v45;

  v47 = sub_1B3C9C5E8();
  OUTLINED_FUNCTION_3_12(v47, v48);

LABEL_18:
  v49 = [objc_opt_self() currentDevice];
  v50 = [v49 userInterfaceIdiom];

  v381 = v50;
  if (v50 == 5)
  {
    v51 = 49.0;
  }

  else
  {
    v51 = 32.0;
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:v51 scale:{v51, 3.0}];
  sub_1B3710718(0, &qword_1EB852800, 0x1E69A8A00);
  v53 = PXPlatformAppBundleIdentifier();
  v54 = sub_1B3C9C5E8();
  v56 = v55;

  v57 = sub_1B3752924(v54, v56);
  v374 = v52;
  v58 = [v57 prepareImageForDescriptor_];

  if (v58 && (v59 = [v58 CGImage], v58, v59))
  {
    v60 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v59 scale:0 orientation:3.0];
  }

  else
  {
    v60 = 0;
  }

  v61 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v62 = OBJC_IVAR___PUPickerOnboardingHeaderView_platterView;
  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_platterView) = v61;
  v368 = OBJC_IVAR___PUPickerOnboardingHeaderView_contentView;
  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_contentView) = v61;
  v63 = objc_opt_self();
  v64 = v61;
  v65 = [v63 quaternarySystemFillColor];
  [v64 setBackgroundColor_];

  OUTLINED_FUNCTION_15_6(*(v5 + v62));
  [*(v5 + v62) setClipsToBounds_];
  v66 = [*(v5 + v62) layer];
  v67 = MEMORY[0x1B8C6D660]();
  v68 = 10.0;
  if (v67)
  {
    v68 = 16.0;
  }

  [v66 setCornerRadius_];

  v69 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v373 = v60;
  v70 = [v69 initWithImage_];
  v71 = OBJC_IVAR___PUPickerOnboardingHeaderView_icon;
  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_icon) = v70;
  OUTLINED_FUNCTION_15_6(v70);
  LODWORD(v72) = 1144750080;
  [*(v5 + v71) setContentHuggingPriority:0 forAxis:v72];
  LODWORD(v73) = 1148846080;
  [*(v5 + v71) setContentCompressionResistancePriority:0 forAxis:v73];
  [*(v5 + v71) setContentMode_];
  v376 = v71;
  v74 = OUTLINED_FUNCTION_12_3();
  sub_1B38676DC(v74, v75, v76);
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    v77 = v28;
    v78 = v376;
    v79 = [*(v5 + v376) layer];
    v80 = [v63 blackColor];
    v81 = [v80 CGColor];

    [v79 setShadowColor_];
    v82 = [*(v5 + v78) layer];
    LODWORD(v83) = 1041865114;
    [v82 setShadowOpacity_];

    v84 = [*(v5 + v78) layer];
    [v84 setShadowOffset_];

    v85 = *(v5 + v78);
    v28 = v77;
    v86 = [v85 layer];
    [v86 setShadowRadius_];
  }

  v87 = sub_1B3752998(v366, v28);

  v88 = OBJC_IVAR___PUPickerOnboardingHeaderView_title;
  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_title) = v87;
  v89 = v87;
  v90 = [v63 labelColor];
  [v89 setTextColor_];

  v91 = *(v5 + v88);
  v92 = objc_opt_self();
  v93 = v91;
  v94 = OUTLINED_FUNCTION_10_5();
  v96 = [v94 v95];
  [v93 setFont_];

  v366 = v88;
  LODWORD(v97) = 1148846080;
  [*(v5 + v88) setContentHuggingPriority:1 forAxis:v97];
  v98 = sub_1B3752998(v364, v365);

  v99 = OBJC_IVAR___PUPickerOnboardingHeaderView_subtitle;
  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_subtitle) = v98;
  v100 = v98;
  v101 = [v63 secondaryLabelColor];
  [v100 setTextColor_];

  v102 = *MEMORY[0x1E69DDD80];
  v103 = *(v5 + v99);
  v104 = [v92 preferredFontForTextStyle_];
  [v103 setFont_];

  LODWORD(v105) = 1148846080;
  [*(v5 + v99) setContentHuggingPriority:1 forAxis:v105];
  OUTLINED_FUNCTION_8_5();
  v356 = v63;
  if (v106)
  {
    v107 = [v63 secondaryLabelColor];
    v108 = objc_opt_self();
    v116 = [v108 configurationWithHierarchicalColor_];

    v117 = v377;
    sub_1B3C9D0D8();
    v109 = OUTLINED_FUNCTION_5_9();
    v110(v109);
    sub_1B3C9D018();
    (*(v358 + 104))(v357, *MEMORY[0x1E69DC508], v359);
    sub_1B3C9D038();
    v111 = [v63 systemBackgroundColor];
    sub_1B3C9D0A8();
    v112 = [v108 configurationWithPointSize:6 weight:8.0];
    v113 = [v112 configurationByApplyingConfiguration_];

    sub_1B3C9CFF8();
  }

  else
  {
    v114 = [v63 tertiaryLabelColor];
    v115 = objc_opt_self();
    v116 = [v115 configurationWithHierarchicalColor_];

    v117 = v377;
    sub_1B3C9D108();
    sub_1B3C9D078();
    v118 = [v115 configurationWithPointSize:6 weight:15.0];
    v119 = [v118 configurationByApplyingConfiguration_];

    sub_1B3C9CFF8();
    v120 = OUTLINED_FUNCTION_5_9();
    v121(v120);
    sub_1B3C9D018();
  }

  sub_1B3710718(0, &unk_1EB84FE20, 0x1E69DCAB8);
  sub_1B36F9850(0x6B72616D78, 0xE500000000000000);
  sub_1B3C9D0F8();
  v122 = sub_1B3710718(0, &unk_1EB84FE10, 0x1E69DC738);
  v370 = *(v378 + 16);
  v370(v380, v117, v379);
  v372 = v371;
  v371 = v122;
  v123 = sub_1B3C9D138();
  v124 = OBJC_IVAR___PUPickerOnboardingHeaderView_closeButton;
  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_closeButton) = v123;
  [v123 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v125) = 1148846080;
  [*(v5 + v124) setContentHuggingPriority:0 forAxis:v125];
  LODWORD(v126) = 1148846080;
  [*(v5 + v124) setContentCompressionResistancePriority:0 forAxis:v126];
  [*(v5 + v124) setPreferredBehavioralStyle_];
  v127 = v368;
  [*&v368[v5] addSubview_];
  [*&v127[v5] addSubview_];
  [*&v127[v5] addSubview_];
  OUTLINED_FUNCTION_8_5();
  if (v106)
  {
    [*(v5 + v124) setHidden_];
    v128 = [*(v5 + v124) layer];
    LODWORD(v129) = 1.0;
    [v128 setShadowOpacity_];

    v130 = [*(v5 + v124) layer];
    [v130 setShadowOffset_];

    v131 = [*(v5 + v124) layer];
    [v131 setShadowRadius_];

    if (v375)
    {
LABEL_37:
      *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_separatorView) = 0;
      *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_separatorHeightConstraint) = 0;
      *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_learnMoreButton) = 0;
      goto LABEL_40;
    }

    v132 = 0;
    *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_separatorView) = 0;
    v133 = v127;
  }

  else
  {
    if (v375)
    {
      goto LABEL_37;
    }

    v134 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    OUTLINED_FUNCTION_15_6(v134);
    v133 = v127;
    v135 = [v134 layer];
    [v135 setAllowsEdgeAntialiasing_];

    v136 = [v356 separatorColor];
    [v134 setBackgroundColor_];

    *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_separatorView) = v134;
    v137 = *&v133[v5];
    v138 = v134;
    [v137 addSubview_];
    v139 = [v138 heightAnchor];
    v132 = [v139 constraintEqualToConstant_];
  }

  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_separatorHeightConstraint) = v132;
  v140 = v380;
  sub_1B3C9D108();
  sub_1B3C9D078();
  (*(v362 + 104))(v361, *MEMORY[0x1E69DC530], v363);
  sub_1B3C9D088();
  v141 = sub_1B3C9C5A8();
  v142 = PULocalizedString(v141);

  sub_1B3C9C5E8();
  sub_1B3C9D118();
  v143 = v379;
  v370(v360, v140, v379);
  v144 = sub_1B3C9D138();
  OUTLINED_FUNCTION_15_6(v144);
  [v144 setContentHorizontalAlignment_];
  LODWORD(v145) = 1144750080;
  [v144 setContentHuggingPriority:1 forAxis:v145];
  *(v5 + OBJC_IVAR___PUPickerOnboardingHeaderView_learnMoreButton) = v144;
  [*&v133[v5] addSubview_];
  (*(v378 + 8))(v140, v143);
LABEL_40:
  v146 = type metadata accessor for PickerOnboardingHeaderView();
  v385.receiver = v5;
  v385.super_class = v146;
  v366 = v146;
  v147 = objc_msgSendSuper2(&v385, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v148 = OBJC_IVAR___PUPickerOnboardingHeaderView_platterView;
  v149 = *&v147[OBJC_IVAR___PUPickerOnboardingHeaderView_platterView];
  v150 = v147;
  [v150 addSubview_];
  ObjectType = OBJC_IVAR___PUPickerOnboardingHeaderView_closeButton;
  [v150 addSubview_];
  v370 = OBJC_IVAR___PUPickerOnboardingHeaderView_learnMoreButton;
  v151 = *(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_learnMoreButton);
  if (v151)
  {
    sub_1B3710718(0, &unk_1EB851C40, 0x1E69DC628);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v152 = v151;
    v153 = sub_1B3C9CFE8();
    [v152 addAction:v153 forControlEvents:0x2000];
  }

  OUTLINED_FUNCTION_8_5();
  if (v106)
  {
    v154 = 0.77;
  }

  else
  {
    v154 = 1.0;
  }

  v155 = v154 * 12.0;
  v156 = [v150 bottomAnchor];

  v157 = [*&v147[v148] &selRef_collectionListForSection_ + 5];
  v158 = [v156 constraintEqualToAnchor:v157 constant:v154 * 12.0];

  type metadata accessor for UILayoutPriority(0);
  v383 = 1065353216;
  v384 = 1112014848;
  sub_1B37533A0();
  sub_1B3C9A578();
  LODWORD(v159) = v382[0];
  [v158 setPriority_];
  v380 = objc_opt_self();
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v160 = v148;
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_1B3CFC160;
  v162 = [*&v147[v160] topAnchor];
  v163 = [v150 &selRef_toolControllerUneditedCompositionController_];

  v164 = [v162 constraintEqualToAnchor_];
  *(v161 + 32) = v164;
  *(v161 + 40) = v158;
  v165 = *&v147[v160];
  v371 = v158;
  v166 = [v165 leadingAnchor];
  v167 = [v150 safeAreaLayoutGuide];

  v168 = [v167 &selRef_layout_shouldInitiallyZoomToFillForItemAtIndexPath_contentSize_viewportSize_ + 1];
  v169 = [v166 constraintEqualToAnchor:v168 constant:20.0];

  *(v161 + 48) = v169;
  v170 = [v150 safeAreaLayoutGuide];

  v171 = [v170 trailingAnchor];
  v365 = v160;
  v364 = v147;
  v172 = [*&v147[v160] trailingAnchor];
  v173 = [v171 constraintEqualToAnchor:v172 constant:20.0];

  *(v161 + 56) = v173;
  v174 = OBJC_IVAR___PUPickerOnboardingHeaderView_subtitle;
  v175 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_subtitle) topAnchor];
  v176 = OBJC_IVAR___PUPickerOnboardingHeaderView_title;
  v177 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_title) bottomAnchor];
  v178 = OUTLINED_FUNCTION_10_5();
  v180 = [v178 v179];

  *(v161 + 64) = v180;
  v181 = [*(v150 + v174) leadingAnchor];
  v182 = [*(v150 + v176) leadingAnchor];
  v183 = OUTLINED_FUNCTION_10_5();
  v185 = [v183 v184];

  *(v161 + 72) = v185;
  v369 = v174;
  v186 = [*(v150 + v174) trailingAnchor];
  v368 = v176;
  v187 = [*(v150 + v176) trailingAnchor];
  v188 = OUTLINED_FUNCTION_10_5();
  v190 = [v188 v189];

  *(v161 + 80) = v190;
  v376 = sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
  v191 = sub_1B3C9C778();

  [v380 activateConstraints_];

  v192 = swift_allocObject();
  v193 = v154 * 10.0;
  v363 = xmmword_1B3CFC170;
  *(v192 + 16) = xmmword_1B3CFC170;
  v194 = ObjectType;
  OUTLINED_FUNCTION_8_5();
  if (v106)
  {
    v196 = [v195 leadingAnchor];
    v197 = v365;
    v198 = v364;
    v199 = [*&v364[v365] &selRef_layout_shouldInitiallyZoomToFillForItemAtIndexPath_contentSize_viewportSize_ + 1];
    v200 = [v196 constraintEqualToAnchor:v199 constant:-5.0];

    *(v192 + 32) = v200;
    v201 = [*(v150 + v194) topAnchor];
    v202 = [*(v198 + v197) topAnchor];
    v203 = [v201 constraintEqualToAnchor:v202 constant:-5.0];

    *(v192 + 40) = v203;
    v204 = OBJC_IVAR___PUPickerOnboardingHeaderView_icon;
    v205 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_icon) leadingAnchor];
    v206 = OBJC_IVAR___PUPickerOnboardingHeaderView_contentView;
    v207 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_contentView) leadingAnchor];
    v208 = OUTLINED_FUNCTION_1_9();
    v210 = [v208 v209];

    *(v192 + 48) = v210;
    v211 = [*(v150 + v204) topAnchor];
    v212 = [OUTLINED_FUNCTION_7_10() topAnchor];
    v213 = OUTLINED_FUNCTION_1_9();
    v215 = [v213 v214];

    *(v192 + 56) = v215;
    v216 = [*(v150 + v206) bottomAnchor];
    v217 = [*(v150 + v204) bottomAnchor];
    v218 = OUTLINED_FUNCTION_2_13();
    v220 = [v218 v219];

    *(v192 + 64) = v220;
    v221 = v368;
    v222 = [*&v368[v150] leadingAnchor];
    v223 = [*(v150 + v204) trailingAnchor];
    v224 = OUTLINED_FUNCTION_2_13();
    v226 = [v224 v225];

    *(v192 + 72) = v226;
    v227 = [*&v221[v150] topAnchor];
    v228 = [OUTLINED_FUNCTION_7_10() topAnchor];
    v229 = OUTLINED_FUNCTION_2_13();
    v231 = [v229 v230];

    *(v192 + 80) = v231;
    v232 = [*(v150 + v206) trailingAnchor];
    v233 = [*&v221[v150] trailingAnchor];
    v234 = OUTLINED_FUNCTION_2_13();
    v236 = [v234 v235];

    *(v192 + 88) = v236;
    v237 = sub_1B3C9C778();

    [v380 activateConstraints_];

    sub_1B3752D9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856820, &unk_1B3CFC1E0);
    v280 = swift_allocObject();
    *(v280 + 16) = xmmword_1B3CF6CE0;
    v238 = sub_1B3C9A5B8();
    v239 = MEMORY[0x1E69DC0F8];
    *(v280 + 32) = v238;
    *(v280 + 40) = v239;
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1B3710718(0, &unk_1EB84F790, 0x1E69DD250);
    OUTLINED_FUNCTION_2_13();
    sub_1B3C9CF48();
    swift_unknownObjectRelease();

    v264 = v221;
  }

  else
  {
    v240 = [v195 widthAnchor];
    v241 = [v240 constraintEqualToConstant_];

    *(v192 + 32) = v241;
    v242 = [*(v150 + v194) topAnchor];
    v243 = OBJC_IVAR___PUPickerOnboardingHeaderView_contentView;
    v244 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_contentView) topAnchor];
    v245 = OUTLINED_FUNCTION_2_13();
    v247 = [v245 v246];

    *(v192 + 40) = v247;
    v248 = [*(v150 + v194) trailingAnchor];
    v249 = [OUTLINED_FUNCTION_11_4() &selRef_toolbarItemsChanged + 4];
    v250 = OUTLINED_FUNCTION_2_13();
    v252 = [v250 v251];

    *(v192 + 48) = v252;
    v253 = OBJC_IVAR___PUPickerOnboardingHeaderView_icon;
    v254 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_icon) leadingAnchor];
    v255 = [OUTLINED_FUNCTION_11_4() leadingAnchor];
    v256 = OUTLINED_FUNCTION_2_13();
    v258 = [v256 v257];

    *(v192 + 56) = v258;
    v259 = [*(v150 + v253) topAnchor];
    v260 = [OUTLINED_FUNCTION_11_4() topAnchor];
    v261 = OUTLINED_FUNCTION_2_13();
    v263 = [v261 v262];

    *(v192 + 64) = v263;
    v264 = v368;
    v265 = [*&v368[v150] leadingAnchor];
    v266 = [*(v150 + v253) trailingAnchor];
    v267 = OUTLINED_FUNCTION_1_9();
    v269 = [v267 v268];

    *(v192 + 72) = v269;
    v270 = [*&v264[v150] topAnchor];
    v271 = [OUTLINED_FUNCTION_11_4() topAnchor];
    v272 = OUTLINED_FUNCTION_1_9();
    v274 = [v272 v273];

    *(v192 + 80) = v274;
    v275 = [*(v150 + v243) trailingAnchor];
    v276 = [OUTLINED_FUNCTION_7_10() trailingAnchor];
    v277 = OUTLINED_FUNCTION_2_13();
    v279 = [v277 v278];

    *(v192 + 88) = v279;
    v280 = sub_1B3C9C778();

    [v380 activateConstraints_];
  }

  v281 = v154 * 11.0;
  v282 = *(v370 + v150);
  if (v282)
  {
    v283 = *(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_separatorView);
    if (v283)
    {
      v284 = *(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_separatorHeightConstraint);
      if (v284)
      {
        v285 = swift_allocObject();
        *(v285 + 16) = v363;
        v375 = v282;
        v286 = v283;
        v368 = v284;
        v287 = [v286 topAnchor];
        v288 = OUTLINED_FUNCTION_14_5();
        v289 = [v287 &selRef_currentPreviewImage + 6];

        *(v285 + 32) = v289;
        v290 = [v286 leadingAnchor];
        v291 = [*&v264[v150] leadingAnchor];
        v292 = [v290 constraintEqualToAnchor_];

        *(v285 + 40) = v292;
        v369 = OBJC_IVAR___PUPickerOnboardingHeaderView_contentView;
        v293 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_contentView) trailingAnchor];
        v294 = v286;
        v370 = v286;
        v295 = [v286 trailingAnchor];
        v296 = [v293 constraintEqualToAnchor_];

        v297 = v368;
        *(v285 + 48) = v296;
        *(v285 + 56) = v297;
        v298 = v375;
        v299 = v297;
        v300 = [v298 leadingAnchor];
        v301 = [*&v264[v150] leadingAnchor];
        v302 = OUTLINED_FUNCTION_13_7();
        v304 = [v302 v303];

        *(v285 + 64) = v304;
        v305 = [v298 topAnchor];
        v306 = [v294 bottomAnchor];
        v307 = OUTLINED_FUNCTION_13_7();
        v309 = [v307 v308];

        *(v285 + 72) = v309;
        v310 = v369;
        v311 = [*(v150 + v369) trailingAnchor];
        v312 = [v298 trailingAnchor];
        v313 = OUTLINED_FUNCTION_13_7();
        v315 = [v313 v314];

        *(v285 + 80) = v315;
        v316 = [*(v150 + v310) bottomAnchor];
        v317 = [v298 bottomAnchor];

        v318 = OUTLINED_FUNCTION_13_7();
        v320 = [v318 v319];

        *(v285 + 88) = v320;
        v321 = sub_1B3C9C778();

        [v380 activateConstraints_];

        goto LABEL_55;
      }
    }

    v322 = swift_allocObject();
    *(v322 + 16) = xmmword_1B3CFC180;
    v299 = v282;
    v323 = [v299 leadingAnchor];
    v324 = [OUTLINED_FUNCTION_7_10() leadingAnchor];
    v325 = OUTLINED_FUNCTION_2_13();
    v327 = [v325 v326];

    *(v322 + 32) = v327;
    v328 = [v299 topAnchor];
    v329 = OUTLINED_FUNCTION_14_5();
    v330 = OUTLINED_FUNCTION_2_13();
    v332 = [v330 v331];

    *(v322 + 40) = v332;
    v333 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_contentView) bottomAnchor];
    v334 = [v299 bottomAnchor];

    v335 = OUTLINED_FUNCTION_2_13();
    v337 = [v335 v336];

    *(v322 + 48) = v337;
  }

  else
  {
    v338 = OBJC_IVAR___PUPickerOnboardingHeaderView_contentView;
    v339 = [*(v150 + OBJC_IVAR___PUPickerOnboardingHeaderView_contentView) bottomAnchor];
    v340 = [*(v150 + v369) bottomAnchor];
    v341 = [v339 constraintEqualToAnchor:v340 constant:v281];

    LODWORD(v342) = 1144750080;
    [v341 setPriority_];
    v343 = swift_allocObject();
    *(v343 + 16) = xmmword_1B3CFB680;
    *(v343 + 32) = v341;
    v344 = *(v150 + v338);
    v299 = v341;
    v345 = [v344 bottomAnchor];
    v346 = [OUTLINED_FUNCTION_7_10() bottomAnchor];
    v347 = OUTLINED_FUNCTION_2_13();
    v349 = [v347 v348];

    *(v343 + 40) = v349;
  }

  v321 = sub_1B3C9C778();

  [v380 activateConstraints_];
LABEL_55:

  OUTLINED_FUNCTION_8_5();
  v350 = v373;
  if (v106)
  {
    v382[3] = v366;
    v382[0] = v150;
    v351 = objc_allocWithZone(MEMORY[0x1E69DCAA0]);
    v352 = v150;
    v353 = sub_1B375325C(v382, sel_hovering_);
    [v352 addGestureRecognizer_];

    (*(v378 + 8))(v377, v379);
  }

  else
  {
    (*(v378 + 8))(v377, v379);
  }

  return v150;
}

id sub_1B3752924(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B3C9C5A8();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

id sub_1B3752998(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1B38709CC(a1, a2, v4);
  [v4 setNumberOfLines_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  return v4;
}

void sub_1B3752A40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 pickerOnboardingHeaderViewWantsToLearnMoreAboutDataAccess_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B3752AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B3752D9C();
  }
}

void sub_1B3752B8C()
{
  swift_unknownObjectWeakInit();
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B3752C14(double a1, double a2, double a3, double a4)
{
  LODWORD(a3) = 1148846080;
  LODWORD(a4) = 1112014848;
  return [v4 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{a3, a4}];
}

id sub_1B3752C88(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PickerOnboardingHeaderView();
  objc_msgSendSuper2(&v8, sel_didMoveToWindow);
  v2 = [v1 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 screen];

    [v4 scale];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  result = *&v1[OBJC_IVAR___PUPickerOnboardingHeaderView_separatorHeightConstraint];
  if (result)
  {
    return [result setConstant_];
  }

  return result;
}

void sub_1B3752D9C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B3753244;
  *(v4 + 24) = v3;
  v7[4] = sub_1B375324C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B37D35C4;
  v7[3] = &block_descriptor_15;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 performAsCurrentTraitCollection_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1B3752F0C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1B3C9C5A8();
  v4 = [v2 px:v3 colorNamed:?];

  v5 = [*(a1 + OBJC_IVAR___PUPickerOnboardingHeaderView_closeButton) layer];
  if (v4)
  {
    v6 = [v4 CGColor];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setShadowColor_];
}

char *sub_1B3753010(void *a1)
{
  result = [a1 state];
  v3 = result - 1;
  if ((result - 1) <= 2)
  {
    v4 = *(v1 + OBJC_IVAR___PUPickerOnboardingHeaderView_closeButton);

    return [v4 setHidden_];
  }

  return result;
}

id sub_1B3753120(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PickerOnboardingHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B375325C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1B3C9D688();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

unint64_t sub_1B37533A0()
{
  result = qword_1EB852808;
  if (!qword_1EB852808)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852808);
  }

  return result;
}

unint64_t sub_1B3753408()
{
  result = qword_1EB8572B0;
  if (!qword_1EB8572B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8572B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t result, uint64_t a2)
{
  *(v2 - 336) = result;
  *(v2 - 328) = a2;
  return result;
}

id OUTLINED_FUNCTION_14_5()
{
  v4 = *(v1 + *(v2 - 296));

  return [v4 (v0 + 3365)];
}

id OUTLINED_FUNCTION_15_6(void *a1)
{

  return [a1 (v1 + 1466)];
}

unint64_t ScaledVideoOffsetAdjustmentPolicyResult.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B3753518@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ScaledVideoOffsetAdjustmentPolicyResult.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B3753578(uint64_t result)
{
  if (result)
  {
    *(v1 + OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_shouldPreventAdjustments) = 1;
  }

  return result;
}

uint64_t sub_1B37535B8(uint64_t result)
{
  if (result != 8)
  {
    *(v1 + OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_shouldPreventAdjustments) = 0;
  }

  return result;
}

uint64_t sub_1B3753684(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_currentInsetMode);
  *(v1 + OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_currentInsetMode) = result;
  if (*(v1 + OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_currentInsetMode) != v2)
  {
    *(v1 + OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_shouldPreventAdjustments) = 0;
  }

  return result;
}

id OneUpScaledVideoOffsetAdjustmentPolicy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpScaledVideoOffsetAdjustmentPolicy.init()()
{
  *&v0[OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_currentInsetMode] = 0;
  v0[OBJC_IVAR___PUOneUpScaledVideoOffsetAdjustmentPolicy_shouldPreventAdjustments] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpScaledVideoOffsetAdjustmentPolicy();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OneUpScaledVideoOffsetAdjustmentPolicy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpScaledVideoOffsetAdjustmentPolicy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B37537B4()
{
  result = qword_1EB852828;
  if (!qword_1EB852828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852828);
  }

  return result;
}

id sub_1B3753934()
{
  result = PLStoryGetLog();
  if (result)
  {
    qword_1EB878C60 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3753964(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v7 & ~[v1 availableCurationLengths]) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B37EAC50(0, *(v5 + 16) + 1, 1);
        }

        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B37EAC50(v8 > 1, v9 + 1, 1);
        }

        *(v5 + 16) = v9 + 1;
        *(v5 + 8 * v9 + 32) = v6;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    sub_1B37EAC20(0, v10, 0);
    v11 = 32;
    v12 = v3;
    do
    {
      v13 = PFStoryOverallDurationKindFromPHMemoryCurationLength();
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B37EAC20(v14 > 1, v15 + 1, 1);
      }

      *(v3 + 16) = v15 + 1;
      *(v3 + 8 * v15 + 32) = v13;
      v11 += 8;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

void *OneUpDelayedUpdater.__allocating_init(isReady:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853620, &qword_1B3CFC310);
  v4[2] = sub_1B3C9C4D8();
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

void *OneUpDelayedUpdater.init(isReady:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853620, &qword_1B3CFC310);
  v2[2] = sub_1B3C9C4D8();
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void sub_1B3753BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + 16);
  sub_1B371F940();
  *(v5 + 16) = v9;
  swift_endAccess();
  sub_1B3753D10();
}

void sub_1B3753D10()
{
  if ((*(v0 + 24))())
  {

    sub_1B3753D5C();
  }
}

void sub_1B3753D5C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(v1 + 56) + ((v7 << 10) | (16 * v8)));

    v9(v10);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852830, &qword_1B3CFC358);
      sub_1B3C9C4E8();
      swift_endAccess();
      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t OneUpDelayedUpdater.deinit()
{

  return v0;
}

uint64_t OneUpDelayedUpdater.__deallocating_deinit()
{
  OneUpDelayedUpdater.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

unint64_t PUWallpaperPosterEditorHint.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B3753FB8()
{
  result = qword_1EB852838;
  if (!qword_1EB852838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852838);
  }

  return result;
}

unint64_t sub_1B375400C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PUWallpaperPosterEditorHint.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1B3754050(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970, &unk_1B3CFB660);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v86 - v11;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabelKind] = 0;
  v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_isCallServicesEnvironment] = 0;
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_animatedGlyphView;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_animatedGlyphView] = 0;
  v14 = OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabel;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabel] = 0;
  v15 = OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_stateController;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_stateController] = 0;
  v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_showsBaseState] = 1;
  v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_isAnimating] = 0;
  v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_visible] = 0;
  v16 = &v4[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_text];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  result = [objc_opt_self() pu_PhotosUIFrameworkBundle];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v18 = result;
  OUTLINED_FUNCTION_10_6();
  v24 = sub_1B3803690(v19, v20, v21, v22, v23);

  if (v24)
  {
    sub_1B3C98038();

    v25 = sub_1B3C98068();
    v26 = 0;
  }

  else
  {
    v25 = sub_1B3C98068();
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v26, 1, v25);
  v27 = sub_1B3C9C4D8();
  v28 = objc_allocWithZone(MEMORY[0x1E69DD3B0]);
  result = sub_1B3803590(v12, v27);
  if (!result)
  {
    goto LABEL_10;
  }

  v29 = result;
  v30 = result;
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = *&v5[v13];
  *&v5[v13] = v29;
  v32 = v30;

  v33 = [v32 layer];
  v34 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];

  v35 = *&v5[v15];
  *&v5[v15] = v34;
  v36 = v34;

  v37 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v37 setFont_];

  [v37 setTextAlignment_];
  [v37 setNumberOfLines_];
  v39 = [objc_opt_self() whiteColor];
  [v37 setTextColor_];

  LODWORD(v40) = 1148846080;
  [v37 setContentHuggingPriority:0 forAxis:v40];
  v41 = *&v5[v14];
  *&v5[v14] = v37;
  v42 = v37;

  v43 = type metadata accessor for PUPosterAnimatedHintLabel();
  v88.receiver = v5;
  v88.super_class = v43;
  v44 = objc_msgSendSuper2(&v88, sel_initWithFrame_, a1, a2, a3, a4);
  if (v36)
  {
    [v36 setDelegate_];
  }

  v45 = v44;
  [v45 addSubview_];
  [v45 addSubview_];
  [v45 setUserInteractionEnabled_];
  v46 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B3CFC170;
  v48 = [v32 leadingAnchor];
  v49 = [v45 leadingAnchor];
  v87 = v36;
  v50 = v49;
  v51 = OUTLINED_FUNCTION_2_14();

  *(v47 + 32) = v51;
  v52 = [v32 centerYAnchor];
  v53 = [v45 centerYAnchor];

  v54 = OUTLINED_FUNCTION_2_14();
  *(v47 + 40) = v54;
  v55 = [v32 widthAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v47 + 48) = v56;
  v57 = [v32 widthAnchor];
  v58 = [v32 heightAnchor];
  v59 = OUTLINED_FUNCTION_2_14();

  *(v47 + 56) = v59;
  v60 = [v42 leadingAnchor];
  v61 = [v32 trailingAnchor];

  v62 = OUTLINED_FUNCTION_2_14();
  *(v47 + 64) = v62;
  v63 = [v42 trailingAnchor];
  v64 = [v45 trailingAnchor];

  v65 = OUTLINED_FUNCTION_2_14();
  *(v47 + 72) = v65;
  v66 = [v42 topAnchor];
  v67 = [v45 topAnchor];

  v68 = OUTLINED_FUNCTION_2_14();
  *(v47 + 80) = v68;
  v69 = [v42 bottomAnchor];

  v70 = [v45 bottomAnchor];
  v71 = OUTLINED_FUNCTION_2_14();

  *(v47 + 88) = v71;
  sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
  v72 = sub_1B3C9C778();

  [v46 activateConstraints_];

  v73 = sub_1B3710718(0, &qword_1EB852900, 0x1E6979378);
  v74 = sub_1B3C9C5E8();
  v76 = sub_1B3754A40(v74, v75);
  v77 = sub_1B3C9C5A8();
  [v76 setName_];

  v78 = sub_1B3C9C9C8();
  [v76 setValue:v78 forKey:*MEMORY[0x1E6979BA8]];

  v79 = [v45 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360, &unk_1B3CFB670);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1B3CF6CE0;
  *(v80 + 56) = v73;
  *(v80 + 32) = v76;
  v81 = v76;
  sub_1B37566EC(v80, v79);

  v82 = [v45 layer];
  [v82 setMasksToBounds_];

  v83 = [v45 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852908, &qword_1B3CFC4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFC360;
  *(inited + 32) = 0x726F66736E617274;
  *(inited + 40) = 0xE90000000000006DLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x7974696361706FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 80) = 0x737265746C6966;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852910, &unk_1B3CFC4C0);
  v85 = sub_1B3C9C4D8();
  sub_1B375675C(v85, v83);

  sub_1B375507C(0, 0);
  return v45;
}

id sub_1B3754A40(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B3C9C5A8();

  v4 = OUTLINED_FUNCTION_11_5();
  v6 = [v4 v5];

  return v6;
}

void sub_1B3754AD4()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabelKind) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_isCallServicesEnvironment) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_animatedGlyphView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_stateController) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_showsBaseState) = 1;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_visible) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B3754C58()
{
  sub_1B3755CA8();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_isAnimating) = 1;

  sub_1B37562FC();
}

void sub_1B3754D2C()
{
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabelKind) == 3)
  {
    sub_1B3755CA8();
  }
}

void sub_1B3754D48(char a1, char a2, uint64_t a3, void (**a4)(void))
{
  v7 = a1 & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  if (*(a3 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_visible) == v7)
  {
    _Block_copy(a4);
    a4[2](a4);

    _Block_release(a4);
  }

  else
  {
    *(a3 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_visible) = v7;
    v9 = objc_opt_self();
    _Block_copy(a4);
    [v9 begin];
    [v9 setDisableActions_];
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B37568D0;
    *(v10 + 24) = v8;
    v12[4] = sub_1B3753CE8;
    v12[5] = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1B370C014;
    v12[3] = &block_descriptor_16;
    v11 = _Block_copy(v12);

    [v9 setCompletionBlock_];
    _Block_release(v11);
    sub_1B375507C(v7, a2 & 1);
    [v9 commit];

    _Block_release(a4);
  }
}

void sub_1B3754FBC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PUPosterAnimatedHintLabel();
  objc_msgSendSuper2(&v3, sel_didMoveToWindow);
  v1 = [v0 window];
  v2 = v1;
  if (v1)
  {
  }

  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_isAnimating) = v2 != 0;
  sub_1B37562FC();
}

void sub_1B375507C(int a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (a1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 1.34;
  }

  [v2 setAlpha_];
  v102.m11 = -2.31584178e77;
  *&v102.m12 = 0x80000001B3D12070;
  v8 = sub_1B3C9C5E8();
  MEMORY[0x1B8C69C10](v8);

  v9 = OUTLINED_FUNCTION_7_11();
  v10 = sub_1B3C98328();
  v11 = sub_1B3C9C5A8();
  [v9 setValue:v10 forKeyPath:v11];

  v12 = OUTLINED_FUNCTION_7_11();
  CATransform3DMakeScale(&v102, v7, v7, 1.0);
  [v12 setTransform_];

  if ((a2 & 1) == 0)
  {

    return;
  }

  sub_1B3710718(0, &qword_1EB8528F0, 0x1E69794A8);
  v13 = sub_1B3755B70(0x7974696361706FLL, 0xE700000000000000);
  [v13 setMass_];
  [v13 setStiffness_];
  [v13 setDamping_];
  v14 = v13;
  v15 = sub_1B3C98328();
  [v14 setToValue_];

  v16 = OUTLINED_FUNCTION_7_11();
  v17 = [v16 presentationLayer];

  v100 = a1;
  if (!v17)
  {
    memset(&v102, 0, 32);
LABEL_18:
    sub_1B36FA490(&v102);
    goto LABEL_19;
  }

  v18 = sub_1B3C9C5A8();
  v19 = [v17 0x1FB3B7178];

  if (v19)
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_0_11();
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = MEMORY[0x1E69E7DE0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v26 = MEMORY[0x1E69E7DE0];
    if ((a1 & 1) == 0)
    {
      v26 = MEMORY[0x1E69E63B0];
    }

    v27 = 1.0;
    if (a1)
    {
      v27 = 0.0;
    }

    v102.m14 = v26;
    v102.m11 = v27;
    goto LABEL_24;
  }

  v22 = OUTLINED_FUNCTION_6_10();
  *(v23 - 256) = v21;
  OUTLINED_FUNCTION_4_9(v22);
  if (!v24)
  {
    v25 = 0;
    goto LABEL_25;
  }

LABEL_24:
  __swift_project_boxed_opaque_existential_0Tm(&v102, *&v102.m14);
  OUTLINED_FUNCTION_15_0();
  v29 = v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  (*(v29 + 16))(&v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  OUTLINED_FUNCTION_9_4();
  v25 = sub_1B3C9D688();
  v33 = OUTLINED_FUNCTION_9_4();
  v34(v33);
  __swift_destroy_boxed_opaque_existential_0Tm(&v102);
LABEL_25:
  [v14 setFromValue_];

  swift_unknownObjectRelease();
  [v14 copy];
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v35 = v101[0];
  sub_1B3756610(0xD00000000000002ELL, 0x80000001B3D12070, v35);

  v36 = v35;
  v37 = sub_1B3C98328();
  [v36 setToValue_];

  v38 = OUTLINED_FUNCTION_7_11();
  v39 = [v38 presentationLayer];

  if (!v39)
  {

    memset(&v102, 0, 32);
    v42 = v100;
LABEL_34:
    sub_1B36FA490(&v102);
    goto LABEL_35;
  }

  v40 = sub_1B3C9C5A8();

  v41 = [v39 valueForKeyPath_];

  v42 = v100;
  if (v41)
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_0_11();
  if (!v43)
  {
    goto LABEL_34;
  }

  v44 = MEMORY[0x1E69E7DE0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v49 = MEMORY[0x1E69E7DE0];
    if ((v42 & 1) == 0)
    {
      v49 = MEMORY[0x1E69E63B0];
    }

    v50 = 0.0;
    if (v42)
    {
      v50 = 10.0;
    }

    v102.m14 = v49;
    v102.m11 = v50;
    goto LABEL_40;
  }

  v45 = OUTLINED_FUNCTION_6_10();
  *(v46 - 256) = v44;
  OUTLINED_FUNCTION_4_9(v45);
  if (!v47)
  {
    v48 = 0;
    goto LABEL_41;
  }

LABEL_40:
  m14 = v102.m14;
  __swift_project_boxed_opaque_existential_0Tm(&v102, *&v102.m14);
  OUTLINED_FUNCTION_15_0();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = OUTLINED_FUNCTION_3_13(v55, v99);
  v57(v56);
  v48 = sub_1B3C9D688();
  (*(v53 + 8))(v39, COERCE_CGFLOAT(*&m14));
  __swift_destroy_boxed_opaque_existential_0Tm(&v102);
LABEL_41:
  v58 = 0xEF656C6163732E6DLL;
  [v36 setFromValue_];

  swift_unknownObjectRelease();
  v59 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1B3CFB680;
  *(v60 + 32) = v14;
  *(v60 + 40) = v36;
  v61 = v14;
  v99 = v36;
  sub_1B3756668(v60, v59);
  v62 = v59;
  [v61 settlingDuration];
  [v62 setDuration_];

  v63 = OUTLINED_FUNCTION_7_11();
  sub_1B387BD6C(v62, 0xD000000000000014, 0x80000001B3D120A0, v63);

  v64 = OUTLINED_FUNCTION_9_4();
  v66 = sub_1B3755B70(v64, v65);
  [v66 setMass_];
  [v66 setStiffness_];
  [v66 setDamping_];
  [v66 setAllowsOverdamping_];
  v67 = v66;
  [v67 settlingDuration];
  [v67 setDuration_];
  v68 = v67;
  v69 = OUTLINED_FUNCTION_7_11();
  v70 = [v69 presentationLayer];

  if (!v70)
  {
    memset(&v102, 0, 32);
    v72 = v100;
LABEL_50:
    sub_1B36FA490(&v102);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_9_4();
  v71 = sub_1B3C9C5A8();
  v58 = [v70 valueForKeyPath_];

  if (v58)
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_1_10();
  }

  v72 = v100;
  OUTLINED_FUNCTION_0_11();
  if (!v73)
  {
    goto LABEL_50;
  }

  v74 = MEMORY[0x1E69E7DE0];
  if (swift_dynamicCast())
  {
    v75 = OUTLINED_FUNCTION_6_10();
    *(v76 - 256) = v74;
    OUTLINED_FUNCTION_4_9(v75);
    if (!v77)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_51:
  v78 = MEMORY[0x1E69E7DE0];
  if ((v72 & 1) == 0)
  {
    v78 = MEMORY[0x1E69E63B0];
  }

  v79 = 1.0;
  if (v72)
  {
    v79 = 1.34;
  }

  v102.m14 = v78;
  v102.m11 = v79;
LABEL_56:
  v80 = v102.m14;
  __swift_project_boxed_opaque_existential_0Tm(&v102, *&v102.m14);
  OUTLINED_FUNCTION_15_0();
  v82 = v81;
  MEMORY[0x1EEE9AC00](v83);
  v85 = OUTLINED_FUNCTION_3_13(v84, v99);
  v86(v85);
  sub_1B3C9D688();
  (*(v82 + 8))(v58, COERCE_CGFLOAT(*&v80));
  __swift_destroy_boxed_opaque_existential_0Tm(&v102);
LABEL_57:
  v87 = OUTLINED_FUNCTION_11_5();
  [v87 v88];
  swift_unknownObjectRelease();
  v89 = sub_1B3C98328();
  v90 = OUTLINED_FUNCTION_11_5();
  [v90 v91];

  v92 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v93) = 1.0;
  LODWORD(v94) = 1.0;
  v95 = [v92 initWithControlPoints__:0.0 :{0.0, v93, v94}];
  v96 = OUTLINED_FUNCTION_11_5();
  [v96 v97];

  v98 = [v3 layer];
  sub_1B387BD6C(v68, 0x696E41656C616373, 0xEE006E6F6974616DLL, v98);
}

id sub_1B3755B70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1B3C9C5A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

void sub_1B3755BE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabel);
  if (v1)
  {
    sub_1B371B158();
    v2 = v1;
    v3 = sub_1B3C9D1D8();
    sub_1B383C9E4(v3, v4, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B3755CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970, &unk_1B3CFB660);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v61 - v3;
  v5 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabelKind];
  switch(v5)
  {
    case 1:
      v15 = sub_1B3C9C5A8();
      v16 = PULocalizedString(v15);

      v8 = sub_1B3C9C5E8();
      v10 = v17;

      v11 = 0xEC00000077656976;
      break;
    case 2:
      v12 = sub_1B3C9C5A8();
      v13 = PULocalizedString(v12);

      v8 = sub_1B3C9C5E8();
      v10 = v14;

      v11 = 0xEB00000000706F72;
      break;
    case 3:
      v6 = sub_1B3C9C5A8();
      v7 = PULocalizedString(v6);

      v8 = sub_1B3C9C5E8();
      v10 = v9;

      v11 = 0x80000001B3D12000;
      break;
    default:
      v11 = 0;
      v8 = 0;
      v10 = 0xE000000000000000;
      break;
  }

  v18 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_text];
  *v18 = v8;
  v18[1] = v10;

  sub_1B3755BE0();
  if (!v11)
  {
    return;
  }

  v19 = OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_animatedGlyphView;
  v20 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_animatedGlyphView];
  if (v20)
  {
    [v20 removeFromSuperview];
  }

  v21 = [objc_opt_self() pu_PhotosUIFrameworkBundle];
  if (!v21)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  OUTLINED_FUNCTION_10_6();
  v28 = sub_1B37567EC(v23, v24, v25, v26, v27);

  if (v28)
  {
    sub_1B3C98038();

    v29 = sub_1B3C98068();
    v30 = 0;
  }

  else
  {
    v29 = sub_1B3C98068();
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v30, 1, v29);
  v31 = sub_1B3C9C4D8();
  v32 = objc_allocWithZone(MEMORY[0x1E69DD3B0]);
  v33 = sub_1B3803590(v4, v31);
  if (!v33)
  {
    goto LABEL_22;
  }

  v34 = v33;
  v35 = v33;
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v36 = *&v1[v19];
  *&v1[v19] = v34;
  v37 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B3CFC370;
  v39 = [v37 leadingAnchor];
  v40 = [v1 leadingAnchor];
  v41 = OUTLINED_FUNCTION_8_6();

  *(v38 + 32) = v41;
  v42 = [v37 centerYAnchor];
  v43 = [v1 centerYAnchor];
  v44 = OUTLINED_FUNCTION_8_6();

  *(v38 + 40) = v44;
  v45 = [v37 widthAnchor];
  v46 = [v45 constraintEqualToConstant_];

  *(v38 + 48) = v46;
  v47 = [v37 widthAnchor];
  v48 = [v37 heightAnchor];
  v49 = OUTLINED_FUNCTION_8_6();

  *(v38 + 56) = v49;
  v50 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_hintLabel];
  if (!v50)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v51 = objc_opt_self();
  v52 = v50;

  v53 = [v52 leadingAnchor];

  v54 = [v37 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v38 + 64) = v55;
  sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
  v56 = sub_1B3C9C778();

  [v51 activateConstraints_];

  v1[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_showsBaseState] = 1;
  v57 = [v37 layer];

  v58 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];
  if (v58)
  {
    v59 = v58;
    [v59 setDelegate_];
  }

  v60 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_stateController];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_stateController] = v58;
}

void sub_1B37562FC()
{
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_isAnimating) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_animatedGlyphView);
    if (!v1)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (sub_1B375686C(0x79614C20746F6F52, 0xEA00000000007265, v1))
    {
      sub_1B3C9D1E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (!*(&v12 + 1))
    {
      sub_1B36FA490(v13);
      return;
    }

    sub_1B3710718(0, &qword_1EB8528E8, 0x1E6979398);
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_showsBaseState;
      if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_showsBaseState) == 1)
      {
        v3 = sub_1B3C9C5A8();
        v4 = [v10 stateWithName_];

        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25PUPosterAnimatedHintLabel_stateController);
      if (v6)
      {
        v7 = v6;
        v8 = v10;
        LODWORD(v9) = 1.0;
        [v7 setState:v5 ofLayer:v8 transitionSpeed:v9];

        *(v0 + v2) = (*(v0 + v2) & 1) == 0;
        return;
      }

LABEL_16:
      __break(1u);
    }
  }
}

id sub_1B37564BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUPosterAnimatedHintLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B3756584(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B37562FC();
  }
}

void sub_1B3756610(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();
  [a3 setKeyPath_];
}

void sub_1B3756668(uint64_t a1, void *a2)
{
  sub_1B3710718(0, &qword_1EB8528F8, 0x1E6979300);
  v3 = sub_1B3C9C778();

  [a2 setAnimations_];
}

void sub_1B37566EC(uint64_t a1, void *a2)
{
  v3 = sub_1B3C9C778();

  [a2 setFilters_];
}

void sub_1B375675C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852910, &unk_1B3CFC4C0);
  v3 = sub_1B3C9C4A8();

  [a2 setActions_];
}

id sub_1B37567EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1B3C9C5A8();
  v7 = sub_1B3C9C5A8();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

id sub_1B375686C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();

  v5 = [a3 publishedObjectWithName_];

  return v5;
}

id OUTLINED_FUNCTION_2_14()
{

  return [v1 (v0 + 3941)];
}

id OUTLINED_FUNCTION_7_11()
{

  return [v0 (v1 + 2168)];
}

id OUTLINED_FUNCTION_8_6()
{

  return [v0 (v2 + 3941)];
}

uint64_t sub_1B3756990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = sub_1B3C98188();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = sub_1B3C9C598();
  v15 = OUTLINED_FUNCTION_8_0(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v16 = sub_1B3C97F48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_14_6();
  sub_1B3C98178();
  (*(v4 + 104))(v8, *MEMORY[0x1E6968DF0], v2);
  v18 = OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_6_2(v18, v19, v20, v13, v8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  return sub_1B3C97CF8();
}

uint64_t sub_1B3756BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852788, &qword_1B3CFBFA0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v91 = &v76 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_8();
  v6 = v5;
  v7 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_8();
  v12 = v11;
  v13 = sub_1B3C98188();
  v14 = OUTLINED_FUNCTION_8_0(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_8();
  v16 = v15;
  v17 = sub_1B3C9C598();
  v18 = OUTLINED_FUNCTION_8_0(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_8();
  v93 = sub_1B3C97F48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_8();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8529D0, &qword_1B3CFC920);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8529D8, &unk_1B3CFC928);
  v23 = *(v22 - 8);
  v88 = *(v23 + 72);
  v24 = v22 - 8;
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B3CFC4D0;
  v92 = v26 + v25;
  v80 = *(v24 + 56);
  v81 = v26;
  v89 = v24;
  *(v26 + v25) = 0;
  OUTLINED_FUNCTION_1_11();
  sub_1B3C9C538();
  v90 = "TION_RATE_PARAMETER_TITLE";
  sub_1B3C98178();
  v85 = *MEMORY[0x1E6968DF0];
  v86 = *(v9 + 104);
  v87 = v9 + 104;
  v79 = v7;
  v86(v12);
  v82 = v21;
  OUTLINED_FUNCTION_8_7();
  v27 = v16;
  v28 = v12;
  OUTLINED_FUNCTION_6_2(v29, v30, v31, v16, v12);
  v83 = v6;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v93);
  v84 = sub_1B3C97C48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = v92;
  sub_1B3C97C58();
  v40 = v88;
  v78 = (v39 + v88);
  v80 = *(v24 + 56);
  *v78 = 1;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_14_6();
  v76 = v27;
  sub_1B3C98178();
  v77 = v28;
  v41 = v85;
  v42 = v86;
  (v86)(v28, v85, v7);
  v43 = OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_6_2(v43, v44, v45, v27, v28);
  OUTLINED_FUNCTION_5_2();
  v46 = v93;
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v93);
  OUTLINED_FUNCTION_5_2();
  v50 = v84;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v84);
  sub_1B3C97C58();
  v80 = *(v89 + 56);
  *(v92 + 2 * v40) = 2;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_14_6();
  v54 = v76;
  sub_1B3C98178();
  v55 = v77;
  v56 = v79;
  v42(v77, v41, v79);
  v57 = OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_6_2(v57, v58, v59, v54, v55);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v46);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v50);
  sub_1B3C97C58();
  *(v92 + 3 * v88) = 3;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_14_6();
  sub_1B3C98178();
  (v86)(v55, v85, v56);
  v66 = OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_6_2(v66, v67, v68, v54, v55);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v93);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v84);
  sub_1B3C97C58();
  sub_1B3C97C68();
  sub_1B375772C();
  return sub_1B3C9C4D8();
}

unint64_t sub_1B3757188(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B3C9D568();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B37571D4(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x6563696F76;
      break;
    case 2:
      result = 0x6F6964757473;
      break;
    case 3:
      result = 0x6172656D6163;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B375725C()
{
  result = qword_1EB852918;
  if (!qword_1EB852918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852918);
  }

  return result;
}

unint64_t sub_1B37572C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B3757188(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B37572F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37571D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B3757328()
{
  result = qword_1EB852920;
  if (!qword_1EB852920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852920);
  }

  return result;
}

unint64_t sub_1B3757380()
{
  result = qword_1EB852928;
  if (!qword_1EB852928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852928);
  }

  return result;
}

unint64_t sub_1B37573D8()
{
  result = qword_1EB852930;
  if (!qword_1EB852930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852930);
  }

  return result;
}

unint64_t sub_1B3757430()
{
  result = qword_1EB852938;
  if (!qword_1EB852938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852938);
  }

  return result;
}

unint64_t sub_1B3757484()
{
  result = qword_1EB852940;
  if (!qword_1EB852940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852940);
  }

  return result;
}

unint64_t sub_1B37574D8()
{
  result = qword_1EB852948;
  if (!qword_1EB852948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852948);
  }

  return result;
}

unint64_t sub_1B3757530()
{
  result = qword_1EB852950;
  if (!qword_1EB852950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852950);
  }

  return result;
}

unint64_t sub_1B37575D8()
{
  result = qword_1EB852958;
  if (!qword_1EB852958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852958);
  }

  return result;
}

uint64_t sub_1B375762C(uint64_t a1)
{
  v2 = sub_1B37575D8();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1B375767C()
{
  result = qword_1EB852960;
  if (!qword_1EB852960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852960);
  }

  return result;
}

unint64_t sub_1B37576D4()
{
  result = qword_1EB852968;
  if (!qword_1EB852968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852968);
  }

  return result;
}

unint64_t sub_1B375772C()
{
  result = qword_1EB852970;
  if (!qword_1EB852970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852970);
  }

  return result;
}

uint64_t sub_1B3757784(uint64_t a1)
{
  v2 = sub_1B3757530();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1B3757828()
{
  result = qword_1EB852988;
  if (!qword_1EB852988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852988);
  }

  return result;
}

unint64_t sub_1B3757880()
{
  result = qword_1EB852990;
  if (!qword_1EB852990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852990);
  }

  return result;
}

uint64_t sub_1B37578F0()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878C68);
  __swift_project_value_buffer(v6, qword_1EB878C68);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B3757AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8529B8, &qword_1B3CFC8D8);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8529C0, &qword_1B3CFC8E0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B3758DC0();
  sub_1B3C97CA8();
  OUTLINED_FUNCTION_1_11();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8529C8, &unk_1B3CFC910);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  OUTLINED_FUNCTION_8_7();
  return sub_1B3C97C78();
}

uint64_t sub_1B3757C74()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B3757D08, v4, v3);
}

uint64_t sub_1B3757D08(uint64_t a1)
{
  *(v1 + 16) = *(v1 + 32);
  sub_1B3C97B28();
  v2 = 0xE800000000000000;
  v3 = 0x647261646E617473;
  switch(*(v1 + 88))
  {
    case 1:
      v2 = 0xE500000000000000;
      v3 = 0x6563696F76;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x6F6964757473;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x6172656D6163;
      break;
    default:
      break;
  }

  *(v1 + 64) = v2;
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  sub_1B3758DC0();
  *v4 = v1;
  v4[1] = sub_1B3757E7C;
  v5 = *(v1 + 24);

  return MEMORY[0x1EEE2CA70](v5, 0, 0, v3, v2, 0, 1, &unk_1B3CFC8D0);
}

uint64_t sub_1B3757E7C()
{
  OUTLINED_FUNCTION_0_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v2[10] = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_1B3757F8C;
  }

  else
  {

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_1B3713994;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B3757F8C()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B3757FF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8, &qword_1B3D02E20);
  v2[4] = swift_task_alloc();
  v3 = sub_1B3C9A558();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1B3C9C888();
  v2[8] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B3758120, v5, v4);
}

uint64_t sub_1B3758120(uint64_t a1)
{
  v25 = v1;
  sub_1B3C987F8();

  v2 = sub_1B3C9A538();
  v3 = sub_1B3C9CAE8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136446210;
    sub_1B3C97B28();
    v6 = 0xE800000000000000;
    v7 = 0x647261646E617473;
    switch(*(v1 + 113))
    {
      case 1:
        v6 = 0xE500000000000000;
        v7 = 0x6563696F76;
        break;
      case 2:
        v6 = 0xE600000000000000;
        v7 = 0x6F6964757473;
        break;
      case 3:
        v6 = 0xE600000000000000;
        v7 = 0x6172656D6163;
        break;
      default:
        break;
    }

    v12 = *(v1 + 48);
    v11 = *(v1 + 56);
    v13 = *(v1 + 40);
    v14 = sub_1B3749364(v7, v6, &v24);

    *(v4 + 4) = v14;
    _os_log_impl(&dword_1B36F3000, v2, v3, "Parameters: { audioMix: %{public}s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x1B8C6EC70](v5, -1, -1);
    MEMORY[0x1B8C6EC70](v4, -1, -1);

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v9 = *(v1 + 48);
    v8 = *(v1 + 56);
    v10 = *(v1 + 40);

    (*(v9 + 8))(v8, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v15 = swift_allocObject();
  *(v1 + 88) = v15;
  *(v15 + 16) = xmmword_1B3CF9810;
  sub_1B3C97B28();
  v16 = **(&unk_1E7B736C0 + *(v1 + 112));
  v17 = [objc_allocWithZone(MEMORY[0x1E69C41C8]) initWithAudioMix_];

  *(v15 + 32) = v17;
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  type metadata accessor for PXEditAppDependencyManager();
  v22 = swift_task_alloc();
  *(v1 + 96) = v22;
  *v22 = v1;
  v22[1] = sub_1B3758424;

  return sub_1B37BD81C();
}

uint64_t sub_1B3758424()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  sub_1B3713154(v3);

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1B3758628;
  }

  else
  {
    v6 = sub_1B37585A0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1B37585A0()
{

  sub_1B3C97B18();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B3758628()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B3758698()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v50 = v1;
  v51 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v49 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0, &unk_1B3CF9C60);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - v11;
  v12 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  v19 = sub_1B3C98188();
  v20 = OUTLINED_FUNCTION_8_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v23 = v22 - v21;
  v24 = sub_1B3C9C598();
  v25 = OUTLINED_FUNCTION_8_0(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v26 = sub_1B3C97F48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8529B0, &qword_1B3CFC8B8);
  OUTLINED_FUNCTION_1_11();
  sub_1B3C9C538();
  sub_1B3C98178();
  v28 = *MEMORY[0x1E6968DF0];
  v29 = *(v14 + 104);
  v29(v18, v28, v12);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_6_2(v30, v31, v32, v23, v18);
  OUTLINED_FUNCTION_1_11();
  sub_1B3C9C538();
  sub_1B3C98178();
  v29(v18, v28, v12);
  v33 = v46;
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_6_2(v34, v35, v36, v23, v18);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v26);
  v52[0] = 4;
  v37 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  (*(v50 + 104))(v49, *MEMORY[0x1E695A500], v51);
  sub_1B37575D8();
  return sub_1B3C97B58();
}

uint64_t sub_1B3758A9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB84FFC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878C68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B3758B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B3757C74();
}

uint64_t sub_1B3758BE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3758698();
  *a1 = result;
  return result;
}

uint64_t sub_1B3758C10(uint64_t a1)
{
  v2 = sub_1B3758DC0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t getEnumTagSinglePayload for OneUpChromeDebugBorderView.TitlePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SetAudioMixIntent.AudioMix(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B3758DC0()
{
  result = qword_1EB8529A8;
  if (!qword_1EB8529A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8529A8);
  }

  return result;
}

uint64_t sub_1B3758E14()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B374F8B4;

  return sub_1B3757FF4(v3, v0);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_1B3C9C538();
}

unint64_t sub_1B3758EF8()
{
  result = qword_1EB8529E0;
  if (!qword_1EB8529E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8529E0);
  }

  return result;
}

unint64_t sub_1B3758F50()
{
  result = qword_1EB8529E8;
  if (!qword_1EB8529E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8529E8);
  }

  return result;
}

unint64_t sub_1B3758FF4()
{
  result = qword_1EB8529F0;
  if (!qword_1EB8529F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8529F0);
  }

  return result;
}

uint64_t sub_1B3759048()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878C80);
  __swift_project_value_buffer(v6, qword_1EB878C80);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B3759234()
{
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  v0[2] = sub_1B3C9C888();
  v0[3] = sub_1B3C9C878();
  v3 = swift_task_alloc();
  v0[4] = v3;
  sub_1B3758FF4();
  *v3 = v0;
  v3[1] = sub_1B37120C8;

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3CFCA30);
}

uint64_t sub_1B3759328(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8, &qword_1B3D02E20);
  v1[3] = swift_task_alloc();
  sub_1B3C9C888();
  v1[4] = sub_1B3C9C878();
  v3 = sub_1B3C9C848();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B37593F8, v3, v2);
}

uint64_t sub_1B37593F8()
{
  OUTLINED_FUNCTION_0_0();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_1B3CF9810;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E69C4208]) init];
  v3 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  type metadata accessor for PXEditAppDependencyManager();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1B375950C;

  return sub_1B37BD81C();
}

uint64_t sub_1B375950C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = v2[3];
  *v4 = *v1;
  *(v3 + 72) = v0;

  sub_1B3713154(v5);

  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {
    v8 = sub_1B3759684;
  }

  else
  {
    v8 = sub_1B37125A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1B3759684()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37596E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB84FFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878C80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B3759790()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3712F14;

  return sub_1B3759234();
}

uint64_t sub_1B3759828(uint64_t a1)
{
  v2 = sub_1B3758FF4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B3759878()
{
  result = qword_1EB8529F8;
  if (!qword_1EB8529F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8529F8);
  }

  return result;
}

unint64_t sub_1B37598D0()
{
  result = qword_1EB852A00;
  if (!qword_1EB852A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852A00);
  }

  return result;
}

uint64_t sub_1B3759940()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878C98);
  __swift_project_value_buffer(v6, qword_1EB878C98);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B3759B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A40, &qword_1B3CFCBA8);
  v1 = OUTLINED_FUNCTION_8_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A48, &qword_1B3CFCBB0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B375AEC8();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A50, &unk_1B3CFCBE0);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}

uint64_t sub_1B3759CD8()
{
  OUTLINED_FUNCTION_0_0();
  v0[4] = v1;
  v0[5] = v2;
  sub_1B3C9C888();
  v0[6] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[7] = v4;
  v0[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B3759D6C, v4, v3);
}

uint64_t sub_1B3759D6C(uint64_t a1)
{
  v1[2] = v1[5];
  sub_1B3C97B28();
  v2 = *(v1[3] + 16);

  v3 = swift_task_alloc();
  v1[9] = v3;
  sub_1B375AEC8();
  *v3 = v1;
  v3[1] = sub_1B3759E78;
  v4 = v1[4];

  return MEMORY[0x1EEE2CA70](v4, 0, 0, 0, 0, v2, 0, &unk_1B3CFCBA0);
}

uint64_t sub_1B3759E78()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[10] = v0;

  v7 = v3[7];
  v8 = v3[8];
  if (v0)
  {
    v9 = sub_1B3759FD0;
  }

  else
  {
    v9 = sub_1B3759F74;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B3759F74()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B3759FD0()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B375A02C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1B3C9C888();
  v2[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B375A0C4, v4, v3);
}

uint64_t sub_1B375A0C4()
{
  OUTLINED_FUNCTION_0_0();
  sub_1B3C97B28();
  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1B375A164;

  return sub_1B375A338();
}

uint64_t sub_1B375A164()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B375A2D0;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B375A268;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B375A268()
{
  OUTLINED_FUNCTION_0_0();

  sub_1B3C97B18();
  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B375A2D0()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B375A338()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v1;
  v2 = sub_1B3C9A558();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  sub_1B3C9C888();
  v0[6] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[7] = v4;
  v0[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B375A428, v4, v3);
}

uint64_t sub_1B375A428()
{
  v18 = v0;
  v1 = sub_1B3C987E8();
  v0[9] = v1;
  if (v1 >> 62)
  {
    sub_1B375AE84();

    sub_1B3C9D4D8();
  }

  else
  {

    sub_1B3C9D6B8();
    sub_1B375AE84();
  }

  v2 = sub_1B3C98D28();
  v4 = v3;

  sub_1B3C987F8();

  v5 = sub_1B3C9A538();
  v6 = sub_1B3C9CAE8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v16 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    v13 = sub_1B3749364(v2, v4, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_1B36F3000, v5, v6, "Parameters: { assets: %{public}s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1B8C6EC70](v12, -1, -1);
    MEMORY[0x1B8C6EC70](v11, -1, -1);

    (*(v8 + 8))(v16, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  type metadata accessor for PXEditAppDependencyManager();
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_1B375A6E0;

  return sub_1B37BDC18();
}

uint64_t sub_1B375A6E0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1B375A884;
  }

  else
  {
    v7 = sub_1B375A814;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B375A814()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B375A884()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B375A8F4()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v31 = v1;
  v32 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v30 = v3 - v2;
  v4 = sub_1B3C97C18();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v29 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8, &unk_1B3CF9A80);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - v10;
  v11 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = sub_1B3C98188();
  v19 = OUTLINED_FUNCTION_8_0(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v20 = sub_1B3C9C598();
  v21 = OUTLINED_FUNCTION_8_0(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v22 = sub_1B3C97F48();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A28, &unk_1B3CFCB80);
  sub_1B3C9C538();
  sub_1B3C98178();
  v23 = *MEMORY[0x1E6968DF0];
  v24 = *(v13 + 104);
  v24(v17, v23, v11);
  OUTLINED_FUNCTION_4_10();
  sub_1B3C9C538();
  sub_1B3C98178();
  v24(v17, v23, v11);
  v25 = v28;
  OUTLINED_FUNCTION_4_10();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v22);
  v33 = 0;
  sub_1B3C97C08();
  (*(v31 + 104))(v30, *MEMORY[0x1E695A500], v32);
  sub_1B370ED54(&qword_1EB852A30, &qword_1EB852A38, &qword_1B3D0BBF0, MEMORY[0x1E69E6340]);
  sub_1B374FC40();
  return sub_1B3C97BD8();
}

uint64_t sub_1B375ACC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB84FFD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878C98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B375AD70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B3759CD8();
}

uint64_t sub_1B375AE10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B375A8F4();
  *a1 = result;
  return result;
}

uint64_t sub_1B375AE38(uint64_t a1)
{
  v2 = sub_1B375AEC8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B375AE84()
{
  result = qword_1EB852A18;
  if (!qword_1EB852A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB852A18);
  }

  return result;
}

unint64_t sub_1B375AEC8()
{
  result = qword_1EB852A20;
  if (!qword_1EB852A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852A20);
  }

  return result;
}

uint64_t sub_1B375AF1C()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B375A02C(v3, v0);
}

uint64_t sub_1B375AFB4(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for PickerOptionsView(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A58, &qword_1B3CFCC40);
  swift_storeEnumTagMultiPayload();
  *(v9 + v7[7]) = a1;
  *(v9 + v7[8]) = a2;
  v10 = v9 + v7[9];
  v20[1] = 0;
  v21 = 1;
  v11 = a1;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A60, &qword_1B3CFCC48);
  sub_1B3C9BC88();
  v13 = v23;
  v14 = v24;
  *v10 = v22;
  v10[8] = v13;
  *(v10 + 2) = v14;
  v15 = (v9 + v7[10]);
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B375E59C(&qword_1EB852A68, type metadata accessor for PickerAdditionalSelectionState, &unk_1B3D07110);
  v16 = a3;
  *v15 = sub_1B3C9AA58();
  v15[1] = v17;
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A70, &qword_1B3CFCC50));
  return sub_1B3C9B088();
}

id sub_1B375B1D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerOptionsViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B375B22C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerOptionsViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PickerOptionsView(uint64_t a1)
{
  result = qword_1EB852A80;
  if (!qword_1EB852A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B375B2D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AB8, &qword_1B3CFCCC8);
  sub_1B370ED54(&qword_1EB852AC0, &qword_1EB852AB8, &qword_1B3CFCCC8, MEMORY[0x1E6981F48]);
  return sub_1B3C9B708();
}

uint64_t sub_1B375B374@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AC8, &qword_1B3CFCCD0);
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v94 = v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AD0, &qword_1B3CFCCD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = v84 - v8;
  v9 = type metadata accessor for PickerOptionsView(0);
  v87 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v91 = v10;
  v86 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AD8, &qword_1B3CFCCE0);
  MEMORY[0x1EEE9AC00](v89);
  v93 = v84 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AE0, &qword_1B3CFCCE8);
  v92 = *(v96 - 1);
  MEMORY[0x1EEE9AC00](v96);
  v90 = v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AE8, &qword_1B3CFCCF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v100 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v84 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AF0, &qword_1B3CFCCF8);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v84 - v20;
  v107 = a1;
  v22 = sub_1B3C9C5A8();
  v23 = PXLocalizedString();

  v24 = sub_1B3C9C5E8();
  v26 = v25;

  *&v108 = v24;
  *(&v108 + 1) = v26;
  v109 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852AF8, &qword_1B3CFCD00);
  sub_1B370ED54(&qword_1EB852B00, &qword_1EB852AF8, &qword_1B3CFCD00, MEMORY[0x1E6981F48]);
  v106 = v21;
  sub_1B3C9BEB8();
  v88 = v9;
  v28 = *(a1 + *(v9 + 20));
  v29 = [v28 allowsDownscaling];
  v30 = MEMORY[0x1E697C418];
  v101 = v3;
  v105 = v17;
  if (v29)
  {
    v84[1] = v84;
    MEMORY[0x1EEE9AC00](v29);
    v31 = sub_1B3C9C5A8();
    v32 = PXLocalizedString();

    v33 = sub_1B3C9C5E8();
    v35 = v34;

    v115 = v33;
    v116 = v35;
    v117 = 0;
    v118 = v27;
    sub_1B375CB1C(a1, &v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B30, &qword_1B3CFCD28);
    v84[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B38, &qword_1B3CFCD30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B40, &qword_1B3CFCD38);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B48, &qword_1B3CFCD40);
    v38 = sub_1B3C9AEC8();
    v85 = v28;
    v39 = v38;
    v40 = sub_1B370ED54(&qword_1EB852B50, &qword_1EB852B48, &qword_1B3CFCD40, MEMORY[0x1E697D690]);
    v111 = v37;
    v112 = v39;
    v113 = v40;
    v114 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v111 = v36;
    v112 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1B375DCB4();
    v42 = v93;
    sub_1B3C9BEC8();
    v43 = v86;
    sub_1B375DD6C(a1, v86);
    v44 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v45 = swift_allocObject();
    sub_1B375DDD0(v43, v45 + v44);
    v46 = (v42 + *(v89 + 36));
    *v46 = sub_1B375DE34;
    v46[1] = v45;
    v46[2] = 0;
    v46[3] = 0;
    LOBYTE(v108) = sub_1B3822CFC();
    sub_1B375DD6C(a1, v43);
    v17 = v105;
    v47 = swift_allocObject() + v44;
    v28 = v85;
    sub_1B375DDD0(v43, v47);
    sub_1B375DFC0();
    sub_1B375E1B0();
    v48 = v90;
    sub_1B3C9BAB8();
    v3 = v101;

    sub_1B36FB21C(v42, &qword_1EB852AD8, &qword_1B3CFCCE0);
    v49 = v96;
    (*(v92 + 32))(v17, v48, v96);
    v50 = 0;
    v51 = v49;
  }

  else
  {
    v50 = 1;
    v51 = v96;
  }

  v52 = 1;
  __swift_storeEnumTagSinglePayload(v17, v50, 1, v51);
  v53 = [v28 allowsEncodingPolicyModification];
  v54 = v102;
  if (v53)
  {
    v96 = v84;
    MEMORY[0x1EEE9AC00](v53);
    v55 = sub_1B3C9C5A8();
    v56 = v17;
    v57 = PXLocalizedString();

    v58 = sub_1B3C9C5E8();
    v59 = v54;
    v61 = v60;

    *&v108 = v58;
    *(&v108 + 1) = v61;
    v109 = 0;
    v62 = MEMORY[0x1E69E7CC0];
    v110 = MEMORY[0x1E69E7CC0];
    v63 = sub_1B3C9C5A8();
    v64 = PXLocalizedString();

    v65 = sub_1B3C9C5E8();
    v67 = v66;

    v115 = v65;
    v116 = v67;
    v117 = 0;
    v118 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B10, &qword_1B3CFCD10);
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B18, &qword_1B3CFCD18);
    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B20, &qword_1B3CFCD20);
    v70 = sub_1B3C9AEC8();
    v54 = v59;
    v71 = sub_1B370ED54(&qword_1EB852B28, &qword_1EB852B20, &qword_1B3CFCD20, MEMORY[0x1E697D690]);
    v111 = v69;
    v112 = v70;
    v113 = v71;
    v114 = v30;
    v72 = swift_getOpaqueTypeConformance2();
    v111 = v68;
    v112 = v72;
    swift_getOpaqueTypeConformance2();
    v73 = v94;
    v3 = v101;
    sub_1B3C9BEC8();
    v17 = v56;
    (*(v95 + 32))(v59, v73, v3);
    v52 = 0;
  }

  __swift_storeEnumTagSinglePayload(v54, v52, 1, v3);
  v74 = v98;
  v75 = *(v98 + 16);
  v76 = v97;
  v77 = v99;
  v75(v97, v106, v99);
  v78 = v100;
  sub_1B373C544(v17, v100, &qword_1EB852AE8, &qword_1B3CFCCF0);
  v79 = v103;
  sub_1B373C544(v54, v103, &qword_1EB852AD0, &qword_1B3CFCCD8);
  v80 = v104;
  v75(v104, v76, v77);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B08, &qword_1B3CFCD08);
  sub_1B373C544(v78, &v80[*(v81 + 48)], &qword_1EB852AE8, &qword_1B3CFCCF0);
  sub_1B373C544(v79, &v80[*(v81 + 64)], &qword_1EB852AD0, &qword_1B3CFCCD8);
  sub_1B36FB21C(v54, &qword_1EB852AD0, &qword_1B3CFCCD8);
  sub_1B36FB21C(v105, &qword_1EB852AE8, &qword_1B3CFCCF0);
  v82 = *(v74 + 8);
  v82(v106, v77);
  sub_1B36FB21C(v79, &qword_1EB852AD0, &qword_1B3CFCCD8);
  sub_1B36FB21C(v78, &qword_1EB852AE8, &qword_1B3CFCCF0);
  return (v82)(v76, v77);
}

uint64_t sub_1B375C030@<X0>(char *a2@<X8>)
{
  v24 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C08, qword_1B3CFCE08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v22 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  type metadata accessor for PickerOptionsView(0);
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B375E59C(&qword_1EB852A68, type metadata accessor for PickerAdditionalSelectionState, &unk_1B3D07110);
  v13 = sub_1B3C9AA68();
  swift_getKeyPath();
  sub_1B3C9AA78();

  sub_1B3C9BD98();
  v14 = sub_1B3C9AA68();
  swift_getKeyPath();
  sub_1B3C9AA78();

  sub_1B3C9BD98();
  v15 = *(v3 + 16);
  v16 = v22;
  v15(v22, v12, v2);
  v17 = v23;
  v15(v23, v9, v2);
  v18 = v24;
  v15(v24, v16, v2);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C10, &qword_1B3CFCE90);
  v15(&v18[*(v19 + 48)], v17, v2);
  v20 = *(v3 + 8);
  v20(v9, v2);
  v20(v12, v2);
  v20(v17, v2);
  return (v20)(v16, v2);
}

void sub_1B375C398(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9C5A8();
  v3 = PXLocalizedString();

  v4 = sub_1B3C9C5E8();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

void sub_1B375C41C(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9C5A8();
  v3 = PXLocalizedString();

  v4 = sub_1B3C9C5E8();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B375C4A0@<X0>(uint64_t a2@<X8>)
{
  v26 = a2;
  v2 = sub_1B3C9AEC8();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B48, &qword_1B3CFCD40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B40, &qword_1B3CFCD38);
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  type metadata accessor for PickerOptionsView(0);
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B375E59C(&qword_1EB852A68, type metadata accessor for PickerAdditionalSelectionState, &unk_1B3D07110);
  v13 = sub_1B3C9AA68();
  swift_getKeyPath();
  sub_1B3C9AA78();

  v31 = v34;
  v32 = v35;
  v33 = v36;
  v14 = sub_1B3C9C5A8();
  v15 = PXLocalizedString();

  v16 = sub_1B3C9C5E8();
  v18 = v17;

  v27 = v16;
  v28 = v18;
  LOBYTE(v29) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B98, &qword_1B3CFCD90);
  sub_1B375E338();
  sub_1B375E38C();
  sub_1B3C9BD58();
  sub_1B3C9AEB8();
  v19 = sub_1B370ED54(&qword_1EB852B50, &qword_1EB852B48, &qword_1B3CFCD40, MEMORY[0x1E697D690]);
  v20 = MEMORY[0x1E697C418];
  sub_1B3C9B8A8();
  (*(v25 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  v27 = v5;
  v28 = v2;
  v29 = v19;
  v30 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v23;
  sub_1B3C9B8D8();
  return (*(v24 + 8))(v12, v21);
}

uint64_t sub_1B375C8C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852BB0, &qword_1B3CFCD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852BB8, qword_1B3CFCDA0);
  sub_1B370ED54(&qword_1EB852BC0, &qword_1EB852BB0, &qword_1B3CFCD98, MEMORY[0x1E69E6338]);
  sub_1B375E338();
  swift_getOpaqueTypeConformance2();
  sub_1B375E450();
  return sub_1B3C9BE98();
}

uint64_t sub_1B375C9FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1B375CA48(*a1);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_1B375CA48(char a1)
{
  v1 = sub_1B3C9C5A8();
  v2 = PXLocalizedString();

  v3 = sub_1B3C9C5E8();
  return v3;
}

double sub_1B375CB1C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PickerOptionsView(0) + 28);
  *&v14 = *v3;
  BYTE8(v14) = *(v3 + 8);
  *&v15 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B90, &qword_1B3CFCD58);
  sub_1B3C9BC98();
  if ((v13 & 1) == 0 && v12 >= 1)
  {
    sub_1B3C9B008();
    v4 = sub_1B3C9C5A8();
    v5 = PXLocalizedString();

    sub_1B3C9C5E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810, &qword_1B3CFCD60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B3CF6CE0;
    v7 = [objc_opt_self() stringFromByteCount:v12 countStyle:0];
    v8 = sub_1B3C9C5E8();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1B3753408();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    sub_1B3C9C5B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B68, &qword_1B3CFCD48);
  sub_1B370ED54(&qword_1EB852B60, &qword_1EB852B68, &qword_1B3CFCD48, MEMORY[0x1E6981870]);
  sub_1B3C9B168();
  *a2 = v14;
  a2[1] = v15;
  a2[2] = *v16;
  result = *&v16[9];
  *(a2 + 41) = *&v16[9];
  return result;
}

void sub_1B375CD9C()
{
  v1 = type metadata accessor for PickerOptionsView(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [*(v0 + v1[6]) selectedObjectIDs];
  v7 = [v6 array];

  v8 = sub_1B3C9C788();
  v9 = [*(v0 + v1[5]) photoLibrary];
  v10 = [v9 librarySpecificFetchOptions];

  v11 = sub_1B375E204(v8, v10, v5);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    sub_1B375DD6C(v0, v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    sub_1B375DDD0(v4, v15 + v13);
    *(v15 + v14) = v12;
    v34 = sub_1B375E27C;
    v35 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1B37D5B9C;
    v33 = &block_descriptor_17;
    v16 = _Block_copy(&aBlock);

    [v11 enumerateObjectsUsingBlock_];
    _Block_release(v16);
    swift_beginAccess();
    v17 = *(v12 + 16);
    v18 = v0 + v1[7];
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v27 = *v18;
    v28 = v19;
    v29 = v20;
    v25[1] = v17;
    v26 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B90, &qword_1B3CFCD58);
    sub_1B3C9BCA8();
  }

  else
  {
    v21 = v0 + v1[7];
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    aBlock = v22;
    LOBYTE(v31) = v23;
    v32 = v24;
    v27 = 0;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B90, &qword_1B3CFCD58);
    sub_1B3C9BCA8();
  }
}

uint64_t sub_1B375D0EC@<X0>(uint64_t a2@<X8>)
{
  v26 = a2;
  v2 = sub_1B3C9AEC8();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B20, &qword_1B3CFCD20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852B18, &qword_1B3CFCD18);
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  type metadata accessor for PickerOptionsView(0);
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B375E59C(&qword_1EB852A68, type metadata accessor for PickerAdditionalSelectionState, &unk_1B3D07110);
  v13 = sub_1B3C9AA68();
  swift_getKeyPath();
  sub_1B3C9AA78();

  v31 = v33;
  v32 = v34;
  v14 = sub_1B3C9C5A8();
  v15 = PXLocalizedString();

  v16 = sub_1B3C9C5E8();
  v18 = v17;

  v27 = v16;
  v28 = v18;
  LOBYTE(v29) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  type metadata accessor for PXPhotosFileProviderEncodingPolicy(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852BD0, &unk_1B3CFCDF0);
  sub_1B375E59C(&qword_1EB852BD8, type metadata accessor for PXPhotosFileProviderEncodingPolicy, &unk_1B3CF769C);
  sub_1B375E4A4();
  sub_1B3C9BD58();
  sub_1B3C9AEB8();
  v19 = sub_1B370ED54(&qword_1EB852B28, &qword_1EB852B20, &qword_1B3CFCD20, MEMORY[0x1E697D690]);
  v20 = MEMORY[0x1E697C418];
  sub_1B3C9B8A8();
  (*(v25 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  v27 = v5;
  v28 = v2;
  v29 = v19;
  v30 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v23;
  sub_1B3C9B8D8();
  return (*(v24 + 8))(v12, v21);
}

uint64_t sub_1B375D54C()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852BE8, &qword_1B3D070A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852BF0, &qword_1B3CFCE00);
  sub_1B370ED54(&qword_1EB852BF8, &qword_1EB852BE8, &qword_1B3D070A0, MEMORY[0x1E69E6338]);
  type metadata accessor for PXPhotosFileProviderEncodingPolicy(255);
  sub_1B375E59C(&qword_1EB852BD8, type metadata accessor for PXPhotosFileProviderEncodingPolicy, &unk_1B3CF769C);
  swift_getOpaqueTypeConformance2();
  sub_1B375E59C(&qword_1EB852C00, type metadata accessor for PXPhotosFileProviderEncodingPolicy, &protocol conformance descriptor for PXPhotosFileProviderEncodingPolicy);
  return sub_1B3C9BE98();
}

uint64_t sub_1B375D6F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1B375D73C(*a1);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_1B375D73C(uint64_t a1)
{
  if (!a1 || a1 == 2 || a1 == 1)
  {
    v1 = sub_1B3C9C5A8();
    v2 = PXLocalizedString();

    v3 = sub_1B3C9C5E8();
    return v3;
  }

  else
  {
    result = sub_1B3C9D4C8();
    __break(1u);
  }

  return result;
}

void sub_1B375D834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 fetchPropertySetsIfNeeded];
  v7 = [a1 originalMetadataProperties];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 originalFilesize];

  v10 = sub_1B375D938(a1) * v9;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = v10;
    swift_beginAccess();
    v12 = *(a5 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (!v13)
    {
      *(a5 + 16) = v14;
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

double sub_1B375D938(void *a1)
{
  v2 = 1.0;
  if ([a1 mediaType] == 1)
  {
    type metadata accessor for PickerOptionsView(0);
    v3 = 1280.0;
    switch(sub_1B3822CFC())
    {
      case 1u:
        goto LABEL_6;
      case 2u:
        *&v4 = 640.0;
        goto LABEL_5;
      case 3u:
        *&v4 = 320.0;
LABEL_5:
        v3 = *&v4;
LABEL_6:
        [a1 size];
        v6 = v5;
        [a1 size];
        if (v6 > v7)
        {
          v7 = v6;
        }

        if (v3 < v7)
        {
          v2 = v3 / v7;
        }

        break;
      default:
        return v2;
    }
  }

  return v2;
}

void sub_1B375DA3C(uint64_t a1)
{
  sub_1B375DB28(319);
  if (v1 <= 0x3F)
  {
    sub_1B3710718(319, &qword_1EB852A98, off_1E7B6E468);
    if (v2 <= 0x3F)
    {
      sub_1B3710718(319, &qword_1EB852AA0, 0x1E69C45D0);
      if (v3 <= 0x3F)
      {
        sub_1B375DB80(319);
        if (v4 <= 0x3F)
        {
          sub_1B375DBE4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B375DB28(uint64_t a1)
{
  if (!qword_1EB852A90)
  {
    sub_1B3C9A978();
    v1 = sub_1B3C9A7E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB852A90);
    }
  }
}

void sub_1B375DB80(uint64_t a1)
{
  if (!qword_1EB852AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852A60, &qword_1B3CFCC48);
    v1 = sub_1B3C9BCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB852AA8);
    }
  }
}

void sub_1B375DBE4(uint64_t a1)
{
  if (!qword_1EB852AB0)
  {
    type metadata accessor for PickerAdditionalSelectionState();
    sub_1B375E59C(&qword_1EB852A68, type metadata accessor for PickerAdditionalSelectionState, &unk_1B3D07110);
    v1 = sub_1B3C9AA88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB852AB0);
    }
  }
}

unint64_t sub_1B375DCB4()
{
  result = qword_1EB852B58;
  if (!qword_1EB852B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B38, &qword_1B3CFCD30);
    sub_1B370ED54(&qword_1EB852B60, &qword_1EB852B68, &qword_1B3CFCD48, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852B58);
  }

  return result;
}

uint64_t sub_1B375DD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickerOptionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B375DDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickerOptionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  type metadata accessor for PickerOptionsView(0);
  OUTLINED_FUNCTION_1_12();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A58, &qword_1B3CFCC40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B3C9A978();
    OUTLINED_FUNCTION_6_0();
    (*(v8 + 8))(v1 + v4);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

unint64_t sub_1B375DFC0()
{
  result = qword_1EB852B70;
  if (!qword_1EB852B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852AD8, &qword_1B3CFCCE0);
    sub_1B375E04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852B70);
  }

  return result;
}

unint64_t sub_1B375E04C()
{
  result = qword_1EB852B78;
  if (!qword_1EB852B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B80, &qword_1B3CFCD50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B40, &qword_1B3CFCD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B48, &qword_1B3CFCD40);
    sub_1B3C9AEC8();
    sub_1B370ED54(&qword_1EB852B50, &qword_1EB852B48, &qword_1B3CFCD40, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B375DCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852B78);
  }

  return result;
}

unint64_t sub_1B375E1B0()
{
  result = qword_1EB852B88;
  if (!qword_1EB852B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852B88);
  }

  return result;
}

id sub_1B375E204(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B3C9C778();

  v6 = [a3 fetchAssetsWithObjectIDs:v5 options:a2];

  return v6;
}

void sub_1B375E27C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PickerOptionsView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B375D834(a1, a2, a3, v3 + v8, v9);
}

unint64_t sub_1B375E338()
{
  result = qword_1EB852BA0;
  if (!qword_1EB852BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852BA0);
  }

  return result;
}

unint64_t sub_1B375E38C()
{
  result = qword_1EB852BA8;
  if (!qword_1EB852BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852B98, &qword_1B3CFCD90);
    sub_1B375E338();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852BA8);
  }

  return result;
}

unint64_t sub_1B375E450()
{
  result = qword_1EB852BC8;
  if (!qword_1EB852BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852BC8);
  }

  return result;
}

unint64_t sub_1B375E4A4()
{
  result = qword_1EB852BE0;
  if (!qword_1EB852BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852BD0, &unk_1B3CFCDF0);
    type metadata accessor for PXPhotosFileProviderEncodingPolicy(255);
    sub_1B375E59C(&qword_1EB852BD8, type metadata accessor for PXPhotosFileProviderEncodingPolicy, &unk_1B3CF769C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852BE0);
  }

  return result;
}

uint64_t sub_1B375E59C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B375E620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C08, qword_1B3CFCE08);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB853270, &qword_1B3CFF128);
  v6(a2 + v7[12], a1[1], v5);
  v8 = a1[2];
  v9 = a1[3];
  v10 = v8[3];
  v12 = *v8;
  v11 = v8[1];
  v107[2] = v8[2];
  v107[3] = v10;
  v107[0] = v12;
  v107[1] = v11;
  v13 = *v8;
  v14 = v8[1];
  v15 = v8[2];
  v16 = v8[3];
  v17 = (a2 + v7[16]);
  v17[2] = v15;
  v17[3] = v16;
  *v17 = v13;
  v17[1] = v14;
  v18 = (a2 + v7[20]);
  v19 = v9[3];
  v21 = *v9;
  v20 = v9[1];
  v108[2] = v9[2];
  v108[3] = v19;
  v108[0] = v21;
  v108[1] = v20;
  v23 = v9[2];
  v22 = v9[3];
  v24 = v9[1];
  *v18 = *v9;
  v18[1] = v24;
  v18[2] = v23;
  v18[3] = v22;
  v25 = a1[4];
  v26 = a1[5];
  v27 = v25[3];
  v29 = *v25;
  v28 = v25[1];
  v109[2] = v25[2];
  v109[3] = v27;
  v109[0] = v29;
  v109[1] = v28;
  v31 = v25[2];
  v30 = v25[3];
  v33 = *v25;
  v32 = v25[1];
  v34 = (a2 + v7[24]);
  *v34 = v33;
  v34[1] = v32;
  v34[2] = v31;
  v34[3] = v30;
  v35 = (a2 + v7[28]);
  v36 = v26[3];
  v38 = *v26;
  v37 = v26[1];
  v110[2] = v26[2];
  v110[3] = v36;
  v110[0] = v38;
  v110[1] = v37;
  v40 = v26[2];
  v39 = v26[3];
  v41 = v26[1];
  *v35 = *v26;
  v35[1] = v41;
  v35[2] = v40;
  v35[3] = v39;
  v42 = a1[6];
  v43 = a1[7];
  v44 = v42[3];
  v46 = *v42;
  v45 = v42[1];
  v111[2] = v42[2];
  v111[3] = v44;
  v111[0] = v46;
  v111[1] = v45;
  v48 = v42[2];
  v47 = v42[3];
  v50 = *v42;
  v49 = v42[1];
  v51 = (a2 + v7[32]);
  *v51 = v50;
  v51[1] = v49;
  v51[2] = v48;
  v51[3] = v47;
  v52 = (a2 + v7[36]);
  v53 = v43[3];
  v55 = *v43;
  v54 = v43[1];
  v112[2] = v43[2];
  v112[3] = v53;
  v112[0] = v55;
  v112[1] = v54;
  v57 = v43[2];
  v56 = v43[3];
  v58 = v43[1];
  *v52 = *v43;
  v52[1] = v58;
  v52[2] = v57;
  v52[3] = v56;
  v59 = a1[8];
  v60 = a1[9];
  v61 = v59[3];
  v63 = *v59;
  v62 = v59[1];
  v113[2] = v59[2];
  v113[3] = v61;
  v113[0] = v63;
  v113[1] = v62;
  v65 = v59[2];
  v64 = v59[3];
  v67 = *v59;
  v66 = v59[1];
  v68 = (a2 + v7[40]);
  *v68 = v67;
  v68[1] = v66;
  v68[2] = v65;
  v68[3] = v64;
  v69 = (a2 + v7[44]);
  v70 = v60[3];
  v72 = *v60;
  v71 = v60[1];
  v114[2] = v60[2];
  v114[3] = v70;
  v114[0] = v72;
  v114[1] = v71;
  v74 = v60[2];
  v73 = v60[3];
  v75 = v60[1];
  *v69 = *v60;
  v69[1] = v75;
  v69[2] = v74;
  v69[3] = v73;
  v76 = a1[10];
  v77 = a1[11];
  v78 = v76[3];
  v80 = *v76;
  v79 = v76[1];
  v115[2] = v76[2];
  v115[3] = v78;
  v115[0] = v80;
  v115[1] = v79;
  v82 = v76[2];
  v81 = v76[3];
  v84 = *v76;
  v83 = v76[1];
  v85 = (a2 + v7[48]);
  *v85 = v84;
  v85[1] = v83;
  v85[2] = v82;
  v85[3] = v81;
  v86 = (a2 + v7[52]);
  v87 = v77[3];
  v89 = *v77;
  v88 = v77[1];
  v116[2] = v77[2];
  v116[3] = v87;
  v116[0] = v89;
  v116[1] = v88;
  v91 = v77[2];
  v90 = v77[3];
  v92 = v77[1];
  *v86 = *v77;
  v86[1] = v92;
  v86[2] = v91;
  v86[3] = v90;
  v93 = a1[12];
  v94 = a1[13];
  v95 = v93[3];
  v97 = *v93;
  v96 = v93[1];
  v117[2] = v93[2];
  v117[3] = v95;
  v117[0] = v97;
  v117[1] = v96;
  v99 = v93[2];
  v98 = v93[3];
  v101 = *v93;
  v100 = v93[1];
  v102 = (a2 + v7[56]);
  *v102 = v101;
  v102[1] = v100;
  v102[2] = v99;
  v102[3] = v98;
  v103 = v7[60];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F80, &unk_1B3CFE7A0);
  (*(*(v104 - 8) + 16))(a2 + v103, v94, v104);
  v6(a2 + v7[64], a1[14], v5);
  v6(a2 + v7[68], a1[15], v5);
  sub_1B3776380(v107, v106);
  sub_1B3776380(v108, v106);
  sub_1B3776380(v109, v106);
  sub_1B3776380(v110, v106);
  sub_1B3776380(v111, v106);
  sub_1B3776380(v112, v106);
  sub_1B3776380(v113, v106);
  sub_1B3776380(v114, v106);
  sub_1B3776380(v115, v106);
  sub_1B3776380(v116, v106);
  return sub_1B3776380(v117, v106);
}

uint64_t sub_1B375E9C8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[1];
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 40);
  v34 = *(*a1 + 32);
  v35 = *(*a1 + 48);
  *a2 = **a1;
  *(a2 + 1) = v5;
  *(a2 + 2) = v7;
  *(a2 + 3) = v6;
  *(a2 + 4) = v34;
  *(a2 + 5) = v8;
  *(a2 + 6) = v35;
  v9 = v4[1];
  v10 = v4[2];
  v36 = v4[3];
  v11 = v4[5];
  v37 = v4[4];
  v38 = v4[6];
  *(a2 + 7) = *v4;
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  *(a2 + 10) = v36;
  *(a2 + 11) = v37;
  *(a2 + 12) = v11;
  *(a2 + 13) = v38;
  v12 = a1[2];
  v13 = a1[3];
  v14 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  v17 = v12[5];
  v18 = v12[4];
  v33 = v12[6];
  *(a2 + 14) = *v12;
  *(a2 + 15) = v14;
  *(a2 + 16) = v16;
  *(a2 + 17) = v15;
  *(a2 + 18) = v18;
  *(a2 + 19) = v17;
  *(a2 + 20) = v33;
  v19 = v13[1];
  v21 = v13[3];
  v20 = v13[2];
  v23 = v13[4];
  v22 = v13[5];
  v24 = v13[6];
  *(a2 + 21) = *v13;
  *(a2 + 22) = v19;
  *(a2 + 23) = v20;
  *(a2 + 24) = v21;
  *(a2 + 25) = v23;
  *(a2 + 26) = v22;
  *(a2 + 27) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853230, &qword_1B3CFEE50);
  v26 = v25[24];
  v27 = a1[4];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853218, &qword_1B3CFED78);
  (*(*(v28 - 8) + 16))(&a2[v26], v27, v28);
  v29 = v25[28];
  v30 = a1[5];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853188, &qword_1B3CFEBB0);
  (*(*(v31 - 8) + 16))(&a2[v29], v30, v31);
  sub_1B37772C8(a1[6], &a2[v25[32]], &qword_1EB853210, &qword_1B3CFED70);
}

uint64_t sub_1B375EC4C@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*a1)[3];
  v7 = **a1;
  v6 = (*a1)[1];
  v56[2] = (*a1)[2];
  v56[3] = v5;
  v56[0] = v7;
  v56[1] = v6;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[3];
  __src[2] = v3[2];
  __src[3] = v10;
  __src[0] = v8;
  __src[1] = v9;
  v11 = v4[3];
  v13 = *v4;
  v12 = v4[1];
  v57[2] = v4[2];
  v57[3] = v11;
  v57[0] = v13;
  v57[1] = v12;
  v14 = *v4;
  v15 = v4[1];
  v16 = v4[3];
  __src[6] = v4[2];
  __src[7] = v16;
  __src[4] = v14;
  __src[5] = v15;
  v17 = a1[2];
  v18 = a1[3];
  v19 = *v17;
  v20 = v17[1];
  v21 = v17[3];
  v58[2] = v17[2];
  v58[3] = v21;
  v58[0] = v19;
  v58[1] = v20;
  v22 = *v17;
  v23 = v17[1];
  v24 = v17[3];
  __src[10] = v17[2];
  __src[11] = v24;
  __src[8] = v22;
  __src[9] = v23;
  v25 = v18[3];
  v27 = *v18;
  v26 = v18[1];
  v59[2] = v18[2];
  v59[3] = v25;
  v59[0] = v27;
  v59[1] = v26;
  v28 = *v18;
  v29 = v18[1];
  v30 = v18[3];
  __src[14] = v18[2];
  __src[15] = v30;
  __src[12] = v28;
  __src[13] = v29;
  v31 = a1[4];
  v32 = a1[5];
  v33 = v31[3];
  v35 = *v31;
  v34 = v31[1];
  v60[2] = v31[2];
  v60[3] = v33;
  v60[0] = v35;
  v60[1] = v34;
  v36 = *v31;
  v37 = v31[1];
  v38 = v31[3];
  __src[18] = v31[2];
  __src[19] = v38;
  __src[16] = v36;
  __src[17] = v37;
  v39 = v32[3];
  v41 = *v32;
  v40 = v32[1];
  v61[2] = v32[2];
  v61[3] = v39;
  v61[0] = v41;
  v61[1] = v40;
  v42 = *v32;
  v43 = v32[1];
  v44 = v32[3];
  __src[22] = v32[2];
  __src[23] = v44;
  __src[20] = v42;
  __src[21] = v43;
  v45 = a1[6];
  v47 = *v45;
  v46 = *(v45 + 1);
  v48 = *(v45 + 2);
  v49 = *(v45 + 3);
  v50 = *(v45 + 4);
  v51 = *(v45 + 5);
  v52 = *(v45 + 6);
  memcpy(a2, __src, 0x180uLL);
  a2[48] = v47;
  a2[49] = v46;
  a2[50] = v48;
  a2[51] = v49;
  a2[52] = v50;
  a2[53] = v51;
  a2[54] = v52;
  sub_1B3776380(v56, v54);
  sub_1B3776380(v57, v54);
  sub_1B3776380(v58, v54);
  sub_1B3776380(v59, v54);
  sub_1B3776380(v60, v54);
  sub_1B3776380(v61, v54);
}

uint64_t sub_1B375EE04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C08, qword_1B3CFCE08);
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F90, &qword_1B3CFE8F8);
  v7 = v6[12];
  v8 = a1[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F80, &unk_1B3CFE7A0);
  (*(*(v9 - 8) + 16))(a2 + v7, v8, v9);
  v10 = a1[2];
  v11 = a1[3];
  v12 = v10[3];
  v14 = *v10;
  v13 = v10[1];
  v79[2] = v10[2];
  v79[3] = v12;
  v79[0] = v14;
  v79[1] = v13;
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[2];
  v18 = v10[3];
  v19 = (a2 + v6[16]);
  v19[2] = v17;
  v19[3] = v18;
  *v19 = v15;
  v19[1] = v16;
  v20 = (a2 + v6[20]);
  v21 = v11[3];
  v23 = *v11;
  v22 = v11[1];
  v80[2] = v11[2];
  v80[3] = v21;
  v80[0] = v23;
  v80[1] = v22;
  v25 = v11[2];
  v24 = v11[3];
  v26 = v11[1];
  *v20 = *v11;
  v20[1] = v26;
  v20[2] = v25;
  v20[3] = v24;
  v27 = a1[4];
  v28 = a1[5];
  v29 = v27[3];
  v31 = *v27;
  v30 = v27[1];
  v81[2] = v27[2];
  v81[3] = v29;
  v81[0] = v31;
  v81[1] = v30;
  v33 = v27[2];
  v32 = v27[3];
  v35 = *v27;
  v34 = v27[1];
  v36 = (a2 + v6[24]);
  *v36 = v35;
  v36[1] = v34;
  v36[2] = v33;
  v36[3] = v32;
  v37 = (a2 + v6[28]);
  v38 = v28[3];
  v40 = *v28;
  v39 = v28[1];
  v82[2] = v28[2];
  v82[3] = v38;
  v82[0] = v40;
  v82[1] = v39;
  v42 = v28[2];
  v41 = v28[3];
  v43 = v28[1];
  *v37 = *v28;
  v37[1] = v43;
  v37[2] = v42;
  v37[3] = v41;
  v44 = a1[6];
  v45 = a1[7];
  v46 = v44[3];
  v48 = *v44;
  v47 = v44[1];
  v83[2] = v44[2];
  v83[3] = v46;
  v83[0] = v48;
  v83[1] = v47;
  v50 = v44[2];
  v49 = v44[3];
  v52 = *v44;
  v51 = v44[1];
  v53 = (a2 + v6[32]);
  *v53 = v52;
  v53[1] = v51;
  v53[2] = v50;
  v53[3] = v49;
  v54 = (a2 + v6[36]);
  v55 = v45[3];
  v57 = *v45;
  v56 = v45[1];
  v84[2] = v45[2];
  v84[3] = v55;
  v84[0] = v57;
  v84[1] = v56;
  v59 = v45[2];
  v58 = v45[3];
  v60 = v45[1];
  *v54 = *v45;
  v54[1] = v60;
  v54[2] = v59;
  v54[3] = v58;
  v61 = (a2 + v6[40]);
  v62 = a1[8];
  v63 = a1[9];
  v64 = v62[3];
  v66 = *v62;
  v65 = v62[1];
  v85[2] = v62[2];
  v85[3] = v64;
  v85[0] = v66;
  v85[1] = v65;
  v68 = v62[2];
  v67 = v62[3];
  v69 = v62[1];
  *v61 = *v62;
  v61[1] = v69;
  v61[2] = v68;
  v61[3] = v67;
  v70 = (a2 + v6[44]);
  v71 = v63[3];
  v73 = *v63;
  v72 = v63[1];
  v86[2] = v63[2];
  v86[3] = v71;
  v86[0] = v73;
  v86[1] = v72;
  v74 = *v63;
  v75 = v63[1];
  v76 = v63[3];
  v70[2] = v63[2];
  v70[3] = v76;
  *v70 = v74;
  v70[1] = v75;
  sub_1B3776380(v79, v78);
  sub_1B3776380(v80, v78);
  sub_1B3776380(v81, v78);
  sub_1B3776380(v82, v78);
  sub_1B3776380(v83, v78);
  sub_1B3776380(v84, v78);
  sub_1B3776380(v85, v78);
  return sub_1B3776380(v86, v78);
}

void sub_1B375F0A4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533A0, &qword_1B3CFF320);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(a2, v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533A8, &qword_1B3CFF328);
  v8 = v7[12];
  v9 = a1[1];
  v10 = sub_1B3C9BE78();
  OUTLINED_FUNCTION_0_1();
  v12 = *(v11 + 16);
  v12(a2 + v8, v9, v10);
  v13 = OUTLINED_FUNCTION_42_1(v7[16]);
  v14(v13);
  v12(a2 + v7[20], a1[3], v10);
  v15 = OUTLINED_FUNCTION_42_1(v7[24]);
  v16(v15);
  v17 = OUTLINED_FUNCTION_42_1(v7[28]);
  v18(v17);
  v19 = OUTLINED_FUNCTION_42_1(v7[32]);
  v20(v19);
  OUTLINED_FUNCTION_42_1(v7[36]);
  OUTLINED_FUNCTION_7_6();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1B375F22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x79uLL);
  memmove(a2, v4, 0x79uLL);
  v5 = *(a1 + 8);
  memcpy(v16, v5, 0x5BuLL);
  memmove((a2 + 128), v5, 0x5BuLL);
  v6 = *(a1 + 16);
  memcpy(v17, v6, sizeof(v17));
  memmove((a2 + 224), v6, 0x78uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853368, &qword_1B3CFF2E8);
  sub_1B37772C8(*(a1 + 24), a2 + v7[20], &qword_1EB853370, &qword_1B3CFF2F0);
  v8 = a2 + v7[24];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v8 = v11;
  *(v8 + 8) = v9;
  v12 = v7[28];
  memcpy(v18, v10, 0x41uLL);
  memmove((a2 + v12), v10, 0x41uLL);
  sub_1B37772C8(*(a1 + 48), a2 + v7[32], &qword_1EB853378, &qword_1B3CFF2F8);
  sub_1B37772C8(__dst, v14, &qword_1EB853380, &qword_1B3CFF300);
  sub_1B37772C8(v16, v14, &qword_1EB853388, &qword_1B3CFF308);
  sub_1B37772C8(v17, v14, &qword_1EB853390, &qword_1B3CFF310);
  return sub_1B37772C8(v18, v14, &qword_1EB853398, &qword_1B3CFF318);
}

uint64_t sub_1B375F3DC(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    OUTLINED_FUNCTION_8();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return sub_1B3C9C0D8();
}

uint64_t sub_1B375F54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[4] = a3;
  v18[5] = a7;
  v18[0] = a4;
  v18[1] = a8;
  v18[2] = a2;
  v18[3] = a9;
  MEMORY[0x1EEE9AC00](a1);
  v12 = sub_1B3C9BE48();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (*(v13 + 16))(v18 - v15, a1, v12, v14);
  (v18[0])(v16);
  sub_1B3C9BD58();
  return (*(v13 + 8))(a1, v12);
}

void sub_1B375F6DC(CGColor *a1)
{
  v2 = sub_1B3C9CA08();
  if (!v2)
  {
    OUTLINED_FUNCTION_98();
    goto LABEL_10;
  }

  v3 = v2;
  CGColorGetNumberOfComponents(a1);
  OUTLINED_FUNCTION_98();
  if (v4 < 3)
  {
LABEL_8:

LABEL_10:

    return;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 < 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (CGColorGetNumberOfComponents(a1) != 4 || *(v3 + 16) >= 4uLL)
  {
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
}

void sub_1B375F7A8(void *a1)
{
  v2 = v1;
  v3 = sub_1B3C9CA08();
  if (v3)
  {
    v4 = v3;
    if (CGColorGetNumberOfComponents(a1) > 2)
    {
      v5 = *(v4 + 2);
      if (v5)
      {
        *v2 = v4[4];
        if (v5 != 1)
        {
          v2[1] = v4[5];
          if (v5 >= 3)
          {
            v2[2] = v4[6];
            v6 = 1.0;
            if (CGColorGetNumberOfComponents(a1) != 4)
            {
LABEL_9:

              v2[3] = v6;
              return;
            }

            if (*(v4 + 2) >= 4uLL)
            {
              v6 = v4[7];
              goto LABEL_9;
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

BOOL sub_1B375F8A4(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_1B375F8C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B3C9D6A8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1B375FA2C(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = 1702194274;
      break;
    case 3:
      result = 0x6168706C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B375FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B375F8C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B375FAE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B375FA18();
  *a1 = result;
  return result;
}

uint64_t sub_1B375FB10(uint64_t a1)
{
  v2 = sub_1B3775F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B375FB4C(uint64_t a1)
{
  v2 = sub_1B3775F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B375FB88(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F18, &qword_1B3CFE740);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_55(a1, a1[3]);
  sub_1B3775F84();
  OUTLINED_FUNCTION_71();
  sub_1B3C9D818();
  v4 = sub_1B3775FD8();
  v7 = OUTLINED_FUNCTION_26_1(v4, v5, v6, MEMORY[0x1E69E7DE0]);
  if (!v1)
  {
    v10 = OUTLINED_FUNCTION_26_1(v7, v8, v9, MEMORY[0x1E69E7DE0]);
    v13 = OUTLINED_FUNCTION_26_1(v10, v11, v12, MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_26_1(v13, v14, v15, MEMORY[0x1E69E7DE0]);
  }

  v16 = OUTLINED_FUNCTION_107();
  return v17(v16);
}

double sub_1B375FD1C()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F30, &qword_1B3CFE748);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  OUTLINED_FUNCTION_55(v0, v0[3]);
  sub_1B3775F84();
  OUTLINED_FUNCTION_106();
  sub_1B3C9D808();
  HIBYTE(v9) = 0;
  sub_1B377602C();
  OUTLINED_FUNCTION_22_1(MEMORY[0x1E69E7DE0]);
  v7 = v10;
  HIBYTE(v9) = 1;
  OUTLINED_FUNCTION_22_1(MEMORY[0x1E69E7DE0]);
  HIBYTE(v9) = 2;
  OUTLINED_FUNCTION_22_1(MEMORY[0x1E69E7DE0]);
  HIBYTE(v9) = 3;
  OUTLINED_FUNCTION_22_1(MEMORY[0x1E69E7DE0]);
  (*(v3 + 8))(v6, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  return v7;
}

void sub_1B375FF08(uint64_t a1@<X8>)
{
  v3 = sub_1B375FD1C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t static VFXEmitterDefaults.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(*(a1 + 4), *(a2 + 4)), vceqq_f32(*(a1 + 20), *(a2 + 20))), vuzp1q_s16(vceqq_f32(*(a1 + 36), *(a2 + 36)), vceqq_f32(*(a1 + 52), *(a2 + 52))))) & 1) != 0 && ((*a1 ^ *a2) & 1) == 0 && *(a1 + 17) == *(a2 + 17))
  {
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 72), *(a2 + 72)), vceqq_f64(*(a1 + 88), *(a2 + 88))))))
    {
      if (*(a1 + 13) != *(a2 + 13) || *(a1 + 14) != *(a2 + 14))
      {
        return sub_1B3C9D6A8();
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1B3760030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B3C9D6A8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461526874726962 && a2 == 0xE900000000000065;
    if (v6 || (sub_1B3C9D6A8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1B3C9D6A8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D69746566696CLL && a2 == 0xED000065676E6152;
        if (v8 || (sub_1B3C9D6A8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000;
          if (v9 || (sub_1B3C9D6A8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x797469636F6C6576 && a2 == 0xED000065676E6152;
            if (v10 || (sub_1B3C9D6A8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6465657053646572 && a2 == 0xE800000000000000;
              if (v11 || (sub_1B3C9D6A8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65676E6152646572 && a2 == 0xE800000000000000;
                if (v12 || (sub_1B3C9D6A8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6570536E65657267 && a2 == 0xEA00000000006465;
                  if (v13 || (sub_1B3C9D6A8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E61526E65657267 && a2 == 0xEA00000000006567;
                    if (v14 || (sub_1B3C9D6A8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6565705365756C62 && a2 == 0xE900000000000064;
                      if (v15 || (sub_1B3C9D6A8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x676E615265756C62 && a2 == 0xE900000000000065;
                        if (v16 || (sub_1B3C9D6A8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6570536168706C61 && a2 == 0xEA00000000006465;
                          if (v17 || (sub_1B3C9D6A8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E61526168706C61 && a2 == 0xEA00000000006567;
                            if (v18 || (sub_1B3C9D6A8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
                              if (v19 || (sub_1B3C9D6A8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E6152656C616373 && a2 == 0xEA00000000006567;
                                if (v20 || (sub_1B3C9D6A8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x657053656C616373 && a2 == 0xEA00000000006465;
                                  if (v21 || (sub_1B3C9D6A8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x656C636974726170 && a2 == 0xEC000000657A6953;
                                    if (v22 || (sub_1B3C9D6A8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
                                      if (v23 || (sub_1B3C9D6A8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 1701667182 && a2 == 0xE400000000000000)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1B3C9D6A8();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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
      }
    }
  }
}