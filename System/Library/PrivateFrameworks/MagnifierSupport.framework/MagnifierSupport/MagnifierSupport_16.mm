uint64_t sub_257D29F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_257ECE1D0();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v54 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECE540();
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C0, &qword_257EE4230) - 8;
  MEMORY[0x28223BE20](v57, v14, v15, v16, v17);
  v58 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = v53 - v24;
  sub_257ECE530();
  sub_257ECE520();
  v53[1] = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v64 = v60;
  sub_257DE50BC();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v26 = sub_257ECEAD0();
  v28 = v27;
  v30 = v29;
  v60 = sub_257ECED60();
  v31 = sub_257ECEAB0();
  v33 = v32;
  v35 = v34;
  sub_257C0300C(v26, v28, v30 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v64 = v60;
  MFReaderFont.rawValue.getter();
  sub_257ECEA10();

  v36 = sub_257ECEAC0();
  v38 = v37;
  LOBYTE(v26) = v39;
  v41 = v40;

  sub_257C0300C(v31, v33, v35 & 1);

  v60 = v36;
  v61 = v38;
  v62 = v26 & 1;
  v63 = v41;
  v43 = v54;
  v42 = v55;
  v44 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDFA10], v56);
  sub_257ECEBA0();
  (*(v42 + 8))(v43, v44);
  sub_257C0300C(v36, v38, v26 & 1);

  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C8, &qword_257EE4238) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v46 = &v25[*(v57 + 44)];
  *v46 = KeyPath;
  v46[8] = 0;
  v47 = sub_257ECEE10();
  v48 = sub_257ECED60();
  v49 = v58;
  sub_257BE401C(v25, v58, &qword_27F8F83C0, &qword_257EE4230);
  v50 = v59;
  sub_257BE401C(v49, v59, &qword_27F8F83C0, &qword_257EE4230);
  v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83E0, &unk_257EE4250) + 48));
  *v51 = v47;
  v51[1] = v48;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257BE4084(v25, &qword_27F8F83C0, &qword_257EE4230);

  return sub_257BE4084(v49, &qword_27F8F83C0, &qword_257EE4230);
}

uint64_t sub_257D2A464@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = sub_257ECE750();
  v2 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0], v3, v4, v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8330, &qword_257EE40F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v19 - v15;
  v21 = v1;
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8338, &qword_257EE40F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8340, &qword_257EE4100);
  sub_257D2A72C();
  sub_257BD2D4C(&qword_27F8F8370, &qword_27F8F8340, &qword_257EE4100, MEMORY[0x277CDF038]);
  sub_257ECEA90();
  sub_257ECE740();
  sub_257BD2D4C(&qword_27F8F8378, &qword_27F8F8330, &qword_257EE40F0, MEMORY[0x277CDE5B0]);
  sub_257D2A9C0(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v17 = v19[0];
  sub_257ECEB60();
  (*(v2 + 8))(v8, v17);
  return (*(v10 + 8))(v16, v9);
}

unint64_t sub_257D2A72C()
{
  result = qword_27F8F8348;
  if (!qword_27F8F8348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8338, &qword_257EE40F8);
    v1 = MEMORY[0x277CE1138];
    sub_257BD2D4C(&qword_27F8F8350, &qword_27F8F8358, &qword_257EE4108, MEMORY[0x277CE1138]);
    sub_257BD2D4C(&qword_27F8F8360, &qword_27F8F8368, &qword_257EE4110, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8348);
  }

  return result;
}

unint64_t sub_257D2A80C()
{
  result = qword_27F8F83F0;
  if (!qword_27F8F83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F83F0);
  }

  return result;
}

unint64_t sub_257D2A860()
{
  result = qword_27F8F83F8;
  if (!qword_27F8F83F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F83E8, &unk_257EE4260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4960, &qword_257ED6D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F67E0, &qword_257EE1E10);
    sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0, &qword_257EE1E10, MEMORY[0x277D84338]);
    swift_getOpaqueTypeConformance2();
    sub_257D2A80C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F83F8);
  }

  return result;
}

uint64_t sub_257D2A9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257D2AA08()
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

void sub_257D2ABA8()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_tableView];
  [v2 setDataSource_];
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

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257D2AD78()
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
            memcpy(v19, (v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), v20, 0x128uLL);
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

id sub_257D2B044(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v7], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_availableImageCaptionFeedbacks] = &unk_286905868;
  v8 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_tableView;
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

id sub_257D2B23C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v4], __src, 0x128uLL);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_availableImageCaptionFeedbacks] = &unk_286905890;
  v5 = OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_tableView;
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

unint64_t sub_257D2B54C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCEA0();
  if (!v4)
  {
    v17 = sub_257ECF4C0();
    v18 = sub_257ECCE30();
    v8 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:v18];

    sub_257D2AD78();
    v19 = [v8 textLabel];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v23 = sub_257ECF4C0();
      v24 = sub_257ECF4C0();
      v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

      if (!v25)
      {
        sub_257ECF500();
        v25 = sub_257ECF4C0();
      }

      [v20 setText_];
    }

    v26 = [v8 textLabel];
    if (v26)
    {
      v27 = v26;
      [v26 setNumberOfLines_];
    }

    v28 = [v8 textLabel];
    if (v28)
    {
      v29 = v28;
      [v28 setLineBreakMode_];
    }

    v30 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v31 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) == 1)
    {
    }

    else
    {
      [v30 setOn_];
      v32 = v30;
      [v32 setTag_];
      [v32 addTarget:v2 action:sel_toggleImageCaptionsSwitchChanged_ forControlEvents:4096];
      [v8 setAccessoryView_];
    }

    return v8;
  }

  v5 = v4 != 1;
  v6 = sub_257ECF4C0();
  v7 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  sub_257D2AD78();
  if (v5)
  {
    return v8;
  }

  v9 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_availableImageCaptionFeedbacks);
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v9 + 16))
  {
    v11 = *(v9 + result + 32);
    v12 = [v8 textLabel];
    if (v12)
    {
      v13 = v12;
      sub_257D2C2BC(v11);
      v14 = sub_257ECF4C0();

      [v13 setText_];
    }

    v15 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v16 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) != 1)
    {
      [v15 setOn_];
      v15 = v15;
      [v15 setTag_];
      [v15 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v8 setAccessoryView_];

      [v8 setAccessoryType_];
    }

    return v8;
  }

  __break(1u);
  return result;
}

double sub_257D2BB20(void *a1)
{
  v2 = v1;
  sub_257D2AD78();
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

  v7 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity;
  memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) != 1)
  {
    v8 = *(v7 + 184);

    if ([a1 isOn])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8480, &qword_257EE44E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v6;
      sub_257EB1220(inited);
      sub_257D2BCF8(v8);
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
              sub_257BF29C4(0, *(v12 + 16) + 1, 1);
            }

            v14 = *(v12 + 16);
            v13 = *(v12 + 24);
            if (v14 >= v13 >> 1)
            {
              sub_257BF29C4((v13 > 1), v14 + 1, 1);
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

      sub_257D2BCF8(v12);
    }
  }

  return result;
}

double sub_257D2BCF8(char *a1)
{
  sub_257D2AD78();
  v7 = a1;

  sub_257D6D268(&v7);
  v3 = v7;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D74310() & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  else
  {
    sub_257CE2F44(v3, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_257D2BE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_257D2C0AC(uint64_t a1)
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

uint64_t sub_257D2C1B4(uint64_t a1)
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

uint64_t sub_257D2C2BC(char a1)
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

void sub_257D2C494()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v39 = *(v18 - 8);
  *&v23 = MEMORY[0x28223BE20](v18, v19, v20, v21, v22).n128_u64[0];
  v25 = &v37 - v24;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_viewDidLoad, v23);
  v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_tableView];
  [v26 setDataSource_];
  [v26 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = sub_257ECF4C0();
  [v26 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v1 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_7;
  }

  v30 = v29;
  [v29 addSubview_];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v32 = v31;
  v38 = v18;
  sub_257EB6FD8(v31, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v33 = [objc_opt_self() mainRunLoop];
  v40 = v33;
  v34 = sub_257ED0080();
  (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BD2CDC(v9);

  (*(v11 + 8))(v17, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v35 = v38;
  v36 = sub_257ECDE50();

  (*(v39 + 8))(v25, v35);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_speechFeedbackSubscription] = v36;
}

void sub_257D2C9A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v15[7] == 1)
    {
      [v11 beginUpdates];
      MEMORY[0x259C6F970](1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_257ED6D30;
      (*(v3 + 16))(v13 + v12, v9, v2);
      v14 = sub_257ECF7F0();

      [v11 reloadRowsAtIndexPaths:v14 withRowAnimation:100];

      [v11 endUpdates];
      (*(v3 + 8))(v9, v2);
    }

    else
    {
    }
  }
}

void sub_257D2CC38(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
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

id sub_257D2CDF4(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_availableImageCaptionFeedbacks] = &unk_2869058E0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_speechFeedbackSubscription] = 0;
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

id sub_257D2CFB8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_availableImageCaptionFeedbacks] = &unk_286905908;
  v4 = OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_speechFeedbackSubscription] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257D2D1C0(void *a1)
{
  v3 = v1;
  v5 = sub_257ECF4C0();
  v6 = sub_257ECCE30();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport34ImageCaptionSettingsViewController_availableImageCaptionFeedbacks);
  v9 = v7;
  v10 = sub_257ECCE60();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= *(v8 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v8 = *(v8 + v10 + 32);
  v11 = [v9 textLabel];
  if (v11)
  {
    v12 = v11;
    sub_257D2C2BC(v8);
    v13 = sub_257ECF4C0();

    [v12 setText_];
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  if (qword_281544FE0 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  swift_beginAccess();
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470, &unk_257EDEFB0);
  sub_257ECFD50();

  v20 = sub_257C592E8(v8, v23);

  [v2 setOn_];
  v21 = v2;
  [v21 setTag_];
  [v21 addTarget:v3 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
  [v9 setAccessoryView_];

  [v9 setAccessoryType_];
  return v9;
}

id sub_257D2D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    a5(a1, a2, a3);
    if (v8)
    {
      v9 = sub_257ECF4C0();

      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

unint64_t sub_257D2D8D8()
{
  result = qword_27F8F8460;
  if (!qword_27F8F8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8460);
  }

  return result;
}

unint64_t sub_257D2D970()
{
  result = qword_2815447C8;
  if (!qword_2815447C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815447C8);
  }

  return result;
}

uint64_t sub_257D2D9C4()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257D2DAB4()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

double sub_257D2DBA4(void *a1)
{
  v2 = [a1 tag];
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470, &unk_257EDEFB0);
    sub_257ECFD50();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8480, &qword_257EE44E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = v4;
    sub_257EB1220(inited);
    sub_257D59960(v24, 1);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470, &unk_257EDEFB0);
    sub_257ECFD50();

    v18 = *(v24 + 16);
    if (v18)
    {
      v19 = (v24 + 32);
      v20 = MEMORY[0x277D84F90];
      do
      {
        v23 = *v19;
        if (v4 != v23)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_257BF29C4(0, *(v20 + 16) + 1, 1);
          }

          v22 = *(v20 + 16);
          v21 = *(v20 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_257BF29C4((v21 > 1), v22 + 1, 1);
          }

          *(v20 + 16) = v22 + 1;
          *(v20 + v22 + 32) = v23;
        }

        ++v19;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    sub_257D59960(v20, 1);
  }

  return result;
}

void sub_257D2E134()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  [v0 setAutoresizesSubviews_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  v4 = qword_281548308;
  [v3 setBackgroundColor_];
  v5 = [v3 layer];
  v6 = [v1 systemYellowColor];
  v7 = [v6 CGColor];

  [v5 setBorderColor_];
  v8 = [v3 layer];
  [v8 setBorderWidth_];

  v9 = [v3 layer];
  [v9 setCornerRadius_];

  v10 = [v3 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = [v3 layer];
  [v11 setMasksToBounds_];

  v12 = [v3 layer];
  v13 = [v4 CGColor];
  [v12 setShadowColor_];

  v14 = [v3 layer];
  LODWORD(v15) = 1.0;
  [v14 setShadowOpacity_];

  v16 = [v3 layer];
  [v16 setShadowOffset_];

  v17 = [v3 layer];
  [v17 setShadowRadius_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setUserInteractionEnabled_];
  [v0 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257EDBE40;
  v20 = [v3 widthAnchor];
  v21 = [v0 widthAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 multiplier:0.75];

  *(v19 + 32) = v22;
  v23 = [v3 heightAnchor];
  v24 = [v0 heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 multiplier:0.75];

  *(v19 + 40) = v25;
  v26 = [v3 centerXAnchor];
  v27 = [v0 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [v3 centerYAnchor];
  v30 = [v0 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  sub_257C80FFC();
  v32 = sub_257ECF7F0();

  [v18 activateConstraints_];

  v33 = sub_257ECF4C0();
  v34 = [objc_opt_self() _systemImageNamed_];

  if (v34)
  {
    v35 = [v34 imageWithRenderingMode_];
  }

  else
  {
    v35 = 0;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v52 setContentMode_];
  [v52 setClipsToBounds_];
  [v0 bounds];
  [v52 setFrame_];
  [v52 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [v1 clearColor];
  [v52 setBackgroundColor_];

  v37 = [v1 systemYellowColor];
  [v52 setTintColor_];

  [v52 setUserInteractionEnabled_];
  [v3 addSubview_];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_257EDBE40;
  v39 = [v52 widthAnchor];
  v40 = [v3 widthAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 multiplier:0.75];

  *(v38 + 32) = v41;
  v42 = [v52 heightAnchor];
  v43 = [v3 heightAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 multiplier:0.75];

  *(v38 + 40) = v44;
  v45 = [v52 centerXAnchor];
  v46 = [v0 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v38 + 48) = v47;
  v48 = [v52 centerYAnchor];

  v49 = [v0 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v38 + 56) = v50;
  v51 = sub_257ECF7F0();

  [v18 activateConstraints_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
}

id TranscriptButton.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TranscriptButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_257D2EABC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t ANSTDetectedPerson.debugDescription.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  sub_257ED02D0();
  MEMORY[0x259C72150](0x206E6F737265503CLL, 0xE800000000000000);
  v5 = sub_257ED0600();
  MEMORY[0x259C72150](v5);

  MEMORY[0x259C72150](0x3A65636166207C20, 0xE800000000000000);
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x259C72150](v6, v7);

  MEMORY[0x259C72150](0x6F626C6C7566202CLL, 0xEB000000003A7964);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x259C72150](v8, v9);

  MEMORY[0x259C72150](0x427265707075202CLL, 0xEC0000003A79646FLL);
  if (v2)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x259C72150](v10, v11);

  MEMORY[0x259C72150](0x3A73646E6168202CLL, 0xE800000000000000);
  if (v4 >> 62)
  {
    sub_257ED0210();
  }

  v12 = sub_257ED0600();
  MEMORY[0x259C72150](v12);

  MEMORY[0x259C72150](62, 0xE100000000000000);
  return 0;
}

BOOL _s16MagnifierSupport18ANSTDetectedPersonV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  if (v2)
  {
    if (!v8)
    {
      return 0;
    }

    sub_257BD2C2C(0, &qword_27F8F5740, 0x277CE49F0);
    v14 = v8;
    v15 = v2;
    v16 = sub_257ECFF50();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    sub_257BD2C2C(0, &qword_27F8F5750, 0x277CE4A10);
    v18 = v9;
    v19 = v3;
    v20 = sub_257ECFF50();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  sub_257BD2C2C(0, &qword_27F8F5750, 0x277CE4A10);
  v21 = v11;
  v22 = v5;
  v23 = sub_257ECFF50();

  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if ((sub_257D552D0(v4, v10) & 1) == 0)
  {
    return 0;
  }

  return v6 == v12 && v7 == v13;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_257D2EFD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257D2F020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_257D2F07C(unint64_t isUniquelyReferenced_nonNull_native, unint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6)
{
  v12 = sub_257BE8BB8(MEMORY[0x277D84F90]);
  v100 = v12;
  if (a2 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v97 = isUniquelyReferenced_nonNull_native;
    v93 = a3;
    if (!i)
    {
      break;
    }

    v14 = 0;
    v15 = 0;
    a3 = 0;
    v94 = a2 & 0xC000000000000001;
    v89 = a2 & 0xFFFFFFFFFFFFFF8;
    v91 = a2;
    if ((a2 & 0xC000000000000001) != 0)
    {
LABEL_5:
      v16 = MEMORY[0x259C72E20](v14, a2);
      goto LABEL_8;
    }

    while (1)
    {
      if (v14 >= *(v89 + 16))
      {
        goto LABEL_76;
      }

      v16 = *(a2 + 8 * v14 + 32);
LABEL_8:
      v6 = v16;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      a2 = i;
      v17 = [v16 groupID];
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      v6 = v6;
      sub_257BBD88C(v15, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v12;
      v20 = sub_257C040A0(v17);
      v21 = v12[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_71;
      }

      v24 = v19;
      if (v12[3] >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v97;
          if (v19)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_257C07FD4();
          v12 = v99;
          isUniquelyReferenced_nonNull_native = v97;
          if (v24)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_257EC3228(v23, isUniquelyReferenced_nonNull_native);
        v12 = v99;
        v25 = sub_257C040A0(v17);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_100;
        }

        v20 = v25;
        isUniquelyReferenced_nonNull_native = v97;
        if (v24)
        {
LABEL_16:

          v27 = v12[7] + 56 * v20;
          goto LABEL_20;
        }
      }

      a3 = [v6 groupID];

      v12[(v20 >> 6) + 8] |= 1 << v20;
      *(v12[6] + 8 * v20) = v17;
      v28 = (v12[7] + 56 * v20);
      *v28 = a3;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = 0;
      v28[6] = 0;
      v28[4] = MEMORY[0x277D84F90];
      v28[5] = 0;
      v29 = v12[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_74;
      }

      v12[2] = v31;
      v27 = v12[7] + 56 * v20;
LABEL_20:
      v32 = *(v27 + 16);
      *(v27 + 16) = v6;

      i = a2;
      if (v14 + 1 == a2)
      {
        v100 = v12;
        v88 = v18;
        v90 = sub_257D2F99C;
        v33 = v93;
        if (!(v93 >> 62))
        {
          goto LABEL_24;
        }

LABEL_55:
        v60 = v33;
        v61 = sub_257ED0210();
        v33 = v60;
        v34 = v61;
        if (!v61)
        {
          goto LABEL_56;
        }

LABEL_25:
        isUniquelyReferenced_nonNull_native = 0;
        v35 = 0;
        a3 = 0;
        v95 = v33 & 0xC000000000000001;
        v92 = v33 & 0xFFFFFFFFFFFFFF8;
        if ((v33 & 0xC000000000000001) != 0)
        {
LABEL_26:
          v36 = MEMORY[0x259C72E20](isUniquelyReferenced_nonNull_native);
          goto LABEL_29;
        }

        while (2)
        {
          if (isUniquelyReferenced_nonNull_native >= *(v92 + 16))
          {
            goto LABEL_77;
          }

          v36 = *(v33 + 8 * isUniquelyReferenced_nonNull_native + 32);
LABEL_29:
          a2 = v36;
          if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
          {
            goto LABEL_72;
          }

          v37 = [v36 groupID];
          v38 = swift_allocObject();
          *(v38 + 16) = a2;
          v6 = a2;
          sub_257BBD88C(v35, a3);
          a2 = swift_isUniquelyReferenced_nonNull_native();
          v99 = v12;
          v40 = sub_257C040A0(v37);
          v41 = v12[2];
          v42 = (v39 & 1) == 0;
          v43 = v41 + v42;
          if (__OFADD__(v41, v42))
          {
            goto LABEL_73;
          }

          v44 = v39;
          if (v12[3] >= v43)
          {
            if (a2)
            {
              a2 = 56;
              if ((v39 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else
            {
              sub_257C07FD4();
              v12 = v99;
              a2 = 56;
              if ((v44 & 1) == 0)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            sub_257EC3228(v43, a2);
            v12 = v99;
            v45 = sub_257C040A0(v37);
            if ((v44 & 1) != (v46 & 1))
            {
              goto LABEL_100;
            }

            v40 = v45;
            a2 = 56;
            if ((v44 & 1) == 0)
            {
LABEL_39:
              a3 = [v6 groupID];

              v12[(v40 >> 6) + 8] |= 1 << v40;
              *(v12[6] + 8 * v40) = v37;
              v47 = (v12[7] + 56 * v40);
              *v47 = a3;
              v47[1] = 0;
              v47[2] = 0;
              v47[3] = 0;
              v47[6] = 0;
              v47[4] = MEMORY[0x277D84F90];
              v47[5] = 0;
              v48 = v12[2];
              v30 = __OFADD__(v48, 1);
              v49 = v48 + 1;
              if (v30)
              {
                goto LABEL_75;
              }

              v12[2] = v49;
              goto LABEL_41;
            }
          }

LABEL_41:
          v50 = v12[7] + 56 * v40;
          v51 = *(v50 + 24);
          *(v50 + 24) = v6;

          if (isUniquelyReferenced_nonNull_native + 1 == v34)
          {
            v100 = v12;
            v96 = sub_257D2F950;
            isUniquelyReferenced_nonNull_native = v97;
            if (v97 >> 62)
            {
              goto LABEL_57;
            }

            goto LABEL_45;
          }

          ++isUniquelyReferenced_nonNull_native;
          v35 = sub_257D2F950;
          a3 = v38;
          v33 = v93;
          if (v95)
          {
            goto LABEL_26;
          }

          continue;
        }
      }

      ++v14;
      v15 = sub_257D2F99C;
      a3 = v18;
      a2 = v91;
      if (v94)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v33 = a3;
  v88 = 0;
  v90 = 0;
  if (a3 >> 62)
  {
    goto LABEL_55;
  }

LABEL_24:
  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
    goto LABEL_25;
  }

LABEL_56:
  v96 = 0;
  v38 = 0;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_57:
    v52 = sub_257ED0210();
    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
LABEL_45:
    v52 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_58;
    }
  }

  if (v52 < 1)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:

    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

  v53 = 0;
  v6 = &v99;
  do
  {
    if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x259C72E20](v53, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v54 = *(isUniquelyReferenced_nonNull_native + 8 * v53 + 32);
    }

    v55 = v54;
    v57 = sub_257DFE48C(&v99, [v54 groupID]);
    if (*(v56 + 32))
    {
      v58 = *(v56 + 8);
      *(v56 + 8) = v55;
      v59 = v55;
    }

    (v57)(&v99, 0);
    ++v53;
  }

  while (v52 != v53);
LABEL_58:
  v62 = a4;
  if (a4 >> 62)
  {
    v72 = sub_257ED0210();
    v62 = a4;
    v63 = v72;
    if (!v72)
    {
      goto LABEL_80;
    }

LABEL_60:
    if (v63 >= 1)
    {
      v64 = 0;
      v65 = v62 & 0xC000000000000001;
      do
      {
        if (v65)
        {
          v66 = MEMORY[0x259C72E20](v64);
        }

        else
        {
          v66 = *(v62 + 8 * v64 + 32);
        }

        v67 = v66;
        v68 = sub_257DFE48C(&v99, [v66 groupID]);
        v70 = (v69 + 32);
        if (*(v69 + 32))
        {
          v71 = v67;
          MEMORY[0x259C72300]();
          if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_257ECF830();
          }

          sub_257ECF860();
        }

        (v68)(&v99, 0);
        ++v64;

        v62 = a4;
      }

      while (v63 != v64);
      goto LABEL_80;
    }

    goto LABEL_98;
  }

  v63 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v63)
  {
    goto LABEL_60;
  }

LABEL_80:
  v73 = v100;
  v74 = v100 + 8;
  v75 = 1 << *(v100 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v6 = v76 & v100[8];
  v77 = (v75 + 63) >> 6;

  v78 = 0;
  while (v6)
  {
    v79 = v78;
LABEL_89:
    v80 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v82 = sub_257DFE48C(&v99, *(v73[6] + ((v79 << 9) | (8 * v80))));
    if (*(v81 + 32))
    {
      *(v81 + 40) = a5;
      *(v81 + 48) = a6;
    }

    (v82)(&v99, 0);
    v78 = v79;
  }

  while (1)
  {
    v79 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    if (v79 >= v77)
    {
      break;
    }

    v6 = v74[v79];
    ++v78;
    if (v6)
    {
      goto LABEL_89;
    }
  }

  v83 = v100;
  v84 = v100[2];
  if (v84)
  {
    v85 = sub_257C63D68(v100[2], 0);
    v86 = sub_257C6749C(&v99, (v85 + 4), v84, v83);
    v6 = v99;

    sub_257C02520(v6);
    if (v86 != v84)
    {
      goto LABEL_99;
    }

    sub_257BBD88C(v90, v88);
    sub_257BBD88C(v96, v38);
  }

  else
  {

    sub_257BBD88C(v90, v88);
    sub_257BBD88C(v96, v38);
    return MEMORY[0x277D84F90];
  }

  return v85;
}

id sub_257D2F954@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) groupID];
  *a1 = result;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v4 = MEMORY[0x277D84F90];
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v4;
  return result;
}

void sub_257D2F9A0(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter) = *a1;
  v3 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView) layer];
  if (*(v1 + v2) == 12)
  {
    [v3 setFilters_];
  }

  else
  {
    v4 = sub_257D18A0C();
    sub_257EB7394(v4);

    v6 = sub_257ECF7F0();

    [v3 setFilters_];
  }
}

char *sub_257D2FA80(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter] = 12;
  v10 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setAutoresizesSubviews_];
  v12 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView;
  [*&v11[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView] setContentMode_];
  [*&v11[v12] setClipsToBounds_];
  v13 = *&v11[v12];
  [v11 bounds];
  [v13 setFrame_];
  [v11 addSubview_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_257EB6FD8(v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  return v11;
}

void sub_257D2FCE4()
{
  v1 = v0;
  v2 = sub_257D30364();
  v3 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  [v2 setIsAccessibilityElement_];

  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v7 = 0;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_6:
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    v10 = (*(v8 + 24))(v1, &off_28690D558, v9, v8);
    swift_unknownObjectRelease();
    if ((v7 & 1) == 0)
    {
      v7 = v10;
      goto LABEL_9;
    }

LABEL_7:
    v11 = sub_257D302D4();
    [v11 setAccessibilityHint_];
    v12 = 1;
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:
  v13 = *(v1 + v3);
  v14 = sub_257D302D4();
  v11 = v14;
  if (v13 == 1 && (v7 & 1) == 0)
  {
    [v14 setAccessibilityHint_];
    v12 = 0;
  }

  else
  {
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

    [v11 setAccessibilityHint_];

    v12 = 0;
    v11 = v19;
  }

LABEL_15:

  v20 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed);
  v21 = sub_257D302D4();
  v22 = *MEMORY[0x277D76580];
  v23 = [v21 accessibilityTraits];
  if (v20 == 1)
  {
    [v21 setAccessibilityTraits_];

    v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
    [v24 setAccessibilityTraits_];
  }

  else
  {
    [v21 setAccessibilityTraits_];

    v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
    [v24 setAccessibilityTraits_];
  }

  v25 = *(v1 + v3);
  v26 = sub_257D302D4();
  v27 = *MEMORY[0x277D76598];
  v28 = [v26 accessibilityTraits];
  if (v25)
  {
    v29 = v28 | v27;
  }

  else
  {
    v29 = v28 & ~v27;
  }

  [v26 setAccessibilityTraits_];

  v30 = sub_257D302D4();
  v31 = *MEMORY[0x277D76548];
  v32 = [v30 accessibilityTraits];
  if (v12)
  {
    v33 = v32 & ~v31;
  }

  else
  {
    v33 = v32 | v31;
  }

  [v30 setAccessibilityTraits_];

  v34 = sub_257D302D4();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  sub_257D188B4();
  type metadata accessor for MAGUtilities();
  v35 = swift_getObjCClassFromMetadata();
  v36 = [objc_opt_self() &selRef:v35 setValues:? + 3];
  v37 = sub_257ECF4C0();

  v38 = sub_257ECF4C0();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  if (!v39)
  {
    sub_257ECF500();
    v39 = sub_257ECF4C0();
  }

  [v34 setAccessibilityValue_];
}

id sub_257D302D4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config + 8);
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

id sub_257D30364()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber);
  }

  else
  {
    type metadata accessor for LensFiltersScrubber();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257D303DC()
{
  v1 = sub_257D30364();
  v2 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber) setIsAccessibilityElement_];
  v4 = sub_257D302D4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_257ECF500();
  v10 = sub_257ECF4C0();

  [v4 setAccessibilityHint_];

  sub_257D2FCE4();
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D3064C(char a1)
{
  v3 = sub_257ECF120();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_257ECF190();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v11, v12, v13, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = a1;
  aBlock[4] = sub_257D329A4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_54_0;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v9, v19);
  _Block_release(v19);

  (*(v23 + 8))(v9, v3);
  return (*(v10 + 8))(v16, v22);
}

void sub_257D30918(unsigned __int8 *a1, char a2)
{
  v3 = a2 & 1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing;
  v5 = a1[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing];
  v6 = objc_opt_self();
  v7 = &selRef_systemYellowColor;
  if (!v5)
  {
    v7 = &selRef_whiteColor;
  }

  v8 = [v6 *v7];
  [a1 setTintColor_];

  if (a1[v4] != v3)
  {
    if (Control.rawValue.getter() == 0x737265746C6966 && v9 == 0xE700000000000000)
    {
    }

    else
    {
      v10 = sub_257ED0640();

      if ((v10 & 1) == 0)
      {
        if (a1[v4] == 1)
        {
          v18 = sub_257D15408();
        }

        else
        {
          v18 = sub_257D14B7C();
        }

        v16 = v18;
        v17 = sub_257D302D4();
        [v17 setImage:v16 forState:0];
LABEL_14:

        sub_257D2FCE4();
        return;
      }
    }

    v11 = [a1 tintColor];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [objc_opt_self() configurationWithHierarchicalColor_];

    v14 = v13;
    v15 = sub_257ECF4C0();
    v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

    v17 = sub_257D302D4();
    [v17 setImage:v16 forState:0];

    goto LABEL_14;
  }
}

char *sub_257D30B64(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_freezeFrameReviewSubscription] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_control] = v6;
  v7 = &v3[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config];
  *v7 = a2;
  v7[1] = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for ScrubberButton();
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257D30CF8();
  [v8 setShowsLargeContentViewer_];
  [v8 setScalesLargeContentImage_];
  v9 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v8 addInteraction_];

  return v8;
}

void sub_257D30CF8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor_];

  v4 = [v2 whiteColor];
  [v1 setTintColor_];

  [v1 setClipsToBounds_];
  v5 = sub_257D14B7C();
  v6 = sub_257D302D4();
  [v6 setImage:v5 forState:0];

  v7 = sub_257D30364();
  [v7 setAlpha_];

  v8 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  [v1 addSubview_];
  [v1 addSubview_];

  sub_257D30E78();
}

void sub_257D30E78()
{
  v1 = v0;
  v2 = sub_257D302D4();
  [v2 setIsAccessibilityElement_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton);
  sub_257D14A40(v4);
  v5 = sub_257ECF4C0();

  [v4 setAccessibilityLabel_];

  v6 = *(v1 + v3);
  Control.rawValue.getter();
  v7 = v1;
  v8 = v6;
  v9 = sub_257ECF4C0();

  [v8 setAccessibilityIdentifier_];

  v10 = *(v7 + v3);
  v11 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  if (*(v7 + v11))
  {
    v12 = v10;
    v13 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();
    v12 = v10;
    v16 = [v15 bundleForClass_];
    v17 = sub_257ECF4C0();
    v18 = sub_257ECF4C0();
    v13 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v13)
    {
      sub_257ECF500();
      v13 = sub_257ECF4C0();
    }
  }

  [v12 setAccessibilityHint_];

  sub_257D2FCE4();
}

double sub_257D310BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740, &qword_257EEBBB0);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v91 = v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v89 = *(v6 - 8);
  v90 = v6;
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v88 = v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8750, &qword_257EE4708);
  v93 = *(v12 - 8);
  v94 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v92 = v73 - v17;
  v18 = sub_257ECF130();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_257ECFD10();
  v84 = *(v26 - 8);
  v85 = v26;
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0, &qword_257EE4710);
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v33, v34, v35, v36);
  v38 = v73 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F8, &qword_257EE4718);
  v82 = *(v39 - 8);
  v83 = v39;
  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  v45 = v73 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8500, &unk_257EE4720);
  v86 = *(v46 - 8);
  v87 = v46;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v76 = v73 - v51;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0, qword_257ED9EC0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257ECFD00();
  v52 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v53 = *MEMORY[0x277D851C0];
  v77 = *(v19 + 104);
  v77(v25, v53, v18);
  v73[1] = v52;
  v54 = sub_257ECFD90();
  v55 = v18;
  v74 = v18;
  v56 = v54;
  v75 = *(v19 + 8);
  v75(v25, v55);
  v96 = v56;
  v80 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0, &qword_257EE4710, MEMORY[0x277CBCEC8]);
  v79 = sub_257BE416C();
  v57 = v78;
  sub_257ECDE00();

  (*(v84 + 8))(v32, v85);
  (*(v81 + 8))(v38, v57);
  sub_257BD2D4C(&unk_2815442C8, &qword_27F8F84F8, &qword_257EE4718, MEMORY[0x277CBCD20]);
  v58 = v76;
  v59 = v83;
  sub_257ECDDD0();
  (*(v82 + 8))(v45, v59);
  swift_allocObject();
  v60 = v95;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_2815443A0, &qword_27F8F8500, &unk_257EE4720, MEMORY[0x277CBCC08]);
  v61 = v87;
  v62 = sub_257ECDE50();

  (*(v86 + 8))(v58, v61);
  *(v60 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_glowSubscription) = v62;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v63 = v88;
  sub_257ECDD30();
  swift_endAccess();
  v64 = v74;
  v77(v25, *MEMORY[0x277D851B8], v74);
  v65 = sub_257ECFD90();
  v75(v25, v64);
  v96 = v65;
  v66 = sub_257ECFCF0();
  v67 = v91;
  (*(*(v66 - 8) + 56))(v91, 1, 1, v66);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v80);
  v68 = v92;
  v69 = v90;
  sub_257ECDDF0();
  sub_257D328F8(v67);

  (*(v89 + 8))(v63, v69);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544240, &qword_27F8F8750, &qword_257EE4708, MEMORY[0x277CBCD60]);
  v70 = v94;
  v71 = sub_257ECDE50();

  (*(v93 + 8))(v68, v70);
  *(v60 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_freezeFrameReviewSubscription) = v71;

  return result;
}

void sub_257D31A10(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing);
    v4[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing] = v2;
    sub_257D3064C(v5);
  }
}

void *sub_257D31A80(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v25 = sub_257ECFD30();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    aBlock[4] = sub_257D32968;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_30;
    v21 = _Block_copy(aBlock);
    v24 = v19;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    v23 = v10;
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v22 = v25;
    MEMORY[0x259C72880](0, v17, v9, v21);
    _Block_release(v21);

    (*(v3 + 8))(v9, v2);
    return (*(v11 + 8))(v17, v23);
  }

  return result;
}

void sub_257D31D78()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing];
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

void sub_257D31E88(uint64_t a1)
{
  v2 = v1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ScrubberButton();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v3 = &v1[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config];
  v4 = *&v1[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_config];
  v5 = *(v3 + 1);
  v6 = *(v5 + 24);
  v7 = v6(v4, v5);
  v8 = v6(v4, v5);
  [v2 bounds];
  v10 = v9;
  v11 = v6(v4, v5);
  v12 = v6(v4, v5);
  v13 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  v14 = 0.0;
  v15 = v8;
  v16 = v7;
  if (*(v2 + v13) == 1)
  {
    v14 = (v10 - v11) * 0.5;
    [v2 bounds];
    v16 = v17;
    v15 = v12;
  }

  v18 = sub_257D302D4();
  [v18 setFrame_];

  v19 = sub_257D30364();
  [v19 setFrame_];
}

id sub_257D32134(__n128 a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_257D53928();
  v3 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_control;
  v4 = sub_257C3EF48(v1[OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_control], v2);

  if (v4)
  {
    v9 = v1[v3];
    sub_257D56A50(&v9);
    v5 = type metadata accessor for ScrubberButton();
    v8.receiver = v1;
    v6 = &v8;
  }

  else
  {
    v5 = type metadata accessor for ScrubberButton();
    v10 = v1;
    v6 = &v10;
  }

  v6->super_class = v5;
  return [(objc_super *)v6 removeFromSuperview];
}

id sub_257D32288(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScrubberButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_257D3235C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257D323A0(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_257D303DC();
}

void (*sub_257D323F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_257D32458;
}

void sub_257D32458(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_257D303DC();
  }
}

void sub_257D3249C(char a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed) = a1;
  sub_257D2FCE4();
  v3 = sub_257D30364();
  [v3 setEnabled_];

  sub_257D31D78();
}

uint64_t sub_257D3251C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257D2FCE4();

  return swift_unknownObjectRelease();
}

uint64_t sub_257D3256C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257D302D4();
  return v0;
}

id sub_257D32658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_257ECF4C0();

  return v3;
}

BOOL sub_257D326C4(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
  if (sub_257ECFF50())
  {
    v6 = sub_257D302D4();
    [a1 locationInView_];
    v8 = v7;
    v10 = v9;

    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton) bounds];
    v13.x = v8;
    v13.y = v10;
    v11 = CGRectContainsPoint(v14, v13);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void sub_257D327FC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257D3287C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D328F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740, &qword_257EEBBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257D329B0()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton____lazy_storage___scrubber) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_isDimmed) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_freezeFrameReviewSubscription) = 0;
  sub_257ED0410();
  __break(1u);
}

id sub_257D32A80@<X0>(void *a1@<X8>)
{
  if (qword_27F8F46C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F8F9FA8;
  *a1 = qword_27F8F9FA8;

  return v2;
}

id sub_257D32B30(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ClaritySceneDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_257D32BA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8508, &qword_257EE4780);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v9 - v6;
  sub_257D32CB0();
  sub_257ECE1B0();
  sub_257D32D04();
  sub_257ECE040();
  return (*(v1 + 8))(v7, v0);
}

unint64_t sub_257D32CB0()
{
  result = qword_27F8F8510;
  if (!qword_27F8F8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8510);
  }

  return result;
}

unint64_t sub_257D32D04()
{
  result = qword_27F8F8518;
  if (!qword_27F8F8518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8508, &qword_257EE4780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8518);
  }

  return result;
}

void sub_257D32D68(float a1)
{
  v2 = sub_257ECF120();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v43 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_257ECFD20();
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v9, v10, v11, v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v20 = sub_257ECF190();
  v40 = *(v20 - 8);
  v41 = v20;
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v26 = v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *MEMORY[0x277CE58B8];
  v28 = 1.0;
  if (a1 <= 0.0)
  {
    v29 = fminf(v27, 1.0);
    v28 = 0.0;
  }

  else
  {
    v29 = fminf(v27, 1.0);
    if (a1 <= 1.0)
    {
      v28 = a1;
    }
  }

  v30 = (v29 * v28) + 0.0;
  v38[1] = sub_257BD52CC();
  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200);
  sub_257ED0180();
  (*(v8 + 104))(v14, *MEMORY[0x277D85260], v39);
  v31 = sub_257ECFD80();
  v32 = swift_allocObject();
  v33 = v42;
  *(v32 + 16) = v42;
  *(v32 + 24) = v30;
  aBlock[4] = sub_257D34848;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_31;
  v34 = _Block_copy(aBlock);
  v35 = v33;
  sub_257ECF150();
  v46 = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  v36 = v43;
  v37 = v45;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v26, v36, v34);
  _Block_release(v34);

  (*(v44 + 8))(v36, v37);
  (*(v40 + 8))(v26, v41);
}

void sub_257D33238()
{
  [v0 videoZoomFactor];
  sub_257D15BB4();
  sub_257D15BB4();
  v1 = [v0 activeFormat];
  [v1 videoMaxZoomFactor];

  sub_257D15BB4();
}

void sub_257D3330C(double *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  sub_257D15BB4();
  v6 = v5;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_257D15BB4();
  v9 = v8;
  v10 = [Strong activeFormat];
  [v10 videoMaxZoomFactor];
  v12 = v11;

  if (v12 < v9)
  {
    v9 = v12;
  }

  sub_257D15BB4();
  v14 = (v4 - v6) / (v9 - v13);
  if (v14 <= 0.0)
  {
    v14 = 0.0;
  }

  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  *a3 = v14;
}

void sub_257D333F0(double *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  sub_257D15BB4();
  if (v4 > v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_257D15BB4();
  v9 = v8;
  v10 = [Strong activeFormat];
  [v10 videoMaxZoomFactor];
  v12 = v11;

  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= v6)
  {
    v13 = v6;
  }

  *a3 = v13;
}

id sub_257D334B0(char a1, double a2)
{
  v3 = v2;
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  LOBYTE(v39[0]) = 0;
  sub_257D15BB4();
  if (v14 < a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v14;
  }

  LOBYTE(v39[0]) = 0;
  sub_257D15BB4();
  v17 = v16;
  v18 = [v2 activeFormat];
  [v18 videoMaxZoomFactor];
  v20 = v19;

  if (v20 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  v39[0] = 0;
  if ([v3 lockForConfiguration_])
  {
    v23 = v39[0];
    if (a1)
    {
      LODWORD(v24) = 1120403456;
      [v3 rampToVideoZoomFactor:v22 withRate:v24];
    }

    else
    {
      [v3 setVideoZoomFactor_];
    }
  }

  else
  {
    v25 = v39[0];
    v26 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v27 = v26;
    v28 = sub_257ECDA20();
    v29 = sub_257ECFBD0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v38 = v6;
      v31 = v30;
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_257ED0720();
      v35 = sub_257BF1FC8(v33, v34, v39);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_257BAC000, v28, v29, "Device zoom error: %s", v31, 0xCu);
      v36 = __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C74820](v32, -1, -1, v36);
      MEMORY[0x259C74820](v31, -1, -1);

      (*(v7 + 8))(v13, v38);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }
  }

  return [v3 unlockForConfiguration];
}

id sub_257D337D8(char a1, double a2)
{
  v4 = 1.0;
  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  if (a2 > 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  sub_257D15BB4();
  v7 = v6;
  v8 = [v2 activeFormat];
  [v8 videoMaxZoomFactor];
  v10 = v9;

  if (v10 < v7)
  {
    v7 = v10;
  }

  sub_257D15BB4();
  v12 = v5 * (v7 - v11);
  sub_257D15BB4();
  v14 = v12 + v13;

  return sub_257D334B0(a1, v14);
}

id sub_257D338B4(float a1)
{
  v2 = v1;
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  *&v10 = MEMORY[0x28223BE20](v4, v6, v7, v8, v9).n128_u64[0];
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  result = [v1 isTorchAvailable];
  if (result)
  {
    v14 = 0.0;
    if (a1 > 0.0)
    {
      v14 = a1;
    }

    v15 = *MEMORY[0x277CE58B8];
    v16 = fminf(*MEMORY[0x277CE58B8], 1.0);
    if (v16 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    v38[0] = 0;
    v18 = [v1 lockForConfiguration_];
    v19 = v38[0];
    if (v18)
    {
      if (v17 < 0.02 && [v2 isTorchModeSupported_])
      {
        [v2 setTorchMode_];
        return [v2 unlockForConfiguration];
      }

      if (v17 > 0.95 && [v2 isTorchModeSupported_])
      {
        v38[0] = 0;
        LODWORD(v32) = v15;
        v33 = [v2 setTorchModeOnWithLevel:v38 error:v32];
      }

      else
      {
        if (![v2 isTorchModeSupported_])
        {
          return [v2 unlockForConfiguration];
        }

        v38[0] = 0;
        *&v34 = v17;
        v33 = [v2 setTorchModeOnWithLevel:v38 error:v34];
      }

      if (v33)
      {
        v35 = v38[0];
        return [v2 unlockForConfiguration];
      }

      v36 = v38[0];
      v21 = sub_257ECC9F0();
    }

    else
    {
      v20 = v19;
      v21 = sub_257ECC9F0();
    }

    swift_willThrow();
    sub_257ECD430();
    v22 = v21;
    v23 = sub_257ECDA20();
    v24 = sub_257ECFBD0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = v5;
      v26 = v25;
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_257ED0720();
      v30 = sub_257BF1FC8(v28, v29, v38);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_257BAC000, v23, v24, "Device flashlight error: %s", v26, 0xCu);
      v31 = __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C74820](v27, -1, -1, v31);
      MEMORY[0x259C74820](v26, -1, -1);

      (*(v37 + 8))(v12, v4);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }

    return [v2 unlockForConfiguration];
  }

  return result;
}

id sub_257D33C60(char a1)
{
  v2 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  *&v10 = MEMORY[0x28223BE20](v4, v6, v7, v8, v9).n128_u64[0];
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v28[0] = 0;
  if ([v2 lockForConfiguration_])
  {
    v13 = v28[0];
    [v2 setSubjectAreaChangeMonitoringEnabled_];
  }

  else
  {
    v14 = v28[0];
    v15 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v16 = v15;
    v17 = sub_257ECDA20();
    v18 = sub_257ECFBD0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = v4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_257ED0720();
      v24 = sub_257BF1FC8(v22, v23, v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_257BAC000, v17, v18, "Device subject area change monitoring error: %s", v20, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C74820](v21, -1, -1, v25);
      MEMORY[0x259C74820](v20, -1, -1);

      (*(v5 + 8))(v12, v27);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }
  }

  return [v2 unlockForConfiguration];
}

id sub_257D33EF0(double a1, double a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  *&v11 = MEMORY[0x28223BE20](v5, v7, v8, v9, v10).n128_u64[0];
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v29[0] = 0;
  if ([v2 lockForConfiguration_])
  {
    v14 = v29[0];
    if ([v2 isFocusPointOfInterestSupported] && objc_msgSend(v2, sel_isFocusModeSupported_, 2))
    {
      [v2 setFocusPointOfInterest_];
      [v2 setFocusMode_];
    }

    if ([v2 isExposurePointOfInterestSupported] && objc_msgSend(v2, sel_isExposureModeSupported_, 2))
    {
      [v2 setExposurePointOfInterest_];
      [v2 setExposureMode_];
    }
  }

  else
  {
    v15 = v29[0];
    v16 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v17 = v16;
    v18 = sub_257ECDA20();
    v19 = sub_257ECFBD0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_257ED0720();
      v25 = sub_257BF1FC8(v23, v24, v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_257BAC000, v18, v19, "Device set focus point error: %s", v21, 0xCu);
      v26 = __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C74820](v22, -1, -1, v26);
      MEMORY[0x259C74820](v21, -1, -1);

      (*(v6 + 8))(v13, v28);
    }

    else
    {

      (*(v6 + 8))(v13, v5);
    }
  }

  return [v2 unlockForConfiguration];
}

id sub_257D34228()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  *&v7 = MEMORY[0x28223BE20](v1, v3, v4, v5, v6).n128_u64[0];
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v25[0] = 0;
  if ([v0 lockForConfiguration_])
  {
    v10 = v25[0];
    if ([v0 isFocusPointOfInterestSupported] && objc_msgSend(v0, sel_isFocusModeSupported_, 0))
    {
      [v0 setFocusMode_];
    }

    if ([v0 isExposurePointOfInterestSupported] && objc_msgSend(v0, sel_isExposureModeSupported_, 0))
    {
      [v0 setExposureMode_];
    }
  }

  else
  {
    v11 = v25[0];
    v12 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v13 = v12;
    v14 = sub_257ECDA20();
    v15 = sub_257ECFBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_257ED0720();
      v21 = sub_257BF1FC8(v19, v20, v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_257BAC000, v14, v15, "Device lock focus error: %s", v17, 0xCu);
      v22 = __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x259C74820](v18, -1, -1, v22);
      MEMORY[0x259C74820](v17, -1, -1);

      (*(v2 + 8))(v9, v24);
    }

    else
    {

      (*(v2 + 8))(v9, v1);
    }
  }

  return [v0 unlockForConfiguration];
}

id sub_257D34520()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  *&v7 = MEMORY[0x28223BE20](v1, v3, v4, v5, v6).n128_u64[0];
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v25[0] = 0;
  if ([v0 lockForConfiguration_])
  {
    v10 = v25[0];
    if ([v0 isFocusPointOfInterestSupported] && objc_msgSend(v0, sel_isFocusModeSupported_, 2))
    {
      [v0 setFocusPointOfInterest_];
      [v0 setFocusMode_];
    }

    if ([v0 isExposurePointOfInterestSupported] && objc_msgSend(v0, sel_isExposureModeSupported_, 2))
    {
      [v0 setExposurePointOfInterest_];
      [v0 setExposureMode_];
    }
  }

  else
  {
    v11 = v25[0];
    v12 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD430();
    v13 = v12;
    v14 = sub_257ECDA20();
    v15 = sub_257ECFBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_257ED0720();
      v21 = sub_257BF1FC8(v19, v20, v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_257BAC000, v14, v15, "Device reset focus error: %s", v17, 0xCu);
      v22 = __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x259C74820](v18, -1, -1, v22);
      MEMORY[0x259C74820](v17, -1, -1);

      (*(v2 + 8))(v9, v24);
    }

    else
    {

      (*(v2 + 8))(v9, v1);
    }
  }

  return [v0 unlockForConfiguration];
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

id sub_257D3488C(unsigned __int8 a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v39 - v15;
  v17 = a1;
  v18 = MEMORY[0x277CE5878];
  if (v17 <= 3)
  {
    v20 = MEMORY[0x277CE5840];
    v21 = MEMORY[0x277CE5860];
    v22 = MEMORY[0x277CE5870];
    if (v17 != 3)
    {
      v22 = MEMORY[0x277CE5878];
    }

    if (v17 != 2)
    {
      v21 = v22;
    }

    v23 = v17 == 1;
    goto LABEL_15;
  }

  if (v17 > 5)
  {
    v20 = MEMORY[0x277CE5888];
    v21 = MEMORY[0x277CE5890];
    if (v17 != 7)
    {
      v21 = MEMORY[0x277CE5878];
    }

    v23 = v17 == 6;
LABEL_15:
    if (v23)
    {
      v19 = v20;
    }

    else
    {
      v19 = v21;
    }

    goto LABEL_18;
  }

  if (v17 == 4)
  {
    v30 = objc_opt_self();
    v31 = *MEMORY[0x277CE5EA8];
    v32 = [v30 defaultDeviceWithDeviceType:*v18 mediaType:*MEMORY[0x277CE5EA8] position:2];
    if (v32)
    {
      return v32;
    }

    v32 = [v30 defaultDeviceWithDeviceType:*MEMORY[0x277CE5840] mediaType:v31 position:2];
    if (v32)
    {
      return v32;
    }

    sub_257ECD430();
    v36 = sub_257ECDA20();
    v37 = sub_257ECFBE0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      _os_log_impl(&dword_257BAC000, v36, v37, "Could not find the desired camera (back?: %{BOOL}d)", v38, 8u);
      MEMORY[0x259C74820](v38, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  v23 = v17 == 5;
  v19 = MEMORY[0x277CE5880];
  if (!v23)
  {
    v19 = MEMORY[0x277CE5878];
  }

LABEL_18:
  v24 = *v19;
  v25 = objc_opt_self();
  v26 = *MEMORY[0x277CE5EA8];
  v27 = [v25 defaultDeviceWithDeviceType:v24 mediaType:*MEMORY[0x277CE5EA8] position:1];

  if (v27)
  {
LABEL_21:

    return v27;
  }

  v28 = [v25 defaultDeviceWithDeviceType:v24 mediaType:v26 position:0];
  if (v28)
  {
    v27 = v28;
    goto LABEL_21;
  }

  sub_257ECD430();
  v33 = sub_257ECDA20();
  v34 = sub_257ECFBE0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = 1;
    _os_log_impl(&dword_257BAC000, v33, v34, "Could not find the desired camera (back?: %{BOOL}d)", v35, 8u);
    MEMORY[0x259C74820](v35, -1, -1);
  }

  (*(v3 + 8))(v16, v2);
  return 0;
}

uint64_t sub_257D34C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_257ECDA30();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_257ECCB70();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = sub_257ECD6C0();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8520, &qword_257EE4790);
  v4[28] = swift_task_alloc();
  v4[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8528, &qword_257EE4798);
  v4[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8530, &qword_257EE47A0);
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = sub_257ECF900();
  v4[35] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  v4[36] = v9;
  v4[37] = v10;

  return MEMORY[0x2822009F8](sub_257D34F2C, v9, v10);
}

uint64_t sub_257D34F2C()
{
  sub_257ECD6F0();
  sub_257ECD6E0();
  sub_257ECD6D0();

  *(v0 + 304) = swift_getOpaqueTypeConformance2();
  sub_257ECF9B0();
  *(v0 + 336) = *MEMORY[0x277CD4868];
  v1 = sub_257ECF8F0();
  *(v0 + 312) = v1;
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *v2 = v0;
  v2[1] = sub_257D350C8;
  v3 = *(v0 + 224);
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

uint64_t sub_257D350C8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (!v0)
  {

    v4 = *(v2 + 288);
    v5 = *(v2 + 296);

    return MEMORY[0x2822009F8](sub_257D35230, v4, v5);
  }

  return result;
}

uint64_t sub_257D35230()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 336);
  v7 = *(v0 + 216);
  (*(v3 + 32))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  if (v8 == v6)
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    (*(v9 + 96))(*(v0 + 216), v11);
    (*(v14 + 32))(v12, v10, v13);
    sub_257C77614();
    v15 = [objc_opt_self() defaultManager];
    v16 = sub_257ECCAE0();
    *(v0 + 48) = 0;
    v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:v0 + 48];

    v18 = *(v0 + 48);
    if (!v17)
    {
      v114 = *(v0 + 192);
      v115 = *(v0 + 136);
      v116 = *(v0 + 144);
      v117 = v18;
      v118 = sub_257ECC9F0();

      swift_willThrow();
      (*(v116 + 8))(v114, v115);
      goto LABEL_58;
    }

    v19 = sub_257ECF810();
    v20 = v18;

    v129 = *(v19 + 16);
    if (v129)
    {
      v21 = 0;
      v22 = *(*(v0 + 144) + 80);
      v126 = (v22 + 32) & ~v22;
      v127 = v19 + v126;
      v132 = *(v0 + 328);
      v137 = v15;
      v128 = v19;
      while (v21 < *(v19 + 16))
      {
        v25 = *(v0 + 184);
        v26 = *(v0 + 136);
        v27 = *(v0 + 144);
        v130 = v21;
        v136 = v27[9];
        v135 = v27[2];
        v135(v25, v127 + v136 * v21, v26);
        v28 = sub_257ECCAE0();
        v138 = v27[1];
        v138(v25, v26);
        *(v0 + 56) = 0;
        v29 = [v15 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:0 options:0 error:v0 + 56];

        v30 = *(v0 + 56);
        if (v29)
        {
          v31 = sub_257ECF810();
          v32 = v30;

          v33 = v31;
          v34 = *(v31 + 16);
          if (v34)
          {
            v35 = v33 + v126;
            do
            {
              v135(*(v0 + 176), v35, *(v0 + 136));
              v41 = sub_257ECCAD0();
              v43 = v42;
              *(v0 + 16) = sub_257ECCA90();
              *(v0 + 24) = v44;
              *(v0 + 32) = 0x69616E626D756874;
              *(v0 + 40) = 0xEA0000000000736CLL;
              sub_257BDAB08();
              v45 = sub_257ED0150();

              v139 = v35;
              v140 = v34;
              if (v45)
              {
                if (qword_27F8F46D8 != -1)
                {
                  swift_once();
                }

                v46 = *(v0 + 160);
                v47 = *(v0 + 168);
                v48 = *(v0 + 136);
                v49 = qword_27F9132E8;
                v50 = *(qword_27F9132E8 + 48);
                v51 = *(qword_27F9132E8 + 56);
                __swift_project_boxed_opaque_existential_1((qword_27F9132E8 + 24), v50);
                (*(v51 + 48))(v50, v51);
                sub_257ECCB00();
                v138(v46, v48);
                sub_257ECCA90();
                v138(v47, v48);
                v52 = sub_257ECF4C0();

                v15 = v137;
                LOBYTE(v50) = [v137 fileExistsAtPath_];

                if (v50)
                {

                  v53 = sub_257ECCAE0();
                  *(v0 + 96) = 0;
                  v54 = [v137 removeItemAtURL:v53 error:v0 + 96];

                  v55 = *(v0 + 96);
                  if (!v54)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v71 = *(v0 + 160);
                  v70 = *(v0 + 168);
                  v72 = *(v0 + 136);
                  v133 = sub_257ECCAE0();
                  v74 = v49[6];
                  v73 = v49[7];
                  __swift_project_boxed_opaque_existential_1(v49 + 3, v74);
                  v75 = v74;
                  v15 = v137;
                  (*(v73 + 48))(v75, v73);
                  sub_257ECCB00();

                  v138(v71, v72);
                  v76 = sub_257ECCAE0();
                  v138(v70, v72);
                  *(v0 + 88) = 0;
                  LODWORD(v70) = [v137 moveItemAtURL:v133 toURL:v76 error:v0 + 88];

                  v55 = *(v0 + 88);
                  if (!v70)
                  {
LABEL_39:
                    v88 = v55;
                    v89 = sub_257ECC9F0();

                    swift_willThrow();
LABEL_46:
                    sub_257ECD340();
                    v97 = v89;
                    v98 = sub_257ECDA20();
                    v99 = sub_257ECFBE0();

                    if (os_log_type_enabled(v98, v99))
                    {
                      v100 = swift_slowAlloc();
                      v101 = swift_slowAlloc();
                      *v100 = 138412290;
                      v102 = v89;
                      v103 = _swift_stdlib_bridgeErrorToNSError();
                      *(v100 + 4) = v103;
                      *v101 = v103;
                      _os_log_impl(&dword_257BAC000, v98, v99, "Could not move image from extension to main app: %@", v100, 0xCu);
                      sub_257C11B14(v101);
                      MEMORY[0x259C74820](v101, -1, -1);
                      MEMORY[0x259C74820](v100, -1, -1);
                    }

                    v36 = *(v0 + 176);
                    v38 = *(v0 + 128);
                    v37 = *(v0 + 136);
                    v40 = *(v0 + 112);
                    v39 = *(v0 + 120);

                    (*(v39 + 8))(v38, v40);
                    v138(v36, v37);
                    v132 = 0;
                    goto LABEL_16;
                  }
                }

                v56 = *(v0 + 176);
                v57 = *(v0 + 136);
                v58 = v55;
                v138(v56, v57);
              }

              else
              {
                if (qword_27F8F46D8 != -1)
                {
                  swift_once();
                }

                v59 = *(v0 + 168);
                v60 = *(v0 + 160);
                v61 = *(v0 + 136);
                v62 = qword_27F9132E8;
                v63 = *(qword_27F9132E8 + 48);
                v64 = *(qword_27F9132E8 + 56);
                __swift_project_boxed_opaque_existential_1((qword_27F9132E8 + 24), v63);
                (*(v64 + 40))(v63, v64);
                sub_257ECCB00();
                v65 = v41;
                v138(v60, v61);
                sub_257ECCA90();
                v138(v59, v61);
                v66 = sub_257ECF4C0();

                v15 = v137;
                LOBYTE(v59) = [v137 fileExistsAtPath_];

                v67 = sub_257ECCAE0();
                v131 = v62;
                if (v59)
                {
                  *(v0 + 80) = 0;
                  v68 = [v137 removeItemAtURL:v67 error:v0 + 80];

                  v69 = *(v0 + 80);
                  if (!v68)
                  {
                    goto LABEL_42;
                  }
                }

                else
                {
                  v78 = *(v0 + 160);
                  v77 = *(v0 + 168);
                  v134 = *(v0 + 136);
                  v79 = v62[6];
                  v80 = v62[7];
                  __swift_project_boxed_opaque_existential_1(v62 + 3, v79);
                  v81 = *(v80 + 40);
                  v82 = v67;
                  v83 = v80;
                  v15 = v137;
                  v81(v79, v83);
                  v65 = v41;
                  sub_257ECCB00();
                  v138(v78, v134);
                  v84 = sub_257ECCAE0();
                  v138(v77, v134);
                  *(v0 + 64) = 0;
                  LOBYTE(v77) = [v137 moveItemAtURL:v82 toURL:v84 error:v0 + 64];

                  v69 = *(v0 + 64);
                  if ((v77 & 1) == 0)
                  {
LABEL_42:
                    v90 = v69;

                    v89 = sub_257ECC9F0();

                    swift_willThrow();
                    goto LABEL_46;
                  }
                }

                v85 = qword_281544FE0;
                v86 = v69;
                if (v85 != -1)
                {
                  swift_once();
                }

                if ((v65 != *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName) || v43 != *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName + 8)) && (sub_257ED0640() & 1) == 0)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_257ECDD60();

                  if (*(v0 + 342))
                  {
                    v87 = sub_257ED0640();

                    if ((v87 & 1) == 0)
                    {
                      v138(*(v0 + 176), *(v0 + 136));

                      goto LABEL_16;
                    }
                  }

                  else
                  {
                  }
                }

                v91 = *(v0 + 168);
                v92 = *(v0 + 136);
                v93 = v131[6];
                v94 = v131[7];
                __swift_project_boxed_opaque_existential_1(v131 + 3, v93);
                (*(v94 + 40))(v93, v94);
                sub_257ECCB00();

                v138(v91, v92);
                v95 = sub_257ECCB80();
                if (v132)
                {
                  v89 = v132;
                  v138(*(v0 + 152), *(v0 + 136));
                  v15 = v137;
                  goto LABEL_46;
                }

                v104 = *(v0 + 176);
                v105 = *(v0 + 136);
                v106 = *(v0 + 104);
                v107 = v95;
                v108 = v96;
                v138(*(v0 + 152), v105);
                v109 = objc_allocWithZone(MEMORY[0x277D755B8]);
                v110 = sub_257ECCB90();
                v111 = [v109 initWithData_];

                sub_257BF2550(v107, v108);
                swift_getKeyPath();
                swift_getKeyPath();
                *(v0 + 72) = v111;
                v112 = v106;
                sub_257ECDD70();
                v138(v104, v105);
                v132 = 0;
                v15 = v137;
              }

LABEL_16:
              v35 = v139 + v136;
              v34 = v140 - 1;
            }

            while (v140 != 1);
          }
        }

        else
        {
          v23 = v30;
          v24 = sub_257ECC9F0();

          swift_willThrow();
          v132 = 0;
        }

        v21 = v130 + 1;
        v19 = v128;
        if (v130 + 1 == v129)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_51:

      if (qword_281544FE0 == -1)
      {
        goto LABEL_52;
      }
    }

    swift_once();
LABEL_52:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 340))
    {
      v113 = sub_257ED0640();

      if ((v113 & 1) == 0)
      {
        (*(*(v0 + 144) + 8))(*(v0 + 192), *(v0 + 136));

        goto LABEL_58;
      }
    }

    else
    {
    }

    v119 = *(v0 + 192);
    v120 = *(v0 + 136);
    v121 = *(v0 + 144);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 341) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();

    (*(v121 + 8))(v119, v120);
    goto LABEL_58;
  }

  (*(v9 + 8))(*(v0 + 216), v11);
LABEL_58:
  v122 = sub_257ECF8F0();
  *(v0 + 312) = v122;
  swift_getAssociatedConformanceWitness();
  v123 = swift_task_alloc();
  *(v0 + 320) = v123;
  *v123 = v0;
  v123[1] = sub_257D350C8;
  v124 = *(v0 + 224);
  v125 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v124, v122, v125);
}

void sub_257D362F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
    v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    if (*(v3 + v4))
    {
      [v2 setSession_];
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
  v6 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7 && (v8 = [v7 configuration]) != 0)
  {
    v9 = v8;
    v10 = [v8 videoFormat];

    v11 = [v10 device];
  }

  else
  {
    v11 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v11;
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v11)
  {
    sub_257D334B0(0, 1.0);
  }

  v12 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    sub_257ECDD60();

    v14 = *&v13[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice];
    *&v13[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice] = v42;
  }

  sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
  v15 = sub_257ECF7F0();
  [v1 setAccessibilityCustomActions_];

  sub_257DFE5CC();
  v16 = sub_257DFF59C();
  [v16 setAccessibilityTraits_];

  v17 = [v1 view];
  if (!v17)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = v17;
  v19 = sub_257E003E8();
  [v18 bringSubviewToFront_];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v42)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v42 == 1)
  {
    v21 = (v20 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy);
    swift_beginAccess();
    v40 = *v21;
    v22 = qword_2815447E0;

    if (v22 != -1)
    {
      v23 = swift_once();
    }

    MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
    sub_257ECFD50();

    if (v41 == 1)
    {
LABEL_16:
      sub_257DD2FD0();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v40 == 1)
  {
    sub_257C1CB90();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v40 == 1)
  {
    sub_257C1344C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v40 == 1)
  {
    sub_257E94324();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v40 == 1)
  {
    sub_257CED804();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v40 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257DE3FF0();
  }

  if (AXDeviceSupportsBackTap())
  {
    v28 = [objc_opt_self() defaultCenter];

    v29 = sub_257ECF4C0();

    [v28 postNotificationName:v29 object:0];
  }

  v30 = [objc_opt_self() defaultCenter];
  [v30 addObserver:v1 selector:sel_stopSpeechForVoiceOverFocusChange name:*MEMORY[0x277D76468] object:0];

  v31 = [v1 view];
  if (!v31)
  {
    goto LABEL_41;
  }

  v32 = v31;
  v33 = sub_257DFF054();
  v34 = [v33 view];

  if (!v34)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v32 bringSubviewToFront_];

  v35 = sub_257DFF3FC();
  v36 = sub_257D83290();

  [v36 setUserInteractionEnabled_];
  v37 = sub_257E00504();
  if (!v37)
  {
    return;
  }

  v38 = [v1 view];
  if (!v38)
  {
    goto LABEL_43;
  }

  if (!*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel])
  {
LABEL_44:
    __break(1u);
    return;
  }

  v39 = v38;
  [v38 bringSubviewToFront_];
}

void sub_257D36B68()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v100 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v101 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECCC80();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v107 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECF120();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v106 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock && aBlock != 1)
  {

    goto LABEL_8;
  }

  v22 = sub_257ED0640();

  if (v22)
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  v23 = sub_257DFF3FC();
  v24 = sub_257D83290();

  [v24 setUserInteractionEnabled_];
  sub_257D37B08();
  v25 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v25)
  {
    v98 = v16;
    v99 = v15;
    v104 = v9;
    v105 = v8;
    v96 = v2;
    v26 = v25;
    sub_257D3810C();
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v97 = objc_opt_self();
    v28 = ObjCClassFromMetadata;
    v29 = [v97 bundleForClass_];
    v30 = sub_257ECF4C0();
    v31 = sub_257ECF4C0();
    v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

    v33 = v32;
    if (!v32)
    {
      sub_257ECF500();
      v33 = sub_257ECF4C0();
    }

    aBlock = sub_257ECF500();
    v112 = v34;
    v102 = v34;
    sub_257BDAB08();
    v35 = sub_257ED0100();
    v37 = v36;
    v38 = sub_257E003E8();
    v39 = sub_257E00504();
    sub_257DFD370(v35, v37, v38, v39);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    v40 = objc_opt_self();
    v41 = swift_allocObject();
    v103 = v26;
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = 1;
    v115 = sub_257D3D96C;
    v116 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v112 = 1107296256;
    v113 = sub_257D231C0;
    v114 = &block_descriptor_73;
    v43 = _Block_copy(&aBlock);

    [v40 animateWithDuration:v43 animations:0 completion:0.2];
    _Block_release(v43);
    v44 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
    if (v44)
    {
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = 1;
      v115 = sub_257D3D96C;
      v116 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = sub_257D231C0;
      v114 = &block_descriptor_82;
      v47 = _Block_copy(&aBlock);
      v48 = v44;

      [v40 animateWithDuration:v47 animations:0 completion:0.2];
      _Block_release(v47);
    }

    v49 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
    if (v49)
    {
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *(v51 + 24) = 1;
      v115 = sub_257D3DB10;
      v116 = v51;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = sub_257D231C0;
      v114 = &block_descriptor_90;
      v52 = _Block_copy(&aBlock);
      v53 = v49;

      [v40 animateWithDuration:v52 animations:0 completion:0.2];
      _Block_release(v52);
    }

    v54 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel];
    v55 = sub_257ECF4C0();
    [v54 setText_];

    sub_257E1FA44();
    v56 = sub_257DFF59C();
    [v56 setAccessibilityTraits_];

    [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] setIsAccessibilityElement_];
    v57 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionModeHasLaunched;
    swift_beginAccess();
    v58 = *(v57 + 8);
    v59 = *(v57 + 16);
    v108[0] = *v57;
    v108[1] = v58;
    v109 = v59;
    v60 = qword_2815447E0;

    if (v60 != -1)
    {
      v61 = swift_once();
    }

    MEMORY[0x28223BE20](v61, v62, v63, v64, v65);
    *(&v96 - 2) = v108;
    sub_257ECFD50();

    if (v110)
    {
      sub_257DB1748();
      v66 = swift_allocObject();
      *(v66 + 16) = v1;
      v67 = v1;
      sub_257E10374(0, sub_257D3D978, v66);
    }

    else
    {
      v68 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController];
      sub_257D83838();

      v69 = [v97 bundleForClass_];
      v70 = sub_257ECF4C0();
      v71 = sub_257ECF4C0();
      v72 = [v69 localizedStringForKey:v70 value:0 table:v71];

      if (!v72)
      {
        sub_257ECF500();
        v72 = sub_257ECF4C0();
      }

      v73 = sub_257ECF4C0();
      v74 = [objc_opt_self() systemImageNamed_];

      v75 = [objc_allocWithZone(type metadata accessor for OnboardingViewController()) initWithTitle:v72 detailText:0 icon:v74];
      *&v75[OBJC_IVAR____TtC16MagnifierSupport24OnboardingViewController_delegate + 8] = &off_286912020;
      swift_unknownObjectWeakAssign();
      v76 = [v1 navigationController];
      v77 = v98;
      if (v76)
      {
        v78 = v76;
        [v76 presentViewController:v75 animated:1 completion:0];
      }

      swift_beginAccess();
      v110 = 1;
      v79 = v106;
      v80 = sub_257ECF110();
      MEMORY[0x28223BE20](v80, v81, v82, v83, v84);
      *(&v96 - 2) = &v110;
      *(&v96 - 1) = v57;
      sub_257ECFD40();
      (*(v77 + 8))(v79, v99);
      swift_endAccess();
    }

    v85 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService];
    v86 = v107;
    sub_257ECCC70();
    v87 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
    swift_beginAccess();
    (*(v104 + 40))(v85 + v87, v86, v105);
    swift_endAccess();
    v88 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction];
    if (v88)
    {
      v89 = v88;
      v90 = [v1 view];
      if (!v90)
      {
        __break(1u);
        return;
      }

      v91 = v90;

      [v91 removeInteraction_];
    }

    else
    {
    }

    v92 = v103;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v108[0] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((v108[0] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if ((v108[0] & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if ((v108[0] & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            if ((v108[0] & 1) == 0)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              if ((v108[0] & 1) == 0)
              {
                sub_257ECD440();
                v93 = sub_257ECDA20();
                v94 = sub_257ECFBD0();
                if (os_log_type_enabled(v93, v94))
                {
                  v95 = swift_slowAlloc();
                  *v95 = 67109120;
                  *(v95 + 4) = 1;
                  _os_log_impl(&dword_257BAC000, v93, v94, "Setting imageCaption to %{BOOL}d", v95, 8u);
                  MEMORY[0x259C74820](v95, -1, -1);
                }

                (*(v100 + 8))(v101, v96);
                swift_getKeyPath();
                swift_getKeyPath();
                LOBYTE(v108[0]) = 1;
                sub_257ECC3F0();
                sub_257ECDD70();
              }
            }
          }
        }
      }
    }
  }
}

void sub_257D37B08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = [objc_allocWithZone(MEMORY[0x277CE53E0]) initWithFrame_];
  v6 = *&v0[v2];
  *&v0[v2] = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [v7 scene];

    v9 = [v8 background];
    [v9 setContents_];
  }

  v10 = *&v1[v2];
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 clearColor];
    [v12 setBackgroundColor_];

    v14 = *&v1[v2];
    if (v14)
    {
      v15 = [v14 layer];
      [v15 setOpaque_];

      v16 = *&v1[v2];
      if (v16)
      {
        v17 = [v16 layer];
        v18 = [objc_opt_self() clearColor];
        v19 = [v18 CGColor];

        [v17 setBackgroundColor_];
        v20 = *&v1[v2];
        if (v20)
        {
          v21 = v20;
          v22 = sub_257ECF4C0();
          [v21 setAccessibilityIdentifier_];

          v23 = *&v1[v2];
          if (v23)
          {
            [v23 setHidden_];
            v24 = *&v1[v2];
            if (v24)
            {
              [v24 setOpaque_];
              v25 = *&v1[v2];
              if (v25)
              {
                [v25 setTranslatesAutoresizingMaskIntoConstraints_];
                v26 = *&v1[v2];
                if (v26)
                {
                  [v26 setAutoresizingMask_];
                  v27 = *&v1[v2];
                  if (v27)
                  {
                    [v27 setClipsToBounds_];
                    v28 = *&v1[v2];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = sub_257D27C8C();
                      v31 = v29;
                      v32 = [v31 layer];
                      sub_257D18590(v30);
                      v34 = v33;

                      sub_257EB7394(v34);

                      v35 = sub_257ECF7F0();

                      [v32 setFilters_];

                      v36 = [v1 view];
                      if (!v36)
                      {
                        goto LABEL_25;
                      }

                      v37 = v36;
                      [v36 addSubview_];
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

  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    v40 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel];
    v41 = objc_allocWithZone(type metadata accessor for DetectionModeView());
    v42 = sub_257E7E2C0(v39, v40);
    *&v42[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate + 8] = &protocol witness table for MAGARService;
    swift_unknownObjectWeakAssign();
    v43 = objc_opt_self();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    aBlock[4] = sub_257D3DB10;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_114_0;
    v46 = _Block_copy(aBlock);
    v47 = v42;

    [v43 animateWithDuration:v46 animations:0 completion:0.2];
    _Block_release(v46);
    v48 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView] = v42;

    v49 = *&v1[v2];
    if (v49)
    {
      v50 = objc_allocWithZone(type metadata accessor for DetectedObjectView());
      v51 = v49;
      v52 = sub_257DE673C(v51);
      v53 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
      *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView] = v52;

      v54 = objc_allocWithZone(type metadata accessor for DetectedPersonView());
      v55 = sub_257DE673C(v51);

      v56 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
      *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView] = v55;
    }

    v57 = [v1 view];
    if (v57)
    {
      v58 = v57;
      [v57 bringSubviewToFront_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_257D3810C()
{
  v1 = v0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v16 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  v2 = sub_257DFF3FC();
  v3 = sub_257D832B0();

  [v3 setEnabled_];
  v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  v6 = sub_257D83D4C();

  [v6 setEnabled_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v15 == 1)
  {
    v7 = *(v1 + v4);
    v8 = sub_257D83D6C();

    [v8 setEnabled_];
  }

  v9 = sub_257DFF620();
  [v9 setEnabled_];

  v10 = *(v1 + v4);
  v11 = sub_257D83D4C();

  [v11 setHidden_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v14 == 1)
  {
    v12 = *(v1 + v4);
    v13 = sub_257D83D6C();

    [v13 setHidden_];
  }
}

void sub_257D383B4()
{
  v1 = v0;
  v180 = sub_257ECF120();
  v2 = *(v180 - 8);
  MEMORY[0x28223BE20](v180, v3, v4, v5, v6);
  v8 = v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v17 - 8, v18, v19, v20, v21);
  v23 = v174 - v22;
  v24 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v24)
  {
    v178 = v10;
    v179 = v9;
    v181 = v2;
    v25 = v24;
    v26 = sub_257DFF3FC();
    v27 = sub_257D83290();

    [v27 setUserInteractionEnabled_];
    v28 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine];
    sub_257CC00C4();
    sub_257DFE168();
    sub_257CC1318();
    v185 = 0;
    v184 = 0u;
    aBlock = 0u;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v30, v31, v32, v33);
    v174[-2] = v28;
    v174[-1] = &aBlock;
    v187 = v28;
    sub_257D3D9C0(&qword_27F8F7208, type metadata accessor for MAGOutputEngine, &protocol conformance descriptor for MAGOutputEngine);
    sub_257ECCED0();
    v174[0] = 0;

    sub_257BE4084(&aBlock, &qword_27F8F6E68, &qword_257EDF540);
    v34 = type metadata accessor for MAGOutputEvent(0);
    (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
    sub_257CC266C(v23);
    v35 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor];
    v36 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
    swift_beginAccess();
    [*(v35 + v36) setUseSoundFeedback_];
    [*(v35 + v36) setUseHapticFeedback_];
    v37 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
    swift_beginAccess();
    [*(v35 + v37) setUseSoundFeedback_];
    [*(v35 + v37) setUseHapticFeedback_];
    v38 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
    swift_beginAccess();
    [*(v35 + v38) setUseHapticFeedback_];
    [*(v35 + v38) setUseSoundFeedback_];
    v39 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
    swift_beginAccess();
    [*(v35 + v39) setUseSoundFeedback_];
    [*(v35 + v39) setUseHapticFeedback_];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v40 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    v176 = v40;
    sub_257ECDD70();
    v41 = CFNotificationCenterGetDarwinNotifyCenter();
    v42 = v25;
    CFNotificationCenterRemoveEveryObserver(v41, v42);

    v43 = objc_opt_self();
    v44 = swift_allocObject();
    v175 = v42;
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    v185 = sub_257D3DB10;
    v186 = v45;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v184 = sub_257D231C0;
    *(&v184 + 1) = &block_descriptor_135;
    v46 = _Block_copy(&aBlock);

    [v43 animateWithDuration:v46 animations:0 completion:0.2];
    _Block_release(v46);
    v47 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
    if (v47)
    {
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      v185 = sub_257D3DB10;
      v186 = v49;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v184 = sub_257D231C0;
      *(&v184 + 1) = &block_descriptor_143;
      v50 = _Block_copy(&aBlock);
      v51 = v47;

      [v43 animateWithDuration:v50 animations:0 completion:0.2];
      _Block_release(v50);
    }

    v52 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
    if (v52)
    {
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = 0;
      v185 = sub_257D3DB10;
      v186 = v54;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v184 = sub_257D231C0;
      *(&v184 + 1) = &block_descriptor_151;
      v55 = _Block_copy(&aBlock);
      v56 = v52;

      [v43 animateWithDuration:v55 animations:0 completion:0.2];
      _Block_release(v55);
    }

    sub_257C1D94C();
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v57 = sub_257ECFD30();
    v58 = swift_allocObject();
    *(v58 + 16) = v1;
    v185 = sub_257D3DA08;
    v186 = v58;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v184 = sub_257D231C0;
    *(&v184 + 1) = &block_descriptor_157;
    v59 = _Block_copy(&aBlock);
    v60 = v1;

    sub_257ECF150();
    *&aBlock = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    v61 = v180;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v16, v8, v59);
    _Block_release(v59);

    v62 = *(v181 + 8);
    v181 += 8;
    v62(v8, v61);
    (v178)[1](v16, v179);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v178 = objc_opt_self();
    v179 = ObjCClassFromMetadata;
    v64 = [v178 bundleForClass_];
    v65 = sub_257ECF4C0();
    v66 = sub_257ECF4C0();
    v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

    v68 = v67;
    if (!v67)
    {
      sub_257ECF500();
      v68 = sub_257ECF4C0();
    }

    v69 = sub_257ECF500();
    v71 = v70;
    UIAccessibilitySpeakAndDoNotBeInterrupted();

    *&aBlock = v69;
    v174[1] = v71;
    *(&aBlock + 1) = v71;
    v177 = sub_257BDAB08();
    v72 = sub_257ED0100();
    v74 = v73;
    v75 = sub_257E003E8();
    v76 = sub_257E00504();
    sub_257DFD370(v72, v74, v75, v76);

    sub_257DFEA6C();
    v77 = sub_257DFF59C();
    [v77 setAccessibilityTraits_];

    [*&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] setIsAccessibilityElement_];
    v78 = *&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController];
    sub_257D839A4();

    sub_257D1B7F8();
    if ((v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn] & 1) != 0 || v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn] == 1)
    {
      v80 = v176 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
      swift_beginAccess();
      v182 = 0;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v81 = sub_257ECF110();
      MEMORY[0x28223BE20](v81, v82, v83, v84, v85);
      v174[-2] = &v182;
      v174[-1] = v80;
      sub_257ECFD40();
      v62(v8, v180);
      v79 = swift_endAccess();
    }

    sub_257D39A54(v79);
    v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning] = 0;
    v86 = sub_257DFF054();
    v87 = [v86 view];
    if (v87)
    {
      v88 = v87;
      [v87 alpha];
      v90 = v89;

      if (v90 != 0.0)
      {
        goto LABEL_22;
      }

      v91 = [v60 view];
      if (v91)
      {
        v92 = v91;
        [v91 sendSubviewToBack_];

        v93 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel;
        if (!*&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel])
        {

          return;
        }

        v94 = [v60 view];
        if (!v94)
        {
          goto LABEL_62;
        }

        if (!*&v60[v93])
        {
LABEL_63:
          __break(1u);
          return;
        }

        v95 = v94;
        [v94 sendSubviewToBack_];

LABEL_22:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (aBlock == 1)
        {
          sub_257DE44DC();
        }

        if (AXDeviceSupportsBackTap())
        {
          v96 = [objc_opt_self() defaultCenter];

          v97 = sub_257ECF4C0();

          [v96 postNotificationName:v97 object:0];
        }

        v98 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel;
        v99 = [*&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel] text];
        if (v99)
        {
          v100 = v99;
          v101 = sub_257ECF500();
          v103 = v102;
        }

        else
        {
          v101 = 0;
          v103 = 0;
        }

        v104 = [v178 bundleForClass_];
        v105 = sub_257ECF4C0();
        v106 = sub_257ECF4C0();
        v107 = [v104 localizedStringForKey:v105 value:0 table:v106];

        v108 = sub_257ECF500();
        v110 = v109;

        *&aBlock = v108;
        *(&aBlock + 1) = v110;
        v111 = sub_257ED0100();
        v113 = v112;

        if (v103)
        {
          if (v101 == v111 && v103 == v113)
          {
LABEL_42:

LABEL_43:
            v130 = *&v60[v98];
            v131 = *&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel];
            v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
            v132 = objc_opt_self();
            v133 = swift_allocObject();
            *(v133 + 16) = v130;
            *(v133 + 24) = v131;
            v185 = sub_257D3DB14;
            v186 = v133;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v184 = sub_257D231C0;
            *(&v184 + 1) = &block_descriptor_170;
            v134 = _Block_copy(&aBlock);
            v135 = v130;
            sub_257CC9350(v131);
            v136 = v131;

            v137 = [v132 runningPropertyAnimatorWithDuration:0x20000 delay:v134 options:0 animations:0.2 completion:1.5];
            _Block_release(v134);

LABEL_46:
            v139 = [objc_opt_self() defaultCenter];
            [v139 removeObserver:v60 name:*MEMORY[0x277D76468] object:0];

            v140 = *&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction];
            if (!v140)
            {

LABEL_50:
              v144 = v175;
              v145 = [v178 bundleForClass_];
              v146 = sub_257ECF4C0();
              v147 = sub_257ECF4C0();
              v148 = [v145 localizedStringForKey:v146 value:0 table:v147];

              v149 = sub_257ECF500();
              v151 = v150;

              *&aBlock = v149;
              *(&aBlock + 1) = v151;
              v152 = sub_257ED0100();
              v154 = v153;

              v155 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
              v156 = *&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController];
              v157 = sub_257EB1B80();

              v158 = [v157 text];
              if (v158)
              {
                v159 = sub_257ECF500();
                v161 = v160;

                if (v159 == v152 && v161 == v154)
                {

LABEL_56:
                  v163 = *&v60[v155];
                  v164 = sub_257EB1B80();

                  v165 = *&v60[v155];
                  v166 = sub_257EB1BE0();

                  v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
                  v167 = objc_opt_self();
                  v168 = swift_allocObject();
                  *(v168 + 16) = v164;
                  *(v168 + 24) = v166;
                  v185 = sub_257BDAD38;
                  v186 = v168;
                  *&aBlock = MEMORY[0x277D85DD0];
                  *(&aBlock + 1) = 1107296256;
                  *&v184 = sub_257D231C0;
                  *(&v184 + 1) = &block_descriptor_163;
                  v169 = _Block_copy(&aBlock);
                  v170 = v164;
                  v171 = v166;

                  v172 = [v167 runningPropertyAnimatorWithDuration:0x20000 delay:v169 options:0 animations:0.2 completion:0.0];
                  _Block_release(v169);

                  goto LABEL_57;
                }

                v162 = sub_257ED0640();

                if (v162)
                {
                  goto LABEL_56;
                }
              }

              else
              {
              }

LABEL_57:
              v173 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
              [*&v60[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel] setHidden_];
              [*&v60[v173] removeFromSuperview];

              return;
            }

            v141 = v140;
            v142 = [v60 view];
            if (v142)
            {
              v143 = v142;

              [v143 addInteraction_];

              goto LABEL_50;
            }

            goto LABEL_61;
          }

          v114 = sub_257ED0640();

          if (v114)
          {
            goto LABEL_43;
          }
        }

        else
        {
        }

        v115 = [*&v60[v98] text];
        if (v115)
        {
          v116 = v115;
          v117 = sub_257ECF500();
          v119 = v118;
        }

        else
        {
          v117 = 0;
          v119 = 0;
        }

        v120 = [v178 bundleForClass_];
        v121 = sub_257ECF4C0();
        v122 = sub_257ECF4C0();
        v123 = [v120 localizedStringForKey:v121 value:0 table:v122];

        v124 = sub_257ECF500();
        v126 = v125;

        *&aBlock = v124;
        *(&aBlock + 1) = v126;
        v127 = sub_257ED0100();
        v129 = v128;

        if (!v119)
        {

          goto LABEL_46;
        }

        if (v117 != v127 || v119 != v129)
        {
          v138 = sub_257ED0640();

          if ((v138 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }
}

void sub_257D39A54(uint64_t a1)
{
  v2 = v1;
  v3 = sub_257DFF3FC();
  v4 = sub_257D832B0();

  [v4 setEnabled_];
  v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
  v6 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  v7 = sub_257D83D4C();

  [v7 setEnabled_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v16 == 1)
  {
    v8 = *(v2 + v5);
    v9 = sub_257D83D6C();

    [v9 setEnabled_];
  }

  v10 = sub_257DFF620();
  [v10 setEnabled_];

  v11 = *(v2 + v5);
  v12 = sub_257D83D4C();

  [v12 setHidden_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v15 == 1)
  {
    v13 = *(v2 + v5);
    v14 = sub_257D83D6C();

    [v14 setHidden_];
  }
}

void sub_257D39CC8()
{
  v0 = sub_257ECF190();
  v91 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v90 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF1B0();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v85 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v87 = &v81 - v17;
  v18 = sub_257ECF120();
  v94 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v93 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48, &qword_257EE35C8);
  MEMORY[0x28223BE20](v24 - 8, v25, v26, v27, v28);
  v30 = &v81 - v29;
  v31 = sub_257ECCC80();
  v92 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
  v44 = &v81 - v43;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v45 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v84 = v18;
    v82 = v0;
    v46 = v45 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
    swift_beginAccess();
    v47 = *(v46 + 8);
    v48 = *(v46 + 16);
    aBlock = *v46;
    v96 = v47;
    LOBYTE(v97) = v48;
    v49 = qword_2815447E0;

    if (v49 != -1)
    {
      v50 = swift_once();
    }

    v55 = qword_2815447E8;
    MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
    *(&v81 - 2) = &aBlock;
    v83 = v55;
    sub_257ECFD50();

    v56 = v84;
    if (v101 == 1)
    {
      sub_257ECCC70();
      v57 = sub_257D3DA40(v45 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintTimeStartDate, v30);
      MEMORY[0x28223BE20](v57, v58, v59, v60, v61);
      *(&v81 - 2) = v30;
      sub_257ECFD50();
      sub_257BE4084(v30, &qword_27F8F7F48, &qword_257EE35C8);
      sub_257ECCBC0();
      v63 = v62;
      v64 = *(v92 + 8);
      v64(v37, v31);
      v64(v44, v31);
      if (v63 <= 604800.0)
      {
        sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
        v71 = sub_257ECFD30();
        v72 = v85;
        sub_257ECF1A0();
        v73 = v87;
        sub_257ECF220();
        v74 = v89;
        v92 = *(v88 + 8);
        (v92)(v72, v89);
        v75 = swift_allocObject();
        v76 = v86;
        *(v75 + 16) = v86;
        v99 = sub_257D3DACC;
        v100 = v75;
        aBlock = MEMORY[0x277D85DD0];
        v96 = 1107296256;
        v97 = sub_257D231C0;
        v98 = &block_descriptor_196;
        v77 = _Block_copy(&aBlock);
        v78 = v76;

        v79 = v90;
        sub_257ECF150();
        aBlock = MEMORY[0x277D84F90];
        sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD56C0();
        v80 = v93;
        sub_257ED0180();
        MEMORY[0x259C727E0](v73, v79, v80, v77);
        _Block_release(v77);

        (*(v94 + 8))(v80, v56);
        (*(v91 + 8))(v79, v82);
        (v92)(v73, v74);
      }

      else
      {
        swift_beginAccess();
        v101 = 0;
        v65 = v93;
        v66 = sub_257ECF110();
        MEMORY[0x28223BE20](v66, v67, v68, v69, v70);
        *(&v81 - 2) = &v101;
        *(&v81 - 1) = v46;
        sub_257ECFD40();
        (*(v94 + 8))(v65, v56);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_257D3A4A8(uint64_t a1)
{
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_257ECF4C0();
  v19 = sub_257ECF4C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_257ECF500();
  v23 = v22;

  aBlock[6] = v21;
  aBlock[7] = v23;
  sub_257BDAB08();
  v24 = sub_257ED0100();
  v26 = v25;

  v27 = sub_257DFF054();
  v28 = sub_257EB1B80();

  v29 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v30 = sub_257EB1BE0();

  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 1;
  v31 = sub_257ECF4C0();
  [v28 setText_];

  [v28 sizeToFit];
  [v28 setNeedsLayout];
  v32 = objc_opt_self();
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v30;
  v33[4] = v24;
  v33[5] = v26;
  aBlock[4] = sub_257BDAD2C;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_203;
  v34 = _Block_copy(aBlock);
  v35 = v28;
  v36 = v30;

  _Block_release(v34);
  *v8 = 14;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v8, &v15[v9[5]]);
  v15[v9[6]] = 0;
  v15[v9[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v37 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
  *&v15[v9[8]] = v37;
  sub_257CBBC80(v15);
  return sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
}

void sub_257D3A8DC()
{
  type metadata accessor for DetectionModeSettingsViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_delegate + 8] = &off_28690D6E0;
  swift_unknownObjectWeakAssign();
  v5 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];
  [v5 setModalPresentationStyle_];
  v2 = [v5 navigationBar];
  v3 = [objc_opt_self() systemYellowColor];
  [v2 setTintColor_];

  v4 = [v5 presentationController];
  if (v4)
  {
    [v4 setDelegate_];
  }

  [v0 presentViewController:v5 animated:1 completion:0];
  sub_257D3AA58();
}

void sub_257D3AA58()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  [*(v2 + v3) pause];
  sub_257CC00C4();
  sub_257CC1318();
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  [*(v4 + v5) setUseSoundFeedback_];
  [*(v4 + v5) setUseHapticFeedback_];
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v4 + v6) setUseSoundFeedback_];
  [*(v4 + v6) setUseHapticFeedback_];
  v7 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  [*(v4 + v7) setUseSoundFeedback_];
  [*(v4 + v7) setUseHapticFeedback_];
  *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v8 == 1)
  {
    sub_257C41F04();
  }
}

void sub_257D3AC80()
{
  v1 = v0;
  v129 = sub_257ECF1B0();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v2, v3, v4, v5);
  v126 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v127 = &v121 - v12;
  v122 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v122, v13, v14, v15, v16);
  v125 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v124, v18, v19, v20, v21);
  v123 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_257ECF120();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v23, v24, v25, v26);
  v132 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_257ECF190();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v28, v29, v30, v31);
  v130 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v33 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v131 = v33;
  if (aBlock == 1)
  {
    v34 = (v33 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
    swift_beginAccess();
    v35 = v34[1];
    v36 = v34[2];
    aBlock = *v34;
    v140 = v35;
    v141 = v36;
    v37 = qword_2815447E0;

    if (v37 != -1)
    {
      v38 = swift_once();
    }

    MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
    *(&v121 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
    sub_257ECFD50();

    v43 = v138;
    v44 = sub_257C592D0(2u, v138);
    v45 = sub_257C592D0(3u, v43);

    v46 = swift_allocObject();
    *(v46 + 16) = v1;
    *(v46 + 24) = v44;
    *(v46 + 25) = v45;
    v143 = sub_257D3D940;
    v144 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_257D231C0;
    v142 = &block_descriptor_58;
    v47 = _Block_copy(&aBlock);
    v48 = v1;
    v49 = v130;
    sub_257ECF150();
    v138 = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    v50 = v132;
    v51 = v136;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v49, v50, v47);
    _Block_release(v47);
    (*(v135 + 8))(v50, v51);
    (*(v133 + 8))(v49, v134);

    v33 = v131;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v52 = (v33 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
    swift_beginAccess();
    v53 = v52[1];
    v54 = v52[2];
    aBlock = *v52;
    v140 = v53;
    v141 = v54;
    v55 = qword_2815447E0;

    if (v55 != -1)
    {
      v56 = swift_once();
    }

    MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
    *(&v121 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
    sub_257ECFD50();

    v61 = v138;
    v62 = sub_257C592D0(2u, v138);
    v63 = sub_257C592D0(3u, v61);

    v64 = swift_allocObject();
    *(v64 + 16) = v1;
    *(v64 + 24) = v62;
    *(v64 + 25) = v63;
    v143 = sub_257D3D914;
    v144 = v64;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_257D231C0;
    v142 = &block_descriptor_52;
    v65 = _Block_copy(&aBlock);
    v66 = v1;
    v67 = v130;
    sub_257ECF150();
    v138 = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    v68 = v132;
    v69 = v136;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v67, v68, v65);
    _Block_release(v65);
    (*(v135 + 8))(v68, v69);
    (*(v133 + 8))(v67, v134);

    v33 = v131;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v70 = (v33 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
    swift_beginAccess();
    v71 = v70[1];
    v72 = v70[2];
    aBlock = *v70;
    v140 = v71;
    v141 = v72;
    v73 = qword_2815447E0;

    if (v73 != -1)
    {
      v74 = swift_once();
    }

    v79 = qword_2815447E8;
    MEMORY[0x28223BE20](v74, v75, v76, v77, v78);
    *(&v121 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
    v121 = v79;
    sub_257ECFD50();

    v80 = v138;
    LOBYTE(v79) = sub_257C592D0(2u, v138);
    v81 = sub_257C592D0(3u, v80);

    v82 = swift_allocObject();
    *(v82 + 16) = v1;
    *(v82 + 24) = v79 & 1;
    *(v82 + 25) = v81;
    v143 = sub_257D3D8E8;
    v144 = v82;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_257D231C0;
    v142 = &block_descriptor_45_0;
    v83 = _Block_copy(&aBlock);
    v84 = v1;
    v85 = v130;
    sub_257ECF150();
    v138 = MEMORY[0x277D84F90];
    sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    v86 = v132;
    v87 = v136;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v85, v86, v83);
    _Block_release(v83);
    (*(v135 + 8))(v86, v87);
    (*(v133 + 8))(v85, v134);

    if (v84[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] == 1)
    {
      v33 = v131;
      v88 = v131 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      v89 = swift_beginAccess();
      v90 = *(v88 + 8);
      v91 = *(v88 + 16);
      aBlock = *v88;
      v140 = v90;
      LOBYTE(v141) = v91;
      MEMORY[0x28223BE20](v89, v92, v93, v94, v95);
      *(&v121 - 2) = &aBlock;

      sub_257ECFD50();

      if (v138 == 1 && (v84[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] & 1) == 0)
      {
        if (v84[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] == 1)
        {
          v96 = v125;
          *v125 = 4;
          swift_storeEnumTagMultiPayload();
          v97 = v123;
          sub_257ECCCE0();
          v98 = v124;
          sub_257C15EC0(v96, v97 + *(v124 + 20));
          *(v97 + v98[6]) = 0;
          *(v97 + v98[7]) = 0;
          sub_257ECC3F0();
          sub_257C15F24(v96, type metadata accessor for MAGOutputEvent.EventType);
          *(v97 + v98[8]) = v33;
          sub_257CBBC80(v97);
          sub_257C15F24(v97, type metadata accessor for MAGOutputEvent);
        }

        sub_257BD7F48();
      }
    }

    else
    {
      v33 = v131;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1 && *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) == 1)
  {
    v99 = v33 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
    swift_beginAccess();
    v100 = *(v99 + 8);
    v101 = *(v99 + 16);
    aBlock = *v99;
    v140 = v100;
    LOBYTE(v141) = v101;
    v102 = qword_2815447E0;

    if (v102 != -1)
    {
      v103 = swift_once();
    }

    MEMORY[0x28223BE20](v103, v104, v105, v106, v107);
    *(&v121 - 2) = &aBlock;
    sub_257ECFD50();

    if (v137 == 1 && (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) & 1) == 0)
    {
      if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) == 1)
      {
        v108 = v125;
        *v125 = 4;
        swift_storeEnumTagMultiPayload();
        v109 = v123;
        sub_257ECCCE0();
        v110 = v124;
        sub_257C15EC0(v108, v109 + *(v124 + 20));
        *(v109 + v110[6]) = 0;
        *(v109 + v110[7]) = 0;
        sub_257ECC3F0();
        sub_257C15F24(v108, type metadata accessor for MAGOutputEvent.EventType);
        *(v109 + v110[8]) = v33;
        sub_257CBBC80(v109);
        sub_257C15F24(v109, type metadata accessor for MAGOutputEvent);
      }

      sub_257BD7F48();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    sub_257C1344C();
  }

  sub_257D1A130();
  sub_257D22594(2);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v111 = sub_257ECFD30();
  v112 = v126;
  sub_257ECF1A0();
  v113 = v127;
  sub_257ECF220();
  v128 = *(v128 + 8);
  v114 = v129;
  (v128)(v112, v129);
  v115 = swift_allocObject();
  *(v115 + 16) = v1;
  v143 = sub_257D3D8AC;
  v144 = v115;
  aBlock = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_257D231C0;
  v142 = &block_descriptor_32;
  v116 = _Block_copy(&aBlock);
  v117 = v1;

  v118 = v130;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257D3D9C0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  v119 = v132;
  v120 = v136;
  sub_257ED0180();
  MEMORY[0x259C727E0](v113, v118, v119, v116);
  _Block_release(v116);

  (*(v135 + 8))(v119, v120);
  (*(v133 + 8))(v118, v134);
  (v128)(v113, v114);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

id sub_257D3C014(uint64_t a1, char a2, char a3, uint64_t *a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v7 = *a4;
  swift_beginAccess();
  [*(v6 + v7) setUseSoundFeedback_];
  return [*(v6 + v7) setUseHapticFeedback_];
}

void sub_257D3C144(uint64_t a1)
{
  v2 = sub_257E003E8();
  v3 = 0.0;
  [v2 setAlpha_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v5 addSubview_];

  v7 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v8 = [v7 navigationBar];

  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v48.origin.x = v10;
  v48.origin.y = v12;
  v48.size.width = v14;
  v48.size.height = v16;
  Height = CGRectGetHeight(v48);
  v18 = [objc_opt_self() sharedApplication];
  v19 = [objc_opt_self() mainScreen];
  v20 = [v18 _keyWindowForScreen_];

  if (v20)
  {
    [v20 safeAreaInsets];
    v3 = v21;
  }

  v22 = [*&v1[v4] topAnchor];
  v23 = [v1 view];
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor:v25 constant:Height + v3 + 20.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_257EDBE40;
  v28 = [*&v1[v4] leadingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  if (qword_281544A68 != -1)
  {
    swift_once();
  }

  v32 = *&qword_2815482F8;
  v33 = [v28 constraintGreaterThanOrEqualToAnchor:v31 constant:*&qword_2815482F8];

  *(v27 + 32) = v33;
  v34 = [*&v1[v4] trailingAnchor];
  v35 = [v1 view];
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v35;
  v37 = [v35 trailingAnchor];

  v38 = [v34 constraintLessThanOrEqualToAnchor:v37 constant:-v32];
  *(v27 + 40) = v38;
  v39 = [*&v1[v4] centerXAnchor];
  v40 = [v1 view];
  if (!v40)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v41 centerXAnchor];

  v44 = [v39 constraintEqualToAnchor_];
  *(v27 + 48) = v44;
  *(v27 + 56) = v26;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v45 = v26;
  v46 = sub_257ECF7F0();

  [v42 activateConstraints_];
}

void sub_257D3C600()
{
  v1 = v0;
  v2 = sub_257ECFDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257E00504();
  if (!v10)
  {
    return;
  }

  v44 = v10;
  [v44 setAlpha_];
  [v44 setHidden_];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v11 addSubview_];

  v13 = [v44 centerXAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 centerXAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  v18 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX;
  v19 = *&v44[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  *&v44[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX] = v17;

  v20 = [v44 centerYAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 centerYAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  v25 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY;
  v26 = *&v44[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY];
  *&v44[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY] = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_257EDED10;
  v28 = v44;
  v29 = *&v44[v18];
  if (!v29)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v27 + 32) = v29;
  v30 = *&v28[v25];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v27 + 40) = v30;
  v31 = v30;
  v32 = v29;
  v33 = [v44 widthAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 heightAnchor];

  v38 = [v33 constraintLessThanOrEqualToAnchor:v37 multiplier:0.8];
  *(v27 + 48) = v38;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v39 = sub_257ECF7F0();

  [v36 activateConstraints_];

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v40 = [objc_opt_self() defaultCenter];
    sub_257ECFE00();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257D3D9C0(&qword_281543EB0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v41 = sub_257ECDE50();

    (*(v3 + 8))(v9, v2);
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_dRotationSubscription] = v41;
  }

  else
  {
    v42 = v44;
  }
}

void sub_257D3CB30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 orientation];

    sub_257D3CBC8(v5, v6);
  }
}

id sub_257D3CBC8(id result, __n128 a2)
{
  v3 = result;
  if (qword_27F8F4670 != -1)
  {
    result = swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v4 = sub_257E00504();
    if (v4)
    {
      v5 = v4;
      [v4 rotateIfPossibleTo_];
    }

    sub_257D3CCC0();
    v6 = v3 - 5;
    v7 = sub_257E003E8();
    [v7 setHidden_];

    result = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel);
    if (result)
    {

      return [result setHidden_];
    }
  }

  return result;
}

void sub_257D3CCC0()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 orientation];

  if (v2 == 4)
  {
    v3 = sub_257E00504();
    if (!v3)
    {
      return;
    }

    v13 = *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
    if (!v13)
    {
      goto LABEL_16;
    }

    v20 = v3;
    v5 = v13;
    v14 = [v0 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;

      [v20 bounds];
      v19 = v18 * 0.5 - v17 * 0.5;
      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      v12 = v19 + *&qword_2815482F8;
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = sub_257E00504();
  if (!v3)
  {
    return;
  }

  v4 = *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  if (v4)
  {
    v20 = v3;
    v5 = v4;
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;

      [v20 bounds];
      v11 = v9 * 0.5 - v10 * 0.5;
      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      v12 = v11 - *&qword_2815482F8;
LABEL_15:
      [v5 setConstant_];

      v3 = v20;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_16:
}

void sub_257D3CF38(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257D3CFB8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

double sub_257D3D02C()
{
  v80 = sub_257ECF120();
  v0 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v1, v2, v3, v4);
  v79 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 shared];
  v8 = [v7 downloadManager];

  v9 = sub_257ECF4C0();
  v10 = [v8 downloadAssetsWithName_];

  v11 = sub_257ECF810();
  v12 = *(v11 + 16);

  if (v12 || (v22 = [v6 shared], v23 = objc_msgSend(v22, sel_downloadManager), v22, v24 = sub_257ECF4C0(), v25 = objc_msgSend(v23, sel_totalSizeOccupiedWithName_, v24), v23, v24, v25 < 1))
  {
    v13 = v0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v14 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloading) = 1;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v14 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) = 1;
    v26 = v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorSignsToggledOnAfterSuccessfulDownload;
    swift_beginAccess();
    v27 = *(v26 + 8);
    v28 = *(v26 + 16);
    v84[0] = *v26;
    v84[1] = v27;
    v85 = v28;
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    *(&v76 - 2) = v84;
    sub_257ECFD50();

    if (v81[0])
    {
      v13 = v0;
    }

    else
    {
      swift_beginAccess();
      LOBYTE(v81[0]) = 1;
      v62 = v79;
      v63 = sub_257ECF110();
      MEMORY[0x28223BE20](v63, v64, v65, v66, v67);
      *(&v76 - 2) = v81;
      *(&v76 - 1) = v26;
      sub_257ECFD40();
      v77 = *(v0 + 8);
      v68 = v80;
      v77(v62, v80);
      swift_endAccess();
      v69 = v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
      swift_beginAccess();
      LOBYTE(v81[0]) = 1;
      v70 = sub_257ECF110();
      v78 = v0;
      v71 = v68;
      MEMORY[0x28223BE20](v70, v72, v73, v74, v75);
      *(&v76 - 2) = v81;
      *(&v76 - 1) = v69;
      sub_257ECFD40();
      v13 = v78;
      v77(v62, v71);
      swift_endAccess();
    }
  }

  v15 = [v6 shared];
  v16 = [v15 downloadManager];

  v17 = sub_257ECF4C0();
  v18 = [v16 downloadAssetsWithName_];

  v19 = sub_257ECF810();
  v20 = *(v19 + 16);

  if (v20 || (v35 = [v6 shared], v36 = objc_msgSend(v35, sel_downloadManager), v35, v37 = sub_257ECF4C0(), v38 = objc_msgSend(v36, sel_totalSizeOccupiedWithName_, v37), v36, v37, v38 < 1))
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    *(v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloading) = 1;
  }

  else
  {
    v78 = v13;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    *(v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) = 1;
    v39 = v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorAttributesToggledOnAfterSuccessfulDownload;
    swift_beginAccess();
    v40 = *(v39 + 8);
    v41 = *(v39 + 16);
    v81[0] = *v39;
    v81[1] = v40;
    v82 = v41;
    v42 = qword_2815447E0;

    if (v42 != -1)
    {
      v43 = swift_once();
    }

    MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
    *(&v76 - 2) = v81;
    sub_257ECFD50();

    if ((v83 & 1) == 0)
    {
      swift_beginAccess();
      v83 = 1;
      v48 = v79;
      v49 = sub_257ECF110();
      MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
      *(&v76 - 2) = &v83;
      *(&v76 - 1) = v39;
      sub_257ECFD40();
      v54 = *(v78 + 8);
      v55 = v80;
      v54(v48, v80);
      swift_endAccess();
      v56 = v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
      swift_beginAccess();
      v83 = 1;
      v57 = sub_257ECF110();
      MEMORY[0x28223BE20](v57, v58, v59, v60, v61);
      *(&v76 - 2) = &v83;
      *(&v76 - 1) = v56;
      sub_257ECFD40();
      v54(v48, v55);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D3D9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257D3DA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48, &qword_257EE35C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_257D3DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568, &qword_257EE4C98);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v14 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v55[-v20];
  v22 = &v4[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  v23 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  v24 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler + 8];
  *v22 = a2;
  *(v22 + 1) = a3;
  sub_257BBD7E4(a2, a3);
  sub_257BBD88C(v23, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v26 = *(v25 - 8);
  (*(v26 + 16))(v21, a1, v25);
  (*(v26 + 56))(v21, 0, 1, v25);
  v27 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  swift_beginAccess();
  sub_257D3EA58(v21, &v4[v27]);
  swift_endAccess();
  sub_257D3E9E8(&v4[v27], v14);
  result = (*(v26 + 48))(v14, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
    [v29 setUnitOptions_];
    [v29 setUnitStyle_];
    sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
    sub_257ECFE20();

    (*(v26 + 8))(v14, v25);
    v30 = [v4 textLabel];
    if (v30)
    {
      v31 = v30;
      v32 = sub_257ECF4C0();
      [v31 setText_];
    }

    v33 = [v4 textLabel];
    if (v33)
    {
      v34 = v33;
      [v33 setIsAccessibilityElement_];
    }

    v35 = sub_257ECF4C0();

    [v4 setAccessibilityValue_];

    v36 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
    v37 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper];
    sub_257ECC750();
    [v37 setValue_];

    [*&v4[v36] setMinimumValue_];
    v38 = *&v4[v36];
    sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
    v39 = v38;
    v40 = sub_257ECC730();
    v41 = [objc_opt_self() meters];
    LOBYTE(v38) = sub_257ECFF50();

    v42 = 12.0;
    if (v38)
    {
      v42 = 4.0;
    }

    [v39 setMaximumValue_];

    v43 = qword_281544FE0;
    v44 = *&v4[v36];
    if (v43 != -1)
    {
      swift_once();
    }

    v45 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    swift_beginAccess();
    v46 = *(v45 + 8);
    v47 = *(v45 + 16);
    v56[0] = *v45;
    v56[1] = v46;
    v57 = v47;
    v48 = qword_2815447E0;

    if (v48 != -1)
    {
      v49 = swift_once();
    }

    MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
    *&v55[-16] = v56;
    sub_257ECFD50();

    v54 = 0.5;
    if (v58)
    {
      v54 = 1.0;
    }

    [v44 setStepValue_];

    [*&v4[v36] addTarget:v4 action:sel_distanceStepperValueChanged_ forControlEvents:4096];
    [v4 setAccessoryView_];
    [v4 setAccessoryType_];
    [v4 setAccessibilityTraits_];
    return [v4 setIsAccessibilityElement_];
  }

  return result;
}

void sub_257D3E22C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568, &qword_257EE4C98);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v23 - v7;
  v9 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper];
  [v10 value];
  v11 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  swift_beginAccess();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(&v1[v11], 1, v12) == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_257ECC760();
  swift_endAccess();
  sub_257D3E9E8(&v1[v11], v8);
  if (v14(v8, 1, v12) == 1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v15 setUnitOptions_];
  [v15 setUnitStyle_];
  sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
  sub_257ECFE20();

  (*(v13 + 8))(v8, v12);
  v16 = [v1 textLabel];
  if (v16)
  {
    v17 = v16;
    v18 = sub_257ECF4C0();
    [v17 setText_];
  }

  v19 = sub_257ECF4C0();

  [v1 setAccessibilityValue_];

  v20 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  if (v20)
  {
    v21 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler + 8];
    v22 = *&v1[v9];
    sub_257ECC3F0();
    v20([v22 value]);
    sub_257BBD88C(v20, v21);
  }
}

id sub_257D3E56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v7 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (a3)
  {
    v10 = sub_257ECF4C0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for UIStepperLengthCell(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v10);

  return v11;
}

id sub_257D3E6D4(void *a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v4 = OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__lengthMeasure;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__valueChangedHandler];
  v7 = type metadata accessor for UIStepperLengthCell(0);
  *v6 = 0;
  *(v6 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_257D3E7F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIStepperLengthCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UIStepperLengthCell(uint64_t a1)
{
  result = qword_27F8F8550;
  if (!qword_27F8F8550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257D3E8DC(uint64_t a1)
{
  sub_257D3E984(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257D3E984(uint64_t a1)
{
  if (!qword_27F8F8560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4DA0, &unk_257EDAE70);
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F8560);
    }
  }
}

uint64_t sub_257D3E9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568, &qword_257EE4C98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D3EA58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568, &qword_257EE4C98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_257D3EAC8()
{
  sub_257D3E22C();
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  if (v31)
  {
    v6 = swift_beginAccess();
    MEMORY[0x28223BE20](v6, v7, v8, v9, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    if (*(v29 + 16))
    {
      v11 = sub_257C03F6C(v30, v31);
      v13 = v12;

      if (v13)
      {
        v14 = *(v29 + 56) + 296 * v11;
        v15 = *(v14 + 80);
        v16 = *(v14 + 96);

        v17 = swift_beginAccess();
        MEMORY[0x28223BE20](v17, v18, v19, v20, v21);

        sub_257ECFD50();

        if (v15 != v27 || (v22 = swift_beginAccess(), MEMORY[0x28223BE20](v22, v23, v24, v25, v26), , sub_257ECFD50(), , v16 != v28))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        return;
      }
    }

    else
    {
    }
  }
}

uint64_t sub_257D3EEF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568, &qword_257EE4C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257D3EF70@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v103 = *MEMORY[0x277D85DE8];
  v92 = sub_257ECD1A0();
  v3 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v4, v5, v6, v7);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v89 = &v79 - v14;
  v95 = sub_257ECC7D0();
  v15 = *(v95 - 8);
  *&v20 = MEMORY[0x28223BE20](v95, v16, v17, v18, v19).n128_u64[0];
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v2;
  v81 = [v2 length];
  if (v81 < 1)
  {
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v94 = (v15 + 8);
    v88 = *MEMORY[0x277D764F8];
    v91 = (v3 + 8);
    v87 = (v3 + 16);
    v25 = MEMORY[0x277D84F90];
    do
    {
      v96 = 0;
      v97 = 0;
      v26 = v82;
      v86 = v23;
      v27 = [v82 attributesAtIndex_effectiveRange_];
      _s3__C3KeyVMa_0(0);
      sub_257D3FC9C();
      v93 = sub_257ECF3D0();

      v28 = [v26 attributedSubstringFromRange_];
      v29 = [v28 string];

      v30 = sub_257ECF500();
      v32 = v31;

      *&v99 = 44;
      *(&v99 + 1) = 0xE100000000000000;
      MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
      *(&v79 - 2) = &v99;

      v85 = v32;
      v38 = sub_257D3F6FC(0x7FFFFFFFFFFFFFFFLL, 1, sub_257CD1420, (&v79 - 4), v30, v32, &v104);
      v83 = v24;
      v39 = *(v38 + 16);
      v84 = v38;
      if (v39)
      {
        v40 = (v38 + 56);
        do
        {
          v41 = *(v40 - 3);
          v42 = *(v40 - 2);
          v44 = *(v40 - 1);
          v43 = *v40;

          *&v99 = MEMORY[0x259C720C0](v41, v42, v44, v43);
          *(&v99 + 1) = v45;
          sub_257ECC7A0();
          sub_257BDAB08();
          v46 = sub_257ED0110();
          v48 = v47;
          (*v94)(v22, v95);

          v49 = HIBYTE(v48) & 0xF;
          if ((v48 & 0x2000000000000000) == 0)
          {
            v49 = v46 & 0xFFFFFFFFFFFFLL;
          }

          if (v49)
          {
            v50 = v93;
            if (*(v93 + 16))
            {
              v51 = v22;
              v52 = v25;
              v53 = sub_257C09E74();
              v55 = v54;

              if ((v55 & 1) == 0)
              {
                __break(1u);
LABEL_28:
                __break(1u);
              }

              sub_257BE41F4(*(v50 + 56) + 32 * v53, v102);
              sub_257BEBE08(v102, &v99);
              swift_dynamicCast();
              v56 = v89;
              sub_257ECD1B0();
              v57 = v92;
              sub_257ECCFA0();

              (*v91)(v56, v57);
              v25 = v52;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v98 = v52;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v25 = sub_257BFDA78(0, v52[2] + 1, 1, v52);
                v98 = v25;
              }

              v22 = v51;
              v60 = v25[2];
              v59 = v25[3];
              if (v60 >= v59 >> 1)
              {
                v25 = sub_257BFDA78((v59 > 1), v60 + 1, 1, v25);
                v98 = v25;
              }

              v61 = v100;
              v62 = v101;
              v63 = __swift_mutable_project_boxed_opaque_existential_1(&v99, v100);
              v67 = MEMORY[0x28223BE20](v63, v63, v64, v65, v66);
              v69 = &v79 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v70 + 16))(v69, v67);
              sub_257C9D038(v60, v69, &v98, v61, v62);
              __swift_destroy_boxed_opaque_existential_0(&v99);
            }

            else
            {

              sub_257ECD1B0();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_257BFDA78(0, v25[2] + 1, 1, v25);
              }

              v72 = v25[2];
              v71 = v25[3];
              if (v72 >= v71 >> 1)
              {
                v25 = sub_257BFDA78((v71 > 1), v72 + 1, 1, v25);
              }

              v73 = v92;
              v100 = v92;
              v101 = MEMORY[0x277D70398];
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
              v75 = v90;
              (*v87)(boxed_opaque_existential_1, v90, v73);
              v25[2] = v72 + 1;
              sub_257BE40E4(&v99, &v25[5 * v72 + 4]);
              (*v91)(v75, v73);
            }
          }

          else
          {
          }

          v40 += 4;
          --v39;
        }

        while (v39);
      }

      v23 = v86 + v97;
      if (__OFADD__(v86, v97))
      {
        goto LABEL_28;
      }

      v24 = v83;
    }

    while (v23 < v81);
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60, &unk_257EDEFC0);
  v77 = v80;
  v80[3] = v76;
  result = sub_257D3FC38();
  v77[4] = result;
  *v77 = v25;
  return result;
}

unint64_t sub_257D3F6FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_257ECF720();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_257BFC9F4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_257BFC9F4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_257ECF700();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_257ECF5F0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_257ECF5F0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_257ECF720();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_257BFC9F4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_257ECF720();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_257BFC9F4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_257BFC9F4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_257ECF5F0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = [objc_opt_self() currentLanguageCode];
  if (!v4)
  {
    sub_257ECF500();
    v4 = sub_257ECF4C0();
  }

  v5 = MEMORY[0x259C734B0](v4);

  if (v5)
  {
    v6 = sub_257ECF500();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_257ECF4C0();
  v10 = MEMORY[0x259C734B0]();

  if (!v10)
  {
    if (!v8)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v11 = sub_257ECF500();
  v13 = v12;

  if (!v8)
  {
LABEL_14:

    return 0;
  }

  if (v11 == v6 && v8 == v13)
  {

    return 1;
  }

  v14 = sub_257ED0640();

  return v14 & 1;
}

unint64_t sub_257D3FC38()
{
  result = qword_27F8F6D68;
  if (!qword_27F8F6D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6D60, &unk_257EDEFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D68);
  }

  return result;
}

unint64_t sub_257D3FC9C()
{
  result = qword_27F8F8300;
  if (!qword_27F8F8300)
  {
    _s3__C3KeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8300);
  }

  return result;
}

uint64_t MAGCaptureEvent.description.getter()
{
  sub_257ED02D0();

  v0 = MAGCaptureEvent.CaptureEventType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x2065727574706143;
}

unint64_t MAGCaptureEvent.eventType.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_257BEE3F8(v2, v3);
}

double static MAGCaptureEvent.didStartAVCaptureSession()@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_257EE4D00;
  return result;
}

double static MAGCaptureEvent.willBeginCaptureForResolvedSettings()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000001;
  *a1 = xmmword_257EE4D10;
  return result;
}

id static MAGCaptureEvent.didFinishProcessingPhoto(success:photo:)@<X0>(char a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1 & 1;
  a3[1] = a2;
  return a2;
}

double static MAGCaptureEvent.didCapturePhotoForResolvedSettings()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000008;
  *a1 = xmmword_257EE4D20;
  return result;
}

uint64_t static MAGCaptureEvent.didOutputSampleBuffer(sampleBuffer:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a1 | 0x4000000000000000;
  a2[1] = 0;
  return sub_257ECC3F0();
}

double static MAGCaptureEvent.newApplicationClaimsCaptureSession()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000009;
  *a1 = xmmword_257EE4D30;
  return result;
}

double static MAGCaptureEvent.didRequestToResumeSession()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000010;
  *a1 = xmmword_257EE4D40;
  return result;
}

double static MAGCaptureEvent.sessionControlsDidBecomeActive()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000011;
  *a1 = xmmword_257EE4D50;
  return result;
}

double static MAGCaptureEvent.sessionControlsDidBecomeInactive()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000018;
  *a1 = xmmword_257EE4D60;
  return result;
}

double static MAGCaptureEvent.sessionControlsWillEnterFullscreenAppearance()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000019;
  *a1 = xmmword_257EE4D70;
  return result;
}

double static MAGCaptureEvent.sessionControlsWillExitFullscreenAppearance()@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000020;
  *a1 = xmmword_257EE4D80;
  return result;
}

unint64_t MAGCaptureEvent.CaptureEventType.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000022;
    }

    else
    {
      v4 = v0[1];
      if (v1 <= 0x800000000000000FLL)
      {
        if (v1 ^ 0x8000000000000008 | v4)
        {
          v5 = 0xD000000000000025;
        }

        else
        {
          v5 = 0xD00000000000002FLL;
        }

        v6 = 0xD000000000000030;
        if (!(v1 ^ 0x8000000000000000 | v4))
        {
          v6 = 0xD00000000000001CLL;
        }

        if (v1 <= 0x8000000000000007)
        {
          return v6;
        }

        else
        {
          return v5;
        }
      }

      else if (v1 <= 0x8000000000000017)
      {
        if (v1 ^ 0x8000000000000010 | v4)
        {
          return 0xD000000000000027;
        }

        else
        {
          return 0xD00000000000001ELL;
        }
      }

      else if (v1 ^ 0x8000000000000018 | v4)
      {
        if (v1 ^ 0x8000000000000019 | v4)
        {
          return 0xD00000000000002ELL;
        }

        else
        {
          return 0xD00000000000002FLL;
        }
      }

      else
      {
        return 0xD000000000000029;
      }
    }
  }

  else if (v1)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000033;
  }
}

unint64_t get_enum_tag_for_layout_string_16MagnifierSupport15MAGCaptureEventV07CaptureD4TypeO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

uint64_t sub_257D40034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 16))
  {
    return (*a1 + 62);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_257D40090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_257D400F4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    *result = (4 * (a2 - 2)) & 0x3FFFFFFF8 | (a2 - 2) & 1 | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_257D40144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257D4018C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_257D401F4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8588, &qword_257EE5028);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v19 = &v24 - v18;
  v20 = a2;
  *v19 = sub_257ECE500();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8590, &qword_257EE5030);
  sub_257D40360(a1, v20, &v19[*(v21 + 44)]);
  sub_257BE401C(v19, v12, &qword_27F8F8588, &qword_257EE5028);
  *a3 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8598, &qword_257EE5038);
  sub_257BE401C(v12, a3 + *(v22 + 48), &qword_27F8F8588, &qword_257EE5028);
  v23 = v20;
  sub_257BE4084(v19, &qword_27F8F8588, &qword_257EE5028);
  sub_257BE4084(v12, &qword_27F8F8588, &qword_257EE5028);
}

uint64_t sub_257D40360@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a1;
  v110 = a3;
  v106 = sub_257ECE860();
  v111 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v5, v6, v7, v8);
  v10 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85A0, &qword_257EE5040);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = v93 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85A8, &qword_257EE5048);
  MEMORY[0x28223BE20](v94, v18, v19, v20, v21);
  v23 = v93 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85B0, &qword_257EE5050) - 8;
  MEMORY[0x28223BE20](v105, v24, v25, v26, v27);
  v109 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  v108 = v93 - v34;
  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  v107 = v93 - v40;
  MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
  v47 = v93 - v46;
  v48 = swift_allocObject();
  *(v48 + 16) = a1;
  *(v48 + 24) = a2;
  v103 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F85B8, &qword_257EE5058);
  v101 = sub_257BD2D4C(&qword_27F8F85C0, &qword_27F8F85B8, &qword_257EE5058, MEMORY[0x277CE1198]);
  sub_257ECEEA0();
  v100 = objc_opt_self();
  v49 = [v100 systemYellowColor];
  v50 = [v49 CGColor];

  v51 = sub_257ECED20();
  KeyPath = swift_getKeyPath();
  v112 = v51;
  v53 = sub_257ECE090();
  v54 = &v17[*(v11 + 36)];
  *v54 = KeyPath;
  v54[1] = v53;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v99 = ObjCClassFromMetadata;
  v98 = objc_opt_self();
  v56 = [v98 bundleForClass_];
  v57 = sub_257ECF4C0();
  v58 = sub_257ECF4C0();
  v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

  v60 = sub_257ECF500();
  v62 = v61;

  v112 = v60;
  v113 = v62;
  v97 = sub_257D41808();
  v96 = sub_257BDAB08();
  sub_257ECEBF0();

  sub_257BE4084(v17, &qword_27F8F85A0, &qword_257EE5040);
  sub_257ECE850();
  v93[2] = sub_257D418EC();
  v93[1] = sub_257D419A8(&qword_27F8F85F8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v95 = v47;
  v63 = v106;
  sub_257ECEB60();
  v64 = *(v111 + 8);
  v111 += 8;
  v93[0] = v64;
  v64(v10, v63);
  sub_257BE4084(v23, &qword_27F8F85A8, &qword_257EE5048);
  v65 = sub_257ECE930();
  v66 = v105;
  v67 = &v47[*(v105 + 44)];
  *v67 = v65;
  *(v67 + 8) = 0u;
  *(v67 + 24) = 0u;
  v67[40] = 1;
  v68 = swift_allocObject();
  v69 = v103;
  *(v68 + 16) = v104;
  *(v68 + 24) = v69;
  v70 = v69;
  sub_257ECEEA0();
  v71 = [v100 systemYellowColor];
  v72 = [v71 CGColor];

  v73 = sub_257ECED20();
  v74 = swift_getKeyPath();
  v112 = v73;
  v75 = sub_257ECE090();
  v76 = &v17[*(v11 + 36)];
  *v76 = v74;
  v76[1] = v75;
  v77 = [v98 bundleForClass_];
  v78 = sub_257ECF4C0();
  v79 = sub_257ECF4C0();
  v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

  v81 = sub_257ECF500();
  v83 = v82;

  v112 = v81;
  v113 = v83;
  sub_257ECEBF0();

  sub_257BE4084(v17, &qword_27F8F85A0, &qword_257EE5040);
  sub_257ECE850();
  v84 = v107;
  sub_257ECEB60();
  (v93[0])(v10, v63);
  sub_257BE4084(v23, &qword_27F8F85A8, &qword_257EE5048);
  v85 = sub_257ECE930();
  v86 = v84 + *(v66 + 44);
  *v86 = v85;
  *(v86 + 8) = 0u;
  *(v86 + 24) = 0u;
  *(v86 + 40) = 1;
  v87 = v95;
  v88 = v108;
  sub_257BE401C(v95, v108, &qword_27F8F85B0, &qword_257EE5050);
  v89 = v109;
  sub_257BE401C(v84, v109, &qword_27F8F85B0, &qword_257EE5050);
  v90 = v110;
  sub_257BE401C(v88, v110, &qword_27F8F85B0, &qword_257EE5050);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8600, &qword_257EE50A0);
  sub_257BE401C(v89, v90 + *(v91 + 48), &qword_27F8F85B0, &qword_257EE5050);
  sub_257BE4084(v84, &qword_27F8F85B0, &qword_257EE5050);
  sub_257BE4084(v87, &qword_27F8F85B0, &qword_257EE5050);
  sub_257BE4084(v89, &qword_27F8F85B0, &qword_257EE5050);
  return sub_257BE4084(v88, &qword_27F8F85B0, &qword_257EE5050);
}

void sub_257D40BFC(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice;
  v3 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  if (v3)
  {
    [v3 videoZoomFactor];
    v6 = *(a2 + v2);
    if (v6)
    {
      v7 = v5 + -1.0;
      v8 = v6;
      sub_257D334B0(1, v7);
    }
  }
}

double sub_257D40CB4@<D0>(uint64_t a1@<X8>)
{
  v21 = sub_257ECEE10();
  v20 = sub_257ECED70();
  KeyPath = swift_getKeyPath();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  sub_257BDAB08();
  v7 = sub_257ECEAF0();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_257ECED70();
  v11 = sub_257ECEAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_257C0300C(v7, v9, v6 & 1);

  *a1 = v21;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v20;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  v15 &= 1u;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257BD1B90(v11, v13, v15);

  sub_257C0300C(v11, v13, v15);

  return result;
}

void sub_257D40EF4(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice;
  v3 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_internalCaptureDevice);
  if (v3)
  {
    [v3 videoZoomFactor];
    v6 = *(a2 + v2);
    if (v6)
    {
      v7 = v5 + 1.0;
      v8 = v6;
      sub_257D334B0(1, v7);
    }
  }
}

__n128 sub_257D40FAC@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a9@<X8>)
{
  v11 = sub_257ECE5B0();
  v22 = 1;
  a1(v18);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v16 = v18[0];
  result = v18[1];
  v17 = v22;
  *a9 = v11;
  *(a9 + 8) = 0;
  *(a9 + 16) = v17;
  *(a9 + 24) = v16;
  *(a9 + 40) = result;
  *(a9 + 56) = v12;
  *(a9 + 64) = v13;
  *(a9 + 72) = v14;
  return result;
}

double sub_257D41030@<D0>(uint64_t a1@<X8>)
{
  v21 = sub_257ECEE10();
  v20 = sub_257ECED70();
  KeyPath = swift_getKeyPath();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  sub_257BDAB08();
  v7 = sub_257ECEAF0();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_257ECED70();
  v11 = sub_257ECEAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_257C0300C(v7, v9, v6 & 1);

  *a1 = v21;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v20;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  v15 &= 1u;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257BD1B90(v11, v13, v15);

  sub_257C0300C(v11, v13, v15);

  return result;
}

void sub_257D41270(uint64_t a1, uint64_t a2)
{
  sub_257DB0238();
  sub_257DB05D0(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v2)
  {
    sub_257D334B0(0, 1.0);
  }
}

double sub_257D4130C(uint64_t a1, char *a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  *&v17 = MEMORY[0x28223BE20](v11, v13, v14, v15, v16).n128_u64[0];
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*&a2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning])
  {
    v27 = *&a2[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue];
    v21 = swift_allocObject();
    v21[3] = 0;
    v21[4] = 0;
    v21[2] = a2;
    aBlock[4] = sub_257D4172C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_33;
    v22 = _Block_copy(aBlock);
    v26 = v11;
    v23 = v22;
    v24 = a2;
    sub_257ECF150();
    v28 = MEMORY[0x277D84F90];
    sub_257D419A8(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v19, v10, v23);
    _Block_release(v23);
    (*(v4 + 8))(v10, v3);
    (*(v12 + 8))(v19, v26);
  }

  return result;
}

id sub_257D4160C@<X0>(uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_257ECF050();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8570, &qword_257EE4FC0);
  sub_257D401F4(v5, v4, (a2 + *(v7 + 44)));
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8578, &qword_257EE4FC8) + 36));
  *v9 = sub_257D4171C;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8580, &unk_257EE4FD0) + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_257D41724;
  v11[3] = v10;
  v12 = v4;

  return v12;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D41758@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECE3D0();
  *a1 = result;
  return result;
}

uint64_t sub_257D417B0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C70F50]();
  *a1 = result;
  return result;
}

unint64_t sub_257D41808()
{
  result = qword_27F8F85C8;
  if (!qword_27F8F85C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F85A0, &qword_257EE5040);
    sub_257BD2D4C(&qword_27F8F85D0, &qword_27F8F85D8, &qword_257EE5090, MEMORY[0x277CDF028]);
    sub_257BD2D4C(&qword_27F8F85E0, &qword_27F8F85E8, &qword_257EE5098, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F85C8);
  }

  return result;
}

unint64_t sub_257D418EC()
{
  result = qword_27F8F85F0;
  if (!qword_27F8F85F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F85A8, &qword_257EE5048);
    sub_257D41808();
    sub_257D419A8(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F85F0);
  }

  return result;
}

uint64_t sub_257D419A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257D419F8()
{
  result = qword_27F8F8608;
  if (!qword_27F8F8608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8580, &unk_257EE4FD0);
    sub_257D41A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8608);
  }

  return result;
}

unint64_t sub_257D41A84()
{
  result = qword_27F8F8610;
  if (!qword_27F8F8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8578, &qword_257EE4FC8);
    sub_257BD2D4C(&qword_27F8F8618, &qword_27F8F8620, &qword_257EE50D8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8610);
  }

  return result;
}

uint64_t sub_257D41B3C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6169706573;
    }

    else
    {
      v3 = 0x6574696877;
    }

    v2 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 2036429415;
  }

  else if (a1 == 3)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6B63616C62;
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x6D6F74737563;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6169706573;
    }

    else
    {
      v8 = 0x6574696877;
    }

    v7 = 0xE500000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x6B63616C62;
    if (a2 != 3)
    {
      v5 = 0x6D6F74737563;
      v4 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v6 = 2036429415;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_257ED0640();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_257D41C9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C706F6570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1954047348;
    }

    else
    {
      v4 = 0x727574696E727566;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73726F6F64;
    }

    else
    {
      v4 = 0x656C706F6570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE400000000000000;
  v8 = 1954047348;
  if (a2 != 2)
  {
    v8 = 0x727574696E727566;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x73726F6F64;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_257ED0640();
  }

  return v11 & 1;
}

uint64_t sub_257D41DCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006369747061;
  v3 = 0x48746C7561666564;
  v4 = a1;
  if (a1 <= 4u)
  {
    v15 = 0x65746544726F6F64;
    v16 = 0xED00006E6F697463;
    v17 = 0x657053746E696F70;
    v18 = 0xEE00747865546B61;
    if (a1 != 3)
    {
      v17 = 0xD000000000000012;
      v18 = 0x8000000257EF7740;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v16 = v18;
    }

    v19 = 0x6544656C706F6570;
    v20 = 0xEF6E6F6974636574;
    if (!a1)
    {
      v19 = 0x48746C7561666564;
      v20 = 0xED00006369747061;
    }

    if (a1 <= 1u)
    {
      v13 = v19;
    }

    else
    {
      v13 = v15;
    }

    if (v4 <= 1)
    {
      v14 = v20;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    v5 = 0x65636E6164697567;
    v6 = 0xEF6572756C696146;
    v7 = 0x75476E4F6B636F6CLL;
    v8 = 0xEE0065636E616469;
    if (a1 != 9)
    {
      v7 = 0x4766664F6B636F6CLL;
      v8 = 0xEF65636E61646975;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x8000000257EF7760;
    v10 = 0xD000000000000014;
    v11 = 0x6E616353706F6F6CLL;
    v12 = 0xEC000000676E696ELL;
    if (a1 != 6)
    {
      v11 = 0x65636E6164697567;
      v12 = 0xEF73736563637553;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v12;
    }

    if (a1 <= 7u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v5;
    }

    if (v4 <= 7)
    {
      v14 = v9;
    }

    else
    {
      v14 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000257EF7760;
        if (v13 != 0xD000000000000014)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      if (a2 == 6)
      {
        v2 = 0xEC000000676E696ELL;
        if (v13 != 0x6E616353706F6F6CLL)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      v3 = 0x65636E6164697567;
      v2 = 0xEF73736563637553;
      goto LABEL_54;
    }

    if (a2 == 8)
    {
      v23 = 0x65636E6164697567;
      v24 = 0x72756C696146;
    }

    else
    {
      if (a2 == 9)
      {
        v21 = 0x75476E4F6B636F6CLL;
        v22 = 0x65636E616469;
LABEL_41:
        v2 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v13 != v21)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      v23 = 0x4766664F6B636F6CLL;
      v24 = 0x636E61646975;
    }

    v2 = v24 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
    if (v13 != v23)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xED00006E6F697463;
      if (v13 != 0x65746544726F6F64)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    if (a2 != 3)
    {
      v2 = 0x8000000257EF7740;
      if (v13 != 0xD000000000000012)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v21 = 0x657053746E696F70;
    v22 = 0x747865546B61;
    goto LABEL_41;
  }

  if (a2)
  {
    v2 = 0xEF6E6F6974636574;
    if (v13 != 0x6544656C706F6570)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

LABEL_54:
  if (v13 != v3)
  {
LABEL_59:
    v25 = sub_257ED0640();
    goto LABEL_60;
  }

LABEL_55:
  if (v14 != v2)
  {
    goto LABEL_59;
  }

  v25 = 1;
LABEL_60:

  return v25 & 1;
}

void sub_257D42230(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a4 = v5;
}

uint64_t sub_257D422C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

double sub_257D42338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

uint64_t sub_257D423B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_257ECE1D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v18 = &v21 - v17;
  v19 = *(v4 + 16);
  v19(&v21 - v17, a1, v3, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  (v19)(v10, v18, v3);
  sub_257ECC3F0();
  sub_257ECDD70();
  return (*(v4 + 8))(v18, v3);
}

uint64_t sub_257D42574(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v3;
}

double sub_257D4261C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

uint64_t sub_257D42694()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3 >= 4u)
  {
  }

  else
  {
    v0 = sub_257ED0640();

    if ((v0 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      result = sub_257BE6B24();
      if (result)
      {
        return result;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v2;
  if (!v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    result = sub_257BE6B24();
    if (!result)
    {
      return sub_257ECED90();
    }
  }

  return result;
}

uint64_t sub_257D428AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5 >= 4u)
  {
  }

  else
  {
    v0 = sub_257ED0640();

    if ((v0 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v4 <= 1u)
      {
        return sub_257ECED70();
      }

      if (v4 == 2 || v4 == 3)
      {
        return sub_257ECED90();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v3;
  if (v3)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v2 > 1u && (v2 == 2 || v2 == 3))
  {
    return sub_257ECED90();
  }

  return sub_257ECED70();
}

uint64_t sub_257D42AD8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customReaderBackgroundColor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60A0, &qword_257EDC570);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customSelectedTextColor, v2);
  v4 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__theme;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6078, &unk_257EE51A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__lastNonCustomTheme, v5);
  v7 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__fontName;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6050, &qword_257EDC548);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__dynamicTypeSize;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6028, &unk_257EE5190);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

void sub_257D42CDC(uint64_t a1)
{
  sub_257D42E3C(319);
  if (v1 <= 0x3F)
  {
    sub_257CD4C1C(319, &qword_27F8F8678, &type metadata for MFReaderFormatterTheme);
    if (v2 <= 0x3F)
    {
      sub_257CD4C1C(319, &qword_27F8F8680, &type metadata for MFReaderFont);
      if (v3 <= 0x3F)
      {
        sub_257D42EA0(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_257D42E3C(uint64_t a1)
{
  if (!qword_27F8F8670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6760, &qword_257EDD120);
    v1 = sub_257ECDD80();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F8670);
    }
  }
}

void sub_257D42EA0(uint64_t a1)
{
  if (!qword_27F8F8688)
  {
    sub_257ECE1D0();
    v1 = sub_257ECDD80();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F8688);
    }
  }
}

uint64_t sub_257D42EF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6028, &unk_257EE5190);
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v76 = &v69 - v7;
  v8 = sub_257ECE1D0();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v75 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6050, &qword_257EDC548);
  v70 = *(v20 - 8);
  v71 = v20;
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6078, &unk_257EE51A0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29, v30, v31, v32);
  v34 = &v69 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60A0, &qword_257EDC570);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37, v38, v39, v40);
  v42 = &v69 - v41;
  v43 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customReaderBackgroundColor;
  sub_257C359A0(0, 0xD00000000000002ALL, 0x8000000257F011E0, 0, 0, &v69 - v41);
  v44 = *(v36 + 32);
  v44(v1 + v43, v42, v35);
  v45 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__customSelectedTextColor;
  sub_257C359A0(0, 0xD000000000000024, 0x8000000257F01210, 0, 0, v42);
  v44(v1 + v45, v42, v35);
  v46 = v1;
  v47 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__theme;
  sub_257C35F98(2, 0xD00000000000001ALL, 0x8000000257F01240, 0, 0, v34);
  v48 = *(v28 + 32);
  v48(v46 + v47, v34, v27);
  v49 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__lastNonCustomTheme;
  sub_257C35F98(2, 0xD000000000000027, 0x8000000257F01260, 0, 0, v34);
  v48(v46 + v49, v34, v27);
  v50 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__fontName;
  sub_257C36554(5, 0xD000000000000021, 0x8000000257F01290, 0, 0, v26);
  (*(v70 + 32))(v46 + v50, v26, v71);
  v51 = objc_opt_self();
  v52 = [v51 sharedApplication];
  v53 = [v52 preferredContentSizeCategory];

  v54 = v72;
  sub_257D064AC(v72);

  v55 = v54;
  v56 = sub_257ECE1C0();
  v57 = v74;
  LOBYTE(v52) = v56;
  v58 = v73;
  v59 = *(v73 + 8);
  v60 = v55;
  v59(v55, v74);
  if (v52)
  {
    v61 = [v51 sharedApplication];
    v62 = [v61 preferredContentSizeCategory];

    v63 = v75;
    sub_257D064AC(v75);
  }

  else
  {
    v63 = v75;
    (*(v58 + 104))(v75, *MEMORY[0x277CDF988], v57);
  }

  v64 = v58;
  v65 = OBJC_IVAR____TtC16MagnifierSupport26MFReaderTextFormatterModel__dynamicTypeSize;
  (*(v64 + 16))(v60, v63, v57);
  v66 = v57;
  v67 = v76;
  sub_257C36B10(v60, 0xD000000000000024, 0x8000000257F012C0, 0, 0, v76);
  v59(v63, v66);
  (*(v77 + 32))(v46 + v65, v67, v78);
  return v46;
}

uint64_t sub_257D434F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFReaderTextFormatterModel(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

double sub_257D4354C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

uint64_t sub_257D435BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6000, &qword_257EDC528);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_257D4368C(uint64_t a1)
{
  sub_257CD4C1C(319, &qword_27F8F86A8, &type metadata for MFReaderPlaybackSpeed);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_257D4372C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

void sub_257D4376C()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v0 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v0 = MEMORY[0x277D84FA0];
  }

  qword_27F8F8628 = v0;
}

uint64_t sub_257D437F8(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257D43868()
{
  v1 = sub_257ECCC80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548340;
  v10 = *(*(qword_281548340 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
  v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v12 = v80;
  if (!v80 || ([v80 videoZoomFactor], v14 = v13, v12, v10 != v14))
  {
    v15 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_virtualDeviceSwitchOverVideoZoomFactors);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_257ECDD60();

    if (v80 && v80 == 1)
    {

      goto LABEL_9;
    }

    v16 = sub_257ED0640();

    if (v16)
    {
LABEL_9:

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v17 = v80;
      if (v80)
      {
        sub_257D334B0(0, *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor));
      }

      v18 = [objc_opt_self() currentRunLoop];
      sub_257ECCC00();
      v19 = sub_257ECCBD0();
      (*(v2 + 8))(v8, v1);
      [v18 runUntilDate_];

      v20 = sub_257DFF59C();
      v21 = [v20 layer];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        [v22 setAutomaticallyDimsOverCaptureRegion_];

        v24 = [v23 connection];
        if (!v24)
        {
          return;
        }

        [v24 setEnabled_];
        goto LABEL_61;
      }

LABEL_68:

      sub_257ED0410();
      __break(1u);
      return;
    }

    v74 = v2;
    v75 = v1;
    v25 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
    swift_beginAccess();
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v76 = *v25;
    v77 = v26;
    v78 = v27;
    v28 = qword_2815447E0;

    if (v28 != -1)
    {
      v29 = swift_once();
    }

    MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
    v21 = &v76;
    sub_257ECFD50();

    if (v79 == 2)
    {
      if (v15 >> 62)
      {
        v71 = sub_257ED0210();
        v39 = v75;
        if (v71 && sub_257ED0210() >= 2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v39 = v75;
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
        {
LABEL_19:
          if ((v15 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x259C72E20](0, v15);
            v43 = MEMORY[0x259C72E20](1, v15);
LABEL_23:
            v44 = v43;

            v45 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
            sub_257ECCF40();
            if (v46 <= v45)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              v64 = v76;
              if (v76)
              {
                v65 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
                sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
                v66 = sub_257ECFF30();
                v67 = sub_257ECFF50();

                v68 = 1.0;
                if ((v67 & 1) == 0)
                {
                  goto LABEL_47;
                }

                goto LABEL_48;
              }
            }

            else
            {
              v47 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
              sub_257ECCF40();
              if (v47 >= v48)
              {
                v49 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
                sub_257ECCF40();
                if (v50 > v49)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_257ECDD60();

                  v51 = v76;
                  if (v76)
                  {
                    sub_257D334B0(0, *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor));
                  }

                  goto LABEL_49;
                }
              }

              swift_getKeyPath();
              swift_getKeyPath();
              sub_257ECDD60();

              v64 = v76;
              if (v76)
              {
                v65 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
                sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
                v69 = sub_257ECFF30();
                v70 = sub_257ECFF50();

                v68 = 1.0;
                if ((v70 & 1) == 0)
                {
LABEL_47:
                  sub_257ECCF40();
                }

LABEL_48:
                sub_257D334B0(0, v65 / v68);
              }
            }

LABEL_49:

            goto LABEL_59;
          }

          v40 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v40)
          {
            if (v40 != 1)
            {
              v41 = *(v15 + 40);
              v42 = *(v15 + 32);
              v43 = v41;
              goto LABEL_23;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v42 = v76;
      if (v76)
      {
        v60 = *(v9 + 16);
        v61 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    v52 = *(v25 + 8);
    v53 = *(v25 + 16);
    v76 = *v25;
    v77 = v52;
    v78 = v53;
    MEMORY[0x28223BE20](v34, v35, v36, v37, v38);

    sub_257ECFD50();

    if (v79 != 1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v42 = v76;
      v39 = v75;
      if (v76)
      {
        v60 = *(v9 + 16);
        v61 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
LABEL_58:
        sub_257D334B0(0, *(v60 + v61));
        goto LABEL_59;
      }

LABEL_60:
      v72 = [objc_opt_self() currentRunLoop];
      sub_257ECCC00();
      v24 = sub_257ECCBD0();
      (*(v74 + 8))(v8, v39);
      [v72 runUntilDate_];

LABEL_61:
      return;
    }

    v39 = v75;
    v21 = &OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
    if (v15 >> 62)
    {
      if (sub_257ED0210() && sub_257ED0210() >= 1)
      {
LABEL_31:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x259C72E20](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v54 = *(v15 + 32);
        }

        v42 = v54;

        v55 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
        sub_257ECCF40();
        v57 = v56;
        swift_getKeyPath();
        swift_getKeyPath();
        if (v57 <= v55)
        {
          sub_257ECDD60();

          v58 = v76;
          if (v76)
          {
            v62 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
            sub_257ECCF40();
            v59 = v62 - v63;
            goto LABEL_41;
          }
        }

        else
        {
          sub_257ECDD60();

          v58 = v76;
          if (v76)
          {
            v59 = *(*(v9 + 16) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor);
LABEL_41:
            sub_257D334B0(0, v59);
          }
        }

LABEL_59:

        goto LABEL_60;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v42 = v76;
    if (v76)
    {
      v60 = *(v9 + 16);
      v61 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment7Display_initialVideoZoomFactor;
      goto LABEL_58;
    }

    goto LABEL_60;
  }
}