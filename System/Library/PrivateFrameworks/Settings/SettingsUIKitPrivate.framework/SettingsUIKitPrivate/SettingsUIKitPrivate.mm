void sub_2658943D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2658949E4();
  MEMORY[0x28223BE20]();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);

  sub_2658949D4();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028020, &qword_265894CA8));
  v4 = sub_2658949F4();
  v5 = [v4 view];
  if (!v5)
  {
    v6 = v4;
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];

    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;

      [v6 setFrame_];
      [v6 setAutoresizingMask_];
      [v1 addChildViewController_];
      [v4 didMoveToParentViewController_];

LABEL_6:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2658946D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id _ControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _ControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _ControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _ControllerFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _ControllerFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s20SettingsUIKitPrivate18_ControllerFactoryC010thirdPartyaD12ForSpecifier9specifierSo06UIViewD0CSo11PSSpecifierC_tFZ_0(void *a1)
{
  result = [a1 identifier];
  if (result)
  {
    v3 = result;
    v4 = sub_265894A04();
    v6 = v5;

    v7 = type metadata accessor for SUIKPApplicationSettingsViewController();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController_applicationBundleIdentifier];
    *v9 = v4;
    v9[1] = v6;
    v14.receiver = v8;
    v14.super_class = v7;
    v10 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
    v13.receiver = v10;
    v13.super_class = v7;
    objc_msgSendSuper2(&v13, sel_setSpecifier_, a1);
    v11 = v10;
    v12 = [a1 name];
    [v11 setTitle_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}