id ASCNavigationViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id ASCNavigationViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id sub_1E3B6617C()
{
  v1 = OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    [v4 setTextAlignment_];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    [v4 setTextColor_];
    [v4 setAdjustsFontSizeToFitWidth_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3B66288()
{
  OUTLINED_FUNCTION_31_1();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = *(v12 + 24);
  v14 = *(v12 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v12, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v22(v19, v11, v9, v7, v5, v3, v0, v15, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B663B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  OUTLINED_FUNCTION_194();
  v43 = v32;
  v44 = v33;
  OUTLINED_FUNCTION_1_151();
  swift_unknownObjectWeakInit();
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel) = 0;
  v34 = (v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo);
  v34[3] = &type metadata for ExternalAppInstallerVCConstructor;
  v34[4] = &off_1F5D72D38;
  v35 = swift_allocObject();
  *v34 = v35;
  v35[2] = v31;
  v35[3] = v30;
  v35[4] = v28;
  v35[5] = v29;
  v36 = (v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle);
  *v36 = v27;
  v36[1] = v26;
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA) = v43;
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation) = v44;
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper) = a25;
  type metadata accessor for TVAppInstallerViewController();
  v37 = a25;
  OUTLINED_FUNCTION_25();
  v40 = objc_msgSendSuper2(v38, v39);
  v41 = *((*MEMORY[0x1E69E7D40] & *v40) + 0x240);
  v42 = v40;
  v41();
  sub_1E3B66590();
  sub_1E3B66C18();
  sub_1E3B669B0();
  [v42 setModalPresentationStyle_];

  OUTLINED_FUNCTION_192();
}

void sub_1E3B66510()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel) = 0;
  OUTLINED_FUNCTION_13_94("Fatal error", v1, v2, v3, 0x80000001E4259980, "VideosUI/TVAppInstallerViewController.swift");
  __break(1u);
}

void sub_1E3B66590()
{
  v2 = v0;
  sub_1E3B66778();
  OUTLINED_FUNCTION_30_44([objc_allocWithZone(VUILocalizationManager) init]);
  v4 = v3;

  if (v4)
  {
    sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v21);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v5 = OUTLINED_FUNCTION_15_90();
    v7 = v6(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      __swift_destroy_boxed_opaque_existential_1(v21);
      v11 = *(v2 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle + 8);
      if (v11)
      {
        v12 = *(v2 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1E4299720;
        v14 = MEMORY[0x1E69E6158];
        *(v13 + 56) = MEMORY[0x1E69E6158];
        v17 = sub_1E3283528(v13, v15, v16);
        *(v13 + 32) = v12;
        *(v13 + 40) = v11;
        *(v13 + 96) = v14;
        *(v13 + 104) = v17;
        *(v13 + 64) = v17;
        *(v13 + 72) = v9;
        *(v13 + 80) = v10;

        v18 = sub_1E4205F44();
        v20 = v19;

        (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v18, v20);
      }

      else
      {
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }
}

void *sub_1E3B66778()
{
  sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v25);
  v1 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v2 = OUTLINED_FUNCTION_50();
  result = v3(v2, v1);
  v5 = 0;
  v6 = result[2];
  v18 = result + 4;
  v19 = result;
  v17 = v6;
  while (v5 != v6)
  {
    if (v5 >= v19[2])
    {
      goto LABEL_24;
    }

    v7 = &v18[2 * v5];
    v9 = *v7;
    v8 = v7[1];
    v10 = objc_opt_self();

    result = [v10 defaultAppLibrary];
    if (!result)
    {
      goto LABEL_25;
    }

    v20 = v5;
    result = sub_1E3B690B8(result);
    if (!result)
    {
      goto LABEL_26;
    }

    v11 = result;
    v12 = result[2];
    if (v12)
    {
      v13 = 0;
      v14 = result + 4;
      while (v13 < v11[2])
      {
        sub_1E328438C(v14, v24);
        sub_1E328438C(v24, v23);
        if (swift_dynamicCast())
        {
          if (v21 == v9 && v22 == v8)
          {

            __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_20:

            v5 = v20;
            v6 = v17;
            goto LABEL_21;
          }

          v16 = sub_1E42079A4();

          result = __swift_destroy_boxed_opaque_existential_1(v24);
          if (v16)
          {
            goto LABEL_20;
          }
        }

        else
        {
          result = __swift_destroy_boxed_opaque_existential_1(v24);
        }

        ++v13;
        v14 += 4;
        if (v12 == v13)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_18:
    v5 = v20 + 1;

    v6 = v17;
  }

LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(v25);
  return (v5 != v6);
}

void sub_1E3B669B0()
{
  v1 = v0;
  sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (*((*(v3 + 16))(v2, v3) + 16))
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1E3280A90(0, &qword_1ECF33FE8, 0x1E698B398);
  v4 = sub_1E3B66B3C();
  sub_1E3280A90(0, &qword_1ECF33FF0, 0x1E698B3C0);
  v5 = *MEMORY[0x1E698B360];
  v6 = *MEMORY[0x1E698B348];
  v7 = v4;
  v8 = sub_1E3B66BB0(v7, v5, v6);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(v8);
}

id sub_1E3B66B3C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithStringValue_];

  return v2;
}

id sub_1E3B66BB0(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithID:a1 kind:a2 context:a3];

  return v6;
}

double sub_1E3B66C18()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);

  v2(sub_1E3B69990, v1);

  return result;
}

void sub_1E3B66CC4(uint64_t a1)
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation);
    v13 = sub_1E324FBDC();
    v14 = *(v3 + 16);
    if (v12 == 1)
    {
      v14(v9, v13, v1);
      v15 = sub_1E41FFC94();
      v16 = sub_1E4206814();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1E323F000, v15, v16, "AppInstallerViewController: onAppInstall triggered with punchout", v17, 2u);
        MEMORY[0x1E69143B0](v17, -1, -1);
      }

      (*(v3 + 8))(v9, v1);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        sub_1E327F454(v18 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v40);

        v20 = v41;
        v21 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v39[2] = (*(v21 + 24))(v20, v21);
        v37 = 0;
        v38 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
        sub_1E383ADA0();
        sub_1E38D2054(&v37, v39);

        v22 = v39[0];
        v23 = v39[1];
        __swift_destroy_boxed_opaque_existential_1(v40);
        if (v23)
        {
          v24 = [objc_opt_self() sharedInstance];
          sub_1E37FB7F0(v22, v23, v24, &selRef_setExitEventDestinationUrl_);
        }
      }

      v25 = *((*MEMORY[0x1E69E7D40] & *v11) + 0xA0);
      v26 = *(v11 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper);
      v27 = v11;
      v25();

      OUTLINED_FUNCTION_75();
      sub_1E3C893A0();
      v28 = OUTLINED_FUNCTION_75();
      sub_1E34AF594(v28, v29);
    }

    else
    {
      v14(v6, v13, v1);
      v30 = sub_1E41FFC94();
      v31 = sub_1E4206814();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1E323F000, v30, v31, "AppInstallerViewController: onAppInstall triggered without punchout", v32, 2u);
        MEMORY[0x1E69143B0](v32, -1, -1);
      }

      (*(v3 + 8))(v6, v1);
      v33 = *((*MEMORY[0x1E69E7D40] & *v11) + 0xA0);
      v26 = v11;
      v34 = v33();
      v36 = v35;

      if (v34)
      {
        v34(1);
        sub_1E34AF594(v34, v36);
      }
    }
  }
}

uint64_t sub_1E3B670F4()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v1[3] = sub_1E4206434();
  v1[4] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3B67188, v3, v2);
}

uint64_t sub_1E3B67188()
{
  OUTLINED_FUNCTION_27_2();
  v2 = sub_1E4206424();
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_32_47(v3);
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  v4[1] = sub_1E3B6728C;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v1 + 80, v2, v5, 0xD000000000000023, 0x80000001E4273180, sub_1E3B697B8, v0, v6);
}

uint64_t sub_1E3B6728C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E3B673D8, v6, v5);
}

uint64_t sub_1E3B673D8()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1E3B67438()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_12_84();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = [Strong presentingViewController], v14, v15))
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationController];
      if (v18)
      {
        v19 = v18;
        type metadata accessor for ASCNavigationViewController();
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
        v19 = v17;
      }
    }

    (*(v3 + 16))(v6, v28, v1);
    v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v25 = swift_allocObject();
    (*(v3 + 32))(v25 + v24, v6, v1);
    v29[4] = sub_1E3B69854;
    v29[5] = v25;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 1107296256;
    v29[2] = sub_1E329EEC4;
    v29[3] = &block_descriptor_57;
    v26 = _Block_copy(v29);

    [v15 dismissViewControllerAnimated:1 completion:v26];
    _Block_release(v26);
  }

  else
  {
    v20 = sub_1E324FBDC();
    (*(v9 + 16))(v12, v20, v7);
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1E323F000, v21, v22, "AppInstallerViewController: Failed to get the navigation controller", v23, 2u);
      MEMORY[0x1E69143B0](v23, -1, -1);
    }

    (*(v9 + 8))(v12, v7);
    LOBYTE(v29[0]) = 0;
    sub_1E42063D4();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B677B8()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v1[3] = sub_1E4206434();
  v1[4] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3B6784C, v3, v2);
}

uint64_t sub_1E3B6784C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = sub_1E4206424();
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_32_47(v3);
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  v4[1] = sub_1E3B67958;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v1 + 80, v2, v5, 0x56746E6573657270, 0xED00002928415050, sub_1E3B69668, v0, v6);
}

uint64_t sub_1E3B67958()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E3B699A0, v6, v5);
}

void sub_1E3B67AA4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_12_84();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v9 = Strong;
  v10 = [Strong presentingViewController];

  if (!v10)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11 || (v12 = v11, v13 = swift_unknownObjectWeakLoadStrong(), v12, !v13))
  {

LABEL_8:
    v21[8] = 0;
    sub_1E42063D4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper);

    (*(v4 + 16))(v7, v1, v2);
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v10;
    *(v18 + 24) = v13;
    (*(v4 + 32))(v18 + v17, v7, v2);
    v19 = v10;
    v20 = v13;
    sub_1E3C88978(sub_1E3B69670, v18);
  }

  else
  {
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B67CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_12_84();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_318();
  v36 = sub_1E4206474();
  OUTLINED_FUNCTION_31_41(v36);
  (*(v30 + 16))(v33, v23, v28);
  sub_1E4206434();
  v37 = v27;
  v38 = v25;
  v39 = sub_1E4206424();
  v40 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E85E0];
  *(v41 + 2) = v39;
  *(v41 + 3) = v42;
  *(v41 + 4) = v37;
  *(v41 + 5) = v38;
  (*(v30 + 32))(&v41[v40], v33, v28);
  v43 = OUTLINED_FUNCTION_26_51();
  sub_1E376FE58(v43, v44, v45, v46, v41);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B67E7C()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v0[13] = *(v5 + 64);
  v0[14] = swift_task_alloc();
  sub_1E4206434();
  v0[15] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3B67F80, v7, v6);
}

uint64_t sub_1E3B67F80()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  (*(v2 + 16))(v1, v4, v3);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v1, v3);
  v0[6] = sub_1E3B6999C;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E378AEA4;
  v0[5] = &block_descriptor_67;
  v9 = _Block_copy(v0 + 2);

  [v6 presentViewController:v5 animated:1 completion:v9];
  _Block_release(v9);

  OUTLINED_FUNCTION_54();

  return v10();
}

void sub_1E3B68100()
{
  v2 = v0;
  sub_1E3B66778();
  OUTLINED_FUNCTION_30_44([objc_allocWithZone(VUILocalizationManager) init]);
  v4 = v3;

  if (v4)
  {
    sub_1E327F454(&v0[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo], v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v5 = OUTLINED_FUNCTION_15_90();
    v7 = v6(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      __swift_destroy_boxed_opaque_existential_1(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1E4297BE0;
      v12 = MEMORY[0x1E69E6158];
      *(v11 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1E3283528(v11, v13, v14);
      *(v11 + 64) = v15;
      *(v11 + 32) = v9;
      *(v11 + 40) = v10;

      v16 = sub_1E4205F44();
      sub_1E37FB7F0(v16, v17, v2, &selRef_setTitle_);
      v18 = sub_1E3B6617C();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1E4297BE0;
      *(v19 + 56) = v12;
      *(v19 + 64) = v15;
      *(v19 + 32) = v9;
      *(v19 + 40) = v10;
      sub_1E4205F44();

      v20 = OUTLINED_FUNCTION_75();
      sub_1E37FB7F0(v20, v21, v18, v22);

      v23 = [v2 navigationItem];
      [v23 setTitleView_];
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }
}

id sub_1E3B6831C()
{
  v0 = [objc_opt_self() topPresentedViewController];

  return v0;
}

id _s8VideosUI27ASCNavigationViewControllerC7nibName6bundleACSSSg_So8NSBundleCSgtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1E3B68484(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  if (a3)
  {
    sub_1E4205F14();
  }

  a5(a4);
  __break(1u);
}

void sub_1E3B684B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo));
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_navigationViewController);

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel);
}

id sub_1E3B68540(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3B685EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  v8 = sub_1E4205F14();
  v10 = v9;
  if (v8 == sub_1E4205F14() && v10 == v11)
  {
    _Block_copy(a5);
  }

  else
  {
    v13 = sub_1E42079A4();
    _Block_copy(a5);

    if (v13)
    {
      goto LABEL_19;
    }

    v14 = sub_1E4205F14();
    v16 = v15;
    if (v14 != sub_1E4205F14() || v16 != v17)
    {
      v19 = sub_1E42079A4();

      if (v19)
      {
        goto LABEL_19;
      }

      v20 = sub_1E4205F14();
      v22 = v21;
      if (v20 != sub_1E4205F14() || v22 != v23)
      {
        v25 = sub_1E42079A4();

        if ((v25 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_19:
  if (*(a4 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA) == 1)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = sub_1E3B69624;
    v27[3] = v7;
    v27[4] = v26;

    sub_1E3C88C3C();

    goto LABEL_22;
  }

LABEL_21:
  a5[2](a5, 0);
LABEL_22:

  _Block_release(a5);
}

void sub_1E3B68874(char a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_318();
  if (a1)
  {
    v11 = sub_1E4206474();
    OUTLINED_FUNCTION_31_41(v11);
    sub_1E4206434();

    v12 = sub_1E4206424();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = a4;
    v13[5] = a2;
    v13[6] = a3;
    v15 = OUTLINED_FUNCTION_26_51();
    sub_1E376FE58(v15, v16, v17, v18, v19);
  }

  else
  {
    a2(v10);
  }
}

uint64_t sub_1E3B6897C()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();
  v0[12] = v5;
  v0[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3B68A10, v5, v4);
}

uint64_t sub_1E3B68A10()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1E3B68AF4;

    return sub_1E3B670F4();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3B68AF4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *(v0 + 112);
  v5 = *v1;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 144) = v7;

  OUTLINED_FUNCTION_66_1();
  v10 = *(v9 + 104);
  v11 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E3B68C28, v11, v10);
}

uint64_t sub_1E3B68C28()
{
  OUTLINED_FUNCTION_24();
  if (*(v0 + 144) == 1 && (OUTLINED_FUNCTION_25(), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 128) = Strong) != 0))
  {
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1E3B68D18;

    return sub_1E3B677B8();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3B68D18()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *(v0 + 128);
  v5 = *v1;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 145) = v7;

  OUTLINED_FUNCTION_66_1();
  v10 = *(v9 + 104);
  v11 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E3B68E4C, v11, v10);
}

uint64_t sub_1E3B68E4C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 145);

  if (v1 == 1)
  {
    (*(v0 + 72))(0);
  }

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3B68F78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1E41FE264();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1E3B68FDC(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3B69040(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1E42062B4();

  return v4;
}

uint64_t sub_1E3B690B8(void *a1)
{
  v2 = [a1 allAppBundleIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

void *sub_1E3B69120(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6)
{
  v12 = type metadata accessor for TVAppInstallerViewController();
  v13 = objc_allocWithZone(v12);
  v22[3] = sub_1E3280A90(0, &qword_1ECF33FF8, 0x1E69E14F0);
  v22[4] = &off_1F5D72D58;
  v22[0] = a1;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel] = 0;
  sub_1E327F454(v22, &v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo]);
  v14 = &v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle];
  *v14 = a2;
  v14[1] = a3;
  v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA] = a4;
  v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation] = a5;
  *&v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper] = a6;
  v21.receiver = v13;
  v21.super_class = v12;
  v15 = a1;
  v16 = a6;
  v17 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x240);
  v19 = v17;
  v18();
  sub_1E3B66590();
  sub_1E3B66C18();
  sub_1E3B669B0();
  [v19 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

void *sub_1E3B692C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v10 = a5;
  v11 = a4;
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(v14 + 32))(&v24 - v19, v18);
  v21 = objc_allocWithZone(type metadata accessor for TVAppInstallerViewController());
  (*(v14 + 16))(v16, v20, a8);
  v22 = sub_1E3B69468(v16, a2, a3, v11, v10, v25, v21, a8, a9);
  (*(v14 + 8))(v20, a8);
  return v22;
}

void *sub_1E3B69468(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v25[3] = a8;
  v25[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a1, a8);
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel] = 0;
  sub_1E327F454(v25, &a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo]);
  v18 = &a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle];
  *v18 = a2;
  v18[1] = a3;
  a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA] = a4;
  a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation] = a5;
  *&a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper] = a6;
  v24.receiver = a7;
  v24.super_class = type metadata accessor for TVAppInstallerViewController();
  v19 = a6;
  v20 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x240);
  v22 = v20;
  v21();
  sub_1E3B66590();
  sub_1E3B66C18();
  sub_1E3B669B0();
  [v22 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v22;
}

uint64_t objectdestroy_6Tm_1()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

void sub_1E3B69670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_17_2(v21);
  v28 = *(v20 + 16);
  v29 = *(v20 + 24);
  v30 = v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80));

  sub_1E3B67CD0(v28, v29, v30, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1E3B696DC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E388EDB0;

  return sub_1E3B67E7C();
}

uint64_t objectdestroy_48Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E3B69858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  return sub_1E42063D4();
}

uint64_t sub_1E3B698F0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E37E1058;

  return sub_1E3B6897C();
}

uint64_t OUTLINED_FUNCTION_32_47(uint64_t a1)
{
  *(v1 + 64) = a1;

  return swift_unknownObjectWeakInit();
}

uint64_t (*sub_1E3B69A04(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_1E3B699CC();
  a1[1] = v3;
  return sub_1E3B69A4C;
}

uint64_t sub_1E3B69A90(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  result = a1();
  if (!v4)
  {
    return a2(result);
  }

  return result;
}

uint64_t (*sub_1E3B69AD0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_1E3B69A64();
  a1[1] = v3;
  return sub_1E3B69B18;
}

uint64_t sub_1E3B69B30(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

void *sub_1E3B69BB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes);
  v3 = v2;
  if (v2 != 1)
  {
LABEL_24:
    sub_1E37C3ADC(v2);
    return v3;
  }

  v4 = v0;
  v5 = [*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity_mediaCollection) items];
  sub_1E3923D18();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);
  if (!v7)
  {

    v3 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v15 = *(v4 + v1);
    *(v4 + v1) = v3;

    sub_1E37C3B04(v15);
    goto LABEL_24;
  }

  v8 = v7;
  result = type metadata accessor for LibMediaEntityFactory();
  if (v8 >= 1)
  {
    v10 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E6911E60](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      sub_1E3B46CE8(v11, 0, v19);
      if (v19[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
        if (swift_dynamicCast())
        {
          if (*(&v17 + 1))
          {
            sub_1E37DADF4(&v16, v19);
            sub_1E327F454(v19, &v16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_1E3AF90C0(0, v3[2] + 1, 1, v3);
            }

            v14 = v3[2];
            v13 = v3[3];
            if (v14 >= v13 >> 1)
            {
              v3 = sub_1E3AF90C0((v13 > 1), v14 + 1, 1, v3);
            }

            __swift_destroy_boxed_opaque_existential_1(v19);
            v3[2] = v14 + 1;
            sub_1E37DADF4(&v16, &v3[5 * v14 + 4]);
            goto LABEL_20;
          }
        }

        else
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
        }
      }

      else
      {

        sub_1E325F748(v19, &qword_1ECF28EB8, &unk_1E4298890);
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
      }

      sub_1E325F748(&v16, &qword_1ECF2CE70, qword_1E42A8850);
LABEL_20:
      if (v8 == ++v10)
      {

        v4 = v0;
        v2 = 1;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B69E70(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes);
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes) = a1;
  return sub_1E37C3B04(v2);
}

uint64_t (*sub_1E3B69E88(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3B69BB0();
  return sub_1E3B69ED0;
}

uint64_t sub_1E3B69ED0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes);
  *(v2 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

uint64_t sub_1E3B69F48()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_];
    if (v5)
    {
      sub_1E4207264();
      v5 = swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    OUTLINED_FUNCTION_0_119(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20, v22, *(&v22 + 1), v23);
    if (v13)
    {
      if (swift_dynamicCast())
      {
        v24[0] = v21;
        v4 = sub_1E4207944();
        v15 = v14;
LABEL_10:
        v16 = *v1;
        v17 = v1[1];
        *v1 = v4;
        v1[1] = v15;

        sub_1E37E9E48(v16, v17);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E325F748(v24, &unk_1ECF296E0, &unk_1E4298030);
    }

    v4 = 0;
    v15 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_1E37EA628(v2, v3);
  return v4;
}

id sub_1E3B6A0A4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title + 8);
  v4 = v2;
  if (v3 != 1)
  {
    goto LABEL_25;
  }

  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);
  v6 = [v5 valueForProperty_];
  if (v6)
  {
    sub_1E4207264();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v65 = 0u;
  }

  OUTLINED_FUNCTION_0_119(v6, v7, v8, v9, v10, v11, v12, v13, v54, v58, v61, *(&v61 + 1), v65);
  if (v21)
  {
    if (OUTLINED_FUNCTION_3_128(v14, v15, v16, MEMORY[0x1E69E6158], v17, v18, v19, v20, v55, v59, v62, *(&v62 + 1), v66, *(&v66 + 1), v69[0]))
    {
      v4 = v55;
      v22 = v59;
      v23 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v23 = v55 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    sub_1E325F748(v69, &unk_1ECF296E0, &unk_1E4298030);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v25 = result;
    v4 = sub_1E3741090(0x255F4E4F53414553, 0xE900000000000040, result);
    v27 = v26;

    if (!v27)
    {
      v22 = 0;
LABEL_24:
      v52 = *v1;
      v53 = v1[1];
      *v1 = v4;
      v1[1] = v22;

      sub_1E37E9E48(v52, v53);
LABEL_25:
      sub_1E37EA628(v2, v3);
      return v4;
    }

    v28 = [v5 valueForProperty_];
    if (v28)
    {
      sub_1E4207264();
      v28 = swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v66 = 0u;
    }

    v36 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_0_119(v28, v29, v30, v31, v32, v33, v34, v35, v55, v59, v62, *(&v62 + 1), v66);
    if (v44)
    {
      if (OUTLINED_FUNCTION_3_128(v37, v38, v39, MEMORY[0x1E69E6530], v40, v41, v42, v43, v56, v60, v63, v64, v67, v68, v69[0]))
      {
        v45 = v57;
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1E4297BE0;
        *v69 = v45;
        v47 = sub_1E4207944();
        v49 = v48;
        *(v46 + 56) = v36;
        *(v46 + 64) = sub_1E3283528(v47, v48, v50);
        *(v46 + 32) = v47;
        *(v46 + 40) = v49;
        v4 = sub_1E4205F44();
        v22 = v51;

        goto LABEL_24;
      }
    }

    else
    {
      sub_1E325F748(v69, &unk_1ECF296E0, &unk_1E4298030);
    }

    v45 = 1;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B6A398(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes;
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes) = 1;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id);
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id) = xmmword_1E4297170;
  v5 = (v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title) = xmmword_1E4297170;
  v6 = [a1 representativeItem];
  if (v6)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity_mediaCollection) = a1;
    return sub_1E4028B38(v6);
  }

  else
  {

    sub_1E37C3B04(*(v1 + v3));
    sub_1E37E9E48(*v4, v4[1]);
    sub_1E37E9E48(*v5, v5[1]);
    type metadata accessor for LibMPSeasonMediaEntity(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for LibMPSeasonMediaEntity(uint64_t a1)
{
  result = qword_1ECF57890;
  if (!qword_1ECF57890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B6A504()
{
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes));

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title + 8);

  return sub_1E37E9E48(v1, v2);
}

uint64_t *sub_1E3B6A570()
{
  v0 = sub_1E4028C28();
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes));

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id + 8));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title), *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title + 8));
  return v0;
}

uint64_t sub_1E3B6A5DC()
{
  v0 = sub_1E3B6A570();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3B6A67C(uint64_t a1)
{
  result = sub_1E3B6A6A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3B6A6A4()
{
  result = qword_1ECF34000;
  if (!qword_1ECF34000)
  {
    type metadata accessor for LibMPSeasonMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34000);
  }

  return result;
}

double sub_1E3B6A798(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 344) = a1;

  return result;
}

uint64_t sub_1E3B6A830()
{
  result = (*(*v0 + 1184))();
  if (!result)
  {

    return sub_1E382EF1C(0, v2);
  }

  return result;
}

uint64_t sub_1E3B6A8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a2;
  v5[43] = 0;
  v5[41] = a1;
  return sub_1E37ECC80(39, a3, a4, a5, 0, 0, 0);
}

double sub_1E3B6A980()
{

  return result;
}

uint64_t sub_1E3B6A9B0()
{
  v0 = sub_1E37ED784();

  return v0;
}

uint64_t sub_1E3B6A9E8()
{
  v0 = sub_1E3B6A9B0();

  return MEMORY[0x1EEE6BDC0](v0, 352, 7);
}

uint64_t View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  v41 = a2 & 1;
  v40 = a4 & 1;
  v39 = a6 & 1;
  v38 = a8 & 1;
  v37 = a10 & 1;
  v36 = a12 & 1;
  v35 = a15 & 1;
  v19 = a1;
  v20 = a2 & 1;
  v21 = a3;
  v22 = a4 & 1;
  v23 = a5;
  v24 = a6 & 1;
  v25 = a7;
  v26 = a8 & 1;
  v27 = a9;
  v28 = a10 & 1;
  v29 = a11;
  v30 = a12 & 1;
  v31 = a13;
  v32 = a14;
  v33 = a15 & 1;
  v34 = a16;
  return MEMORY[0x1E690DE70](&v19, a17, &type metadata for ConditionalFlexibleFrameModifier, a18);
}

uint64_t View.conditionalFrame(width:height:alignment:condition:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, uint64_t a10)
{
  v21 = a2 & 1;
  v20 = a4 & 1;
  v19 = a7 & 1;
  v11 = a1;
  v12 = a2 & 1;
  v13 = a3;
  v14 = a4 & 1;
  v15 = a5;
  v16 = a6;
  v17 = a7 & 1;
  v18 = a8;
  return MEMORY[0x1E690DE70](&v11, a9, &type metadata for ConditionalFixedFrameModifier, a10);
}

uint64_t View.conditionalDynamicTypeSize(_:condition:)()
{
  v1 = OUTLINED_FUNCTION_8_92();
  v2 = type metadata accessor for ConditionalDynamicTypeSizeInRangeModifier(v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E37E93E8(v0, v5 - v4, &qword_1ECF34008, &qword_1E42BE5E0);
  sub_1E3B6B098((v6 + *(v2 + 24)));
  OUTLINED_FUNCTION_10_85();
  OUTLINED_FUNCTION_7_124();
  return sub_1E3B6B480(v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_8_92();
  type metadata accessor for ConditionalDynamicTypeSizeModifier(v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(v5, v0);
  OUTLINED_FUNCTION_10_85();
  OUTLINED_FUNCTION_6_107();
  return sub_1E3B6B480(v5, v7);
}

uint64_t View.conditionalPadding(edges:length:condition:)(char a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v8 = a2;
  v9 = a3 & 1;
  v10 = a4;
  return MEMORY[0x1E690DE70](v7, a5, &type metadata for ConditionalPaddingModifier, a6);
}

double sub_1E3B6AD48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(v2 + 49) & 1) == 0 || *(v2 + 48) == 1)
  {
    sub_1E4203DA4();
  }

  sub_1E4200D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34028, &qword_1E42BE8A8);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34030, &qword_1E42BE8B0) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

void *sub_1E3B6AE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 113))
  {
    if (*(v2 + 112) == 1)
    {
      sub_1E4203DA4();
    }

    v11 = *v2;
    if (*(v2 + 8))
    {
      v11 = -INFINITY;
    }

    v6 = *(v2 + 16);
    v12 = *(v2 + 24);
    v10 = v6;
    if (*(v2 + 24))
    {
      v10 = v11;
    }

    v7 = *(v2 + 48);
    v13 = *(v2 + 56);
    v5 = *(v2 + 80);
    v8 = *(v2 + 88);
    v9 = *(v2 + 32);
    if (*(v2 + 40))
    {
      v9 = v10;
    }
  }

  else
  {
    sub_1E4203DA4();
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 1;
    v9 = -INFINITY;
    v10 = -INFINITY;
    v11 = -INFINITY;
    v12 = 1;
    v13 = 1;
  }

  if (v11 > v10 || v10 > v9)
  {
    goto LABEL_26;
  }

  v15 = v7;
  if (v13)
  {
    v15 = -INFINITY;
  }

  v16 = v6;
  if (v12)
  {
    v16 = v15;
  }

  v17 = v5;
  if (v8)
  {
    v17 = v16;
  }

  if (v15 > v16 || v16 > v17)
  {
LABEL_26:
    sub_1E4206804();
    v19 = a2;
    v20 = sub_1E42026D4();
    sub_1E41FFB84();

    a2 = v19;
  }

  sub_1E42015C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34018, &qword_1E42BE898);
  OUTLINED_FUNCTION_2();
  (*(v21 + 16))(a2, a1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34020, &qword_1E42BE8A0);
  return memcpy((a2 + *(v22 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3B6B098@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070, &unk_1E42F3AD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  v26 = sub_1E42012E4();
  sub_1E3B6BA80(v26, v15);

  OUTLINED_FUNCTION_23_25(v15);
  if (v27)
  {
    (*(v18 + 104))(v25, *MEMORY[0x1E697E718], v16);
    OUTLINED_FUNCTION_23_25(v15);
    if (!v27)
    {
      sub_1E325F6F0(v15, &qword_1ECF2A250, " B\r");
    }
  }

  else
  {
    (*(v18 + 32))(v25, v15, v16);
  }

  v28 = sub_1E42012E4();
  sub_1E3B6BCBC(v28, v12);

  OUTLINED_FUNCTION_23_25(v12);
  if (v27)
  {
    (*(v18 + 104))(v22, *MEMORY[0x1E697E728], v16);
    OUTLINED_FUNCTION_23_25(v12);
    if (!v27)
    {
      sub_1E325F6F0(v12, &qword_1ECF2A250, " B\r");
    }
  }

  else
  {
    (*(v18 + 32))(v22, v12, v16);
  }

  sub_1E3AC6100();
  result = sub_1E4205E34();
  if (result)
  {
    v30 = *(v18 + 32);
    v30(v8, v25, v16);
    v30(&v8[*(v1 + 48)], v22, v16);
    sub_1E37E93E8(v8, v5, &qword_1ECF34070, &unk_1E42F3AD0);
    v31 = *(v1 + 48);
    v32 = v37;
    v30(v37, v5, v16);
    v33 = *(v18 + 8);
    v33(v5 + v31, v16);
    sub_1E3B6C31C(v8, v5);
    v34 = *(v1 + 48);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008, &qword_1E42BE5E0);
    v30(&v32[*(v35 + 36)], (v5 + v34), v16);
    return (v33)(v5, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3B6B480(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3B6B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF578A0;
  if (!qword_1ECF578A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF578A0);
  }

  return result;
}

unint64_t sub_1E3B6B52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF578A8;
  if (!qword_1ECF578A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF578A8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06VideosB041ConditionalDynamicTypeSizeInRangeModifier33_4559761B36531BADA5588625B8B287C4LLVGAaBHPxAaBHD1__AhA0cM0HPyHCHCTm(uint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_1E42013A4();
  sub_1E3B6B604(a3, a4, a5);
  OUTLINED_FUNCTION_60();
  return swift_getWitnessTable();
}

uint64_t sub_1E3B6B604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06VideosB032ConditionalFlexibleFrameModifier33_4559761B36531BADA5588625B8B287C4LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1E42013A4();
  a3();
  OUTLINED_FUNCTION_60();
  return swift_getWitnessTable();
}

unint64_t sub_1E3B6B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF578C0;
  if (!qword_1ECF578C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF578C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConditionalPaddingModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 17);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E3B6B77C(uint64_t a1)
{
  result = sub_1E42012F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E3B6B818(uint64_t a1)
{
  sub_1E3B6B894(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E3B6B894(uint64_t a1)
{
  if (!qword_1ECF34010)
  {
    sub_1E42012F4();
    sub_1E3AC6100();
    v1 = sub_1E4205E74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF34010);
    }
  }
}

uint64_t sub_1E3B6B8F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 49);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E3B6B940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3B6B9AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 114))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 113);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E3B6B9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 113) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3B6BA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E42012F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_1E3AC6100();
      v16 = sub_1E4205E14();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1E3B6BCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E42012F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_1E3AC6100();
      v16 = sub_1E4205E14();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1E3B6BEF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008, &qword_1E42BE5E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  v5 = type metadata accessor for ConditionalDynamicTypeSizeInRangeModifier(0);
  if ((*(v0 + *(v5 + 20)) & 1) == 0)
  {
    v1 = v0 + *(v5 + 24);
  }

  sub_1E37E93E8(v1, v4, &qword_1ECF34008, &qword_1E42BE5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34038, &qword_1E42BE8B8);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v6, &qword_1ECF34038, &qword_1E42BE8B8, v7);
  OUTLINED_FUNCTION_4_130();
  sub_1E32752B0(v8, &qword_1ECF34008, &qword_1E42BE5E0, v9);
  sub_1E4202FA4();
  return sub_1E325F6F0(v4, &qword_1ECF34008, &qword_1E42BE5E0);
}

uint64_t sub_1E3B6C054()
{
  v1 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (*(v0 + *(type metadata accessor for ConditionalDynamicTypeSizeModifier(0) + 20)) == 1)
  {
    (*(v3 + 16))(v7, v0, v1);
  }

  else
  {
    sub_1E3B02E88(v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34050, &qword_1E42BE8C0);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v8, &qword_1ECF34050, &qword_1E42BE8C0, v9);
  sub_1E4202F94();
  return (*(v3 + 8))(v7, v1);
}

__n128 sub_1E3B6C1A8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x100) != 0)
  {
    v8 = a2;
    if ((a4 & 1) == 0)
    {
      sub_1E4200A54();
      v9 = 0;
      *(&v11 + 1) = v10;
      v13.n128_u64[1] = v12;
      v17 = v11;
      v18 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = sub_1E4202774();
  }

  v17 = 0u;
  v18 = 0u;
  v9 = 1;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34060, &qword_1E42BE8C8);
  OUTLINED_FUNCTION_2();
  (*(v14 + 16))(a5, a1);
  v15 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34068, &unk_1E42BE8D0) + 36);
  *v15 = v8;
  result = v18;
  *(v15 + 24) = v17;
  *(v15 + 8) = v18;
  *(v15 + 40) = v9;
  return result;
}

double sub_1E3B6C290@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v3[17])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  *&result = sub_1E3B6C1A8(a1, *v3, v4 | v3[16], a2).n128_u64[0];
  return result;
}

uint64_t sub_1E3B6C31C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070, &unk_1E42F3AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3B6C38C()
{
  result = qword_1ECF34078;
  if (!qword_1ECF34078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34020, &qword_1E42BE8A0);
    sub_1E32752B0(&qword_1ECF34080, &qword_1ECF34018, &qword_1E42BE898, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34078);
  }

  return result;
}

unint64_t sub_1E3B6C444()
{
  result = qword_1ECF34088;
  if (!qword_1ECF34088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34030, &qword_1E42BE8B0);
    sub_1E32752B0(&qword_1ECF34090, &qword_1ECF34028, &qword_1E42BE8A8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34088);
  }

  return result;
}

unint64_t sub_1E3B6C4FC()
{
  result = qword_1ECF34098;
  if (!qword_1ECF34098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34068, &unk_1E42BE8D0);
    sub_1E32752B0(&qword_1ECF340A0, &qword_1ECF34060, &qword_1E42BE8C8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34098);
  }

  return result;
}

uint64_t sub_1E3B6C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E38F1C3C(&unk_1F5D73178, a2, a3);
  qword_1EE2AB070 = result;
  return result;
}

void sub_1E3B6C5EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *(v1 + 32);
  OUTLINED_FUNCTION_0_153();
  v112 = v9;
  if (sub_1E3B6CFEC(v9, 12, v10, v11) & 1) != 0 || (OUTLINED_FUNCTION_0_153(), (sub_1E3B6CFEC(v9, 11, v12, v13)))
  {
    sub_1E3751C10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v15 = sub_1E37FAFB0();
    v16 = v15[1];
    *(inited + 32) = *v15;
    *(inited + 40) = v16;
    *(inited + 72) = type metadata accessor for LibMenuItem(0);
    *(inited + 48) = v1;

    sub_1E4205CB4();
  }

  else
  {
    sub_1E3751C10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1E4297BE0;
    v18 = sub_1E37FAFB0();
    v19 = v18[1];
    *(v17 + 32) = *v18;
    *(v17 + 40) = v19;
    *(v17 + 72) = type metadata accessor for LibMenuItem(0);
    *(v17 + 48) = v1;

    sub_1E4205CB4();
  }

  v20 = sub_1E37FB46C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v21 = swift_initStackObject();
  OUTLINED_FUNCTION_130(v21, xmmword_1E4297BE0);
  sub_1E3855E78();
  v21[2].n128_u64[0] = v22;
  v21[2].n128_u64[1] = v23;
  v21[4].n128_u64[1] = MEMORY[0x1E69E6370];
  v21[3].n128_u8[0] = 1;
  v24 = sub_1E4205CB4();
  v25 = *sub_1E3C8DCB4();

  sub_1E41FE614();
  v26 = sub_1E41FE5E4();
  v28 = v27;
  (*(v4 + 8))(v8, v2);
  v113 = v26;
  v114 = v28;

  MEMORY[0x1E69109E0](35, 0xE100000000000000);

  v29 = *(v1 + 72);
  v30 = *(v1 + 80);

  MEMORY[0x1E69109E0](v29, v30);

  type metadata accessor for LibViewModel();

  OUTLINED_FUNCTION_45_35();
  v111 = v20;
  v35 = sub_1E3B76C80(v31, v32, v33, v34, v25, v20, v24);
  if (v35)
  {
    type metadata accessor for Accessibility();
    sub_1E40A92E8();
    OUTLINED_FUNCTION_71_2();
    (*(v36 + 328))();
    v37 = *(*v35 + 472);

    v37(MEMORY[0x1E69E7CC0]);
  }

  v38 = 0xEB000000002F2F3ALL;
  v39 = *(v1 + 56);
  v40 = *(v1 + 64);

  if (sub_1E4206124() & 1) != 0 || (sub_1E4206124())
  {
    v41 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v41, xmmword_1E4299720);
    v41[2].n128_u64[0] = v42;
    v41[2].n128_u64[1] = v43;
    v45 = *(v1 + 40);
    v44 = *(v1 + 48);
    v46 = MEMORY[0x1E69E6158];
    v41[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v41[3].n128_u64[0] = v45;
    v41[3].n128_u64[1] = v44;

    v41[5].n128_u64[0] = sub_1E3C7CCAC(0);
    v41[5].n128_u64[1] = v47;
    v41[7].n128_u64[1] = v46;
    v41[6].n128_u64[0] = v39;
  }

  else
  {
    OUTLINED_FUNCTION_0_153();
    if ((sub_1E3B6CFEC(v112, 14, v93, v94) & 1) != 0 && (v95 = objc_opt_self(), v96 = sub_1E4205ED4(), v97 = [v95 vuiImageNamed_], v96, v97))
    {

      v41 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v41, xmmword_1E4299720);
      v41[2].n128_u64[0] = v98;
      v41[2].n128_u64[1] = v99;
      v101 = *(v1 + 40);
      v100 = *(v1 + 48);
      v102 = MEMORY[0x1E69E6158];
      v41[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v41[3].n128_u64[0] = v101;
      v41[3].n128_u64[1] = v100;

      v41[5].n128_u64[0] = sub_1E3C7CCAC(0);
      v41[5].n128_u64[1] = v103;
      v113 = 0x656372756F736572;
    }

    else
    {
      v104 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v104 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (!v104)
      {

        goto LABEL_16;
      }

      v38 = 0xE90000000000002FLL;
      v41 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v41, xmmword_1E4299720);
      v41[2].n128_u64[0] = v105;
      v41[2].n128_u64[1] = v106;
      v108 = *(v1 + 40);
      v107 = *(v1 + 48);
      v102 = MEMORY[0x1E69E6158];
      v41[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v41[3].n128_u64[0] = v108;
      v41[3].n128_u64[1] = v107;

      v41[5].n128_u64[0] = sub_1E3C7CCAC(0);
      v41[5].n128_u64[1] = v109;
      v113 = 0x2F3A6C6F626D7973;
    }

    v114 = v38;
    v46 = &v113;
    MEMORY[0x1E69109E0](v39, v40);

    v110 = v113;
    v40 = v114;
    v41[7].n128_u64[1] = v102;
    v41[6].n128_u64[0] = v110;
  }

  v41[6].n128_u64[1] = v40;
  sub_1E4205CB4();
  OUTLINED_FUNCTION_106();
  type metadata accessor for ImageViewModel();

  if (sub_1E3F5321C(39, v46, v35))
  {
    if (v35)
    {
      OUTLINED_FUNCTION_71_2();
      v49 = *(v48 + 480);

      v50 = OUTLINED_FUNCTION_67_15();
      v51 = v49(v50);
      if (*v52)
      {
        v53 = OUTLINED_FUNCTION_79_13();
        MEMORY[0x1E6910BF0](v53);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v54 = OUTLINED_FUNCTION_66_20();
      v51(v54);
    }
  }

LABEL_16:
  v56 = *(v1 + 40);
  v55 = *(v1 + 48);
  v115 = MEMORY[0x1E69E6158];
  v113 = v56;
  v114 = v55;
  v57 = type metadata accessor for TextViewModel();
  swift_bridgeObjectRetain_n();

  v58 = sub_1E37BD068();
  if (sub_1E3C27638(23, &v113, v35, 0, v58))
  {
    if (v35)
    {
      OUTLINED_FUNCTION_71_2();
      v60 = *(v59 + 480);

      v61 = OUTLINED_FUNCTION_67_15();
      v62 = v60(v61);
      if (*v63)
      {

        MEMORY[0x1E6910BF0](v64);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v65 = OUTLINED_FUNCTION_66_20();
      v62(v65);
    }
  }

  OUTLINED_FUNCTION_0_153();
  if (sub_1E3B6CFEC(v112, 9, v66, v67))
  {
    v68 = *(*v1 + 224);
    if (v68() >= 1)
    {
      v113 = v68();
      v69 = sub_1E4207944();
      v115 = MEMORY[0x1E69E6158];
      v113 = v69;
      v114 = v70;

      v71 = sub_1E3C27638(15, &v113, v35, 0, 0);
      if (v71)
      {
        v57 = v71;
        if (v35)
        {
          OUTLINED_FUNCTION_71_2();
          v73 = *(v72 + 480);

          v74 = OUTLINED_FUNCTION_67_15();
          v75 = v73(v74);
          if (*v76)
          {
            v77 = OUTLINED_FUNCTION_79_13();
            MEMORY[0x1E6910BF0](v77);
            OUTLINED_FUNCTION_2_125();
            sub_1E4206324();
          }

          v78 = OUTLINED_FUNCTION_66_20();
          v75(v78);
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v79 = swift_initStackObject();
  OUTLINED_FUNCTION_117(v79, xmmword_1E4299720);
  v79[2].n128_u64[0] = v80;
  v79[2].n128_u64[1] = v81;
  v79[3].n128_u64[0] = v56;
  v79[3].n128_u64[1] = v55;
  v79[4].n128_u64[0] = sub_1E3C7CCAC(0);
  v79[4].n128_u64[1] = v82;
  OUTLINED_FUNCTION_35_38();
  v79[5].n128_u64[0] = v84;
  v79[5].n128_u64[1] = v83;
  v85 = sub_1E4205CB4();
  sub_1E3797720(v85);
  OUTLINED_FUNCTION_11_5();

  type metadata accessor for ImageViewModel();
  OUTLINED_FUNCTION_60_1();

  if (sub_1E3F5321C(31, v57, v35))
  {
    if (v35)
    {
      OUTLINED_FUNCTION_71_2();
      v87 = *(v86 + 480);

      v88 = OUTLINED_FUNCTION_67_15();
      v89 = v87(v88);
      if (*v90)
      {
        v91 = OUTLINED_FUNCTION_79_13();
        MEMORY[0x1E6910BF0](v91);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v92 = OUTLINED_FUNCTION_66_20();
      v89(v92);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B6CFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  a3();
  sub_1E4206254();
  sub_1E4206254();
  if (v9 == v7 && v10 == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E42079A4();
  }

  return v5 & 1;
}

double sub_1E3B6D09C()
{
  MEMORY[0x1E6910BF0]();
  sub_1E38C5A18(*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10));

  sub_1E4206324();
  return result;
}

void sub_1E3B6D0F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1E373F6E0(a3, 119, a3, a4, a5, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E38537B4(9);
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  v15 = sub_1E4205CB4();
  type metadata accessor for LibCollectionViewModel();

  v16 = sub_1E3A7A31C(a3, a1, a2, v11 & 1, a5, v15);
  v17 = v16;
  if (!v16)
  {
    return;
  }

  sub_1E3B6D54C(v16, a4);
  v19 = v18;
  type metadata accessor for Metrics(0);
  OUTLINED_FUNCTION_38();

  sub_1E3BA53F4();

  v21 = sub_1E3797720(v20);

  v22 = sub_1E3BA5560(v21, 1);
  (*(*v17 + 584))(v22);
  if (v19)
  {
    v23 = *(*v17 + 1424);

    v23(v24);
  }

  MEMORY[0x1E69109E0](0x70756F72675FLL, 0xE600000000000000);
  type metadata accessor for CollectionGroupViewModel();
  swift_retain_n();

  OUTLINED_FUNCTION_69_17();
  v25 = sub_1E3960F08();
  if (v25)
  {
    v26 = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v28 = OUTLINED_FUNCTION_24_3(v27);
    *(v28 + 16) = xmmword_1E4298880;
    *(v28 + 32) = v26;
    v29 = *(*v17 + 472);

    v29(v28);

    v30 = OUTLINED_FUNCTION_24_3(v27);
    *(v30 + 16) = xmmword_1E4298880;
    *(v30 + 32) = v26;
    v31 = *(*v17 + 1416);

    v31(v30);

    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v32 = *(*v19 + 632);

    v32(v17);
  }

LABEL_8:

  v33 = sub_1E32AE9B0(a4);
  for (i = 0; ; ++i)
  {
    if (v33 == i)
    {

      return;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, a4);
    }

    else
    {
      if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    v36 = *(v35 + 632);

    v36(v37);
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1E3B6D54C(uint64_t a1, unint64_t a2)
{
  v439 = a2;
  v10 = sub_1E388A954(a2);
  v413 = v10;
  if (v10 && (v3 = v10, p_vtable = type metadata accessor for LibLockupViewModel(0), OUTLINED_FUNCTION_39_3(), (v11 = swift_dynamicCastClass()) != 0))
  {
    v12 = v11;
    v13 = *(*v11 + 1496);

    v13(v486, v14);
    v15 = *(v12 + 312);
    v16 = *(v12 + 320);
    v17 = *(v12 + 328);

    sub_1E38BC104(v486, v17, v15, v16, 1);
    if (v18)
    {
      v19 = v18;
      isa = (*v18)[41].isa;

      (isa)(v21);
      v430 = v19;

      goto LABEL_12;
    }
  }

  else
  {
    v22 = sub_1E388A954(v439);
    if (v22)
    {
      p_vtable = v22;
      if (*(a1 + 24))
      {
        v5 = *(a1 + 16);
        v3 = *(a1 + 24);
      }

      else
      {
        v5 = 0;
        v3 = 0xE000000000000000;
      }

      v4 = type metadata accessor for LibViewModel();
      v486[0] = v5;
      v486[1] = v3;

      MEMORY[0x1E69109E0](0x79746F746F72705FLL, 0xEF6D6574695F6570);

      OUTLINED_FUNCTION_69_17();
      v30 = sub_1E3B76C80(v23, v24, v25, v26, v27, v28, v29);

      if (v30)
      {
        v430 = v30;
        if (!v413)
        {
LABEL_13:

          v34 = MEMORY[0x1E69E7CC0];
LABEL_14:
          v35 = v430;
          OUTLINED_FUNCTION_8();
          v37 = (*(v36 + 472))(v34);
          p_vtable = &(*v430)[11].vtable;
          v38 = *p_vtable;
          v39 = (*p_vtable)(v37);
          v474 = v38;
          v482 = p_vtable;
          if (v39)
          {
            sub_1E32AE9B0(v39);
            OUTLINED_FUNCTION_22_55();
            v3 = &qword_1F5D5CE68;
            while (1)
            {
              if (p_vtable == v38)
              {

                v7 = 0;
                v38 = v474;
                p_vtable = v482;
                goto LABEL_34;
              }

              if (v8)
              {
                v55 = OUTLINED_FUNCTION_11_6();
                v40 = MEMORY[0x1E6911E60](v55);
                v7 = v40;
              }

              else
              {
                if (v38 >= *(v6 + 16))
                {
                  goto LABEL_430;
                }

                v40 = OUTLINED_FUNCTION_55_25();
              }

              if (__OFADD__(v38, 1))
              {
                goto LABEL_429;
              }

              LOWORD(v487) = *(v7 + 98);
              v492 = 23;
              v43 = sub_1E3742F1C(v40, v41, v42);
              OUTLINED_FUNCTION_6_108(v43);
              OUTLINED_FUNCTION_3_129();
              v44 = sub_1E4206254();
              v52 = OUTLINED_FUNCTION_17_77(v44, v45, v46, v47, v48, v49, v50, v51, v413, v417, v422, v426, v430, v435, v439, v445, v452, v458, v463, v468, v474, v482, v486[0]);
              v54 = v54 && v4 == v35;
              if (v54)
              {
                break;
              }

              OUTLINED_FUNCTION_97_0(v52, v4, v53);
              OUTLINED_FUNCTION_10_65();

              if (v5)
              {
                goto LABEL_31;
              }

              v38 = (v38 + 1);
            }

LABEL_31:

            v38 = v474;
            p_vtable = v482;
            if (*v7 == _TtC8VideosUI13TextViewModel)
            {
LABEL_34:
              v464 = v7;
              v59 = v430;
              v60 = v38(v39);
              if (v60)
              {
                sub_1E32AE9B0(v60);
                OUTLINED_FUNCTION_22_55();
                v3 = &qword_1F5D5CE68;
                while (1)
                {
                  if (p_vtable == v38)
                  {

                    v7 = 0;
                    v38 = v474;
                    p_vtable = v482;
                    goto LABEL_53;
                  }

                  if (v8)
                  {
                    v76 = OUTLINED_FUNCTION_11_6();
                    v61 = MEMORY[0x1E6911E60](v76);
                    v7 = v61;
                  }

                  else
                  {
                    if (v38 >= *(v6 + 16))
                    {
                      goto LABEL_432;
                    }

                    v61 = OUTLINED_FUNCTION_55_25();
                  }

                  if (__OFADD__(v38, 1))
                  {
                    goto LABEL_431;
                  }

                  LOWORD(v487) = *(v7 + 98);
                  v492 = 15;
                  v64 = sub_1E3742F1C(v61, v62, v63);
                  OUTLINED_FUNCTION_6_108(v64);
                  OUTLINED_FUNCTION_3_129();
                  v65 = sub_1E4206254();
                  v73 = OUTLINED_FUNCTION_17_77(v65, v66, v67, v68, v69, v70, v71, v72, v413, v417, v422, v426, v430, v435, v439, v445, v452, v458, v464, v468, v474, v482, v486[0]);
                  if (v54 && v4 == v59)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_97_0(v73, v4, v74);
                  OUTLINED_FUNCTION_10_65();

                  if (v5)
                  {
                    goto LABEL_50;
                  }

                  v38 = (v38 + 1);
                }

LABEL_50:

                v38 = v474;
                p_vtable = v482;
                if (*v7 == _TtC8VideosUI13TextViewModel)
                {
LABEL_53:
                  v459 = v7;
                  v77 = v430;
                  v78 = v38(v60);
                  if (v78)
                  {
                    sub_1E32AE9B0(v78);
                    OUTLINED_FUNCTION_22_55();
                    v3 = &qword_1F5D5CE68;
                    while (1)
                    {
                      if (p_vtable == v38)
                      {

                        v7 = 0;
                        v38 = v474;
                        p_vtable = v482;
                        goto LABEL_72;
                      }

                      if (v8)
                      {
                        v94 = OUTLINED_FUNCTION_11_6();
                        v79 = MEMORY[0x1E6911E60](v94);
                        v7 = v79;
                      }

                      else
                      {
                        if (v38 >= *(v6 + 16))
                        {
                          goto LABEL_434;
                        }

                        v79 = OUTLINED_FUNCTION_55_25();
                      }

                      if (__OFADD__(v38, 1))
                      {
                        goto LABEL_433;
                      }

                      LOWORD(v487) = *(v7 + 98);
                      v492 = 10;
                      v82 = sub_1E3742F1C(v79, v80, v81);
                      OUTLINED_FUNCTION_6_108(v82);
                      OUTLINED_FUNCTION_3_129();
                      v83 = sub_1E4206254();
                      v91 = OUTLINED_FUNCTION_17_77(v83, v84, v85, v86, v87, v88, v89, v90, v413, v417, v422, v426, v430, v435, v439, v445, v452, v459, v464, v468, v474, v482, v486[0]);
                      if (v54 && v4 == v77)
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_97_0(v91, v4, v92);
                      OUTLINED_FUNCTION_10_65();

                      if (v5)
                      {
                        goto LABEL_69;
                      }

                      v38 = (v38 + 1);
                    }

LABEL_69:

                    v38 = v474;
                    p_vtable = v482;
                    if (*v7 == _TtC8VideosUI13TextViewModel)
                    {
LABEL_72:
                      v469 = v7;
                      v95 = v430;
                      v96 = v38(v78);
                      if (v96)
                      {
                        v97 = v96;
                        p_vtable = sub_1E32AE9B0(v96);
                        v98 = 0;
                        v6 = v97 & 0xC000000000000001;
                        LOBYTE(v7) = v97 & 0xF8;
                        v3 = &qword_1F5D5CE68;
                        while (1)
                        {
                          if (p_vtable == v98)
                          {

                            goto LABEL_90;
                          }

                          if (v6)
                          {
                            v114 = OUTLINED_FUNCTION_11_6();
                            v99 = MEMORY[0x1E6911E60](v114);
                            v56 = v99;
                          }

                          else
                          {
                            if (v98 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
                              goto LABEL_436;
                            }

                            v56 = *(v97 + 8 * v98 + 32);
                          }

                          if (__OFADD__(v98, 1))
                          {
                            goto LABEL_435;
                          }

                          LOWORD(v487) = *(v56 + 98);
                          v492 = 233;
                          v102 = sub_1E3742F1C(v99, v100, v101);
                          OUTLINED_FUNCTION_6_108(v102);
                          OUTLINED_FUNCTION_3_129();
                          v103 = sub_1E4206254();
                          v111 = OUTLINED_FUNCTION_17_77(v103, v104, v105, v106, v107, v108, v109, v110, v413, v417, v422, v426, v430, v435, v439, v445, v452, v459, v464, v469, v474, v482, v486[0]);
                          if (v54 && v4 == v95)
                          {
                            break;
                          }

                          OUTLINED_FUNCTION_97_0(v111, v4, v112);
                          OUTLINED_FUNCTION_10_65();

                          if (v5)
                          {
                            goto LABEL_88;
                          }

                          ++v98;
                        }

LABEL_88:

                        if (*v56 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
                        {
                          goto LABEL_91;
                        }
                      }

LABEL_90:
                      v56 = 0;
LABEL_91:
                      v58 = v430;
                      v57 = v469;
                      goto LABEL_92;
                    }
                  }

                  v7 = 0;
                  goto LABEL_72;
                }
              }

              v7 = 0;
              goto LABEL_53;
            }
          }

          v7 = 0;
          goto LABEL_34;
        }

LABEL_12:
        OUTLINED_FUNCTION_8();
        v32 = *(v31 + 464);

        v34 = v32(v33);

        if (v34)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }
  }

  v56 = 0;
  v57 = 0;
  v459 = 0;
  v464 = 0;
  v58 = 0;
LABEL_92:
  v418 = v56;
  v470 = v57;
  v431 = v58;
  v453 = sub_1E32AE9B0(v439);
  if (!v453)
  {
    goto LABEL_212;
  }

  p_vtable = 0;
  v445 = (v439 & 0xC000000000000001);
  v422 = v439 + 32;
  v426 = v439 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v445)
    {
      v115 = MEMORY[0x1E6911E60](p_vtable, v439);
      v116 = v115;
    }

    else
    {
      if (p_vtable >= *(v426 + 16))
      {
        goto LABEL_425;
      }

      v116 = *(v422 + 8 * p_vtable);
    }

    v117 = __OFADD__(p_vtable, 1);
    v118 = (p_vtable + 1);
    if (v117)
    {
      goto LABEL_424;
    }

    v474 = v118;
    v482 = v116;
    if (!v464)
    {
      v464 = 0;
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_71_2();
    v115 = (*(v119 + 464))();
    if (!v115)
    {
      goto LABEL_128;
    }

    sub_1E32AE9B0(v115);
    OUTLINED_FUNCTION_16_82();
    while (1)
    {
      if (v6 == v3)
      {

LABEL_121:
        v116 = v482;
        goto LABEL_128;
      }

      if (v118)
      {
        OUTLINED_FUNCTION_82_8();
        v4 = v136;
      }

      else
      {
        if (v3 >= *(v56 + 16))
        {
          goto LABEL_419;
        }

        OUTLINED_FUNCTION_34_39();
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_418;
      }

      OUTLINED_FUNCTION_76_10();
      v492 = 23;
      v123 = sub_1E3742F1C(v120, v121, v122);
      OUTLINED_FUNCTION_7_125(v123);
      OUTLINED_FUNCTION_8_93();
      v124 = OUTLINED_FUNCTION_42_41();
      v132 = OUTLINED_FUNCTION_25_57(v124, v125, v126, v127, v128, v129, v130, v131, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v474, v482, v486[0]);
      if (v54)
      {
        break;
      }

      OUTLINED_FUNCTION_20_8(v132, v133, v134);
      OUTLINED_FUNCTION_84_9();

      if (v7)
      {
        goto LABEL_117;
      }

      v3 = (v3 + 1);
    }

LABEL_117:

    if (*v4 != _TtC8VideosUI13TextViewModel)
    {

      goto LABEL_121;
    }

    sub_1E3C27024();
    v116 = v482;
    if (v137)
    {
      v138 = sub_1E4206024();
    }

    else
    {
      v138 = 0;
    }

    sub_1E3C27024();
    if (v139)
    {
      sub_1E4206024();
      OUTLINED_FUNCTION_73_1();
      if (v138 < v3)
      {
        goto LABEL_125;
      }

LABEL_127:
    }

    else
    {
      if ((v138 & 0x8000000000000000) == 0)
      {
        goto LABEL_127;
      }

LABEL_125:

      v464 = v4;
    }

LABEL_128:
    if (!v459)
    {
      v459 = 0;
      goto LABEL_157;
    }

    OUTLINED_FUNCTION_71_2();
    v115 = (*(v140 + 464))();
    if (!v115)
    {
      goto LABEL_157;
    }

    sub_1E32AE9B0(v115);
    OUTLINED_FUNCTION_16_82();
    while (2)
    {
      if (v6 == v3)
      {

LABEL_150:
        v116 = v482;
        goto LABEL_157;
      }

      if (v118)
      {
        OUTLINED_FUNCTION_82_8();
        v4 = v157;
      }

      else
      {
        if (v3 >= *(v56 + 16))
        {
          goto LABEL_421;
        }

        OUTLINED_FUNCTION_34_39();
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_420;
      }

      OUTLINED_FUNCTION_76_10();
      v492 = 15;
      v144 = sub_1E3742F1C(v141, v142, v143);
      OUTLINED_FUNCTION_7_125(v144);
      OUTLINED_FUNCTION_8_93();
      v145 = OUTLINED_FUNCTION_42_41();
      v153 = OUTLINED_FUNCTION_25_57(v145, v146, v147, v148, v149, v150, v151, v152, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v474, v482, v486[0]);
      if (!v54)
      {
        OUTLINED_FUNCTION_20_8(v153, v154, v155);
        OUTLINED_FUNCTION_84_9();

        if (v7)
        {
          goto LABEL_146;
        }

        v3 = (v3 + 1);
        continue;
      }

      break;
    }

LABEL_146:

    if (*v4 != _TtC8VideosUI13TextViewModel)
    {

      goto LABEL_150;
    }

    sub_1E3C27024();
    v116 = v482;
    if (v158)
    {
      v159 = sub_1E4206024();
    }

    else
    {
      v159 = 0;
    }

    sub_1E3C27024();
    if (v160)
    {
      sub_1E4206024();
      OUTLINED_FUNCTION_73_1();
      if (v159 < v3)
      {
        goto LABEL_154;
      }

LABEL_156:
    }

    else
    {
      if ((v159 & 0x8000000000000000) == 0)
      {
        goto LABEL_156;
      }

LABEL_154:

      v459 = v4;
    }

LABEL_157:
    v161 = v116 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    if (!v470)
    {
      v470 = 0;
      goto LABEL_186;
    }

    OUTLINED_FUNCTION_71_2();
    v115 = (*(v162 + 464))();
    if (!v115)
    {
      goto LABEL_186;
    }

    v163 = v115;
    v435 = v116 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v6 = sub_1E32AE9B0(v115);
    v3 = 0;
    v56 = v163 & 0xC000000000000001;
    while (2)
    {
      if (v6 == v3)
      {

LABEL_179:
        v116 = v482;
        v161 = v435;
        goto LABEL_186;
      }

      if (v56)
      {
        OUTLINED_FUNCTION_82_8();
        v4 = v180;
      }

      else
      {
        if (v3 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_423;
        }

        OUTLINED_FUNCTION_34_39();
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_422;
      }

      OUTLINED_FUNCTION_76_10();
      v492 = 10;
      v167 = sub_1E3742F1C(v164, v165, v166);
      OUTLINED_FUNCTION_7_125(v167);
      OUTLINED_FUNCTION_8_93();
      v168 = OUTLINED_FUNCTION_42_41();
      v176 = OUTLINED_FUNCTION_25_57(v168, v169, v170, v171, v172, v173, v174, v175, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v474, v482, v486[0]);
      if (!v54)
      {
        OUTLINED_FUNCTION_20_8(v176, v177, v178);
        OUTLINED_FUNCTION_84_9();

        if (v7)
        {
          goto LABEL_175;
        }

        v3 = (v3 + 1);
        continue;
      }

      break;
    }

LABEL_175:

    if (*v4 != _TtC8VideosUI13TextViewModel)
    {

      goto LABEL_179;
    }

    sub_1E3C27024();
    v116 = v482;
    v161 = v435;
    if (v181)
    {
      v182 = sub_1E4206024();
    }

    else
    {
      v182 = 0;
    }

    sub_1E3C27024();
    if (v183)
    {
      sub_1E4206024();
      OUTLINED_FUNCTION_73_1();
      if (v182 < v3)
      {
        goto LABEL_183;
      }

LABEL_185:
    }

    else
    {
      if ((v182 & 0x8000000000000000) == 0)
      {
        goto LABEL_185;
      }

LABEL_183:

      v470 = v4;
    }

LABEL_186:
    v184 = (*(*v116 + 464))(v115);
    if (v184)
    {
      sub_1E32AE9B0(v184);
      OUTLINED_FUNCTION_16_82();
      while (1)
      {
        if (v6 == v3)
        {

          goto LABEL_208;
        }

        if (v161)
        {
          OUTLINED_FUNCTION_82_8();
          v4 = v201;
        }

        else
        {
          if (v3 >= *(v56 + 16))
          {
            goto LABEL_417;
          }

          OUTLINED_FUNCTION_34_39();
        }

        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
LABEL_433:
          __break(1u);
LABEL_434:
          __break(1u);
LABEL_435:
          __break(1u);
LABEL_436:
          __break(1u);
LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
LABEL_449:
          __break(1u);
          __break(1u);
LABEL_450:
          __break(1u);
LABEL_451:
          __break(1u);
LABEL_452:
          __break(1u);
LABEL_453:
          __break(1u);
LABEL_454:
          __break(1u);
          __break(1u);
LABEL_455:
          __break(1u);
LABEL_456:
          __break(1u);
          __break(1u);
LABEL_457:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_458:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_459:
          __break(1u);
LABEL_460:
          __break(1u);
LABEL_461:
          __break(1u);
LABEL_462:
          __break(1u);
LABEL_463:
          __break(1u);
LABEL_464:
          __break(1u);
LABEL_465:
          __break(1u);
LABEL_466:
          __break(1u);
LABEL_467:
          __break(1u);
LABEL_468:
          __break(1u);
LABEL_469:
          __break(1u);
LABEL_470:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_76_10();
        v492 = 233;
        v188 = sub_1E3742F1C(v185, v186, v187);
        OUTLINED_FUNCTION_7_125(v188);
        OUTLINED_FUNCTION_8_93();
        v189 = OUTLINED_FUNCTION_42_41();
        v197 = OUTLINED_FUNCTION_25_57(v189, v190, v191, v192, v193, v194, v195, v196, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v474, v482, v486[0]);
        if (v54)
        {
          break;
        }

        OUTLINED_FUNCTION_20_8(v197, v198, v199);
        OUTLINED_FUNCTION_84_9();

        if (v7)
        {
          goto LABEL_203;
        }

        v3 = (v3 + 1);
      }

LABEL_203:

      if (*v4 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {
        v204 = sub_1E4173898(v202, v203);

        p_vtable = v474;

        if (v204)
        {
          v418 = v4;
        }

        continue;
      }
    }

LABEL_208:
    p_vtable = v474;
  }

  while (p_vtable != v453);
LABEL_212:
  v205 = v431;
  if (!v431)
  {
    goto LABEL_326;
  }

  OUTLINED_FUNCTION_8();
  v207 = (*(v206 + 480))(v486);
  v215 = *v208;
  if (!*v208)
  {
    v231 = OUTLINED_FUNCTION_12_85(v207, v208, v209, v210, v211, v212, v213, v214, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v474, v482, v486[0]);
    v232(v231);
    goto LABEL_292;
  }

  p_vtable = v208;
  v446 = v207;
  v6 = 0;
  v475 = v215 & 0xC000000000000001;
  v483 = sub_1E32AE9B0(v215);
  v454 = v215 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v483 == v6)
    {
      goto LABEL_289;
    }

    if (v475)
    {
      v217 = MEMORY[0x1E6911E60](v6, v215);
      v216 = v217;
    }

    else
    {
      if (v6 >= *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_437;
      }

      v216 = *(v215 + 8 * v6 + 32);
    }

    v220 = *(v216 + 98);
    v492 = v220;
    v489 = 23;
    sub_1E3742F1C(v217, v218, v219);
    OUTLINED_FUNCTION_8_93();
    OUTLINED_FUNCTION_41_36();
    OUTLINED_FUNCTION_14_101();
    v221 = OUTLINED_FUNCTION_4_131();
    if (v54 && v3 == v431)
    {
      break;
    }

    v225 = OUTLINED_FUNCTION_21_59(v221, v222, v223);

    if (v225)
    {
      goto LABEL_235;
    }

    v492 = v220;
    v489 = 15;
    OUTLINED_FUNCTION_8_93();
    OUTLINED_FUNCTION_41_36();
    OUTLINED_FUNCTION_14_101();
    v226 = OUTLINED_FUNCTION_4_131();
    if (v54 && v3 == v431)
    {
      break;
    }

    v230 = OUTLINED_FUNCTION_21_59(v226, v227, v228);

    if (v230)
    {
      goto LABEL_236;
    }

    v117 = __OFADD__(v6++, 1);
    if (v117)
    {
      goto LABEL_448;
    }
  }

LABEL_235:

LABEL_236:
  v233 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_451;
  }

  if (v233 == sub_1E32AE9B0(*p_vtable))
  {
    goto LABEL_290;
  }

  v234 = v6 + 5;
  while (2)
  {
    OUTLINED_FUNCTION_40_39();
    if (v54)
    {
      if ((v233 & 0x8000000000000000) != 0)
      {
        goto LABEL_426;
      }

      OUTLINED_FUNCTION_39_29();
      if (v236)
      {
        goto LABEL_427;
      }

      v254 = *(v235 + 8 * v234);
    }

    else
    {
      v254 = MEMORY[0x1E6911E60](v233);
    }

    v237 = *(v254 + 98);
    v492 = v237;
    v489 = 23;
    OUTLINED_FUNCTION_8_93();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    v238 = OUTLINED_FUNCTION_4_131();
    if (v54 && &qword_1F5D5CE68 == v205)
    {
      goto LABEL_277;
    }

    OUTLINED_FUNCTION_21_59(v238, v239, v240);
    OUTLINED_FUNCTION_112_0();

    if (v220)
    {
LABEL_278:

      goto LABEL_279;
    }

    v492 = v237;
    v489 = 15;
    OUTLINED_FUNCTION_8_93();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    v242 = OUTLINED_FUNCTION_4_131();
    if (v54 && &qword_1F5D5CE68 == v205)
    {
LABEL_277:

      goto LABEL_278;
    }

    OUTLINED_FUNCTION_21_59(v242, v243, v244);
    OUTLINED_FUNCTION_112_0();

    if (v220)
    {
      goto LABEL_279;
    }

    if (v233 == v6)
    {
      goto LABEL_274;
    }

    v246 = *p_vtable;
    if ((*p_vtable & 0xC000000000000001) != 0)
    {
      v205 = MEMORY[0x1E6911E60](v6, *p_vtable);
      v246 = *p_vtable;
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_464;
      }

      OUTLINED_FUNCTION_33_39();
      if (v6 >= v247)
      {
        goto LABEL_465;
      }

      OUTLINED_FUNCTION_59_16();
    }

    if ((v246 & 0xC000000000000001) != 0)
    {
      v255 = OUTLINED_FUNCTION_114_0();
      MEMORY[0x1E6911E60](v255);
      v246 = *p_vtable;
    }

    else
    {
      if ((v233 & 0x8000000000000000) != 0)
      {
        goto LABEL_466;
      }

      OUTLINED_FUNCTION_33_39();
      if (v233 >= v248)
      {
        goto LABEL_468;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *p_vtable = v246;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v246 & 0x8000000000000000) != 0 || (v246 & 0x4000000000000000) != 0)
    {
      *p_vtable = sub_1E37EFA58(v246);
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_467;
    }

    OUTLINED_FUNCTION_38_30();
    if (v236)
    {
      goto LABEL_469;
    }

    OUTLINED_FUNCTION_58_21(v250);
    v251 = *p_vtable;
    if ((*p_vtable & 0x8000000000000000) == 0 && (v251 & 0x4000000000000000) == 0)
    {
      if ((v233 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

LABEL_272:
      OUTLINED_FUNCTION_37_38();
      if (v236)
      {
        goto LABEL_470;
      }

      *(v252 + 8 * v234) = v205;

LABEL_274:
      v117 = __OFADD__(v6++, 1);
      if (v117)
      {
        goto LABEL_459;
      }

LABEL_279:
      v117 = __OFADD__(v233++, 1);
      if (v117)
      {
        goto LABEL_428;
      }

      if (*p_vtable >> 62)
      {
        v253 = OUTLINED_FUNCTION_119_1();
      }

      else
      {
        v253 = *((*p_vtable & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v234;
      if (v233 == v253)
      {
        goto LABEL_290;
      }

      continue;
    }

    break;
  }

  *p_vtable = sub_1E37EFA58(v251);
  if ((v233 & 0x8000000000000000) == 0)
  {
    goto LABEL_272;
  }

LABEL_288:
  __break(1u);
LABEL_289:
  v6 = sub_1E32AE9B0(*p_vtable);
LABEL_290:
  v256 = sub_1E32AE9B0(*p_vtable);
  if (v256 < v6)
  {
    goto LABEL_450;
  }

  v257 = OUTLINED_FUNCTION_62_15(v256);
  v265 = OUTLINED_FUNCTION_12_85(v257, v258, v259, v260, v261, v262, v263, v264, v413, v418, v422, v426, v431, v435, v439, v446, v454, v459, v464, v470, v475, v483, v486[0]);
  v445(v265);
LABEL_292:
  v205 = v431;
  if (v464)
  {
    OUTLINED_FUNCTION_8();
    v267 = *(v266 + 480);

    OUTLINED_FUNCTION_32_48();
    v267();
    OUTLINED_FUNCTION_44_35();
    if (v276)
    {

      sub_1E3B6D09C();
    }

    v277 = OUTLINED_FUNCTION_12_85(v268, v269, v270, v271, v272, v273, v274, v275, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v476, v482, v486[0]);
    (v267)(v277);

    v205 = v431;
  }

  if (v459)
  {
    OUTLINED_FUNCTION_8();
    v279 = *(v278 + 480);

    OUTLINED_FUNCTION_32_48();
    v279();
    OUTLINED_FUNCTION_44_35();
    if (v288)
    {

      sub_1E3B6D09C();
    }

    v289 = OUTLINED_FUNCTION_12_85(v280, v281, v282, v283, v284, v285, v286, v287, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v476, v482, v486[0]);
    (v279)(v289);

    v205 = v431;
  }

  if (!v470)
  {
    goto LABEL_326;
  }

  OUTLINED_FUNCTION_8();
  v290 += 60;
  v291 = *v290;
  v292 = v290;

  OUTLINED_FUNCTION_32_48();
  v293 = v291();
  v477 = v294;
  v301 = *v294;
  if (!*v294)
  {
    v319 = OUTLINED_FUNCTION_12_85(v293, v294, v295, v296, v297, v298, v299, v300, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v294, v482, v486[0]);
    v320(v319);
    goto LABEL_323;
  }

  v440 = v293;
  v447 = v292;
  sub_1E32AE9B0(v301);
  OUTLINED_FUNCTION_46_30();
  v310 = &qword_1F5D5CE68;
  while (1)
  {
    if (v291 == v6)
    {
      v6 = OUTLINED_FUNCTION_83_7(v302, v303, v304, v305, v306, v307, v308, v309, v413, v418, v422, v426, v431, v435, v440, v447, v291, v459, v464, v470, v477);
      goto LABEL_321;
    }

    if (v482)
    {
      v312 = MEMORY[0x1E6911E60](v6, v301);
      v311 = v312;
    }

    else
    {
      if (v6 >= *(p_vtable + 16))
      {
        goto LABEL_438;
      }

      v311 = *(v301 + 8 * v6 + 32);
    }

    v492 = *(v311 + 98);
    v489 = 10;
    sub_1E3742F1C(v312, v313, v314);
    OUTLINED_FUNCTION_3_129();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    v316 = v488;
    if (v490 == v487 && v491 == v488)
    {
      break;
    }

    v318 = OUTLINED_FUNCTION_20_8(v490, v315, v487);

    if (v318)
    {
      goto LABEL_319;
    }

    v117 = __OFADD__(v6++, 1);
    if (v117)
    {
      goto LABEL_440;
    }
  }

LABEL_319:
  v301 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_462;
  }

  if (v301 != OUTLINED_FUNCTION_83_7(v302, v303, v304, v305, v306, v307, v308, v309, v413, v418, v422, v426, v431, v435, v440, v447, v291, v459, v464, v470, v477))
  {
    v389 = v6 + 5;
    do
    {
      OUTLINED_FUNCTION_40_39();
      if (v54)
      {
        if ((v301 & 0x8000000000000000) != 0)
        {
          goto LABEL_442;
        }

        OUTLINED_FUNCTION_39_29();
        if (v236)
        {
          goto LABEL_443;
        }

        v403 = *(v390 + 8 * v389);
      }

      else
      {
        v403 = MEMORY[0x1E6911E60](v301);
      }

      v492 = *(v403 + 98);
      v489 = 10;
      OUTLINED_FUNCTION_8_93();
      OUTLINED_FUNCTION_41_36();
      OUTLINED_FUNCTION_14_101();
      v391 = OUTLINED_FUNCTION_4_131();
      if (v54 && v310 == v316)
      {
      }

      else
      {
        OUTLINED_FUNCTION_21_59(v391, v392, v393);
        OUTLINED_FUNCTION_112_0();

        if (v301 != v6)
        {
          v395 = *p_vtable;
          if ((*p_vtable & 0xC000000000000001) != 0)
          {
            v316 = MEMORY[0x1E6911E60](v6, *p_vtable);
            v395 = *p_vtable;
          }

          else
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_452;
            }

            OUTLINED_FUNCTION_33_39();
            if (v6 >= v396)
            {
              goto LABEL_453;
            }

            OUTLINED_FUNCTION_59_16();
          }

          if ((v395 & 0xC000000000000001) != 0)
          {
            v404 = OUTLINED_FUNCTION_114_0();
            v310 = MEMORY[0x1E6911E60](v404);
            v395 = *p_vtable;
          }

          else
          {
            if ((v301 & 0x8000000000000000) != 0)
            {
              goto LABEL_454;
            }

            OUTLINED_FUNCTION_33_39();
            if (v301 >= v397)
            {
              goto LABEL_456;
            }

            v310 = *(v395 + 8 * v389);
          }

          v398 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *p_vtable = v395;
          if (!v398 || (v395 & 0x8000000000000000) != 0 || (v395 & 0x4000000000000000) != 0)
          {
            *p_vtable = sub_1E37EFA58(v395);
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_455;
          }

          OUTLINED_FUNCTION_38_30();
          if (v236)
          {
            goto LABEL_457;
          }

          OUTLINED_FUNCTION_58_21(v399);
          v400 = *p_vtable;
          if ((*p_vtable & 0x8000000000000000) != 0 || (v400 & 0x4000000000000000) != 0)
          {
            *p_vtable = sub_1E37EFA58(v400);
            if ((v301 & 0x8000000000000000) != 0)
            {
LABEL_397:
              __break(1u);
              goto LABEL_398;
            }
          }

          else if ((v301 & 0x8000000000000000) != 0)
          {
            goto LABEL_397;
          }

          OUTLINED_FUNCTION_37_38();
          if (v236)
          {
            goto LABEL_458;
          }

          *(v401 + 8 * v389) = v316;
        }

        v117 = __OFADD__(v6++, 1);
        if (v117)
        {
          goto LABEL_449;
        }
      }

      v117 = __OFADD__(v301++, 1);
      if (v117)
      {
        goto LABEL_444;
      }

      if (*p_vtable >> 62)
      {
        v402 = OUTLINED_FUNCTION_119_1();
      }

      else
      {
        v402 = *((*p_vtable & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v389;
    }

    while (v301 != v402);
  }

LABEL_321:
  v321 = sub_1E32AE9B0(*p_vtable);
  if (v321 < v6)
  {
    goto LABEL_460;
  }

  v322 = OUTLINED_FUNCTION_62_15(v321);
  v330 = OUTLINED_FUNCTION_12_85(v322, v323, v324, v325, v326, v327, v328, v329, v415, v420, v424, v428, v433, v437, v442, v449, v456, v461, v466, v472, v479, v482, v486[0]);
  v441(v330);
  v291 = v455;
LABEL_323:
  OUTLINED_FUNCTION_32_48();
  v291();
  OUTLINED_FUNCTION_44_35();
  if (v339)
  {

    sub_1E3B6D09C();
  }

  v340 = OUTLINED_FUNCTION_12_85(v331, v332, v333, v334, v335, v336, v337, v338, v414, v419, v423, v427, v432, v436, v441, v448, v455, v460, v465, v471, v478, v484, v486[0]);
  (v301)(v340);

  v205 = v431;
LABEL_326:
  if (!v418)
  {
    goto LABEL_354;
  }

  if (!v205)
  {
    goto LABEL_353;
  }

  OUTLINED_FUNCTION_8();
  v341 += 60;
  v342 = *v341;
  v343 = v341;
  OUTLINED_FUNCTION_32_48();
  v344 = v342();
  v480 = v345;
  v301 = *v345;
  if (!*v345)
  {
    v367 = OUTLINED_FUNCTION_12_85(v344, v345, v346, v347, v348, v349, v350, v351, v413, v418, v422, v426, v431, v435, v439, v445, v453, v459, v464, v470, v345, v482, v486[0]);
    v368(v367);
    goto LABEL_350;
  }

  v443 = v344;
  v450 = v343;
  sub_1E32AE9B0(v301);
  OUTLINED_FUNCTION_46_30();
  v310 = &qword_1F5D5CE68;
  while (1)
  {
    if (v342 == v6)
    {
      v6 = OUTLINED_FUNCTION_83_7(v352, v353, v354, v355, v356, v357, v358, v359, v413, v418, v422, v426, v431, v435, v443, v450, v342, v459, v464, v470, v480);
      goto LABEL_348;
    }

    if (v482)
    {
      v361 = MEMORY[0x1E6911E60](v6, v301);
      v360 = v361;
    }

    else
    {
      if (v6 >= *(p_vtable + 16))
      {
        goto LABEL_439;
      }

      v360 = *(v301 + 8 * v6 + 32);
    }

    v492 = *(v360 + 98);
    v489 = 233;
    sub_1E3742F1C(v361, v362, v363);
    OUTLINED_FUNCTION_3_129();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    v316 = v488;
    if (v490 == v487 && v491 == v488)
    {
      break;
    }

    v366 = OUTLINED_FUNCTION_20_8(v490, v364, v487);

    if (v366)
    {
      goto LABEL_346;
    }

    v117 = __OFADD__(v6++, 1);
    if (v117)
    {
      goto LABEL_441;
    }
  }

LABEL_346:
  v301 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_463;
  }

  if (v301 != OUTLINED_FUNCTION_83_7(v352, v353, v354, v355, v356, v357, v358, v359, v413, v418, v422, v426, v431, v435, v443, v450, v342, v459, v464, v470, v480))
  {
LABEL_398:
    v405 = v6 + 5;
    do
    {
      OUTLINED_FUNCTION_40_39();
      if (v54)
      {
        if ((v301 & 0x8000000000000000) != 0)
        {
          goto LABEL_445;
        }

        OUTLINED_FUNCTION_39_29();
        if (v236)
        {
          goto LABEL_446;
        }

        v412 = *(v406 + 8 * v405);
      }

      else
      {
        v412 = MEMORY[0x1E6911E60](v301);
      }

      v492 = *(v412 + 98);
      v489 = 233;
      OUTLINED_FUNCTION_8_93();
      OUTLINED_FUNCTION_41_36();
      OUTLINED_FUNCTION_14_101();
      v407 = OUTLINED_FUNCTION_4_131();
      if (v54 && v310 == v316)
      {
      }

      else
      {
        OUTLINED_FUNCTION_21_59(v407, v408, v409);
        OUTLINED_FUNCTION_112_0();
      }

      v117 = __OFADD__(v301++, 1);
      if (v117)
      {
        goto LABEL_447;
      }

      if (*p_vtable >> 62)
      {
        v411 = OUTLINED_FUNCTION_119_1();
      }

      else
      {
        v411 = *((*p_vtable & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v405;
    }

    while (v301 != v411);
  }

LABEL_348:
  v369 = sub_1E32AE9B0(*p_vtable);
  if (v369 < v6)
  {
    goto LABEL_461;
  }

  v370 = OUTLINED_FUNCTION_62_15(v369);
  v378 = OUTLINED_FUNCTION_12_85(v370, v371, v372, v373, v374, v375, v376, v377, v415, v420, v424, v428, v433, v437, v442, v449, v456, v461, v466, v472, v479, v482, v486[0]);
  v444(v378);
  v342 = v457;
LABEL_350:
  OUTLINED_FUNCTION_32_48();
  v342();
  OUTLINED_FUNCTION_44_35();
  if (v387)
  {

    sub_1E3B6D09C();
  }

  v388 = OUTLINED_FUNCTION_12_85(v379, v380, v381, v382, v383, v384, v385, v386, v416, v421, v425, v429, v434, v438, v444, v451, v457, v462, v467, v473, v481, v485, v486[0]);
  (v301)(v388);
LABEL_353:

LABEL_354:
}

void sub_1E3B6F108()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *sub_1E3C8DC30();
  if (v1)
  {
    v9 = v3;
    v10 = v1;
  }

  else
  {
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
  }

  v11 = MEMORY[0x1E69E6158];
  v96 = v9;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;

    sub_1E384EE08(23);
    *(inited + 32) = v13;
    *(inited + 40) = v14;
    *(inited + 72) = v11;
    *(inited + 48) = v9;
    *(inited + 56) = v10;

    OUTLINED_FUNCTION_71_22();
    v94 = sub_1E4205CB4();
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(39);
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    v95 = v3;
    v18 = swift_initStackObject();
    v19 = OUTLINED_FUNCTION_130(v18, xmmword_1E4297BD0);
    v18[2].n128_u64[0] = sub_1E3C7CCAC(v19);
    v18[2].n128_u64[1] = v20;
    v18[4].n128_u64[1] = v11;
    OUTLINED_FUNCTION_35_38();
    v18[3].n128_u64[0] = v22;
    v18[3].n128_u64[1] = v21;
    ViewModelKeys.rawValue.getter(12);
    v18[5].n128_u64[0] = v23;
    v18[5].n128_u64[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1E429A240;
    *(v25 + 32) = sub_1E3D46F94(91);
    *(v25 + 40) = v26;
    *(v25 + 48) = 0x6C6C616D73;
    *(v25 + 56) = 0xE500000000000000;
    *(v25 + 64) = sub_1E3D46F94(96);
    *(v25 + 72) = v27;
    *(v25 + 80) = 0x32656C746974;
    *(v25 + 88) = 0xE600000000000000;
    *(v25 + 96) = sub_1E3D46F94(97);
    *(v25 + 104) = v28;
    *(v25 + 112) = 0x7A69736168706D65;
    *(v25 + 120) = 0xEA00000000006465;
    *(v25 + 128) = sub_1E3D46F94(21);
    *(v25 + 136) = v29;
    strcpy((v25 + 144), "secondaryText");
    *(v25 + 158) = -4864;
    *(v25 + 160) = sub_1E3D46F94(13);
    *(v25 + 168) = v30;
    *(v25 + 176) = 0x7265746E6563;
    *(v25 + 184) = 0xE600000000000000;
    v31 = sub_1E4205CB4();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    v18[7].n128_u64[1] = v32;
    v18[6].n128_u64[0] = v31;
    ViewModelKeys.rawValue.getter(11);
    v18[8].n128_u64[0] = v33;
    v18[8].n128_u64[1] = v34;
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_1E4297BE0;
    *(v35 + 32) = sub_1E3852A98(2);
    *(v35 + 40) = v36;
    *(v35 + 48) = 41154;
    *(v35 + 56) = 0xA200000000000000;
    v37 = sub_1E4205CB4();
    v18[10].n128_u64[1] = v32;
    v18[9].n128_u64[0] = v37;
    v3 = v95;
    OUTLINED_FUNCTION_71_22();
    v38 = sub_1E4205CB4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *(v15 + 72) = v39;
    *(v15 + 48) = v38;
    OUTLINED_FUNCTION_71_22();
    v40 = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1E4299720;
    *(v41 + 32) = v94;
    *(v41 + 40) = v40;
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_1E4297BE0;
    ViewModelKeys.rawValue.getter(14);
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    *(v42 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *(v42 + 48) = v41;
    OUTLINED_FUNCTION_71_22();
    v45 = sub_1E4205CB4();
  }

  else
  {
    v100[1] = v10;

    v39 = MEMORY[0x1E69E6158];
    v45 = v9;
  }

  v100[3] = v39;
  v100[0] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1E4297BD0;
  v47 = sub_1E37FAFB0();
  v48 = v47[1];
  *(v46 + 32) = *v47;
  *(v46 + 40) = v48;
  *(v46 + 72) = type metadata accessor for LibMenuItem(0);
  *(v46 + 48) = v7;

  v49 = sub_1E37FAFE0();
  v50 = v49[1];
  *(v46 + 80) = *v49;
  *(v46 + 88) = v50;
  *(v46 + 120) = v11;
  v51 = v1;
  if (!v1)
  {
    v3 = v96;
  }

  *(v46 + 96) = v3;
  *(v46 + 104) = v51;
  sub_1E3751C10();
  OUTLINED_FUNCTION_11_5();

  v52 = sub_1E37FAFEC();
  v54 = *v52;
  v53 = v52[1];
  *(v46 + 128) = v54;
  *(v46 + 136) = v53;
  v55 = MEMORY[0x1E69E6370];
  *(v46 + 168) = MEMORY[0x1E69E6370];
  *(v46 + 144) = 0;

  v56 = MEMORY[0x1E69E6158];
  sub_1E4205CB4();
  sub_1E37FB46C();
  OUTLINED_FUNCTION_106();
  type metadata accessor for LibViewModel();

  v57 = v48;
  OUTLINED_FUNCTION_45_35();
  v62 = sub_1E3B76C80(v58, v59, v60, v61, v8, v48, 0);
  if (v62)
  {
    LOBYTE(v99) = 0;
    v98 = v55;
    LOBYTE(v97[0]) = 1;
    OUTLINED_FUNCTION_30_1();
    v64 = *(v63 + 784);

    v64(&v99, v97, &unk_1F5D5E7B8, &off_1F5D5CC78);

    sub_1E329505C(v97);
  }

  v65 = MEMORY[0x1E69E7CC0];
  v99 = MEMORY[0x1E69E7CC0];
  sub_1E328438C(v100, v97);
  type metadata accessor for TextViewModel();

  sub_1E37BD068();
  OUTLINED_FUNCTION_45_35();
  if (sub_1E3C27638(v66, v67, v68, v69, v70))
  {

    MEMORY[0x1E6910BF0](v71);
    v72 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v72 >> 1)
    {
      OUTLINED_FUNCTION_35(v72);
      sub_1E42062F4();
    }

    sub_1E4206324();
    v65 = v99;
  }

  OUTLINED_FUNCTION_0_153();
  if (sub_1E3B6CFEC(v73, 6, v74, v75))
  {
    v76 = [objc_opt_self() currentDevice];
    v77 = [v76 userInterfaceIdiom];

    v78 = [objc_opt_self() sharedInstance];
    v79 = v78;
    if (v77)
    {
      if (v78)
      {
        v80 = "ersImageViewModel";
        v81 = 0xD000000000000018;
LABEL_22:

        v82 = sub_1E3741090(v81, v80 | 0x8000000000000000, v79);
        v84 = v83;

        if (v84)
        {
          v98 = v56;
          v97[0] = v82;
          v97[1] = v84;

          sub_1E374EA2C();
          OUTLINED_FUNCTION_45_35();
          if (sub_1E3C27638(v85, v86, v87, v88, v89))
          {
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_18_63();
            if (v91)
            {
              OUTLINED_FUNCTION_35(v90);
              sub_1E42062F4();
            }

            OUTLINED_FUNCTION_74();
            sub_1E4206324();
            v65 = v99;
          }
        }

        goto LABEL_27;
      }

      __break(1u);
    }

    else if (v78)
    {
      v80 = "LIBRARY_HDR_SUBTITLE_PAD";
      v81 = 0xD00000000000001ALL;
      goto LABEL_22;
    }

    __break(1u);
    return;
  }

LABEL_27:
  if (v62)
  {
    OUTLINED_FUNCTION_30_1();
    v93 = *(v92 + 472);

    v93(v65);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B6F93C(uint64_t a1)
{
  sub_1E3751C10();
  v2 = sub_1E37FB55C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_130(inited, xmmword_1E4297BE0);
  sub_1E3855E78();
  inited[2].n128_u64[0] = v4;
  inited[2].n128_u64[1] = v5;
  inited[3].n128_u8[0] = 1;
  v6 = sub_1E4205CB4();
  type metadata accessor for ButtonLayout();
  LOBYTE(inited) = j__OUTLINED_FUNCTION_18();
  v7 = sub_1E3B050E8();
  v8 = j__OUTLINED_FUNCTION_18();
  v9 = sub_1E3BBD964(6, inited & 1, v7, v8 & 1);
  type metadata accessor for LibViewModel();

  v10 = v2;
  sub_1E38C10D0(v6);
  v12 = v11;

  v13 = sub_1E3B76C80(62, 0xD000000000000017, 0x80000001E4273330, a1, v9, v2, v12);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1E4297BD0;
    *(v14 + 32) = sub_1E4205F14();
    *(v14 + 40) = v15;
    *(v14 + 48) = sub_1E4205F14();
    *(v14 + 56) = v16;
    *(v14 + 64) = sub_1E4205F14();
    *(v14 + 72) = v17;
    *(v14 + 80) = sub_1E4205F14();
    *(v14 + 88) = v18;
    *(v14 + 96) = sub_1E4205F14();
    *(v14 + 104) = v19;
    *(v14 + 112) = sub_1E4205F14();
    *(v14 + 120) = v20;
    sub_1E4205CB4();
    v21 = *(*v13 + 576);

    if (v21(v22))
    {
      v23 = OUTLINED_FUNCTION_16_5();
      v24 = sub_1E3797720(v23);

      OUTLINED_FUNCTION_8();
      (*(v25 + 184))(v24);
    }

    else
    {
    }
  }

  else
  {
  }

  return v13;
}

void sub_1E3B6FC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v24 = v23;
  v133 = v25;
  v134 = v26;
  v131 = v27;
  v132 = v28;
  v30 = v29;
  v32 = v31;
  v33 = sub_1E3C8E118();
  v34 = *v33;
  v35 = *(**v33 + 1752);

  v130 = v35(v36);
  v37 = *(**v33 + 1800);

  v37(v38);
  v39 = v32;

  v40 = sub_1E414A784(v32, v30, v24, v22);
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_130(inited, xmmword_1E4297BE0);
  sub_1E3855E78();
  inited[2].n128_u64[0] = v44;
  inited[2].n128_u64[1] = v45;
  inited[3].n128_u8[0] = 1;
  v46 = sub_1E4205CB4();
  v47 = type metadata accessor for LibViewModel();
  v48 = a21;

  sub_1E38C10D0(v46);
  v49 = v40;
  v50 = v47;
  v52 = sub_1E3B76C80(194, v49, v42, 0, v34, a21, v51);
  v139 = MEMORY[0x1E69E7CC0];
  type metadata accessor for LibImageViewModel();
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_69_17();
  v60 = sub_1E37ECC00(v53, v54, v55, v56, v57, v58, v59);
  v135 = v39;
  if (v60)
  {
    OUTLINED_FUNCTION_30_1();
    v62 = *(v61 + 328);

    v50 = v60;
    v62(v135, v30);
    v39 = v135;
  }

  v63 = sub_1E41494A8(v24, v22);
  v64 = MEMORY[0x1E69E7CC8];
  v65 = MEMORY[0x1E69E7CC8];
  v66 = v130;
  if (!v63)
  {
    type metadata accessor for LibraryFamilyMembersImageViewModel();
    OUTLINED_FUNCTION_60_1();
    swift_bridgeObjectRetain_n();

    v67 = sub_1E3B6A88C(v39, v30, v39, v30, v60);
    v65 = MEMORY[0x1E69E7CC8];
    if (v67)
    {
      v68 = v67;
      OUTLINED_FUNCTION_8();
      v70 = (*(v69 + 1744))();
      (*(*v68 + 1192))(v70);
      v71 = v68[49];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136 = v65;
      v50 = &v136;
      sub_1E37518B8(v68, v71, isUniquelyReferenced_nonNull_native);

      v65 = v136;
      v64 = MEMORY[0x1E69E7CC8];
    }
  }

  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_38();

    v73 = sub_1E3B72FB0(v131, v132, v133, v134, v50);
    v75 = v74;

    if (v75)
    {
      v76 = v73;
    }

    else
    {
      v76 = 0;
    }

    v77 = 0xE000000000000000;
    v138 = MEMORY[0x1E69E6158];
    if (v75)
    {
      v77 = v75;
    }

    v136 = v76;
    v137 = v77;
    type metadata accessor for TextViewModel();
    swift_retain_n();

    OUTLINED_FUNCTION_45_35();
    v82 = sub_1E3C27638(v78, v79, v80, v81, v130);
    if (v82)
    {
      v83 = v82;
      v84 = *(v82 + 98);

      v85 = swift_isUniquelyReferenced_nonNull_native();
      v136 = v65;
      sub_1E37518B8(v83, v84, v85);

      v65 = v136;
    }

    if (v60)
    {
      OUTLINED_FUNCTION_30_1();
      v87 = *(v86 + 496);
      swift_retain_n();
      v87(v65);
      v88 = *(v60 + 98);

      v89 = swift_isUniquelyReferenced_nonNull_native();
      v136 = v64;
      v90 = sub_1E37518B8(v60, v88, v89);
      v91 = v136;
      MEMORY[0x1E6910BF0](v90);
      v92 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v92 >> 1)
      {
        OUTLINED_FUNCTION_35(v92);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v93 = v139;

      v66 = v130;
    }

    else
    {

      v91 = MEMORY[0x1E69E7CC8];
      v93 = MEMORY[0x1E69E7CC0];
    }

    v136 = v131;
    v137 = v132;

    MEMORY[0x1E69109E0](32, 0xE100000000000000);

    MEMORY[0x1E69109E0](v133, v134);

    v138 = MEMORY[0x1E69E6158];

    v94 = sub_1E3C27638(23, &v136, v52, 0, v66);
    if (v94)
    {
      v95 = *(v94 + 98);
      swift_retain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v96 = OUTLINED_FUNCTION_65_15();
      v98 = sub_1E37518B8(v96, v95, v97);
      v91 = v136;
      MEMORY[0x1E6910BF0](v98);
      OUTLINED_FUNCTION_36_35();
      if (v100)
      {
        OUTLINED_FUNCTION_35(v99);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v93 = v139;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v101 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v101, xmmword_1E4299720);
    v101[2].n128_u64[0] = v102;
    v101[2].n128_u64[1] = v103;
    v101[3].n128_u64[0] = v135;
    v101[3].n128_u64[1] = v30;

    v101[4].n128_u64[0] = sub_1E3C7CCAC(0);
    v101[4].n128_u64[1] = v104;
    OUTLINED_FUNCTION_35_38();
    v101[5].n128_u64[0] = v106;
    v101[5].n128_u64[1] = v105;
    v107 = sub_1E4205CB4();
    type metadata accessor for ImageViewModel();
    v108 = sub_1E3797720(v107);

    if (sub_1E3F5321C(31, v108, 0))
    {
      swift_retain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v109 = OUTLINED_FUNCTION_65_15();
      v111 = sub_1E37518B8(v109, 31, v110);
      v91 = v136;
      MEMORY[0x1E6910BF0](v111);
      OUTLINED_FUNCTION_18_63();
      if (v100)
      {
        OUTLINED_FUNCTION_35(v112);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_11_6();
      sub_1E4206324();
      v93 = v139;
    }

    if (v52)
    {
      v113 = *(*v52 + 496);

      v113(v91);

      v114 = *(*v52 + 472);

      v114(v93);
    }

    else
    {
    }

    v115 = swift_initStackObject();
    *(v115 + 16) = xmmword_1E4298AD0;
    *(v115 + 32) = sub_1E4205F14();
    *(v115 + 40) = v116;
    *(v115 + 48) = sub_1E4205F14();
    *(v115 + 56) = v117;
    *(v115 + 64) = sub_1E4205F14();
    *(v115 + 72) = v118;
    *(v115 + 80) = sub_1E4205F14();
    *(v115 + 88) = v119;
    *(v115 + 96) = sub_1E4205F14();
    *(v115 + 104) = v120;
    *(v115 + 112) = sub_1E4205F14();
    *(v115 + 120) = v121;
    *(v115 + 128) = sub_1E4205F14();
    *(v115 + 136) = v122;
    *(v115 + 144) = sub_1E4205F14();
    *(v115 + 152) = v123;
    v124 = sub_1E4205CB4();
    if (v52)
    {
      type metadata accessor for Metrics(0);
      OUTLINED_FUNCTION_16_5();

      v125 = sub_1E3BA54D0();
      (*(*v52 + 584))(v125);

      v126 = *(*v52 + 576);

      v126(v127);
      OUTLINED_FUNCTION_16_5();

      v128 = sub_1E3797720(v124);

      OUTLINED_FUNCTION_8();
      (*(v129 + 184))(v128);
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B705C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v37 = a1;
  v38 = a2;

  MEMORY[0x1E69109E0](1986096735, 0xE400000000000000);
  v9 = v37;
  v8 = v38;
  type metadata accessor for LibViewModel();
  OUTLINED_FUNCTION_16_5();

  sub_1E3C8E228();

  OUTLINED_FUNCTION_69_17();
  v17 = sub_1E3B76C80(v10, v11, v12, v13, v14, v15, v16);
  if (!a4)
  {
    v19 = MEMORY[0x1E69E7CC8];
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_9:

    goto LABEL_15;
  }

  v39 = MEMORY[0x1E69E6158];
  v37 = a3;
  v38 = a4;
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_38();

  v18 = sub_1E3C27638(23, &v37, v17, 0, 0);
  v19 = MEMORY[0x1E69E7CC8];
  if (v18)
  {
    v20 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v19;
    sub_1E37518B8(v20, 23, isUniquelyReferenced_nonNull_native);

    v19 = v37;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v37 = v9;
  v38 = v8;

  MEMORY[0x1E69109E0](0xD000000000000012, 0x80000001E4273350);

  type metadata accessor for ViewModel();

  v22 = sub_1E39C02B0();
  v23 = sub_1E3B6F93C(v22);
  if (v23)
  {
    v26 = v23;
    if (v22)
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v28 = OUTLINED_FUNCTION_24_3(v27);
      *(v28 + 16) = xmmword_1E4298880;
      *(v28 + 32) = v26;
      v29 = *(*v22 + 472);

      v29(v28);

LABEL_11:

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v37 = v19;
      sub_1E37518B8(v22, 103, v30);

      v19 = v37;
      goto LABEL_15;
    }
  }

  else if (v22)
  {
    goto LABEL_11;
  }

  sub_1E3740AE8(103, v24, v25);
  if (v31)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780, &unk_1E42988B0);
    v32 = sub_1E4207644();
    v19 = v37;
    sub_1E37414E0(v32, v33, v34);
    OUTLINED_FUNCTION_74();
    sub_1E4207664();
  }

LABEL_15:
  if (v17)
  {
    v35 = *(*v17 + 496);

    v35(v19);
  }

  else
  {
  }

  return v17;
}

void sub_1E3B70934()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E4206BA4();
  v13 = VUISignpostLogObject(v12);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_75_11();
  sub_1E41FFBA4();

  v14 = *(v7 + 8);
  v168 = v11;
  v169 = v7 + 8;
  v170 = v5;
  v14(v11, v5);
  v15 = *(v4 + 32);
  v16 = *(v4 + 40);
  v17 = *(v4 + 48);
  v171 = v4;
  OUTLINED_FUNCTION_0_153();
  v167 = v14;
  if ((sub_1E3B6CFEC(v15, 10, v18, v19) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_153();
    if (sub_1E3B6CFEC(v15, 13, v28, v29))
    {
      v23 = 24;
    }

    else
    {
      OUTLINED_FUNCTION_0_153();
      v23 = 24;
      if ((sub_1E3B6CFEC(v15, 12, v30, v31) & 1) == 0)
      {
        OUTLINED_FUNCTION_0_153();
        v24 = v15;
        v27 = 11;
        goto LABEL_9;
      }
    }

LABEL_7:
    v32 = 119;
    goto LABEL_15;
  }

  sub_1E3D4C080();
  OUTLINED_FUNCTION_13_95();
  v23 = 24;
  if (sub_1E3B6CFEC(v20, 0, v21, v22))
  {
    goto LABEL_7;
  }

  sub_1E3D4C080();
  OUTLINED_FUNCTION_13_95();
  v27 = 1;
LABEL_9:
  v33 = sub_1E3B6CFEC(v24, v27, v25, v26);
  if (v33)
  {
    v32 = 119;
  }

  else
  {
    v32 = 118;
  }

  if (v33)
  {
    v23 = 24;
  }

  else
  {
    v23 = 15;
  }

LABEL_15:
  v34 = type metadata accessor for TemplateViewModel(0);
  v35 = v23;
  v36 = v34;
  sub_1E410D4C8(v35, MEMORY[0x1E69E7CC8], 0);
  i = v37;
  v39 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    strcpy(v191, "Library.id=");
    BYTE5(v191[1]) = 0;
    HIWORD(v191[1]) = -5120;

    MEMORY[0x1E69109E0](v16, v17);
    MEMORY[0x1E69109E0](34, 0xE100000000000000);
    (*(*i + 328))(v191[0], v191[1]);

    if (v39 >> 62)
    {
LABEL_102:
      type metadata accessor for ViewModel();

      v40 = sub_1E42076C4();
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
      sub_1E4207754();
    }

    v41 = v40;
    v36 = i;
    (*(*i + 472))(v41);
  }

  v172 = i;
  OUTLINED_FUNCTION_0_153();
  if ((sub_1E3B6CFEC(v15, 13, v42, v43) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_153();
    if ((sub_1E3B6CFEC(v15, 12, v51, v52) & 1) == 0)
    {
      OUTLINED_FUNCTION_0_153();
      if ((sub_1E3B6CFEC(v15, 11, v53, v54) & 1) == 0)
      {
        OUTLINED_FUNCTION_8();
        v145 = (*(v144 + 392))();
        v147 = v146;
        OUTLINED_FUNCTION_8();
        v149 = (*(v148 + 312))();
        if (v149)
        {
          v150 = v149;
        }

        else
        {
          v150 = v39;
        }

        v151 = *(v171 + 72);
        v152 = *(v171 + 80);
        if (v150 >> 62)
        {
          type metadata accessor for ViewModel();

          v153 = sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          type metadata accessor for ViewModel();
          v153 = v150;
        }

        sub_1E3B6D0F4(v151, v152, v32, v153, 0, v154);
        OUTLINED_FUNCTION_11_5();

        if (!v32)
        {

          goto LABEL_84;
        }

        v155 = type metadata accessor for LibMenuCollectionInteractorRequest();

        v157 = sub_1E385A9C8(v156);
        v193 = v155;
        v194 = &off_1F5D5EFC0;
        v191[0] = v157;
        (*(*v32 + 1688))(v191);
        v158 = *(**sub_1E3B7B1C8() + 816);

        v159 = v158(v171);

        if ((v159 & 1) != 0 && (LOBYTE(v191[0]) = v15, LOBYTE(v188) = 1, sub_1E37DA4B8(v160, v161, v162), OUTLINED_FUNCTION_43_35(), (sub_1E4205E84() & 1) == 0))
        {
          v136 = v172;
          if (v147)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = 0xD000000000000011;
            *(inited + 40) = 0x80000001E426F010;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 48) = v145;
            *(inited + 56) = v147;
            v147 = sub_1E4205CB4();
          }

          (*(*v32 + 1328))(v147);
        }

        else
        {
          v136 = v172;
        }

        if (!v136)
        {
          goto LABEL_83;
        }

        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_0_153();
    v57 = sub_1E3B6CFEC(v15, 12, v55, v56);
    v32 = v2 + 32;
    v58 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v59 = *(v2 + 16);
      v15 = &unk_1ECF3B640;
      for (i = 40; v59; --v59)
      {
        sub_1E327F454(v32, v191);
        v60 = OUTLINED_FUNCTION_43_35();
        sub_1E327F454(v60, v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
        v62 = OUTLINED_FUNCTION_106();
        v63 = type metadata accessor for LibFamilySharingSource(v62);
        if (OUTLINED_FUNCTION_60_18(v63))
        {

          v64 = OUTLINED_FUNCTION_43_35();
          sub_1E37DADF4(v64, v65);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v196 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_56_22();
            v58 = v196;
          }

          OUTLINED_FUNCTION_68_17();
          if (v68)
          {
            v69 = OUTLINED_FUNCTION_35(v67);
            sub_1E3B72E58(v69, v58, 1);
            v36 = v196;
          }

          *(v36 + 16) = v58;
          sub_1E37DADF4(&v188, v36 + 40 * v0 + 32);
          v58 = v36;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v191);
        }

        v32 += 40;
      }
    }

    else
    {
      v77 = *(v2 + 16);
      v15 = &unk_1ECF3B640;
      for (i = 40; v77; --v77)
      {
        sub_1E327F454(v32, v191);
        v78 = OUTLINED_FUNCTION_43_35();
        sub_1E327F454(v78, v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
        v80 = OUTLINED_FUNCTION_106();
        v81 = type metadata accessor for LibHomeSharingSource(v80);
        if (OUTLINED_FUNCTION_60_18(v81))
        {

          v82 = OUTLINED_FUNCTION_43_35();
          sub_1E37DADF4(v82, v83);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          v196 = v58;
          if ((v84 & 1) == 0)
          {
            OUTLINED_FUNCTION_56_22();
            v58 = v196;
          }

          OUTLINED_FUNCTION_68_17();
          if (v68)
          {
            v86 = OUTLINED_FUNCTION_35(v85);
            sub_1E3B72E58(v86, v58, 1);
            v36 = v196;
          }

          *(v36 + 16) = v58;
          sub_1E37DADF4(&v188, v36 + 40 * v0 + 32);
          v58 = v36;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v191);
        }

        v32 += 40;
      }
    }

    v2 = 0;
    v87 = v58 + 32;
    v187 = v39;
    v176 = *(v58 + 16);
    v173 = xmmword_1E4299720;
    v174 = v58;
    v166 = v58 + 32;
LABEL_59:
    v186 = v87 + 40 * v2;
    v175 = v39;
    while (1)
    {
      if (v176 == v2)
      {

        v32 = *(v171 + 72);
        v135 = *(v171 + 80);
        if (v39 >> 62)
        {
          OUTLINED_FUNCTION_77_14();

          OUTLINED_FUNCTION_32_7();
          v72 = sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          type metadata accessor for ViewModel();
          v72 = v39;
        }

        v74 = v32;
        v75 = v135;
        v76 = 119;
        goto LABEL_78;
      }

      if (v2 >= *(v58 + 16))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      sub_1E327F454(v186, &v188);
      sub_1E327F454(&v188, v191);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
      v88 = OUTLINED_FUNCTION_106();
      type metadata accessor for LibFamilySharingSource(v88);
      if (swift_dynamicCast())
      {
        v182 = *(v196 + 48);
        v183 = *(v196 + 56);
        v184 = *(v196 + 32);
        v185 = *(v196 + 64);
        v89 = *(v196 + 96);
        v181 = *(v196 + 40);
        v177 = *(v196 + 72);
        if (v89)
        {
          v179 = *(v196 + 88);

          v178 = v89;
        }

        else
        {
          v111 = v189;
          v112 = v190;
          __swift_project_boxed_opaque_existential_1(&v188, v189);
          v180 = *(v112 + 16);

          v113 = v180(v111, v112);
          v178 = v114;
          v179 = v113;
        }

        goto LABEL_71;
      }

      v90 = v190;
      __swift_project_boxed_opaque_existential_1(&v188, v189);
      v91 = OUTLINED_FUNCTION_38();
      v93 = v92(v91, v90);
      v95 = v94;
      __swift_project_boxed_opaque_existential_1(&v188, v189);
      v96 = OUTLINED_FUNCTION_9_89();
      v98 = v97(v96);
      v100 = v99;
      __swift_project_boxed_opaque_existential_1(&v188, v189);
      v101 = OUTLINED_FUNCTION_9_89();
      v191[0] = v102(v101);
      v191[1] = v103;
      v196 = 32;
      v197 = 0xE100000000000000;
      sub_1E32822E0(v191[0], v103, v104);
      sub_1E4207194();
      OUTLINED_FUNCTION_38();

      v105 = v192;
      v185 = v98;
      v178 = v95;
      v179 = v93;
      v177 = v100;
      if (!v192)
      {
        break;
      }

      v106 = v195;
      v184 = v194;

      if (v105 == 1)
      {
        goto LABEL_70;
      }

      v191[0] = sub_1E3B718F0(1, v191);
      v191[1] = v107;
      v192 = v108;
      v193 = v109;
      v181 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340A8, &qword_1E42BE930);
      sub_1E32752B0(&qword_1ECF340B0, &qword_1ECF340A8, &qword_1E42BE930, MEMORY[0x1E69E6958]);
      v182 = sub_1E4205DF4();
      v183 = v110;
      swift_unknownObjectRelease();
LABEL_71:
      v186 += 40;
      sub_1E3751C10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      v115 = swift_initStackObject();
      *(v115 + 16) = v173;
      v116 = sub_1E37FAFC8();
      v117 = *(v116 + 1);
      *(v115 + 32) = *v116;
      *(v115 + 40) = v117;
      v118 = v190;
      __swift_project_boxed_opaque_existential_1(&v188, v189);
      v119 = v2 + 1;
      v120 = *(v118 + 16);

      v121 = OUTLINED_FUNCTION_74();
      v122 = v120(v121);
      v123 = MEMORY[0x1E69E6158];
      *(v115 + 72) = MEMORY[0x1E69E6158];
      *(v115 + 48) = v122;
      *(v115 + 56) = v124;
      v125 = sub_1E37FAFD4();
      v126 = v125[1];
      *(v115 + 80) = *v125;
      *(v115 + 88) = v126;
      v127 = v189;
      v0 = v190;
      __swift_project_boxed_opaque_existential_1(&v188, v189);
      v128 = *(v0 + 16);

      v129 = v128(v127, v0);
      v2 = v119;
      *(v115 + 120) = v123;
      *(v115 + 96) = v129;
      *(v115 + 104) = v130;
      sub_1E4205CB4();
      v131 = sub_1E37FB46C();
      v32 = v183;
      i = v177;
      sub_1E3B6FC1C(v179, v178, v184, v181, v182, v183, v185, v177, v131, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174);
      v15 = v132;

      v133 = __swift_destroy_boxed_opaque_existential_1Tm(&v188);
      v58 = v174;
      v39 = v175;
      if (v15)
      {
        MEMORY[0x1E6910BF0](v133);
        OUTLINED_FUNCTION_36_35();
        if (v68)
        {
          OUTLINED_FUNCTION_35(v134);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v39 = v187;
        v87 = v166;
        goto LABEL_59;
      }
    }

    v184 = 0;
    v106 = 0xE000000000000000;
LABEL_70:
    v181 = v106;

    v182 = 0;
    v183 = 0xE000000000000000;
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_8();
  v45 = (*(v44 + 288))();
  if (v45)
  {
    v15 = v45;
  }

  else
  {
    v15 = v39;
  }

  v191[0] = v39;
  v2 = sub_1E32AE9B0(v15);
  v46 = 0;
  i = v15 & 0xC000000000000001;
  while (v2 != v46)
  {
    sub_1E34AF4E4(v46, i == 0, v15);
    if (i)
    {
      MEMORY[0x1E6911E60](v46, v15);
    }

    else
    {
    }

    v0 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_101;
    }

    sub_1E3B6C5EC();
    v48 = v47;

    ++v46;
    if (v48)
    {
      MEMORY[0x1E6910BF0](v49);
      v50 = *((v191[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v191[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v50 >> 1)
      {
        OUTLINED_FUNCTION_35(v50);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v39 = v191[0];
      v46 = v0;
    }
  }

  v70 = *(v171 + 72);
  v71 = *(v171 + 80);
  if (v39 >> 62)
  {
    OUTLINED_FUNCTION_77_14();

    v72 = sub_1E42076C4();
  }

  else
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();
    v72 = v39;
  }

  v74 = v70;
  v75 = v71;
  v76 = v32;
LABEL_78:
  sub_1E3B6D0F4(v74, v75, v76, v72, 0, v73);
  OUTLINED_FUNCTION_11_5();

  if (v32)
  {
    v136 = v172;
    if (!v172)
    {
LABEL_83:

      goto LABEL_84;
    }

LABEL_80:
    OUTLINED_FUNCTION_71_2();
    v138 = *(v137 + 480);

    v139 = v138(v191);
    if (*v140)
    {
      v141 = OUTLINED_FUNCTION_79_13();
      MEMORY[0x1E6910BF0](v141);
      sub_1E38C5A18(*((*v136 & 0xFFFFFFFFFFFFFF8) + 0x10));
      OUTLINED_FUNCTION_39_3();
      sub_1E4206324();
    }

    v139(v191, 0);

    goto LABEL_83;
  }

LABEL_84:
  v142 = sub_1E4206B94();
  v143 = VUISignpostLogObject(v142);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_75_11();
  sub_1E41FFBA4();

  v167(v168, v170);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B718F0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1E380055C(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_1E39E8C20(result, v3, a2);
      v6 = v5;

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3B71988()
{
  OUTLINED_FUNCTION_31_1();
  v94 = v0;
  v2 = v1;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = sub_1E4206BA4();
  v7 = VUISignpostLogObject(v6);
  v8 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_61_14(v8, &dword_1E323F000, v9, "LibViewModelFactory.createRootTemplateViewModel");

  v90 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_39_3();
  v11(v10);
  type metadata accessor for TemplateViewModel(0);
  sub_1E410D4C8(15, MEMORY[0x1E69E7CC8], 0);
  v13 = v12;
  v14 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v15 = MEMORY[0x1E69E7CC0];
    (*(*v12 + 328))(0x7972617262694CLL, 0xE700000000000000);
    if (v15 >> 62)
    {
      type metadata accessor for ViewModel();

      v16 = sub_1E42076C4();
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
      sub_1E4207754();
    }

    (*(*v13 + 472))(v16);

    v14 = MEMORY[0x1E69E7CC0];
  }

  v91 = v13;
  v101 = v14;
  v17 = sub_1E32AE9B0(v2);
  v18 = 0;
  v97 = v2 & 0xFFFFFFFFFFFFFF8;
  v99 = v2 & 0xC000000000000001;
  v95 = v2;
  v19 = v2 + 32;
LABEL_6:
  while (v18 != v17)
  {
    if (v99)
    {
      v20 = MEMORY[0x1E6911E60](v18, v95);
      v2 = v20;
    }

    else
    {
      if (v18 >= *(v97 + 16))
      {
        goto LABEL_97;
      }

      v2 = *(v19 + 8 * v18);
    }

    v23 = __OFADD__(v18++, 1);
    if (v23)
    {
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
      goto LABEL_102;
    }

    if (qword_1EE2A1FA0 != -1)
    {
      OUTLINED_FUNCTION_1_152();
      v20 = swift_once();
    }

    v24 = qword_1EE2AB070;
    LOBYTE(v104) = *(v2 + 32);
    if (*(qword_1EE2AB070 + 16))
    {
      sub_1E37DA464(v20, v21, v22);
      v25 = sub_1E4205DA4();
      v28 = ~(-1 << *(v24 + 32));
      while (1)
      {
        v13 = v25 & v28;
        if (((*(v24 + 56 + (((v25 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v28)) & 1) == 0)
        {
          break;
        }

        LOBYTE(v103) = *(*(v24 + 48) + v13);
        sub_1E37DA4B8(v25, v26, v27);
        v29 = sub_1E4205E84();
        v25 = v13 + 1;
        if (v29)
        {
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
          goto LABEL_6;
        }
      }
    }
  }

  v30 = v101;
  v13 = "ory.createRootTemplateViewModel";
  v31 = MEMORY[0x1E69E7CC0];
  v101 = MEMORY[0x1E69E7CC0];
  v32 = sub_1E32AE9B0(v30);
  v33 = 0;
  v2 = v30 & 0xC000000000000001;
  while (v32 != v33)
  {
    sub_1E34AF4E4(v33, v2 == 0, v30);
    if (v2)
    {
      MEMORY[0x1E6911E60](v33, v30);
    }

    else
    {
    }

    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_98;
    }

    sub_1E3B6C5EC();
    v36 = v35;

    ++v33;
    if (v36)
    {
      MEMORY[0x1E6910BF0](v37);
      OUTLINED_FUNCTION_18_63();
      if (v39)
      {
        OUTLINED_FUNCTION_35(v38);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();
      v31 = v101;
      v33 = v34;
    }
  }

  v2 = v95;
  if (!(v31 >> 62))
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();
    v41 = v31;
    goto LABEL_32;
  }

LABEL_102:
  type metadata accessor for ViewModel();

  v41 = sub_1E42076C4();

LABEL_32:
  sub_1E3B6D0F4(0xD000000000000014, v13 | 0x8000000000000000, 120, v41, 0, v40);
  v43 = v42;

  if (v43)
  {
    if (v91)
    {
      v44 = *(*v91 + 480);

      v13 = &v101;
      v45 = v44(&v101);
      if (*v46)
      {

        MEMORY[0x1E6910BF0](v47);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v45(&v101, 0);
    }
  }

  sub_1E3B7B1C8();

  v48 = sub_1E3DD2B7C(v2, v94);

  v49 = MEMORY[0x1E69E7CC0];
  v104 = MEMORY[0x1E69E7CC0];
  v98 = sub_1E32AE9B0(v48);
  if (v98)
  {
    v50 = 0;
    v94 = v48;
    v96 = v48 & 0xC000000000000001;
    v92 = v48 + 32;
    v2 = v49;
    while (1)
    {
      sub_1E34AF4E4(v50, v96 == 0, v48);
      if (v96)
      {
        v51 = MEMORY[0x1E6911E60](v50, v48);
      }

      else
      {
        v51 = *(v92 + 8 * v50);
      }

      v23 = __OFADD__(v50++, 1);
      if (v23)
      {
        goto LABEL_99;
      }

      OUTLINED_FUNCTION_0_153();
      if (sub_1E3B6CFEC(v52, 6, v53, &type metadata for LibMenuType))
      {
        v54 = [objc_opt_self() sharedInstance];
        if (!v54)
        {
          __break(1u);
          return;
        }

        v55 = v54;
        sub_1E3741090(0xD000000000000011, 0x80000001E42733F0, v54);
      }

      sub_1E3B6F108();
      v57 = v56;

      v58 = v51[10];
      v100 = v51[9];

      v59 = *sub_1E41E2E28();
      v60 = *(*v51 + 312);
      v61 = v60();
      v62 = v61;
      if (v61)
      {
        sub_1E32AE9B0(v61);
        OUTLINED_FUNCTION_73_1();
      }

      else
      {
        v13 = 0;
      }

      v101 = v13;
      v102 = v62 == 0;
      v103 = v59;
      v13 = sub_1E414A720(&v101, &v103, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
      v63 = v60();
      if (v63)
      {
        v64 = v63;
      }

      else
      {
        v64 = MEMORY[0x1E69E7CC0];
      }

      if (v13)
      {
        if (v59 < 0)
        {
          goto LABEL_100;
        }

        sub_1E37EFABC(0, v64);
        sub_1E37EFABC(v59, v64);
        if ((v64 & 0xC000000000000001) != 0 && v59)
        {
          type metadata accessor for LibLockupViewModel(0);
          OUTLINED_FUNCTION_60_1();

          v65 = 0;
          do
          {
            v66 = v65 + 1;
            sub_1E42074F4();
            v65 = v66;
          }

          while (v59 != v66);
        }

        else
        {
        }

        if (v64 >> 62)
        {
          sub_1E4207704();
          v13 = v73;
          v68 = v74;
          v69 = v75;

          if ((v69 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v68 = 0;
          v13 = (v64 & 0xFFFFFFFFFFFFFF8) + 32;
          v69 = (2 * v59) | 1;
          if ((v69 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v93 = v2;
        sub_1E42079E4();
        swift_unknownObjectRetain_n();
        v76 = swift_dynamicCastClass();
        if (!v76)
        {
          swift_unknownObjectRelease();
          v76 = MEMORY[0x1E69E7CC0];
        }

        v2 = *(v76 + 16);

        if (__OFSUB__(v69 >> 1, v68))
        {
          goto LABEL_101;
        }

        if (v2 != (v69 >> 1) - v68)
        {
          swift_unknownObjectRelease_n();
          v2 = v93;
LABEL_64:
          v70 = OUTLINED_FUNCTION_32_7();
          sub_1E3B72D7C(v70, v71, v68, v69);
          v64 = v72;
          v48 = v94;
          v67 = v100;
LABEL_72:
          swift_unknownObjectRelease();
          goto LABEL_73;
        }

        v64 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v2 = v93;
        v48 = v94;
        v67 = v100;
        if (!v64)
        {
          v64 = MEMORY[0x1E69E7CC0];
          goto LABEL_72;
        }
      }

      else
      {
        v48 = v94;
        v67 = v100;
      }

LABEL_73:
      if (v64 >> 62)
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          v77 = v64;
        }

        else
        {
          v77 = v64 & 0xFFFFFFFFFFFFFF8;
        }

        v13 = type metadata accessor for ViewModel();

        OUTLINED_FUNCTION_32_7();
        sub_1E42076C4();
        OUTLINED_FUNCTION_60_1();
      }

      else
      {

        sub_1E42079D4();
        type metadata accessor for ViewModel();
        v77 = v64;
      }

      sub_1E3B6D0F4(v67, v58, 117, v77, v57, v78);
      OUTLINED_FUNCTION_73_1();

      if (v13)
      {

        MEMORY[0x1E6910BF0](v79);
        OUTLINED_FUNCTION_36_35();
        if (v39)
        {
          OUTLINED_FUNCTION_35(v80);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v2 = v104;
      }

      if (v50 == v98)
      {
        goto LABEL_87;
      }
    }
  }

  v2 = v49;
LABEL_87:

  if (v91)
  {
    OUTLINED_FUNCTION_30_1();
    v82 = *(v81 + 480);

    v82(&v101);
    OUTLINED_FUNCTION_44_35();
    if (v83)
    {
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v84 = v2;
        }

        else
        {
          v84 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        type metadata accessor for ViewModel();

        sub_1E42076C4();
        OUTLINED_FUNCTION_16_5();
      }

      else
      {

        sub_1E42079D4();
        type metadata accessor for ViewModel();
        v84 = v2;
      }

      sub_1E379738C(v84);
      (v82)(&v101, 0);
    }

    else
    {

      (v82)(&v101, 0);
    }
  }

  else
  {
  }

  v85 = sub_1E4206B94();
  v86 = VUISignpostLogObject(v85);
  v87 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_61_14(v87, &dword_1E323F000, v88, "LibViewModelFactory.createRootTemplateViewModel");

  v89 = OUTLINED_FUNCTION_39_3();
  v90(v89);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B72530()
{
  OUTLINED_FUNCTION_31_1();
  v76 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v14 = OUTLINED_FUNCTION_9_89();
  v72 = v15(v14);
  if (v72)
  {
    v16 = sub_1E4206BA4();
    v17 = VUISignpostLogObject(v16);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    (*(v9 + 8))(v13, v7);
    type metadata accessor for TemplateViewModel(0);
    sub_1E410D4C8(24, MEMORY[0x1E69E7CC8], 0);
    v68 = v18;
    v19 = type metadata accessor for LibCollectionViewModel();
    v20 = OUTLINED_FUNCTION_114_0();
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v22 = OUTLINED_FUNCTION_50_27();
    v24 = v23(v22);
    v26 = sub_1E3A7A31C(119, v24, v25, 1, 0, 0);
    if (!v26)
    {

      OUTLINED_FUNCTION_26_52();
LABEL_38:
      v66 = sub_1E4206B94();
      v67 = VUISignpostLogObject(v66);
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      v4(v2, v7);
      goto LABEL_39;
    }

    v27 = v26;
    v28 = MEMORY[0x1E69E7CC0];
    v85 = MEMORY[0x1E69E7CC0];
    v29 = *sub_1E3C8DC30();
    v7 = v72;
    v71 = v29;
    v73 = *(v72 + 16);
    if (v73)
    {
      type metadata accessor for CollectionGroupViewModel();

      v30 = 0;
      v70 = v28;
      v69 = v27;
      while (v30 < *(v7 + 16))
      {
        v75 = v30;
        sub_1E327F454(v72 + 32 + 40 * v30, v82);
        v31 = v83;
        v32 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v33 = (*(*(v32 + 8) + 32))(v31);
        v35 = v34;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          type metadata accessor for TextViewModel();
          __swift_project_boxed_opaque_existential_1(v82, v83);
          v37 = OUTLINED_FUNCTION_38();
          v39 = v38(v37);
          v79 = MEMORY[0x1E69E6158];
          v78[0] = v39;
          v78[1] = v40;

          v19 = sub_1E3C27638(105, v78, 0, 0, v29);
        }

        else
        {
          v19 = 0;
        }

        __swift_project_boxed_opaque_existential_1(v82, v83);
        v41 = OUTLINED_FUNCTION_114_0();
        v43 = v42(v41);
        if (v43)
        {
          v44 = v43;
          v74 = v19;
          v45 = MEMORY[0x1E69E7CC0];
          v81 = MEMORY[0x1E69E7CC0];
          v46 = *(v43 + 16);
          if (v46)
          {
            type metadata accessor for LibLockupViewModel(0);
            v47 = v44 + 32;
            do
            {
              sub_1E327F454(v47, v78);
              v48 = v79;
              v49 = v80;
              v50 = __swift_project_boxed_opaque_existential_1(v78, v79);
              v77[3] = v48;
              v77[4] = *(*(v49 + 8) + 8);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
              (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v50, v48);

              v52 = j__OUTLINED_FUNCTION_18();
              sub_1E38BC104(v77, v76, v4, v2, v52 & 1);
              v54 = v53;
              v55 = __swift_destroy_boxed_opaque_existential_1Tm(v78);
              if (v54)
              {
                MEMORY[0x1E6910BF0](v55);
                v56 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18);
                if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v56 >> 1)
                {
                  OUTLINED_FUNCTION_35(v56);
                  sub_1E42062F4();
                }

                sub_1E4206324();
                v45 = v81;
              }

              v47 += 40;
              --v46;
            }

            while (v46);
          }

          v27 = v69;
          v29 = v71;
          v7 = v72;
          v19 = v74;
        }

        else
        {
          v45 = MEMORY[0x1E69E7CC0];
        }

        __swift_project_boxed_opaque_existential_1(v82, v83);
        v57 = OUTLINED_FUNCTION_50_27();
        v58(v57);
        if (v45 >> 62)
        {
          type metadata accessor for ViewModel();

          OUTLINED_FUNCTION_32_7();
          v7 = v72;
          sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          type metadata accessor for ViewModel();
        }

        if (sub_1E3960F08())
        {

          MEMORY[0x1E6910BF0](v59);
          OUTLINED_FUNCTION_18_63();
          if (v61)
          {
            OUTLINED_FUNCTION_35(v60);
            sub_1E42062F4();
          }

          OUTLINED_FUNCTION_11_6();
          sub_1E4206324();

          v70 = v85;
        }

        else
        {
        }

        v30 = v75 + 1;
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        if (v75 + 1 == v73)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
    }

    else
    {

      v70 = MEMORY[0x1E69E7CC0];
LABEL_33:

      v19 = v70;
      if (!(v70 >> 62))
      {

        sub_1E42079D4();
        type metadata accessor for ViewModel();
        v62 = v70;
        goto LABEL_35;
      }
    }

    type metadata accessor for ViewModel();

    v62 = sub_1E42076C4();

LABEL_35:
    OUTLINED_FUNCTION_26_52();
    (*(*v27 + 472))(v62);
    (*(*v27 + 1416))(v19);

    if (v68)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v64 = OUTLINED_FUNCTION_24_3(v63);
      *(v64 + 16) = xmmword_1E4298880;
      *(v64 + 32) = v27;
      v65 = *(*v68 + 472);

      v65(v64);
    }

    else
    {
    }

    goto LABEL_38;
  }

LABEL_39:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B72D7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for LibLockupViewModel(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1E3B72E58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3B72E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3B72E78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8, &unk_1E42BE938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3B72FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1E4205ED4();
  v7 = sub_1E4205ED4();
  v8 = [a5 formatInitialsForFirstName:v6 lastName:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1E4205F14();

  return v9;
}

void *OUTLINED_FUNCTION_56_22()
{
  v2 = *(v0 + 16) + 1;

  return sub_1E3B72E58(0, v2, 1);
}

double OUTLINED_FUNCTION_58_21@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8 * v2 + 32) = v1;

  return result;
}

uint64_t OUTLINED_FUNCTION_62_15(uint64_t a1)
{

  return sub_1E3882AB0(v1, a1);
}

uint64_t OUTLINED_FUNCTION_77_14()
{

  return type metadata accessor for ViewModel();
}

uint64_t OUTLINED_FUNCTION_79_13()
{
}

void OUTLINED_FUNCTION_82_8()
{

  JUMPOUT(0x1E6911E60);
}

uint64_t OUTLINED_FUNCTION_83_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21)
{
  v22 = *a21;

  return sub_1E32AE9B0(v22);
}

uint64_t OUTLINED_FUNCTION_84_9()
{
}

uint64_t sub_1E3B73188()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v1 = OUTLINED_FUNCTION_9_90();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_30();
  v5 = v4(v3);
  v10 = 0;
  if (v5 == *MEMORY[0x1E69D5850])
  {
    goto LABEL_6;
  }

  if (v5 == *MEMORY[0x1E69D5860])
  {
    v10 = 1;
LABEL_6:
    v11 = OUTLINED_FUNCTION_32_0();
    v12(v11);
    return v10;
  }

  if (v5 == *MEMORY[0x1E69D5858])
  {
    v10 = 2;
    goto LABEL_6;
  }

  result = OUTLINED_FUNCTION_11_91("Fatal error", v6, v7, v8, v9, "VideosUI/VUISportsFavoriteService.swift");
  __break(1u);
  return result;
}

unint64_t VUIUserConsentStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3B732DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUIUserConsentStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

char *sub_1E3B73390(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  v7 = sub_1E41FF044();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  sub_1E41FF014();
  *&v3[OBJC_IVAR____TtC8VideosUI19VUIUserConsentState_status] = sub_1E3B73188();
  sub_1E41FF004();
  sub_1E3889AF0(v2, &v3[OBJC_IVAR____TtC8VideosUI19VUIUserConsentState_lastModifiedDate]);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for VUIUserConsentState(0);
  objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF024();
  OUTLINED_FUNCTION_10();
  (*(v9 + 8))(a1);
  return v3;
}

id VUIUserConsentModification.__allocating_init(status:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8VideosUI26VUIUserConsentModification_status] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id VUIUserConsentModification.init(status:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI26VUIUserConsentModification_status] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VUIUserConsentModification();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1E3B73674()
{
  sub_1E41FF044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUI26VUIUserConsentModification_status);
  if (v6 >= 3)
  {
    result = sub_1E4207A24();
    __break(1u);
  }

  else
  {
    (*(v2 + 104))(v5, **(&unk_1E8737FA8 + v6));
    return sub_1E41FEFE4();
  }

  return result;
}

id sub_1E3B737C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1E3B73878(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  a3(v6);
  v9 = sub_1E41FE5D4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_1E41FE514();
    v11 = OUTLINED_FUNCTION_27_0();
    v12(v11);
  }

  return v10;
}

char *sub_1E3B739A8(uint64_t a1)
{
  v3 = v1;
  v47 = sub_1E41FF104();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_139();
  v13 = sub_1E41FF134();
  v14 = *(v13 + 16);
  if (v14)
  {
    v39 = v2;
    v40 = v3;
    v41 = a1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    result = sub_1E3746DC4(v13);
    v16 = result;
    v18 = v17;
    v20 = v19;
    v43 = v6 + 16;
    v44 = v13 + 56;
    v42 = v6 + 8;
    v21 = v45;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v13 + 32))
    {
      if (((*(v44 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }

      if (*(v13 + 36) != v18)
      {
        goto LABEL_13;
      }

      v22 = *(v13 + 48) + *(v6 + 72) * v16;
      v48 = v20;
      v23 = *(v6 + 16);
      v24 = v47;
      v23(v21, v22, v47);
      v25 = v46;
      v23(v46, v21, v24);
      v26 = objc_allocWithZone(type metadata accessor for VUIFavorite());
      sub_1E3B73E58(v25);
      (*(v6 + 8))(v21, v24);
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      v27 = OUTLINED_FUNCTION_27_0();
      result = sub_1E3B76A38(v27, v28, v29, v13);
      v16 = result;
      v18 = v30;
      v20 = v31;
      if (!--v14)
      {

        v32 = OUTLINED_FUNCTION_27_0();
        sub_1E3746E04(v32, v33, v34);
        v35 = v50;
        v3 = v40;
        a1 = v41;
        v2 = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
LABEL_10:
    *&v3[OBJC_IVAR____TtC8VideosUI17VUIFavoritesState_favorites] = v35;
    sub_1E41FF124();
    sub_1E3889AF0(v2, &v3[OBJC_IVAR____TtC8VideosUI17VUIFavoritesState_lastModifiedDate]);
    v36 = type metadata accessor for VUIFavoritesState(0);
    v49.receiver = v3;
    v49.super_class = v36;
    objc_msgSendSuper2(&v49, sel_init);
    OUTLINED_FUNCTION_9_5();
    sub_1E41FF144();
    OUTLINED_FUNCTION_10();
    (*(v37 + 8))(a1);
    return v3;
  }

  return result;
}

char *sub_1E3B73E58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FF0E4();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v6 = sub_1E41FF0D4();
  v7 = &v2[OBJC_IVAR____TtC8VideosUI11VUIFavorite_id];
  *v7 = v6;
  v7[1] = v8;
  sub_1E41FF0F4();
  *&v2[OBJC_IVAR____TtC8VideosUI11VUIFavorite_type] = sub_1E3B73F38();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for VUIFavorite();
  objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF104();
  OUTLINED_FUNCTION_10();
  (*(v9 + 8))(a1);
  return v2;
}

uint64_t sub_1E3B73F38()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF0E4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v1 = OUTLINED_FUNCTION_9_90();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_30();
  v5 = v4(v3);
  v10 = 0;
  if (v5 == *MEMORY[0x1E69D58B8])
  {
    goto LABEL_4;
  }

  if (v5 == *MEMORY[0x1E69D58C0])
  {
    v10 = 1;
LABEL_4:
    v11 = OUTLINED_FUNCTION_32_0();
    v12(v11);
    return v10;
  }

  result = OUTLINED_FUNCTION_11_91("Fatal error", v6, v7, v8, v9, "VideosUI/VUISportsFavoriteService.swift");
  __break(1u);
  return result;
}

id VUIFavorite.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t VUIFavoriteType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3B7412C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUIFavoriteType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E3B74160()
{
  result = sub_1E41FF074();
  static VUISportsFavoriteService.UserConsentDidChangeNotification = result;
  return result;
}

uint64_t *VUISportsFavoriteService.UserConsentDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_1ECF57B70 != -1)
  {
    OUTLINED_FUNCTION_17_78(&qword_1ECF57B70);
  }

  return &static VUISportsFavoriteService.UserConsentDidChangeNotification;
}

id static VUISportsFavoriteService.UserConsentDidChangeNotification.getter()
{
  if (qword_1ECF57B70 != -1)
  {
    OUTLINED_FUNCTION_17_78(&qword_1ECF57B70);
  }

  v1 = static VUISportsFavoriteService.UserConsentDidChangeNotification;

  return v1;
}

uint64_t static VUISportsFavoriteService.userConsent()()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FF154();
  v0[2] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_86_0();
  v3 = sub_1E41FF024();
  v0[5] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_107_1();
  v0[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3B74370()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF0C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_1E3B7440C;
  v3 = *(v0 + 64);

  return MEMORY[0x1EEE43730](v3);
}

uint64_t sub_1E3B7440C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 80) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3B74560()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 56);
  v2 = OUTLINED_FUNCTION_9_90();
  v3(v2);
  objc_allocWithZone(type metadata accessor for VUIUserConsentState(0));
  sub_1E3B73390(v1);
  v4 = OUTLINED_FUNCTION_40_40();
  v5(v4);

  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t sub_1E3B74624()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3B746B4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E3B74748;

  return static VUISportsFavoriteService.userConsent()();
}

uint64_t sub_1E3B74748()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_19_69();
  v4 = *v3;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v2 + 16);
  if (v0)
  {
    sub_1E41FE264();

    v7 = OUTLINED_FUNCTION_4_132();
    v8(v7, 0, v1);

    _Block_release(v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_132();
    v10(v9, v1, 0);
    _Block_release(v6);
  }

  OUTLINED_FUNCTION_29_47();

  return v11();
}

uint64_t static VUISportsFavoriteService.modifyUserConsent(modification:)()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FF154();
  v0[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FF024();
  v0[6] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_107_1();
  v0[9] = swift_task_alloc();
  v6 = sub_1E41FEFF4();
  v0[10] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_86_0();
  v8 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B749DC()
{
  OUTLINED_FUNCTION_134();
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x60))();
  sub_1E41FF0C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1E3B74B30;
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  return MEMORY[0x1EEE43738](v4, v3);
}

uint64_t sub_1E3B74B30()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3B74C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = v12[9];
  v15 = v12[7];
  v14 = v12[8];
  v16 = v12[6];
  (*(v15 + 16))(v14, v13, v16);
  v17 = objc_allocWithZone(type metadata accessor for VUIUserConsentState(0));
  sub_1E3B73390(v14);
  (*(v15 + 8))(v13, v16);
  v18 = OUTLINED_FUNCTION_27_0();
  v19(v18);

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_68_2();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1E3B74D78()
{
  OUTLINED_FUNCTION_27_2();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3B74E98(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E3B74F48;

  return static VUISportsFavoriteService.modifyUserConsent(modification:)();
}

uint64_t sub_1E3B74F48()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_19_69();
  v4 = *(v2 + 16);
  v5 = *v3;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v2 + 24);
  if (v0)
  {
    sub_1E41FE264();

    v8 = OUTLINED_FUNCTION_4_132();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_132();
    v11(v10, v1, 0);
    _Block_release(v7);
  }

  OUTLINED_FUNCTION_29_47();
  OUTLINED_FUNCTION_62_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t static VUISportsFavoriteService.getFavorites()()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FF0A4();
  v0[3] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_86_0();
  v3 = sub_1E41FF154();
  v0[6] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF144();
  v0[9] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_107_1();
  v0[12] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3B751F0()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E41FF0C4();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E3B7561C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340F0, &qword_1E42BE960);
  sub_1E3B75674();
  sub_1E42072E4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1E3B752F4;
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE43758](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E3B752F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 112) = v0;

  (*(v6 + 8))(v5, v7);
  v11 = OUTLINED_FUNCTION_27_0();
  v12(v11);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E3B754B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = OUTLINED_FUNCTION_9_90();
  v6(v5);
  v7 = objc_allocWithZone(type metadata accessor for VUIFavoritesState(0));
  sub_1E3B739A8(v2);
  (*(v4 + 8))(v1, v3);

  v8 = OUTLINED_FUNCTION_7_10();

  return v9(v8);
}

uint64_t sub_1E3B75598()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3B7561C()
{
  result = qword_1ECF340E8;
  if (!qword_1ECF340E8)
  {
    sub_1E41FF0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF340E8);
  }

  return result;
}

unint64_t sub_1E3B75674()
{
  result = qword_1ECF340F8;
  if (!qword_1ECF340F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF340F0, &qword_1E42BE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF340F8);
  }

  return result;
}

double sub_1E3B756F8(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_35_1();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  return sub_1E38364EC(a5, v8);
}

uint64_t sub_1E3B75758(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E3B76AC0;

  return static VUISportsFavoriteService.getFavorites()();
}

uint64_t static VUISportsFavoriteService.addFavorites(teams:leagues:)()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FF154();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF144();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_107_1();
  v0[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3B758E8()
{
  OUTLINED_FUNCTION_60_7();
  v2 = v0[2];
  v3 = v0[3];
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8, &qword_1E42AEDE0);
  v4 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = OUTLINED_FUNCTION_30_45();
  v0[11] = v9;
  *(v9 + 16) = xmmword_1E4299720;
  v10 = (v9 + v1);
  v11 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = v2;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  *v10 = v12;
  v13 = *(v6 + 104);
  v13(v10, *MEMORY[0x1E69D58D8], v4);
  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = v11;
  }

  *(v10 + v8) = v14;
  v13((v10 + v8), *MEMORY[0x1E69D58E0], v4);

  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[12] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_33_40(v15);
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE43750](v17, v18);
}

uint64_t sub_1E3B75A78()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3B75BEC()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 72);
  v2 = OUTLINED_FUNCTION_9_90();
  v3(v2);
  objc_allocWithZone(type metadata accessor for VUIFavoritesState(0));
  sub_1E3B739A8(v1);
  v4 = OUTLINED_FUNCTION_40_40();
  v5(v4);

  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t sub_1E3B75CB0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3B75D40(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1E42062B4();
  }

  v3[3] = a1;
  if (a2)
  {
    a2 = sub_1E42062B4();
  }

  v3[4] = a2;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E3B75E20;

  return static VUISportsFavoriteService.addFavorites(teams:leagues:)();
}

uint64_t sub_1E3B75E20()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_19_69();
  v4 = *v3;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v2 + 16);

  if (v0)
  {
    sub_1E41FE264();

    v7 = OUTLINED_FUNCTION_4_132();
    v8(v7, 0, v1);

    _Block_release(v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_132();
    v10(v9, v1, 0);
    _Block_release(v6);
  }

  OUTLINED_FUNCTION_29_47();
  OUTLINED_FUNCTION_62_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t static VUISportsFavoriteService.removeFavorites(teams:leagues:)()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FF154();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF144();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_107_1();
  v0[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3B7609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v14 = v12[2];
  v15 = v12[3];
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8, &qword_1E42AEDE0);
  v16 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  v20 = *(v19 + 72);
  v21 = OUTLINED_FUNCTION_30_45();
  v12[11] = v21;
  *(v21 + 16) = xmmword_1E4299720;
  v22 = (v21 + v13);
  v23 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  *v22 = v24;
  v25 = *(v18 + 104);
  v25(v22, *MEMORY[0x1E69D58D8], v16);
  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v26 = v23;
  }

  *(v22 + v20) = v26;
  v25((v22 + v20), *MEMORY[0x1E69D58E0], v16);

  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v12[12] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_33_40(v27);
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE43768](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1E3B7622C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

double sub_1E3B763C0(uint64_t a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_27_44();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = OUTLINED_FUNCTION_32_0();

  return sub_1E38364EC(v12, v13);
}

uint64_t sub_1E3B7643C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1E42062B4();
  }

  v3[3] = a1;
  if (a2)
  {
    a2 = sub_1E42062B4();
  }

  v3[4] = a2;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E3B76ADC;

  return static VUISportsFavoriteService.removeFavorites(teams:leagues:)();
}

unint64_t sub_1E3B76560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34100;
  if (!qword_1ECF34100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34100);
  }

  return result;
}

unint64_t sub_1E3B765B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34108;
  if (!qword_1ECF34108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34108);
  }

  return result;
}

void sub_1E3B76644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E3273C28(319);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3B766E8()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_130(v1);
  OUTLINED_FUNCTION_62_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_25()
{
  _Block_release(*(v0 + 32));
  OUTLINED_FUNCTION_27_44();

  return swift_deallocObject();
}

uint64_t sub_1E3B767BC()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_130(v1);
  OUTLINED_FUNCTION_62_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E3B76850()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_32_0();

  return v4(v3);
}

uint64_t sub_1E3B768F0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3B76998()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;
  v3 = OUTLINED_FUNCTION_32_0();

  return v4(v3);
}

uint64_t sub_1E3B76A38(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_1E4207314();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

id sub_1E3B76AE8(__n128 a1)
{
  v2 = *(v1 + 248);
  v3 = v2;
  if (!v2)
  {
    v3 = sub_1E39BE41C(a1);
  }

  v4 = v2;
  return v3;
}

uint64_t sub_1E3B76B28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 256);
  if (!v3)
  {
    v3 = sub_1E382EF1C(a1, a2);
  }

  return v3;
}

uint64_t sub_1E3B76B6C()
{
  v1 = *(v0 + 264);
  if (!v1)
  {
    v1 = sub_1E39BE330();
  }

  return v1;
}

double sub_1E3B76BE8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 272) = a1;

  return result;
}

uint64_t sub_1E3B76D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  type metadata accessor for ConfirmationDialogViewModel();
  v7[32] = 0;
  v7[33] = 0;
  v7[31] = 0;
  v7[34] = sub_1E40363DC();
  v12 = v7[31];
  v8[31] = a6;
  v13 = a6;

  v8[32] = a5;

  v8[33] = a7;

  v14 = sub_1E39C0300();

  if (v14)
  {
  }

  return v14;
}

id sub_1E3B76DF0()
{
  v1 = (*v0 + 648);
  v2 = *v1;
  if (!(*v1)())
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 appController];

    if (v6)
    {
      Strong = [v6 appContext];

      return Strong;
    }

    return 0;
  }

  if (!(v2)(v3))
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1E3B76F00(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 80))(v29, v4, v5);
  v6 = v30;
  if (v30 == 255)
  {
    return 0;
  }

  v8 = v29[0];
  v9 = v29[1];
  v10 = v29[2];
  v28 = v29[3];
  type metadata accessor for LibImageViewModel();
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 16))(v11, v12);
  v15 = v14;

  v7 = sub_1E37ECC00(39, v13, v15, a2, 0, 0, 0);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v8)
      {
        type metadata accessor for LibSidebandImageViewModel();
        OUTLINED_FUNCTION_1_153();
        sub_1E37C536C(v8, v9, v10, v28, 1);
        a1(v12, v15);

        v16 = sub_1E3BFF3A0();

        sub_1E3B77264(v29);
        return v16;
      }

      goto LABEL_18;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BD0;

      *(inited + 32) = sub_1E3C7CCAC(0);
      *(inited + 40) = v21;
      v22 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v8;
      *(inited + 56) = v9;
      *(inited + 80) = sub_1E3C7CCAC(4);
      *(inited + 88) = v23;
      *(inited + 120) = v22;
      *(inited + 96) = 6778986;
      *(inited + 104) = 0xE300000000000000;
      *(inited + 128) = sub_1E3D46F94(24);
      *(inited + 136) = v24;
      *(inited + 168) = v22;
      if (v28)
      {
        v25 = v10;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v28)
      {
        v26 = v28;
      }

      *(inited + 144) = v25;
      *(inited + 152) = v26;
      v27 = sub_1E4205CB4();
      type metadata accessor for ImageViewModel();

      v19 = sub_1E3F5321C(39, v27, a2);

      sub_1E3B77264(v29);
      return v19;
    }

LABEL_18:
    sub_1E3B77264(v29);
    return v7;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  type metadata accessor for LibMPImageViewModel();
  OUTLINED_FUNCTION_1_153();

  v18 = v8;
  a1(v12, v15);

  v19 = sub_1E394D550();

  sub_1E3B77264(v29);
  if (v19)
  {
    swift_beginAccess();
    *(v19 + 352) = v28 & 1;
    return v19;
  }

  return 0;
}

uint64_t sub_1E3B77264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A450, &qword_1E429D7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1E3B7732C()
{

  return result;
}

uint64_t sub_1E3B7736C()
{
  v0 = ViewModel.deinit();

  return v0;
}

uint64_t sub_1E3B773B4()
{
  v0 = sub_1E3B7736C();

  return MEMORY[0x1EEE6BDC0](v0, 280, 7);
}

uint64_t type metadata accessor for ModalDismissButton(uint64_t a1)
{
  result = qword_1EE2A0810;
  if (!qword_1EE2A0810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B774A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34110, &qword_1E42BEC48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  sub_1E3B77560(v0, &v7 - v3);
  v5 = sub_1E3B77BE0();
  sub_1E40A7FF0(0x632E676F6C616964, 0xEC00000065736F6CLL, 0, v1, v5);
  return sub_1E32C843C(v4);
}

id sub_1E3B77560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v53 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34140, &unk_1E42BECE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v53 - v7;
  v58 = sub_1E4202054();
  OUTLINED_FUNCTION_0_10();
  v56 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModalDismissButton(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34130, &unk_1E42BEC58);
  OUTLINED_FUNCTION_0_10();
  v54 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34148, &unk_1E42BECF0);
  OUTLINED_FUNCTION_0_10();
  v55 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  if (sub_1E39DFFC8())
  {
    sub_1E4200A24();
    v28 = sub_1E4200A34();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v28);
    sub_1E3B78208(v60, &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v30 = swift_allocObject();
    sub_1E3B7826C(&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    sub_1E4203954();
    sub_1E4202044();
    v31 = sub_1E3B77DDC(&qword_1ECF34138, &qword_1ECF34130, &unk_1E42BEC58);
    v32 = sub_1E3B77D84();
    v33 = v58;
    sub_1E4202D94();
    (*(v56 + 8))(v11, v33);
    (*(v54 + 8))(v22, v18);
    v34 = v55;
    (*(v55 + 16))(v62, v27, v23);
    swift_storeEnumTagMultiPayload();
    v63 = v18;
    v64 = v33;
    v65 = v31;
    v66 = v32;
    OUTLINED_FUNCTION_1_154();
    sub_1E3B77DDC(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420);
    sub_1E4201F44();
    return (*(v34 + 8))(v27, v23);
  }

  else
  {
    v55 = v18;
    v56 = v23;
    v36 = v60;
    v37 = v62;
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v38 = result;
      v39 = sub_1E3741090(1162760004, 0xE400000000000000, result);
      v41 = v40;

      if (v41)
      {
        v42 = v39;
      }

      else
      {
        v42 = 0;
      }

      v43 = 0xE000000000000000;
      if (v41)
      {
        v43 = v41;
      }

      v63 = v42;
      v64 = v43;
      sub_1E3B78208(v36, &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v44 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v45 = swift_allocObject();
      v46 = sub_1E3B7826C(&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44);
      sub_1E32822E0(v46, v47, v48);
      sub_1E4203994();
      v49 = v53;
      v50 = v57;
      (*(v53 + 16))(v37, v5, v57);
      swift_storeEnumTagMultiPayload();
      v51 = sub_1E3B77DDC(&qword_1ECF34138, &qword_1ECF34130, &unk_1E42BEC58);
      v52 = sub_1E3B77D84();
      v63 = v55;
      v64 = v58;
      v65 = v51;
      v66 = v52;
      OUTLINED_FUNCTION_1_154();
      sub_1E3B77DDC(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420);
      sub_1E4201F44();
      return (*(v49 + 8))(v5, v50);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1E3B77BE0()
{
  result = qword_1ECF34118;
  if (!qword_1ECF34118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34110, &qword_1E42BEC48);
    sub_1E3B77C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34118);
  }

  return result;
}

unint64_t sub_1E3B77C64()
{
  result = qword_1ECF34120;
  if (!qword_1ECF34120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34128, &qword_1E42BEC50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34130, &unk_1E42BEC58);
    sub_1E4202054();
    sub_1E3B77DDC(&qword_1ECF34138, &qword_1ECF34130, &unk_1E42BEC58);
    sub_1E3B77D84();
    swift_getOpaqueTypeConformance2();
    sub_1E3B77DDC(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34120);
  }

  return result;
}

unint64_t sub_1E3B77D84()
{
  result = qword_1EE2889F0;
  if (!qword_1EE2889F0)
  {
    sub_1E4202054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2889F0);
  }

  return result;
}

uint64_t sub_1E3B77DDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1E3B77E30()
{
  v1 = sub_1E4200E34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for ModalDismissButton(0) + 20);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(v10);
    sub_1E37FAED8(v8, v9);
  }

  else
  {
    sub_1E3898B28(v6);
    sub_1E4200E24();
    (*(v3 + 8))(v6, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v12;
  v13 = sub_1E4205F14();
  v14 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v16;
  v17 = sub_1E4205F14();
  *(inited + 120) = v14;
  *(inited + 96) = v17;
  *(inited + 104) = v18;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v19;
  v20 = sub_1E4205F14();
  *(inited + 168) = v14;
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v22 = sub_1E4205CB4();
  v23 = [objc_opt_self() sharedInstance];
  sub_1E3744600(v22);

  v24 = sub_1E4205C44();

  [v23 recordClick_];
}

uint64_t sub_1E3B7808C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E42037C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B780C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78, &unk_1E42A79F0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ModalDismissButton(0);
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

void sub_1E3B78184(uint64_t a1)
{
  sub_1E389B45C(319);
  if (v1 <= 0x3F)
  {
    sub_1E381ECE4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E3B78208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalDismissButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B7826C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalDismissButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for ModalDismissButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78, &unk_1E42A79F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200E34();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  if (*(v0 + v2 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

void *sub_1E3B78458(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E3B784A0(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3B78520;
}

void *sub_1E3B78538(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E3B78580(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3B78600;
}

void sub_1E3B78618(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void sub_1E3B78698()
{
  v1 = [v0 vuiLayer];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius;
    OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius], v6);
    [v2 setCornerRadius_];
  }

  v4 = [v0 vuiLayer];
  if (v4)
  {
    v5 = v4;
    [v4 setMasksToBounds_];
  }
}

double sub_1E3B78740(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void sub_1E3B78774(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius;
  OUTLINED_FUNCTION_7_27(a1);
  *(v2 + v4) = a2;
  sub_1E3B78698();
}

void (*sub_1E3B787B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B7880C;
}

void sub_1E3B7880C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3B78698();
  }
}

uint64_t sub_1E3B78840()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease, v3);
  return *v1;
}

uint64_t sub_1E3B78884(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

double sub_1E3B78934(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3B78968(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration;
  result = OUTLINED_FUNCTION_7_27(a1);
  *(v2 + v4) = a2;
  return result;
}

id sub_1E3B789F8()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_6_109();

  return [v2 v3];
}

id sub_1E3B78A4C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration) = 0x3FE8000000000000;
  v6 = type metadata accessor for InlinePlaybackView();
  v2 = OUTLINED_FUNCTION_6_109();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

void sub_1E3B78B34()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration) = 0x3FE8000000000000;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3B78BF4(char a1)
{
  v3 = type metadata accessor for InlinePlaybackView();
  v4 = OUTLINED_FUNCTION_6_109();
  objc_msgSendSuper2(v5, v6, v4);
  if (a1)
  {
    v8 = OUTLINED_FUNCTION_6_109();
    objc_msgSendSuper2(v9, v10, 1, v8, v1, v3, v1, v3);
    return v11;
  }

  else
  {
    v12 = v7;
    OUTLINED_FUNCTION_4_133();
    v14 = (*(v13 + 120))();
    if (v14)
    {
      v15 = v14;
      [v1 bounds];
      [v15 setFrame_];
    }

    OUTLINED_FUNCTION_4_133();
    v17 = (*(v16 + 144))();
    if (v17)
    {
      v18 = v17;
      [v1 bounds];
      [v18 setFrame_];
    }
  }

  return v12;
}

void sub_1E3B78D9C(char a1, void (*a2)(), uint64_t a3)
{
  v7 = [v3 window];
  if (v7)
  {

    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xD8))();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = a1 & 1;
    v17 = sub_1E3B791EC;
    v18 = v9;
    OUTLINED_FUNCTION_0_154();
    v14 = 1107296256;
    v15 = sub_1E378AEA4;
    v16 = &block_descriptor_68;
    v10 = _Block_copy(&v13);
    v11 = v3;

    if (a2)
    {
      v17 = a2;
      v18 = a3;
      OUTLINED_FUNCTION_0_154();
      v14 = 1107296256;
      v15 = sub_1E37EB82C;
      v16 = &block_descriptor_4;
      v12 = _Block_copy(&v13);
    }

    else
    {
      v12 = 0;
    }

    [objc_opt_self() vui:5242880 animateWithDuration:v10 delay:v12 options:v8 animations:0.0 completion:?];
    _Block_release(v12);
    _Block_release(v10);
  }

  else
  {
    sub_1E3B78F74(v3, a1 & 1);
    if (a2)
    {
      (a2)(1);
    }
  }
}

void sub_1E3B78F74(void *a1, char a2)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x78))();
  if (v3)
  {
    v4 = v3;
    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [v3 setVuiAlpha_];
  }

  OUTLINED_FUNCTION_4_133();
  v7 = (*(v6 + 144))();
  if (v7)
  {
    v8 = 0.0;
    if (a2)
    {
      v8 = 1.0;
    }

    v9 = v7;
    [v7 setVuiAlpha_];
  }
}

id sub_1E3B7916C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InlinePlaybackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3B79200(void (*a1)(void), uint64_t a2)
{
  v4 = [objc_opt_self() currentThread];
  v5 = [v4 isMainThread];

  if (v5)
  {
    a1();
  }

  else
  {
    sub_1E32ADE38();
    v6 = sub_1E4206A04();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    OUTLINED_FUNCTION_0_155();
    OUTLINED_FUNCTION_27_43();
    v10[2] = v8;
    v10[3] = &block_descriptor_7;
    v9 = _Block_copy(v10);

    dispatch_sync(v6, v9);

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3B79350()
{
  sub_1E3B793D0();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 888))();
  v2 = OUTLINED_FUNCTION_3_24();

  return v2;
}

unint64_t sub_1E3B793D0()
{
  result = qword_1EE23B220;
  if (!qword_1EE23B220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B220);
  }

  return result;
}

uint64_t sub_1E3B79460()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 888))();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1E388ED3C(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E3B79520(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 888))();
  if (!v4)
  {
    return 0;
  }

  result = sub_1E388ED3C(v4);
  if (!result)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v6 = *(result + 8 * a2 + 32);

    v7 = *(v6 + 16);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B7962C()
{
  sub_1E3B793D0();
  OUTLINED_FUNCTION_21();
  (*(v1 + 888))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABB6C(v2, v3, v4);

  return v5;
}

double sub_1E3B79798(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1.0;
  }

  if (a1 == 1)
  {
    return -0.5;
  }

  if (a1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  return 2.0;
}

uint64_t sub_1E3B798CC()
{
  sub_1E3B793D0();
  OUTLINED_FUNCTION_21();
  (*(v1 + 888))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABC1C(v2, v3, v4);

  return v5;
}

void *sub_1E3B799C0(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v150 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v150 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v150 - v14;
  v16 = "ractor";
  if (!v13)
  {
    goto LABEL_185;
  }

  v17 = *(*a1 + 464);
  v161 = v13;
  v160 = v13;
  v18 = v17();
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v18;
  v168 = sub_1E32AE9B0(v18);
  if (!v168)
  {

LABEL_9:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v30(v8);

    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_6_21();
      v34 = OUTLINED_FUNCTION_100();
      v171 = v34;
      *v33 = 136315138;
      sub_1E384EE08(*(a1 + 98));
      v37 = sub_1E3270FC8(v35, v36, &v171);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v31, v32, "View model of type [%s] does not have any children, this is an error.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v3 + 8))(v8, v2);
    return v161;
  }

  v20 = (*(*a1 + 392))();
  if (!v20)
  {

LABEL_14:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v38(v11);

    v39 = sub_1E41FFC94();
    v40 = sub_1E4206814();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_6_21();
      v42 = OUTLINED_FUNCTION_100();
      v171 = v42;
      *v41 = 136315138;
      sub_1E384EE08(*(a1 + 98));
      v45 = sub_1E3270FC8(v43, v44, &v171);

      *(v41 + 4) = v45;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v46, v47, "Favorite Banner Cell layout missing for view model type %s");
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v3 + 8))(v11, v2);
    return v161;
  }

  v21 = v20;
  v155 = v15;
  v156 = v2;
  type metadata accessor for SportsFavoriteBannerCellLayout();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    v2 = v156;
    goto LABEL_14;
  }

  v23 = v22;
  v154 = v21;
  v24 = (*(*v22 + 1560))();
  v25 = ((*v23)[248])(v24);
  ((*v23)[224])();
  ((*v23)[249])(v25);
  v26 = v160;
  v27 = [v160 bannerView];
  if (v27)
  {

    v28 = [v26 bannerView];
  }

  else
  {
    v28 = [objc_allocWithZone(VUIFavoriteBannerView) init];
  }

  v49 = v28;
  if (v28)
  {
    v50 = (*v23)[222];
    v51 = v28;
    v52 = v50();
    [v51 setLayout_];

    v178 = 0;
    v53 = sub_1E3B7B0EC(v51);
    if (v53)
    {
      v54 = v53;
      if (v53 >> 62)
      {
        goto LABEL_180;
      }

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      v165 = v54;
    }

    else
    {
      v165 = 0;
    }
  }

  else
  {
    v165 = 0;
    v178 = 0;
  }

  while (1)
  {
    v177 = 0;
    if (v168 >= 1)
    {
      break;
    }

LABEL_179:
    __break(1u);
LABEL_180:
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v138 = sub_1E42076C4();

    v165 = v138;
  }

  v157 = 0;
  v162 = 0;
  a1 = 0;
  v164 = v49 == 0;
  v167 = (v19 & 0xC000000000000001);
  v153 = (v3 + 16);
  v152 = v3 + 8;
  v3 = v165;
  v55 = (v165 & 0xFFFFFFFFFFFFFF8);
  v163 = v165 & 0xFFFFFFFFFFFFFF8;
  if (v165 < 0)
  {
    v55 = v165;
  }

  v150[1] = v55;
  v159 = v165 & 0xC000000000000001;
  v158 = v165 + 32;
  *&v29 = *(v16 + 3704);
  v151 = v29;
  v169 = v49;
  v166 = v19;
  do
  {
    if (v167)
    {
      v56 = MEMORY[0x1E6911E60](a1, v19);
      v2 = v56;
    }

    else
    {
      v2 = *(v19 + 8 * a1 + 32);
    }

    LOWORD(v173) = *(v2 + 98);
    v176 = 40;
    sub_1E3742F1C(v56, v57, v58);
    sub_1E4206254();
    OUTLINED_FUNCTION_1_155();
    v16 = v172;
    v59 = v171 == v174 && v172 == v175;
    v170 = v3 >> 62;
    if (v59)
    {

LABEL_50:
      v78 = v177;
      v77 = v178;
      if (!v178)
      {
        v77 = MEMORY[0x1E69E7CC0];
      }

      if (!v177)
      {
        v78 = MEMORY[0x1E69E7CC0];
      }

      v177 = v78;
      v178 = v77;
      if (v77 >> 62)
      {
        v19 = sub_1E4207384();
        if (v3)
        {
LABEL_56:
          if (v170)
          {
            v79 = sub_1E4207384();
          }

          else
          {
            v79 = *(v163 + 16);
          }

          if (v19 >= v79)
          {
            v3 = 0;
          }

          else if (v159)
          {

            v3 = MEMORY[0x1E6911E60](v19, v3);
          }

          else
          {
            if (v19 < 0)
            {
              __break(1u);
LABEL_178:
              __break(1u);
              goto LABEL_179;
            }

            if (v19 >= *(v163 + 16))
            {
              goto LABEL_178;
            }

            v3 = *(v158 + 8 * v19);
          }
        }
      }

      else
      {
        v19 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          goto LABEL_56;
        }
      }

      if (v49)
      {
        [v49 maxImageSize];
        v16 = v80;
      }

      else
      {
        v16 = 0;
      }

      v81 = OUTLINED_FUNCTION_10_86();
      v82(v81);

      v83 = v23;
      v84 = *(*v23[14] + 312);

      v84(v16, &qword_1F5D5CE68);

      type metadata accessor for UIFactory();
      v85 = OUTLINED_FUNCTION_5_122();
      v86 = sub_1E3280A90(v85, &qword_1EE23AE80, 0x1E69DD250);

      v5 = sub_1E393D92C(v87, v3, &v171, 0, v86);

      sub_1E373C624(&v171);
      if (v5)
      {
        objc_opt_self();
        v88 = swift_dynamicCastObjCClass();
        v23 = v83;
        if (v88)
        {
          v16 = v88;
          [v88 setUserInteractionEnabled_];
          v49 = v169;
          if (v19 > 27)
          {
          }

          else
          {
            v89 = v5;
            MEMORY[0x1E6910BF0]();
            if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v5 = &v177;
            MEMORY[0x1E6910BF0](v90);
            v16 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v16 >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
          }

          goto LABEL_80;
        }
      }

      else
      {

        v23 = v83;
      }

      v49 = v169;
LABEL_80:
      v3 = v165;
      goto LABEL_81;
    }

    v60 = sub_1E42079A4();

    if (v60)
    {
      goto LABEL_50;
    }

    LOWORD(v173) = *(v2 + 98);
    OUTLINED_FUNCTION_6_110(23);
    OUTLINED_FUNCTION_1_155();
    v16 = v172;
    if (v171 == v174 && v172 == v175)
    {

LABEL_84:

      v91 = v162;
      if (v49)
      {
        v92 = [v49 titleLabel];
      }

      else
      {
        v92 = 0;
      }

      type metadata accessor for UIFactory();
      v93 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      v5 = OUTLINED_FUNCTION_0_156(v93);

      sub_1E373C624(&v171);
      v162 = v5;
      goto LABEL_81;
    }

    v62 = sub_1E42079A4();

    if (v62)
    {
      goto LABEL_84;
    }

    LOWORD(v173) = *(v2 + 98);
    OUTLINED_FUNCTION_6_110(15);
    OUTLINED_FUNCTION_1_155();
    if (v171 == v174 && v172 == v175)
    {

      v16 = v157;
    }

    else
    {
      v64 = sub_1E42079A4();

      v16 = v157;
      if ((v64 & 1) == 0)
      {
        v65 = sub_1E324FBDC();
        v66 = v156;
        (*v153)(v155, v65, v156);

        v5 = sub_1E41FFC94();
        v67 = sub_1E42067F4();

        if (os_log_type_enabled(v5, v67))
        {
          v68 = OUTLINED_FUNCTION_6_21();
          v69 = OUTLINED_FUNCTION_100();
          v171 = v69;
          *v68 = v151;
          LOWORD(v174) = *(v2 + 98);
          sub_1E37D144C(v69, v70, v71);
          v150[0] = v5;
          v72 = sub_1E4207944();
          v16 = sub_1E3270FC8(v72, v73, &v171);

          *(v68 + 4) = v16;
          v5 = v150[0];
          _os_log_impl(&dword_1E323F000, v150[0], v67, "FavoriteBannerCell: unsupported child type %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_21_0();

          v74 = OUTLINED_FUNCTION_9_91();
          v76 = v156;
        }

        else
        {

          v74 = OUTLINED_FUNCTION_9_91();
          v76 = v66;
        }

        v75(v74, v76);
        goto LABEL_80;
      }
    }

    if (v49)
    {
      v94 = [v49 subtitleLabel];
    }

    else
    {
      v94 = 0;
    }

    type metadata accessor for UIFactory();
    v95 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v5 = OUTLINED_FUNCTION_0_156(v95);

    sub_1E373C624(&v171);
    v157 = v5;
LABEL_81:
    v19 = v166;
    ++a1;
  }

  while (v168 != a1);
  if (!v49)
  {

    v98 = 0;
LABEL_103:
    v99 = [objc_opt_self() currentDevice];
    v100 = [v99 userInterfaceIdiom];

    if (v100)
    {
      v3 = 28;
    }

    else
    {
      v3 = 5;
    }

    if (v98)
    {
      v101 = 0;
      while (1)
      {
        v16 = v177;
        a1 = v178;
        v102 = v178 >= 0 ? v178 & 0xFFFFFFFFFFFFFF8 : v178;
        v168 = v102;
        while (1)
        {
          do
          {
            v103 = a1 >> 62;
            if (a1)
            {
              v104 = v103 ? sub_1E4207384() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v104 >= v3)
              {
                goto LABEL_158;
              }
            }
          }

          while (!v16);
          v174 = v16;
          v171 = v101;
          LOBYTE(v172) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          sub_1E3798394();
          v5 = &v174;
          sub_1E38D2054(&v171, &v173);
          v2 = v173;
          if (v173)
          {
            break;
          }

LABEL_120:
          v49 = v169;
        }

        type metadata accessor for ImageViewModel();
        v105 = swift_dynamicCastClass();
        if (!v105)
        {
          break;
        }

        v106 = v105;
        if (a1)
        {
          if (v103)
          {
            v107 = sub_1E4207384();
          }

          else
          {
            v107 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v107 = 0;
        }

        v156 = v107;
        if (v165 && (v170 ? (v108 = sub_1E4207384()) : (v108 = *(v163 + 16)), v107 < v108))
        {
          if (!v159)
          {
            if ((v107 & 0x8000000000000000) == 0)
            {
              if (v107 < *(v163 + 16))
              {
                v109 = *(v158 + 8 * v107);
                goto LABEL_135;
              }

LABEL_183:
              __break(1u);
              goto LABEL_184;
            }

LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v120 = v165;

          v109 = MEMORY[0x1E6911E60](v107, v120);
        }

        else
        {
          v109 = 0;
        }

LABEL_135:
        v167 = v109;
        if (v169)
        {
          [v169 maxImageSize];
          v168 = v110;
        }

        else
        {
          v168 = 0;
        }

        v111 = OUTLINED_FUNCTION_10_86();
        v112(v111);

        v5 = v23[14];
        v166 = (v5->isa + 312);
        v113 = *v166;

        v113(v168, v109);

        type metadata accessor for UIFactory();
        v114 = OUTLINED_FUNCTION_5_122();
        v115 = sub_1E3280A90(v114, &qword_1EE23AE80, 0x1E69DD250);

        v116 = v167;
        v117 = sub_1E393D92C(v106, v167, &v171, 0, v115);

        sub_1E373C624(&v171);
        if (v117)
        {
          objc_opt_self();
          v118 = swift_dynamicCastObjCClass();
          if (!v118)
          {
            goto LABEL_145;
          }

          if (a1 && v156 < v3)
          {
            v5 = &v178;
            MEMORY[0x1E6910BF0](v117);
            if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
LABEL_145:
          }
        }

        else
        {
          v118 = 0;
        }

        a1 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          __break(1u);
          goto LABEL_182;
        }

        if (v16 >> 62)
        {
          v119 = sub_1E4207384();
        }

        else
        {
          v119 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1 >= v119)
        {
          v101 = 0;
        }

        else
        {
          ++v101;
        }

        v49 = v169;
      }

      goto LABEL_120;
    }

LABEL_158:

    v121 = v162;
    v122 = v157;
    if (v49)
    {
      if (v162)
      {
        objc_opt_self();
        v123 = swift_dynamicCastObjCClass();
        if (v123)
        {
          v124 = v121;
        }
      }

      else
      {
        v123 = 0;
      }

      v125 = v49;
      [v125 setTitleLabel_];

      if (v122)
      {
        objc_opt_self();
        v126 = swift_dynamicCastObjCClass();
        if (v126)
        {
          v127 = v122;
        }
      }

      else
      {
        v126 = 0;
      }

      v128 = v125;
      [v128 setSubtitleLabel_];
    }

    v129 = v49;
    v130 = [v129 backgroundView];
    if (v130)
    {

      v131 = [v129 backgroundView];
    }

    else
    {
      v131 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    }

    v132 = v131;
    [v129 setBackgroundView_];

    if (v169)
    {
      if (v178)
      {
        sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
        v133 = v129;
        v134 = sub_1E42062A4();
      }

      else
      {
        v135 = v129;
        v134 = 0;
      }

      [v129 setBackgroundImageLogos_];
    }

    v136 = ((*v23)[222])();
    v137 = v160;
    [v160 setBannerLayout_];

    [v137 setBannerView_];

    return v161;
  }

  v96 = [v49 layout];
  if (v96)
  {
    v97 = v96;

    v98 = [v97 isPreModeBanner];

    goto LABEL_103;
  }

LABEL_184:
  __break(1u);
LABEL_185:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v139(v5);

  v140 = v5;
  v141 = sub_1E41FFC94();
  v142 = sub_1E4206814();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = OUTLINED_FUNCTION_6_21();
    v144 = OUTLINED_FUNCTION_100();
    v171 = v144;
    *v143 = *(v16 + 3704);
    sub_1E384EE08(*(a1 + 98));
    v147 = sub_1E3270FC8(v145, v146, &v171);

    *(v143 + 4) = v147;
    OUTLINED_FUNCTION_7_28(&dword_1E323F000, v148, v149, "FavoriteBannerCell: Failed to get correct cell for %s");
    __swift_destroy_boxed_opaque_existential_1(v144);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v140, v2);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}