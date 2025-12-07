void sub_257CF0354()
{
  type metadata accessor for DetectionModeImageCache();
  v0 = swift_allocObject();
  *(v0 + 24) = MEMORY[0x277D84F90];
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = v1;
  v2 = v1;
  [v2 setCountLimit_];
  [v2 setTotalCostLimit_];

  qword_27F912F78 = v0;
}

uint64_t sub_257CF03E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257CF0448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838, &qword_257EE35C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_s16MagnifierSupport16MAGActivityStoreC10activitiesSayAA0C0VGvg_0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_281548348;
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v31[0] = *(v0 + 88);
  v31[1] = v1;
  v31[2] = v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v10 = v32;
  v11 = *(v32 + 16);
  if (v11)
  {
    v12 = sub_257C63CC4(*(v32 + 16), 0, v9);
    v13 = sub_257C67A48(v31, v12 + 4, v11, v10);
    sub_257C02520(v31[0]);
    if (v13 == v11)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_9:
  v31[0] = v12;
  sub_257ECC3F0();
  sub_257C63C58(v31);

  v14 = v31[0];
  v15 = *(v31[0] + 2);
  if (v15)
  {
    v31[0] = MEMORY[0x277D84F90];
    sub_257BF2984(0, v15, 0);
    v16 = v31[0];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = objc_opt_self();
    v19 = v14 + 40;
    do
    {

      v20 = [v18 bundleForClass_];
      v21 = sub_257ECF4C0();
      v22 = sub_257ECF4C0();
      v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

      v24 = sub_257ECF500();
      v26 = v25;

      v31[0] = v16;
      v28 = *(v16 + 2);
      v27 = *(v16 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_257BF2984((v27 > 1), v28 + 1, 1);
        v16 = v31[0];
      }

      *(v16 + 2) = v28 + 1;
      v29 = &v16[16 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      v19 += 16;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v16;
}

uint64_t sub_257CF08A4(char a1)
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

void sub_257CF09A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v20[0] = v5[11];
        v20[1] = v6;
        v20[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
        sub_257ECFD50();

        if (*(v19[0] + 16))
        {
          v14 = sub_257C03F6C(v3, v2);
          v16 = v15;

          if (v16)
          {
            v17 = (*(v19[0] + 56) + 296 * v14);
            memcpy(v18, v17, sizeof(v18));
            memmove(v19, v17, 0x128uLL);
            CGSizeMake();
            sub_257C09C58(v18, v20);

            memcpy(v20, v19, sizeof(v20));
LABEL_16:
            memcpy(v19, (v4 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), v20, 0x128uLL);
            sub_257C109C8(v19);
            return;
          }
        }

        else
        {
        }

        sub_257C10998(v20);
        goto LABEL_16;
      }
    }
  }
}

void sub_257CF0CCC()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView];
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

void sub_257CF0E68(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  sub_257CF09A8();
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView] reloadData];
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257CF1040(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v7], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  [v11 setClipsToBounds_];
  *&v3[v8] = v11;
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

id sub_257CF1224(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v4], __src, 0x128uLL);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  [v8 setClipsToBounds_];
  *&v1[v5] = v8;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_257CF1448(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  v7 = sub_257ECCEA0();
  if (v7 != 1)
  {
    if (!v7)
    {
      v8 = sub_257ECCE60();
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v10 = sub_257ECCE60();
  v11 = __OFADD__(v10, v9);
  v8 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_7:
    v8 = 0;
  }

LABEL_8:
  ColorFilter.init(rawValue:)(v8);
  v12 = __dst[0];
  if (__dst[0] != 12)
  {
    v13 = [v6 textLabel];
    if (v13)
    {
      v14 = v13;
      sub_257D188B4();
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v17 = sub_257ECF4C0();

      v18 = sub_257ECF4C0();
      v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

      if (!v19)
      {
        sub_257ECF500();
        v19 = sub_257ECF4C0();
      }

      [v14 setText_];
    }

    v20 = v2 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) != 1)
    {
      if (sub_257C592D0(v12, *(v20 + 40)))
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      [v6 setAccessoryType_];
    }
  }

  return v6;
}

double sub_257CF19A8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECCE30();
  v13 = [a1 cellForRowAtIndexPath_];

  if (!v13)
  {
    return result;
  }

  v15 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v15 animated:1];

  v16 = sub_257ECCEA0();
  if (v16 != 1)
  {
    if (!v16)
    {
      v17 = sub_257ECCE60();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v19 = sub_257ECCE60();
  v20 = __OFADD__(v19, v18);
  v17 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_8:
    v17 = 0;
  }

LABEL_9:
  ColorFilter.init(rawValue:)(v17);
  v21 = v50;
  if (v50 != 12)
  {
    v22 = v1 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
    memcpy(v49, v2 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity, 0x128uLL);
    if (sub_257C108C4(v49) != 1)
    {
      v47 = v11;
      v23 = *(v22 + 5);
      v24 = sub_257C592D0(v21, v23);
      v46 = v5;
      if (v24)
      {
        v25 = *(v23 + 16);
        if (v25)
        {
          v43 = v4;
          v44 = v13;
          v45 = v2;

          v26 = MEMORY[0x277D84F90];
          v27 = 32;
          do
          {
            v30 = *(v23 + v27);
            if (v30 != v21)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v48[0] = v26;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_257BF2944(0, *(v26 + 16) + 1, 1);
                v26 = v48[0];
              }

              v29 = *(v26 + 16);
              v28 = *(v26 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_257BF2944((v28 > 1), v29 + 1, 1);
                v26 = v48[0];
              }

              *(v26 + 16) = v29 + 1;
              *(v26 + v29 + 32) = v30;
            }

            ++v27;
            --v25;
          }

          while (v25);

          v13 = v44;
          v4 = v43;
        }

        else
        {
          v26 = MEMORY[0x277D84F90];
        }

        v5 = v46;
        v33 = v47;
        if (!*(v26 + 16))
        {

          return result;
        }

        [v13 setAccessoryType_];
      }

      else
      {

        [v13 setAccessoryType_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F74D0, &unk_257EDB210);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v21;
        v48[0] = v23;
        sub_257EB10DC(inited);
        v33 = v47;
        v26 = v48[0];
      }

      sub_257ECD420();

      v34 = sub_257ECDA20();
      v35 = sub_257ECFBD0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v48[0] = v45;
        *v36 = 136315138;
        v37 = MEMORY[0x259C72340](v26, &type metadata for ColorFilter);
        v39 = sub_257BF1FC8(v37, v38, v48);

        *(v36 + 4) = v39;
        _os_log_impl(&dword_257BAC000, v34, v35, "New filters: %s", v36, 0xCu);
        v40 = v45;
        v41 = __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x259C74820](v40, -1, -1, v41);
        MEMORY[0x259C74820](v36, -1, -1);

        (*(v46 + 8))(v47, v4);
      }

      else
      {

        (*(v5 + 8))(v33, v4);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_257CE3084(v26, v42);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_257CF09A8();
    }
  }

  return result;
}

uint64_t sub_257CF1F2C(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257CF2034()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), sizeof(__dst));
  result = sub_257C108C4(__dst);
  if (result == 1)
  {
    return result;
  }

  if (*(v1[5] + 16) != 1)
  {
    return 1;
  }

  v3 = sub_257ECCEA0();
  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = sub_257ECCE60();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v6 = sub_257ECCE60();
  v7 = __OFADD__(v6, v5);
  v4 = v5 + v6;
  if (v7)
  {
    __break(1u);
LABEL_10:
    v4 = 0;
  }

LABEL_11:
  ColorFilter.init(rawValue:)(v4);
  v8 = v14[303];
  memcpy(v14, v1, 0x128uLL);
  if (sub_257C108C4(v14) == 1 || (v9 = v1[5], !*(v9 + 16)))
  {
    v10 = 12;
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10 == 12;
  v13 = v10 != 12 && v8 == v10;
  if (v8 == 12)
  {
    v13 = v11;
  }

  return !v13;
}

char *sub_257CF218C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_topInset] = 0x4018000000000000;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_bottomInset] = 0x4018000000000000;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_leftInset] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_rightInset] = 0x4020000000000000;
  v3 = v2;
  [v3 setTextAlignment_];
  [v3 setNumberOfLines_];
  [v3 setLineBreakMode_];
  v4 = [v3 layer];
  [v4 setMasksToBounds_];

  v5 = [v3 layer];
  [v5 setCornerRadius_];

  v6 = [v3 layer];
  if (qword_281544A70 != -1)
  {
    swift_once();
  }

  [v6 setCornerCurve_];

  return v3;
}

id sub_257CF2390()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_setNeedsLayout);
  result = [v0 superview];
  if (result)
  {

    result = [v0 superview];
    if (result)
    {
      v2 = result;
      [result frame];
      v4 = v3;

      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      [v0 sizeThatFits_];
      return [v0 setPreferredMaxLayoutWidth_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_257CF25C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY);
}

uint64_t sub_257CF26B4(unsigned __int8 a1)
{
  if (!a1)
  {
    return a1;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

void sub_257CF27D8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

void sub_257CF2978()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v20[0] = v5[11];
        v20[1] = v6;
        v20[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
        sub_257ECFD50();

        if (*(v19[0] + 16))
        {
          v14 = sub_257C03F6C(v3, v2);
          v16 = v15;

          if (v16)
          {
            v17 = (*(v19[0] + 56) + 296 * v14);
            memcpy(v18, v17, sizeof(v18));
            memmove(v19, v17, 0x128uLL);
            CGSizeMake();
            sub_257C09C58(v18, v20);

            memcpy(v20, v19, sizeof(v20));
LABEL_16:
            memcpy(v19, (v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), v20, 0x128uLL);
            sub_257C109C8(v19);
            return;
          }
        }

        else
        {
        }

        sub_257C10998(v20);
        goto LABEL_16;
      }
    }
  }
}

void sub_257CF2C44()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 addSubview_];

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      sub_257EB6FD8(v8, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      sub_257CF2978();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_257CF2E30(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v7], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_availableTextDetectionFeedbacks] = &unk_286904F78;
  v8 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  [v11 setClipsToBounds_];
  *&v3[v8] = v11;
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

id sub_257CF3028(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v4], __src, 0x128uLL);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_availableTextDetectionFeedbacks] = &unk_286904FA0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  [v8 setClipsToBounds_];
  *&v1[v5] = v8;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

unint64_t sub_257CF3344(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCEA0();
  switch(v4)
  {
    case 0:
      v6 = sub_257ECF4C0();
      v7 = sub_257ECCE30();
      v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

      sub_257CF2978();
      v9 = [v8 textLabel];
      if (v9)
      {
        v10 = v9;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        v13 = sub_257ECF4C0();
        v14 = sub_257ECF4C0();
        v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

        if (!v15)
        {
          sub_257ECF500();
          v15 = sub_257ECF4C0();
        }

        [v10 setText_];
      }

      v16 = [v8 textLabel];
      if (v16)
      {
        v17 = v16;
        [v16 setNumberOfLines_];
      }

      v18 = [v8 textLabel];
      if (v18)
      {
        v19 = v18;
        [v18 setLineBreakMode_];
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v21 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), sizeof(__dst));
      if (sub_257C108C4(__dst) == 1)
      {
      }

      else
      {
        [v20 setOn_];
        v45 = v20;
        [v45 setTag_];
        [v45 addTarget:v2 action:sel_toggleTextDetectionSwitchChanged_ forControlEvents:4096];
        [v8 setAccessoryView_];
      }

      return v8;
    case 1:
      v5 = 1;
      break;
    case 2:
      v5 = 2;
      break;
    default:
      v5 = 3;
      break;
  }

  v22 = sub_257ECF4C0();
  v23 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:v23];

  sub_257CF2978();
  if (v5 != 1)
  {
    if (v5 != 2)
    {
      return v8;
    }

    v24 = [v8 textLabel];
    if (v24)
    {
      v25 = v24;
      type metadata accessor for MAGUtilities();
      v26 = swift_getObjCClassFromMetadata();
      v27 = [objc_opt_self() bundleForClass_];
      v28 = sub_257ECF4C0();
      v29 = sub_257ECF4C0();
      v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

      if (!v30)
      {
        sub_257ECF500();
        v30 = sub_257ECF4C0();
      }

      [v25 setText_];
    }

    v31 = [v8 textLabel];
    if (v31)
    {
      v32 = v31;
      [v31 setNumberOfLines_];
    }

    v33 = [v8 textLabel];
    if (v33)
    {
      v34 = v33;
      [v33 setLineBreakMode_];
    }

    v35 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) == 1)
    {
      return v8;
    }

    v36 = *(v35 + 241);
    v37 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v37 setOn_];
    [v37 addTarget:v2 action:sel_didToggleFlashlightSwitch_ forControlEvents:4096];
    [v8 setAccessoryView_];
    goto LABEL_35;
  }

  v38 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_availableTextDetectionFeedbacks);
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v38 + 16))
  {
    v40 = *(v38 + result + 32);
    v41 = [v8 textLabel];
    if (v41)
    {
      v42 = v41;
      sub_257BE42A0(v40);
      v43 = sub_257ECF4C0();

      [v42 setText_];
    }

    v37 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v44 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) == 1)
    {
      goto LABEL_36;
    }

    [v37 setOn_];
    v37 = v37;
    [v37 setTag_];
    [v37 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    [v8 setAccessoryView_];

LABEL_35:
    [v8 setAccessoryType_];
LABEL_36:

    return v8;
  }

  __break(1u);
  return result;
}

double sub_257CF3B44(void *a1)
{
  v2 = v1;
  sub_257CF2978();
  v4 = [a1 tag];
  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
  memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) != 1)
  {
    v8 = *(v7 + 200);

    if ([a1 isOn])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5550, &unk_257EDA0B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v6;
      sub_257EB05F8(inited);
      sub_257CF3D1C(v8);
    }

    else
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        v11 = (v8 + 32);
        v12 = MEMORY[0x277D84F90];
        do
        {
          v15 = *v11;
          if (v6 != v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF2704(0, *(v12 + 16) + 1, 1);
            }

            v14 = *(v12 + 16);
            v13 = *(v12 + 24);
            if (v14 >= v13 >> 1)
            {
              sub_257BF2704((v13 > 1), v14 + 1, 1);
            }

            *(v12 + 16) = v14 + 1;
            *(v12 + v14 + 32) = v15;
          }

          ++v11;
          --v10;
        }

        while (v10);
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      sub_257CF3D1C(v12);
    }
  }

  return result;
}

double sub_257CF3D1C(char *a1)
{
  sub_257CF2978();
  v7 = a1;

  sub_257CF41A8(&v7);
  v3 = v7;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D74310() & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  else
  {
    sub_257CE3F40(v3, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_257CF41A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C6705C(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  v4 = sub_257ED05F0();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v15[0] = v7 + 32;
    v15[1] = v6;
    sub_257CF42E8(v15, v16, v17, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_257CF42E8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_257C66E20(v9);
    }

    v75 = v9 + 16;
    v76 = *(v9 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v9[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_257CF4828((*a3 + *v77), (*a3 + *v79), (*a3 + v80), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_112;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_113;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_114;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10) & (v11 ^ 1);
      v13 = v10 + 2;
      while (v6 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = v11 & (v14 ^ 1);
        ++v13;
        v11 = v14;
        if (v12 != v15)
        {
          v8 = v13 - 1;
          if (!v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v16 = v8 - 1;
        v17 = v10;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCB00(0, *(v9 + 2) + 1, 1, v9);
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v9 = sub_257BFCB00((v28 > 1), v29 + 1, 1, v9);
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_103;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_110;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_71:
        if (v55)
        {
          goto LABEL_105;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_108;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_78:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v72 = *&v9[16 * v71 + 32];
        v73 = *&v9[16 * v33 + 40];
        sub_257CF4828((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), (*a3 + v73), v32);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_257C66E20(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        sub_257C66D94(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_101;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_102;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_104;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + v8 - 1;
  v23 = v10 - v8;
LABEL_30:
  v24 = *(v21 + v8);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    if ((*v26 & (v24 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      ++v22;
      --v23;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = *v26;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_257CF4828(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        while (1)
        {
          v16 = v5 + 1;
          if (*v15 == 1 && *(v10 - 1) == 0)
          {
            break;
          }

          v18 = v10 - 1;
          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v18;
          }

          --v5;
          --v10;
          if (v18 <= v4)
          {
            v10 = v18;
            goto LABEL_46;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v6 != v4)
    {
LABEL_48:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v4 == 1 && *v6 == 0)
        {
          v14 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v4 + 1;
          v13 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v12)
            {
              goto LABEL_19;
            }
          }
        }

        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_48;
    }
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_257CF4A2C(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

id sub_257CF4B34()
{
  result = AXDeviceSupportsDetectionMode();
  if (result)
  {
    sub_257CF5168();
    result = [swift_getObjCClassFromMetadata() supportsFrameSemantics_];
  }

  byte_27F8F78A0 = result;
  return result;
}

uint64_t sub_257CF4B98()
{
  result = AXDeviceSupportsHuman();
  byte_27F8F78A1 = result;
  return result;
}

uint64_t sub_257CF4BDC(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_257CF4C78()
{
  v55[1] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECDA30();
  v54 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECCB70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v50 - v19;
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = [v22 URLsForDirectory:9 inDomains:1];

  v24 = sub_257ECF810();
  v25 = *(v24 + 16);

  if (!v25)
  {
    return 0;
  }

  v26 = [v21 defaultManager];
  v27 = [v26 URLsForDirectory:9 inDomains:1];

  v28 = sub_257ECF810();
  if (!*(v28 + 16))
  {
    __break(1u);
  }

  v52 = v0;
  (*(v7 + 16))(v13, v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

  sub_257ECCB00();
  v29 = *(v7 + 8);
  v29(v13, v6);
  v30 = sub_257ECCB50();
  v31 = [v21 &selRef__setOutputMode_ + 3];
  v32 = sub_257ECF4C0();
  v33 = [v31 fileExistsAtPath_];

  if (v33)
  {
    goto LABEL_6;
  }

  v51 = v29;
  v34 = [v21 defaultManager];
  v35 = sub_257ECF4C0();
  v55[0] = 0;
  v36 = [v34 createDirectoryAtPath:v35 withIntermediateDirectories:1 attributes:0 error:v55];

  v37 = v52;
  if (!v36)
  {
    v39 = v55[0];

    v40 = sub_257ECC9F0();

    swift_willThrow();
    v41 = v53;
    sub_257ECD3B0();
    v42 = v40;
    v43 = sub_257ECDA20();
    v44 = sub_257ECFBD0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v40;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_257BAC000, v43, v44, "Cannot create recording URL: %@", v45, 0xCu);
      sub_257C11B14(v46);
      MEMORY[0x259C74820](v46, -1, -1);
      MEMORY[0x259C74820](v45, -1, -1);
    }

    (*(v54 + 8))(v41, v37);
    v51(v20, v6);
    return 0;
  }

  v38 = v55[0];
  v29 = v51;
LABEL_6:
  v29(v20, v6);
  return v30;
}

unint64_t sub_257CF5168()
{
  result = qword_27F8F8060;
  if (!qword_27F8F8060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F8060);
  }

  return result;
}

id sub_257CF51B4()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultConfiguration];
  sub_257BD2C2C(0, &unk_281543D80, 0x277D75220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78C0, &qword_257EE23C8);
  v3 = sub_257ED06A0();
  v4 = sub_257ECF4C0();
  v5 = [v2 tweakedConfigurationForCaller:v3 usage:v4];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0, &unk_257ED9DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  v7 = v5;
  v8 = MEMORY[0x277D837D0];
  sub_257ED0280();
  *(inited + 96) = v8;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  sub_257ED0280();
  *(inited + 168) = MEMORY[0x277D83E88];
  *(inited + 144) = 29527;
  v18 = 0xD000000000000010;
  v19 = 0x8000000257EFEB60;
  sub_257ED0280();
  v9 = sub_257BEA014(&unk_286904FC8);
  sub_257BE4084(&unk_286904FE8, &qword_27F8F9EF0, &unk_257EEBE90);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB2E0, &unk_257EE23D0);
  *(inited + 216) = v9;
  sub_257BE88A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0, &qword_257EE0A60);
  swift_arrayDestroy();
  v10 = sub_257ECF3C0();

  v11 = [objc_opt_self() feedbackWithDictionaryRepresentation_];

  [v7 setInteractionStartedFeedback_];
  v12 = [v7 interactionStartedFeedback];
  [v7 setInteractionEndedFeedback_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75E20]) initWithConfiguration_];
  [v13 _setOutputMode_];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator] = v13;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v14 = v13;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v15 setExclusiveTouch_];
  [v15 addTarget:v15 action:sel_shutterButtonDown_ forControlEvents:1];

  return v15;
}

id sub_257CF56F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_257BD2C2C(0, &qword_27F8F78B0, 0x277D75C68);
  sub_257CF5978();
  v5 = sub_257ECFA60();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_touchesEnded_withEvent_, v5, a2);

  v6 = [v2 isTouchInside];
  v7 = *&v2[OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator];
  if (v6)
  {
    [*&v2[OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator] userInteractionEnded];
    v8 = &selRef_prepare;
  }

  else
  {
    v8 = &selRef_userInteractionCancelled;
  }

  return [v7 *v8];
}

unint64_t sub_257CF5978()
{
  result = qword_27F8F78B8;
  if (!qword_27F8F78B8)
  {
    sub_257BD2C2C(255, &qword_27F8F78B0, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78B8);
  }

  return result;
}

uint64_t sub_257CF59E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980, &qword_257EE2510);
  v1 = *(v0 - 8);
  v47 = v0;
  v48 = v1;
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v37 - v6;
  v8 = sub_257ECC400();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988, &qword_257EE2518);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v21 = *MEMORY[0x277CB9F50];
  v44 = *(v9 + 104);
  v42 = v21;
  v41 = v8;
  v44(v15, v21, v8);
  v45 = v9 + 104;
  sub_257ECC4B0();
  v43 = *(v9 + 8);
  v43(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v40 = sub_257ECC420();
  v46 = *(v48 + 8);
  v48 += 8;
  v46(v7, v47);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v22 = v41;
  v23 = v44;
  v44(v15, v21, v41);
  sub_257ECC4B0();
  v24 = v43;
  v43(v15, v22);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v39 = sub_257ECC420();
  v25 = v47;
  v46(v7, v47);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v26 = v41;
  v23(v15, v42, v41);
  sub_257ECC4B0();
  v24(v15, v26);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v38 = sub_257ECC420();
  v27 = v25;
  v28 = v46;
  v46(v7, v27);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v44(v15, v42, v26);
  sub_257ECC4B0();
  v43(v15, v26);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v29 = sub_257ECC420();
  v30 = v47;
  v28(v7, v47);
  sub_257ECC4A0();
  v31 = sub_257ECC420();
  v28(v7, v30);
  sub_257ECC4A0();
  v32 = sub_257ECC420();
  v28(v7, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990, qword_257EE2520);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_257EE23E0;
  v34 = v39;
  *(v33 + 32) = v40;
  *(v33 + 40) = v34;
  *(v33 + 48) = v38;
  *(v33 + 56) = v29;
  *(v33 + 64) = v31;
  *(v33 + 72) = v32;
  v35 = sub_257ECC410();

  return v35;
}

uint64_t sub_257CF6018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980, &qword_257EE2510);
  v1 = *(v0 - 8);
  v47 = v0;
  v48 = v1;
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v37 - v6;
  v8 = sub_257ECC400();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988, &qword_257EE2518);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v21 = *MEMORY[0x277CB9F50];
  v44 = *(v9 + 104);
  v42 = v21;
  v41 = v8;
  v44(v15, v21, v8);
  v45 = v9 + 104;
  sub_257ECC4B0();
  v43 = *(v9 + 8);
  v43(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v40 = sub_257ECC420();
  v46 = *(v48 + 8);
  v48 += 8;
  v46(v7, v47);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v22 = v41;
  v23 = v44;
  v44(v15, v21, v41);
  sub_257ECC4B0();
  v24 = v43;
  v43(v15, v22);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v39 = sub_257ECC420();
  v25 = v47;
  v46(v7, v47);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v26 = v41;
  v23(v15, v42, v41);
  sub_257ECC4B0();
  v24(v15, v26);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v38 = sub_257ECC420();
  v27 = v25;
  v28 = v46;
  v46(v7, v27);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v44(v15, v42, v26);
  sub_257ECC4B0();
  v43(v15, v26);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v29 = sub_257ECC420();
  v30 = v47;
  v28(v7, v47);
  sub_257ECC4A0();
  v31 = sub_257ECC420();
  v28(v7, v30);
  sub_257ECC4A0();
  v32 = sub_257ECC420();
  v28(v7, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990, qword_257EE2520);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_257EE23E0;
  v34 = v39;
  *(v33 + 32) = v40;
  *(v33 + 40) = v34;
  *(v33 + 48) = v38;
  *(v33 + 56) = v29;
  *(v33 + 64) = v31;
  *(v33 + 72) = v32;
  v35 = sub_257ECC410();

  return v35;
}

uint64_t sub_257CF664C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980, &qword_257EE2510);
  v1 = *(v0 - 8);
  v50 = v0;
  v51 = v1;
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v40 - v6;
  v8 = sub_257ECC400();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988, &qword_257EE2518);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v21 = *MEMORY[0x277CB9F50];
  v47 = *(v9 + 104);
  v45 = v21;
  v44 = v8;
  v47(v15, v21, v8);
  v48 = v9 + 104;
  sub_257ECC4B0();
  v22 = *(v9 + 8);
  v46 = v9 + 8;
  v22(v15, v8);
  v23 = v22;
  sub_257ECC4D0();
  sub_257ECC4F0();
  v43 = sub_257ECC420();
  v49 = *(v51 + 8);
  v51 += 8;
  v49(v7, v50);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v24 = v21;
  v25 = v44;
  v26 = v47;
  v47(v15, v24, v44);
  sub_257ECC4B0();
  v27 = v23;
  v23(v15, v25);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v42 = sub_257ECC420();
  v28 = v50;
  v49(v7, v50);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v29 = v44;
  v26(v15, v45, v44);
  sub_257ECC4B0();
  v27(v15, v29);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v41 = sub_257ECC420();
  v49(v7, v28);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v47(v15, v45, v29);
  sub_257ECC4B0();
  v27(v15, v29);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v30 = sub_257ECC420();
  v32 = v49;
  v31 = v50;
  v49(v7, v50);
  sub_257ECC4A0();
  v33 = sub_257ECC420();
  v32(v7, v31);
  sub_257ECC4A0();
  v34 = sub_257ECC420();
  v32(v7, v31);
  sub_257ECC4A0();
  v35 = sub_257ECC420();
  v32(v7, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990, qword_257EE2520);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_257EDFA20;
  v37 = v42;
  *(v36 + 32) = v43;
  *(v36 + 40) = v37;
  *(v36 + 48) = v41;
  *(v36 + 56) = v30;
  *(v36 + 64) = v33;
  *(v36 + 72) = v34;
  *(v36 + 80) = v35;
  v38 = sub_257ECC410();

  return v38;
}

uint64_t sub_257CF6CD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980, &qword_257EE2510);
  v1 = *(v0 - 8);
  v42 = v0;
  v43 = v1;
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v32 - v6;
  v8 = sub_257ECC400();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988, &qword_257EE2518);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v39 = *MEMORY[0x277CB9F50];
  v41 = *(v9 + 104);
  v41(v15);
  v40 = v9 + 104;
  sub_257ECC4B0();
  v38 = *(v9 + 8);
  v34 = v9 + 8;
  v38(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v37 = sub_257ECC420();
  v21 = v42;
  v33 = *(v43 + 8);
  v43 += 8;
  v33(v7, v42);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v22 = v39;
  v32 = v8;
  (v41)(v15, v39, v8);
  sub_257ECC4B0();
  v23 = v38;
  v38(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v36 = sub_257ECC420();
  v24 = v33;
  v33(v7, v21);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v25 = v22;
  v26 = v32;
  (v41)(v15, v25, v32);
  sub_257ECC4B0();
  v23(v15, v26);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v35 = sub_257ECC420();
  v24(v7, v42);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v41)(v15, v39, v26);
  sub_257ECC4B0();
  v38(v15, v26);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v27 = sub_257ECC420();
  v24(v7, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990, qword_257EE2520);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_257EDBE50;
  v29 = v36;
  *(v28 + 32) = v37;
  *(v28 + 40) = v29;
  *(v28 + 48) = v35;
  *(v28 + 56) = v27;
  v30 = sub_257ECC410();

  return v30;
}

uint64_t sub_257CF7240()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7968, &qword_257EE24F8);
  v1 = *(v0 - 8);
  v38 = v0;
  v39 = v1;
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v30 - v6;
  v8 = sub_257ECC400();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7970, &qword_257EE2500);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  sub_257CE5428();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v35 = *MEMORY[0x277CB9F50];
  v37 = *(v9 + 104);
  v37(v15);
  sub_257ECC4B0();
  v21 = *(v9 + 8);
  v32 = v9 + 8;
  v36 = v21;
  v21(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v34 = sub_257ECC420();
  v22 = v38;
  v31 = *(v39 + 8);
  v39 += 8;
  v31(v7, v38);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v37)(v15, v35, v8);
  sub_257ECC4B0();
  v36(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v33 = sub_257ECC420();
  v23 = v22;
  v24 = v31;
  v31(v7, v23);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v37)(v15, v35, v8);
  sub_257ECC4B0();
  v36(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v25 = sub_257ECC420();
  v24(v7, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7978, &qword_257EE2508);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_257EDBBA0;
  v27 = v33;
  *(v26 + 32) = v34;
  *(v26 + 40) = v27;
  *(v26 + 48) = v25;
  v28 = sub_257ECC410();

  return v28;
}

uint64_t sub_257CF76BC()
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7950, &qword_257EE24E0);
  v31 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v0, v1, v2, v3);
  v5 = &v29 - v4;
  v6 = sub_257ECC400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7958, &qword_257EE24E8);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  sub_257CF9714();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v35 = *MEMORY[0x277CB9F50];
  v37 = *(v7 + 104);
  v33 = v6;
  v37(v13);
  sub_257ECC4B0();
  v34 = *(v7 + 8);
  v36 = v7 + 8;
  v34(v13, v6);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v32 = sub_257ECC420();
  v30 = *(v31 + 8);
  v19 = v38;
  v30(v5, v38);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v20 = v33;
  (v37)(v13, v35, v33);
  sub_257ECC4B0();
  v34(v13, v20);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v31 = sub_257ECC420();
  v21 = v19;
  v22 = v30;
  v30(v5, v21);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v23 = v33;
  (v37)(v13, v35, v33);
  sub_257ECC4B0();
  v34(v13, v23);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v24 = sub_257ECC420();
  v22(v5, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7960, &qword_257EE24F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_257EDBBA0;
  v26 = v31;
  *(v25 + 32) = v32;
  *(v25 + 40) = v26;
  *(v25 + 48) = v24;
  v27 = sub_257ECC410();

  return v27;
}

uint64_t sub_257CF7B58(uint64_t a1)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7938, &qword_257EE24C8);
  v2 = *(v1 - 8);
  v47 = v1;
  v48 = v2;
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = v36 - v7;
  v9 = sub_257ECC400();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7940, &qword_257EE24D0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v22 = sub_257CF9768();
  sub_257ECC4E0();
  sub_257ECC4D0();
  swift_getKeyPath();
  v45 = sub_257CF9864();
  sub_257ECC3F0();

  sub_257ECC4C0();

  sub_257ECC4D0();
  v43 = *MEMORY[0x277CB9F50];
  v38 = *(v10 + 104);
  v38(v16);
  v36[0] = v10 + 104;
  sub_257ECC4B0();
  v23 = *(v10 + 8);
  v36[1] = v10 + 8;
  v37 = v23;
  v23(v16, v9);
  sub_257ECC4D0();
  v42 = v8;
  sub_257ECC4F0();
  v41 = v22;
  v40 = sub_257ECC420();
  v24 = *(v48 + 8);
  v48 += 8;
  v44 = v24;
  v24(v8, v47);
  sub_257ECC4E0();
  sub_257ECC4D0();
  swift_getKeyPath();
  sub_257ECC3F0();

  sub_257ECC4C0();

  sub_257ECC4D0();
  v25 = v9;
  v26 = v38;
  (v38)(v16, v43, v9);
  sub_257ECC4B0();
  v27 = v9;
  v28 = v37;
  v37(v16, v27);
  sub_257ECC4D0();
  v29 = v42;
  sub_257ECC4F0();
  v39 = sub_257ECC420();
  v44(v29, v47);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v26)(v16, v43, v25);
  sub_257ECC4B0();
  v28(v16, v25);
  sub_257ECC4D0();
  swift_getKeyPath();
  sub_257ECC3F0();

  sub_257ECC4C0();

  sub_257ECC4D0();
  v30 = v42;
  sub_257ECC4F0();
  v31 = sub_257ECC420();
  v44(v30, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7948, &qword_257EE24D8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_257EDBBA0;
  v33 = v39;
  *(v32 + 32) = v40;
  *(v32 + 40) = v33;
  *(v32 + 48) = v31;
  v34 = sub_257ECC410();

  return v34;
}

uint64_t sub_257CF8118()
{
  v0 = sub_257ECC490();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_257CF9864();
  sub_257ECC3F0();

  sub_257CF9768();
  sub_257ECC480();
  v8 = sub_257ECC470();
  (*(v1 + 8))(v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7930, &qword_257EE24C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257ED6D30;
  *(v9 + 32) = v8;
  v10 = sub_257ECC460();

  return v10;
}

uint64_t sub_257CF8288()
{
  v0 = sub_257ECC440();
  v1 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8, &qword_257EE2458);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BD0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_257ECC430();

  return v3;
}

uint64_t sub_257CF8334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7910, &qword_257EE2480);
  v1 = *(v0 - 8);
  v38 = v0;
  v39 = v1;
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v30 - v6;
  v8 = sub_257ECC400();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7918, &qword_257EE2488);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  sub_257CF97BC();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v37 = *MEMORY[0x277CB9F50];
  v32 = *(v9 + 104);
  v32(v15);
  sub_257ECC4B0();
  v35 = *(v9 + 8);
  v36 = v9 + 8;
  v35(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v34 = sub_257ECC420();
  v21 = v38;
  v31 = *(v39 + 8);
  v39 += 8;
  v31(v7, v38);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v22 = v32;
  (v32)(v15, v37, v8);
  sub_257ECC4B0();
  v35(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v33 = sub_257ECC420();
  v23 = v21;
  v24 = v31;
  v31(v7, v23);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v22)(v15, v37, v8);
  sub_257ECC4B0();
  v35(v15, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v25 = sub_257ECC420();
  v24(v7, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7920, &qword_257EE2490);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_257EDBBA0;
  v27 = v33;
  *(v26 + 32) = v34;
  *(v26 + 40) = v27;
  *(v26 + 48) = v25;
  v28 = sub_257ECC410();

  return v28;
}

uint64_t sub_257CF87B8()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78F8, &qword_257EE2468);
  v0 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v1, v2, v3, v4);
  v6 = v29 - v5;
  v7 = sub_257ECC400();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7900, &qword_257EE2470);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  sub_257CF9810();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v32 = *MEMORY[0x277CB9F50];
  v31 = *(v8 + 104);
  v29[0] = v7;
  v31(v14);
  sub_257ECC4B0();
  v20 = *(v8 + 8);
  v29[1] = v8 + 8;
  v30 = v20;
  v20(v14, v7);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v34 = sub_257ECC420();
  v21 = *(v0 + 8);
  v22 = v35;
  v21(v6, v35);
  sub_257ECC4A0();
  v33 = sub_257ECC420();
  v21(v6, v22);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v23 = v29[0];
  (v31)(v14, v32, v29[0]);
  sub_257ECC4B0();
  v30(v14, v23);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v24 = sub_257ECC420();
  v21(v6, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7908, &qword_257EE2478);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_257EDBBA0;
  v26 = v33;
  *(v25 + 32) = v34;
  *(v25 + 40) = v26;
  *(v25 + 48) = v24;
  v27 = sub_257ECC410();

  return v27;
}

uint64_t sub_257CF8BBC()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8, &qword_257EE2458);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8C40()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8, &qword_257EE2458);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8CC4()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8, &qword_257EE2458);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8D48()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8, &qword_257EE2458);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8DCC()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8, &qword_257EE2458);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8E50()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8, &qword_257EE2458);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8EF0()
{
  v0 = sub_257ECC520();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v22) = 0;
  v22 = sub_257C7B3C8(&v22);
  sub_257C7B704();
  sub_257ECC530();
  v21 = sub_257ECC510();
  v8 = *(v1 + 8);
  v8(v7, v0);
  LOBYTE(v22) = 1;
  v22 = sub_257C7B3C8(&v22);
  sub_257ECC530();
  v20 = sub_257ECC510();
  v8(v7, v0);
  LOBYTE(v22) = 3;
  v22 = sub_257C7B3C8(&v22);
  sub_257ECC530();
  v19 = sub_257ECC510();
  v8(v7, v0);
  LOBYTE(v22) = 2;
  v22 = sub_257C7B3C8(&v22);
  sub_257ECC530();
  v9 = sub_257ECC510();
  v8(v7, v0);
  sub_257CE5428();
  sub_257ECC530();
  v10 = sub_257ECC510();
  v8(v7, v0);
  sub_257CF9714();
  sub_257ECC530();
  v11 = sub_257ECC510();
  v8(v7, v0);
  v22 = sub_257D7E0D4();
  sub_257CF9768();
  sub_257ECC530();
  v12 = sub_257ECC510();
  v8(v7, v0);
  sub_257CF97BC();
  sub_257ECC530();
  v13 = sub_257ECC510();
  v8(v7, v0);
  sub_257CF9810();
  sub_257ECC530();
  v14 = sub_257ECC510();
  v8(v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78F0, &qword_257EE2460);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257EDB2E0;
  v16 = v20;
  *(v15 + 32) = v21;
  *(v15 + 40) = v16;
  *(v15 + 48) = v19;
  *(v15 + 56) = v9;
  *(v15 + 64) = v10;
  *(v15 + 72) = v11;
  *(v15 + 80) = v12;
  *(v15 + 88) = v13;
  *(v15 + 96) = v14;
  v17 = sub_257ECC500();

  return v17;
}

uint64_t sub_257CF9410()
{
  v0 = sub_257ECC3E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C7B704();
  sub_257ECC3D0();
  v8 = sub_257ECC3C0();
  v9 = *(v1 + 8);
  v9(v7, v0);
  sub_257CE5428();
  sub_257ECC3D0();
  v10 = sub_257ECC3C0();
  v9(v7, v0);
  sub_257CF9714();
  sub_257ECC3D0();
  v11 = sub_257ECC3C0();
  v9(v7, v0);
  sub_257CF9768();
  sub_257ECC3D0();
  v12 = sub_257ECC3C0();
  v9(v7, v0);
  sub_257CF97BC();
  sub_257ECC3D0();
  v13 = sub_257ECC3C0();
  v9(v7, v0);
  sub_257CF9810();
  sub_257ECC3D0();
  v14 = sub_257ECC3C0();
  v9(v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E0, &qword_257EE2450);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257EE23E0;
  *(v15 + 32) = v8;
  *(v15 + 40) = v10;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 72) = v14;
  v16 = sub_257ECC3B0();

  return v16;
}

unint64_t sub_257CF9714()
{
  result = qword_27F8F78C8;
  if (!qword_27F8F78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78C8);
  }

  return result;
}

unint64_t sub_257CF9768()
{
  result = qword_27F8F78D0;
  if (!qword_27F8F78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78D0);
  }

  return result;
}

unint64_t sub_257CF97BC()
{
  result = qword_27F8F78D8;
  if (!qword_27F8F78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78D8);
  }

  return result;
}

unint64_t sub_257CF9810()
{
  result = qword_281545A90;
  if (!qword_281545A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A90);
  }

  return result;
}

unint64_t sub_257CF9864()
{
  result = qword_27F8F7928;
  if (!qword_27F8F7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7928);
  }

  return result;
}

id sub_257CF98BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v4;
    v8 = v0;
    v9 = sub_257D47B08(v7, v5);
    v10 = *(v0 + v1);
    *(v8 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_257CF994C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label);
  }

  else
  {
    v4 = sub_257CF99B0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257CF99B0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    if (!v7)
    {
      sub_257ECF500();
      v7 = sub_257ECF4C0();
    }

    [v2 setText_];
  }

  [v2 setTextAlignment_];
  [v2 setAlpha_];
  v8 = [objc_opt_self() systemFontOfSize_];
  [v2 setFont_];

  return v2;
}

id sub_257CF9B6C()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control] == 7)
  {
    v2 = sub_257CF98BC();
    sub_257D14A40(v2);
    v3 = sub_257ECF4C0();

    [v2 setAccessibilityLabel_];

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    v9 = sub_257ECF4C0();

    [v1 setAccessibilityHint_];

    sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
    v10 = sub_257ECF7F0();
    [v1 setAccessibilityCustomActions_];
  }

  v11 = v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed];
  v12 = *MEMORY[0x277D76580];
  v13 = [v1 accessibilityTraits];
  if (v11)
  {
    v14 = v13 | v12;
  }

  else
  {
    v14 = v13 & ~v12;
  }

  [v1 setAccessibilityTraits_];
  v15 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  LODWORD(v15) = v1[v15];
  v16 = *MEMORY[0x277D76598];
  v17 = [v1 accessibilityTraits];
  if (v15)
  {
    v18 = v17 | v16;
  }

  else
  {
    v18 = v17 & ~v16;
  }

  [v1 setAccessibilityTraits_];
  return [v1 setAccessibilityTraits_];
}

id sub_257CF9E28(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_257CF994C();
  v5 = v4;
  v6 = 0.0;
  if (*(v1 + v3) == 1)
  {
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed))
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];

  return sub_257CF9B6C();
}

uint64_t (*sub_257CF9EC4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257CF9F4C;
}

void sub_257CF9F4C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257CF994C();
    v7 = v6;
    v8 = 0.0;
    if (*(v4 + v5) == 1)
    {
      v8 = 1.0;
      if (*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed))
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];

    sub_257CF9B6C();
  }

  free(v3);
}

id sub_257CF9FEC()
{
  v1 = sub_257CF994C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (v0[v2] == 1)
  {
    v3 = 1.0;
    if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed])
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257CFA0D8();
  sub_257CF9B6C();
  v4 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label;
  v5 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label] setEnabled_];
  [*&v0[v4] setUserInteractionEnabled_];
  return [v0 setUserInteractionEnabled_];
}

void sub_257CFA0D8()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 systemYellowColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

    v6 = v5;
  }

  [v0 setTintColor_];
}

void sub_257CFA1E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *a1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_freezeFrameReviewSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuButtonSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuOptionsSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_detectionModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu] = 0;
  v9 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes;
  *&v3[v9] = sub_257CA930C();
  v10 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable;
  v3[v10] = sub_257CA9238();
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] = 1;
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control] = v8;
  v11 = &v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config];
  *v11 = a2;
  v11[1] = a3;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257CFA468();
  sub_257CFA754();
  v13 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
  v14 = *&v12[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
  *&v12[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction] = v13;

  if (v13)
  {
    v15 = v12;
    [v15 addInteraction_];
    if (v8 == 7)
    {
      if (v15[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable])
      {
        v16 = 1;
      }

      else
      {
        v17 = sub_257CA930C();
        v16 = sub_257C592D0(7u, v17);
      }

      v15[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] = v16;
    }

    [v15 setShowsLargeContentViewer_];

    [v15 setScalesLargeContentImage_];
    v18 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v15 addInteraction_];
  }

  else
  {
    __break(1u);
  }
}

id sub_257CFA468()
{
  v1 = v0;
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v2 = [objc_opt_self() whiteColor];
  [v1 setTintColor_];

  v3 = sub_257D14B7C();
  v4 = sub_257CF98BC();
  [v4 setImage:v3 forState:0];

  v5 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = sub_257CF994C();
  v7 = v6;
  v8 = 0.0;
  if (v1[v5] == 1)
  {
    v8 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed])
    {
      v8 = 0.25;
    }
  }

  [v6 setAlpha_];

  sub_257CF9B6C();
  v9 = [v1 layer];
  [v9 setCornerRadius_];

  v10 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton;
  v12 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton] layer];
  [v12 setCornerRadius_];

  [*&v1[v11] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  if (v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] == 1)
  {
    sub_257CFB280();
  }

  v13 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label] setAlpha_];
  [v1 addSubview_];
  [v1 addSubview_];
  return sub_257CFB7D8();
}

double sub_257CFA754()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A38, &unk_257EE2648);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v92 = v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v89 = v71 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48, &qword_257EE2658);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v15, v16, v17, v18);
  v84 = v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v20 - 8, v21, v22, v23, v24);
  v86 = v71 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v88 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v31, v32, v33, v34);
  v36 = v71 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6F80, &qword_257EDF9A8);
  v82 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v43 = v71 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A50, &unk_257EDF9B0);
  *&result = MEMORY[0x28223BE20](v44, v45, v46, v47, v48).n128_u64[0];
  v52 = v71 - v51;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    v78 = v49;
    v80 = v3;
    v81 = v2;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
    v76 = v36;
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
    sub_257ECDD30();
    swift_endAccess();
    v53 = MEMORY[0x277CBCEC8];
    v83 = MEMORY[0x277CBCEC8];
    v77 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
    sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, v53);
    sub_257ECDC50();
    v75 = objc_opt_self();
    v54 = [v75 mainRunLoop];
    v94 = v54;
    v72 = sub_257ED0080();
    v55 = *(v72 - 8);
    v73 = *(v55 + 56);
    v74 = v55 + 56;
    v56 = v86;
    v73(v86, 1, 1, v72);
    v71[1] = sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
    sub_257BD2D4C(&qword_2815444A0, &qword_27F8F6F80, &qword_257EDF9A8, MEMORY[0x277CBCAF0]);
    v71[0] = sub_257BD2C74();
    sub_257ECDDF0();
    sub_257BE4084(v56, &unk_27F8F4DB0, &unk_257ED8210);

    (*(v82 + 8))(v43, v37);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = MEMORY[0x277CBCD60];
    sub_257BD2D4C(&qword_281544210, &unk_27F8F7A50, &unk_257EDF9B0, MEMORY[0x277CBCD60]);
    v58 = sub_257ECDE50();

    (*(v78 + 8))(v52, v44);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_freezeFrameReviewSubscription) = v58;

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0, &qword_257EE6E20);
    v59 = v84;
    sub_257ECDD30();
    swift_endAccess();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48, &qword_257EE2658, v83);
    v60 = v87;
    v61 = sub_257ECDE50();

    (*(v85 + 8))(v59, v60);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuButtonSubscription) = v61;

    swift_beginAccess();
    v62 = v76;
    sub_257ECDD30();
    swift_endAccess();
    v63 = [v75 mainRunLoop];
    v94 = v63;
    v73(v56, 1, 1, v72);
    v64 = v89;
    v65 = v93;
    sub_257ECDDF0();
    sub_257BE4084(v56, &unk_27F8F4DB0, &unk_257ED8210);

    (*(v88 + 8))(v62, v65);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, v57);
    v66 = v91;
    v67 = sub_257ECDE50();

    (*(v90 + 8))(v64, v66);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_detectionModeSubscription) = v67;

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70, &unk_257EE2660);
    v68 = v92;
    sub_257ECDD30();
    swift_endAccess();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&qword_27F8F7A78, &unk_27F8F7A38, &unk_257EE2648, v83);
    v69 = v81;
    v70 = sub_257ECDE50();

    (*(v80 + 8))(v68, v69);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuOptionsSubscription) = v70;
  }

  return result;
}

void sub_257CFB280()
{
  v33 = MEMORY[0x277D84F90];
  if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control] == 7)
  {
    v1 = v0;
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes];
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
      v31 = *MEMORY[0x277CE5890];
      v30 = *MEMORY[0x277CE5EA8];

      v4 = 32;
      do
      {
        v5 = *(v2 + v4);
        if (v5 == 7 && (v6 = [objc_opt_self() defaultDeviceWithDeviceType:v31 mediaType:v30 position:0]) != 0)
        {
          v7 = v6;
          v8 = [v6 localizedName];
          sub_257ECF500();
        }

        else
        {
          sub_257CA8200(v5);
        }

        sub_257CA837C(v5);
        v9 = swift_allocObject();
        *(v9 + 16) = v5;
        *(v9 + 24) = v1;
        v10 = v1;
        v11 = sub_257ECFF90();
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
        sub_257ECFD50();

        [v11 setState_];
        v18 = v11;
        MEMORY[0x259C72300]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_257ECF830();
        }

        sub_257ECF860();

        ++v4;
        --v3;
      }

      while (v3);
      v19 = v33;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v22 = sub_257ECF4C0();
    v23 = sub_257ECF4C0();
    v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

    sub_257ECF500();
    if (sub_257C7C40C(v19) >> 62)
    {
      sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);
      sub_257ED0420();
    }

    else
    {

      sub_257ED0660();
      sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);
    }

    sub_257BD2C2C(0, qword_281543E10, 0x277D75710);
    v25 = sub_257ECFEA0();
    v26 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu;
    v27 = *&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu] = v25;

    v28 = sub_257CF98BC();
    v29 = *&v1[v26];
    [v28 setMenu_];

    [*&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton] setShowsMenuAsPrimaryAction_];
  }
}

id sub_257CFB7D8()
{
  v1 = v0;
  v2 = sub_257CF994C();
  [v2 setIsAccessibilityElement_];

  v3 = sub_257CF98BC();
  [v3 setIsAccessibilityElement_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton;
  v5 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control;
  v6 = *&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton];
  sub_257D14A40(v6);
  v7 = sub_257ECF4C0();

  [v6 setAccessibilityLabel_];

  v8 = *&v1[v4];
  Control.rawValue.getter();
  v9 = v1;
  v10 = v8;
  v11 = sub_257ECF4C0();

  [v10 setAccessibilityIdentifier_];

  if (v9[v5] == 7)
  {
    v12 = *&v9[v4];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();
    v15 = v12;
    v16 = [v14 bundleForClass_];
    v17 = sub_257ECF4C0();
    v18 = sub_257ECF4C0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    sub_257ECF500();
    v20 = sub_257ECF4C0();

    [v15 setAccessibilityHint_];
  }

  v21 = *MEMORY[0x277D765A0];
  v22 = *&v9[v4];
  [v22 setAccessibilityTraits_];

  [v9 setAccessibilityTraits_];

  return sub_257CF9B6C();
}

void sub_257CFBAB0()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - v6 - v15 - v16;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v6;
    v23.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v23);
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v20 = sub_257CF98BC();
  [v20 setFrame_];

  v21 = sub_257CF994C();
  [v21 setFrame_];

  sub_257CFBCB0();
}

void sub_257CFBCB0()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    v1 = v0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable) != 1)
    {
      goto LABEL_12;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_2815447E0;

    if (v2 != -1)
    {
      v3 = swift_once();
    }

    MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
    sub_257ECFD50();

    if (v30 == 3)
    {
      v13 = sub_257ECF4C0();
      v14 = objc_opt_self();
      v15 = [v14 systemImageNamed_];

      if (v15)
      {
      }

      v28 = sub_257ECF4C0();
      v29 = [v14 systemImageNamed_];

      v24 = sub_257CF98BC();
      [v24 setImage:v29 forState:0];

      goto LABEL_21;
    }

    MEMORY[0x28223BE20](v8, v9, v10, v11, v12);

    sub_257ECFD50();

    if (v30 == 4)
    {
      v16 = sub_257D14B7C();
    }

    else
    {
LABEL_12:
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

      if (v31 != 7)
      {
        v25 = sub_257D14B7C();
        v26 = sub_257CF98BC();
        [v26 setImage:v25 forState:0];

        v27 = 0;
LABEL_22:
        *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = v27;
        sub_257CFA0D8();
        return;
      }

      v23 = sub_257ECF4C0();
      v16 = [objc_opt_self() systemImageNamed_];
    }

    v24 = sub_257CF98BC();
    [v24 setImage:v16 forState:0];

LABEL_21:
    v27 = 1;
    goto LABEL_22;
  }
}

void sub_257CFC1BC(uint64_t a1, uint64_t a2)
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

    v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] = v4;
    sub_257CF9FEC();
  }
}

uint64_t sub_257CFC2A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v10 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v11, v12, v13, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  aBlock[4] = sub_257CFE8E4;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_44;
  v18 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v9, v18);
  _Block_release(v18);

  (*(v21 + 8))(v9, v3);
  return (*(v10 + 8))(v16, v20);
}

void sub_257CFC554(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_257CFBCB0();
    sub_257CFB280();
  }
}

void sub_257CFC5AC(uint64_t a1, uint64_t a2)
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

    v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] = v4;
    sub_257CF9FEC();
  }
}

uint64_t sub_257CFC694(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v10 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v11, v12, v13, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  aBlock[4] = sub_257CFE8B8;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_24;
  v18 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v9, v18);
  _Block_release(v18);

  (*(v21 + 8))(v9, v3);
  return (*(v10 + 8))(v16, v20);
}

void sub_257CFC944(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v3 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes;
    *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes] = v5;

    v4 = (v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable] & 1) != 0 || sub_257C592D0(7u, *&v2[v3]);
    v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] = v4;
    sub_257CFBCB0();
    sub_257CFB280();
  }
}

void sub_257CFCA6C(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v17)
  {
    if (![v17 isRunning])
    {
LABEL_17:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257CFB280();
    switch(a2)
    {
      case 7:
        v12 = sub_257ECF4C0();
        v13 = [objc_opt_self() systemImageNamed_];

        v14 = sub_257CF98BC();
        [v14 setImage:v13 forState:0];

        *(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 1;
        break;
      case 4:
        if (*(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable) == 1)
        {
          v8 = sub_257D14B7C();
          v9 = sub_257CF98BC();
          [v9 setImage:v8 forState:0];

LABEL_15:
          *(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 1;
          break;
        }

        break;
      case 3:
        v5 = sub_257ECF4C0();
        v6 = objc_opt_self();
        v7 = [v6 systemImageNamed_];

        if (v7)
        {
        }

        v15 = sub_257ECF4C0();
        v16 = [v6 systemImageNamed_];

        v9 = sub_257CF98BC();
        [v9 setImage:v16 forState:0];

        goto LABEL_15;
      default:
        v10 = sub_257D14B7C();
        v11 = sub_257CF98BC();
        [v11 setImage:v10 forState:0];

        *(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 0;
        break;
    }

    sub_257CFA0D8();
    goto LABEL_17;
  }
}

void sub_257CFCE0C()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v1)
    {
      if ([v1 isRunning])
      {
        if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu) & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
        }
      }
    }
  }
}

id sub_257CFD0AC()
{
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_257D53928();
  v3 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control;
  v4 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control], v2);

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

uint64_t sub_257CFD300()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_257CFD348(uint64_t **a1))(void *a1)
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
  v2[4] = sub_257CF9EC4(v2);
  return sub_257CA4CF4;
}

uint64_t sub_257CFD3F0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257CF9B6C();

  return swift_unknownObjectRelease();
}

uint64_t sub_257CFD440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257CF98BC();
  return v0;
}

uint64_t sub_257CFD524()
{
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_2815447E0;

    if (v2 != -1)
    {
      v3 = swift_once();
    }

    MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
    sub_257ECFD50();

    return sub_257CA8200(v8);
  }

  return result;
}

id sub_257CFD6DC(uint64_t a1)
{
  sub_257D14A40(a1);
  v1 = sub_257ECF4C0();

  return v1;
}

void sub_257CFD804(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction;
  v13 = *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
  if (v13)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v14 = v13;
    v15 = a1;
    v16 = sub_257ECFF50();

    if (v16)
    {
      v17 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
      swift_beginAccess();
      v18 = v2[v17];
      sub_257ECD350();
      v19 = v2;
      v20 = sub_257ECDA20();
      v21 = sub_257ECFBD0();
      if (os_log_type_enabled(v20, v21))
      {
        v33 = v19;
        v22 = v18 ^ 1;
        v23 = swift_slowAlloc();
        v32 = v18;
        v24 = v23;
        *v23 = 67109632;
        *(v23 + 4) = v22;
        v19 = v33;
        *(v23 + 8) = 1024;
        *(v23 + 10) = v2[v17];
        *(v23 + 14) = 1024;
        *(v23 + 16) = *(&v19->isa + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v20, v21, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v24, 0x14u);
        v25 = v24;
        v18 = v32;
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
            sub_257CFE6C4(1);

            if (*&v2[v12])
            {
              [v19 removeInteraction:?];
              v29 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
              v30 = *&v2[v12];
              *&v2[v12] = v29;

              if (v29)
              {
                [v19 addInteraction:v29];
                return;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
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
}

void sub_257CFDB30(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v33 - v17;
  v19 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction;
  v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
  if (v20)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v21 = v20;
    v22 = a1;
    v23 = sub_257ECFF50();

    if (v23)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v29 = sub_257ECDA20();
        v32 = sub_257ECFBD0();
        if (!os_log_type_enabled(v29, v32))
        {
          goto LABEL_16;
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_257BAC000, v29, v32, "will present", v31, 2u);
        goto LABEL_13;
      }

      v24 = *&v2[v19];
      if (v24)
      {
        [v24 cancelInteraction];
        v25 = *&v2[v19];
        if (v25)
        {
          v26 = v25;
          sub_257CFE6C4(1);

          if (*&v2[v19])
          {
            [v2 removeInteraction_];
            v27 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
            v28 = *&v2[v19];
            *&v2[v19] = v27;

            if (v27)
            {
              [v2 addInteraction_];
              sub_257ECD350();
              v29 = sub_257ECDA20();
              v30 = sub_257ECFBD0();
              if (!os_log_type_enabled(v29, v30))
              {
                v18 = v11;
                goto LABEL_16;
              }

              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&dword_257BAC000, v29, v30, "will not present", v31, 2u);
              v18 = v11;
LABEL_13:
              MEMORY[0x259C74820](v31, -1, -1);
LABEL_16:

              (*(v5 + 8))(v18, v4);
              return;
            }

            goto LABEL_20;
          }

LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }
}

id sub_257CFDEF8(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *&v4[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
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
    v26 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
    swift_beginAccess();
    LODWORD(v26) = v18[v26];

    *(v21 + 14) = v26;
    *(v21 + 18) = 1024;
    v27 = v18[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed];

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

void sub_257CFE284(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257CFE304(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257CFE380()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_freezeFrameReviewSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuButtonSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuOptionsSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_detectionModeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu) = 0;
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes;
  *(v0 + v1) = sub_257CA930C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable;
  *(v0 + v2) = sub_257CA9238();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu) = 1;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CFE4BC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
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
        v20 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
        swift_beginAccess();
        *(v19 + 4) = *(&v16->isa + v20);
        *(v19 + 8) = 1024;
        *(v19 + 10) = *(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v17, v18, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v19, 0xEu);
        MEMORY[0x259C74820](v19, -1, -1);
      }

      else
      {

        v17 = v16;
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  return 0;
}

uint64_t sub_257CFE6C4(char a1)
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
    v15 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
    swift_beginAccess();
    *(v14 + 10) = *(&v11->isa + v15);
    *(v14 + 14) = 1024;
    *(v14 + 16) = *(&v11->isa + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v12, v13, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v14, 0x14u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return (*(v4 + 8))(v10, v3);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t type metadata accessor for MFReaderModeHostingController(uint64_t a1)
{
  result = qword_27F8F7A80;
  if (!qword_27F8F7A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CFE9FC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void static MAGThermalMonitor.thermalEvents()(uint64_t a1@<X8>)
{
  v79 = a1;
  v103 = *MEMORY[0x277D85DE8];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A90, &qword_257EE2790);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v1, v2, v3, v4);
  v81 = &v76 - v5;
  v89 = sub_257ECFE60();
  MEMORY[0x28223BE20](v89, v6, v7, v8, v9);
  v88 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECFD20();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v85 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECF190();
  MEMORY[0x28223BE20](v17 - 8, v18, v19, v20, v21);
  v84 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A98, &qword_257EE2798);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25, v26, v27, v28);
  v30 = &v76 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0, &qword_257EE27A0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33, v34, v35, v36);
  v38 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v38;
  v90 = v37;
  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  v45 = &v76 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D80, &qword_257EDBB68);
  v93 = *(v46 - 8);
  v94 = v46;
  v51 = MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v53 = &v76 - v52;
  (*(v24 + 104))(v30, *MEMORY[0x277D85778], v23, v51);
  v91 = v53;
  sub_257ECF940();
  (*(v24 + 8))(v30, v23);
  out_token = -1;
  v54 = swift_allocObject();
  *(v54 + 16) = -1;
  v80 = (v54 + 16);
  v55 = *(v32 + 16);
  v55(v38, v45, v31);
  v56 = *(v32 + 80);
  v82 = swift_allocObject();
  v95 = v32;
  v57 = *(v32 + 32);
  v58 = v83;
  v57(v82 + ((v56 + 16) & ~v56), v83, v31);
  v92 = v45;
  v55(v58, v45, v31);
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  v83 = v31;
  v57(v59 + ((v56 + 24) & ~v56), v58, v31);
  sub_257CFF978();
  v90 = v54;
  sub_257ECC3F0();
  sub_257ECF160();
  v60.n128_f64[0] = (*(v86 + 104))(v85, *MEMORY[0x277D85268], v87);
  aBlock = MEMORY[0x277D84F90];
  sub_257CFF9C4(v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7458, &qword_257EE1570);
  sub_257CD58DC();
  sub_257ED0180();
  v61 = v82;
  v62 = sub_257ECFE70();
  v63 = *MEMORY[0x277D85E40];
  v101 = sub_257CFF6A4;
  v102 = v61;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_257CFFA1C;
  v100 = &block_descriptor_25;
  v64 = _Block_copy(&aBlock);
  v65 = v62;
  sub_257ECC3F0();

  LODWORD(v63) = notify_register_dispatch(v63, &out_token, v65, v64);
  _Block_release(v64);
  if (v63)
  {

LABEL_4:
    sub_257CFFA88();
    swift_allocError();
    swift_willThrow();

    (*(v95 + 8))(v92, v83);
    (*(v93 + 8))(v91, v94);

    return;
  }

  v66 = v81;
  v67 = *MEMORY[0x277D85E48];
  v101 = sub_257CFF8F8;
  v102 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_257CFFA1C;
  v100 = &block_descriptor_9;
  v68 = _Block_copy(&aBlock);
  sub_257ECC3F0();

  v69 = v80;
  swift_beginAccess();
  LODWORD(v67) = notify_register_dispatch(v67, v69, v65, v68);
  swift_endAccess();
  _Block_release(v68);

  if (v67)
  {
    goto LABEL_4;
  }

  v70 = out_token;
  v71 = *(v90 + 16);
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  *(v72 + 20) = v71;
  v73 = v83;
  v74 = v92;
  sub_257ECF950();
  v75 = OSThermalNotificationCurrentLevel();
  BYTE4(aBlock) = 0;
  LODWORD(aBlock) = v75;
  sub_257ECF960();

  (*(v77 + 8))(v66, v78);
  (*(v95 + 8))(v74, v73);
  (*(v93 + 32))(v79, v91, v94);
}

_DWORD *sub_257CFF434@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t MAGThermalMonitor.ThermalPressure.description.getter()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    v2 = 0x6C616E696D6F4ELL;
    v3 = 0x7976616548;
    v4 = 0x676E697070617254;
    if (v1 != 4)
    {
      v4 = 0x676E697065656C53;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x746867694CLL;
    if (v1 != 1)
    {
      v5 = 0x6574617265646F4DLL;
    }

    if (v1)
    {
      v2 = v5;
    }

    if (v1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v7 = sub_257ED0600();
    MEMORY[0x259C72150](v7);

    MEMORY[0x259C72150](41, 0xE100000000000000);
    return 0x206E776F6E6B6E55;
  }
}

uint64_t sub_257CFF5AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A90, &qword_257EE2790);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v10 - v6;
  v8 = OSThermalNotificationCurrentLevel();
  v11 = 0;
  v10[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0, &qword_257EE27A0);
  sub_257ECF960();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_257CFF6A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0, &qword_257EE27A0);

  return sub_257CFF5AC();
}

uint64_t sub_257CFF720(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A90, &qword_257EE2790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &state64 - v9;
  state64 = 0;
  swift_beginAccess();
  notify_get_state(*(a2 + 16), &state64);
  v11 = state64;
  if (HIDWORD(state64))
  {
    __break(1u);
  }

  if (state64 <= 19)
  {
    if (!state64)
    {
      v12 = 0x100000000;
      goto LABEL_14;
    }

    if (state64 == 10)
    {
      v12 = 0x100000000;
      v11 = 1;
      goto LABEL_14;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (state64 == 20)
  {
    v12 = 0x100000000;
    v11 = 2;
    goto LABEL_14;
  }

  if (state64 == 40)
  {
    v12 = 0x100000000;
    v11 = 4;
    goto LABEL_14;
  }

  if (state64 != 50)
  {
    goto LABEL_13;
  }

  v12 = 0x100000000;
  v11 = 5;
LABEL_14:
  v13 = v12 | v11;
  v16 = v13;
  v17 = (v13 | 0x8000000000uLL) >> 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0, &qword_257EE27A0);
  sub_257ECF960();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_257CFF8F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0, &qword_257EE27A0);
  v3 = *(v1 + 16);

  return sub_257CFF720(a1, v3);
}

unint64_t sub_257CFF978()
{
  result = qword_27F8F7AA8;
  if (!qword_27F8F7AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F7AA8);
  }

  return result;
}

unint64_t sub_257CFF9C4(__n128 a1)
{
  result = qword_27F8F7450;
  if (!qword_27F8F7450)
  {
    sub_257ECFE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7450);
  }

  return result;
}

double sub_257CFFA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);

  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257CFFA88()
{
  result = qword_27F8F7AB0;
  if (!qword_27F8F7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7AB0);
  }

  return result;
}

uint64_t sub_257CFFADC()
{
  v1 = *(v0 + 20);
  notify_cancel(*(v0 + 16));

  return notify_cancel(v1);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MAGThermalMonitor.ThermalPressure(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MAGThermalMonitor.ThermalPressure(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_257CFFBEC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257CFFC08(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAGThermalMonitor.ThermalEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 5))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 4) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 4) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MAGThermalMonitor.ThermalEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 4) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_257CFFD48()
{
  result = qword_27F8F7AB8;
  if (!qword_27F8F7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7AB8);
  }

  return result;
}

void static ActivitySymbolSource.firstAvailableSymbol(excluding:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 56;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v3 <= 0x2B)
  {
    v6 = 43;
  }

  else
  {
    v6 = v3;
  }

  while (v3 != v6)
  {
    v7 = &unk_286905000 + 16 * v3;
    v9 = *(v7 + 4);
    v8 = *(v7 + 5);
    ++v3;
    if (!*(a1 + 16))
    {

LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF26A4(0, *(v5 + 16) + 1, 1);
      }

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_257BF26A4((v16 > 1), v17 + 1, 1);
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 16 * v17;
      *(v18 + 32) = v9;
      *(v18 + 40) = v8;
      if (v3 == 43)
      {
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_2;
    }

    sub_257ED07B0();

    sub_257ECF5D0();
    v10 = sub_257ED0800();
    v11 = -1 << *(a1 + 32);
    v12 = v10 & ~v11;
    if (((*(v4 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_16;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = (*(a1 + 48) + 16 * v12);
      v15 = *v14 == v9 && v14[1] == v8;
      if (v15 || (sub_257ED0640() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v4 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v3 == 43)
    {
      if (*(v5 + 16))
      {
        goto LABEL_24;
      }

LABEL_25:

      return;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for MAGVQATranscriptHostingController(uint64_t a1)
{
  result = qword_27F8F7AC0;
  if (!qword_27F8F7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257D00094(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for MFReaderTextFormatterView(uint64_t a1)
{
  result = qword_27F8F7AD0;
  if (!qword_27F8F7AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257D00234(uint64_t a1)
{
  sub_257C09F4C(319);
  if (v1 <= 0x3F)
  {
    sub_257D00350(319);
    if (v2 <= 0x3F)
    {
      sub_257D00478(319, &qword_27F8F7AE8, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_257D003E4(319);
        if (v4 <= 0x3F)
        {
          sub_257C09FE0(319);
          if (v5 <= 0x3F)
          {
            sub_257D00478(319, &qword_27F8F6750, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_257D00350(uint64_t a1)
{
  if (!qword_27F8F7AE0)
  {
    type metadata accessor for MFReaderSpeechFormatterModel(255);
    sub_257D062A4(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel, &unk_257EE5120);
    v1 = sub_257ECE180();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F7AE0);
    }
  }
}

void sub_257D003E4(uint64_t a1)
{
  if (!qword_27F8F7AF0)
  {
    type metadata accessor for MFReaderBlockManager(255);
    sub_257D062A4(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
    v1 = sub_257ECE340();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F7AF0);
    }
  }
}

void sub_257D00478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_257D004E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for MFReaderTextFormatterView(0);
  sub_257BE401C(v1 + *(v18 + 32), v17, &qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECE1D0();
    return (*(*(v19 - 8) + 32))(a1, v17, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v10, v3);
  }
}

uint64_t sub_257D006F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B00, &qword_257EE2A48);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B08, &qword_257EE2A50);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v58 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B10, &qword_257EE2A58);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = (&v49 - v20);
  v57 = a1;
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257D062A4(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v55 = v65;
  v56 = v64;
  v54 = v66;
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  swift_storeEnumTagMultiPayload();
  v22 = v15[13];
  *(v21 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  v23 = (v21 + v15[14]);
  *v23 = xmmword_257EDB760;
  v23[1] = xmmword_257EDB770;
  v24 = (v21 + v15[15]);
  v61 = 0;
  sub_257ECEE50();
  v25 = v63;
  *v24 = v62;
  v24[1] = v25;
  v26 = v21 + v15[16];
  LOBYTE(v61) = 0;
  sub_257ECEE50();
  v27 = v63;
  *v26 = v62;
  *(v26 + 1) = v27;
  v28 = (v21 + v15[17]);
  v61 = 0;
  sub_257ECEE50();
  v29 = v63;
  *v28 = v62;
  v28[1] = v29;
  v30 = (v21 + v15[18]);
  v61 = 0;
  sub_257ECEE50();
  v31 = v63;
  *v30 = v62;
  v30[1] = v31;
  v32 = v15[20];
  *(v21 + v32) = 2;
  v34 = v15[21];
  v33 = v15[22];
  v53 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B18, &qword_257EE2AF8);
  v36 = *(v35 - 8);
  v51 = *(v36 + 56);
  v52 = v36 + 56;
  v51(v21 + v33, 1, 1, v35);
  v37 = v15[23];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B20, &unk_257EE2B00);
  v39 = *(*(v38 - 8) + 56);
  v39(v21 + v37, 1, 1, v38);
  v40 = v15[25];
  v41 = v21 + v15[24];
  v49 = (v21 + v15[26]);
  v50 = v40;
  *(v21 + v32) = 0;
  *(v21 + v34) = 0;
  v43 = v57;
  v42 = v58;
  sub_257D00C84(v57, v58);
  v39(v42, 0, 1, v38);
  sub_257C0DA64(v42, v21 + v37, &qword_27F8F7B08, &qword_257EE2A50);
  v44 = v59;
  sub_257D04208(v43, v59);
  v51(v44, 0, 1, v35);
  sub_257C0DA64(v44, v21 + v53, &qword_27F8F7B00, &qword_257EE2A48);
  v45 = v21 + v15[19];
  v46 = v55;
  *v45 = v56;
  *(v45 + 1) = v46;
  v45[16] = v54;
  *v41 = 0x4072C00000000000;
  v41[8] = 0;
  v47 = v49;
  *(v21 + v50) = 0;
  *v47 = 0;
  v47[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28, &qword_257EECED0);
  sub_257BD2D4C(&qword_27F8F7B30, &qword_27F8F7B10, &qword_257EE2A58, &protocol conformance descriptor for MFMenu<A, B>);
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28, &qword_257EECED0, MEMORY[0x277CE1198]);
  sub_257ECECA0();
  return sub_257BE4084(v21, &qword_27F8F7B10, &qword_257EE2A58);
}

uint64_t sub_257D00C84@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v264 = a2;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C18, &qword_257EE2BF8);
  MEMORY[0x28223BE20](v261, v3, v4, v5, v6);
  v273 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v263 = (&v230 - v13);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C20, &qword_257EE2C00);
  MEMORY[0x28223BE20](v260, v14, v15, v16, v17);
  v279 = &v230 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v262 = (&v230 - v24);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C28, &qword_257EE2C08);
  MEMORY[0x28223BE20](v259, v25, v26, v27, v28);
  v278 = &v230 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v277 = (&v230 - v35);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C58, &qword_257EE1E00) - 8;
  MEMORY[0x28223BE20](v255, v36, v37, v38, v39);
  v250 = &v230 - v40;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7738, &qword_257EE1E08);
  MEMORY[0x28223BE20](v258, v41, v42, v43, v44);
  v272 = &v230 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v257 = &v230 - v51;
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v276 = &v230 - v57;
  v254 = sub_257ECE1D0();
  v252 = *(v254 - 8);
  MEMORY[0x28223BE20](v254, v58, v59, v60, v61);
  v251 = &v230 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_257ECE840();
  v238 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v63, v64, v65, v66);
  v236 = &v230 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C30, &qword_257EE2C10);
  MEMORY[0x28223BE20](v237, v68, v69, v70, v71);
  v234 = (&v230 - v72);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C38, &qword_257EE2C18);
  v245 = *(v243 - 8);
  MEMORY[0x28223BE20](v243, v73, v74, v75, v76);
  v235 = &v230 - v77;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C40, &qword_257EE2C20) - 8;
  MEMORY[0x28223BE20](v242, v78, v79, v80, v81);
  v240 = &v230 - v82;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C48, &qword_257EE2C28) - 8;
  MEMORY[0x28223BE20](v247, v83, v84, v85, v86);
  v244 = &v230 - v87;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C50, &qword_257EE2C30) - 8;
  MEMORY[0x28223BE20](v246, v88, v89, v90, v91);
  v271 = &v230 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93, v94, v95, v96, v97);
  v241 = &v230 - v98;
  MEMORY[0x28223BE20](v99, v100, v101, v102, v103);
  v275 = &v230 - v104;
  v105 = type metadata accessor for MFMenuDivider(0);
  MEMORY[0x28223BE20](v105, v106, v107, v108, v109);
  v270 = &v230 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111, v112, v113, v114, v115);
  v117 = (&v230 - v116);
  v118 = type metadata accessor for MFReaderTextFormatterView(0);
  v119 = *(v118 - 8);
  MEMORY[0x28223BE20](v118 - 8, v120, v121, v122, v123);
  v232 = v124;
  v125 = &v230 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C58, &qword_257EE2C38);
  v269 = *(v274 - 8);
  MEMORY[0x28223BE20](v274, v126, v127, v128, v129);
  v267 = &v230 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v131, v132, v133, v134, v135);
  v137 = &v230 - v136;
  v233 = type metadata accessor for MFReaderTextFormatterView;
  v230 = v125;
  sub_257D06030(a1, v125, type metadata accessor for MFReaderTextFormatterView);
  v138 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v139 = swift_allocObject();
  v231 = type metadata accessor for MFReaderTextFormatterView;
  sub_257D0623C(v125, v139 + v138, type metadata accessor for MFReaderTextFormatterView);
  v280 = a1;
  v140 = a1;
  v265 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C60, &qword_257EE2C40);
  sub_257D05898(&qword_27F8F7C68, &qword_27F8F7C60, &qword_257EE2C40, sub_257D0591C);
  v266 = v137;
  sub_257ECEEA0();
  v249 = objc_opt_self();
  v141 = [v249 tertiarySystemBackgroundColor];
  v142 = sub_257ECED30();
  *v117 = swift_getKeyPath();
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  swift_storeEnumTagMultiPayload();
  v143 = v105[5];
  *(v117 + v143) = swift_getKeyPath();
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  v144 = v105[6];
  v145 = v105[7];
  v256 = v105;
  v146 = v105[8];
  *(v117 + v144) = 0x4020000000000000;
  *(v117 + v145) = 0x4072C00000000000;
  v268 = v117;
  *(v117 + v146) = v142;
  v147 = sub_257ECE500();
  v148 = v234;
  *v234 = v147;
  *(v148 + 8) = 0x4034000000000000;
  *(v148 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C90, &unk_257EE2C58);
  *&v283 = &unk_2869052D0;
  swift_getKeyPath();
  v149 = v230;
  sub_257D06030(v140, v230, v233);
  v150 = swift_allocObject();
  sub_257D0623C(v149, v150 + v138, v231);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5590, &qword_257EDA370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C98, &qword_257EE2C88);
  sub_257BD2D4C(&qword_27F8F7CA0, &qword_27F8F5590, &qword_257EDA370, MEMORY[0x277D83980]);
  sub_257D05BBC();
  sub_257D05C10();
  sub_257ECEF80();
  v151 = v236;
  sub_257ECE830();
  v152 = sub_257BD2D4C(&qword_27F8F7D08, &qword_27F8F7C30, &qword_257EE2C10, MEMORY[0x277CE1138]);
  v153 = v235;
  v154 = v237;
  sub_257ECEC50();
  (*(v238 + 8))(v151, v239);
  sub_257BE4084(v148, &qword_27F8F7C30, &qword_257EE2C10);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v156 = [objc_opt_self() bundleForClass_];
  v157 = sub_257ECF4C0();
  v158 = sub_257ECF4C0();
  v159 = [v156 localizedStringForKey:v157 value:0 table:v158];

  v160 = v250;
  v161 = sub_257ECF500();
  v163 = v162;

  *&v283 = v161;
  *(&v283 + 1) = v163;
  *&v282 = v154;
  *(&v282 + 1) = v152;
  swift_getOpaqueTypeConformance2();
  sub_257BDAB08();
  v164 = v240;
  v165 = v243;
  sub_257ECEBF0();

  (*(v245 + 8))(v153, v165);
  v166 = sub_257ECE920();
  v167 = &v164[*(v242 + 44)];
  v168 = v164;
  *v167 = v166;
  *(v167 + 8) = 0u;
  *(v167 + 24) = 0u;
  v167[40] = 1;
  LOBYTE(v152) = sub_257ECE990();
  v169 = v251;
  sub_257D004E8(v251);
  sub_257ECE1C0();
  v170 = *(v252 + 8);
  v171 = v254;
  v170(v169, v254);
  sub_257ECDF40();
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v180 = v244;
  sub_257C0DD14(v168, v244, &qword_27F8F7C40, &qword_257EE2C20);
  v181 = v180 + *(v247 + 44);
  *v181 = v152;
  *(v181 + 8) = v173;
  *(v181 + 16) = v175;
  *(v181 + 24) = v177;
  *(v181 + 32) = v179;
  *(v181 + 40) = 0;
  v182 = v241;
  sub_257C0DD14(v180, v241, &qword_27F8F7C48, &qword_257EE2C28);
  *(v182 + *(v246 + 44)) = 0x4008000000000000;
  sub_257C0DD14(v182, v275, &qword_27F8F7C50, &qword_257EE2C30);
  sub_257ECEF70();
  v183 = sub_257ECED60();
  v184 = sub_257ECE930();
  v185 = v160 + *(v255 + 44);
  *v185 = v183;
  *(v185 + 8) = v184;
  sub_257D004E8(v169);
  LOBYTE(v180) = sub_257ECE1C0();
  v170(v169, v171);
  if (v180)
  {
    v186 = [objc_opt_self() mainScreen];
    [v186 bounds];
  }

  sub_257ECF060();
  sub_257ECE080();
  v187 = v257;
  sub_257C0DD14(v160, v257, &qword_27F8F5C58, &qword_257EE1E00);
  v188 = (v187 + *(v258 + 36));
  v189 = v284;
  *v188 = v283;
  v188[1] = v189;
  v188[2] = v285;
  sub_257C0DD14(v187, v276, &qword_27F8F7738, &qword_257EE1E08);
  KeyPath = swift_getKeyPath();
  v191 = type metadata accessor for MFReaderCustomFontPickerMenu(0);
  v192 = v277;
  *(v277 + *(v191 + 20)) = KeyPath;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257D062A4(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  sub_257ECC3F0();
  *v192 = sub_257ECE150();
  v192[1] = v193;
  LOBYTE(KeyPath) = sub_257ECE920();
  v194 = v192 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D10, &qword_257EE2CB8) + 36);
  *v194 = KeyPath;
  *(v194 + 8) = 0u;
  *(v194 + 24) = 0u;
  v194[40] = 1;
  LOBYTE(KeyPath) = sub_257ECE990();
  sub_257ECDF40();
  v196 = v195;
  v198 = v197;
  v200 = v199;
  v202 = v201;
  v203 = v192 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D18, &qword_257EE2CC0) + 36);
  *v203 = KeyPath;
  *(v203 + 1) = v196;
  *(v203 + 2) = v198;
  *(v203 + 3) = v200;
  *(v203 + 4) = v202;
  v203[40] = 0;
  *(v192 + *(v259 + 36)) = 0x4000000000000000;
  v204 = [v249 tertiarySystemBackgroundColor];
  v205 = sub_257ECED30();
  v206 = swift_getKeyPath();
  v207 = v262;
  *v262 = v206;
  swift_storeEnumTagMultiPayload();
  v208 = v256;
  v209 = v256[5];
  *(v207 + v209) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v210 = v208[7];
  v211 = v208[8];
  *(v207 + v208[6]) = 0x4020000000000000;
  *(v207 + v210) = 0x4072C00000000000;
  *(v207 + v211) = v205;
  *(v207 + *(v260 + 36)) = 0x4000000000000000;
  v212 = sub_257ECE500();
  v213 = v263;
  *v263 = v212;
  *(v213 + 8) = 0;
  *(v213 + 16) = 1;
  v214 = v213 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D20, &qword_257EE2CC8) + 44);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v215 = type metadata accessor for MFReaderDynamicTypeSizeStepper(0);
  v216 = v215[5];
  v281 = 0;
  sub_257ECEE50();
  *(v214 + v216) = v282;
  v217 = v215[6];
  *(v214 + v217) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v214 + v215[7]) = 0;
  *(v214 + v215[8]) = 11;
  LOBYTE(v214) = sub_257ECE920();
  v218 = v213 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D28, &qword_257EE2CF8) + 36);
  *v218 = v214;
  *(v218 + 8) = 0u;
  *(v218 + 24) = 0u;
  *(v218 + 40) = 1;
  *(v213 + *(v261 + 36)) = 0x3FF0000000000000;
  v219 = *(v269 + 16);
  v220 = v267;
  v219(v267, v266, v274);
  v221 = v270;
  sub_257D06030(v268, v270, type metadata accessor for MFMenuDivider);
  v222 = v271;
  sub_257BE401C(v275, v271, &qword_27F8F7C50, &qword_257EE2C30);
  v223 = v272;
  sub_257BE401C(v276, v272, &qword_27F8F7738, &qword_257EE1E08);
  sub_257BE401C(v277, v278, &qword_27F8F7C28, &qword_257EE2C08);
  sub_257BE401C(v207, v279, &qword_27F8F7C20, &qword_257EE2C00);
  sub_257BE401C(v213, v273, &qword_27F8F7C18, &qword_257EE2BF8);
  v224 = v264;
  v219(v264, v220, v274);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D30, &qword_257EE2D00);
  sub_257D06030(v221, &v224[v225[12]], type metadata accessor for MFMenuDivider);
  sub_257BE401C(v222, &v224[v225[16]], &qword_27F8F7C50, &qword_257EE2C30);
  sub_257BE401C(v223, &v224[v225[20]], &qword_27F8F7738, &qword_257EE1E08);
  sub_257BE401C(v278, &v224[v225[24]], &qword_27F8F7C28, &qword_257EE2C08);
  sub_257BE401C(v279, &v224[v225[28]], &qword_27F8F7C20, &qword_257EE2C00);
  v226 = v273;
  sub_257BE401C(v273, &v224[v225[32]], &qword_27F8F7C18, &qword_257EE2BF8);
  sub_257BE4084(v213, &qword_27F8F7C18, &qword_257EE2BF8);
  sub_257BE4084(v207, &qword_27F8F7C20, &qword_257EE2C00);
  sub_257BE4084(v277, &qword_27F8F7C28, &qword_257EE2C08);
  sub_257BE4084(v276, &qword_27F8F7738, &qword_257EE1E08);
  sub_257BE4084(v275, &qword_27F8F7C50, &qword_257EE2C30);
  sub_257D06098(v268, type metadata accessor for MFMenuDivider);
  v227 = *(v269 + 8);
  v228 = v274;
  v227(v266, v274);
  sub_257BE4084(v226, &qword_27F8F7C18, &qword_257EE2BF8);
  sub_257BE4084(v279, &qword_27F8F7C20, &qword_257EE2C00);
  sub_257BE4084(v278, &qword_27F8F7C28, &qword_257EE2C08);
  sub_257BE4084(v272, &qword_27F8F7738, &qword_257EE1E08);
  sub_257BE4084(v271, &qword_27F8F7C50, &qword_257EE2C30);
  sub_257D06098(v270, type metadata accessor for MFMenuDivider);
  return (v227)(v267, v228);
}

void sub_257D022E4(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v10 - 8, v11, v12, v13, v14);
  v16 = &v40 - v15;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720, &qword_257EECF30);
  MEMORY[0x259C71A50](v45);
  if ((v45[0] & 1) == 0)
  {
    v41 = v17;
    v42 = v18;
    v43 = v19;
    sub_257ECC3F0();
    sub_257ECC3F0();
    MEMORY[0x259C71A50](&v47, v20);
    v45[0] = v17;
    v45[1] = v18;
    v46 = v19;
    v44 = (v47 & 1) == 0;
    sub_257ECEF40();
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    sub_257ECDD60();

    v23 = LOBYTE(v45[0]);
    v24 = sub_257ECF930();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    sub_257ECF900();
    v25 = v22;
    v26 = sub_257ECF8F0();
    if (!v23)
    {
      v27 = swift_allocObject();
      v30 = MEMORY[0x277D85700];
      v27[2] = v26;
      v27[3] = v30;
      v27[4] = v25;
      v29 = &unk_257EE1470;
      goto LABEL_8;
    }

    if (v23 == 1)
    {
      v27 = swift_allocObject();
      v28 = MEMORY[0x277D85700];
      v27[2] = v26;
      v27[3] = v28;
      v27[4] = v25;
      v29 = &unk_257EE2E40;
LABEL_8:
      sub_257C3FBD4(0, 0, v16, v29, v27);

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v41) = 2;
      v31 = v25;
      sub_257ECDD70();
      sub_257CD1E08();
      sub_257DCD40C();

      return;
    }

    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    v32[2] = v26;
    v32[3] = v33;
    v32[4] = v25;
    sub_257C3FBD4(0, 0, v16, &unk_257EE2E48, v32);

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v34 = qword_281548350 + 208;
    swift_beginAccess();
    LOBYTE(v47) = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v35 = sub_257ECF110();
    MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
    *(&v40 - 2) = &v47;
    *(&v40 - 1) = v34;
    sub_257ECFD40();
    (*(v3 + 8))(v9, v2);
    swift_endAccess();
  }

  else
  {
    type metadata accessor for MFReaderBlockManager(0);
    sub_257D062A4(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
    sub_257ECE320();
    __break(1u);
  }
}

uint64_t sub_257D02800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_257ECE500();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D58, &qword_257EE2DA8);
  sub_257D028F4(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_257ECE920();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C78, &qword_257EE2C48) + 36);
  *v5 = a1;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  LOBYTE(a1) = sub_257ECE940();
  sub_257ECDF40();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C60, &qword_257EE2C40);
  v15 = a2 + *(result + 36);
  *v15 = a1;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_257D028F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67E0, &qword_257EE1E10);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v85 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4960, &qword_257ED6D48);
  v90 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v89 = &v85 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6808, &unk_257EE2DB0);
  MEMORY[0x28223BE20](v87, v17, v18, v19, v20);
  v88 = &v85 - v21;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F67E8, &unk_257EDD1D0);
  MEMORY[0x28223BE20](v86, v22, v23, v24, v25);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v85 = &v85 - v33;
  MEMORY[0x28223BE20](v34, v35, v36, v37, v38);
  v40 = &v85 - v39;
  v41 = *(a1 + 56);
  if (v41)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v41;
    sub_257ECDD60();

    v94 = v27;
    v95 = a2;
    v92 = v11;
    v93 = v40;
    v91 = v4;
    if (v96)
    {
      v43 = sub_257ED0640();

      if ((v43 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = v42;
        sub_257ECDD60();

        if (v96 && v96 == 1)
        {
        }

        else
        {
          sub_257ED0640();
        }
      }
    }

    else
    {
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    v47 = sub_257ECF4C0();
    v48 = sub_257ECF4C0();
    v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

    v50 = sub_257ECF500();
    v52 = v51;

    v96 = v50;
    v97 = v52;
    sub_257BDAB08();
    v53 = sub_257ECEAF0();
    v55 = v54;
    v57 = v56;
    v96 = sub_257ECED90();
    v58 = sub_257ECEAB0();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_257C0300C(v53, v55, v57 & 1);

    v96 = v58;
    v97 = v60;
    v65 = v62 & 1;
    v98 = v62 & 1;
    v99 = v64;
    v66 = *MEMORY[0x277CDFA10];
    v67 = sub_257ECE1D0();
    (*(*(v67 - 8) + 104))(v10, v66, v67);
    sub_257D062A4(&qword_27F8F67F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_257ECF450())
    {
      sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0, &qword_257EE1E10, MEMORY[0x277D84338]);
      v68 = v89;
      sub_257ECEBB0();
      sub_257BE4084(v10, &qword_27F8F67E0, &qword_257EE1E10);
      sub_257C0300C(v58, v60, v65);

      v69 = v88;
      (*(v90 + 32))(v88, v68, v92);
      *(v69 + *(v87 + 36)) = 256;
      KeyPath = swift_getKeyPath();
      v71 = v85;
      sub_257C0DD14(v69, v85, &qword_27F8F6808, &unk_257EE2DB0);
      v72 = v71 + *(v86 + 36);
      *v72 = KeyPath;
      *(v72 + 8) = 0;
      v73 = v93;
      sub_257C0DD14(v71, v93, &unk_27F8F67E8, &unk_257EDD1D0);
      v74 = sub_257ECEE10();
      sub_257ECEA30();
      sub_257ECE9F0();
      v75 = sub_257ECEA50();

      v76 = swift_getKeyPath();
      v77 = sub_257ECED90();
      v78 = swift_getKeyPath();
      v79 = v94;
      sub_257BE401C(v73, v94, &unk_27F8F67E8, &unk_257EDD1D0);
      v80 = v95;
      sub_257BE401C(v79, v95, &unk_27F8F67E8, &unk_257EDD1D0);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D60, &qword_257EE2E38);
      v82 = v80 + *(v81 + 48);
      *v82 = 0;
      *(v82 + 8) = 1;
      v83 = (v80 + *(v81 + 64));
      *v83 = v74;
      v83[1] = v76;
      v83[2] = v75;
      v83[3] = v78;
      v83[4] = v77;
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257BE4084(v73, &unk_27F8F67E8, &unk_257EDD1D0);

      return sub_257BE4084(v79, &unk_27F8F67E8, &unk_257EDD1D0);
    }

    __break(1u);
  }

  type metadata accessor for MFReaderBlockManager(0);
  sub_257D062A4(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
  result = sub_257ECE320();
  __break(1u);
  return result;
}

uint64_t sub_257D03184@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v5 = type metadata accessor for MFReaderCustomThemeSelectionMenu(0);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7CF8, &qword_257EE2CB0);
  MEMORY[0x28223BE20](v116, v12, v13, v14, v15);
  v17 = &v98 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D38, &qword_257EE2D08);
  MEMORY[0x28223BE20](v114, v18, v19, v20, v21);
  v115 = &v98 - v22;
  v106 = sub_257ECE5A0();
  v109 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v23, v24, v25, v26);
  v105 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_257ECE750();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v28, v29, v30, v31);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MFReaderTextFormatterView(0);
  v102 = *(v34 - 8);
  v35 = *(v102 + 64);
  MEMORY[0x28223BE20](v34 - 8, v36, v37, v38, v39);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7CC8, &qword_257EE2C98);
  MEMORY[0x28223BE20](v108, v40, v41, v42, v43);
  v45 = &v98 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D40, &qword_257EE2D10);
  v103 = *(v46 - 8);
  v104 = v46;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v107 = &v98 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7CC0, &qword_257EE2C90);
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  MEMORY[0x28223BE20](v57, v58, v59, v60, v61);
  v64 = *a1;
  v117 = a3;
  v113 = v65;
  if (v64 <= 1)
  {
    v100 = v63;
    v101 = &v98 - v62;
  }

  else if (v64 == 2)
  {
    v100 = v63;
    v101 = &v98 - v62;
  }

  else
  {
    if (v64 != 3)
    {

LABEL_12:
      *(v11 + *(v5 + 20)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for MFReaderTextFormatterModel(0);
      sub_257D062A4(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
      sub_257ECC3F0();
      *v11 = sub_257ECE150();
      v11[1] = v83;
      sub_257ECE740();
      sub_257D062A4(&qword_27F8F7D00, type metadata accessor for MFReaderCustomThemeSelectionMenu, &unk_257EDB850);
      sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
      v84 = v112;
      sub_257ECEB60();
      (*(v110 + 8))(v33, v84);
      sub_257D06098(v11, type metadata accessor for MFReaderCustomThemeSelectionMenu);
      v85 = &v17[*(v116 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
      sub_257ECE310();
      *v85 = 0;
      v86 = &qword_27F8F7CF8;
      v87 = &qword_257EE2CB0;
      sub_257BE401C(v17, v115, &qword_27F8F7CF8, &qword_257EE2CB0);
      swift_storeEnumTagMultiPayload();
      sub_257D05C9C();
      sub_257D05EC8();
      sub_257ECE6F0();
      v88 = v17;
      return sub_257BE4084(v88, v86, v87);
    }

    v100 = v63;
    v101 = &v98 - v62;
  }

  v66 = sub_257ED0640();

  if (v66)
  {
    goto LABEL_12;
  }

  LOBYTE(v119) = v64;
  v67 = sub_257BE6B24();
  if (!v67)
  {
    goto LABEL_12;
  }

  v68 = v111;
  v69 = v67;
  sub_257D06030(v111, &v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MFReaderTextFormatterView);
  v70 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v71 = swift_allocObject();
  v72 = sub_257D0623C(&v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v71 + v70, type metadata accessor for MFReaderTextFormatterView);
  *(v71 + v70 + v35) = v64;
  MEMORY[0x28223BE20](v72, v73, v74, v75, v76);
  v102 = v69;
  *(&v98 - 4) = v69;
  *(&v98 - 3) = v68;
  *(&v98 - 16) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D48, &qword_257EE2D18);
  sub_257D06184();
  sub_257ECEEA0();
  v77 = &v45[*(v108 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
  sub_257ECE310();
  *v77 = 0;
  sub_257ECE740();
  v78 = sub_257D05DE4();
  v79 = sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v80 = v112;
  v99 = v78;
  v98 = v79;
  sub_257ECEB60();
  (*(v110 + 8))(v33, v80);
  sub_257BE4084(v45, &qword_27F8F7CC8, &qword_257EE2C98);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v81 = sub_257D41B3C(v119, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8, &unk_257EDB990);
  if (v81)
  {
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_257ED9BD0;
    sub_257ECE580();
  }

  else
  {
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_257ED6D30;
  }

  sub_257ECE590();
  v119 = v82;
  sub_257D062A4(&qword_27F8F5BD0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8, &unk_257EE2D50);
  sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8, &unk_257EE2D50, MEMORY[0x277D83970]);
  v90 = v105;
  v89 = v106;
  sub_257ED0180();
  v91 = v115;
  v119 = v108;
  v120 = v80;
  v121 = v99;
  v122 = v98;
  swift_getOpaqueTypeConformance2();
  v92 = v100;
  v93 = v104;
  v94 = v107;
  sub_257ECEC80();
  (*(v109 + 8))(v90, v89);
  (*(v103 + 8))(v94, v93);
  v118 = v64;
  v119 = sub_257BE6C10();
  v120 = v95;
  sub_257BDAB08();
  v96 = v101;
  sub_257ECE200();

  v86 = &qword_27F8F7CC0;
  v87 = &qword_257EE2C90;
  sub_257BE4084(v92, &qword_27F8F7CC0, &qword_257EE2C90);
  sub_257BE401C(v96, v91, &qword_27F8F7CC0, &qword_257EE2C90);
  swift_storeEnumTagMultiPayload();
  sub_257D05C9C();
  sub_257D05EC8();
  sub_257ECE6F0();

  v88 = v96;
  return sub_257BE4084(v88, v86, v87);
}

uint64_t sub_257D03D38(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_257ECDD70();
}

double sub_257D03DE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v46 = a1;
  v6 = type metadata accessor for MFReaderThemeSelectionOverlay(0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v42 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C10, &qword_257EDBA48);
  MEMORY[0x28223BE20](v44, v12, v13, v14, v15);
  v43 = &v42 - v16;
  v17 = sub_257ECE1D0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  sub_257D004E8(v24);
  LOBYTE(a2) = sub_257ECE1C0();
  v25 = *(v18 + 8);
  v25(v24, v17);
  if (a2)
  {
    v26 = [objc_opt_self() mainScreen];
    [v26 bounds];
  }

  sub_257D004E8(v24);
  v27 = sub_257ECE1C0();
  v25(v24, v17);
  if (v27)
  {
    v28 = [objc_opt_self() &selRef_contextMenuInteraction];
    [v28 &selRef__accessibilitySupplementaryFooterViews];
  }

  sub_257ECF060();
  sub_257ECE080();
  *&v49[6] = v50;
  *&v49[22] = v51;
  *&v49[38] = v52;
  KeyPath = swift_getKeyPath();
  v30 = v42;
  *v42 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v46;
  sub_257ECC3F0();
  sub_257ECDD60();

  if (sub_257D41B3C(v48, v45))
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = v30;
  v34 = v43;
  sub_257D0623C(v33, v43, type metadata accessor for MFReaderThemeSelectionOverlay);
  *(v34 + *(v44 + 36)) = v32;
  v35 = sub_257ECF060();
  v37 = v36;
  v38 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D48, &qword_257EE2D18) + 36);
  sub_257C0DD14(v34, v38, &qword_27F8F5C10, &qword_257EDBA48);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C20, &qword_257EE2D20) + 36));
  *v39 = v35;
  v39[1] = v37;
  *(a4 + 56) = *&v49[46];
  *(a4 + 42) = *&v49[32];
  result = *&v49[16];
  v41 = *v49;
  *(a4 + 26) = *&v49[16];
  *a4 = v31;
  *(a4 + 8) = 256;
  *(a4 + 10) = v41;
  return result;
}

uint64_t sub_257D04208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v159 = *MEMORY[0x277D85DE8];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B40, &qword_257EE2B10);
  MEMORY[0x28223BE20](v134, v3, v4, v5, v6);
  v132 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v133 = &v130 - v13;
  *(&v143 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B48, &qword_257EE2B18);
  MEMORY[0x28223BE20](*(&v143 + 1), v14, v15, v16, v17);
  v135 = &v130 - v18;
  *&v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B50, &qword_257EE2B20);
  MEMORY[0x28223BE20](v143, v19, v20, v21, v22);
  v139 = &v130 - v23;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B58, &qword_257EE2B28);
  v24 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v25, v26, v27, v28);
  v136 = &v130 - v29;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B60, &unk_257EE2B30);
  MEMORY[0x28223BE20](v141, v30, v31, v32, v33);
  v142 = &v130 - v34;
  v35 = sub_257ECE1D0();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37, v38, v39, v40);
  v42 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
  v146 = &v130 - v48;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B68, &unk_257EEDAE0);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v49, v50, v51, v52);
  v54 = &v130 - v53;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B70, &unk_257EE2B40);
  MEMORY[0x28223BE20](v140, v55, v56, v57, v58);
  v60 = &v130 - v59;
  v61 = *(a1 + 40);
  v62 = *(a1 + 48);
  *&v154 = *(a1 + 32);
  *(&v154 + 1) = v61;
  LOBYTE(v155) = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720, &qword_257EECF30);
  MEMORY[0x259C71A50](&v149, v63);
  if (v149)
  {
    v138 = v42;
    v64 = sub_257ECEE10();
    sub_257ECEA30();
    sub_257ECE9F0();
    v65 = sub_257ECEA50();

    KeyPath = swift_getKeyPath();
    sub_257D42694();
    sub_257C0DACC();
    sub_257ECC3F0();
    v67 = sub_257ECFEF0();
    *&v154 = 0;
    [v67 getWhite:&v154 alpha:0];

    v130 = v24;
    v131 = v36;
    if (*&v154 <= 0.5)
    {
      v68 = sub_257ECED90();
    }

    else
    {
      v68 = sub_257ECED70();
    }

    v101 = v68;

    v102 = swift_getKeyPath();
    *&v154 = v64;
    *(&v154 + 1) = KeyPath;
    *&v155 = v65;
    *(&v155 + 1) = v102;
    *&v156 = v101;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v104 = [objc_opt_self() bundleForClass_];
    v105 = sub_257ECF4C0();
    v106 = sub_257ECF4C0();
    v107 = [v104 localizedStringForKey:v105 value:0 table:v106];

    v108 = sub_257ECF500();
    v110 = v109;

    *&v149 = v108;
    *(&v149 + 1) = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C00, &unk_257EE2BB8);
    sub_257D05778();
    sub_257BDAB08();
    sub_257ECEBF0();

    v111 = v131;
    v112 = *(v131 + 104);
    v113 = v146;
    v112(v146, *MEMORY[0x277CDFA00], v35);
    v114 = v138;
    v112(v138, *MEMORY[0x277CDF988], v35);
    sub_257D062A4(&qword_27F8F7C10, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    if ((sub_257ECF440() & 1) == 0)
    {
      __break(1u);
    }

    v115 = *(v111 + 32);
    v116 = v133;
    v115(v133, v113, v35);
    v117 = v132;
    v118 = v134;
    v115((v116 + *(v134 + 48)), v114, v35);
    sub_257BE401C(v116, v117, &qword_27F8F7B40, &qword_257EE2B10);
    v119 = *(v118 + 48);
    v120 = v135;
    v115(v135, v117, v35);
    v121 = *(v111 + 8);
    v121(v117 + v119, v35);
    sub_257C0DD14(v116, v117, &qword_27F8F7B40, &qword_257EE2B10);
    v122 = *(&v143 + 1);
    v115((v120 + *(*(&v143 + 1) + 36)), (v117 + *(v118 + 48)), v35);
    v121(v117, v35);
    v123 = sub_257D056BC();
    v124 = sub_257BD2D4C(&qword_27F8F7C08, &qword_27F8F7B48, &qword_257EE2B18, MEMORY[0x277D83660]);
    v125 = v136;
    v126 = v143;
    v127 = v139;
    sub_257ECEBB0();
    sub_257BE4084(v120, &qword_27F8F7B48, &qword_257EE2B18);
    sub_257BE4084(v127, &qword_27F8F7B50, &qword_257EE2B20);
    v128 = v130;
    v129 = v144;
    (*(v130 + 16))(v142, v125, v144);
    swift_storeEnumTagMultiPayload();
    sub_257D055C4();
    *&v154 = v126;
    *(&v154 + 1) = v122;
    *&v155 = v123;
    *(&v155 + 1) = v124;
    swift_getOpaqueTypeConformance2();
    sub_257ECE6F0();
    return (*(v128 + 8))(v125, v129);
  }

  else
  {
    v69 = v36;
    v70 = sub_257ECEE10();
    sub_257ECEA30();
    sub_257ECE9F0();
    v71 = sub_257ECEA50();

    v72 = swift_getKeyPath();
    v73 = sub_257ECE930();
    sub_257ECDF40();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    LOBYTE(v154) = 0;
    v82 = sub_257ECED90();
    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    v83 = qword_281548308;
    v84 = sub_257ECED30();
    v85 = sub_257ECE930();
    *&v149 = v70;
    *(&v149 + 1) = v72;
    *&v150 = v71;
    BYTE8(v150) = v73;
    *&v151 = v75;
    *(&v151 + 1) = v77;
    *&v152 = v79;
    *(&v152 + 1) = v81;
    v153[0] = 0;
    *&v153[8] = v82;
    *&v153[16] = v84;
    v153[24] = v85;
    *&v153[25] = 256;
    v86 = v146;
    (*(v69 + 104))(v146, *MEMORY[0x277CDF988], v35);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B78, &unk_257EE2B80);
    v88 = sub_257D052B8();
    sub_257ECEBA0();
    (*(v69 + 8))(v86, v35);
    v156 = v151;
    v157 = v152;
    *v158 = *v153;
    *&v158[11] = *&v153[11];
    v154 = v149;
    v155 = v150;
    sub_257BE4084(&v154, &qword_27F8F7B78, &unk_257EE2B80);
    type metadata accessor for MAGUtilities();
    v89 = swift_getObjCClassFromMetadata();
    v90 = [objc_opt_self() bundleForClass_];
    v91 = sub_257ECF4C0();
    v92 = sub_257ECF4C0();
    v93 = [v90 localizedStringForKey:v91 value:0 table:v92];

    v94 = sub_257ECF500();
    v96 = v95;

    *&v149 = v94;
    *(&v149 + 1) = v96;
    v147 = v87;
    v148 = v88;
    swift_getOpaqueTypeConformance2();
    sub_257BDAB08();
    v97 = v138;
    sub_257ECEBF0();

    (*(v137 + 8))(v54, v97);
    sub_257BE401C(v60, v142, &qword_27F8F7B70, &unk_257EE2B40);
    swift_storeEnumTagMultiPayload();
    sub_257D055C4();
    v98 = sub_257D056BC();
    v99 = sub_257BD2D4C(&qword_27F8F7C08, &qword_27F8F7B48, &qword_257EE2B18, MEMORY[0x277D83660]);
    v149 = v143;
    *&v150 = v98;
    *(&v150 + 1) = v99;
    swift_getOpaqueTypeConformance2();
    sub_257ECE6F0();
    return sub_257BE4084(v60, &qword_27F8F7B70, &unk_257EE2B40);
  }
}

__n128 sub_257D05058@<Q0>(__n128 *a9@<X8>)
{
  v10 = sub_257ECE5B0();
  sub_257D050C4(&v15);
  v11 = v15;
  v12 = v17;
  v13 = v18;
  result = v16;
  a9->n128_u64[0] = v10;
  a9->n128_u64[1] = 0;
  a9[1].n128_u8[0] = 1;
  a9[1].n128_u64[1] = v11;
  a9[2] = result;
  a9[3].n128_u8[0] = v12;
  a9[3].n128_u64[1] = v13;
  return result;
}

double sub_257D050C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE10();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  LOBYTE(v7) = v11 & 1;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v12;
  sub_257ECC3F0();
  sub_257BD1B90(v8, v10, v7);

  sub_257C0300C(v8, v10, v7);

  return result;
}

uint64_t sub_257D05264@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_257ECE500();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AF8, &qword_257EE2A40);
  return sub_257D006F0(v2, a2 + *(v4 + 44));
}

unint64_t sub_257D052B8()
{
  result = qword_27F8F7B80;
  if (!qword_27F8F7B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B78, &unk_257EE2B80);
    sub_257D05370();
    sub_257BD2D4C(&qword_27F8F7BD8, &qword_27F8F7BE0, &qword_257EE2BB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7B80);
  }

  return result;
}

unint64_t sub_257D05370()
{
  result = qword_27F8F7B88;
  if (!qword_27F8F7B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B90, &unk_257EEDAF0);
    sub_257D05428();
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190, &unk_257EDC790, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7B88);
  }

  return result;
}

unint64_t sub_257D05428()
{
  result = qword_27F8F7B98;
  if (!qword_27F8F7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7BA0, &unk_257EE2B90);
    sub_257D05898(&qword_27F8F7BA8, &qword_27F8F7BB0, &unk_257EEDB00, sub_257D0550C);
    sub_257BD2D4C(&qword_27F8F67B0, &qword_27F8F67B8, &qword_257EDD1A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7B98);
  }

  return result;
}

unint64_t sub_257D0550C()
{
  result = qword_27F8F7BB8;
  if (!qword_27F8F7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7BC0, &unk_257EE2BA0);
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0, &unk_257EEC100, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BB8);
  }

  return result;
}

unint64_t sub_257D055C4()
{
  result = qword_27F8F7BE8;
  if (!qword_27F8F7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B70, &unk_257EE2B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B78, &unk_257EE2B80);
    sub_257D052B8();
    swift_getOpaqueTypeConformance2();
    sub_257D062A4(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BE8);
  }

  return result;
}

unint64_t sub_257D056BC()
{
  result = qword_27F8F7BF0;
  if (!qword_27F8F7BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B50, &qword_257EE2B20);
    sub_257D05778();
    sub_257D062A4(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BF0);
  }

  return result;
}

unint64_t sub_257D05778()
{
  result = qword_27F8F7BF8;
  if (!qword_27F8F7BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7C00, &unk_257EE2BB8);
    sub_257D0550C();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BF8);
  }

  return result;
}

void sub_257D05830()
{
  v1 = *(type metadata accessor for MFReaderTextFormatterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_257D022E4(v2);
}

uint64_t sub_257D05898(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257D0591C()
{
  result = qword_27F8F7C70;
  if (!qword_27F8F7C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7C78, &qword_257EE2C48);
    sub_257BD2D4C(&qword_27F8F7C80, &qword_27F8F7C88, &qword_257EE2C50, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7C70);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for MFReaderTextFormatterView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_257ECE1D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257D05B3C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MFReaderTextFormatterView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_257D03184(a1, v6, a2);
}

unint64_t sub_257D05BBC()
{
  result = qword_27F8F7CA8;
  if (!qword_27F8F7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CA8);
  }

  return result;
}

unint64_t sub_257D05C10()
{
  result = qword_27F8F7CB0;
  if (!qword_27F8F7CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7C98, &qword_257EE2C88);
    sub_257D05C9C();
    sub_257D05EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CB0);
  }

  return result;
}

unint64_t sub_257D05C9C()
{
  result = qword_27F8F7CB8;
  if (!qword_27F8F7CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CC0, &qword_257EE2C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CC8, &qword_257EE2C98);
    sub_257ECE750();
    sub_257D05DE4();
    sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_257D062A4(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CB8);
  }

  return result;
}

unint64_t sub_257D05DE4()
{
  result = qword_27F8F7CD0;
  if (!qword_27F8F7CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CC8, &qword_257EE2C98);
    sub_257BD2D4C(&qword_27F8F7CD8, &qword_27F8F7CE0, &unk_257EE2CA0, MEMORY[0x277CDF028]);
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218, &qword_257EDC800, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CD0);
  }

  return result;
}

unint64_t sub_257D05EC8()
{
  result = qword_27F8F7CF0;
  if (!qword_27F8F7CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CF8, &qword_257EE2CB0);
    type metadata accessor for MFReaderCustomThemeSelectionMenu(255);
    sub_257ECE750();
    sub_257D062A4(&qword_27F8F7D00, type metadata accessor for MFReaderCustomThemeSelectionMenu, &unk_257EDB850);
    sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218, &qword_257EDC800, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CF0);
  }

  return result;
}

uint64_t sub_257D06030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257D06098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257D060F8()
{
  v1 = *(type metadata accessor for MFReaderTextFormatterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_257D03D38(v2, v3);
}

unint64_t sub_257D06184()
{
  result = qword_27F8F7D50;
  if (!qword_27F8F7D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7D48, &qword_257EE2D18);
    sub_257C5F304();
    sub_257BD2D4C(&qword_27F8F5C40, &qword_27F8F5C20, &qword_257EE2D20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7D50);
  }

  return result;
}

uint64_t sub_257D0623C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257D062A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257D062EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257CD46F4(a1, v4, v5, v6);
}

uint64_t sub_257D063A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257CD3DF8(a1, v4, v5, v6);
}

uint64_t sub_257D06454(int a1)
{
  if ((a1 - 1) < 8)
  {
    return qword_257EE2E58[a1 - 1];
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  result = sub_257ED0690();
  __break(1u);
  return result;
}

uint64_t sub_257D064AC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_257ECF500();
  v5 = v4;
  if (v3 == sub_257ECF500() && v5 == v6)
  {
    v9 = MEMORY[0x277CDF9F8];
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_257ED0640();

  if (v8)
  {
    v9 = MEMORY[0x277CDF9F8];
    goto LABEL_9;
  }

  v14 = sub_257ECF500();
  v16 = v15;
  if (v14 == sub_257ECF500() && v16 == v17)
  {
    v9 = MEMORY[0x277CDF9E0];
    goto LABEL_8;
  }

  v19 = sub_257ED0640();

  if (v19)
  {
    v9 = MEMORY[0x277CDF9E0];
    goto LABEL_9;
  }

  v20 = sub_257ECF500();
  v22 = v21;
  if (v20 == sub_257ECF500() && v22 == v23)
  {
    v9 = MEMORY[0x277CDF9E8];
    goto LABEL_8;
  }

  v24 = sub_257ED0640();

  v25 = MEMORY[0x277CDF9E8];
  v9 = MEMORY[0x277CDF9E8];
  if ((v24 & 1) == 0)
  {
    v26 = sub_257ECF500();
    v28 = v27;
    if (v26 == sub_257ECF500() && v28 == v29)
    {
      v9 = MEMORY[0x277CDF9D8];
      goto LABEL_8;
    }

    v30 = sub_257ED0640();

    if (v30)
    {
      v9 = MEMORY[0x277CDF9D8];
    }

    else
    {
      v31 = sub_257ECF500();
      v33 = v32;
      if (v31 == sub_257ECF500() && v33 == v34)
      {
        v9 = MEMORY[0x277CDF9F0];
        goto LABEL_8;
      }

      v35 = sub_257ED0640();

      if (v35)
      {
        v9 = MEMORY[0x277CDF9F0];
      }

      else
      {
        v36 = sub_257ECF500();
        v38 = v37;
        if (v36 == sub_257ECF500() && v38 == v39)
        {
          v9 = MEMORY[0x277CDFA00];
          goto LABEL_8;
        }

        v40 = sub_257ED0640();

        if (v40)
        {
          v9 = MEMORY[0x277CDFA00];
        }

        else
        {
          v41 = sub_257ECF500();
          v43 = v42;
          if (v41 == sub_257ECF500() && v43 == v44)
          {
            v9 = MEMORY[0x277CDFA10];
            goto LABEL_8;
          }

          v45 = sub_257ED0640();

          if (v45)
          {
            v9 = MEMORY[0x277CDFA10];
          }

          else
          {
            v46 = sub_257ECF500();
            v48 = v47;
            if (v46 == sub_257ECF500() && v48 == v49)
            {
              v9 = MEMORY[0x277CDF988];
              goto LABEL_8;
            }

            v50 = sub_257ED0640();

            if (v50)
            {
              v9 = MEMORY[0x277CDF988];
            }

            else
            {
              v51 = sub_257ECF500();
              v53 = v52;
              if (v51 == sub_257ECF500() && v53 == v54)
              {
                v9 = MEMORY[0x277CDF998];
                goto LABEL_8;
              }

              v55 = sub_257ED0640();

              if (v55)
              {
                v9 = MEMORY[0x277CDF998];
              }

              else
              {
                v56 = sub_257ECF500();
                v58 = v57;
                if (v56 == sub_257ECF500() && v58 == v59)
                {
                  v9 = MEMORY[0x277CDF9A8];
                  goto LABEL_8;
                }

                v60 = sub_257ED0640();

                if (v60)
                {
                  v9 = MEMORY[0x277CDF9A8];
                }

                else
                {
                  v61 = sub_257ECF500();
                  v63 = v62;
                  if (v61 == sub_257ECF500() && v63 == v64)
                  {
                    v9 = MEMORY[0x277CDF9B8];
                    goto LABEL_8;
                  }

                  v65 = sub_257ED0640();

                  if (v65)
                  {
                    v9 = MEMORY[0x277CDF9B8];
                  }

                  else
                  {
                    v66 = sub_257ECF500();
                    v68 = v67;
                    v69 = sub_257ECF500();
                    v9 = MEMORY[0x277CDF9D0];
                    if (v66 == v69 && v68 == v70)
                    {
                      goto LABEL_8;
                    }

                    v71 = sub_257ED0640();

                    if ((v71 & 1) == 0)
                    {
                      v9 = v25;
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

LABEL_9:
  v10 = *v9;
  v11 = sub_257ECE1D0();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t MAGImageCaptionService.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t MAGImageCaptionService.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t MAGImageCaptionService.generateImageCaption(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_257ECF900();
  v2[4] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_257D06C1C, v4, v3);
}

uint64_t sub_257D06C1C()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {

    sub_257BEBEF0();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 16;
    *(v2 + 24) = 4;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[2];
    *(v1 + 24) = v5;
    v6 = *(v5 + 16);
    v0[7] = v6;
    sub_257ECC3F0();
    v7 = v6;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_257D06D5C;

    return sub_257D06F84(v7);
  }
}

uint64_t sub_257D06D5C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    v9 = sub_257D06F0C;
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    v9 = sub_257D06E98;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_257D06E98()
{
  v1 = v0[3];

  *(v1 + 24) = 0;

  v2 = v0[1];
  v4 = v0[10];
  v3 = v0[11];

  return v2(v3, v4);
}

uint64_t sub_257D06F0C()
{
  v1 = v0[7];
  v2 = v0[3];

  *(v2 + 24) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_257D06F84(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = sub_257ECF900();
  v2[7] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_257D07020, v4, v3);
}

uint64_t sub_257D07020()
{
  v1 = [*(*(v0 + 40) + 16) imageNode];
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = v1;
    v11 = *(v0 + 32);
    v3 = sub_257ECF8F0();
    *(v0 + 88) = v3;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v11;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_257D071E4;
    v6 = MEMORY[0x277D85700];
    v7 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 16, v3, v6, 0xD000000000000022, 0x8000000257EFF410, sub_257D07E40, v4, v7);
  }

  else
  {

    sub_257BEBEF0();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 3;
    *(v8 + 24) = 4;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_257D071E4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_257D0737C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_257D07308;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D07308()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_257D0737C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_257D07404(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78, &qword_257EE2EE8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = aBlock - v12;
  v14 = sub_257D07E4C();
  (*(v7 + 16))(v13, a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v13, v6);
  aBlock[4] = sub_257D08060;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257BE8054;
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);

  [a2 triggerWithPixelBuffer:a3 exifOrientation:6 options:v14 cacheKey:0 resultHandler:v17];
  _Block_release(v17);
}

void sub_257D075DC(void *a1, void *a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v60 - v17;
  v19 = AXRuntimeCheck_MediaAnalysisSupport();
  if (a1)
  {
    v20 = v19;
    v21 = a1;
    v22 = v21;
    if (v20)
    {
      v23 = [v21 mediaAnalysisImageCaptionFeatures];
      sub_257D08104();
      v24 = sub_257ECF810();

      if (v24 >> 62)
      {
        if (sub_257ED0210())
        {
          goto LABEL_5;
        }
      }

      else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x259C72E20](0, v24);
LABEL_8:
          v26 = v25;

          if ([v26 isLowConfidence])
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }

        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v24 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_28:

LABEL_29:
      sub_257BEA118(MEMORY[0x277D84F90]);
      type metadata accessor for AXMFeatureDescriptionOption(0);
      sub_257D08150();
      v46 = sub_257ECF3C0();

      v47 = [v22 detectedSceneClassificationFeatureDescriptionWithOptions_];

      if (v47)
      {
        v43 = sub_257ECF500();
        v45 = v48;

        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v38 = [v21 captionFeatures];
    sub_257D08104();
    v39 = sub_257ECF810();

    if (v39 >> 62)
    {
      if (!sub_257ED0210())
      {
        goto LABEL_28;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x259C72E20](0, v39);
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v40 = *(v39 + 32);
    }

    v26 = v40;

    if ([v26 isLowConfidence])
    {
LABEL_19:

      goto LABEL_29;
    }

LABEL_22:
    sub_257BEA118(MEMORY[0x277D84F90]);
    type metadata accessor for AXMFeatureDescriptionOption(0);
    sub_257D08150();
    v41 = sub_257ECF3C0();

    v42 = [v22 detectedCaptionFeatureDescriptionWithOptions_];

    if (v42)
    {
      v43 = sub_257ECF500();
      v45 = v44;

LABEL_32:

      v49 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v49 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (!v49)
      {

        sub_257ECD340();
        v55 = sub_257ECDA20();
        v56 = sub_257ECFBE0();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_257BAC000, v55, v56, "Image caption service produced no caption for image", v57, 2u);
          MEMORY[0x259C74820](v57, -1, -1);
        }

        (*(v5 + 8))(v18, v4);
        sub_257BEBEF0();
        v58 = swift_allocError();
        *(v59 + 8) = 0;
        *(v59 + 16) = 0;
        *v59 = 6;
        *(v59 + 24) = 4;
        v62[0] = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78, &qword_257EE2EE8);
        sub_257ECF8C0();
        goto LABEL_40;
      }

      v50 = sub_257ECF4C0();
      v51 = [v50 axCapitalizeFirstLetter];

      if (v51)
      {

        v52 = sub_257ECF500();
        v54 = v53;

        v62[0] = v52;
        v62[1] = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78, &qword_257EE2EE8);
        sub_257ECF8D0();
LABEL_40:

        return;
      }

      goto LABEL_45;
    }

LABEL_31:
    v43 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_32;
  }

  if (!a2)
  {
LABEL_46:
    sub_257ED0410();
    __break(1u);
    return;
  }

  v27 = a2;
  sub_257ECD340();
  v28 = a2;
  v29 = sub_257ECDA20();
  v30 = sub_257ECFBE0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v61 = v4;
    v62[0] = v32;
    v33 = v32;
    *v31 = 136315138;
    swift_getErrorValue();
    v34 = sub_257ED0720();
    v36 = sub_257BF1FC8(v34, v35, v62);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_257BAC000, v29, v30, "Image caption error: %s", v31, 0xCu);
    v37 = __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x259C74820](v33, -1, -1, v37);
    MEMORY[0x259C74820](v31, -1, -1);

    (*(v5 + 8))(v11, v61);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  v62[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78, &qword_257EE2EE8);
  sub_257ECF8C0();
}

uint64_t MAGImageCaptionService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_257D07E4C()
{
  v0 = sub_257ECCD90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CE6AE0]) init];
  v9 = AXRuntimeCheck_MediaAnalysisSupport();
  [v8 setDetectMADCaptions_];
  [v8 setDetectMADScenes_];
  [v8 setDetectScenes_];
  [v8 setDetectObjects_];
  [v8 setDetectProminentObjects_];
  [v8 setDetectCaptions_];
  [v8 setDetectText_];
  v10 = [objc_opt_self() defaultOptions];
  [v8 setTextDetectionOptions_];

  [v8 setDetectTraits_];
  [v8 setDetectModelClassifications_];
  [v8 setIncludeImageInResult_];
  sub_257ECCD80();
  v11 = sub_257ECCD60();
  (*(v1 + 8))(v7, v0);
  [v8 setPreferredOutputLocale_];

  return v8;
}

void sub_257D08060(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78, &qword_257EE2EE8);

  sub_257D075DC(a1, a2);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257D08104()
{
  result = qword_27F8F5730;
  if (!qword_27F8F5730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5730);
  }

  return result;
}

unint64_t sub_257D08150()
{
  result = qword_27F8F4FF8;
  if (!qword_27F8F4FF8)
  {
    type metadata accessor for AXMFeatureDescriptionOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4FF8);
  }

  return result;
}

uint64_t _s16MagnifierSupport0A9ShortcutsV03appC0Say10AppIntents0E8ShortcutVGvgZ_0()
{
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D80, &qword_257EE2F58);
  MEMORY[0x28223BE20](v210, v0, v1, v2, v3);
  v211 = v197 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v209 = v197 - v10;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D88, &qword_257EE2F60);
  MEMORY[0x28223BE20](v207, v11, v12, v13, v14);
  v208 = v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v206 = v197 - v21;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D90, &qword_257EE2F68);
  MEMORY[0x28223BE20](v201, v22, v23, v24, v25);
  v204 = v197 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v203 = v197 - v32;
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v200 = v197 - v38;
  v197[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D98, &qword_257EE2F70);
  MEMORY[0x28223BE20](v197[0], v39, v40, v41, v42);
  v224 = v197 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
  v223 = v197 - v49;
  MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
  v222 = v197 - v55;
  MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
  v221 = v197 - v61;
  v62 = sub_257ECCA30();
  MEMORY[0x28223BE20](v62 - 8, v63, v64, v65, v66);
  v231 = v197 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_257ECC270();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v70, v71, v72, v73);
  v75 = v197 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DA0, &qword_257EE2F78);
  MEMORY[0x28223BE20](v76, v77, v78, v79, v80);
  v227 = v197 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82, v83, v84, v85, v86);
  v87 = sub_257ECC310();
  v88 = *(v87 - 8);
  v232 = v87;
  v233 = v88;
  MEMORY[0x28223BE20](v87, v89, v90, v91, v92);
  v230 = v197 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DA8, &qword_257EE2F80);
  v225 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DB0, &qword_257EE2F88) - 8) + 72);
  v226 = 2 * v225;
  v94 = swift_allocObject();
  v202 = xmmword_257EDBBA0;
  v228 = v94;
  *(v94 + 16) = xmmword_257EDBBA0;
  sub_257CF97BC();
  sub_257ECC220();
  sub_257ECC210();
  v238 = *MEMORY[0x277CB9BE8];
  v95 = v69;
  v96 = v69 + 104;
  v97 = *(v69 + 104);
  v236 = v96;
  v237 = v68;
  v97(v75);
  v235 = v97;
  sub_257ECC200();
  v98 = *(v95 + 8);
  v98(v75, v68);
  v229 = v98;
  v234 = v95 + 8;
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v99 = v237;
  (v97)(v75, v238, v237);
  sub_257ECC200();
  v100 = v75;
  v98(v75, v99);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECCA00();
  v101 = v230;
  sub_257ECC300();
  v205 = sub_257ECC250();
  v102 = *(v233 + 8);
  v233 += 8;
  v228 = v102;
  v102(v101, v232);
  LOBYTE(v239) = 0;
  v239 = sub_257C7B3C8(&v239);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DB8, &qword_257EE2F90);
  v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DC0, &qword_257EE2F98) - 8);
  v227 = *(v103 + 72);
  *&v218 = *(v103 + 80);
  v104 = (v218 + 32) & ~v218;
  v217 = v104;
  v225 = 2 * v227;
  v226 = 3 * v227;
  v215 = 6 * v227;
  v105 = swift_allocObject();
  v198 = xmmword_257EE23E0;
  v199 = v105;
  *(v105 + 16) = xmmword_257EE23E0;
  v212 = v105 + v104;
  v106 = sub_257C7B704();
  sub_257ECC220();
  sub_257ECC210();
  v107 = v100;
  v108 = v100;
  v109 = v238;
  v110 = v237;
  (v235)(v108, v238, v237);
  sub_257ECC200();
  v111 = v229;
  v229(v107, v110);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v112 = v109;
  v113 = v235;
  (v235)(v107, v112, v110);
  sub_257ECC200();
  v111(v107, v110);
  sub_257ECC210();
  v220 = v106;
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v114 = v107;
  v115 = v238;
  v116 = v237;
  v113(v107, v238, v237);
  sub_257ECC200();
  v117 = v116;
  v118 = v111;
  v111(v107, v117);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v119 = v115;
  v120 = v237;
  (v235)(v107, v119, v237);
  sub_257ECC200();
  v111(v107, v120);
  sub_257ECC210();
  sub_257ECC230();
  v121 = v227;
  v213 = 4 * v227;
  sub_257ECC1F0();
  v214 = 5 * v121;
  sub_257ECC1F0();
  sub_257ECCA00();
  v122 = v230;
  sub_257ECC300();
  v199 = sub_257ECC250();
  v228(v122, v232);
  LOBYTE(v239) = 1;
  v239 = sub_257C7B3C8(&v239);
  v123 = v217;
  v124 = swift_allocObject();
  v212 = v124;
  *(v124 + 16) = v198;
  v125 = v124 + v123;
  sub_257ECC220();
  sub_257ECC210();
  v126 = v238;
  (v235)(v114, v238, v120);
  sub_257ECC200();
  v111(v114, v120);
  sub_257ECC210();
  *&v198 = v125;
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v127 = v237;
  v128 = v235;
  (v235)(v114, v126, v237);
  sub_257ECC200();
  v118(v114, v127);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v128(v114, v238, v127);
  sub_257ECC200();
  v118(v114, v127);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v129 = v114;
  v130 = v114;
  v131 = v237;
  v128(v130, v238, v237);
  v132 = v129;
  sub_257ECC200();
  v118(v129, v131);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECC1F0();
  sub_257ECCA00();
  v133 = v230;
  sub_257ECC300();
  *&v198 = sub_257ECC250();
  v228(v133, v232);
  LOBYTE(v239) = 3;
  v239 = sub_257C7B3C8(&v239);
  v134 = v217;
  v135 = swift_allocObject();
  v197[1] = v135;
  *(v135 + 16) = xmmword_257EDFA20;
  v212 = v135 + v134;
  sub_257ECC220();
  sub_257ECC210();
  v136 = v132;
  v137 = v132;
  v138 = v238;
  v139 = v237;
  (v235)(v137, v238, v237);
  sub_257ECC200();
  v229(v136, v139);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v140 = v235;
  (v235)(v136, v138, v139);
  sub_257ECC200();
  v141 = v139;
  v142 = v229;
  v229(v136, v141);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v143 = v237;
  v140(v136, v238, v237);
  sub_257ECC200();
  v142(v136, v143);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v216 = v136;
  v140(v136, v238, v143);
  sub_257ECC200();
  v142(v136, v143);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECC1F0();
  sub_257ECC1F0();
  sub_257ECCA00();
  v144 = v230;
  sub_257ECC300();
  v215 = sub_257ECC250();
  v228(v144, v232);
  LOBYTE(v239) = 2;
  v239 = sub_257C7B3C8(&v239);
  v145 = v217;
  v146 = swift_allocObject();
  v218 = xmmword_257EDBE50;
  v214 = v146;
  *(v146 + 16) = xmmword_257EDBE50;
  v147 = v146 + v145;
  sub_257ECC220();
  sub_257ECC210();
  v148 = v216;
  v149 = v238;
  v150 = v237;
  v151 = v235;
  (v235)(v216, v238, v237);
  sub_257ECC200();
  v152 = v229;
  v229(v148, v150);
  sub_257ECC210();
  v219 = v147;
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v153 = v216;
  v151(v216, v149, v150);
  sub_257ECC200();
  v152(v153, v150);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v154 = v235;
  (v235)(v153, v149, v150);
  sub_257ECC200();
  v155 = v229;
  v229(v153, v150);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v156 = v149;
  v157 = v237;
  v154(v153, v156, v237);
  sub_257ECC200();
  v155(v153, v157);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECCA00();
  v158 = v230;
  sub_257ECC300();
  v224 = sub_257ECC250();
  v228(v158, v232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DC8, &qword_257EE2FA0);
  v159 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DD0, &qword_257EE2FA8) - 8);
  v227 = *(v159 + 72);
  v160 = (*(v159 + 80) + 32) & ~*(v159 + 80);
  v161 = swift_allocObject();
  v223 = v161;
  *(v161 + 16) = v218;
  v226 = v161 + v160;
  v225 = sub_257CF9714();
  sub_257ECC220();
  sub_257ECC210();
  v162 = v237;
  v163 = v235;
  (v235)(v153, v238, v237);
  sub_257ECC200();
  v164 = v162;
  v165 = v229;
  v229(v153, v162);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v166 = v238;
  v163(v153, v238, v164);
  sub_257ECC200();
  v165(v153, v164);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v167 = v166;
  v168 = v237;
  (v235)(v153, v167, v237);
  sub_257ECC200();
  v165(v153, v168);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECCA00();
  v169 = v230;
  sub_257ECC300();
  v226 = sub_257ECC250();
  v228(v169, v232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DD8, &qword_257EE2FB0);
  v170 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DE0, &qword_257EE2FB8) - 8);
  v171 = (*(v170 + 80) + 32) & ~*(v170 + 80);
  v222 = *(v170 + 72);
  v223 = (2 * v222);
  v172 = swift_allocObject();
  v225 = v172;
  *(v172 + 16) = v202;
  v227 = v172 + v171;
  sub_257CE5428();
  sub_257ECC220();
  sub_257ECC210();
  v173 = v216;
  v174 = v238;
  v175 = v235;
  (v235)(v216, v238, v168);
  sub_257ECC200();
  v176 = v168;
  v177 = v229;
  v229(v173, v176);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v178 = v174;
  v179 = v237;
  v175(v173, v178, v237);
  sub_257ECC200();
  v177(v173, v179);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECCA00();
  v180 = v230;
  sub_257ECC300();
  v225 = sub_257ECC250();
  v228(v180, v232);
  v239 = sub_257D7E0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DE8, &qword_257EE2FC0);
  v181 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DF0, &qword_257EE2FC8) - 8);
  v222 = *(v181 + 72);
  v182 = (*(v181 + 80) + 32) & ~*(v181 + 80);
  v183 = swift_allocObject();
  v223 = v183;
  *(v183 + 16) = xmmword_257ED9BD0;
  v227 = v183 + v182;
  sub_257CF9768();
  sub_257ECC220();
  sub_257ECC210();
  v184 = v238;
  v185 = v237;
  v186 = v235;
  (v235)(v173, v238, v237);
  sub_257ECC200();
  v187 = v229;
  v229(v173, v185);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v186(v173, v184, v185);
  sub_257ECC200();
  v187(v173, v185);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECCA00();
  v188 = v230;
  sub_257ECC300();
  v189 = sub_257ECC250();
  v228(v188, v232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DF8, qword_257EE2FD0);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_257EE2EF0;
  v191 = v199;
  *(v190 + 32) = v205;
  *(v190 + 40) = v191;
  v192 = v215;
  *(v190 + 48) = v198;
  *(v190 + 56) = v192;
  v193 = v225;
  v194 = v226;
  *(v190 + 64) = v224;
  *(v190 + 72) = v194;
  *(v190 + 80) = v193;
  *(v190 + 88) = v189;
  v195 = sub_257ECC240();

  return v195;
}

id sub_257D0A4AC(uint64_t *a1, uint64_t (*a2)(void))
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

uint64_t sub_257D0A524()
{
  v1 = *v0;
  sub_257ED07B0();
  if (!(v1 >> 6))
  {
    MEMORY[0x259C732E0](0);
    v2 = v1;
LABEL_6:
    MEMORY[0x259C732E0](v2);
    return sub_257ED0800();
  }

  if (v1 >> 6 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x259C732E0](1);
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257D0A5D8(uint64_t a1)
{
  v2 = *v1;
  if (!(v2 >> 6))
  {
    MEMORY[0x259C732E0](0);
    v3 = v2;
LABEL_8:
    MEMORY[0x259C732E0](v3);
    return;
  }

  if (v2 >> 6 != 1)
  {
    v3 = 2;
    goto LABEL_8;
  }

  MEMORY[0x259C732E0](1);
  Control.rawValue.getter();
  sub_257ECF5D0();
}

uint64_t sub_257D0A698(uint64_t a1)
{
  v2 = *v1;
  sub_257ED07B0();
  if (!(v2 >> 6))
  {
    MEMORY[0x259C732E0](0);
    v3 = v2;
LABEL_6:
    MEMORY[0x259C732E0](v3);
    return sub_257ED0800();
  }

  if (v2 >> 6 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x259C732E0](1);
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257D0A748(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 <= 1u)
  {
    if (a1)
    {
LABEL_6:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v4 = sub_257ECF4C0();
      v5 = sub_257ECF4C0();
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

      v1 = sub_257ECF500();
    }
  }

  else if (a1 == 2 || a1 == 3)
  {
    goto LABEL_6;
  }

  return v1;
}

id sub_257D0A89C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource];
  }

  else
  {
    v4 = sub_257D0A900(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257D0A900(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView];
  *(swift_allocObject() + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for EditControlsViewController.DataSource(0)) + qword_27F8F7E48;
  *v3 = 0;
  v3[1] = 0;
  v4 = v2;
  v5 = a1;
  v6 = sub_257ECDBD0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + qword_27F8F7E48);
  v9 = *(v6 + qword_27F8F7E48);
  v10 = *(v6 + qword_27F8F7E48 + 8);
  *v8 = sub_257D0F934;
  v8[1] = v7;
  sub_257ECC3F0();
  sub_257BBD88C(v9, v10);

  return v6;
}

id sub_257D0AA14(void *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v5 = *a3;
  if (!(v5 >> 6))
  {
    v18 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v19 = sub_257ECF4C0();
    v9 = [v18 initWithStyle:1 reuseIdentifier:v19];

    if (sub_257ECF030())
    {
      v20 = 0xED0000656C637269;
      v21 = 0x632E656C63726963;
      if (v5 != 1)
      {
        v21 = 0x646E696677656976;
        v20 = 0xEA00000000007265;
      }

      if (v5)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0xD000000000000017;
      }

      if (v5)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0x8000000257EFA680;
      }

      _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(v22, v23, a4);
      v25 = v24;

      if (v25)
      {
        v26 = [v9 imageView];
        if (!v26)
        {
LABEL_48:

          goto LABEL_49;
        }

        v27 = v26;
        [v26 setImage_];
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v55 = [v9 imageView];
      if (v55)
      {
        v56 = v55;
        v57 = sub_257E8D7A0(v5);
        if (v57)
        {
          v58 = v57;
          v59 = [objc_opt_self() whiteColor];
          v60 = [v58 imageWithTintColor:v59 renderingMode:1];
        }

        else
        {
          v60 = 0;
        }

        [v56 setImage_];
      }

      v67 = [v9 imageView];
      if (v67)
      {
        v27 = v67;
        v25 = [objc_opt_self() whiteColor];
        [v27 setTintColor_];
        goto LABEL_47;
      }
    }

LABEL_49:
    v68 = [v9 textLabel];
    if (v68)
    {
      v69 = v68;
      [v68 setNumberOfLines_];
    }

    v70 = [v9 textLabel];
    if (v70)
    {
      v71 = v70;
      [v70 setLineBreakMode_];
    }

    [v9 setAccessoryType_];
    [v9 setShowsReorderControl_];
    v72 = [v9 textLabel];
    if (v72)
    {
      v73 = v72;
      sub_257E8D8DC(v5);
      v74 = sub_257ECF4C0();

      [v73 setText_];
    }

    v75 = [v9 detailTextLabel];
    if (v75)
    {
      v76 = v75;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v77 = qword_2815447E0;

      if (v77 != -1)
      {
        v78 = swift_once();
      }

      MEMORY[0x28223BE20](v78, v79, v80, v81, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
      sub_257ECFD50();

      sub_257C592D0(v5, v90);

      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v84 = [objc_opt_self() bundleForClass_];
      v85 = sub_257ECF4C0();
      v86 = sub_257ECF4C0();
      v87 = [v84 localizedStringForKey:v85 value:0 table:v86];

      sub_257ECF500();
      v64 = sub_257ECF4C0();

      [v76 setText_];

      goto LABEL_61;
    }

    return v9;
  }

  if (v5 >> 6 == 1)
  {
    v6 = v5 & 0x3F;
    v7 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v8 = sub_257ECF4C0();
    v9 = [v7 initWithStyle:1 reuseIdentifier:v8];

    v10 = [v9 textLabel];
    if (v10)
    {
      v11 = v10;
      LOBYTE(aBlock) = v6;
      sub_257D14A40(v10);
      v12 = sub_257ECF4C0();

      [v11 setText_];
    }

    v13 = [v9 textLabel];
    if (v13)
    {
      v14 = v13;
      [v13 setNumberOfLines_];
    }

    v15 = [v9 textLabel];
    if (v15)
    {
      v16 = v15;
      [v15 setLineBreakMode_];
    }

    [v9 setShowsReorderControl_];
    LOBYTE(aBlock) = v6;
    if (Control.rawValue.getter() == 0x737265746C6966 && v17 == 0xE700000000000000)
    {
    }

    else
    {
      v38 = sub_257ED0640();

      if ((v38 & 1) == 0)
      {
        [v9 setEditingAccessoryType_];
        if ((sub_257ECF030() & 1) == 0)
        {
          return v9;
        }

LABEL_40:
        LOBYTE(aBlock) = v6;
        v61 = sub_257D15518();
        _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(v61, v62, a4);
        v64 = v63;

        if (!v64)
        {
          return v9;
        }

        v65 = [v9 imageView];
        if (v65)
        {
          v66 = v65;
          [v65 setImage_];
        }

LABEL_61:

        return v9;
      }
    }

    v89 = v6;
    [v9 setEditingAccessoryType_];
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = sub_257D0F93C;
    v96 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_257D47A84;
    v94 = &block_descriptor_25;
    v40 = _Block_copy(&aBlock);
    v41 = v9;

    [v41 setAccessibilityLabelBlock_];
    _Block_release(v40);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v95 = sub_257D0F944;
    v96 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_257D0B9D8;
    v94 = &block_descriptor_29_0;
    v43 = _Block_copy(&aBlock);

    [v41 setAccessibilityActivationPointBlock_];
    _Block_release(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    v45 = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    v47 = sub_257ECF4C0();
    v48 = sub_257ECF4C0();
    v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

    if (!v49)
    {
      sub_257ECF500();
      v49 = sub_257ECF4C0();
    }

    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = objc_allocWithZone(MEMORY[0x277D75088]);
    v95 = sub_257D0F94C;
    v96 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_257D96328;
    v94 = &block_descriptor_33_2;
    v52 = _Block_copy(&aBlock);
    sub_257ECC3F0();
    v53 = [v51 initWithName:v49 actionHandler:v52];

    _Block_release(v52);

    *(v44 + 32) = v53;
    sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
    v54 = sub_257ECF7F0();

    [v41 setAccessibilityCustomActions_];

    v6 = v89;
    if ((sub_257ECF030() & 1) == 0)
    {
      return v9;
    }

    goto LABEL_40;
  }

  v29 = sub_257ECF4C0();
  v30 = sub_257ECCE30();
  v9 = [a1 dequeueReusableCellWithIdentifier:v29 forIndexPath:v30];

  v31 = [v9 textLabel];
  if (v31)
  {
    v32 = v31;
    v33 = sub_257ECF4C0();
    [v32 setText_];
  }

  v34 = [v9 textLabel];
  if (v34)
  {
    v35 = v34;
    [v34 setNumberOfLines_];
  }

  v36 = [v9 textLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setLineBreakMode_];
  }

  [v9 setEditingAccessoryType_];
  [v9 setShowsReorderControl_];
  return v9;
}

uint64_t sub_257D0B6C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong editingStyle];
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

double sub_257D0B80C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x277CBF348];
  }

  v2 = Strong;
  v3 = [Strong subviews];
  sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
  v4 = sub_257ECF810();

  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v6 = 0;
      v7 = *MEMORY[0x277D76548];
      while ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C72E20](v6, v4);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          return *MEMORY[0x277CBF348];
        }

LABEL_8:
        v10 = v8;
        if ((v7 & ~[v10 accessibilityTraits]) == 0)
        {

          [v10 accessibilityActivationPoint];
          v11 = v12;

          goto LABEL_19;
        }

        ++v6;
        if (v9 == v5)
        {
          goto LABEL_18;
        }
      }

      if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_17:
      v5 = sub_257ED0210();
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v8 = *(v4 + 8 * v6 + 32);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

LABEL_18:

  v11 = *MEMORY[0x277CBF348];
LABEL_19:

  return v11;
}

double sub_257D0B9D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

BOOL sub_257D0BA28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = [Strong navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = sub_257D0A4AC(&OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController, type metadata accessor for FilterCustomizationViewController);
      [v5 pushViewController:v6 animated:1];
    }
  }

  return v3 != 0;
}

void sub_257D0BAEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_257D0F410();
  v4 = v3;
  v6 = v5;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_2815447E0;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  sub_257D53B38(v17, v2, v4, v6);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_unknownObjectWeakLoadStrong();

    if (v15)
    {
      sub_257E0EF78(1);
      v16 = sub_257DFF3FC();
      sub_257D839A4();
      swift_unknownObjectRelease();
    }
  }
}

void sub_257D0BD10()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView];
    [v1 addSubview_];

    [v3 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = sub_257ECF4C0();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

    v6 = sub_257ECF4C0();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

    v7 = sub_257ECF4C0();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

    [v3 setAllowsSelectionDuringEditing_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      sub_257EB6FD8(v8, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257D0BF44(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90, &qword_257EE31E0);
  v6 = *(v5 - 8);
  *&v11 = MEMORY[0x28223BE20](v5, v7, v8, v9, v10).n128_u64[0];
  v13 = &v18 - v12;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewWillAppear_, a1 & 1, v11);
  [*&v2[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView] setEditing_];
  sub_257D0C0E4();
  sub_257D0C34C(v14);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = off_286912048;
    type metadata accessor for AppViewController(0);
    v15();
    swift_unknownObjectRelease();
  }

  v16 = sub_257D0A89C();
  sub_257D0C764();
  sub_257ECDBF0();

  return (*(v6 + 8))(v13, v5);
}

void sub_257D0C0E4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_handleDoneButtonTap_];
  v2 = [objc_opt_self() systemYellowColor];
  [v1 setTintColor_];

  v3 = [v0 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257ED9BF0;
  *(v4 + 32) = v1;
  sub_257BD2C2C(0, qword_27F8F7638, 0x277D751E0);
  v5 = v1;
  v6 = sub_257ECF7F0();

  [v3 setRightBarButtonItems_];

  v7 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  [v7 setTitle_];
}

void sub_257D0C34C(uint64_t a1)
{
  if (sub_257ECF030())
  {
    v2 = sub_257ECF4C0();
    v3 = [objc_opt_self() systemImageNamed_];

    if (v3)
    {
      v4 = [v3 imageWithRenderingMode_];

      v5 = [objc_opt_self() systemYellowColor];
      v6 = [v4 imageWithTintColor_];
    }

    else
    {
      v6 = 0;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:v1 action:sel_handleInfoButtonTap_];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = objc_opt_self();
    v15 = v16;
    v19 = [v18 bundleForClass_];
    v20 = sub_257ECF4C0();
    v21 = sub_257ECF4C0();
    v8 = [v19 localizedStringForKey:v20 value:0 table:v21];

    if (!v8)
    {
      sub_257ECF500();
      v8 = sub_257ECF4C0();
    }

    [v15 setAccessibilityLabel_];
  }

  else
  {
    v7 = [objc_opt_self() buttonWithType_];
    [v7 addTarget:v1 action:sel_handleInfoButtonTap_ forControlEvents:64];
    v8 = v7;
    [v8 setShowsLargeContentViewer_];
    type metadata accessor for MAGUtilities();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_257ECF4C0();
    v12 = sub_257ECF4C0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    if (!v13)
    {
      sub_257ECF500();
      v13 = sub_257ECF4C0();
    }

    [v8 setLargeContentTitle_];

    v14 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v8 addInteraction_];

    v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    v6 = v8;
  }

  v22 = [v1 navigationItem];
  [v22 setLeftBarButtonItem_];
}

uint64_t sub_257D0C764()
{
  sub_257D0F954();
  sub_257D0F9A8();
  sub_257ECDBB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90, &qword_257EE31E0);
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  sub_257D0F074(v13);

  sub_257ECDB20();

  sub_257ECDB50();
  v6 = swift_beginAccess();
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);

  sub_257ECFD50();

  sub_257D0F074(v14);

  sub_257ECDB20();

  sub_257ECDB50();
  v11 = sub_257D53928();
  sub_257D0F074(v11);

  sub_257ECDB20();

  result = AXIsInternalInstall();
  if (result)
  {
    sub_257ECDB50();
    return sub_257ECDB20();
  }

  return result;
}

void sub_257D0CB6C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257E27A60();
    swift_unknownObjectRelease();
  }

  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_257D0CC10(void *a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257E27A60();
    swift_unknownObjectRelease();
  }

  v5 = [v2 presentingViewController];
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      v7[4] = a1;
      v7[5] = a2;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_257D231C0;
      v7[3] = &block_descriptor_27;
      a1 = _Block_copy(v7);
      sub_257ECC3F0();
    }

    [v6 dismissViewControllerAnimated:1 completion:a1];
    _Block_release(a1);
  }
}

void sub_257D0CD34()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_257ECF500();
    v5 = sub_257ECF4C0();
  }

  v6 = sub_257ECF4C0();
  v7 = [objc_opt_self() systemImageNamed_];

  v10 = [objc_allocWithZone(type metadata accessor for OnboardingViewController()) initWithTitle:v5 detailText:0 icon:v7];
  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_257D0CF20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_257C3A464(v9);
}

id sub_257D0CF9C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___activitiesCustomizationViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___captureSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___detectionModeSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___internalDetectionOptionsViewController] = 0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
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

id sub_257D0D18C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___activitiesCustomizationViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___captureSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___detectionModeSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___internalDetectionOptionsViewController] = 0;
  v4 = OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_257D0D814@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_257ECCEA0();
  if (v7 == sub_257ECCEA0())
  {
    v8 = sub_257ECCEB0();
    v9 = *(*(v8 - 8) + 16);
    v10 = v8;
    v11 = a4;
    v12 = a3;
LABEL_18:

    return v9(v11, v12, v10);
  }

  v13 = sub_257ECCEA0();
  v14 = v13 - 1;
  if ((v13 - 1) > 3)
  {
    v31 = sub_257ECCEB0();
    v9 = *(*(v31 - 8) + 16);
    v10 = v31;
    v11 = a4;
    v12 = a2;
    goto LABEL_18;
  }

  if (sub_257ECCEA0() != 1)
  {
    goto LABEL_25;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v21 = *(v33 + 16);

  if (!v21)
  {
    v32 = sub_257ECCEB0();
    return (*(*(v32 - 8) + 16))(a4, a2, v32);
  }

  else
  {
    if (!(1u >> (v14 & 0xF)))
    {
      goto LABEL_16;
    }

LABEL_25:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = qword_2815447E0;

    if (v22 != -1)
    {
      v23 = swift_once();
    }

    MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
    sub_257ECFD50();

    v28 = *(v34 + 16);

    if (v28 >= 2)
    {
      return MEMORY[0x259C6F970](0, 2);
    }

    else
    {
LABEL_16:
      v29 = sub_257ECCEB0();
      return (*(*(v29 - 8) + 16))(a4, a3, v29);
    }
  }
}

void sub_257D0DDF4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_257D0A89C();
  sub_257ECDBE0();

  if (v14 <= 0xEFu)
  {
    v6 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v6 animated:1];

    if (!(v14 >> 6))
    {
      v11 = [v3 navigationController];
      v8 = v11;
      if (v14)
      {
        if (v14 == 1)
        {
          if (!v11)
          {
            return;
          }

          v9 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___captureSettingsViewController;
          v10 = type metadata accessor for CaptureSettingsViewController;
        }

        else
        {
          if (!v11)
          {
            return;
          }

          v9 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___detectionModeSettingsViewController;
          v10 = type metadata accessor for DetectionModeSettingsViewController;
        }
      }

      else
      {
        if (!v11)
        {
          return;
        }

        v9 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___activitiesCustomizationViewController;
        v10 = type metadata accessor for ActivitiesCustomizationViewController;
      }

      goto LABEL_18;
    }

    if (v14 >> 6 != 1)
    {
      v12 = [v3 navigationController];
      if (!v12)
      {
        return;
      }

      v8 = v12;
      v9 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___internalDetectionOptionsViewController;
      v10 = type metadata accessor for InternalDetectionOptionsViewController;
      goto LABEL_18;
    }

    if ((v14 & 0x3F) == 3 && !UIAccessibilityIsVoiceOverRunning())
    {
      v7 = [v3 navigationController];
      if (v7)
      {
        v8 = v7;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController;
        v10 = type metadata accessor for FilterCustomizationViewController;
LABEL_18:
        v13 = sub_257D0A4AC(v9, v10);
        [v8 pushViewController:v13 animated:1];
      }
    }
  }
}

uint64_t type metadata accessor for EditControlsViewController.DataSource(uint64_t a1)
{
  result = qword_27F8F7E60;
  if (!qword_27F8F7E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_257D0E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  a5(a4, a2, a3);
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

uint64_t sub_257D0E218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v24 - v19;
  sub_257ECCE40();
  sub_257ECCE40();
  v21 = a1;
  sub_257D0E708(v20, v13, 0);

  v22 = *(v7 + 8);
  v22(v13, v6);
  return (v22)(v20, v6);
}

void sub_257D0E354(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  *&v12 = MEMORY[0x28223BE20](v6, v8, v9, v10, v11).n128_u64[0];
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 1)
  {
    a2 = 3;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
LABEL_5:
    MEMORY[0x259C6F990]([a1 numberOfRowsInSection_], a2);
    sub_257D0E708(a3, v14, 1);
    (*(v7 + 8))(v14, v6);
  }
}

uint64_t sub_257D0E470(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_257ECCEB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v27 - v21;
  sub_257ECCE40();
  if (a4 == 1)
  {
    a4 = 3;
  }

  else if (a4 != 2)
  {
    return (*(v9 + 8))(v22, v8);
  }

  v24 = a3;
  v25 = a1;
  MEMORY[0x259C6F990]([v24 numberOfRowsInSection_], a4);
  sub_257D0E708(v22, v15, 1);

  v26 = *(v9 + 8);
  v26(v15, v8);
  return (v26)(v22, v8);
}

BOOL sub_257D0E600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v13 = a1;
  sub_257ECDBE0();

  (*(v6 + 8))(v12, v5);
  return v17 < 0xF0u && (v17 & 0xC0) == 64;
}

void sub_257D0E708(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90, &qword_257EE31E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v26 - v10;
  sub_257ECCEB0();
  sub_257CE50DC();
  if (sub_257ECF450())
  {
    return;
  }

  sub_257ECDBE0();
  v12 = v39;
  if (v39 > 0xEFu)
  {
    return;
  }

  sub_257ECDBE0();
  v13 = v38;
  sub_257ECDC00();
  if (v13 > 0xEF)
  {
    v14 = sub_257ECDB80();
    v15 = sub_257ECCEA0();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v14 + 16))
    {
      v16 = *(v14 + v15 + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EA0, &unk_257EDB200);
      v17 = swift_allocObject();
      v26 = xmmword_257ED6D30;
      *(v17 + 16) = xmmword_257ED6D30;
      *(v17 + 32) = v12;
      sub_257ECDB30();

      v18 = swift_allocObject();
      *(v18 + 16) = v26;
      *(v18 + 32) = v12;
      v37 = v16;
      sub_257ECDB20();

      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v36 = v12;
  v19 = sub_257ECDB40();
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    v35 = v13;
    v22 = sub_257ECDB40();
    if ((v23 & 1) == 0)
    {
      if (v21 < v22)
      {
        v31 = v12;
        sub_257ECDB70();
        v24 = v32;
        v29 = v13;
        sub_257ECDB70();
        if (v24 == 5)
        {
          if (v30 != 5)
          {
            goto LABEL_16;
          }
        }

        else if (v30 == 5 || v24 != v30)
        {
          goto LABEL_16;
        }

        v28 = v12;
        v27 = v13;
        sub_257ECDB90();
        goto LABEL_17;
      }

LABEL_16:
      v34 = v12;
      v33 = v13;
      sub_257ECDBA0();
    }
  }

LABEL_17:
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  v25 = (v5 + 8);
  if (a3)
  {
    sub_257ECDBF0();
  }

  else
  {
    sub_257ECDBC0();
  }

  (*v25)(v11, v4);
}