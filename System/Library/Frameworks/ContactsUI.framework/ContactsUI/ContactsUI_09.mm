void sub_199B6FCA8(uint64_t a1)
{
  sub_199B6FD44();
  if (v1 <= 0x3F)
  {
    sub_199B6FD94(319);
    if (v2 <= 0x3F)
    {
      sub_199B6FDEC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199B6FD44()
{
  if (!qword_1EAF71D80)
  {
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71D80);
    }
  }
}

void sub_199B6FD94(uint64_t a1)
{
  if (!qword_1EAF71D88)
  {
    sub_199DF774C();
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF71D88);
    }
  }
}

void sub_199B6FDEC(uint64_t a1)
{
  if (!qword_1EAF71D78)
  {
    sub_199DF781C();
    sub_199A7BB24(&qword_1EAF71DA8, 255, MEMORY[0x1E6996980], MEMORY[0x1E6996978]);
    v1 = sub_199DF85BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF71D78);
    }
  }
}

unint64_t sub_199B6FE84()
{
  result = qword_1EAF71D38;
  if (!qword_1EAF71D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D88, &qword_199E42398);
    sub_199A7DB98();
    sub_199B6FF28(&qword_1EAF71D30, &qword_1EAF75D90, &qword_199E423A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D38);
  }

  return result;
}

uint64_t sub_199B6FF28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_199B6FFC0()
{
  result = qword_1EAF71D70;
  if (!qword_1EAF71D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D70);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_199B70064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DB0, &qword_199E42678);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B70158()
{
  sub_199A9E488();
  sub_199DF7E7C();
  return sub_199DFA4AC();
}

uint64_t sub_199B70204()
{
  sub_199DF7E8C();
  v0 = sub_199DF9F5C();

  return v0;
}

id CNMonogramPosterConfigurationReader.init(posterConfigurationUserInfo:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0, &qword_199E42680);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_199DF7E9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B7055C(a1, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_199B70830(v5);
    type metadata accessor for CNMonogramPosterConfigurationReader(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v11 = *(v7 + 32);
    v11(v9, v5, v6);
    v11(&v1[OBJC_IVAR____TtC10ContactsUI35CNMonogramPosterConfigurationReader_monogramPosterConfiguration], v9, v6);
    v12 = type metadata accessor for CNMonogramPosterConfigurationReader(0);
    v13.receiver = v1;
    v13.super_class = v12;
    return objc_msgSendSuper2(&v13, sel_init);
  }
}

uint64_t sub_199B7055C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_199DF9F8C();
  if (*(a1 + 16))
  {
    v7 = sub_199AEF9E8(v5, v6);
    v9 = v8;

    if (v9)
    {
      v15 = *(*(a1 + 56) + 8 * v7);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        sub_199DF703C();
        swift_allocObject();
        sub_199DF702C();
        v10 = sub_199DF7E9C();
        sub_199B70B5C();
        sub_199DF701C();
        (*(*(v10 - 8) + 56))(a3, 0, 1, v10);

        return sub_199A9EF34(v13, v14);
      }
    }
  }

  else
  {
  }

  v11 = sub_199DF7E9C();
  return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
}

uint64_t sub_199B70830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0, &qword_199E42680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CNMonogramPosterConfigurationReader(uint64_t a1)
{
  result = qword_1EAF75DC8;
  if (!qword_1EAF75DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CNMonogramPosterConfigurationReader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNMonogramPosterConfigurationReader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNMonogramPosterConfigurationReader(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B70A24(uint64_t a1)
{
  result = sub_199DF7E9C();
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

unint64_t sub_199B70B5C()
{
  result = qword_1EAF75DD8;
  if (!qword_1EAF75DD8)
  {
    sub_199DF7E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75DD8);
  }

  return result;
}

double static CNPosterOnboardingSettingsAnimationViewController.controller(for:isRTL:windowScene:shouldDefaultToCleanState:completion:)(void *a1, char a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_199DFA1BC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_199DFA17C();
  v16 = a1;
  v17 = a3;

  v18 = sub_199DFA16C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 32) = v16;
  *(v19 + 40) = a2;
  *(v19 + 48) = v17;
  *(v19 + 56) = a4;
  *(v19 + 64) = a5;
  *(v19 + 72) = a6;
  sub_199AE5E60(0, 0, v14, &unk_199E426D0, v19);

  return result;
}

uint64_t sub_199B70D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v16;
  v8[19] = sub_199DFA17C();
  v8[20] = sub_199DFA16C();
  type metadata accessor for CNPosterOnboardingSettingsAnimationFactory();
  swift_initStaticObject();
  v13 = swift_task_alloc();
  v8[21] = v13;
  *v13 = v8;
  v13[1] = sub_199B70E74;

  return sub_199AA3D98((v8 + 2), a4, a5, a6, a7);
}

uint64_t sub_199B70E74()
{

  v1 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B70FB0, v1, v0);
}

uint64_t sub_199B70FB0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 16);
  *(v0 + 72) = *(v0 + 24);
  *(v0 + 88) = *(v0 + 40);
  v3 = type metadata accessor for CNPosterOnboardingSettingsAnimationViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer] = 0;
  v5 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  v6 = v2;
  sub_199B72CC0(v0 + 72, v0 + 104);
  sub_199B72CC0(v0 + 80, v0 + 112);
  sub_199B72CC0(v0 + 88, v0 + 120);
  sub_199B72CC0(v0 + 96, v0 + 128);
  v4[v5] = !UIAccessibilityIsVideoAutoplayEnabled();
  v7 = &v4[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource];
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  *(v7 + 4) = *(v0 + 48);
  *v7 = v8;
  *(v7 + 1) = v9;
  *(v0 + 56) = v4;
  *(v0 + 64) = v3;
  v10 = objc_msgSendSuper2((v0 + 56), sel_initWithNibName_bundle_, 0, 0);
  v1();

  sub_199A79A04(v0 + 72, &qword_1EAF72750, &qword_199E37E50);
  sub_199A79A04(v0 + 80, &qword_1EAF72750, &qword_199E37E50);
  sub_199A79A04(v0 + 88, &qword_1EAF72750, &qword_199E37E50);
  sub_199A79A04(v0 + 96, &qword_1EAF72750, &qword_199E37E50);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_199B71150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7688;

  return sub_199B70D74(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_199B71488(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CNPosterOnboardingSettingsAnimationViewController();
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  v2 = sub_199B719E8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_199B71E10(v2);
    if (v4)
    {
      v5 = v4;
      sub_199B72318(v3);
      v6 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer;
      [*&v1[OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer] removeFromSuperlayer];
      v7 = *&v1[v6];
      *&v1[v6] = v5;
      v8 = v5;

      v9 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
      swift_beginAccess();
      if (v1[v9] == 1)
      {
        v10 = *&v1[v6];
        if (v10)
        {
          v11 = v10;
          [v11 convertTime:0 fromLayer:CACurrentMediaTime()];
          v13 = v12;
          [v11 setSpeed_];
          [v11 setTimeOffset_];
        }
      }

      v14 = [v1 view];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      v16 = [v14 layer];

      [v16 addSublayer_];
      v3 = v16;
    }
  }
}

uint64_t sub_199B7170C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_199B717A4(char a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_199B71854()
{
  v1 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer);
  if (*(v0 + v1) == 1)
  {
    if (v2)
    {
      v3 = v2;
      [v3 timeOffset];
      v5 = v4;
      LODWORD(v4) = 1.0;
      [v3 setSpeed_];
      [v3 setTimeOffset_];
      [v3 setBeginTime_];
      [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
      [v3 setBeginTime_];
LABEL_6:
    }
  }

  else if (v2)
  {
    v3 = v2;
    [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v7;
    [v3 setSpeed_];
    [v3 setTimeOffset_];
    goto LABEL_6;
  }

  *(v0 + v1) = (*(v0 + v1) & 1) == 0;
}

id sub_199B719E8()
{
  v0 = sub_199DF71BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18[-v5];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_199B72134();
  v12 = sub_199DF9F5C();

  v13 = sub_199DF9F5C();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    sub_199DF719C();

    (*(v1 + 32))(v9, v6, v0);
    sub_199A7A02C(0, &qword_1EAF70FF8, 0x1E6979400);
    (*(v1 + 16))(v3, v9, v0);
    v15 = sub_199DF9F8C();
    v14 = sub_199B71C48(v3, v15, v16, 0);
    (*(v1 + 8))(v9, v0);
  }

  return v14;
}

id sub_199B71C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_199DF718C();
  v7 = sub_199DF9F5C();

  if (a4)
  {
    v8 = sub_199DF9E8C();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_199DF71BC();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_199DF717C();

    swift_willThrow();
    v15 = sub_199DF71BC();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_199B71E10(void *a1)
{
  v2 = [a1 rootLayer];
  if (!v2)
  {
    return v2;
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  [result bounds];
  v6 = v5;

  [v2 bounds];
  v8 = v7;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = v6 / v8;
  [result bounds];
  v12 = v11;

  [v2 bounds];
  if (v10 > v12 / v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12 / v13;
  }

  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  Width = CGRectGetWidth(v45);
  if (qword_1EAF719B0 != -1)
  {
    v39 = Width;
    swift_once();
    Width = v39;
  }

  v25 = Width - (*&qword_1EAF86E40 + 20.0 + *&qword_1EAF86E40 + 20.0);
  [v2 bounds];
  if (v14 >= v25 / v26)
  {
    v27 = v25 / v26;
  }

  else
  {
    v27 = v14;
  }

  [v2 transform];
  CATransform3DMakeScale(&b, v27, v27, 1.0);
  a = v44;
  CATransform3DConcat(&v41, &a, &b);
  [v2 setTransform_];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_18;
  }

  v28 = result;
  [result bounds];
  v30 = v29;

  [v2 bounds];
  v32 = v31;
  result = [v1 view];
  if (result)
  {
    v33 = result;
    v34 = (v30 - v32) * 0.5;
    [result bounds];
    v36 = v35;

    [v2 bounds];
    v38 = (v36 - v37) * 0.5;
    [v2 transform];
    CATransform3DMakeTranslation(&v41, v34, v38, 1.0);
    b = a;
    CATransform3DConcat(&v40, &b, &v41);
    [v2 setTransform_];
    return v2;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_199B72134()
{
  v1 = sub_199B72200();
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = [result effectiveUserInterfaceLayoutDirection];

    v5 = 0xD000000000000022;
    v6 = 0xD000000000000025;
    if (v4 == 1)
    {
      v6 = 0xD000000000000029;
      v5 = 0xD000000000000026;
    }

    if (v1)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_199B72200()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = v3;
      [v4 bounds];
      Width = CGRectGetWidth(v18);
      [v4 bounds];
      v6 = Width / CGRectGetHeight(v19);
      [v4 bounds];
      Height = CGRectGetHeight(v20);
      [v4 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v21.origin.x = v9;
      v21.origin.y = v11;
      v21.size.width = v13;
      v21.size.height = v15;
      v16 = CGRectGetWidth(v21);

      v17 = Height / v16;
      if (Height / v16 >= v6)
      {
        v17 = v6;
      }

      return (v17 > 0.5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_199B72318(void *a1)
{
  v3 = sub_199DF9F5C();
  v4 = [a1 publishedObjectWithName_];

  if (v4)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010, 0x1E6979398);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 8))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080, &qword_199E3E7D0);
  }

  v5 = sub_199DF9F5C();
  v6 = [a1 publishedObjectWithName_];

  if (v6)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010, 0x1E6979398);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 16))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080, &qword_199E3E7D0);
  }

  v7 = sub_199DF9F5C();
  v8 = [a1 publishedObjectWithName_];

  if (v8)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010, 0x1E6979398);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 24))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080, &qword_199E3E7D0);
  }

  v9 = sub_199DF9F5C();
  v10 = [a1 publishedObjectWithName_];

  if (v10)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010, 0x1E6979398);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_dataSource + 32))
      {
        [v15 setContents_];
      }
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080, &qword_199E3E7D0);
  }

  v11 = sub_199DF9F5C();
  v12 = [a1 publishedObjectWithName_];

  if (v12)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010, 0x1E6979398);
    if (swift_dynamicCast())
    {
      [v15 setBackgroundColor_];
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080, &qword_199E3E7D0);
  }

  v13 = sub_199DF9F5C();
  v14 = [a1 publishedObjectWithName_];

  if (v14)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_199A7A02C(0, &unk_1EAF71010, 0x1E6979398);
    if (swift_dynamicCast())
    {
      [v15 setBackgroundColor_];
    }
  }

  else
  {
    sub_199A79A04(&v18, &qword_1EAF73080, &qword_199E3E7D0);
  }
}

id CNPosterOnboardingSettingsAnimationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_199DF9F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CNPosterOnboardingSettingsAnimationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPosterOnboardingSettingsAnimationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_199B72BCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7314;

  return sub_199B70D74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_199B72CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72750, &qword_199E37E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_199B72D88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CNAvatarPosterPairViewModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_199B72E2C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CNAvatarPosterPairViewModel();
  result = sub_199DF83BC();
  *a2 = result;
  return result;
}

uint64_t sub_199B72E8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_199DFA87C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_199A9C55C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x19A8F8520](0, a1);
    result = sub_199DF9F6C();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_199DF9F6C();
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_199B73038(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_199DFA79C();
    v4 = (a1 + 32);
    type metadata accessor for CNActionType(0);
    sub_199AD6AFC();
    do
    {
      v5 = *v4++;
      v6 = v5;
      swift_dynamicCast();
      sub_199DFA77C();
      sub_199DFA7AC();
      sub_199DFA7BC();
      sub_199DFA78C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_199B7311C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(CNContactInlineActionsViewController) init];
  [v5 setDisplaysTitles_];
  [v5 setDisplaysUnavailableActionTypes_];
  [v5 setViewStyle_];
  LODWORD(a2) = [objc_msgSend(objc_opt_self() sharedAnalyzer)];
  swift_unknownObjectRelease();
  v6 = objc_opt_self();
  v7 = &selRef_allSupportedActionTypesForBlockedContact;
  if (!a2)
  {
    v7 = &selRef_allSupportedActionTypes;
  }

  v8 = [v6 *v7];
  type metadata accessor for CNActionType(0);
  v9 = sub_199DFA0CC();

  v10 = sub_199B73038(v9);

  sub_199B72E8C(v10);

  v11 = sub_199DFA0BC();

  [v5 setSupportedActionTypes_];

  return v5;
}

void sub_199B73358(uint64_t a1)
{
  sub_199B73380();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199B73380()
{
  result = qword_1EAF75E08;
  if (!qword_1EAF75E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75E08);
  }

  return result;
}

uint64_t sub_199B733D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    sub_199DF81AC();
    v17 = sub_199AEF9E8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_199B73510()
{
  result = [objc_allocWithZone(type metadata accessor for CNWallpaperConfigurationGenerator()) init];
  qword_1EAF718E8 = result;
  return result;
}

id CNWallpaperConfigurationGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CNWallpaperConfigurationGenerator.shared.getter()
{
  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAF718E8;

  return v1;
}

void sub_199B7362C(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_199B77548(a1, a5);
  a2();
}

void sub_199B73680(void *a1, uint64_t a2, void (*a3)(void *), int a4, void *a5, int a6, uint64_t a7, unint64_t a8, id a9)
{
  v40 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v33 = a5;
    v34 = a3;
    v16 = [a9 poseConfigurationData];
    if (v16)
    {
      v17 = v16;
      v18 = sub_199DF71FC();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xF000000000000000;
    }

    v21 = [a9 poseHasBody];
    v22 = [a1 HEICRepresentation];
    v23 = sub_199DF71FC();
    v25 = v24;

    sub_199AA7630(a7, a8);
    v26 = UIColor.avatarColorDescription.getter();
    sub_199A9EF20(0, 0xF000000000000000);
    sub_199A9EF20(0, 0xF000000000000000);
    sub_199A9EF20(0, 0xF000000000000000);
    *&v36 = v26;
    *(&v36 + 1) = a7;
    *&v37 = a8;
    *(&v37 + 1) = v18;
    *&v38 = v20;
    BYTE8(v38) = v21;
    *&v39 = v23;
    *(&v39 + 1) = v25;
    v35[0] = v36;
    v35[1] = v37;
    v35[2] = v38;
    v35[3] = v39;
    sub_199B75DA4(v35);
    v27 = sub_199DF9E8C();

    *&v35[0] = 0;
    v28 = [v33 storeUserInfo:v27 error:v35];

    if (v28)
    {
      v29 = *&v35[0];
    }

    else
    {
      v30 = *&v35[0];
      v31 = sub_199DF717C();

      swift_willThrow();
      sub_199DFA31C();
      v32 = CNUILogPosters();
      sub_199DF7FEC();
    }

    v34(v33);
    sub_199B60960(&v36);
  }

  else
  {
    a3(a5);
  }
}

uint64_t sub_199B73940(void *a1, __n128 a2)
{
  v2 = sub_199B73ABC(a1, a2);
  sub_199A7A02C(0, &unk_1EAF75580, off_1E74DEC78);
  v3 = sub_199B2B2CC(v2);

  return v3;
}

id sub_199B73ABC(void *a1, __n128 a2)
{
  v3 = sub_199B760E0(1, a1, *(v2 + OBJC_IVAR____TtC10ContactsUI33CNWallpaperConfigurationGenerator_cleanStatePosterBackgroundColor), 0, 0, 2);
  v4 = objc_opt_self();
  v5 = sub_199DF9F5C();
  v6 = [v4 finalizedConfiguration:v3 forExtensionIdentifier:v5];

  if (v6)
  {

    return v6;
  }

  return v3;
}

uint64_t sub_199B73B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = sub_199DF7E9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0, &qword_199E42680);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v53 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v53 - v16;
  (*(v5 + 56))(v53 - v16, 1, 1, v4, v15);
  v18 = objc_opt_self();
  v19 = sub_199DF71DC();
  v55[0] = 0;
  v20 = [v18 unarchiveCNConfigurationFromData:v19 error:v55];

  v21 = v55[0];
  if (!v20)
  {
    v29 = v55[0];
    v30 = sub_199DF717C();

    swift_willThrow();
    v31 = v30;
LABEL_7:

    goto LABEL_9;
  }

  v55[0] = 0;
  v22 = v21;
  v23 = [v20 loadUserInfoWithError_];
  v24 = v55[0];
  if (!v23)
  {
    v32 = v55[0];
    v33 = sub_199DF717C();

    swift_willThrow();
    v34 = sub_199DFA30C();
    v35 = CNUILogPosters();
    if (!os_log_type_enabled(v35, v34))
    {

      goto LABEL_9;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v33;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_199A75000, v35, v34, "Poster could not be decoded as a monogram: %@", v36, 0xCu);
    sub_199A79A04(v37, &unk_1EAF73A90, &unk_199E3A0B0);
    MEMORY[0x19A8FA1A0](v37, -1, -1);
    MEMORY[0x19A8FA1A0](v36, -1, -1);

    v31 = v33;
    goto LABEL_7;
  }

  v53[1] = v3;
  v25 = v7;
  v26 = v23;
  v27 = sub_199DF9E9C();
  v28 = v24;

  sub_199B7419C(v27, v13);
  sub_199A79A04(v17, &qword_1EAF75DC0, &qword_199E42680);

  sub_199B744F0(v13, v17);
  sub_199B74560(v17, v10);
  v42 = (*(v5 + 48))(v10, 1, v4);
  if (v42 == 1)
  {
    sub_199A79A04(v17, &qword_1EAF75DC0, &qword_199E42680);
    v40 = 0;
    v17 = v10;
    goto LABEL_10;
  }

  v43 = v25;
  (*(v5 + 32))(v25, v10, v4);
  v44 = [objc_opt_self() stringFromContact:v54 style:1002];
  if (v44)
  {
    v45 = v44;
    v46 = sub_199DF9F8C();
    v48 = v47;

    if (v46 == sub_199DF7E8C() && v48 == v49)
    {

LABEL_18:
      v51 = sub_199DFA4BC();
      v52 = sub_199DF7E7C();
      v40 = sub_199B733D4(v51, v52);

      (*(v5 + 8))(v43, v4);
      goto LABEL_10;
    }

    v50 = sub_199DFA99C();

    if (v50)
    {
      goto LABEL_18;
    }
  }

  (*(v5 + 8))(v43, v4);
LABEL_9:
  v40 = 0;
LABEL_10:
  sub_199A79A04(v17, &qword_1EAF75DC0, &qword_199E42680);
  return v40 & 1;
}

void sub_199B7419C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_199DF7E9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF703C();
  swift_allocObject();
  sub_199DF702C();
  v16 = sub_199DF9F8C();
  v17 = v9;
  sub_199DFA6CC();
  if (!*(a1 + 16) || (v10 = sub_199B4AA08(v18), (v11 & 1) == 0))
  {

    sub_199B4BC9C(v18);
LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

  sub_199A9DA04(*(a1 + 56) + 32 * v10, v19);
  sub_199B4BC9C(v18);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = v16;
  v13 = v17;
  sub_199B7772C(&qword_1EAF75DD8, MEMORY[0x1E69B26F0]);
  sub_199DF701C();
  sub_199A9EF34(v12, v13);

  if (v2)
  {
    return;
  }

  (*(v6 + 32))(a2, v8, v5);
  v14 = 0;
LABEL_8:
  (*(v6 + 56))(a2, v14, 1, v5);
}

id CNWallpaperConfigurationGenerator.init()()
{
  v1 = OBJC_IVAR____TtC10ContactsUI33CNWallpaperConfigurationGenerator_cleanStatePosterBackgroundColor;
  *&v0[v1] = [objc_opt_self() systemDarkGrayColor];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CNWallpaperConfigurationGenerator();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CNWallpaperConfigurationGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperConfigurationGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B744F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0, &qword_199E42680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B74560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DC0, &qword_199E42680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_199B74674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75648, &unk_199E40878);
  v6 = sub_199DFA8AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_199B429C0((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_199B4BC40(v23, &v37);
        sub_199A9DA04(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_199DFA6AC();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_199B429C0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_199B7492C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E30, &qword_199E42980);
  v31 = v4;
  v6 = sub_199DFA8AC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v31 & 1) == 0)
      {
        sub_199DF81AC();
      }

      sub_199DFAA7C();
      sub_199DF9FEC();

      v15 = sub_199DFAABC();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_199B74CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75690, &qword_199E408B0);
  v39 = v4;
  v6 = sub_199DFA8AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v41 = *v24;
      v42 = *v22;
      v27 = v24[2];
      v26 = v24[3];
      if ((v39 & 1) == 0)
      {
        sub_199DF81AC();
        sub_199DF81AC();
        sub_199A9A57C(v27, v26);
      }

      sub_199DFAA7C();
      sub_199DF9FEC();
      v28 = sub_199DFAABC();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      v12 = v40;
      *v17 = v41;
      v17[1] = v25;
      v17[2] = v27;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
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

void sub_199B74F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75658, &qword_199E40888);
  v6 = sub_199DFA8AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v22 = sub_199DFAA6C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_199B751F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75680, &qword_199E408A0);
  v31 = v4;
  v6 = sub_199DFA8AC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        sub_199DF81AC();
      }

      sub_199DFAA7C();
      MEMORY[0x19A8F8860](v20);
      v22 = sub_199DFAABC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

_OWORD *sub_199B75480(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_199B4AA08(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_199B757A8();
      goto LABEL_7;
    }

    sub_199B74674(v13, a3 & 1);
    v19 = sub_199B4AA08(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_199B4BC40(a2, v21);
      return sub_199B7572C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_199DFA9FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_199B429C0(a1, v17);
}

unint64_t sub_199B755CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_199B4AB64(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_199B751F0(v14, a3 & 1);
      result = sub_199B4AB64(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_199DFA9FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_199B75C58(&qword_1EAF75680, &qword_199E408A0);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_199B7572C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_199B429C0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_199B757A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75648, &unk_199E40878);
  v2 = *v0;
  v3 = sub_199DFA89C();
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
        v18 = 40 * v17;
        sub_199B4BC40(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_199A9DA04(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_199B429C0(v22, (*(v4 + 56) + v17));
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

void sub_199B75960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75690, &qword_199E408B0);
  v2 = *v0;
  v3 = sub_199DFA89C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
        sub_199DF81AC();
        sub_199DF81AC();
        sub_199A9A57C(v25, v26);
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

void sub_199B75AF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75658, &qword_199E40888);
  v2 = *v0;
  v3 = sub_199DFA89C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_199B75C58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_199DFA89C();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        sub_199DF81AC();
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

unint64_t sub_199B75DA4(_OWORD *a1)
{
  v3 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
  sub_199DF707C();
  swift_allocObject();
  sub_199DF706C();
  sub_199DF704C();
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v15[2] = a1[2];
  v15[3] = v5;
  sub_199B75F0C();
  v6 = sub_199DF705C();
  if (v1)
  {
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_199DF9F8C();
    sub_199DFA6CC();
    v14 = MEMORY[0x1E6969080];
    *&v13 = v9;
    *(&v13 + 1) = v10;
    sub_199B429C0(&v13, v12);
    sub_199AA7630(v9, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_199B75480(v12, v15, isUniquelyReferenced_nonNull_native);

    sub_199A9EF34(v9, v10);
    sub_199B4BC9C(v15);
    return v3;
  }
}

unint64_t sub_199B75F0C()
{
  result = qword_1EAF71A28;
  if (!qword_1EAF71A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71A28);
  }

  return result;
}

unint64_t sub_199B75F60(uint64_t a1)
{
  v2 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
  sub_199DF707C();
  swift_allocObject();
  sub_199DF706C();
  sub_199DF704C();
  sub_199DF7E9C();
  sub_199B7772C(&unk_1EAF71480, MEMORY[0x1E69B26E8]);
  v3 = sub_199DF705C();
  if (v1)
  {
  }

  else
  {
    v6 = v3;
    v7 = v4;
    sub_199DF9F8C();
    sub_199DFA6CC();
    v11 = MEMORY[0x1E6969080];
    *&v10 = v6;
    *(&v10 + 1) = v7;
    sub_199B429C0(&v10, v9);
    sub_199AA7630(v6, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_199B75480(v9, v12, isUniquelyReferenced_nonNull_native);

    sub_199A9EF34(v6, v7);
    sub_199B4BC9C(v12);
    return v2;
  }
}

id sub_199B760E0(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v126 = a4;
  v134 = a2;
  v145 = *MEMORY[0x1E69E9840];
  v131 = sub_199DF71BC();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v11 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_199DF7ECC();
  v133 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v127 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v123 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E18, &qword_199E42970);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v125 = &v123 - v16;
  v17 = sub_199DF7E9C();
  v129 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v123 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v123 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E20, &qword_199E42978);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v123 - v29;
  v136 = [objc_allocWithZone(CNPRSMutablePosterConfiguration) init];
  v135 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
  if (a1)
  {
    if (a1 != 1)
    {
      v41 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
      [v41 setOptions_];
      if (a5)
      {
        v42 = objc_allocWithZone(MEMORY[0x1E69C0808]);
        v43 = sub_199DF9F5C();
        v44 = [v42 initWithAssetUUID_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_199E37DF0;
        *(v45 + 32) = v44;
        sub_199A7A02C(0, &qword_1EAF75E28, 0x1E69C0808);
        v46 = v44;
        v47 = sub_199DFA0BC();

        [v41 setMedia_];
      }

      v48 = [v41 userInfo];
      if (v48)
      {
        v49 = v48;
        v50 = sub_199DF9E9C();
      }

      else
      {
        v50 = sub_199B4B130(MEMORY[0x1E69E7CC0]);
      }

      *&v138 = 0xD000000000000025;
      *(&v138 + 1) = 0x8000000199E49EC0;
      sub_199DFA6CC();
      if (a6 == 2 || (a6 & 1) == 0)
      {
        v61 = [objc_opt_self() unifiedMeContactMonitor];
        v60 = [v61 isMeContact_];
      }

      else
      {
        v60 = 1;
      }

      *(&v139 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v138) = v60;
      sub_199B429C0(&v138, &v144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v50;
      sub_199B75480(&v144, v142, isUniquelyReferenced_nonNull_native);
      sub_199B4BC9C(v142);
      v63 = sub_199DF9E8C();

      [v41 setUserInfo_];

      v40 = v136;
      v64 = [v136 assetDirectory];
      sub_199DF719C();

      v65 = sub_199DF718C();
      (*(v130 + 8))(v11, v131);
      *v142 = 0;
      LODWORD(v63) = [v41 saveToURL:v65 error:v142];

      if (v63)
      {
        v66 = *v142;
      }

      else
      {
        v67 = *v142;
        v68 = sub_199DF717C();

        swift_willThrow();
        sub_199DFA31C();
        v69 = CNUILogPosters();
        sub_199DF7FEC();
      }

      goto LABEL_59;
    }

    v131 = v17;
    v31 = objc_opt_self();
    v32 = [v31 currentEnvironment];
    v33 = [v32 featureFlags];

    LODWORD(v32) = [v33 isFeatureEnabled_];
    swift_unknownObjectRelease();
    if (v32)
    {
      v34 = [v31 currentEnvironment];
      v35 = [v34 featureFlags];

      LODWORD(v34) = [v35 isFeatureEnabled_];
      swift_unknownObjectRelease();
      if (v34)
      {
        v36 = v134;
        sub_199DF7EFC();
        v37 = [objc_opt_self() stringFromContact:v36 style:1002];
        if (v37)
        {
          v38 = v37;
          sub_199DF9F8C();
        }

        v40 = v136;
        v104 = sub_199DF7F0C();
        v105 = *(v104 + 16);
        if (!v105)
        {

          v108 = sub_199DF7F1C();
          v112 = v125;
          (*(*(v108 - 8) + 56))(v125, 1, 1, v108);
LABEL_55:
          sub_199DF7F1C();
          result = (*(*(v108 - 8) + 48))(v112, 1, v108);
          if (result != 1)
          {
            v113 = v124;
            sub_199DF7E6C();
            sub_199B75F60(v113);
            (*(v129 + 8))(v113, v131);

            goto LABEL_59;
          }

LABEL_71:
          __break(1u);
          return result;
        }

        v106 = sub_199B7C158(v105);
        if ((v106 & 0x8000000000000000) == 0)
        {
          v107 = v106;
          if (v106 < *(v104 + 16))
          {
            v108 = sub_199DF7F1C();
            v109 = *(v108 - 8);
            v110 = v109;
            v111 = v104 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v109 + 72) * v107;
            v112 = v125;
            (*(v109 + 16))(v125, v111, v108);

            (*(v110 + 56))(v112, 0, 1, v108);
            goto LABEL_55;
          }

LABEL_68:
          __break(1u);
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }
    }

    if (a3)
    {
      v51 = [a3 colorWithAlphaComponent_];
      v52 = v128;
      sub_199DF7EAC();
      v40 = v136;
      v53 = v132;
      v54 = v133;
      goto LABEL_45;
    }

    v70 = sub_199DF7EDC();
    v71 = *(v70 + 16);
    v40 = v136;
    v53 = v132;
    v54 = v133;
    if (!v71)
    {

      (*(v54 + 56))(v27, 1, 1, v53);
LABEL_43:
      result = (*(v54 + 48))(v27, 1, v53);
      if (result != 1)
      {
        v52 = v128;
        (*(v54 + 32))();
LABEL_45:
        v97 = v134;
        v98 = sub_199DF7EFC();
        v99 = [objc_opt_self() stringFromContact:v97 style:1002];
        if (v99)
        {
          v100 = v99;
          sub_199DF9F8C();

          if (v98)
          {
            v101 = v133;
            (*(v133 + 16))(v127, v52, v53);
            sub_199DF7E5C();
            sub_199B75F60(v22);
            v102 = (v129 + 8);

            (*v102)(v22, v131);
            (*(v101 + 8))(v52, v53);
            goto LABEL_59;
          }

          v54 = v133;
        }

        (*(v54 + 16))(v127, v52, v53);
        sub_199DF7E5C();
        sub_199B75F60(v19);
        v103 = (v129 + 8);

        (*v103)(v19, v131);
        (*(v54 + 8))(v52, v53);
        goto LABEL_59;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v72 = sub_199B7C158(v71);
    if ((v72 & 0x8000000000000000) == 0)
    {
      if (v72 < *(v70 + 16))
      {
        (*(v54 + 16))(v27, v70 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v72, v53);

        (*(v54 + 56))(v27, 0, 1, v53);
        goto LABEL_43;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a3)
  {
    v39 = [a3 colorWithAlphaComponent_];
    v40 = v136;
    goto LABEL_34;
  }

  v55 = sub_199DF7EDC();
  v56 = *(v55 + 16);
  v40 = v136;
  if (!v56)
  {

    v59 = v133;
    v58 = v132;
    (*(v133 + 56))(v30, 1, 1, v132);
    goto LABEL_32;
  }

  v57 = sub_199B7C158(v56);
  v58 = v132;
  v59 = v133;
  if ((v57 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v57 >= *(v55 + 16))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  (*(v133 + 16))(v30, v55 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v57, v132);

  (*(v59 + 56))(v30, 0, 1, v58);
LABEL_32:
  result = (*(v59 + 48))(v30, 1, v58);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_70;
  }

  v39 = sub_199DF7EBC();
  (*(v59 + 8))(v30, v58);
LABEL_34:
  v74 = [v134 memojiMetadata];
  if (v74)
  {
    v75 = v74;
    v76 = sub_199DF71FC();
    v78 = v77;

    v79 = objc_opt_self();
    v80 = sub_199DF71DC();
    v81 = [v79 memojiMetadataFromData_];

    if (v81)
    {
      v82 = [v81 avatarRecordData];
      if (v82)
      {
        v133 = v78;
        v134 = v39;
        v83 = v82;
        v84 = sub_199DF71FC();
        v86 = v85;

        v87 = [objc_opt_self() imageDataFromMetadata_];
        v88 = sub_199DF71FC();
        v90 = v89;

        v91 = [v81 poseConfigurationData];
        if (v91)
        {
          v92 = v91;
          v132 = sub_199DF71FC();
          v94 = v93;
        }

        else
        {
          v132 = 0;
          v94 = 0xF000000000000000;
        }

        v114 = [v81 poseHasBody];
        sub_199AA7630(v88, v90);
        v115 = v134;
        sub_199AA7630(v84, v86);
        v116 = UIColor.avatarColorDescription.getter();

        sub_199A9EF20(0, 0xF000000000000000);
        sub_199A9EF20(0, 0xF000000000000000);
        sub_199A9EF20(0, 0xF000000000000000);
        *v142 = v116;
        *&v142[8] = v84;
        *&v142[16] = v86;
        *&v142[24] = v132;
        *&v142[32] = v94;
        v142[40] = v114;
        *&v143 = v88;
        *(&v143 + 1) = v90;
        v138 = *v142;
        v139 = *&v142[16];
        v140 = *&v142[32];
        v141 = v143;
        sub_199B75DA4(&v138);

        sub_199A9EF34(v76, v133);

        sub_199A9EF34(v84, v86);
        sub_199A9EF34(v88, v90);
        sub_199B60960(v142);
        v40 = v136;
        goto LABEL_59;
      }
    }

    sub_199A9EF34(v76, v78);
  }

  v95 = v39;
  v96 = UIColor.avatarColorDescription.getter();

  sub_199A9EF20(0, 0xF000000000000000);
  sub_199A9EF20(0, 0xF000000000000000);
  sub_199A9EF20(0, 0xF000000000000000);
  *v142 = v96;
  *&v142[8] = xmmword_199E3FAE0;
  *&v142[24] = xmmword_199E3FAE0;
  v142[40] = 0;
  v143 = xmmword_199E3FAE0;
  v138 = *v142;
  v139 = *&v142[16];
  v140 = *&v142[32];
  v141 = xmmword_199E3FAE0;
  sub_199B75DA4(&v138);

  sub_199B60960(v142);
LABEL_59:
  v117 = sub_199DF9E8C();

  *v142 = 0;
  v118 = [v40 storeUserInfo:v117 error:v142];

  if (v118)
  {
    v119 = *v142;
  }

  else
  {
    v120 = *v142;
    v121 = sub_199DF717C();

    swift_willThrow();
    sub_199DFA31C();
    v122 = CNUILogPosters();
    sub_199DF7FEC();
  }

  return v40;
}

id sub_199B77548(void *a1, char a2)
{
  v2 = objc_opt_self();
  v3 = sub_199DF9F5C();

  v4 = [v2 finalizedConfiguration:a1 forExtensionIdentifier:v3];

  if (v4)
  {
    return v4;
  }

  return a1;
}

id sub_199B77644(void *a1)
{
  v2 = [a1 memojiMetadata];
  if (v2)
  {
    v3 = v2;
    v4 = sub_199DF71FC();
    v6 = v5;

    sub_199A9EF34(v4, v6);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_199B760E0(v7, a1, 0, 0, 0, 2);
  v9 = [a1 memojiMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = sub_199DF71FC();
    v13 = v12;

    sub_199A9EF34(v11, v13);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_199B77548(v8, v14);

  return v15;
}

uint64_t sub_199B7772C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_199DF7E9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_199B77770(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_199B77CB4()
{
  v1 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B77D68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B77DC0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNPosterPreviewViewWrapper.__allocating_init(with:contact:editingState:delegate:windowScene:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E70, &qword_199E42990);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = objc_allocWithZone(v6);
  swift_unknownObjectRetain();
  v19 = a1;
  v20 = a2;
  sub_199B780A0(v19, v20, a3, v17);
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v12 + 44)];
  *v22 = KeyPath;
  v22[1] = a5;
  sub_199AAD408(v17, v14, &qword_1EAF75E70, &qword_199E42990);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E78, &qword_199E429C0));
  v24 = a5;
  *&v18[OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v27.receiver = v18;
  v27.super_class = v6;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  swift_unknownObjectRelease();

  sub_199A79A04(v17, &qword_1EAF75E70, &qword_199E42990);
  return v25;
}

id CNPosterPreviewViewWrapper.init(with:contact:editingState:delegate:windowScene:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_199B7C894(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v8;
}

void sub_199B780A0(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  swift_unknownObjectWeakInit();
  sub_199DF983C();
  v9 = v63[1];
  *(a5 + 24) = v63[0];
  *(a5 + 32) = v9;
  sub_199DF983C();
  v10 = v63[1];
  *(a5 + 40) = v63[0];
  *(a5 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0, &unk_199E3C3C0);
  sub_199DF983C();
  v12 = v63[0];
  v11 = v63[1];
  *(a5 + 56) = v63[0];
  *(a5 + 64) = v11;
  sub_199DF983C();
  *(a5 + 72) = *v63;
  *(a5 + 120) = 0;
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748, &qword_199E3EE20);
  sub_199DF983C();
  *(a5 + 128) = *v63;
  v13 = type metadata accessor for CNPosterPreviewView(0);
  v14 = *(v13 + 64);
  *(a5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + *(v13 + 68);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *a5 = a2;
  *(a5 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v16 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID + 8];
  *(a5 + 88) = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *(a5 + 96) = v16;
  v17 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor];
  v18 = a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP];
  *(a5 + 104) = v17;
  *(a5 + 112) = v18;
  v19 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText + 8];
  if (!v19)
  {
    v26 = v17;
    sub_199DF81AC();
    goto LABEL_22;
  }

  v62 = v12;
  v20 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = v17;
    v23 = a2;
    sub_199DF81AC();
    if (a3 != 1)
    {
      sub_199DF81AC();
LABEL_12:
      [v23 mutableCopy];
      sub_199DFA66C();
      swift_unknownObjectRelease();
      sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
      swift_dynamicCast();
      v29 = [objc_opt_self() nameOrderForContact_];

      sub_199DF81AC();
      v31 = sub_199B2F7B0(1, v20, v19, v30);
      v33 = v32;
      v35 = v34;
      v37 = v36;

      MEMORY[0x19A8F7DB0](v31, v33, v35, v37);

      v38 = sub_199DF9F5C();

      v39 = &selRef_setGivenName_;
      if (v29 != 1)
      {
        v39 = &selRef_setFamilyName_;
      }

      [v64 *v39];

      if (sub_199DF9FFC() < 2)
      {

        *(a5 + 120) = v64;
      }

      else
      {
        v40 = sub_199DFA01C();
        v41 = sub_199B788F4(v40, v20, v19);
        v43 = v42;
        v45 = v44;
        v47 = v46;

        MEMORY[0x19A8F7DB0](v41, v43, v45, v47);

        v48 = sub_199DF9F5C();

        if (v29 == 1)
        {
          [v64 setFamilyName_];
        }

        else
        {
          [v64 setGivenName_];
        }

        *(a5 + 120) = v64;
      }

      goto LABEL_21;
    }

    sub_199DF81AC();
    v24 = [v23 imageType];
    if (v24)
    {
      v25 = v24;
      sub_199DF9F8C();
    }

    v28 = sub_199B7C744();

    if (v28 == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v27 = v17;
    sub_199DF81AC();
  }

LABEL_21:
  v12 = v62;
LABEL_22:
  v49 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration];
  if (v49)
  {
    v50 = v49;

    swift_unknownObjectRelease();

    *(a5 + 56) = v49;
LABEL_24:
    *(a5 + 64) = 0;
    return;
  }

  v51 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData + 8];
  if (v51 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v52 = v12;
  v53 = *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData];
  v54 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    if (v54 != 2)
    {
LABEL_34:
      swift_unknownObjectRelease();
      sub_199A9EF20(v53, v51);

      return;
    }

    if (*(v53 + 16) != *(v53 + 24))
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (v54)
  {
    if (v53 != v53 >> 32)
    {
LABEL_36:
      sub_199AFF43C(*&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData], *&a1[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData + 8]);
      goto LABEL_37;
    }

LABEL_26:

    swift_unknownObjectRelease();
    return;
  }

  if ((v51 & 0xFF000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_37:
  v55 = objc_opt_self();
  v56 = sub_199DF71DC();
  v63[0] = 0;
  v57 = [v55 unarchiveCNConfigurationFromData:v56 error:v63];

  v58 = v63[0];
  if (v57)
  {
    sub_199A9EF20(v53, v51);

    swift_unknownObjectRelease();

    *(a5 + 56) = v57;
    goto LABEL_24;
  }

  v59 = v58;
  v60 = sub_199DF717C();

  swift_willThrow();
  sub_199DFA31C();
  v61 = CNUILogPosters();
  sub_199DF7FEC();
  sub_199A9EF20(v53, v51);

  swift_unknownObjectRelease();
}

id CNPosterPreviewViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_199B788AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_199B788F4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v4 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    a3 = a2;
    v5 = 7;
    if (((v3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    a2 = v5 | (v4 << 16);
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, v3);
}

void sub_199B78940()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v6 >= v3)
  {
    *&v7 = v3;
  }

  else
  {
    *&v7 = v6;
  }

  qword_1EAF75E38 = v7;
}

void sub_199B789E0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v3 > v6)
  {
    *&v7 = v3;
  }

  else
  {
    *&v7 = v6;
  }

  qword_1EAF75E40 = v7;
}

float64x2_t sub_199B78A80()
{
  if (qword_1EAF71F48 != -1)
  {
    swift_once();
  }

  *&v0.f64[0] = qword_1EAF75E38;
  if (qword_1EAF71F50 != -1)
  {
    v2 = qword_1EAF75E38;
    swift_once();
    *&v0.f64[0] = v2;
  }

  *&v0.f64[1] = qword_1EAF75E40;
  result = vmulq_f64(v0, vdupq_n_s64(0x3FE199999999999AuLL));
  xmmword_1EAF75E48 = result;
  return result;
}

uint64_t sub_199B78B38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for CNPosterPreviewView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v54 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EF0, &qword_199E42AE0);
  v66 = *(v62 - 8);
  v60 = v66[8];
  MEMORY[0x1EEE9AC00](v62);
  v61 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = v54 - v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EF8, &qword_199E42AE8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = v54 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F00, &qword_199E42AF0);
  MEMORY[0x1EEE9AC00](v57);
  v13 = v54 - v12;
  *v13 = sub_199DF8D4C();
  *(v13 + 1) = 0x4028000000000000;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F08, &qword_199E42AF8);
  sub_199DF913C();
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F10, &qword_199E42B00);
  sub_199AA0B90(&qword_1EAF75F18, &qword_1EAF75F10, &qword_199E42B00, MEMORY[0x1E69817F8]);
  sub_199DF854C();
  v14 = *(a1 + 32);
  LOBYTE(v71) = *(a1 + 24);
  v72 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF986C();
  v54[1] = v69;
  v55 = v70;
  v65 = a1;
  v15 = v9;
  v56 = v9;
  sub_199B7CFBC(a1, v9);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v54[2] = v6;
  v17 = swift_allocObject();
  sub_199B7DD94(v15, v17 + v16, type metadata accessor for CNPosterPreviewView);
  v18 = v59;
  sub_199B7CFBC(a1, v59);
  v19 = swift_allocObject();
  sub_199B7DD94(v18, v19 + v16, type metadata accessor for CNPosterPreviewView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F20, &qword_199E42B08);
  v59 = MEMORY[0x1E6981870];
  sub_199AA0B90(&qword_1EAF75F28, &qword_1EAF75F00, &qword_199E42AF0, MEMORY[0x1E6981870]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F30, &qword_199E42B10);
  v21 = sub_199B7D09C();
  *&v69 = v20;
  *(&v69 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v58;
  sub_199DF94FC();

  sub_199A79A04(v13, &qword_1EAF75F00, &qword_199E42AF0);
  v23 = v65;
  v24 = v56;
  sub_199B7CFBC(v65, v56);
  v25 = swift_allocObject();
  sub_199B7DD94(v24, v25 + v16, type metadata accessor for CNPosterPreviewView);
  v26 = (v22 + *(v64 + 36));
  *v26 = sub_199B7D180;
  v26[1] = v25;
  v26[2] = 0;
  v26[3] = 0;
  v27 = v23;
  v69 = *(v23 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
  sub_199DF984C();
  v28 = v71;
  *&v69 = v71;
  sub_199B7CFBC(v27, v24);
  v29 = swift_allocObject();
  sub_199B7DD94(v24, v29 + v16, type metadata accessor for CNPosterPreviewView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0, &unk_199E3C3C0);
  sub_199B7D218();
  sub_199B58098();
  sub_199DF962C();

  sub_199A79A04(v22, &qword_1EAF75EF8, &qword_199E42AE8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F50, &qword_199E42B20);
  v58 = *(v64 - 8);
  v30 = v58;
  v31 = *(v58 + 8);
  MEMORY[0x1EEE9AC00](v64);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F58, &qword_199E42B28);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v54 - v33;
  *v34 = sub_199DF8D4C();
  *(v34 + 1) = 0x4028000000000000;
  v34[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F60, &qword_199E42B30);
  sub_199B7A694(v65, &v34[*(v35 + 44)]);
  sub_199DF915C();
  sub_199AA0B90(&qword_1EAF75F68, &qword_1EAF75F58, &qword_199E42B28, v59);
  sub_199DF94AC();
  v36 = sub_199A79A04(v34, &qword_1EAF75F58, &qword_199E42B28);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v38 = v62;
  v39 = v54 - v61;
  v40 = v66[2];
  v41 = v40(v54 - v61, v67, v62, v37);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v43 = *(v30 + 2);
  v44 = v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43(v44, v44, v64, v42);
  v45 = v63;
  *v63 = 0;
  *(v45 + 8) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F70, &qword_199E42B38);
  (v40)(v45 + v46[12], v39, v38);
  v47 = v45 + v46[16];
  *v47 = 0;
  v47[8] = 1;
  v48 = v45 + v46[20];
  v49 = v64;
  (v43)(v48, v44, v64);
  v50 = *(v58 + 1);
  v51 = v49;
  v50(v44, v49);
  v52 = v66[1];
  v52(v67, v38);
  v50(v44, v51);
  return (v52)(v39, v38);
}

void sub_199B7942C(uint64_t a1)
{
  LOBYTE(v2) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF985C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
  sub_199DF984C();
  if (v2)
  {
  }

  LOBYTE(v2) = v2 != 0;
  sub_199DF985C();
  sub_199DF984C();
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong previewViewDidCreateWithPosterConfiguration_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void *sub_199B79554@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v18 = type metadata accessor for CNExistingWallpaperEditorView(0);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F30, &qword_199E42B10);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v17 - v5;
  v8 = *(v1 + 56);
  v7 = *(v1 + 64);
  *&v21 = v8;
  *(&v21 + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
  sub_199DF984C();
  v9 = v23;
  if (!v23)
  {
    v21 = *(v2 + 72);
    sub_199DF984C();
    v9 = v23;
    if (!v23)
    {
      sub_199DFA31C();
      v9 = CNUILogPosters();
      sub_199DF7FEC();
    }
  }

  v23 = v8;
  v24 = v7;
  sub_199DF986C();
  v10 = v21;
  v11 = v22;
  *&v21 = v8;
  *(&v21 + 1) = v7;
  sub_199DF984C();
  v12 = v23;
  if (v23 || (v21 = *(v2 + 72), result = sub_199DF984C(), (v12 = v23) != 0))
  {
    v14 = *v2;
    *&v4[*(v18 + 28)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318, &qword_199E371D0);
    swift_storeEnumTagMultiPayload();
    *v4 = v10;
    *(v4 + 2) = v11;
    *(v4 + 3) = v12;
    *(v4 + 4) = v14;
    v15 = v14;
    v16 = sub_199DF916C();
    sub_199B7DD94(v4, v6, type metadata accessor for CNExistingWallpaperEditorView);
    v6[*(v19 + 36)] = v16;
    sub_199B7D09C();
    sub_199DF967C();
    return sub_199A79A04(v6, &qword_1EAF75F30, &qword_199E42B10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_199B797F0(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterPreviewView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  sub_199B79A04();
  v10 = sub_199AC3DD4(*(a1 + *(v3 + 76)), *(a1 + *(v3 + 76) + 8));
  if (v10)
  {
    v11 = v10;
    v12 = sub_199DFA1BC();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_199B7CFBC(a1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_199DFA17C();
    v13 = v11;
    v14 = sub_199DFA16C();
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    *(v17 + 16) = v14;
    *(v17 + 24) = v18;
    sub_199B7DD94(v6, v17 + v15, type metadata accessor for CNPosterPreviewView);
    *(v17 + v16) = v13;
    sub_199AE5E60(0, 0, v9, &unk_199E42BC8, v17);
  }
}

void sub_199B79A04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E20, &qword_199E42978);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v97 - v3;
  v5 = type metadata accessor for CNPosterPreviewView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v97 - v12;
  v15 = sub_199AC3DD4(*(v1 + *(v14 + 76)), *(v1 + *(v14 + 76) + 8));
  if (v15)
  {
    v16 = v15;
    v106 = (&v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    aBlock = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
    sub_199DF984C();
    v17 = v112;
    if (v112)
    {
      v18 = objc_opt_self();
      v19 = *v0;
      sub_199B7CFBC(v1, v13);
      v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v21 = swift_allocObject();
      sub_199B7DD94(v13, v21 + v20, type metadata accessor for CNPosterPreviewView);
      v110 = sub_199B7DEC8;
      v111 = v21;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v108 = sub_199B77770;
      v109 = &block_descriptor_57;
      v22 = _Block_copy(&aBlock);
      v23 = v17;

      [v18 incomingCallSnapshotForConfiguration:v23 contact:v19 includingCallButtons:1 windowScene:v16 completionBlock:v22];

      _Block_release(v22);
      return;
    }

    if (qword_1EAF718E0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EAF718E8;
    if (*(v0 + 8) == 1)
    {
      v25 = [*v0 imageType];
      if (v25)
      {
        v26 = v25;
        sub_199DF9F8C();
      }

      v27 = sub_199B7C744();

      v28 = *(v1 + 120);
      if (!v28)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v27 = 1;
      v28 = *(v0 + 120);
      if (!v28)
      {
LABEL_12:
        v105 = *v1;
LABEL_13:
        v29 = *(v1 + 88);
        v30 = *(v1 + 104);
        v103 = *(v1 + 96);
        v104 = v29;
        LODWORD(v102) = *(v1 + 112);
        sub_199B7CFBC(v1, v10);
        v31 = v106;
        sub_199B7CFBC(v10, v106);
        v32 = (*(v6 + 80) + 16) & ~*(v6 + 80);
        v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
        v34 = swift_allocObject();
        v35 = v34 + v32;
        v36 = v34;
        sub_199B7DD94(v10, v35, type metadata accessor for CNPosterPreviewView);
        *(v36 + v33) = v16;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_199B7D764;
        *(v37 + 24) = v36;
        *(v37 + 32) = v24;
        *(v37 + 40) = v27;
        if (v27)
        {
          v38 = v28;
          v39 = v24;

          v40 = v16;
          v41 = v105;
          v42 = sub_199B760E0(v27, v105, v30, v104, v103, v102);
          v43 = sub_199B77548(v42, v27);
          sub_199B7AE78(v43, v31, v40);

          v44 = v31;
LABEL_38:
          sub_199B7D810(v44);
          return;
        }

        v45 = v30;
        v46 = objc_allocWithZone(CNPRSMutablePosterConfiguration);
        v47 = v28;
        v48 = v24;

        v49 = v16;
        v50 = [v46 init];
        v51 = v105;
        v52 = [v105 memojiMetadata];
        if (!v52)
        {

LABEL_37:
          v44 = v106;
          goto LABEL_38;
        }

        v102 = v48;
        v103 = v50;
        v104 = v49;
        v53 = v52;
        v54 = sub_199DF71FC();
        v56 = v55;

        v57 = objc_opt_self();
        v58 = sub_199DF71DC();
        v59 = [v57 memojiMetadataFromData_];

        if (v59)
        {
          v101 = v54;
          v60 = [v59 avatarRecordData];
          if (v60)
          {
            v61 = v60;
            v98 = sub_199DF71FC();
            v63 = v62;

            v99 = v56;
            v100 = v36;
            if (v45)
            {
              v64 = [v45 colorWithAlphaComponent_];
LABEL_30:
              v74 = objc_opt_self();
              v75 = [v74 mainScreen];
              [v75 bounds];
              v77 = v76;

              v78 = [v74 mainScreen];
              [v78 bounds];
              v80 = v79;

              if (v80 < v77)
              {
                v77 = v80;
              }

              v81 = [v74 mainScreen];
              [v81 bounds];
              v83 = v82;

              v84 = [v74 mainScreen];
              [v84 bounds];
              v86 = v85;

              if (v83 > v86)
              {
                v87 = v83;
              }

              else
              {
                v87 = v86;
              }

              v88 = v87 * 0.45;
              v97 = objc_opt_self();
              v89 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v90 = swift_allocObject();
              v90[2] = v89;
              v90[3] = sub_199B7D800;
              v91 = v103;
              v90[4] = v37;
              v90[5] = v91;
              v92 = v98;
              v90[6] = v64;
              v90[7] = v92;
              v90[8] = v63;
              v90[9] = v59;
              v110 = sub_199B7D86C;
              v111 = v90;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v108 = sub_199B6406C;
              v109 = &block_descriptor_17;
              v93 = _Block_copy(&aBlock);
              v94 = v59;

              v95 = v91;
              v96 = v64;
              sub_199AA7630(v92, v63);

              [v97 imageFromMetadata:v94 size:v93 completionHandler:{v77, v88}];

              _Block_release(v93);

              sub_199A9EF34(v92, v63);
              v65 = v101;
              v66 = v99;
              goto LABEL_36;
            }

            v67 = sub_199DF7EDC();
            v68 = *(v67 + 16);
            if (v68)
            {
              v69 = sub_199B7C158(v68);
              if ((v69 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else
              {
                v70 = v69;
                if (v69 < *(v67 + 16))
                {
                  v71 = sub_199DF7ECC();
                  v72 = *(v71 - 8);
                  (*(v72 + 16))(v4, v67 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v71);

                  (*(v72 + 56))(v4, 0, 1, v71);
                  goto LABEL_28;
                }
              }

              __break(1u);
              goto LABEL_42;
            }

            v71 = sub_199DF7ECC();
            (*(*(v71 - 8) + 56))(v4, 1, 1, v71);
LABEL_28:
            sub_199DF7ECC();
            v73 = *(v71 - 8);
            if ((*(v73 + 48))(v4, 1, v71) != 1)
            {
              v64 = sub_199DF7EBC();
              (*(v73 + 8))(v4, v71);
              goto LABEL_30;
            }

LABEL_42:
            sub_199B7D810(v106);
            __break(1u);
            return;
          }

          v65 = v101;
          v66 = v56;
        }

        else
        {

          v65 = v54;
          v66 = v56;
        }

LABEL_36:
        sub_199A9EF34(v65, v66);
        goto LABEL_37;
      }
    }

    v105 = v28;
    goto LABEL_13;
  }
}

void sub_199B7A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CNPosterPreviewView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  sub_199B79A04();
  v12 = sub_199AC3DD4(*(a3 + *(v5 + 76)), *(a3 + *(v5 + 76) + 8));
  if (v12)
  {
    v13 = v12;
    v14 = sub_199DFA1BC();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    sub_199B7CFBC(a3, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_199DFA17C();
    v15 = v13;
    v16 = sub_199DFA16C();
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    sub_199B7DD94(v8, v19 + v17, type metadata accessor for CNPosterPreviewView);
    *(v19 + v18) = v15;
    sub_199AE5E60(0, 0, v11, &unk_199E42BB8, v19);
  }
}

uint64_t sub_199B7A694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for CNPosterPreviewView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v5;
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F78, &qword_199E42B40);
  v8 = v7 - 8;
  v58 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v49 - v59;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F80, &qword_199E42B48);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  sub_199B7CFBC(a1, v6);
  v56 = *(v4 + 80);
  v15 = (v56 + 16) & ~v56;
  v54 = v15;
  v16 = swift_allocObject();
  v55 = type metadata accessor for CNPosterPreviewView;
  sub_199B7DD94(v6, v16 + v15, type metadata accessor for CNPosterPreviewView);
  v61 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F88, &qword_199E42B50);
  sub_199B7D3C8();
  sub_199DF989C();
  v18 = sub_199DF904C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  sub_199B7D4D8();
  sub_199AD576C();
  v52 = v10;
  sub_199DF944C();
  (*(v19 + 8))(v21, v18);
  (*(v12 + 8))(v14, v11);
  LOBYTE(v11) = sub_199B7AD30();
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = (v11 & 1) == 0;
  v24 = &v10[*(v8 + 44)];
  *v24 = KeyPath;
  v24[1] = sub_199B7D530;
  v24[2] = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75FB0, &unk_199E42B90);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v50 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v49 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8, &qword_199E3A3E0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v49 - v33;
  v35 = v17;
  v36 = v53;
  sub_199B7CFBC(v35, v53);
  v37 = v54;
  v38 = swift_allocObject();
  sub_199B7DD94(v36, v38 + v37, v55);
  sub_199DF989C();
  if (sub_199B7ADC4())
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  (*(v32 + 32))(v30, v34, v31);
  *&v30[*(v26 + 44)] = v39;
  v40 = v50;
  v41 = sub_199B7D5D4(v30, v50);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v49 - v59;
  v43 = v52;
  v44 = sub_199A99C0C(v52, &v49 - v59);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v49 - v51;
  sub_199AAD408(v40, &v49 - v51, &qword_1EAF75FB0, &unk_199E42B90);
  v46 = v60;
  sub_199A99C0C(v42, v60);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75FB8, &unk_199E42BA0);
  sub_199AAD408(v45, v46 + *(v47 + 48), &qword_1EAF75FB0, &unk_199E42B90);
  sub_199A79A04(v40, &qword_1EAF75FB0, &unk_199E42B90);
  sub_199A79A04(v43, &qword_1EAF75F78, &qword_199E42B40);
  sub_199A79A04(v45, &qword_1EAF75FB0, &unk_199E42B90);
  return sub_199A79A04(v42, &qword_1EAF75F78, &qword_199E42B40);
}

uint64_t sub_199B7AD30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
  sub_199DF984C();
  if (v1)
  {

    return 1;
  }

  else
  {
    sub_199DF984C();
    return 0;
  }
}

uint64_t sub_199B7ADC4()
{
  if (*(v0 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
    sub_199DF984C();
    if (v3)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
      sub_199DF984C();
      v1 = v3 ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_199B7AE78(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for CNPosterPreviewView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  aBlock = *(a2 + 9);
  v20 = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
  sub_199DF985C();
  v10 = objc_opt_self();
  v11 = *a2;
  sub_199B7CFBC(a2, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_199B7DD94(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CNPosterPreviewView);
  v18 = sub_199B7DA44;
  v19 = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v16 = sub_199B77770;
  v17 = &block_descriptor_63;
  v14 = _Block_copy(&aBlock);

  [v10 incomingCallSnapshotForConfiguration:v9 contact:v11 includingCallButtons:1 windowScene:a3 completionBlock:v14];
  _Block_release(v14);
}

uint64_t sub_199B7B06C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940, &qword_199E41350);
  return sub_199DF985C();
}

uint64_t sub_199B7B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_199DF886C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = sub_199DFA17C();
  v5[18] = sub_199DFA16C();
  v8 = sub_199DFA12C();
  v5[19] = v8;
  v5[20] = v7;

  return MEMORY[0x1EEE6DFA0](sub_199B7B1C8, v8, v7);
}

uint64_t sub_199B7B1C8()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[11];
  type metadata accessor for CNPosterOnboardingSettingsAnimationFactory();
  swift_initStaticObject();
  v6 = *v5;
  type metadata accessor for CNPosterPreviewView(0);
  sub_199AC3B48(v1);
  (*(v3 + 104))(v2, *MEMORY[0x1E697E7D8], v4);
  v7 = sub_199DF885C();
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v1, v4);
  v0[21] = sub_199DFA16C();
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_199B7B344;
  v10 = v0[12];

  return sub_199AA3D98((v0 + 2), v6, v7 & 1, v10, 0);
}

uint64_t sub_199B7B344()
{
  v1 = *v0;

  *(v1 + 56) = *(v1 + 24);
  sub_199A79A04(v1 + 56, &qword_1EAF72750, &qword_199E37E50);
  *(v1 + 64) = *(v1 + 32);
  sub_199A79A04(v1 + 64, &qword_1EAF72750, &qword_199E37E50);
  *(v1 + 72) = *(v1 + 40);
  sub_199A79A04(v1 + 72, &qword_1EAF72750, &qword_199E37E50);
  *(v1 + 80) = *(v1 + 48);
  sub_199A79A04(v1 + 80, &qword_1EAF72750, &qword_199E37E50);
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B7B560, v3, v2);
}

uint64_t sub_199B7B560()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_199B7B5C4, v1, v2);
}

uint64_t sub_199B7B5C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_199B7B638()
{
  if (*(v0 + 8) != 1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18), sub_199DF984C(), v3) && (v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620), sub_199DF984C(), (v3 & 1) != 0))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75F40, &qword_199E42B18);
      sub_199DF984C();
      [v2 previewViewDidFinishWithPosterConfiguration_];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_199DF984C();
    if (v3)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
      return sub_199DF985C();
    }

    else
    {
      return sub_199DF984C();
    }
  }

  return result;
}

void sub_199B7B7C8(uint64_t a2@<X8>)
{
  v3 = sub_199DF8CFC();
  v19 = 1;
  sub_199B7B950(v16);
  v29 = v16[9];
  v30 = v16[10];
  v31[0] = v17[0];
  *(v31 + 9) = *(v17 + 9);
  v26 = v16[6];
  v27 = v16[7];
  v28 = v16[8];
  v22 = v16[2];
  v23 = v16[3];
  v24 = v16[4];
  v25 = v16[5];
  v20 = v16[0];
  v21 = v16[1];
  v4 = sub_199DF918C();
  sub_199DF84FC();
  *&v18[151] = v29;
  *&v18[167] = v30;
  *&v18[183] = v31[0];
  *&v18[199] = v31[1];
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[119] = v27;
  *&v18[135] = v28;
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[7] = v20;
  v5 = *&v18[176];
  *(a2 + 177) = *&v18[160];
  *(a2 + 193) = v5;
  *(a2 + 209) = *&v18[192];
  v6 = *&v18[112];
  *(a2 + 113) = *&v18[96];
  *(a2 + 129) = v6;
  v7 = *&v18[144];
  *(a2 + 145) = *&v18[128];
  *(a2 + 161) = v7;
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  *(a2 + 65) = v8;
  v9 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v9;
  v10 = *&v18[16];
  *(a2 + 17) = *v18;
  v11 = v19;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 224) = *&v18[207];
  *(a2 + 33) = v10;
  *(a2 + 232) = v4;
  *(a2 + 240) = v12;
  *(a2 + 248) = v13;
  *(a2 + 256) = v14;
  *(a2 + 264) = v15;
  *(a2 + 272) = 0;
}

void sub_199B7B950(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940, &qword_199E41350);
  sub_199DF986C();
  if (qword_1EAF71F58 != -1)
  {
    swift_once();
  }

  sub_199DF9B5C();
  sub_199DF863C();
  *&v12[6] = v13;
  *&v12[22] = v14;
  *&v12[38] = v15;
  v2 = sub_199DF9B8C();
  sub_199DF984C();
  v3 = sub_199DF919C();
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 bounds];

  v6 = [v4 mainScreen];
  [v6 bounds];

  sub_199DF84FC();
  *a1 = v13;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v14;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 136) = *(&v15 + 1);
  *(a1 + 144) = v2;
  *(a1 + 122) = *&v12[32];
  *(a1 + 106) = *&v12[16];
  *(a1 + 90) = *v12;
  *(a1 + 152) = v11;
  *(a1 + 160) = v3;
  *(a1 + 168) = v7;
  *(a1 + 176) = v8;
  *(a1 + 184) = v9;
  *(a1 + 192) = v10;
  *(a1 + 200) = 0;
}

__n128 sub_199B7BB68@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B7ADC4();
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v30 = v6;
  *(&v30 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  v13 = v12;
  sub_199DF930C();
  v14 = sub_199DF939C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_199ACE3E8(v9, v11, v13 & 1);

  sub_199DF9B5C();
  sub_199DF863C();
  v40 = v18 & 1;
  sub_199DF9B5C();
  sub_199DF897C();
  v21 = v38;
  *(a1 + 32) = v37;
  *(a1 + 48) = v21;
  result = v39;
  v23 = v34;
  v24 = v35;
  v25 = v32;
  *(a1 + 128) = v33;
  *(a1 + 144) = v23;
  v26 = v36;
  *(a1 + 160) = v24;
  *(a1 + 176) = v26;
  v27 = v30;
  v28 = v31;
  *(a1 + 64) = result;
  *(a1 + 80) = v27;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 96) = v28;
  *(a1 + 112) = v25;
  return result;
}

void *sub_199B7BDE0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result previewViewDidSelectUseDifferentPoster];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_199B7BE38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v25[2] = v6;
  v25[3] = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_199DF91EC();
  v13 = sub_199DF939C();
  v15 = v14;
  v17 = v16;

  sub_199ACE3E8(v9, v11, v6 & 1);

  sub_199DF925C();
  v18 = sub_199DF932C();
  v20 = v19;
  LOBYTE(v6) = v21;
  v23 = v22;
  sub_199ACE3E8(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_199B7C018@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_199DF8D4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EE0, &qword_199E42AD0);
  sub_199B78B38(v2, (a2 + *(v4 + 44)));
  v5 = sub_199DF918C();
  sub_199DF84FC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75EE8, &qword_199E42AD8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_199B7C0EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_199DF8BFC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_199B7C158(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x19A8FA1C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x19A8FA1C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_199B7C1E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for CNPosterPreviewViewConfiguration();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = 0;
  v14 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v14 = a4;
  v14[1] = a5;
  v15 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v15 = a1;
  v15[1] = a2;
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = a3;
  v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = a6;
  v16 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v16 = 0;
  v16[1] = 0;
  v19.receiver = v13;
  v19.super_class = v12;
  sub_199DF81AC();
  sub_199DF81AC();
  v17 = a3;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_199B7C2D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for CNPosterPreviewViewConfiguration();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  *&v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = 0;
  v18 = &v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v18 = a4;
  v18[1] = a5;
  v19 = &v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v19 = a1;
  v19[1] = a2;
  *&v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = a3;
  v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = a6;
  v20 = &v17[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v20 = a7;
  v20[1] = a8;
  v23.receiver = v17;
  v23.super_class = v16;
  sub_199DF81AC();
  sub_199DF81AC();
  v21 = a3;
  sub_199DF81AC();
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_199B7C3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CNPosterPreviewViewConfiguration();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData] = xmmword_199E3FAE0;
  swift_unknownObjectRetain();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = 0;
  }

  *&v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = v7;
  v8 = &v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v8 = a2;
  v8[1] = a3;
  v9 = &v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v9 = 0;
  v9[1] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = 0;
  v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = 0;
  v10 = &v6[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v10 = 0;
  v10[1] = 0;
  v12.receiver = v6;
  v12.super_class = v5;
  sub_199DF81AC();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_199B7C4EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v9 = sub_199DF71DC();
  v28[0] = 0;
  v10 = [v8 unarchiveCNConfigurationFromData:v9 error:v28];

  v11 = v28[0];
  if (v10)
  {
    v12 = type metadata accessor for CNPosterPreviewViewConfiguration();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData];
    *v14 = a1;
    v14[1] = a2;
    v15 = v10;
    v16 = v11;
    v17 = v15;
  }

  else
  {
    v18 = v28[0];
    v19 = sub_199DF717C();

    swift_willThrow();
    sub_199DFA31C();
    v20 = CNUILogPosters();
    sub_199DF7FEC();

    v12 = type metadata accessor for CNPosterPreviewViewConfiguration();
    v13 = objc_allocWithZone(v12);
    v10 = 0;
    v21 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterArchiveData];
    *v21 = a1;
    v21[1] = a2;
  }

  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_posterConfiguration] = v10;
  v22 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_displayName];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_photoAssetID];
  *v23 = 0;
  v23[1] = 0;
  *&v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_backgroundColor] = 0;
  v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_isEditingSNaP] = 0;
  v24 = &v13[OBJC_IVAR____TtC10ContactsUI32CNPosterPreviewViewConfiguration_monogramText];
  *v24 = 0;
  v24[1] = 0;
  sub_199AA7630(a1, a2);
  type metadata accessor for CNPosterPreviewViewConfiguration();
  v27.receiver = v13;
  v27.super_class = v12;
  sub_199DF81AC();
  v25 = objc_msgSendSuper2(&v27, sel_init);

  swift_unknownObjectRelease();
  return v25;
}

uint64_t sub_199B7C744()
{
  v1 = [*v0 imageType];
  if (!v1)
  {
    sub_199DF9F8C();
    goto LABEL_15;
  }

  v2 = v1;
  v3 = sub_199DF9F8C();
  v5 = v4;

  v6 = sub_199DF9F8C();
  if (!v5)
  {
LABEL_15:

    sub_199DF9F8C();

    return 1;
  }

  if (v6 == v3 && v5 == v7)
  {

    goto LABEL_18;
  }

  v9 = sub_199DFA99C();

  if (v9)
  {
LABEL_18:

    return 2;
  }

  if (sub_199DF9F8C() == v3 && v5 == v10)
  {

    return 0;
  }

  v12 = sub_199DFA99C();

  result = 0;
  if ((v12 & 1) == 0)
  {
    return 1;
  }

  return result;
}

id sub_199B7C894(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E70, &qword_199E42990);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  swift_unknownObjectRetain();
  sub_199B780A0(a1, a2, a3, v17);
  KeyPath = swift_getKeyPath();
  v19 = &v17[*(v12 + 44)];
  *v19 = KeyPath;
  v19[1] = a5;
  sub_199AAD408(v17, v14, &qword_1EAF75E70, &qword_199E42990);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75E78, &qword_199E429C0));
  v21 = a5;
  *&v6[OBJC_IVAR____TtC10ContactsUI26CNPosterPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v22 = type metadata accessor for CNPosterPreviewViewWrapper();
  v25.receiver = v6;
  v25.super_class = v22;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  sub_199A79A04(v17, &qword_1EAF75E70, &qword_199E42990);
  return v23;
}

uint64_t type metadata accessor for CNPosterPreviewView(uint64_t a1)
{
  result = qword_1EAF75EA8;
  if (!qword_1EAF75EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B7CC2C(uint64_t a1)
{
  sub_199A7A02C(319, &qword_1ED615BF0, 0x1E695CD58);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CNMeCardSharingSettingsEditingState(319);
    if (v2 <= 0x3F)
    {
      sub_199B7CE8C(319, &qword_1EAF711C0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_199B7CF34(319, &qword_1EAF75EB8, &unk_1EAF740A0, &unk_199E3C3C0, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_199B7CE8C(319, &qword_1EAF75EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_199B7CEDC(319, &qword_1EAF75EC8, &qword_1EAF71C10, 0x1E69DC888);
            if (v6 <= 0x3F)
            {
              sub_199B7CEDC(319, &qword_1EAF75ED0, &qword_1ED615BF0, 0x1E695CD58);
              if (v7 <= 0x3F)
              {
                sub_199B7CF34(319, &qword_1EAF75ED8, &qword_1EAF72748, &qword_199E3EE20, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_199B2A460(319);
                  if (v9 <= 0x3F)
                  {
                    sub_199B7CF34(319, &qword_1EAF713E0, &qword_1EAF72E80, &unk_199E398B0, MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
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

void sub_199B7CE8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_199B7CEDC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_199A7A02C(255, a3, a4);
    v5 = sub_199DFA63C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_199B7CF34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_199B7CFBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterPreviewView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_199B7D09C()
{
  result = qword_1EAF75F38;
  if (!qword_1EAF75F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F30, &qword_199E42B10);
    sub_199B7D128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F38);
  }

  return result;
}

unint64_t sub_199B7D128()
{
  result = qword_1EAF740B8;
  if (!qword_1EAF740B8)
  {
    type metadata accessor for CNExistingWallpaperEditorView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF740B8);
  }

  return result;
}

void sub_199B7D198(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CNPosterPreviewView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_199B7A480(a1, a2, v6);
}

unint64_t sub_199B7D218()
{
  result = qword_1EAF75F48;
  if (!qword_1EAF75F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75EF8, &qword_199E42AE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F00, &qword_199E42AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F20, &qword_199E42B08);
    sub_199AA0B90(&qword_1EAF75F28, &qword_1EAF75F00, &qword_199E42AF0, MEMORY[0x1E6981870]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F30, &qword_199E42B10);
    sub_199B7D09C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F48);
  }

  return result;
}

unint64_t sub_199B7D3C8()
{
  result = qword_1EAF75F90;
  if (!qword_1EAF75F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F88, &qword_199E42B50);
    sub_199B7D454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F90);
  }

  return result;
}

unint64_t sub_199B7D454()
{
  result = qword_1EAF75F98;
  if (!qword_1EAF75F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75FA0, &qword_199E42B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75F98);
  }

  return result;
}

unint64_t sub_199B7D4D8()
{
  result = qword_1EAF75FA8;
  if (!qword_1EAF75FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75F80, &qword_199E42B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75FA8);
  }

  return result;
}

uint64_t sub_199B7D560(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CNPosterPreviewView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_199B7D5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75FB0, &unk_199E42B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B7D644(uint64_t a1)
{
  v4 = *(type metadata accessor for CNPosterPreviewView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7688;

  return sub_199B7B0C4(a1, v6, v7, v1 + v5, v8);
}

void sub_199B7D764(void *a1)
{
  v3 = *(type metadata accessor for CNPosterPreviewView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_199B7AE78(a1, (v1 + v4), v5);
}

uint64_t sub_199B7D810(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterPreviewView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for CNPosterPreviewView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v0 + v3 + 16);

  v6 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF886C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_199AC6288(*(v5 + *(v1 + 68)), *(v5 + *(v1 + 68) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for CNPosterPreviewView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v0 + v3 + 16);

  v6 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF886C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_199AC6288(*(v5 + *(v1 + 68)), *(v5 + *(v1 + 68) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v2 | 7);
}

uint64_t sub_199B7DC74(uint64_t a1)
{
  v4 = *(type metadata accessor for CNPosterPreviewView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7314;

  return sub_199B7B0C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_199B7DD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_199B7DDFC()
{
  result = qword_1EAF75FC0;
  if (!qword_1EAF75FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75EE8, &qword_199E42AD8);
    sub_199AA0B90(&qword_1EAF75FC8, &unk_1EAF75FD0, &qword_199E42C38, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75FC0);
  }

  return result;
}

uint64_t sub_199B7DECC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_199DF9F8C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, v8);
}

id sub_199B7DF64(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAD0]) init];
  [v4 setSourceType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760A0, &unk_199E42D70);
  sub_199DF911C();
  [v4 setDelegate_];

  return v4;
}

uint64_t sub_199B7E008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B7EC0C(v2, v5);
  v6 = type metadata accessor for CNPhotoPickerCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_199B7EC0C(v5, v7 + OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_199B7EC70(v5);
  *a2 = v8;
  return result;
}

void sub_199B7E1DC(uint64_t a1)
{
  sub_199B7ECCC(&qword_1EAF760A8, type metadata accessor for CNWallpaperPhotoPickerView, &unk_199E42CF8);
  sub_199DF90BC();
  __break(1u);
}

uint64_t sub_199B7E234(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CNWallpaperPhotoPickerView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker;
  sub_199B7EC0C(a1 + OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker, v8);
  v10 = v8[1];
  v11 = v8[2];
  v26 = *v8;
  v27 = v10;
  v28 = v11;
  v30 = a2;
  v12 = v11;
  v13 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760B0, &qword_199E42D80);
  sub_199DF997C();
  sub_199B7EC70(v8);

  sub_199B7EC0C(a1 + v9, v8);
  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v16 = v8[4];
  v17 = v8[5];
  v18 = v8[6];
  v26 = v8[3];
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v25[1] = v14;
  v25[2] = v15;
  sub_199DF81AC();
  sub_199DF81AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF760B8, &qword_199E42D88);
  sub_199DF997C();
  sub_199B7EC70(v8);

  sub_199B7EC0C(a1 + v9, v8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0, qword_199E3A9B0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v25 - v20;
  sub_199AC3500((v25 - v20));
  sub_199B7EC70(v8);
  v22 = sub_199DF892C();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  MEMORY[0x19A8F7740](v19, v23);
  sub_199DF891C();
  sub_199DF997C();
  return sub_199AFFE24(v21);
}

uint64_t sub_199B7E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_199DF9DFC();
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_199DF9E1C();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_199DF81AC();

  sub_199A7A02C(0, &qword_1EAF71D20, 0x1E69E9610);
  v17 = sub_199DFA39C();
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  aBlock[4] = sub_199B12788;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_20;
  v19 = _Block_copy(aBlock);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B7ECCC(&qword_1EAF71CE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150, &qword_199E38F20);
  sub_199ABC0BC();
  sub_199DFA68C();
  MEMORY[0x19A8F8190](0, v16, v13, v19);
  _Block_release(v19);

  (*(v23 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v22);
}

id sub_199B7E8D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPhotoPickerCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B7E944(uint64_t a1)
{
  result = type metadata accessor for CNWallpaperPhotoPickerView(319);
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

void sub_199B7EA1C(uint64_t a1)
{
  sub_199B7EB60(319, &unk_1EAF76070, &qword_1EAF72748, &qword_199E3EE20, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_199B7EB60(319, &unk_1EAF76080, &qword_1EAF72310, &unk_199E37190, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_199B7EB60(319, &qword_1EAF76090, &qword_1EAF740B0, qword_199E3A9B0, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SourceType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199B7EB60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_199B7EC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNWallpaperPhotoPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B7EC70(uint64_t a1)
{
  v2 = type metadata accessor for CNWallpaperPhotoPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199B7ECCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_199B7ED14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_199B4BCF0();
    if (v5)
    {
      sub_199A9DA04(*(a1 + 56) + 32 * v4, aBlock);
      sub_199A7A02C(0, qword_1EAF738C0, 0x1E69DCAB8);
      if (swift_dynamicCast())
      {
        v6 = aBlock[6];
        v7 = swift_allocObject();
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v8 = swift_allocObject();
        v8[2] = v2;
        v8[3] = v6;
        v8[4] = v7;
        v9 = &v2[OBJC_IVAR____TtC10ContactsUI24CNPhotoPickerCoordinator_picker];
        if (*&v9[*(type metadata accessor for CNWallpaperPhotoPickerView(0) + 28)] == 1)
        {
          v10 = objc_opt_self();
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = sub_199B7EF64;
          v11[4] = v8;
          aBlock[4] = sub_199B7EF70;
          aBlock[5] = v11;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_199B7DECC;
          aBlock[3] = &block_descriptor_18;
          v12 = _Block_copy(aBlock);
          swift_retain_n();
          v13 = v2;
          v14 = v6;

          [v10 createAssetFromImage:v14 completionHandler:v12];

          _Block_release(v12);
        }

        else
        {

          v15 = v2;
          v16 = v6;
          sub_199B7E234(v15, v16, v7);
        }
      }
    }
  }
}

void sub_199B7EFB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t GroupVisualizerType.rawValue.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x4F495443454C4553;
    }

    if (a1 == 3)
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x53474E4954544553;
    }

    if (a1 == 1)
    {
      return 0x4452414F424E4FLL;
    }
  }

  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F0EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 > 1)
  {
    if (v3 == 2)
    {
      v6 = 0x4F495443454C4553;
      v5 = 0xE90000000000004ELL;
      if (v4 <= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_27;
      }

      v6 = 0xD000000000000010;
      v5 = 0x8000000199E4A2B0;
      if (v4 <= 1)
      {
        goto LABEL_15;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_27;
    }

    v5 = 0xE700000000000000;
    v6 = 0x4452414F424E4FLL;
    if (v4 <= 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x53474E4954544553;
    if (v4 <= 1)
    {
LABEL_15:
      if (!v4)
      {
        v7 = 0xE800000000000000;
        if (v6 != 0x53474E4954544553)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (v4 == 1)
      {
        v7 = 0xE700000000000000;
        if (v6 != 0x4452414F424E4FLL)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  if (v4 == 2)
  {
    v7 = 0xE90000000000004ELL;
    if (v6 != 0x4F495443454C4553)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v4 == 3)
  {
    v7 = 0x8000000199E4A2B0;
    if (v6 != 0xD000000000000010)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v5 == v7)
    {
      v8 = 1;
LABEL_26:

      return v8 & 1;
    }

LABEL_25:
    v8 = sub_199DFA99C();
    goto LABEL_26;
  }

LABEL_27:
  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F2BC(uint64_t a1)
{
  v2 = *v1;
  sub_199DFAA7C();
  if (v2 > 1)
  {
    if (v2 == 2 || v2 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!v2 || v2 == 1)
  {
LABEL_9:
    sub_199DF9FEC();

    return sub_199DFAABC();
  }

  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F3B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*v2 <= 1)
  {
    if (!v3 || v3 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = sub_199DFA9CC();
    __break(1u);
    return result;
  }

  if (v3 != 2 && v3 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_199DF9FEC();
}

uint64_t sub_199B7F4A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_199DFAA7C();
  if (v3 > 1)
  {
    if (v3 == 2 || v3 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3 || v3 == 1)
  {
LABEL_9:
    sub_199DF9FEC();

    return sub_199DFAABC();
  }

  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

uint64_t sub_199B7F59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_199B834EC(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_199B7F5D4@<X0>(unint64_t *a2@<X8>)
{
  v3 = *v2;
  if (*v2 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0xE90000000000004ELL;
      v5 = 0x4F495443454C4553;
      goto LABEL_10;
    }

    if (v3 == 3)
    {
      v4 = 0x8000000199E4A2B0;
      v5 = 0xD000000000000010;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 0xE800000000000000;
      v5 = 0x53474E4954544553;
LABEL_10:
      *a2 = v5;
      a2[1] = v4;
      return v6;
    }

    if (v3 == 1)
    {
      v4 = 0xE700000000000000;
      v5 = 0x4452414F424E4FLL;
      goto LABEL_10;
    }
  }

  v6 = sub_199DFA9CC();
  __break(1u);
  return v6;
}

id CNContactGroupVisualizerViewWrapper.init(type:contacts:limitContactsCount:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    if (a2 >> 62)
    {
      v17 = a2;
      v6 = sub_199DFA87C();
      a2 = v17;
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = a1;
    v20 = a2;
    v21 = v6;
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF760F8, &qword_199E42E00));
    *&v4[OBJC_IVAR____TtC10ContactsUI35CNContactGroupVisualizerViewWrapper_hostingController] = sub_199DF8DFC();
    goto LABEL_17;
  }

  v19 = a1;
  v20 = sub_199B83678(a3 & ~(a3 >> 63), a3 >> 63);
  v21 = v8;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF760F8, &qword_199E42E00));
  sub_199DF81AC();
  v10 = sub_199DF8DFC();
  v11 = OBJC_IVAR____TtC10ContactsUI35CNContactGroupVisualizerViewWrapper_hostingController;
  *&v3[OBJC_IVAR____TtC10ContactsUI35CNContactGroupVisualizerViewWrapper_hostingController] = v10;
  if (a1 <= 1)
  {
    if (a1 && a1 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (a1 == 2)
  {
LABEL_11:
    v12 = sub_199DFA99C();

    if ((v12 & 1) == 0)
    {

LABEL_17:
      v18.receiver = v4;
      v18.super_class = type metadata accessor for CNContactGroupVisualizerViewWrapper();
      return objc_msgSendSuper2(&v18, sel_init);
    }

    goto LABEL_15;
  }

  if (a1 != 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = [*&v3[v11] view];
  if (v13)
  {
    v14 = v13;

    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

id CNContactGroupVisualizerViewWrapper.__allocating_init(type:contacts:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (a2)
  {
    v7 = v6;
    sub_199A7DDB0();
    v8 = sub_199DFA0BC();

    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 initWithType:a1 contacts:v8 limitContactsCount:-1];

  return v9;
}

id CNContactGroupVisualizerViewWrapper.init(type:contacts:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_199A7DDB0();
    v4 = sub_199DFA0BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithType:a1 contacts:v4 limitContactsCount:-1];

  return v5;
}

char *sub_199B7FB60(void *a1, _BYTE *a2, void *a3, unint64_t *a4, id a5, unint64_t *a6, void *a7)
{
  if (![a1 imageDataAvailable])
  {
    if (__OFADD__(*a6, 1))
    {
      goto LABEL_16;
    }

    ++*a6;
    a5 = a1;
    MEMORY[0x19A8F7E80]();
    if (*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  a1;
  MEMORY[0x19A8F7E80]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = sub_199DFA10C();
    v15 = (*a4 + 1);
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_199DFA0EC();
LABEL_8:
      result = sub_199DFA10C();
    }

    else
    {
      *a4 = v15;
      if (v15 == a5)
      {
        *a2 = 1;
      }
    }

    if (!__OFADD__(*a4, *a6))
    {
      break;
    }

    __break(1u);
LABEL_14:
    sub_199DFA0EC();
  }

  if ((*a4 + *a6) >= 125)
  {
    *a2 = 1;
  }

  return result;
}

id CNContactGroupVisualizerViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNContactGroupVisualizerViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactGroupVisualizerViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B7FD9C()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF760C0);
  __swift_project_value_buffer(v0, qword_1EAF760C0);
  return sub_199DF803C();
}

uint64_t sub_199B7FE1C()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF760D8);
  v1 = __swift_project_value_buffer(v0, qword_1EAF760D8);
  if (qword_1EAF71F60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EAF760C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_199B7FEE4()
{

  return swift_deallocClassInstance();
}

id sub_199B7FF1C(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76328, &unk_199E43508);
  sub_199DF900C();
  v4 = *(v7 + 16);

  v5 = [v4 view];

  sub_199B84594(a1, v3);
  return v5;
}

void sub_199B7FFC4(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() defaultSettings];
  v4 = [objc_allocWithZone(CNAvatarViewController) initWithSettings_];

  *(v2 + 16) = v4;
  *a1 = v2;
}

void sub_199B80104(uint64_t a1)
{
  sub_199B853C0();
  sub_199DF8EAC();
  __break(1u);
}

double sub_199B8012C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a2;
  v9 = sub_199DF9B5C();
  v11 = v10;
  sub_199B80358(a1, v5, &v34, a4);
  v29 = v42;
  v30 = v43;
  v31[0] = v44[0];
  *(v31 + 9) = *(v44 + 9);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v32[8] = v42;
  v32[9] = v43;
  v33[0] = v44[0];
  *(v33 + 9) = *(v44 + 9);
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v32[7] = v41;
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  sub_199AAD408(&v21, v19, &qword_1EAF762E8, &qword_199E43400);
  sub_199A79A04(v32, &qword_1EAF762E8, &qword_199E43400);
  v42 = v29;
  v43 = v30;
  v44[0] = v31[0];
  *(v44 + 9) = *(v31 + 9);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  sub_199DF9B6C();
  sub_199DF863C();
  *&v20[7] = v19[0];
  *&v20[23] = v19[1];
  *&v20[39] = v19[2];
  v12 = v43;
  *(a3 + 144) = v42;
  *(a3 + 160) = v12;
  *(a3 + 176) = v44[0];
  *(a3 + 185) = *(v44 + 9);
  v13 = v39;
  *(a3 + 80) = v38;
  *(a3 + 96) = v13;
  v14 = v41;
  *(a3 + 112) = v40;
  *(a3 + 128) = v14;
  v15 = v35;
  *(a3 + 16) = v34;
  *(a3 + 32) = v15;
  v16 = v37;
  *(a3 + 48) = v36;
  *(a3 + 64) = v16;
  v17 = *&v20[16];
  *(a3 + 201) = *v20;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 217) = v17;
  result = *&v20[32];
  *(a3 + 233) = *&v20[32];
  *(a3 + 248) = *&v20[47];
  return result;
}

uint64_t sub_199B80358@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v7 = 0.0;
    v32 = 1;
  }

  else
  {
    v9 = a1;
    sub_199DF9B5C();
    sub_199DF863C();
    v37 = v74;
    v38 = v72;
    v35 = v77;
    v36 = v76;
    v7 = a4 * 0.25;
    LOBYTE(v60[0]) = v73;
    LOBYTE(v53) = v75;
    v32 = a1;
    v33 = v73;
    v34 = v75;
  }

  v10 = a1;
  sub_199DF9B5C();
  sub_199DF863C();
  v11 = v78;
  v12 = v79;
  v13 = v80;
  v14 = v81;
  v16 = v82;
  v15 = v83;
  v17 = sub_199DF916C();
  sub_199DF84FC();
  LOBYTE(v39[0]) = 0;
  *&v46 = v32;
  *(&v46 + 1) = v38;
  *&v47 = v33;
  *(&v47 + 1) = v37;
  *&v48 = v34;
  *(&v48 + 1) = v36;
  *&v49 = v35;
  *(&v49 + 1) = v7;
  v50 = 0;
  v51 = 0;
  v52 = v7;
  v40 = v46;
  v41 = v47;
  *v45 = v7;
  v43 = v49;
  v44 = 0u;
  v42 = v48;
  *&v53 = a1;
  *(&v53 + 1) = v78;
  LOBYTE(v54) = v79;
  *(&v54 + 1) = v80;
  LOBYTE(v55) = v81;
  *(&v55 + 1) = v82;
  *&v56 = v83;
  BYTE8(v56) = v17;
  *&v57 = v18;
  *(&v57 + 1) = v19;
  *&v58 = v20;
  *(&v58 + 1) = v21;
  v59 = 0;
  *&v45[40] = v55;
  *&v45[24] = v54;
  *&v45[8] = v53;
  v45[104] = 0;
  *&v45[88] = v58;
  *&v45[72] = v57;
  *&v45[56] = v56;
  v22 = v46;
  v23 = v47;
  v24 = v49;
  a3[2] = v48;
  a3[3] = v24;
  *a3 = v22;
  a3[1] = v23;
  v25 = v44;
  v26 = *v45;
  v27 = *&v45[32];
  a3[6] = *&v45[16];
  a3[7] = v27;
  a3[4] = v25;
  a3[5] = v26;
  v28 = *&v45[48];
  v29 = *&v45[64];
  v30 = *&v45[80];
  *(a3 + 169) = *&v45[89];
  a3[9] = v29;
  a3[10] = v30;
  a3[8] = v28;
  v60[0] = a1;
  v60[1] = v11;
  v61 = v12;
  v62 = v13;
  v63 = v14;
  v64 = v16;
  v65 = v15;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  v69 = v20;
  v70 = v21;
  v71 = 0;
  sub_199AAD408(&v46, v39, &qword_1EAF762F0, &qword_199E43408);
  sub_199AAD408(&v53, v39, &qword_1EAF762F8, &qword_199E43410);
  sub_199A79A04(v60, &qword_1EAF762F8, &qword_199E43410);
  v39[0] = v32;
  v39[1] = v38;
  v39[2] = v33;
  v39[3] = v37;
  v39[4] = v34;
  v39[5] = v36;
  v39[6] = v35;
  *&v39[7] = v7;
  v39[8] = 0;
  v39[9] = 0;
  *&v39[10] = v7;
  return sub_199A79A04(v39, &qword_1EAF762F0, &qword_199E43408);
}

uint64_t sub_199B80674(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_199DF9A7C();
      v5 = sub_199DFA0FC();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_199DF9A7C();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void sub_199B807D0(uint64_t a1@<X8>)
{
  v3 = sub_199DF8F6C();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  if ((v6 * v7) >> 64 == (v6 * v7) >> 63)
  {
    v8 = *(v1 + 48);
    if ((*(v1 + 64) & 1) == 0 || !__OFSUB__(v6 * v7, 1))
    {
      v33[1] = v5;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76280, &qword_199E432D8);
      v36 = v33;
      v9 = *(v35 - 8);
      v34 = a1;
      v10 = v9;
      MEMORY[0x1EEE9AC00](v35);
      v12 = v33 - v11;
      v13 = sub_199DF9A7C();
      MEMORY[0x1EEE9AC00](v13 - 8);
      v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = sub_199DF9A6C();
      v17 = MEMORY[0x1EEE9AC00](v16);
      v19 = (v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      *v19 = v8;
      v19[1] = 0x7FF0000000000000;
      (*(v20 + 104))(v19, *MEMORY[0x1E697D738], v17);
      sub_199DF9A8C();
      v21 = sub_199B80674(v15, v7);
      MEMORY[0x1EEE9AC00](v21);
      sub_199DF8D4C();
      v37 = 0;
      sub_199B84C64(&qword_1EAF74760, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
      sub_199DFAB2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76288, &qword_199E432E0);
      sub_199B84CB4();
      sub_199DF9BCC();
      v22 = sub_199DF917C();
      sub_199DF84FC();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = v34;
      (*(v10 + 32))(v34, v12, v35);
      v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF762A8, &unk_199E432F0) + 36);
      *v32 = v22;
      *(v32 + 8) = v24;
      *(v32 + 16) = v26;
      *(v32 + 24) = v28;
      *(v32 + 32) = v30;
      *(v32 + 40) = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_199B80BC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF762A0, &qword_199E432E8);
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640, &qword_199E3AC30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76248, &unk_199E43298);
  v83 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v89 = &v71 - v16;
  v17 = *a1;
  v18 = *a1 >> 62;
  if (v18)
  {
    result = sub_199DFA87C();
    if (result)
    {
LABEL_3:
      if (a2 < 0)
      {
        __break(1u);
      }

      else
      {
        v85 = v11;
        if (result >= a2)
        {
          v20 = a2;
        }

        else
        {
          v20 = result;
        }

        if (result < 0)
        {
          v20 = a2;
        }

        if (a2)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        if (v18)
        {
          result = sub_199DFA87C();
          if (result < 0)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          }

          result = sub_199DFA87C();
        }

        else
        {
          result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= v21)
        {
          v86 = v8;
          if ((v17 & 0xC000000000000001) != 0 && v21)
          {
            sub_199A7DDB0();
            sub_199DF81AC();
            v22 = 0;
            do
            {
              v23 = v22 + 1;
              sub_199DFA73C();
              v22 = v23;
            }

            while (v21 != v23);
          }

          else
          {
            sub_199DF81AC();
          }

          v80 = v12;
          if (v18)
          {
            sub_199B84F54(a1);
            v25 = sub_199DFA88C();
          }

          else
          {
            v24 = 0;
            v25 = v17 & 0xFFFFFFFFFFFFFF8;
            v26 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
            v27 = (2 * v21) | 1;
          }

          *&v90 = v25;
          *(&v90 + 1) = v26;
          *&v91 = v24;
          *(&v91 + 1) = v27;
          swift_getKeyPath();
          v28 = swift_allocObject();
          v29 = *(a1 + 3);
          *(v28 + 48) = *(a1 + 2);
          *(v28 + 64) = v29;
          *(v28 + 80) = *(a1 + 64);
          v30 = *(a1 + 1);
          *(v28 + 16) = *a1;
          *(v28 + 32) = v30;
          sub_199B84D80(a1, &v97);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76268, &qword_199E432D0);
          sub_199AA0B90(&qword_1EAF76270, &qword_1EAF76268, &qword_199E432D0, MEMORY[0x1E69E6970]);
          sub_199B84C64(&qword_1EAF76278, sub_199A7DDB0, MEMORY[0x1E69E81B8]);
          sub_199B84C10();
          sub_199DF99EC();
          v31 = *(a1 + 64);
          v82 = a3;
          v81 = v6;
          if ((v31 & 1) == 0)
          {
            v74 = 0;
            v79 = 0;
            v78 = 0;
            KeyPath = 0;
            v52 = 0;
            v85 = 0;
            v76 = 0;
            v84 = 0;
            v75 = 0;
            v50 = 0;
            v51 = 0;
            goto LABEL_30;
          }

          v32 = a1[5];
          result = v32 - a2;
          if (!__OFSUB__(v32, a2))
          {
            v97 = sub_199B84E28(result);
            v98 = v33;
            sub_199A9C458();
            v34 = sub_199DF93CC();
            v36 = v35;
            v38 = v37;
            sub_199DF96DC();
            v39 = sub_199DF933C();
            v41 = v40;
            v43 = v42;

            sub_199ACE3E8(v34, v36, v38 & 1);

            v44 = sub_199DF922C();
            v45 = v85;
            (*(*(v44 - 8) + 56))(v85, 1, 1, v44);
            sub_199DF928C();
            sub_199A79A04(v45, &unk_1EAF74640, &qword_199E3AC30);
            v74 = sub_199DF939C();
            v79 = v46;
            v48 = v47;
            v78 = v49;

            sub_199ACE3E8(v39, v41, v43 & 1);
            v50 = 1;

            KeyPath = swift_getKeyPath();
            v85 = swift_getKeyPath();
            LOBYTE(v97) = v48 & 1;
            LOBYTE(v90) = 0;
            v51 = v48 & 1;
            v76 = swift_getKeyPath();
            v84 = swift_getKeyPath();
            v75 = 0x3FDCCCCCCCCCCCCDLL;
            v52 = 2;
LABEL_30:
            v71 = v51;
            v73 = 0;
            v53 = v83;
            v54 = *(v83 + 16);
            v55 = v88;
            v56 = v80;
            v54(v88, v89, v80);
            v57 = v86;
            v54(v86, v55, v56);
            v58 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF762B8, &qword_199E43300) + 48);
            v59 = v74;
            *&v90 = v74;
            v60 = v79;
            *(&v90 + 1) = v79;
            *&v91 = v51;
            v61 = v78;
            *(&v91 + 1) = v78;
            v62 = KeyPath;
            *&v92 = KeyPath;
            v72 = v52;
            *(&v92 + 1) = v52;
            *&v93 = 0;
            *(&v93 + 1) = v85;
            *&v94 = v50;
            v63 = v76;
            *(&v94 + 1) = v76;
            *&v95 = v50;
            v64 = v75;
            *(&v95 + 1) = v84;
            v96 = v75;
            *(v58 + 96) = v75;
            v65 = v91;
            *v58 = v90;
            *(v58 + 16) = v65;
            v66 = v93;
            *(v58 + 32) = v92;
            *(v58 + 48) = v66;
            v67 = v95;
            *(v58 + 64) = v94;
            *(v58 + 80) = v67;
            sub_199AAD408(&v90, &v97, &qword_1EAF762C0, &qword_199E43308);
            v68 = *(v53 + 8);
            v68(v89, v56);
            v97 = v59;
            v98 = v60;
            v99 = v71;
            v100 = v61;
            v101 = v62;
            v102 = v72;
            v103 = v73;
            v104 = v85;
            v105 = v50;
            v106 = v63;
            v107 = v50;
            v108 = v84;
            v109 = v64;
            sub_199A79A04(&v97, &qword_1EAF762C0, &qword_199E43308);
            v68(v88, v56);
            v69 = v82;
            sub_199B84DB8(v86, v82);
            return (*(v87 + 56))(v69, 0, 1, v81);
          }

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v70 = *(v87 + 56);

  return v70(a3, 1, 1, v6, v15);
}

uint64_t sub_199B8150C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[0] = a1;
  v38 = a2;
  v35 = sub_199DF8F6C();
  MEMORY[0x1EEE9AC00](v35);
  v34[1] = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF76220, &qword_199E43288);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v34 - v4;
  v6 = sub_199DF9A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_199DF9A6C();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = xmmword_199E42D90;
  (*(v13 + 104))(v12, *MEMORY[0x1E697D738]);
  sub_199DF9A8C();
  v14 = sub_199DFA0FC();
  *(v14 + 16) = 7;
  v15 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 16);
  v16(v15, v9, v6);
  v17 = *(v7 + 72);
  v16(v15 + v17, v9, v6);
  v16(v15 + 2 * v17, v9, v6);
  v16(v15 + 3 * v17, v9, v6);
  v16(v15 + 4 * v17, v9, v6);
  v16(v15 + 5 * v17, v9, v6);
  v18 = v15 + 6 * v17;
  v19 = v5;
  (*(v7 + 32))(v18, v9, v6);
  v39 = v34[0];
  v40 = 28;
  sub_199DF8D4C();
  v41[0] = 0;
  sub_199B84C64(&qword_1EAF74760, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_199DFAB2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76230, &qword_199E43290);
  sub_199B84B08();
  sub_199DF9BCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v6) = sub_199DF917C();
  *(inited + 32) = v6;
  v21 = sub_199DF91BC();
  *(inited + 33) = v21;
  v22 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v6)
  {
    v22 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v21)
  {
    v22 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v38;
  (*(v36 + 32))(v38, v19, v37);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76260, &unk_199E432A8);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_199B81A40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76248, &unk_199E43298);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = a1 >> 62;
  if (a1 >> 62)
  {
    v23 = v7;
    result = sub_199DFA87C();
    v7 = v23;
    if (result)
    {
LABEL_3:
      if (a2 < 0)
      {
        __break(1u);
      }

      else
      {
        if (result >= a2)
        {
          v13 = a2;
        }

        else
        {
          v13 = result;
        }

        if (result < 0)
        {
          v13 = a2;
        }

        if (a2)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v23 = v7;
        if (v11)
        {
          result = sub_199DFA87C();
          if (result < 0)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          result = sub_199DFA87C();
        }

        else
        {
          result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= v14)
        {
          if ((a1 & 0xC000000000000001) != 0 && v14)
          {
            sub_199A7DDB0();
            sub_199DF81AC();
            v15 = 0;
            do
            {
              v16 = v15 + 1;
              sub_199DFA73C();
              v15 = v16;
            }

            while (v14 != v16);
            if (!v11)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_199DF81AC();
            if (!v11)
            {
LABEL_22:
              v17 = 0;
              v18 = a1 & 0xFFFFFFFFFFFFFF8;
              v19 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
              v20 = (2 * v14) | 1;
LABEL_25:
              v24 = v18;
              v25 = v19;
              v26 = v17;
              v27 = v20;
              swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76268, &qword_199E432D0);
              sub_199AA0B90(&qword_1EAF76270, &qword_1EAF76268, &qword_199E432D0, MEMORY[0x1E69E6970]);
              sub_199B84C64(&qword_1EAF76278, sub_199A7DDB0, MEMORY[0x1E69E81B8]);
              sub_199B84C10();
              sub_199DF99EC();
              (*(v23 + 32))(a3, v10, v6);
              return (*(v23 + 56))(a3, 0, 1, v6);
            }
          }

          v18 = sub_199DFA88C();
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v21 = *(v7 + 56);

  return v21(a3, 1, 1, v6, v8);
}

id sub_199B81D8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 8) = xmmword_199E42DA0;
  *(a2 + 24) = 1;
  return v2;
}

uint64_t sub_199B81DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76118, &qword_199E42FE8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76120, &qword_199E42FF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v37 = a4;
  v35 = v13;
  if (a1 <= 1)
  {
    if (!a1)
    {

LABEL_10:
      v15 = sub_199DF8D4C();
      v41[0] = 1;
      sub_199B825B0(a2, a3, v43);
      memcpy(v38, v43, sizeof(v38));
      memcpy(v39, v43, sizeof(v39));
      sub_199AAD408(v38, v42, &qword_1EAF76198, &qword_199E43030);
      sub_199A79A04(v39, &qword_1EAF76198, &qword_199E43030);
      memcpy(v43 + 7, v38, 0x138uLL);
      v40[0] = v15;
      LOBYTE(v40[1]) = v41[0];
      memcpy(&v40[1] + 1, v43, 0x13FuLL);
      memcpy(v43, v40, 0x150uLL);
      sub_199B8458C(v43);
      memcpy(v41, v43, sizeof(v41));
      sub_199AAD408(v40, v42, &qword_1EAF76158, &qword_199E43018);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76158, &qword_199E43018);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76168, &qword_199E43020);
      v16 = MEMORY[0x1E6981870];
      sub_199AA0B90(&qword_1EAF76150, &qword_1EAF76158, &qword_199E43018, MEMORY[0x1E6981870]);
      sub_199AA0B90(&qword_1EAF76160, &qword_1EAF76168, &qword_199E43020, v16);
      sub_199DF8EDC();
      memcpy(v12, v42, 0x151uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76140, &qword_199E43010);
      sub_199B84330();
      sub_199B84410();
      sub_199DF8EDC();
      return sub_199A79A04(v40, &qword_1EAF76158, &qword_199E43018);
    }

    if (a1 == 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v43[0] = a1;
    result = sub_199DFA9CC();
    __break(1u);
    return result;
  }

  if (a1 != 2 && a1 != 3)
  {
    goto LABEL_16;
  }

LABEL_9:
  v14 = sub_199DFA99C();

  if (v14)
  {
    goto LABEL_10;
  }

  if (a1 == 3)
  {

LABEL_14:
    v19 = sub_199DF8D4C();
    v39[0] = 1;
    sub_199DF81AC();
    v20 = sub_199DF916C();
    sub_199DF9B5C();
    sub_199DF897C();
    v38[0] = 0;
    *(&v44[3] + 7) = v40[3];
    *(&v44[4] + 7) = v40[4];
    *(&v44[5] + 7) = v40[5];
    *(&v44[6] + 7) = v40[6];
    *(v44 + 7) = v40[0];
    *(&v44[1] + 7) = v40[1];
    *(&v44[2] + 7) = v40[2];
    v43[0] = v19;
    v43[1] = 0;
    LOBYTE(v43[2]) = v39[0];
    v43[3] = a2;
    LOBYTE(v43[4]) = v20;
    *&v43[5] = xmmword_199E42DB0;
    *&v43[7] = xmmword_199E42DC0;
    LOBYTE(v43[9]) = 0;
    *(&v43[15] + 1) = v44[3];
    *(&v43[13] + 1) = v44[2];
    *(&v43[11] + 1) = v44[1];
    *(&v43[9] + 1) = v44[0];
    v43[23] = *(&v40[6] + 1);
    *(&v43[21] + 1) = v44[6];
    *(&v43[19] + 1) = v44[5];
    *(&v43[17] + 1) = v44[4];
    sub_199B84580(v43);
    memcpy(v41, v43, sizeof(v41));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76158, &qword_199E43018);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76168, &qword_199E43020);
    v21 = MEMORY[0x1E6981870];
    sub_199AA0B90(&qword_1EAF76150, &qword_1EAF76158, &qword_199E43018, MEMORY[0x1E6981870]);
    sub_199AA0B90(&qword_1EAF76160, &qword_1EAF76168, &qword_199E43020, v21);
    sub_199DF8EDC();
    memcpy(v12, v42, 0x151uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76140, &qword_199E43010);
    sub_199B84330();
    sub_199B84410();
    return sub_199DF8EDC();
  }

  v18 = sub_199DFA99C();

  if (v18)
  {
    goto LABEL_14;
  }

  *v9 = sub_199DF8D4C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76128, &qword_199E42FF8);
  sub_199B82AB8(a1, a2, a3, &v9[*(v22 + 44)]);
  v23 = sub_199DF917C();
  sub_199DF84FC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76130, &qword_199E43000) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = &v9[*(v36 + 36)];
  sub_199DF9A9C();
  v34 = sub_199DF916C();
  v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76138, &qword_199E43008) + 36)] = v34;
  sub_199AAD408(v9, v12, &qword_1EAF76118, &qword_199E42FE8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76140, &qword_199E43010);
  sub_199B84330();
  sub_199B84410();
  sub_199DF8EDC();
  return sub_199A79A04(v9, &qword_1EAF76118, &qword_199E42FE8);
}

uint64_t sub_199B825B0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_199B846A0(a3, v50);
  v6 = v50[0];
  v7 = v50[1];
  v8 = v50[2];
  v9 = v50[3];
  v10 = v50[4];
  v11 = v51;
  sub_199DF81AC();
  v12 = sub_199DF916C();
  sub_199B828A0(a3, &v38);
  sub_199DF9B6C();
  sub_199DF897C();
  *&v28 = a2;
  *(&v28 + 1) = v8;
  LOBYTE(v29) = 1;
  *(&v29 + 1) = v6;
  *&v30 = v7;
  *(&v30 + 1) = v8;
  *&v31 = v9;
  *(&v31 + 1) = v10;
  LOBYTE(v32) = v11;
  BYTE8(v32) = v12;
  v33 = xmmword_199E42DB0;
  v34 = xmmword_199E42DB0;
  *&__src[64] = v32;
  *&__src[80] = xmmword_199E42DB0;
  *&__src[96] = xmmword_199E42DB0;
  *__src = v28;
  *&__src[16] = v29;
  *&__src[32] = v30;
  *&__src[48] = v31;
  v36[2] = v40;
  v36[3] = v41;
  v36[0] = v38;
  v36[1] = v39;
  v36[6] = v44;
  v36[7] = v45;
  v36[4] = v42;
  v36[5] = v43;
  v36[10] = v48;
  v36[11] = v49;
  v36[8] = v46;
  v36[9] = v47;
  *&__src[264] = v47;
  *&__src[280] = v48;
  *&__src[296] = v49;
  *&__src[248] = v46;
  *&__src[184] = v42;
  *&__src[200] = v43;
  *&__src[216] = v44;
  *&__src[232] = v45;
  v35 = 0;
  __src[112] = 0;
  *&__src[120] = v38;
  *&__src[136] = v39;
  *&__src[152] = v40;
  *&__src[168] = v41;
  memcpy(a4, __src, 0x138uLL);
  v37[9] = v47;
  v37[10] = v48;
  v37[11] = v49;
  v37[4] = v42;
  v37[5] = v43;
  v37[6] = v44;
  v37[7] = v45;
  v37[8] = v46;
  v37[0] = v38;
  v37[1] = v39;
  v37[2] = v40;
  v37[3] = v41;
  sub_199AAD408(&v28, v15, &qword_1EAF761A0, &qword_199E43038);
  sub_199AAD408(v36, v15, &qword_1EAF761A8, &qword_199E43040);
  sub_199A79A04(v37, &qword_1EAF761A8, &qword_199E43040);
  v15[0] = a2;
  v15[1] = v8;
  v16 = 1;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = xmmword_199E42DB0;
  v25 = xmmword_199E42DB0;
  v26 = 0;
  return sub_199A79A04(v15, &qword_1EAF761A0, &qword_199E43038);
}

double sub_199B828A0@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_199DF9F4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0, &qword_199E3CF50);
  inited = swift_initStackObject();
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69E65A8];
  *(inited + 16) = xmmword_199E37D40;
  *(inited + 56) = v9;
  *(inited + 64) = v10;
  *(inited + 32) = a1;
  v11 = inited + 32;
  v12 = sub_199AA8A84(v7, inited);
  v14 = v13;
  swift_setDeallocating();
  sub_199A79A04(v11, &qword_1EAF72790, &qword_199E3AAB0);
  (*(v5 + 8))(v7, v4);
  v27[2] = v12;
  v27[3] = v14;
  sub_199A9C458();
  v15 = sub_199DF93CC();
  v17 = v16;
  LOBYTE(v7) = v18;
  v19 = sub_199DF938C();
  v21 = v20;
  LOBYTE(v5) = v22;
  v24 = v23;
  sub_199ACE3E8(v15, v17, v7 & 1);

  v25 = sub_199DF916C();
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = v25;
  *(a2 + 40) = xmmword_199E42DB0;
  result = 10.0;
  *(a2 + 56) = xmmword_199E42DC0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_199B82AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B8, &qword_199E43048) - 8;
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v51 = a3;
  sub_199B846A0(a3, v55);
  v47 = v55[1];
  v48 = v55[0];
  v46 = v55[2];
  v12 = v55[3];
  v13 = v55[4];
  v45 = v56;
  v52 = a2;
  sub_199DF81AC();
  v53 = sub_199DF916C();
  LOBYTE(v68) = 0;
  sub_199DF9B5C();
  sub_199DF863C();
  *&v54[7] = v57;
  *&v54[23] = v58;
  *&v54[39] = v59;
  sub_199B82F24(a1, a3, &v68);
  v14 = v68;
  v15 = v69;
  LOBYTE(a3) = v70;
  v16 = v71;
  KeyPath = swift_getKeyPath();
  v68 = v14;
  v69 = v15;
  v70 = a3;
  v71 = v16;
  v72 = KeyPath;
  LOBYTE(v73) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761C0, &qword_199E43080);
  sub_199B847E8();
  sub_199DF965C();
  sub_199ACE3E8(v14, v15, a3);

  v18 = sub_199DF92FC();
  v19 = swift_getKeyPath();
  v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761E0, &qword_199E430C8) + 36)];
  *v20 = v19;
  v20[1] = v18;
  v21 = swift_getKeyPath();
  v22 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761E8, &qword_199E43100) + 36)];
  *v22 = v21;
  v22[8] = 1;
  v23 = swift_getKeyPath();
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761F0, &qword_199E43138) + 36)];
  *v24 = v23;
  v24[1] = 0x3FDCCCCCCCCCCCCDLL;
  LOBYTE(v23) = sub_199DF917C();
  sub_199DF84FC();
  v25 = &v11[*(v49 + 44)];
  *v25 = v23;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = v50;
  sub_199AAD408(v11, v50, &qword_1EAF761B8, &qword_199E43048);
  *&v60 = v52;
  *(&v60 + 1) = v51;
  LOBYTE(v61) = 0;
  v32 = v47;
  v31 = v48;
  *(&v61 + 1) = v48;
  *&v62 = v47;
  v33 = v46;
  *(&v62 + 1) = v46;
  *&v63 = v12;
  *(&v63 + 1) = v13;
  LOBYTE(v19) = v45;
  LOBYTE(v64) = v45;
  BYTE8(v64) = v53;
  v49 = xmmword_199E42DD0;
  v44 = xmmword_199E42DE0;
  v65 = xmmword_199E42DD0;
  v66 = xmmword_199E42DE0;
  v67[0] = 0;
  *&v67[17] = *&v54[16];
  *&v67[1] = *v54;
  *&v67[33] = *&v54[32];
  v34 = *&v54[47];
  *&v67[48] = *&v54[47];
  *(a4 + 64) = v64;
  *(a4 + 80) = xmmword_199E42DD0;
  v35 = v60;
  v36 = v61;
  v37 = v63;
  *(a4 + 32) = v62;
  *(a4 + 48) = v37;
  *a4 = v35;
  *(a4 + 16) = v36;
  v38 = v66;
  v39 = *v67;
  v40 = *&v67[16];
  v41 = *&v67[32];
  *(a4 + 160) = v34;
  *(a4 + 128) = v40;
  *(a4 + 144) = v41;
  *(a4 + 96) = v38;
  *(a4 + 112) = v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761F8, &qword_199E43140);
  sub_199AAD408(v30, a4 + *(v42 + 48), &qword_1EAF761B8, &qword_199E43048);
  sub_199AAD408(&v60, &v68, &unk_1EAF76200, &qword_199E43148);
  sub_199A79A04(v11, &qword_1EAF761B8, &qword_199E43048);
  sub_199A79A04(v30, &qword_1EAF761B8, &qword_199E43048);
  v68 = v52;
  v69 = v51;
  v70 = 0;
  v71 = v31;
  v72 = v32;
  v73 = v33;
  v74 = v12;
  v75 = v13;
  v76 = v19;
  v77 = v53;
  v78 = v49;
  v79 = v44;
  v80 = 0;
  v81 = *v54;
  v82 = *&v54[16];
  *v83 = *&v54[32];
  *&v83[15] = *&v54[47];
  return sub_199A79A04(&v68, &unk_1EAF76200, &qword_199E43148);
}

uint64_t sub_199B82F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_199DF9F4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_9:
      sub_199DFA99C();

      goto LABEL_10;
    }

    if (a1 == 1)
    {

LABEL_10:
      sub_199DF9EEC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0, &qword_199E3CF50);
      inited = swift_initStackObject();
      v11 = MEMORY[0x1E69E6530];
      v12 = MEMORY[0x1E69E65A8];
      *(inited + 16) = xmmword_199E37D40;
      *(inited + 56) = v11;
      *(inited + 64) = v12;
      *(inited + 32) = a2;
      v13 = inited + 32;
      v14 = sub_199AA8A84(v9, inited);
      v16 = v15;
      swift_setDeallocating();
      sub_199A79A04(v13, &qword_1EAF72790, &qword_199E3AAB0);
      v17 = *(v7 + 8);
      v17(v9, v6);
      sub_199DF9EEC();
      v18 = sub_199AA8A84(v9, MEMORY[0x1E69E7CC0]);
      v20 = v19;
      v17(v9, v6);
      v34 = v14;
      v35 = v16;
      sub_199DF81AC();
      MEMORY[0x19A8F7E00](v18, v20);

      sub_199A9C458();
      v21 = sub_199DF93CC();
      v23 = v22;
      LOBYTE(v16) = v24;
      sub_199DF96DC();
      v25 = sub_199DF933C();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      sub_199ACE3E8(v21, v23, v16 & 1);

      *a3 = v25;
      *(a3 + 8) = v27;
      *(a3 + 16) = v29 & 1;
      *(a3 + 24) = v31;
      return result;
    }
  }

  v34 = a1;
  result = sub_199DFA9CC();
  __break(1u);
  return result;
}

void sub_199B832B4()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x19A8FA1C0](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x19A8FA1C0](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_199B3CC44(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        sub_199DFA78C();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_199B3CC44(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        sub_199DFA78C();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

unint64_t sub_199B83458(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_199DFA87C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_199AB3368();
  sub_199B48C50(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_199B834EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53474E4954544553 && a2 == 0xE800000000000000;
  if (v4 || (sub_199DFA99C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4452414F424E4FLL && a2 == 0xE700000000000000 || (sub_199DFA99C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F495443454C4553 && a2 == 0xE90000000000004ELL || (sub_199DFA99C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000199E4A2B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_199DFA99C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_199B83678(uint64_t a1, unsigned int a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() currentEnvironment];
  v5 = [v4 contactStore];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_199E39130;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v7 = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];
  v8 = *MEMORY[0x1E695C270];
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v11 = sub_199DFA0BC();

  v12 = [v9 initWithKeysToFetch_];

  [v12 setUnifyResults_];
  v13 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_199DFA0BC();
  v16 = [v13 initWithKeysToFetch_];

  [v16 setUnifyResults:1];
  aBlock[0] = 0;
  v76 = v16;
  v17 = [v5 contactCountForFetchRequest:v16 error:aBlock];
  v18 = aBlock[0];
  v77 = v5;
  if (!v17)
  {
    v39 = aBlock[0];
    v40 = sub_199DF717C();

    swift_willThrow();
    v41 = 0;
    v21 = 0;
    v20 = v12;
LABEL_26:
    if (qword_1EAF71F68 != -1)
    {
      swift_once();
    }

    v42 = sub_199DF804C();
    __swift_project_value_buffer(v42, qword_1EAF760D8);
    v43 = v40;
    v44 = sub_199DF802C();
    v45 = sub_199DFA31C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136315138;
      swift_getErrorValue();
      v48 = sub_199DFAA0C();
      v50 = v20;
      v51 = sub_199A9BE90(v48, v49, aBlock);

      *(v46 + 4) = v51;
      v20 = v50;
      _os_log_impl(&dword_199A75000, v44, v45, "Fetched contacts: failed with %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x19A8FA1A0](v47, -1, -1);
      MEMORY[0x19A8FA1A0](v46, -1, -1);
    }

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_199E37DF0;
    *(v52 + 32) = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];

    sub_199A9A5FC(v41, v21);
    return v52;
  }

  v19 = v17;
  v74 = a2;
  v80 = 0;
  v81 = 0;
  if (a2)
  {
    v20 = 54;
  }

  else
  {
    v20 = a1;
  }

  v78 = v14;
  v79 = v14;
  v21 = swift_allocObject();
  v21[2] = &v79;
  v21[3] = &v81;
  v21[4] = v20;
  v21[5] = &v80;
  v21[6] = &v78;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_199B8491C;
  *(v22 + 24) = v21;
  aBlock[4] = sub_199B8492C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B7EFB4;
  aBlock[3] = &block_descriptor_19;
  v23 = _Block_copy(aBlock);
  v24 = v18;

  aBlock[0] = 0;
  v25 = [v5 enumerateContactsWithFetchRequest:v12 error:aBlock usingBlock:v23];
  _Block_release(v23);
  v26 = aBlock[0];
  v27 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_61;
  }

  v20 = v12;
  if (!v25)
  {
    v40 = sub_199DF717C();

    swift_willThrow();

    v41 = sub_199B8491C;
    goto LABEL_26;
  }

  isEscapingClosureAtFileLocation = v74;
  if (v81 > 53)
  {
    goto LABEL_42;
  }

  if (!(v78 >> 62))
  {
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_10;
  }

LABEL_61:
  if (sub_199DFA87C() < 1)
  {
    goto LABEL_42;
  }

LABEL_10:
  v29 = (54 - v81);
  if (__OFSUB__(54, v81))
  {
    __break(1u);
  }

  else if (!(v78 >> 62))
  {
    v30 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 - 1;
    if (!__OFSUB__(v30, 1))
    {
      goto LABEL_13;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v73 = sub_199DFA87C();
  v31 = v73 - 1;
  if (__OFSUB__(v73, 1))
  {
    goto LABEL_66;
  }

LABEL_13:
  if (v31 >= v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  if (v32 < 1)
  {
LABEL_42:
    v59 = sub_199DF81AC();
    aBlock[0] = sub_199B83458(v59);
    sub_199B832B4();
    v79 = aBlock[0];

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (qword_1EAF71F68 != -1)
      {
        swift_once();
      }

      v63 = sub_199DF804C();
      __swift_project_value_buffer(v63, qword_1EAF760D8);
      v64 = v19;
      v65 = sub_199DF802C();
      v66 = sub_199DFA33C();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 134218498;
        swift_beginAccess();
        if (v79 >> 62)
        {
          v69 = sub_199DFA87C();
        }

        else
        {
          v69 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v67 + 4) = v69;
        *(v67 + 12) = 2112;
        *(v67 + 14) = v64;
        *v68 = v19;
        *(v67 + 22) = 2048;
        *(v67 + 24) = a1;
        v70 = v64;
        _os_log_impl(&dword_199A75000, v65, v66, "Fetched %ld contacts out of %@. Overriding total contacts count to %ld", v67, 0x20u);
        sub_199A79A04(v68, &unk_1EAF73A90, &unk_199E3A0B0);
        MEMORY[0x19A8FA1A0](v68, -1, -1);
        MEMORY[0x19A8FA1A0](v67, -1, -1);
        v64 = v65;
        v71 = v20;
        v20 = v76;
        v65 = v77;
      }

      else
      {
        v70 = v76;
        v71 = v77;
      }

      swift_beginAccess();
      v52 = v79;
      sub_199DF81AC();
      goto LABEL_58;
    }

    if (qword_1EAF71F68 != -1)
    {
      swift_once();
    }

    v60 = sub_199DF804C();
    __swift_project_value_buffer(v60, qword_1EAF760D8);
    isEscapingClosureAtFileLocation = v19;
    v26 = sub_199DF802C();
    LOBYTE(v12) = sub_199DFA33C();

    if (!os_log_type_enabled(v26, v12))
    {
LABEL_49:

      swift_beginAccess();
      v52 = v79;
      sub_199DF81AC();
      [isEscapingClosureAtFileLocation integerValue];

LABEL_58:

      return v52;
    }

    a1 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *a1 = 134218242;
    swift_beginAccess();
    if (!(v79 >> 62))
    {
      v61 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_48:
      *(a1 + 4) = v61;
      *(a1 + 12) = 2112;
      *(a1 + 14) = isEscapingClosureAtFileLocation;
      *v29 = v19;
      v62 = isEscapingClosureAtFileLocation;
      _os_log_impl(&dword_199A75000, v26, v12, "Fetched %ld contacts out of %@", a1, 0x16u);
      sub_199A79A04(v29, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v29, -1, -1);
      MEMORY[0x19A8FA1A0](a1, -1, -1);
      goto LABEL_49;
    }

LABEL_67:
    v61 = sub_199DFA87C();
    goto LABEL_48;
  }

  v75 = v20;
  v33 = v78;
  v34 = v78 >> 62;
  if (!(v78 >> 62))
  {
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) > v32)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

  result = sub_199DFA87C();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_199DFA87C() > v32)
    {
LABEL_19:
      if ((v33 & 0xC000000000000001) != 0)
      {
        sub_199A7DDB0();
        sub_199DF81AC();
        v35 = 0;
        do
        {
          v36 = v35 + 1;
          sub_199DFA73C();
          v35 = v36;
        }

        while (v32 + 1 != v36);
        v37 = v32 + 1;
        if (!v34)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_199DF81AC();
        v37 = v32 + 1;
        if (!v34)
        {
LABEL_23:
          v12 = 0;
          v33 &= 0xFFFFFFFFFFFFFF8uLL;
          v38 = v33 + 32;
          v22 = (2 * v37) | 1;
          goto LABEL_34;
        }
      }

      v33 = sub_199DFA88C();
      v12 = v53;
      v22 = v54;
      v20 = v75;
      if ((v54 & 1) == 0)
      {
LABEL_33:
        sub_199B2F69C(v33, v38, v12, v22);
        v56 = v55;
        LOBYTE(isEscapingClosureAtFileLocation) = v74;
        goto LABEL_40;
      }

LABEL_34:
      v32 = v38;
      sub_199DFA9BC();
      swift_unknownObjectRetain_n();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        swift_unknownObjectRelease();
        v57 = MEMORY[0x1E69E7CC0];
      }

      v58 = *(v57 + 16);

      if (!__OFSUB__(v22 >> 1, v12))
      {
        if (v58 == (v22 >> 1) - v12)
        {
          v56 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v20 = v75;
          LOBYTE(isEscapingClosureAtFileLocation) = v74;
          if (v56)
          {
LABEL_41:
            sub_199B43898(v56);
            goto LABEL_42;
          }

          v56 = MEMORY[0x1E69E7CC0];
LABEL_40:
          swift_unknownObjectRelease();
          goto LABEL_41;
        }

        goto LABEL_73;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      swift_unknownObjectRelease();
      v38 = v32;
      v20 = v75;
      goto LABEL_33;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  __break(1u);
  return result;
}

unint64_t sub_199B84250()
{
  result = qword_1EAF76108;
  if (!qword_1EAF76108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76108);
  }

  return result;
}

unint64_t sub_199B84330()
{
  result = qword_1EAF76148;
  if (!qword_1EAF76148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76140, &qword_199E43010);
    v1 = MEMORY[0x1E6981870];
    sub_199AA0B90(&qword_1EAF76150, &qword_1EAF76158, &qword_199E43018, MEMORY[0x1E6981870]);
    sub_199AA0B90(&qword_1EAF76160, &qword_1EAF76168, &qword_199E43020, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76148);
  }

  return result;
}

unint64_t sub_199B84410()
{
  result = qword_1EAF76170;
  if (!qword_1EAF76170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76118, &qword_199E42FE8);
    sub_199B844C8();
    sub_199AA0B90(&qword_1EAF76190, &qword_1EAF76138, &qword_199E43008, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76170);
  }

  return result;
}

unint64_t sub_199B844C8()
{
  result = qword_1EAF76178;
  if (!qword_1EAF76178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76130, &qword_199E43000);
    sub_199AA0B90(&qword_1EAF76180, &qword_1EAF76188, &qword_199E43028, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76178);
  }

  return result;
}

void sub_199B84594(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76328, &unk_199E43508);
  sub_199DF900C();
  v3 = *(v8 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_199E37DF0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_opt_self() emptyContact];
  }

  *(v4 + 32) = v5;
  sub_199A7DDB0();
  v6 = a2;
  v7 = sub_199DFA0BC();

  [v3 setContacts_];
}

double sub_199B846A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  if ((a1 - 1) >= 6)
  {
    if ((a1 - 10) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v3 = 3;
      v4 = 3;
    }

    else if ((a1 - 13) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v4 = 3;
      v3 = 4;
    }

    else if ((a1 - 17) > 0xFFFFFFFFFFFFFFFBLL)
    {
      v3 = 4;
      v4 = 4;
    }

    else if ((a1 - 21) > 0xFFFFFFFFFFFFFFFBLL)
    {
      v4 = 4;
      v3 = 5;
    }

    else
    {
      v5 = a1 - 26;
      v4 = 5;
      v6 = a1 - 31;
      v7 = 5;
      v8 = 8;
      if ((a1 - 49) < 0xFFFFFFFFFFFFFFFALL)
      {
        v8 = 9;
      }

      if ((a1 - 43) <= 0xFFFFFFFFFFFFFFF9)
      {
        v9 = v8;
      }

      else
      {
        v9 = 7;
      }

      if ((a1 - 37) <= 0xFFFFFFFFFFFFFFF9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 6;
      }

      v11 = __CFADD__(v6, 6);
      if (v6 <= 0xFFFFFFFFFFFFFFFALL)
      {
        v12 = v10;
      }

      else
      {
        v12 = 6;
      }

      if (a1 == 25 || !v11)
      {
        v7 = 6;
      }

      v13 = __CFADD__(v5, 6);
      if (v5 <= 0xFFFFFFFFFFFFFFFALL)
      {
        v3 = v12;
      }

      else
      {
        v3 = 5;
      }

      if (a1 == 20 || !v13)
      {
        v4 = v7;
      }
    }
  }

  else
  {
    v3 = qword_199E43518[v2];
    v4 = qword_199E43548[v2];
  }

  v14 = 0xE0u / v4;
  if (0xE0u / v3 < v14)
  {
    v14 = 0xE0u / v3;
  }

  if (v14 <= 0x1C)
  {
    v14 = 28;
  }

  result = v14;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = a1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v14 * 0.03;
  *(a2 + 40) = a1 > 54;
  return result;
}

unint64_t sub_199B847E8()
{
  result = qword_1EAF761C8;
  if (!qword_1EAF761C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF761C0, &qword_199E43080);
    sub_199B848A0();
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8, &qword_199E3CB10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF761C8);
  }

  return result;
}

unint64_t sub_199B848A0()
{
  result = qword_1EAF761D0;
  if (!qword_1EAF761D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF761D8, &unk_199E43088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF761D0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_199B84990(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199B849D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199B84A3C()
{
  result = qword_1EAF76210;
  if (!qword_1EAF76210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76218, qword_199E431E0);
    sub_199B84330();
    sub_199B84410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76210);
  }

  return result;
}

unint64_t sub_199B84B08()
{
  result = qword_1EAF76238;
  if (!qword_1EAF76238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76230, &qword_199E43290);
    sub_199B84B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76238);
  }

  return result;
}

unint64_t sub_199B84B8C()
{
  result = qword_1EAF76240;
  if (!qword_1EAF76240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76248, &unk_199E43298);
    sub_199B84C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76240);
  }

  return result;
}

unint64_t sub_199B84C10()
{
  result = qword_1EAF76250;
  if (!qword_1EAF76250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76250);
  }

  return result;
}

uint64_t sub_199B84C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_199B84CB4()
{
  result = qword_1EAF76290;
  if (!qword_1EAF76290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76288, &qword_199E432E0);
    sub_199AA0B90(&qword_1EAF76298, &qword_1EAF762A0, &qword_199E432E8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76290);
  }

  return result;
}

id sub_199B84D64@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 32);
  *a2 = v3;
  *(a2 + 8) = *(v2 + 64);
  *(a2 + 24) = v4;
  return v3;
}

uint64_t sub_199B84DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF762A0, &qword_199E432E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B84E28(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v2 setNumberStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = [v2 stringFromNumber_];

  if (!v4)
  {
    v5 = sub_199DFA96C();
    v7 = v9;
    if (a1 <= 999)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 2603;
    goto LABEL_6;
  }

  v5 = sub_199DF9F8C();
  v7 = v6;

  if (a1 > 999)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 43;
LABEL_6:
  v11 = v8;
  MEMORY[0x19A8F7E00](v5, v7);

  return v11;
}

uint64_t sub_199B84F94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_199B84FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_199B85048()
{
  result = qword_1EAF762C8;
  if (!qword_1EAF762C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76260, &unk_199E432A8);
    sub_199B85190(&qword_1EAF762D0, &unk_1EAF76220, &qword_199E43288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF762C8);
  }

  return result;
}

unint64_t sub_199B850EC()
{
  result = qword_1EAF762D8;
  if (!qword_1EAF762D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF762A8, &unk_199E432F0);
    sub_199B85190(&qword_1EAF762E0, &qword_1EAF76280, &qword_199E432D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF762D8);
  }

  return result;
}

uint64_t sub_199B85190(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_199B851F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_199B85250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_199B852B0()
{
  result = qword_1EAF76300;
  if (!qword_1EAF76300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76308, &qword_199E43418);
    sub_199AA0B90(&qword_1EAF76310, &qword_1EAF76318, &qword_199E43420, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76300);
  }

  return result;
}

unint64_t sub_199B8536C()
{
  result = qword_1EAF76320;
  if (!qword_1EAF76320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76320);
  }

  return result;
}

unint64_t sub_199B853C0()
{
  result = qword_1EAF76330;
  if (!qword_1EAF76330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF76330);
  }

  return result;
}

uint64_t sub_199B85414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_199B755CC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_199B4AB64(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_199B75C44();
        v11 = v13;
      }

      result = sub_199B896F0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_199B854D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E0, &qword_199E437C0);
  __swift_allocate_value_buffer(v0, qword_1EAF71638);
  __swift_project_value_buffer(v0, qword_1EAF71638);
  return sub_199DF831C();
}

uint64_t sub_199B85544()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76398, &qword_199E43680);
  __swift_allocate_value_buffer(v0, qword_1EAF71610);
  __swift_project_value_buffer(v0, qword_1EAF71610);
  return sub_199DF836C();
}

uint64_t sub_199B855F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40, &qword_199E39888);
  __swift_allocate_value_buffer(v0, qword_1EAF715E8);
  __swift_project_value_buffer(v0, qword_1EAF715E8);
  return sub_199DF836C();
}

uint64_t sub_199B856A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40, &qword_199E39888);
  __swift_allocate_value_buffer(v0, qword_1EAF715A0);
  __swift_project_value_buffer(v0, qword_1EAF715A0);
  return sub_199DF836C();
}

uint64_t sub_199B85758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76390, &qword_199E43678);
  __swift_allocate_value_buffer(v0, qword_1EAF715C8);
  __swift_project_value_buffer(v0, qword_1EAF715C8);
  return sub_199DF836C();
}

uint64_t sub_199B85814@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76420, &qword_199E43868);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76428, &qword_199E43870);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_199AA0B90(&qword_1EAF71510, &qword_1EAF76428, &qword_199E43870, MEMORY[0x1E6968DA8]);
  sub_199DF715C();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_199DF714C();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76430, &qword_199E43878);
  a2[4] = sub_199B8AD80();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_199AA0B90(&qword_1EAF71570, &qword_1EAF76420, &qword_199E43868, MEMORY[0x1E6968D20]);
  sub_199DF711C();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_199B85A78@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E50, &qword_199E39898);
  a2[4] = sub_199AA0B90(&qword_1EAF71508, &qword_1EAF72E50, &qword_199E39898, MEMORY[0x1E6968DA0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_199AA0B90(&qword_1EAF71500, &qword_1EAF72E50, &qword_199E39898, MEMORY[0x1E6968DA8]);
  return sub_199DF715C();
}

uint64_t sub_199B85B44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = sub_199DF713C();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E8, &qword_199E437C8);
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76410, &qword_199E43858);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  sub_199AA0B90(&qword_1EAF714F0, &qword_1EAF76410, &qword_199E43858, MEMORY[0x1E6968DA8]);
  sub_199DF715C();
  v19 = 30;
  sub_199DF714C();
  v13 = v17;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968C38], v17);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76418, &qword_199E43860);
  a2[4] = sub_199B8AC44();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_199AA0B90(&qword_1EAF71558, &qword_1EAF763E8, &qword_199E437C8, MEMORY[0x1E6968D20]);
  v14 = v18;
  sub_199DF712C();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_199B85E6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a1;
  v32 = a2;
  v30 = sub_199DF713C();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763E8, &qword_199E437C8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763F0, &qword_199E437D0);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763F8, &qword_199E437D8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76400, &qword_199E437E0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  sub_199AA0B90(&qword_1EAF71528, &qword_1EAF76400, &qword_199E437E0, MEMORY[0x1E6968DA8]);
  sub_199DF715C();
  swift_getKeyPath();
  sub_199DF710C();

  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  v17 = MEMORY[0x1E6968D58];
  sub_199AA0B90(&qword_1EAF71550, &qword_1EAF763F8, &qword_199E437D8, MEMORY[0x1E6968D58]);
  sub_199DF710C();

  (*(v10 + 8))(v12, v9);
  v35 = 1;
  sub_199DF714C();
  v19 = v27;
  v18 = v28;
  v20 = v30;
  (*(v28 + 104))(v27, *MEMORY[0x1E6968C40], v30);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76408, &qword_199E43850);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_199B8AA94();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_199AA0B90(&qword_1EAF71540, &qword_1EAF763F0, &qword_199E437D0, v17);
  sub_199AA0B90(&qword_1EAF71558, &qword_1EAF763E8, &qword_199E437C8, MEMORY[0x1E6968D20]);
  v23 = v29;
  v24 = v33;
  sub_199DF712C();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v6, v24);
  return (*(v31 + 8))(v8, v23);
}

uint64_t sub_199B863EC()
{
  v0 = objc_opt_self();
  v1 = sub_199DF9F5C();
  v2 = [v0 cnui:v1 imageNamed:?];

  return sub_199DF97BC();
}

uint64_t sub_199B86468()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763D0, &qword_199E437B0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_199DF821C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF822C();
  v8 = MEMORY[0x1E6982AB8];
  MEMORY[0x19A8F5FC0](v7, v4, MEMORY[0x1E6982AB8]);
  (*(v5 + 8))(v7, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763D8, &qword_199E437B8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v16 = v4;
  v17 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x19A8F5FE0](v3, v0, OpaqueTypeConformance2);
  v16 = v0;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_199DF81FC();
  (*(v10 + 8))(v12, v9);
  (*(v1 + 8))(v3, v0);
  return v14;
}

uint64_t sub_199B86704()
{
  if (qword_1EAF715C0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76390, &qword_199E43678);
  __swift_project_value_buffer(v0, qword_1EAF715C8);
  swift_beginAccess();
  sub_199DF834C();
  swift_endAccess();
  sub_199A9C458();
  return sub_199DF93CC();
}

id CNTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CNTipsHelper.shared.getter()
{
  if (qword_1EAF71BF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAF71C00;

  return v1;
}

void *sub_199B86878()
{
  v1 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_199B86924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B8697C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_199B86A5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763A0, &qword_199E436A0);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763A8, &qword_199E436A8);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v0[21] = sub_199B8A904();
  sub_199DF810C();
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763B0, &qword_199E436B0);
  swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763B8, &qword_199E436B8);
  swift_task_alloc();
  MEMORY[0x19A8F85E0](v2);
  sub_199AA0B90(&qword_1EAF710F8, &qword_1EAF763B8, &qword_199E436B8, MEMORY[0x1E69E86A0]);
  sub_199DFA21C();

  sub_199DFA82C();
  (*(v3 + 8))(v4, v2);
  sub_199DFA83C();

  swift_beginAccess();

  return MEMORY[0x1EEE6DFA0](sub_199B86D2C, 0, 0);
}

uint64_t sub_199B86D2C()
{
  v1 = sub_199DF833C();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763C0, &qword_199E436C0);
  v2 = swift_task_alloc();
  v0[26] = v2;
  v0[27] = sub_199DFA81C();
  sub_199AA0B90(&qword_1EAF71100, &qword_1EAF763B0, &qword_199E436B0, MEMORY[0x1E69E8690]);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_199B86EC4;

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_199B86EC4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_199B871B4;
  }

  else
  {
    (*(v2 + 216))();
    v3 = sub_199B86FEC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_199B86FEC()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_199B8A974(v1);

    return MEMORY[0x1EEE6DFA0](sub_199B875F0, 0, 0);
  }

  else
  {
    (*(v3 + 32))(v0[25], v1, v2);

    v4 = sub_199DFA82C();
    v0[29] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[30] = v6;
    *v6 = v0;
    v6[1] = sub_199B87224;
    v7 = v0[25];

    return (v9)(v0 + 39, v7);
  }
}

uint64_t sub_199B871B4()
{
  (*(v0 + 216))();
}

uint64_t sub_199B87224()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  *(v1 + 313) = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_199B873A8, 0, 0);
}

uint64_t sub_199B873A8()
{

  return MEMORY[0x1EEE6DFA0](sub_199B87410, 0, 0);
}

uint64_t sub_199B87410()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    if (*(v0 + 313) == 1)
    {
      v2 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
      v3 = Strong;
      swift_beginAccess();
      Strong = v3;
      if (!*&v3[v2])
      {
        v4 = *&v3[OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller];
        *(v0 + 264) = v4;
        if (!v4)
        {

          v14 = sub_199B86D2C;
          v15 = 0;
          v16 = 0;
          goto LABEL_9;
        }

        v5 = *(v0 + 168);
        *(v0 + 40) = &type metadata for SiriTip;
        *(v0 + 48) = v5;
        *(v0 + 272) = sub_199DFA17C();
        v6 = v4;
        *(v0 + 280) = sub_199DFA16C();
        v7 = sub_199DFA12C();
        v9 = v8;
        v10 = sub_199B8766C;
LABEL_8:
        v14 = v10;
        v15 = v7;
        v16 = v9;
LABEL_9:

        return MEMORY[0x1EEE6DFA0](v14, v15, v16);
      }
    }

    else
    {
      v11 = *&Strong[OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller];
      *(v0 + 256) = v11;
      if (v11)
      {
        sub_199DFA17C();
        v12 = v11;
        *(v0 + 304) = sub_199DFA16C();
        v7 = sub_199DFA12C();
        v9 = v13;
        v10 = sub_199B87888;
        goto LABEL_8;
      }
    }
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_199B875F0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_199B8766C()
{

  objc_allocWithZone(sub_199DF816C());
  *(v0 + 288) = sub_199DF817C();

  return MEMORY[0x1EEE6DFA0](sub_199B8770C, 0, 0);
}

uint64_t sub_199B8770C(uint64_t a1)
{
  *(v1 + 296) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B87798, v3, v2);
}

uint64_t sub_199B87798()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);

  [v2 setTipView_];

  return MEMORY[0x1EEE6DFA0](sub_199B87820, 0, 0);
}

uint64_t sub_199B87820()
{

  return MEMORY[0x1EEE6DFA0](sub_199B86D2C, 0, 0);
}

uint64_t sub_199B87888()
{
  v1 = *(v0 + 256);

  [v1 setTipView_];

  return MEMORY[0x1EEE6DFA0](sub_199B8790C, 0, 0);
}

uint64_t sub_199B8790C()
{
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199B87990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a4;
  v5 = swift_task_alloc();
  *(v4 + 192) = v5;
  *v5 = v4;
  v5[1] = sub_199B87A2C;

  return MEMORY[0x1EEE6DA60](2000000000);
}

uint64_t sub_199B87A2C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_199B87B5C, 0, 0);
  }
}

uint64_t sub_199B87B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_controller), v0[25] = v2, v3 = Strong, v4 = v2, v3, v2))
  {
    v0[26] = sub_199DFA17C();
    v0[27] = sub_199DFA16C();
    v6 = sub_199DFA12C();

    return MEMORY[0x1EEE6DFA0](sub_199B87C6C, v6, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_199B87C6C()
{
  v1 = *(v0 + 200);

  *(v0 + 258) = [v1 validateSiriEnabled];

  return MEMORY[0x1EEE6DFA0](sub_199B87CEC, 0, 0);
}

uint64_t sub_199B87CEC()
{
  if (qword_1EAF715E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 258);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40, &qword_199E39888);
  *(v0 + 224) = v2;
  __swift_project_value_buffer(v2, qword_1EAF715E8);
  *(v0 + 256) = v1;
  swift_beginAccess();
  sub_199DF835C();
  swift_endAccess();
  *(v0 + 232) = sub_199DFA16C();
  v4 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B87E0C, v4, v3);
}

uint64_t sub_199B87E0C()
{
  v1 = *(v0 + 200);

  *(v0 + 259) = [v1 validateSiriLanguage];

  return MEMORY[0x1EEE6DFA0](sub_199B87E8C, 0, 0);
}

uint64_t sub_199B87E8C()
{
  if (qword_1EAF71598 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 259);
  __swift_project_value_buffer(*(v0 + 224), qword_1EAF715A0);
  *(v0 + 257) = v1;
  swift_beginAccess();
  sub_199DF835C();
  swift_endAccess();
  *(v0 + 240) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B87F98, v3, v2);
}

uint64_t sub_199B87F98()
{
  v1 = *(v0 + 200);

  *(v0 + 248) = [v1 getRecentCallCountAndSpeakableName];

  return MEMORY[0x1EEE6DFA0](sub_199B88020, 0, 0);
}

uint64_t sub_199B88020()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = [v1 speakableName];
    v3 = sub_199DF9F8C();
    v5 = v4;

    if (qword_1EAF715C0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 248);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76390, &qword_199E43678);
    __swift_project_value_buffer(v7, qword_1EAF715C8);
    *(v0 + 160) = v3;
    *(v0 + 168) = v5;
    swift_beginAccess();
    sub_199DF835C();
    swift_endAccess();
    v8 = [v6 callCount];
    if (qword_1EAF71608 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 248);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF76398, &qword_199E43680);
    __swift_project_value_buffer(v10, qword_1EAF71610);
    *(v0 + 176) = v8;
    swift_beginAccess();
    sub_199DF835C();
    swift_endAccess();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_199B8A5F0();
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_199B8821C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_199AA7314;

  return sub_199B87990(a1, v4, v5, v6);
}

uint64_t sub_199B882D0(uint64_t a1, uint64_t a2)
{
  qword_1EAF71BB0 = a1;
  qword_1EAF71BB8 = a2;
  sub_199DF81AC();
}

uint64_t sub_199B88318(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_entries;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16) && (v7 = sub_199B4AB64(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_199DF81AC();
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + v5);
    *(a1 + v5) = 0x8000000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    sub_199B755CC(MEMORY[0x1E69E7CC0], v4, isUniquelyReferenced_nonNull_native);
    *(a1 + v5) = v20;
    swift_endAccess();
  }

  sub_199B89D00(a2, v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_199AB2D80(0, *(v9 + 2) + 1, 1, v9);
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_199AB2D80((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[56 * v12];
  v14 = v18[0];
  v15 = v18[1];
  v16 = v18[2];
  *(v13 + 10) = v19;
  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  *(v13 + 2) = v14;
}

uint64_t CNTipHeaderView.displaysBottomSeparator.getter()
{
  v1 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

void CNTipHeaderView.displaysBottomSeparator.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_199B88C80();
}

void (*CNTipHeaderView.displaysBottomSeparator.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_199B886D8;
}

void *sub_199B8873C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_199B88804(void *a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_199B892B4();
}

void sub_199B8886C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_199B892B4();
}

void (*sub_199B888D0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_199B88934;
}

void sub_199B8894C(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    a3(v5);
  }
}

char *CNTipHeaderView.init(frame:separatorInset:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = &v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_separatorEdgeInset];
  v18 = *(MEMORY[0x1E69DDCE0] + 16);
  *v17 = *MEMORY[0x1E69DDCE0];
  v17[1] = v18;
  *&v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_bottomSeparatorView] = 0;
  v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator] = 0;
  *&v8[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView] = 0;
  v27.receiver = v8;
  v27.super_class = type metadata accessor for CNTipHeaderView();
  v19 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setLayoutMargins_];
  v20 = &v19[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_separatorEdgeInset];
  *v20 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  v21 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_hostingView;
  swift_beginAccess();
  v22 = *&v19[v21];
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 tertiarySystemFillColor];
    [v24 setBackgroundColor_];
  }

  sub_199B892B4();
  sub_199B88FF4();

  return v19;
}

void sub_199B88C80()
{
  v1 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_bottomSeparatorView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    v4 = *&v0[v1];
    if (v4)
    {
LABEL_9:
      v13 = v4;
      [v0 addSubview_];
      v14 = [objc_opt_self() mainScreen];
      [v14 scale];
      v16 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_199E38F10;
      v18 = [v13 leadingAnchor];
      v19 = [v0 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:*&v0[OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_separatorEdgeInset + 8]];

      *(v17 + 32) = v20;
      v21 = [v13 heightAnchor];
      v22 = [v21 constraintEqualToConstant_];

      *(v17 + 40) = v22;
      v23 = [v13 widthAnchor];
      v24 = [v0 widthAnchor];
      v25 = [v23 constraintEqualToAnchor_];

      *(v17 + 48) = v25;
      v26 = [v0 bottomAnchor];
      v27 = [v13 bottomAnchor];
      v28 = [v26 constraintEqualToAnchor_];

      *(v17 + 56) = v28;
      sub_199AF1984();
      v29 = sub_199DFA0BC();

      [v0 addConstraints_];

      return;
    }
  }

  v5 = OBJC_IVAR____TtC10ContactsUI15CNTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  if (v0[v5] != 1)
  {
LABEL_8:
    v4 = *&v0[v1];
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = *&v0[v1];
  *&v0[v1] = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v9 = *&v0[v1];
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 separatorColor];
    [v11 setBackgroundColor_];

    goto LABEL_8;
  }
}