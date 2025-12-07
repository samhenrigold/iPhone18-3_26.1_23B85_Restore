void sub_257C0E028(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      return;
    }

LABEL_7:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    return;
  }

  if (a1 != 3)
  {
    goto LABEL_7;
  }

  v1 = sub_257ECF4C0();
  v9[4] = sub_257E5BD88;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_257E5BE70;
  v9[3] = &block_descriptor_6;
  v2 = _Block_copy(v9);
  v3 = AXLocStringForDeviceVariant();
  _Block_release(v2);

  if (v3)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257C0E2BC(unsigned __int8 a1)
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

void sub_257C0E3F8()
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
            memcpy(v19, (v4 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), v20, 0x128uLL);
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

void sub_257C0E6CC()
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

void sub_257C0E86C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  type metadata accessor for UIStepperLengthCell(0);
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_257ECF4C0();
  [v2 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addSubview_];

    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      sub_257EB6FD8(v10, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      sub_257C0E3F8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_257C0EAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286903E50[v7 + 32];
    if (v11 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v22 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v8 + 16) + 1, 1);
        v8 = v22;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF25C4((v9 > 1), v10 + 1, 1);
        v8 = v22;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_availableDetectionFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v13 setClipsToBounds_];
  v14 = [objc_opt_self() systemYellowColor];
  [v13 setTintColor_];

  *&v4[v12] = v13;
  if (a2)
  {
    v15 = sub_257ECF4C0();
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = v4;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, v15, a3, a1);

  return v16;
}

id sub_257C0ED7C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_286903E78[v5 + 32];
    if (v9 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v17 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v6 + 16) + 1, 1);
        v6 = v17;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF25C4((v7 > 1), v8 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_availableDetectionFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v11 setClipsToBounds_];
  v12 = [objc_opt_self() systemYellowColor];
  [v11 setTintColor_];

  *&v2[v10] = v11;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v13)
  {
  }

  return v13;
}

unint64_t sub_257C0F090(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v88[-1] - v9;
  v11 = sub_257ECCEA0();
  v12 = 5;
  v13 = 1;
  v87 = v4;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v12 = 3;
      }

      else
      {
        if (v11 != 4)
        {
          goto LABEL_14;
        }

        v12 = 4;
      }

      goto LABEL_13;
    }

    v14 = v1;
    v15 = sub_257ECF4C0();
    v12 = 2;
LABEL_10:
    v16 = sub_257ECCE30();
    v17 = [a1 dequeueReusableCellWithIdentifier:v15 forIndexPath:v16];

    v18 = v14;
    sub_257C0E3F8();
    goto LABEL_15;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_14;
    }

    v14 = v1;
    v15 = sub_257ECF4C0();
    v12 = 1;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_13:
  v13 = 0;
LABEL_14:
  v18 = v1;
  v19 = sub_257ECF4C0();
  v20 = sub_257ECCE30();
  v17 = [a1 dequeueReusableCellWithIdentifier:v19 forIndexPath:v20];

  sub_257C0E3F8();
  if (v13)
  {
    return v17;
  }

LABEL_15:
  if (v12 <= 1)
  {
    if (!v12)
    {
      v36 = [v17 textLabel];
      if (v36)
      {
        v37 = v36;
        [v36 setLineBreakMode_];
      }

      v38 = [v17 textLabel];
      if (v38)
      {
        v39 = v38;
        [v38 setNumberOfLines_];
      }

      v40 = [v17 textLabel];
      if (v40)
      {
        v41 = v40;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v43 = [objc_opt_self() bundleForClass_];
        v44 = sub_257ECF4C0();
        v45 = sub_257ECF4C0();
        v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

        if (!v46)
        {
          sub_257ECF500();
          v46 = sub_257ECF4C0();
        }

        [v41 setText_];
      }

      v47 = &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
      memcpy(v89, &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v89) != 1)
      {
        v48 = v47[74];
        v49 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        [v49 setOn_];
        [v49 addTarget:v18 action:sel_toggleObjectUnderstandingSwitch_ forControlEvents:4096];
        [v17 setAccessoryView_];
      }

      return v17;
    }

    [v17 setAccessoryView_];
    v79 = &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
    memcpy(v89, &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v89) == 1)
    {
      return v17;
    }

    v80 = v79[78];
    v81 = sub_257ECCE60();
    if (v81)
    {
      if (v81 != 1)
      {
        return v17;
      }

      v82 = 1;
      if (v80)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v82 = 0;
      if (!v80)
      {
LABEL_62:
        v83 = 3;
        goto LABEL_65;
      }
    }

    v83 = 0;
LABEL_65:
    [v17 setAccessoryType_];
    v84 = [v17 textLabel];
    if (v84)
    {
      v85 = v84;
      sub_257C69A6C(v82);
      v86 = sub_257ECF4C0();

      [v85 setText_];
    }

    return v17;
  }

  if (v12 == 2)
  {
    v50 = &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
    memcpy(v89, &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v89) != 1)
    {
      v51 = v50[78];
      memcpy(v88, v50, sizeof(v88));
      if (sub_257C108C4(v88) != 1)
      {
        type metadata accessor for UIStepperLengthCell(0);
        if (swift_dynamicCastClass())
        {
          v52 = objc_opt_self();
          v17 = v17;
          v53 = &selRef_feet;
          if (!v51)
          {
            v53 = &selRef_meters;
          }

          v54 = [v52 *v53];
          sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
          sub_257ECC740();
          v55 = swift_allocObject();
          *(v55 + 16) = v18;
          v56 = v18;
          sub_257D3DB54(v10, sub_257C10A7C, v55);

          (*(v87 + 8))(v10, v3);
        }
      }
    }

    return v17;
  }

  if (v12 != 3)
  {
    v57 = [v17 textLabel];
    if (v57)
    {
      v58 = v57;
      [v57 setLineBreakMode_];
    }

    v59 = [v17 textLabel];
    if (v59)
    {
      v60 = v59;
      [v59 setNumberOfLines_];
    }

    v61 = [v17 textLabel];
    if (v61)
    {
      v62 = v61;
      v63 = v18;
      type metadata accessor for MAGUtilities();
      v64 = swift_getObjCClassFromMetadata();
      v65 = [objc_opt_self() bundleForClass_];
      v66 = sub_257ECF4C0();
      v67 = sub_257ECF4C0();
      v68 = [v65 localizedStringForKey:v66 value:0 table:v67];

      if (!v68)
      {
        sub_257ECF500();
        v68 = sub_257ECF4C0();
      }

      [v62 setText_];

      v18 = v63;
    }

    v69 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v69 setTag_];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v70 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    swift_beginAccess();
    v71 = *(v70 + 8);
    v72 = *(v70 + 16);
    v88[0] = *v70;
    v88[1] = v71;
    LOBYTE(v88[2]) = v72;
    v73 = qword_2815447E0;

    if (v73 != -1)
    {
      v74 = swift_once();
    }

    MEMORY[0x28223BE20](v74, v75, v76, v77, v78);
    *(&v87 - 2) = v88;
    sub_257ECFD50();

    [v69 setOn_];
    [v69 addTarget:v18 action:sel_toggleSeatOccupancySwitch_ forControlEvents:4096];
    [v17 setAccessoryView_];
    [v17 setAccessoryType_];

    return v17;
  }

  v21 = [v17 textLabel];
  if (v21)
  {
    v22 = v21;
    [v21 setLineBreakMode_];
  }

  v23 = [v17 textLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setNumberOfLines_];
  }

  v25 = &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity];
  memcpy(v89, &v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity], 0x128uLL);
  if (sub_257C108C4(v89) == 1)
  {
    return v17;
  }

  v26 = *(v25 + 15);
  v27 = *&v18[OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_availableDetectionFeedbacks];

  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v27 + 16))
  {
    v29 = *(v27 + result + 32);
    v30 = [v17 textLabel];
    if (v30)
    {
      v31 = v30;
      sub_257BCC4FC(v29);
      v32 = sub_257ECF4C0();

      [v31 setText_];
    }

    v33 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v34 = sub_257C592D0(v29, v26);

    [v33 setOn_];
    v35 = v33;
    [v35 setTag_];
    [v35 addTarget:v18 action:sel_toggleFeedbackSwitch_ forControlEvents:4096];
    [v17 setAccessoryView_];

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_257C0FC04(uint64_t a1, double a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257CE2594(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_257C0FEE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257C10A30(a4, a5);
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

void sub_257C0FF3C(void *a1)
{
  v2 = v1;
  sub_257C0E3F8();
  if (a1)
  {
    v4 = sub_257BBD7B8([a1 tag]);
    if (v4 != 4)
    {
      v5 = v4;
      v6 = v1 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(__dst) != 1)
      {
        v7 = *(v6 + 120);

        if ([a1 isOn])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D00, &unk_257ED8200);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_257ED6D30;
          *(inited + 32) = v5;
          sub_257EB04EC(inited);
          sub_257C10114(v7);
        }

        else
        {
          v9 = *(v7 + 16);
          if (v9)
          {
            v10 = (v7 + 32);
            v11 = MEMORY[0x277D84F90];
            do
            {
              v15 = *v10++;
              v14 = v15;
              if (v15 != v5)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_257BF25C4(0, *(v11 + 16) + 1, 1);
                }

                v13 = *(v11 + 16);
                v12 = *(v11 + 24);
                if (v13 >= v12 >> 1)
                {
                  sub_257BF25C4((v12 > 1), v13 + 1, 1);
                }

                *(v11 + 16) = v13 + 1;
                *(v11 + v13 + 32) = v14;
              }

              --v9;
            }

            while (v9);
          }

          else
          {
            v11 = MEMORY[0x277D84F90];
          }

          sub_257C10114(v11);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_257C10114(uint64_t a1)
{
  sub_257C0E3F8();
  v7 = a1;

  sub_257D6D164(&v7);
  v3 = v7;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C() & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  else
  {
    sub_257CE2A58(v3, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_257C10290(char *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      v7 = a3;
      v8 = a1;
      a4([v7 isOn]);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257C10344(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECCEB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C0E3F8();
  v19 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v19 animated:1];

  v20 = sub_257ECCE30();
  v37 = [a1 cellForRowAtIndexPath_];

  if (!v37)
  {
    return;
  }

  v21 = sub_257ECCE60();
  if (v21)
  {
    if (v21 != 1)
    {
      goto LABEL_23;
    }

    v35 = 1;
  }

  else
  {
    v35 = 0;
  }

  v22 = sub_257ECCEA0();
  if (v22 < 5)
  {
    v23 = v22;
    v24 = v2 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity;
    memcpy(v39, (v2 + OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(v39) != 1 && v35 != *(v24 + 78) && ((2u >> v23) & 1) != 0)
    {
      v33 = OBJC_IVAR____TtC16MagnifierSupport54ActivityObjectUnderstandingCustomizationViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_257CE1DFC(v35);
        swift_unknownObjectRelease();
      }

      v34 = (v12 + 8);
      MEMORY[0x259C6F970](byte_286903FD8, 1);
      v25 = sub_257ECCE30();
      v26 = [a1 cellForRowAtIndexPath_];

      if (v26)
      {
        [v26 setAccessoryType_];
      }

      v27 = *v34;
      (*v34)(v18, v11);
      MEMORY[0x259C6F970](byte_286903FD9, 1);
      v28 = sub_257ECCE30();
      v29 = [a1 cellForRowAtIndexPath_];

      if (v29)
      {
        [v29 setAccessoryType_];
      }

      v27(v18, v11);
      [v37 setAccessoryType_];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = 2.0;
        if (v35)
        {
          v30 = 6.0;
        }

        sub_257CE2594(v30);
        swift_unknownObjectRelease();
      }

      [a1 beginUpdates];
      v38 = &unk_286903FE0;
      sub_257C108DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
      sub_257C10934();
      sub_257ED0180();
      v31 = sub_257ECCDE0();
      (*(v36 + 8))(v10, v4);
      [a1 reloadSections:v31 withRowAnimation:100];

      [a1 endUpdates];
    }

    return;
  }

LABEL_23:
  v32 = v37;
}

uint64_t sub_257C108C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_257C108DC()
{
  result = qword_27F8F58A0;
  if (!qword_27F8F58A0)
  {
    sub_257ECCDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F58A0);
  }

  return result;
}

unint64_t sub_257C10934()
{
  result = qword_27F8F58B0;
  if (!qword_27F8F58B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4D80, &qword_257EDD430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F58B0);
  }

  return result;
}

double sub_257C10998(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_257C109C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F68B0, &unk_257EE22E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257C10A30(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

UISceneConfiguration __swiftcall MagnifierApplicationDelegate.application(_:configurationForConnecting:options:)(UIApplication *_, UISceneSession configurationForConnecting, UISceneConnectionOptions options)
{
  v3 = [(objc_class *)configurationForConnecting.super.isa configuration];

  return v3;
}

uint64_t sub_257C10AFC()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D80, &qword_257EDBB68);
  v0[10] = v2;
  v0[11] = *(v2 - 8);
  v0[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D88, &unk_257EDBB70);
  v0[13] = v3;
  v0[14] = *(v3 - 8);
  v0[15] = swift_task_alloc();
  v0[16] = sub_257ECF900();
  v0[17] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();
  v0[18] = v5;
  v0[19] = v4;

  return MEMORY[0x2822009F8](sub_257C10CD8, v5, v4);
}

uint64_t sub_257C10CD8()
{
  v1 = v0[12];
  type metadata accessor for MAGThermalMonitor();
  static MAGThermalMonitor.thermalEvents()(v1);
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  sub_257ECF970();
  (*(v3 + 8))(v2, v4);
  v5 = sub_257ECF8F0();
  v0[20] = v5;
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_257C10F64;
  v7 = v0[13];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 22, v5, v8, v7);
}

uint64_t sub_257C10F64()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_257C110A8, v3, v2);
}

uint64_t sub_257C110A8(__n128 a1)
{
  if (*(v1 + 180) >> 1 <= 0x7EuLL)
  {
    v4 = *(v1 + 176) | (*(v1 + 180) << 32);
    if (((*(v1 + 180) << 32) & 0x8000000000) != 0)
    {
      sub_257ECD370();
      v11 = sub_257ECDA20();
      v12 = sub_257ECFC00();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *(v1 + 32) = v14;
        *v13 = 136315138;
        if ((v4 & 0x100000000) != 0)
        {
          v25 = 0xE700000000000000;
          v26 = 0x6C616E696D6F4ELL;
          v27 = 0xE500000000000000;
          v28 = 0x7976616548;
          v29 = 0x676E697070617254;
          if (v4 != 4)
          {
            v29 = 0x676E697065656C53;
          }

          if (v4 != 3)
          {
            v28 = v29;
            v27 = 0xE800000000000000;
          }

          v30 = 0xE500000000000000;
          v31 = 0x746867694CLL;
          if (v4 != 1)
          {
            v31 = 0x6574617265646F4DLL;
            v30 = 0xE800000000000000;
          }

          if (v4)
          {
            v26 = v31;
            v25 = v30;
          }

          if (v4 <= 2)
          {
            v16 = v26;
          }

          else
          {
            v16 = v28;
          }

          if (v4 <= 2)
          {
            v17 = v25;
          }

          else
          {
            v17 = v27;
          }
        }

        else
        {
          *(v1 + 16) = 0x206E776F6E6B6E55;
          *(v1 + 24) = 0xE900000000000028;
          *(v1 + 184) = v4;
          v15 = sub_257ED0600();
          MEMORY[0x259C72150](v15);

          MEMORY[0x259C72150](41, 0xE100000000000000);
          v16 = *(v1 + 16);
          v17 = *(v1 + 24);
        }

        v36 = *(v1 + 64);
        v33 = *(v1 + 40);
        v32 = *(v1 + 48);
        v34 = sub_257BF1FC8(v16, v17, (v1 + 32));

        *(v13 + 4) = v34;
        _os_log_impl(&dword_257BAC000, v11, v12, "Thermal pressure: %s", v13, 0xCu);
        v35 = __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x259C74820](v14, -1, -1, v35);
        MEMORY[0x259C74820](v13, -1, -1);

        (*(v32 + 8))(v36, v33);
      }

      else
      {
        v18 = *(v1 + 64);
        v19 = *(v1 + 40);
        v20 = *(v1 + 48);

        (*(v20 + 8))(v18, v19);
      }
    }

    else
    {
      sub_257ECD370();
      v5 = sub_257ECDA20();
      v6 = sub_257ECFC00();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 67109120;
        *(v7 + 4) = v4;
        _os_log_impl(&dword_257BAC000, v5, v6, "Thermal level: %d", v7, 8u);
        MEMORY[0x259C74820](v7, -1, -1);
      }

      v8 = *(v1 + 72);
      v9 = *(v1 + 40);
      v10 = *(v1 + 48);

      (*(v10 + 8))(v8, v9);
    }

    v21 = sub_257ECF8F0();
    *(v1 + 160) = v21;
    v22 = swift_task_alloc();
    *(v1 + 168) = v22;
    *v22 = v1;
    v22[1] = sub_257C10F64;
    v23 = *(v1 + 104);
    v24 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v1 + 176, v21, v24, v23);
  }

  else
  {
    (*(*(v1 + 112) + 8))(*(v1 + 120), *(v1 + 104), a1);

    v2 = *(v1 + 8);

    return v2();
  }
}

UIInterfaceOrientationMask __swiftcall MagnifierApplicationDelegate.application(_:supportedInterfaceOrientationsFor:)(UIApplication *_, UIWindow_optional *supportedInterfaceOrientationsFor)
{
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89)
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

id MagnifierApplicationDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MagnifierApplicationDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MagnifierApplicationDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s16MagnifierSupport0A19ApplicationDelegateC11application_29didFinishLaunchingWithOptionsSbSo13UIApplicationC_SDySo0k6LaunchJ3KeyaypGSgtF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v17[-v5];
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 arguments];

  v9 = sub_257ECF810();
  v19[0] = 0xD000000000000017;
  v19[1] = 0x8000000257EF9BC0;
  v18 = v19;
  LOBYTE(v8) = sub_257DF8ED4(sub_257C119FC, v17, v9);

  if (v8)
  {
    [objc_opt_self() setAnimationsEnabled_];
  }

  sub_257C11A1C();
  v10 = [swift_getObjCClassFromMetadata() appearance];
  v11 = [objc_opt_self() systemYellowColor];
  [v10 setTintColor_];

  v12 = sub_257ECF930();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_257ECF900();
  v13 = sub_257ECF8F0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  sub_257C3FBD4(0, 0, v6, &unk_257EDBB60, v14);

  return 1;
}

unint64_t sub_257C119A4()
{
  result = qword_27F8F5018;
  if (!qword_27F8F5018)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5018);
  }

  return result;
}

unint64_t sub_257C11A1C()
{
  result = qword_281543F68;
  if (!qword_281543F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543F68);
  }

  return result;
}

uint64_t sub_257C11A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257C10AFC();
}

uint64_t sub_257C11B14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5490, &unk_257EDC470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_257C11C80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_257ECD9C0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_257ECD9B0();
}

uint64_t sub_257C11D1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_257ECD9C0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t getEnumTagSinglePayload for DocumentFilter(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DocumentFilter(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257C12060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_257C120A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_257C12124@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DE0, &qword_257EDBC70);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DE8, &qword_257EDBC78);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v70 = &v68 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DF0, &qword_257EDBC80) - 8;
  MEMORY[0x28223BE20](v72, v18, v19, v20, v21);
  v73 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v68 - v28;
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v71 = &v68 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DF8, &qword_257EDBC88);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_257EDBBA0;
  sub_257D42694();
  v37 = sub_257ECEDA0();

  *(v36 + 32) = v37;
  sub_257D42694();
  v38 = sub_257ECEDA0();

  *(v36 + 40) = v38;
  *(v36 + 48) = sub_257D42694();
  sub_257ECF0D0();
  sub_257ECF0E0();
  MEMORY[0x259C71AE0](v36);
  sub_257ECE140();
  sub_257ECF060();
  sub_257ECE080();
  LOBYTE(v37) = sub_257ECE930();
  sub_257ECDF40();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  LOBYTE(v84[0]) = 0;
  *v10 = sub_257ECE500();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E00, &qword_257EDBC90);
  sub_257C12658(v69, &v10[*(v47 + 44)]);
  v48 = sub_257ECE930();
  v49 = &v10[*(v4 + 44)];
  *v49 = v48;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  v49[40] = 1;
  sub_257ECF060();
  sub_257ECE2F0();
  v50 = v70;
  sub_257C0DD14(v10, v70, &qword_27F8F5DE0, &qword_257EDBC70);
  v51 = (v50 + *(v12 + 44));
  v52 = v105;
  v51[4] = v104;
  v51[5] = v52;
  v51[6] = v106;
  v53 = v101;
  *v51 = v100;
  v51[1] = v53;
  v54 = v103;
  v51[2] = v102;
  v51[3] = v54;
  v55 = sub_257D42694();
  LOBYTE(v12) = sub_257ECE930();
  sub_257C0DD14(v50, v29, &qword_27F8F5DE8, &qword_257EDBC78);
  v56 = v71;
  v57 = &v29[*(v72 + 44)];
  *v57 = v55;
  v57[8] = v12;
  sub_257C0DD14(v29, v56, &qword_27F8F5DF0, &qword_257EDBC80);
  v58 = v73;
  sub_257BE401C(v56, v73, &qword_27F8F5DF0, &qword_257EDBC80);
  v76 = v96;
  v77 = v97;
  v78 = v98;
  v74 = v94;
  v75 = v95;
  *&v79 = v99;
  *(&v79 + 1) = 0x4034000000000000;
  LOBYTE(v80) = 0;
  BYTE8(v80) = v37;
  *&v81 = v40;
  *(&v81 + 1) = v42;
  *&v82 = v44;
  *(&v82 + 1) = v46;
  v83 = 0;
  v60 = v80;
  v59 = v81;
  v61 = v82;
  *(a2 + 144) = 0;
  *(a2 + 112) = v59;
  *(a2 + 128) = v61;
  v62 = v75;
  *a2 = v74;
  *(a2 + 16) = v62;
  v63 = v76;
  v64 = v77;
  v65 = v78;
  *(a2 + 80) = v79;
  *(a2 + 96) = v60;
  *(a2 + 48) = v64;
  *(a2 + 64) = v65;
  *(a2 + 32) = v63;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E08, &qword_257EDBC98);
  sub_257BE401C(v58, a2 + *(v66 + 48), &qword_27F8F5DF0, &qword_257EDBC80);
  sub_257BE401C(&v74, v84, &qword_27F8F5E10, &qword_257EDBCA0);
  sub_257BE4084(v56, &qword_27F8F5DF0, &qword_257EDBC80);
  sub_257BE4084(v58, &qword_27F8F5DF0, &qword_257EDBC80);
  v84[2] = v96;
  v84[3] = v97;
  v84[4] = v98;
  v84[0] = v94;
  v84[1] = v95;
  v85 = v99;
  v86 = 0x4034000000000000;
  v87 = 0;
  v88 = v37;
  v89 = v40;
  v90 = v42;
  v91 = v44;
  v92 = v46;
  v93 = 0;
  return sub_257BE4084(v84, &qword_27F8F5E10, &qword_257EDBCA0);
}

uint64_t sub_257C12658@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E18, &qword_257EDBCA8);
  MEMORY[0x28223BE20](v112, v3, v4, v5, v6);
  v114 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v110 = &v103 - v13;
  v14 = a1[1];
  v232 = *a1;
  v233[0] = v14;
  v15 = *(&v14 + 1);
  v16 = *(&v232 + 1);
  sub_257ECC3F0();
  sub_257ECC3F0();
  KeyPath = swift_getKeyPath();
  sub_257BE401C(v233, &v208, &qword_27F8F5E20, &qword_257EDBCE0);
  sub_257BE401C(&v232, &v208, &qword_27F8F5E28, &qword_257EDBCE8);
  sub_257BE401C(v233, &v208, &qword_27F8F5E20, &qword_257EDBCE0);
  sub_257BE401C(&v232, &v208, &qword_27F8F5E28, &qword_257EDBCE8);
  sub_257BE401C(v233, &v208, &qword_27F8F5E20, &qword_257EDBCE0);
  sub_257BE401C(&v232, &v208, &qword_27F8F5E28, &qword_257EDBCE8);
  sub_257BE401C(v233, &v208, &qword_27F8F5E20, &qword_257EDBCE0);
  v17 = v16;
  sub_257BE401C(&v232, &v208, &qword_27F8F5E28, &qword_257EDBCE8);
  v18 = type metadata accessor for MFReaderSpeechFormatterModel(0);
  v19 = sub_257C13394(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel, &unk_257EE5120);
  v118 = sub_257ECE150();
  v150 = v20;
  v21 = type metadata accessor for MFReaderTextFormatterModel(0);
  v151 = sub_257C13394(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  v22 = sub_257ECE150();
  v148 = v23;
  v149 = v22;
  type metadata accessor for MFReaderBlockManager(0);
  sub_257C13394(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
  v24 = sub_257ECE330();
  v146 = v25;
  v147 = v24;
  v115 = a1;
  v26 = *(a1 + 4);
  if (v26)
  {
    v228 = 0;
    v113 = v26;
    v153 = v26;
    v145 = sub_257ECDCE0();
    v143 = v228;
    v144 = sub_257ECE960();
    sub_257ECDF40();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v230 = 0;
    LOBYTE(v154) = 0;
    sub_257ECEE50();
    v141 = v208;
    v142 = v209;
    v35 = sub_257ECE150();
    v139 = v36;
    v140 = v35;
    v37 = sub_257ECE150();
    v137 = v38;
    v138 = v37;
    v39 = sub_257ECE330();
    v135 = v40;
    v136 = v39;
    swift_getKeyPath();
    swift_getKeyPath();
    v152 = v17;
    sub_257ECDD60();

    v41 = v208 < 1;
    v134 = swift_getKeyPath();
    v133 = swift_allocObject();
    *(v133 + 16) = v41;
    v132 = sub_257ECDCE0();
    v42 = sub_257ECE150();
    v130 = v43;
    v131 = v42;
    v44 = sub_257ECE150();
    v128 = v45;
    v129 = v44;
    v46 = sub_257ECE330();
    v126 = v47;
    v127 = v46;
    v125 = sub_257ECDCE0();
    LOBYTE(v154) = 1;
    sub_257ECEE50();
    v122 = v208;
    v123 = v209;
    v111 = v15;
    v106 = v19;
    v107 = v18;
    v121 = sub_257ECE150();
    v109 = v48;
    v105 = v21;
    v49 = sub_257ECE150();
    v108 = v50;
    v51 = sub_257ECE330();
    v119 = v52;
    v120 = v51;
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v153;
    sub_257ECDD60();

    v54 = v208;
    v55 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v56 = *&v53[v55];

    if (v56 >> 62)
    {
      v57 = sub_257ED0210();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFSUB__(v57, 1))
    {
      v153 = swift_getKeyPath();
      v117 = swift_allocObject();
      *(v117 + 16) = v54 >= v57 - 1;
      v116 = sub_257ECDCE0();
      v154 = *(v115 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
      sub_257ECEE80();
      v58 = v208;
      v59 = v209;
      v60 = v210;
      v61 = swift_getKeyPath();
      v62 = type metadata accessor for MFReaderTextFormatterView(0);
      v63 = v62[8];
      v115 = v49;
      v64 = v110;
      *&v110[v63] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
      swift_storeEnumTagMultiPayload();
      *v64 = sub_257ECE150();
      *(v64 + 8) = v65;
      *(v64 + 16) = sub_257ECE150();
      *(v64 + 24) = v66;
      *(v64 + 32) = v58;
      *(v64 + 40) = v59;
      *(v64 + 48) = v60;
      *(v64 + 56) = sub_257ECE330();
      *(v64 + 64) = v67;
      v68 = v64 + v62[9];
      LOBYTE(v154) = 0;
      sub_257ECEE50();
      v69 = v209;
      *v68 = v208;
      *(v68 + 8) = v69;
      v70 = v64 + v62[10];
      LOBYTE(v154) = 0;
      sub_257ECEE50();
      v71 = v209;
      *v70 = v208;
      *(v70 + 8) = v71;
      v72 = sub_257ECDCE0();
      v73 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E40, &qword_257EDBDA8) + 36));
      v74 = v113;
      *v73 = v72;
      v73[1] = v74;
      LOBYTE(v72) = sub_257ECE980();
      sub_257ECDF40();
      v75 = v64 + *(v112 + 36);
      *v75 = v72;
      *(v75 + 8) = v76;
      *(v75 + 16) = v77;
      *(v75 + 24) = v78;
      *(v75 + 32) = v79;
      *(v75 + 40) = 0;
      v80 = v114;
      sub_257BE401C(v64, v114, &qword_27F8F5E18, &qword_257EDBCA8);
      *&v154 = v118;
      *(&v154 + 1) = v150;
      *&v155 = v149;
      *(&v155 + 1) = v148;
      *&v156 = v147;
      *(&v156 + 1) = v146;
      *&v157 = KeyPath;
      BYTE8(v157) = v143;
      HIDWORD(v157) = *&v229[3];
      *(&v157 + 9) = *v229;
      *&v158 = v145;
      *(&v158 + 1) = v74;
      LOBYTE(v159) = v144;
      DWORD1(v159) = *&v231[3];
      *(&v159 + 1) = *v231;
      *(&v159 + 1) = v28;
      *&v160[0] = v30;
      *(&v160[0] + 1) = v32;
      *&v160[1] = v34;
      BYTE8(v160[1]) = 0;
      v81 = v154;
      v82 = v155;
      v83 = v157;
      v84 = v104;
      *(v104 + 32) = v156;
      *(v84 + 48) = v83;
      *v84 = v81;
      *(v84 + 16) = v82;
      v85 = v158;
      v86 = v159;
      v87 = v160[0];
      *(v84 + 105) = *(v160 + 9);
      *(v84 + 80) = v86;
      *(v84 + 96) = v87;
      *(v84 + 64) = v85;
      *(v84 + 128) = 0;
      *(v84 + 136) = 1;
      LOBYTE(v161) = v141;
      DWORD1(v161) = *&v227[3];
      *(&v161 + 1) = *v227;
      *(&v161 + 1) = v142;
      *&v162 = v140;
      *(&v162 + 1) = v139;
      *&v163 = v138;
      *(&v163 + 1) = v137;
      *&v164 = v136;
      *(&v164 + 1) = v135;
      *&v165 = v134;
      v152 = sub_257C133DC;
      *(&v165 + 1) = sub_257C133DC;
      *&v166 = v133;
      *(&v166 + 1) = v132;
      v167 = v74;
      v88 = v162;
      *(v84 + 144) = v161;
      *(v84 + 160) = v88;
      v89 = v163;
      v90 = v164;
      v91 = v166;
      *(v84 + 208) = v165;
      *(v84 + 224) = v91;
      *(v84 + 176) = v89;
      *(v84 + 192) = v90;
      *(v84 + 240) = v74;
      *(v84 + 248) = 0;
      *(v84 + 256) = 1;
      *&v168 = v131;
      *(&v168 + 1) = v130;
      *&v169 = v129;
      *(&v169 + 1) = v128;
      *&v170 = v127;
      *(&v170 + 1) = v126;
      *&v171 = v125;
      *(&v171 + 1) = v74;
      v92 = v168;
      v93 = v169;
      v94 = v171;
      *(v84 + 296) = v170;
      *(v84 + 312) = v94;
      *(v84 + 264) = v92;
      *(v84 + 280) = v93;
      *(v84 + 328) = 0;
      *(v84 + 336) = 1;
      LOBYTE(v172) = v122;
      DWORD1(v172) = *&v226[3];
      *(&v172 + 1) = *v226;
      *(&v172 + 1) = v123;
      *&v173 = v121;
      v96 = v108;
      v95 = v109;
      *(&v173 + 1) = v109;
      *&v174 = v115;
      *(&v174 + 1) = v108;
      *&v175 = v120;
      *(&v175 + 1) = v119;
      *&v176 = v153;
      *(&v176 + 1) = sub_257C13448;
      *&v177 = v117;
      *(&v177 + 1) = v116;
      v97 = v173;
      *(v84 + 344) = v172;
      *(v84 + 360) = v97;
      v98 = v174;
      v99 = v175;
      v100 = v177;
      *(v84 + 408) = v176;
      *(v84 + 424) = v100;
      *(v84 + 376) = v98;
      *(v84 + 392) = v99;
      *(v84 + 456) = 1;
      v178 = v74;
      *(v84 + 440) = v74;
      *(v84 + 448) = 0;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E48, &qword_257EDBDB0);
      sub_257BE401C(v80, v84 + *(v101 + 160), &qword_27F8F5E18, &qword_257EDBCA8);
      sub_257BE401C(&v154, &v208, &qword_27F8F5E50, &qword_257EDBDB8);
      sub_257BE401C(&v161, &v208, &qword_27F8F5E58, &qword_257EDBDC0);
      sub_257BE401C(&v168, &v208, &qword_27F8F5E60, &qword_257EDBDC8);
      sub_257BE401C(&v172, &v208, &qword_27F8F5E58, &qword_257EDBDC0);
      sub_257BE4084(v64, &qword_27F8F5E18, &qword_257EDBCA8);
      sub_257BE4084(v80, &qword_27F8F5E18, &qword_257EDBCA8);
      v179 = v122;
      *v180 = *v226;
      *&v180[3] = *&v226[3];
      v181 = v123;
      v182 = v121;
      v183 = v95;
      v184 = v115;
      v185 = v96;
      v186 = v120;
      v187 = v119;
      v188 = v153;
      v189 = sub_257C13448;
      v190 = v117;
      v191 = v116;
      v192 = v74;
      sub_257BE4084(&v179, &qword_27F8F5E58, &qword_257EDBDC0);
      v193[0] = v131;
      v193[1] = v130;
      v193[2] = v129;
      v193[3] = v128;
      v193[4] = v127;
      v193[5] = v126;
      v193[6] = v125;
      v193[7] = v74;
      sub_257BE4084(v193, &qword_27F8F5E60, &qword_257EDBDC8);
      v194 = v141;
      *v195 = *v227;
      *&v195[3] = *&v227[3];
      v196 = v142;
      v197 = v140;
      v198 = v139;
      v199 = v138;
      v200 = v137;
      v201 = v136;
      v202 = v135;
      v203 = v134;
      v204 = v152;
      v205 = v133;
      v206 = v132;
      v207 = v74;
      sub_257BE4084(&v194, &qword_27F8F5E58, &qword_257EDBDC0);
      v208 = v118;
      v209 = v150;
      v210 = v149;
      v211 = v148;
      v212 = v147;
      v213 = v146;
      v214 = KeyPath;
      v215 = v143;
      *v216 = *v229;
      *&v216[3] = *&v229[3];
      v217 = v145;
      v218 = v74;
      v219 = v144;
      *v220 = *v231;
      *&v220[3] = *&v231[3];
      v221 = v28;
      v222 = v30;
      v223 = v32;
      v224 = v34;
      v225 = 0;
      return sub_257BE4084(&v208, &qword_27F8F5E50, &qword_257EDBDB8);
    }

    __break(1u);
  }

  result = sub_257ECE320();
  __break(1u);
  return result;
}

uint64_t sub_257C13328@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[1];
  v15[0] = *v9;
  v15[1] = v11;
  v12 = v9[3];
  v15[2] = v9[2];
  v15[3] = v12;
  *a9 = sub_257ECE5B0();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5DD8, &qword_257EDBC68);
  return sub_257C12124(v15, a9 + *(v13 + 44));
}

uint64_t sub_257C13394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257C133E4()
{
  result = qword_27F8F5E68;
  if (!qword_27F8F5E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5E70, &qword_257EDBDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5E68);
  }

  return result;
}

uint64_t sub_257C1344C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  *&v7 = MEMORY[0x28223BE20](v1, v3, v4, v5, v6).n128_u64[0];
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v10)
  {
    v11 = [v10 scene];
    if (v11)
    {
      v12 = v11;
      sub_257C416F0(v11);
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v35 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_257ECF4C0();
    v16 = sub_257ECF4C0();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    v18 = v17;
    if (!v17)
    {
      sub_257ECF500();
      v18 = sub_257ECF4C0();
    }

    v35 = sub_257ECF500();
    v36 = v19;
    sub_257BDAB08();
    v20 = sub_257ED0100();
    v22 = v21;

    v23 = sub_257E003E8();
    v24 = sub_257DFF054();
    v25 = sub_257EB1BE0();

    sub_257DFD370(v20, v22, v23, v25);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    sub_257D1A130();
  }

  v26 = qword_281548350 + 64;
  swift_beginAccess();
  v34 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v27 = sub_257ECF110();
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  *&v33[-16] = &v34;
  *&v33[-8] = v26;
  sub_257ECFD40();
  (*(v2 + 8))(v9, v1);
  return swift_endAccess();
}

id sub_257C13834()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257DFF054();
  result = [v16 view];
  if (result)
  {
    v18 = result;
    [result alpha];
    v20 = v19;

    if (v20 == 0.0)
    {
      v35[1] = v2;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v23 = sub_257ECF4C0();
      v24 = sub_257ECF4C0();
      v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

      v26 = v25;
      if (!v25)
      {
        sub_257ECF500();
        v26 = sub_257ECF4C0();
      }

      v36 = sub_257ECF500();
      v37 = v27;
      sub_257BDAB08();
      v28 = sub_257ED0100();
      v30 = v29;

      v31 = sub_257E003E8();
      v32 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
      v33 = sub_257EB1BE0();

      sub_257DFD370(v28, v30, v31, v33);

      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v8, &v15[v9[5]]);
    v15[v9[6]] = 1;
    v15[v9[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v34 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
    *&v15[v9[8]] = v34;
    sub_257CBBC80(v15);
    sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v36 == 1)
    {
      sub_257D1A130();
    }

    return sub_257C41F04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_257C13C38(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  *&v9 = MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8).n128_u64[0];
  v11 = &v27 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService);
  v13 = *&v12[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession];
  if (v13)
  {
    [v13 updateWithFrame_];
  }

  v14 = sub_257ECF930();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = [a2 camera];
  [v15 transform];
  v29 = v17;
  v30 = v16;
  v27 = v19;
  v28 = v18;

  sub_257ECF900();
  v20 = v12;
  v21 = sub_257ECF8F0();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = v20;
  v24 = v29;
  *(v22 + 48) = v30;
  *(v22 + 64) = v24;
  v25 = v27;
  *(v22 + 80) = v28;
  *(v22 + 96) = v25;
  sub_257C3FBD4(0, 0, v11, &unk_257EDBE30, v22);

  return result;
}

uint64_t sub_257C13DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_257ECDA30();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C13E98, 0, 0);
}

uint64_t sub_257C13E98()
{
  *(v0 + 144) = sub_257ECF900();
  *(v0 + 152) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C13F30, v2, v1);
}

uint64_t sub_257C13F30()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView);
  *(v0 + 160) = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_257C13FB8, 0, 0);
}

uint64_t sub_257C13FB8(uint64_t a1)
{
  if (v1[20])
  {
    v1[21] = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService;
    v1[22] = sub_257ECF8F0();
    v3 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C14094, v3, v2);
  }

  else
  {

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_257C14094()
{
  v1 = v0[21];
  v2 = v0[14];

  v0[23] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_257C14108, 0, 0);
}

uint64_t sub_257C14108()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = [v3 currentFrame], (*(v0 + 192) = v4) != 0))
  {
    *(v0 + 200) = sub_257ECF8F0();
    v6 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C1421C, v6, v5);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_257C1421C()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  *(v0 + 208) = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_257C142A4, 0, 0);
}

uint64_t sub_257C142A4(uint64_t a1)
{
  if (*(v1 + 208))
  {
    *(v1 + 216) = sub_257ECF8F0();
    v3 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C14380, v3, v2);
  }

  else
  {
    v4 = *(v1 + 160);

    v5 = *(v1 + 8);

    return v5();
  }
}

uint64_t sub_257C14380()
{
  v1 = *(v0 + 208);

  *(v0 + 224) = [v1 pointOfView];

  return MEMORY[0x2822009F8](sub_257C14408, 0, 0);
}

uint64_t sub_257C14408()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    [*(v0 + 224) simdPosition];
    *(v0 + 24) = v2;
    *(v0 + 16) = v3;

    *(v0 + 232) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService;
    *(v0 + 240) = sub_257ECF8F0();
    v5 = sub_257ECF8B0();

    return MEMORY[0x2822009F8](sub_257C14514, v5, v4);
  }

  else
  {
    v6 = *(v0 + 160);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_257C14514()
{
  v1 = v0[29];
  v2 = v0[14];

  v0[31] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_257C14588, 0, 0);
}

uint64_t sub_257C14588(uint64_t a1)
{
  v2 = *(v1 + 248) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject;
  if (*v2)
  {
    v17 = *(v2 + 16);
    v16 = *(v2 + 32);
    v15 = *(v2 + 48);
    v14 = *(v2 + 64);
    v3 = *v2;
    [v3 transform];
    v13 = v4;

    v5 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v13.f32[0]), v16, *v13.f32, 1), v15, v13, 2), v14, v13, 3);
    *(v1 + 32) = v5;
    v5.i32[3] = 0;
    *(v1 + 48) = v5;
    *(v1 + 256) = sub_257ECF8F0();
    v6 = sub_257ECF8B0();
    v8 = v7;
    v9 = sub_257C14708;
  }

  else
  {
    v10 = *(MEMORY[0x277CBF398] + 16);
    *(v1 + 368) = *MEMORY[0x277CBF398];
    *(v1 + 384) = v10;
    *(v1 + 400) = sub_257ECF8F0();
    v6 = sub_257ECF8B0();
    v8 = v11;
    v9 = sub_257C1517C;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_257C14708()
{

  return MEMORY[0x2822009F8](sub_257C14770, 0, 0);
}

uint64_t sub_257C14770()
{
  v1 = *(*(v0 + 248) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
  if (v1 && (v2 = [v1 rootNode]) != 0 && (v3 = v2, v15 = *(v0 + 48), v4 = *(v0 + 248), v5 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode, swift_beginAccess(), v6 = *(v4 + v5), objc_msgSend(v3, sel_simdConvertPosition_toNode_, v6, *&v15), DWORD2(v15) = v7, v3, v6, *(&v15 + 2) < 0.0))
  {
    *(v0 + 264) = sub_257ECF8F0();
    v8 = sub_257ECF8B0();
    v10 = v9;
    v11 = sub_257C148F0;
  }

  else
  {
    v12 = *(MEMORY[0x277CBF398] + 16);
    *(v0 + 368) = *MEMORY[0x277CBF398];
    *(v0 + 384) = v12;
    *(v0 + 400) = sub_257ECF8F0();
    v8 = sub_257ECF8B0();
    v10 = v13;
    v11 = sub_257C1517C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_257C148F0()
{
  v1 = *(v0 + 112);

  *(v0 + 272) = [v1 view];

  return MEMORY[0x2822009F8](sub_257C14978, 0, 0);
}

uint64_t sub_257C14978(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 272))
  {
    *(v3 + 280) = sub_257ECF8F0();
    v4 = sub_257ECF8B0();
    v6 = v5;
    a1 = sub_257C14A10;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C14A10()
{
  v1 = *(v0 + 272);

  v2 = [v1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 288) = v5;

  return MEMORY[0x2822009F8](sub_257C14AE4, 0, 0);
}

uint64_t sub_257C14AE4()
{
  v1 = *(v0 + 192);
  IsLandscape = UIInterfaceOrientationIsLandscape(*(v0 + 288));
  v3 = [v1 capturedImage];
  v4 = v3;
  if (IsLandscape)
  {
    Width = CVPixelBufferGetWidth(v3);
  }

  else
  {
    Width = CVPixelBufferGetHeight(v3);
  }

  v6 = Width;
  *(v0 + 296) = Width;
  v7 = *(v0 + 288);
  v8 = *(v0 + 192);

  LODWORD(v7) = UIInterfaceOrientationIsLandscape(v7);
  v9 = [v8 capturedImage];
  v10 = v9;
  if (v7)
  {
    Height = CVPixelBufferGetHeight(v9);
  }

  else
  {
    Height = CVPixelBufferGetWidth(v9);
  }

  v12 = Height;
  *(v0 + 304) = Height;
  v13 = *(v0 + 288);
  v24 = *(v0 + 48);
  v14 = *(v0 + 192);

  v15 = v6;
  v16 = [v14 camera];
  [v16 projectPoint:v13 orientation:*&v24 viewportSize:{v15, v12}];
  v18 = v17;
  v20 = v19;

  *(v0 + 312) = v18;
  *(v0 + 320) = v20;
  *(v0 + 328) = sub_257ECF8F0();
  v22 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C14C80, v22, v21);
}

uint64_t sub_257C14C80()
{
  v1 = *(v0 + 112);

  *(v0 + 336) = [v1 view];

  return MEMORY[0x2822009F8](sub_257C14D08, 0, 0);
}

uint64_t sub_257C14D08(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 336))
  {
    *(v3 + 344) = sub_257ECF8F0();
    v4 = sub_257ECF8B0();
    v6 = v5;
    a1 = sub_257C14DA0;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C14DA0()
{
  v1 = *(v0 + 336);

  v2 = [v1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 352) = v5;

  return MEMORY[0x2822009F8](sub_257C14E74, 0, 0);
}

uint64_t sub_257C14E74(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = vsubq_f32(v3[1], v3[2]);
  v6 = vmulq_f32(v5, v5);
  v6.f32[0] = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v3[27].i32[2] = v6.i32[0];
  v7 = v6.f32[0] * 1000.0;
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 2147500000.0)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3[22].i64[1] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v10 = v9;
  a1 = sub_257C14F6C;
  a2 = v8;
  a3 = v10;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C14F6C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);

  *(v0 + 444) = sub_257DE711C(v2, (v1 * 1000.0), v3 / v5, (v6 - v4) / v6, 0.001, 0.001) & 1;

  return MEMORY[0x2822009F8](sub_257C1503C, 0, 0);
}

uint64_t sub_257C1503C()
{
  if (*(v0 + 444) == 1)
  {
    v1 = *(v0 + 160);
  }

  else
  {
    sub_257ECD4A0();
    v2 = sub_257ECDA20();
    v3 = sub_257ECFBE0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 192);
    v6 = *(v0 + 160);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 120);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_257BAC000, v2, v3, "Unable to update OU interface", v10, 2u);
      MEMORY[0x259C74820](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_257C1517C()
{
  v1 = *(v0 + 112);

  *(v0 + 408) = [v1 view];

  return MEMORY[0x2822009F8](sub_257C15204, 0, 0);
}

uint64_t sub_257C15204(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 408))
  {
    *(v3 + 416) = sub_257ECF8F0();
    v4 = sub_257ECF8B0();
    v6 = v5;
    a1 = sub_257C1529C;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_257C1529C()
{
  v1 = *(v0 + 408);

  v2 = [v1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 424) = v5;

  return MEMORY[0x2822009F8](sub_257C15370, 0, 0);
}

uint64_t sub_257C15370(uint64_t a1)
{
  *(v1 + 432) = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C153FC, v3, v2);
}

uint64_t sub_257C153FC()
{
  v1 = *(v0 + 53);
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];

  sub_257DE711C(v1, 0, v5, v4, v3, v2);

  return MEMORY[0x2822009F8](sub_257C1549C, 0, 0);
}

uint64_t sub_257C1549C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_257C1550C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService);
  v4 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService);
  v5 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = [v6 currentFrame];
    if (v7)
    {
      v8 = v7;
      v9 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession);
      if (v9)
      {
        v10 = v9;

        if (a2 >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78, &qword_257EDBE38);
          sub_257ED0420();
        }

        else
        {
          sub_257ED0660();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78, &qword_257EDBE38);
        v11 = sub_257ECF7F0();

        [v10 updateWithKeyframes:v11 ouframe:v8];
      }
    }
  }
}

id sub_257C1566C()
{
  v1 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent(0);
  *&v13 = MEMORY[0x28223BE20](v8, v9, v10, v11, v12).n128_u64[0];
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    result = [result pointOfView];
    if (result)
    {
      v17 = result;
      [result simdPosition];
      v21 = v18;

      *v7 = 0u;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      v19 = v21;
      *(v7 + 4) = 0u;
      *(v7 + 5) = v19;
      *(v7 + 12) = 0;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      sub_257C15EC0(v7, &v15[v8[5]]);
      v15[v8[6]] = 1;
      v15[v8[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v20 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v7, type metadata accessor for MAGOutputEvent.EventType);
      *&v15[v8[8]] = v20;
      sub_257CBBC80(v15);
      return sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

id sub_257C15868(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    v20 = *a1;
    v21 = *(a1 + 16);
    v32 = *(a1 + 32);
    v33 = v21;
    v22 = *(a1 + 48);
    v30 = *(a1 + 64);
    v31 = v22;
    result = [result pointOfView];
    if (result)
    {
      v23 = result;
      [result simdPosition];
      v29 = v24;

      *v11 = v20;
      v25 = v32;
      *(v11 + 1) = v33;
      *(v11 + 2) = v25;
      v26 = v30;
      *(v11 + 3) = v31;
      *(v11 + 4) = v26;
      *(v11 + 5) = v29;
      *(v11 + 12) = a2;
      swift_storeEnumTagMultiPayload();
      v27 = v20;

      sub_257ECCCE0();
      sub_257C15EC0(v11, &v18[v12[5]]);
      v18[v12[6]] = 1;
      v18[v12[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v28 = qword_281548348;
      sub_257ECC3F0();

      sub_257C15F24(v11, type metadata accessor for MAGOutputEvent.EventType);
      *&v18[v12[8]] = v28;
      sub_257CBBC80(v18);
      return sub_257C15F24(v18, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

id sub_257C15AA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MAGOutputEvent(0);
  *&v17 = MEMORY[0x28223BE20](v12, v13, v14, v15, v16).n128_u64[0];
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    result = [result pointOfView];
    if (result)
    {
      v21 = result;
      [result simdPosition];
      v24 = v22;

      *v11 = a1;
      *(v11 + 1) = v24;
      *(v11 + 4) = a2;
      swift_storeEnumTagMultiPayload();

      sub_257ECCCE0();
      sub_257C15EC0(v11, &v19[v12[5]]);
      v19[v12[6]] = 1;
      v19[v12[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v23 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v11, type metadata accessor for MAGOutputEvent.EventType);
      *&v19[v12[8]] = v23;
      sub_257CBBC80(v19);
      return sub_257C15F24(v19, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

id sub_257C15CBC(uint64_t a1)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MAGOutputEvent(0);
  *&v15 = MEMORY[0x28223BE20](v10, v11, v12, v13, v14).n128_u64[0];
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (result)
  {
    result = [result pointOfView];
    if (result)
    {
      v19 = result;
      [result simdPosition];
      v22 = v20;

      *v9 = a1;
      *(v9 + 1) = v22;
      swift_storeEnumTagMultiPayload();

      sub_257ECCCE0();
      sub_257C15EC0(v9, &v17[v10[5]]);
      v17[v10[6]] = 1;
      v17[v10[7]] = 0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v21 = qword_281548348;
      sub_257ECC3F0();
      sub_257C15F24(v9, type metadata accessor for MAGOutputEvent.EventType);
      *&v17[v10[8]] = v21;
      sub_257CBBC80(v17);
      return sub_257C15F24(v17, type metadata accessor for MAGOutputEvent);
    }
  }

  return result;
}

uint64_t sub_257C15EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C15F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C15F84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v37 = &v35 - v8;
  v9 = sub_257ECF120();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_257ECF190();
  v17 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v18, v19, v20, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService] + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue);
  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  *(v25 + 24) = a1;
  aBlock[4] = sub_257C1630C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_7;
  v26 = _Block_copy(aBlock);
  v27 = v24;
  v28 = v1;
  v29 = a1;
  sub_257ECF150();
  v38 = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v23, v16, v26);
  _Block_release(v26);

  (*(v10 + 8))(v16, v9);
  (*(v17 + 8))(v23, v36);

  v30 = sub_257ECF930();
  v31 = v37;
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v28;
  v33 = v28;
  sub_257C40DD4(0, 0, v31, &unk_257EDBE28, v32);

  return sub_257C163E0(v31);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C1632C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257C13DD8(a1, v4, v5, v6);
}

uint64_t sub_257C163E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257C16448(uint64_t a1)
{
  v4 = v1[1].n128_i64[0];
  v5 = v1[1].n128_i64[1];
  v6 = v1[2].n128_u64[0];
  v11 = v1[4];
  v12 = v1[3];
  v9 = v1[6];
  v10 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C42754(v12, v11, v10, v9, a1, v4, v5, v6);
}

double sub_257C1651C(uint64_t a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService] + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue);
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = a1;
  aBlock[4] = sub_257C167B8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  v23 = v1;

  sub_257ECF150();
  v25[1] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v18, v10, v21);
  _Block_release(v21);

  (*(v4 + 8))(v10, v3);
  (*(v12 + 8))(v18, v11);

  return result;
}

double sub_257C167CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  [v1 contentOffset];
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8);
  v6 = v5[3](v4, v5);
  sub_257C16BB4();
  v8 = v7;
  v9 = v5[6](v4, v5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = v5[7](v4, v5);
  if (v10 >= v8)
  {
    v10 = v8;
  }

  v11 = v3 + (v6 + v10) * 0.5;
  [v1 frame];
  [v1 contentOffset];
  return v11;
}

uint64_t sub_257C168F0()
{
  v1 = sub_257ECF120();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v9, v10, v11, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v15 = sub_257ECFD30();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_257C1C6EC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_50;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v14, v7, v17);
  _Block_release(v17);

  (*(v21 + 8))(v7, v1);
  return (*(v8 + 8))(v14, v20);
}

uint64_t sub_257C16BB4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    sub_257ED0210();
    goto LABEL_5;
  }

  result = sub_257ED0210();
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 < 1)
  {
    return result;
  }

  [v0 bounds];
  if (*&v0[v1] >> 62)
  {
    goto LABEL_12;
  }

LABEL_5:
  (*(*&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8] + 24))();
  v5 = *&v0[v1];
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFSUB__(result, 1))
    {
      return result;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_257ED0210();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

  return result;
}

double sub_257C16D0C()
{
  v4 = v0;
  [v0 bounds];
  v5 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v7 = *&v0[v5];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_257ED0210();
  v9 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_257C16BB4();
  v2 = v10;
  v0 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config];
  v1 = *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8];
  v3 = (*(v1 + 48))(*&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config], v1);
  (*(v1 + 56))(v0, v1);
  v11 = *&v4[v5];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_14:
  v16 = v6;
  v12 = sub_257ED0210();
  v6 = v16;
LABEL_5:
  if (v2 > v3)
  {
    v13 = v2;
  }

  else
  {
    v13 = v3;
  }

  if (v6 >= v13)
  {
    v6 = v13;
  }

  return v6 * v9 + (*(v1 + 24))(v0, v1) * v12;
}

id sub_257C16E88()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox);
  }

  else
  {
    v4 = sub_257C16EE8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257C16EE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 layer];
  if (qword_281544A88 != -1)
  {
    swift_once();
  }

  [v2 setCornerCurve_];

  v3 = [v0 layer];
  [v3 setBorderWidth_];

  v4 = [v0 layer];
  v5 = [objc_opt_self() systemWhiteColor];
  v6 = [v5 CGColor];

  [v4 setBorderColor_];
  [v0 setUserInteractionEnabled_];
  return v0;
}

id sub_257C17080(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config];
  *v10 = &type metadata for LayoutConstants.FilterRow;
  v10[1] = &off_28690ABD0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_shouldHighlight] = 0;
  v12 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_subscribers] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons] = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_feedbackGenerator;
  v14 = [objc_opt_self() lightConfiguration];
  v15 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration_];

  [v15 _setOutputMode_];
  *&v4[v13] = v15;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___activeItemIndicator] = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  sub_257C1732C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  sub_257C174FC(v21);

  sub_257C17AC8();
  sub_257C17DC8();
  return v18;
}

void sub_257C1732C()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView];
  [v1 setClipsToBounds_];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView];
  [v2 setClipsToBounds_];
  [v2 setContentInsetAdjustmentBehavior_];
  [v2 setShowsHorizontalScrollIndicator_];
  [v2 setShowsVerticalScrollIndicator_];
  [v2 setDecelerationRate_];
  [v2 setDelegate_];
  [v2 setBounces_];
  [v2 setBouncesVertically_];
  [v2 setBouncesHorizontally_];
  [v2 setAlwaysBounceHorizontal_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didTapScrollView_];
  [v3 setNumberOfTapsRequired_];
  [v2 addGestureRecognizer_];
  [v0 addSubview_];
  [v1 addSubview_];
  v4 = sub_257C16E88();
  [v0 addSubview_];
}

void sub_257C174FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v50 - v8;
  v10 = sub_257ECCB70();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v50 - v22;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v51 = &v50 - v29;
  v30 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v55 = a1;
  v56 = v1;
  v31 = *(v1 + v30);
  v52 = v23;
  v50 = v16;
  if (v31 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v33 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x259C72E20](v33, v31);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      [v34 removeFromSuperview];

      ++v33;
      if (v36 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_12:

  v37 = MEMORY[0x277D84F90];
  *(v56 + v30) = MEMORY[0x277D84F90];

  sub_257C168F0();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v38 = v55;
  if (v59 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD60();

    v40 = v53;
    v39 = v54;
    if ((*(v53 + 48))(v9, 1, v54) != 1)
    {
      v42 = v51;
      (*(v40 + 32))(v51, v9, v39);
      goto LABEL_23;
    }

    sub_257C1C684(v9);
    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    sub_257C73204();
    v42 = v52;
    if (*(v41 + 16))
    {
      v43 = v50;
      (*(v40 + 16))(v50, v41 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v39);

      (*(v40 + 32))(v42, v43, v39);
LABEL_23:
      if (qword_27F8F46E0 != -1)
      {
        swift_once();
      }

      v44 = sub_257C76CCC(v42);
      (*(v40 + 8))(v42, v39);
LABEL_26:
      v45 = v44;
      v46 = *(v38 + 16);
      if (v46)
      {
        goto LABEL_27;
      }

LABEL_32:

      v49 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v59 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v44 = v59;
      goto LABEL_26;
    }
  }

  v44 = 0;
  v46 = *(v38 + 16);
  if (!v46)
  {
    goto LABEL_32;
  }

LABEL_27:
  v59 = v37;
  sub_257ED0360();
  v47 = (v38 + 32);
  do
  {
    v48 = *v47++;
    v57 = v48;
    sub_257C19C34(&v57, v44, &v58);
    sub_257ED0330();
    sub_257ED0370();
    sub_257ED0380();
    sub_257ED0340();
    --v46;
  }

  while (v46);

  v49 = v59;
LABEL_33:
  sub_257C19F34(v49);
}

void sub_257C17AC8()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_257C16E88();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_257EB6FD8(v1, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v3 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox;
  v4 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox] leftAnchor];
  v5 = [v1 leftAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:76.0];

  v7 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint;
  v8 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257EDBE40;
  v10 = *&v1[v7];
  if (v10)
  {
    v11 = v9;
    v24 = objc_opt_self();
    v11[4] = v10;
    v12 = *&v1[v3];
    v13 = v10;
    v14 = [v12 centerYAnchor];
    v15 = [v1 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    v11[5] = v16;
    v17 = [*&v1[v3] widthAnchor];
    v18 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config];
    v19 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8];
    v20 = *(v19 + 24);
    v21 = [v17 constraintEqualToConstant_];

    v11[6] = v21;
    v22 = [*&v1[v3] heightAnchor];
    v23 = [v22 constraintEqualToConstant_];

    v11[7] = v23;
    sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
    v25 = sub_257ECF7F0();

    [v24 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

double sub_257C17DC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0, &qword_257EE4710);
  v110 = *(v0 - 8);
  v111 = v0;
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v109 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5ED0, &qword_257EDBF90);
  v107 = *(v6 - 8);
  v108 = v6;
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v106 = &v87 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5ED8, &qword_257EDBF98);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v12, v13, v14, v15);
  v100 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5EE0, &qword_257EDBFA0);
  v104 = *(v17 - 8);
  v105 = v17;
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v102 = &v87 - v22;
  v23 = sub_257ECF130();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25, v26, v27, v28);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_257ECFD10();
  v96 = *(v31 - 8);
  v97 = v31;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9800, &qword_257EDBFA8);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v38, v39, v40, v41);
  v43 = &v87 - v42;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5EF0, &qword_257EDBFB0);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v44, v45, v46, v47);
  v49 = &v87 - v48;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5EF8, &qword_257EDBFB8);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v50, v51, v52, v53);
  v55 = &v87 - v54;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F00, &qword_257EDBFC0);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v56, v57, v58, v59);
  v61 = &v87 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F08, &qword_257EDBFC8);
  v98 = *(v62 - 8);
  v99 = v62;
  MEMORY[0x28223BE20](v62, v63, v64, v65, v66);
  v91 = &v87 - v67;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10, &unk_257EDBFD0);
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  (*(v24 + 104))(v30, *MEMORY[0x277D851C0], v23);
  v68 = sub_257ECFD90();
  (*(v24 + 8))(v30, v23);
  v112 = v68;
  v69 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&qword_2815441A0, &qword_27F8F9800, &qword_257EDBFA8, MEMORY[0x277CBCEC8]);
  sub_257BE416C();
  v70 = v89;
  sub_257ECDE00();

  (*(v96 + 8))(v37, v97);
  (*(v87 + 8))(v43, v70);
  sub_257BD2D4C(&unk_2815442E0, &qword_27F8F5EF0, &qword_257EDBFB0, MEMORY[0x277CBCD20]);
  v71 = v90;
  sub_257ECDDE0();
  (*(v88 + 8))(v49, v71);
  sub_257ECCB70();
  v72 = MEMORY[0x277CBCC90];
  sub_257BD2D4C(&qword_281544318, &qword_27F8F5EF8, &qword_257EDBFB8, MEMORY[0x277CBCC90]);
  v73 = v95;
  sub_257ECDDA0();
  (*(v93 + 8))(v55, v73);
  sub_257BD2C2C(0, &qword_281543DF0, 0x277D755B8);
  v74 = v91;
  v75 = v94;
  sub_257ECDC70();
  (*(v92 + 8))(v61, v75);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544458, &qword_27F8F5F08, &qword_257EDBFC8, MEMORY[0x277CBCB10]);
  v76 = v99;
  sub_257ECDE50();

  (*(v98 + 8))(v74, v76);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20, &qword_257EE6E50);
  v77 = v100;
  sub_257ECDD30();
  swift_endAccess();
  v78 = v69;
  sub_257BD2D4C(&unk_281544118, &qword_27F8F5ED8, &qword_257EDBF98, v69);
  v80 = v102;
  v79 = v103;
  sub_257ECDDE0();
  (*(v101 + 8))(v77, v79);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544330, &unk_27F8F5EE0, &qword_257EDBFA0, v72);
  v81 = v105;
  sub_257ECDE50();

  (*(v104 + 8))(v80, v81);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F28, &unk_257EDBFE0);
  v82 = v106;
  sub_257ECDD30();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544150, &qword_27F8F5ED0, &qword_257EDBF90, v78);
  v83 = v108;
  sub_257ECDE50();

  (*(v107 + 8))(v82, v83);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0, qword_257ED9EC0);
  v84 = v109;
  sub_257ECDD30();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0, &qword_257EE4710, v78);
  v85 = v111;
  sub_257ECDE50();

  (*(v110 + 8))(v84, v85);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return result;
}

uint64_t sub_257C18BAC()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

_BYTE *sub_257C18C60@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_27F8F46E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  result = sub_257C76CCC(a1);
  *a2 = result;
  return result;
}

void sub_257C18CCC(void **a1, uint64_t a2)
{
  v42 = sub_257ECF120();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v4, v5, v6, v7);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_257ECF190();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v10, v11, v12, v13);
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
    swift_beginAccess();
    v18 = *&v16[v17];
    v33 = v16;
    if (v18 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
    {

      if (!i)
      {
        break;
      }

      v20 = 0;
      v39 = v18 & 0xC000000000000001;
      v38 = v18 & 0xFFFFFFFFFFFFFF8;
      v36 = v47;
      v35 = (v3 + 8);
      v34 = (v9 + 8);
      v37 = i;
      while (1)
      {
        if (v39)
        {
          v21 = MEMORY[0x259C72E20](v20, v18);
        }

        else
        {
          if (v20 >= *(v38 + 16))
          {
            goto LABEL_16;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
        v9 = sub_257ECFD30();
        v24 = swift_allocObject();
        v25 = v18;
        v26 = v43;
        v24[2] = v22;
        v24[3] = v26;
        v24[4] = v20;
        v47[2] = sub_257C1C608;
        v47[3] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v47[0] = sub_257D231C0;
        v47[1] = &block_descriptor_32;
        v27 = _Block_copy(aBlock);
        v45 = v22;
        v28 = v26;

        v29 = v40;
        sub_257ECF150();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
        v31 = v41;
        v30 = v42;
        v18 = v25;
        v32 = v37;
        sub_257ED0180();
        v3 = v9;
        MEMORY[0x259C72880](0, v29, v31, v27);
        _Block_release(v27);

        (*v35)(v31, v30);
        (*v34)(v29, v44);

        ++v20;
        if (v23 == v32)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_13:
  }
}

void sub_257C19124(uint64_t a1, uint64_t a2, int64_t a3)
{
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView) setImage_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v4 = *(v6 + 16);

  if ((a3 & 0x8000000000000000) == 0 && v4 > a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v6 + 16) <= a3)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v6 + a3 + 32);

      LOBYTE(v6) = v5;
      sub_257D2F9A0(&v6);
    }
  }
}

BOOL sub_257C19284()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return (v1 & 1) == 0;
}

double sub_257C19338(uint64_t *a1, uint64_t a2)
{
  v27 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];

    if (v6 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v8 = 0;
      v25 = v6 & 0xFFFFFFFFFFFFFF8;
      v26 = v6 & 0xC000000000000001;
      v9 = &unk_257EDBF40;
      v10 = &unk_257EDBF68;
      v23 = i;
      v24 = v6;
      while (1)
      {
        if (v26)
        {
          v12 = MEMORY[0x259C72E20](v8, v6);
        }

        else
        {
          if (v8 >= *(v25 + 16))
          {
            goto LABEL_21;
          }

          v12 = v6[v8 + 4];
        }

        v13 = v12;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v14 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView;
        [*&v12[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView] setImage_];
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v10;
        v16 = v9;
        sub_257ECDD60();

        v17 = *(v28 + 16);

        if (v8 >= v17)
        {
          v9 = v16;
          v10 = v15;
          v11 = v8 + 1;
        }

        else
        {
          v6 = v16;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if (v8 >= *(v28 + 16))
          {
            goto LABEL_22;
          }

          v10 = v15;
          v18 = *(v28 + v8 + 32);

          v19 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter;
          v13[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter] = v18;
          v20 = [*&v13[v14] layer];
          if (v13[v19] == 12)
          {
            v21 = 0;
          }

          else
          {
            LOBYTE(v28) = v13[v19];
            v22 = sub_257D18A0C();
            sub_257EB7394(v22);

            v21 = sub_257ECF7F0();
          }

          v9 = v6;
          v11 = v8 + 1;
          [v20 setFilters_];

          v13 = v21;
          i = v23;
          v6 = v24;
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:
  }

  return result;
}

void *sub_257C19668(uint64_t *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v28 = sub_257ECFD30();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v19;
    aBlock[4] = sub_257C1C5C8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_8;
    v23 = _Block_copy(aBlock);
    v27 = v11;
    v24 = v23;
    v26 = v21;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v25 = v28;
    MEMORY[0x259C72880](0, v18, v10, v24);
    _Block_release(v24);

    (*(v4 + 8))(v10, v3);
    return (*(v12 + 8))(v18, v27);
  }

  return result;
}

void sub_257C1996C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
    if (([*(Strong + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView) isDragging] & 1) != 0 || objc_msgSend(*&v4[v5], sel_isDecelerating))
    {
      [*&v4[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_feedbackGenerator] selectionChanged];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = sub_257DB83D0(v2, v9);
    v8 = v7;

    if ((v8 & 1) == 0 && (![*&v4[v5] isDragging] || objc_msgSend(*&v4[v5], sel_isDecelerating)))
    {
      sub_257C19AF0(v6, 1);
    }
  }
}

void sub_257C19AF0(unint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    v7 = sub_257ED0210();
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 <= a1)
  {
    return;
  }

  swift_beginAccess();
  v8 = *(v2 + v5);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 8 * a1 + 32);
    goto LABEL_7;
  }

LABEL_11:
  v9 = MEMORY[0x259C72E20](a1);
LABEL_7:
  v10 = v9;
  swift_endAccess();
  [v10 bounds];
  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  [v10 convertRect:v11 toCoordinateSpace:?];
  v13 = v12;
  [v11 contentOffset];
  [v11 setContentOffset:a2 & 1 animated:v13];
}

void sub_257C19C34(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for ImageCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v5[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView] setImage_];
  LOBYTE(v24[0]) = v4;
  sub_257D2F9A0(v24);
  v24[0] = 0x2D7265746C6966;
  v24[1] = 0xE700000000000000;
  v25 = v4;
  v6 = v5;
  v7 = sub_257ED0600();
  MEMORY[0x259C72150](v7);

  MEMORY[0x259C72150](45, 0xE100000000000000);
  LOBYTE(v25) = v4;
  sub_257D188B4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_257ECF4C0();

  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = sub_257ECF500();
  v16 = v15;

  MEMORY[0x259C72150](v14, v16);

  v17 = sub_257ECF4C0();

  [v6 setAccessibilityIdentifier_];

  LOBYTE(v24[0]) = v4;
  sub_257D188B4();
  v18 = [v9 bundleForClass_];
  v19 = sub_257ECF4C0();

  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  if (!v21)
  {
    sub_257ECF500();
    v21 = sub_257ECF4C0();
  }

  [v6 setAccessibilityLabel_];

  *v23 = v6;
}

uint64_t sub_257C19F34(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v4 = 0;
    v5 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C72E20](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [*(v1 + v5) addSubview_];

      ++v4;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v9 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  *(v1 + v9) = a1;

  return sub_257C168F0();
}

void sub_257C1A058(unint64_t a1, char a2, char a3)
{
  v6 = v3;
  v10 = sub_257ECDA30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v19 = *&v6[v18];
  if (v19 >> 62)
  {
    v20 = sub_257ED0210();
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 > a1)
  {
    swift_beginAccess();
    v21 = *&v6[v18];
    if ((v21 & 0xC000000000000001) == 0)
    {
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
      {
        __break(1u);
        goto LABEL_25;
      }

      v22 = *(v21 + 8 * a1 + 32);
LABEL_7:
      v23 = v22;
      swift_endAccess();
      v5 = v23[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v4 = &qword_281544000;
      if (v5 == 12)
      {
LABEL_11:
        if (a2)
        {
          sub_257C19AF0(a1, a3 & 1);
        }

        if (v4[508] != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        v32[15] = v33;
        sub_257D188B4();
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = [objc_opt_self() bundleForClass_];
        v26 = sub_257ECF4C0();

        v27 = sub_257ECF4C0();
        v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

        if (!v28)
        {
          sub_257ECF500();
          v28 = sub_257ECF4C0();
        }

        [v6 setAccessibilityValue_];

        return;
      }

      if (qword_281544FE0 == -1)
      {
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v33 != v5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v33 = v5;
          sub_257ECC3F0();
          sub_257ECDD70();
          swift_getKeyPath();
          swift_getKeyPath();
          v33 = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_11;
      }

LABEL_25:
      swift_once();
      goto LABEL_9;
    }

LABEL_23:
    v22 = MEMORY[0x259C72E20](a1);
    goto LABEL_7;
  }

  sub_257ECD420();
  v29 = sub_257ECDA20();
  v30 = sub_257ECFBD0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = a1;
    _os_log_impl(&dword_257BAC000, v29, v30, "No filter cell at: %ld", v31, 0xCu);
    MEMORY[0x259C74820](v31, -1, -1);
  }

  (*(v11 + 8))(v17, v10);
}

void sub_257C1A51C()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7 + 79.0;
  [v2 bounds];
  v10 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView];
  [v10 setFrame_];
  [v10 frame];
  [v10 setContentInset_];
  [v10 setContentSize_];
  [v10 setScrollEnabled_];
  v12 = *&v1[OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint];
  if (v12)
  {
    [v12 setConstant_];
  }

  sub_257C1A898();
  sub_257C1AAD8();
  v13 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v14 = *&v1[v13];
  if (v14 >> 62)
  {
    v15 = sub_257ED0210();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v28 = MEMORY[0x277D84F90];

    sub_257BF2784(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v17 = 0;
    v16 = v28;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x259C72E20](v17, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v27 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_257BF2784((v20 > 1), v21 + 1, 1);
      }

      ++v17;
      *(v16 + 16) = v21 + 1;
      *(v16 + v21 + 32) = v19;
    }

    while (v15 != v17);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v22 = sub_257DB8418(v27, v16);
  v24 = v23;

  if (v24)
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v25 = v22;
    v26 = 0;
  }

  sub_257C1A058(v25, 1, v26);
}

void sub_257C1A898()
{
  v1 = v0;
  sub_257C16BB4();
  v3 = v2;
  v4 = v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config;
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  v5 = *(v4 + 8);
  v7 = v5[6](v6, v5);
  if (v3 <= v7)
  {
    v3 = v7;
  }

  v8 = v5[7](v6, v5);
  if (v8 >= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView) bounds];
  v11 = v10;
  v12 = v5[3];
  v13 = v12(v6, v5);
  v14 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    v11 = (v11 - v13) * 0.5;
    v23 = v15 & 0xC000000000000001;
    v18 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v19 = v15;
        v20 = MEMORY[0x259C72E20](v17, v15);
      }

      else
      {
        if (v17 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v19 = v15;
        v20 = *(v15 + 8 * v17 + 32);
      }

      v15 = v20;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v13 = v9 * v17 + v12(v6, v5) * v17;
      v22 = v12(v6, v5);
      [v15 setFrame_];

      ++v17;
      v15 = v19;
      if (v21 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_17:
}

void sub_257C1AAD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView);
  [v1 bounds];
  if (v2 > 0.0)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
    [v1 bounds];
    [v34 setFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_257EDBE50;
    v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v5 = [v4 CGColor];

    type metadata accessor for CGColor(0);
    v7 = v6;
    *(v3 + 56) = v6;
    *(v3 + 32) = v5;
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v9 = [v8 CGColor];

    *(v3 + 88) = v7;
    *(v3 + 64) = v9;
    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v11 = [v10 CGColor];

    *(v3 + 120) = v7;
    *(v3 + 96) = v11;
    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v13 = [v12 CGColor];

    *(v3 + 152) = v7;
    *(v3 + 128) = v13;
    v14 = sub_257ECF7F0();

    [v34 setColors_];

    [v1 bounds];
    v16 = 64.0 / v15;
    [v1 bounds];
    v18 = 76.0 / v17;
    v19 = sub_257CA9B88();
    [v1 bounds];
    v21 = 1.0 - v19 / v20;
    if (v16 > 0.0 && v16 < v18 && v18 < v21 && v21 < 1.0)
    {
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_257EDBE40;
      *(v28 + 32) = v25;
      *(v28 + 40) = v26;
      *(v28 + 48) = v27;
      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      v29 = v25;
      v30 = v26;
      v31 = v27;
      *(v28 + 56) = sub_257ECFF30();
      v32 = sub_257ECF7F0();

      [v34 setLocations_];

      [v34 setStartPoint_];
      [v34 setEndPoint_];
      v33 = [v1 layer];
      [v33 setMask_];
    }
  }
}

void sub_257C1B058(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  [a1 locationInView_];
  v4 = v3;
  if (sub_257C1C354(v2, v3, v5))
  {
    sub_257C1B134(v4);
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
      swift_beginAccess();
      v9 = *(v1 + v8);

      v10 = sub_257DB8470(v7, v9);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        sub_257C1A058(v10, 1, 1);
      }
    }
  }
}

void sub_257C1B134(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView);
  v3 = [v2 subviews];
  sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
  v4 = sub_257ECF810();

  v36 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_257ED0210();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C72E20](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for ImageCell();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v7 = v36;
  }

  while (v6 != v5);
LABEL_21:

  if (!(v7 >> 62))
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_23;
    }

LABEL_44:

    return;
  }

LABEL_43:
  v11 = sub_257ED0210();
  if (!v11)
  {
    goto LABEL_44;
  }

LABEL_23:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x259C72E20](0, v7);
LABEL_26:
    v13 = v12;
    if (v11 != 1)
    {
      v14 = 1;
      while (2)
      {
        v15 = v13;
        v16 = v14;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x259C72E20](v16, v7);
          }

          else
          {
            if ((v16 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v17 = *(v7 + 8 * v16 + 32);
          }

          v13 = v17;
          v14 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          [v17 bounds];
          [v13 convertRect:v2 toCoordinateSpace:?];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          [v15 bounds];
          [v15 convertRect:v2 toCoordinateSpace:?];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v37.origin.x = v19;
          v37.origin.y = v21;
          v37.size.width = v23;
          v37.size.height = v25;
          v34 = vabdd_f64(CGRectGetMidX(v37), a1);
          v38.origin.x = v27;
          v38.origin.y = v29;
          v38.size.width = v31;
          v38.size.height = v33;
          if (v34 < vabdd_f64(CGRectGetMidX(v38), a1))
          {
            break;
          }

          ++v16;
          if (v14 == v11)
          {
            goto LABEL_44;
          }
        }

        if (v14 != v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_44;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v7 + 32);
    goto LABEL_26;
  }

  __break(1u);
}

void sub_257C1B528(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config + 8);
  v6 = v5[3](v4, v5);
  sub_257C16BB4();
  v8 = v7;
  v9 = v5[6](v4, v5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = v5[7](v4, v5);
  if (v10 >= v8)
  {
    v10 = v8;
  }

  sub_257C1B134((v6 + v10) * 0.5 + a1);
  v12 = v11;
  if (v11)
  {
    [v11 bounds];
    [v12 convertRect:*(v2 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView) toCoordinateSpace:?];
  }
}

void sub_257C1B65C(void *a1)
{
  v2 = v1;
  v4 = sub_257C167CC();
  sub_257C1B134(v4);
  if (v5)
  {
    v11 = v5;
    sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
    if ((sub_257ECFF50() & 1) != 0 && (([a1 isDragging] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating)))
    {
      v6 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
      swift_beginAccess();
      v7 = *(v2 + v6);

      v8 = sub_257DB8470(v11, v7);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        sub_257C1A058(v8, 0, 0);
      }
    }

    else
    {
    }
  }
}

char *sub_257C1B980()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257ED9BD0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v25 = v7;
  v26 = v0;
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
    v9 = sub_257ED0210();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_13;
  }

  v28 = MEMORY[0x277D84F90];

  result = sub_257BF2784(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v10 = v28;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x259C72E20](v12, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v12 + 32);
      }

      v7 = v13[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v27 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_257BF2784((v14 > 1), v15 + 1, 1);
      }

      ++v12;
      *(v10 + 16) = v15 + 1;
      *(v10 + v15 + 32) = v7;
    }

    while (v9 != v12);

LABEL_13:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v16 = sub_257DB8418(v27, v10);
    v18 = v17;

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v7 = MEMORY[0x277D83B88];
      v10 = MEMORY[0x277D83C10];
      *(v6 + 56) = MEMORY[0x277D83B88];
      *(v6 + 64) = v10;
      *(v6 + 32) = v21;
      v22 = *(v26 + v25);
      if (!(v22 >> 62))
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
        *(v6 + 96) = v7;
        *(v6 + 104) = v10;
        *(v6 + 72) = v23;
        v24 = sub_257ECF540();

        return v24;
      }
    }

    v23 = sub_257ED0210();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_257C1BD00()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_257ED0210();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];

    sub_257BF2784(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_22;
    }

    v5 = 0;
    v4 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C72E20](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v14 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2784((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v7;
    }

    while (v3 != v5);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v10 = sub_257DB8418(v14, v4);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (!__OFSUB__(v13, 1))
  {
    sub_257C1A058(v13 - 1, 1, 1);
    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_257C1BF5C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_257ED0210();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];

    sub_257BF2784(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_22;
    }

    v5 = 0;
    v4 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C72E20](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter];

      v14 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2784((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v7;
    }

    while (v3 != v5);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v10 = sub_257DB8418(v14, v4);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (!__OFADD__(v13, 1))
  {
    sub_257C1A058(v13 + 1, 1, 1);
    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_257C1C1B8()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_config);
  *v1 = &type metadata for LayoutConstants.FilterRow;
  v1[1] = &off_28690ABD0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_scrollView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_shouldHighlight) = 0;
  v3 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_maskedView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_subscribers) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_buttons) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_feedbackGenerator;
  v5 = [objc_opt_self() lightConfiguration];
  v6 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration_];

  [v6 _setOutputMode_];
  *(v0 + v4) = v6;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___overlayBox) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber_overlayBoxLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport19LensFiltersScrubber____lazy_storage___activeItemIndicator) = 0;
  sub_257ED0410();
  __break(1u);
}

BOOL sub_257C1C354(void *a1, CGFloat a2, CGFloat a3)
{
  v6 = [a1 subviews];
  sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
  v7 = sub_257ECF810();

  if (v7 >> 62)
  {
LABEL_15:
    v8 = sub_257ED0210();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x259C72E20](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    [v11 bounds];
    [v12 convertRect:a1 toCoordinateSpace:?];
    v15.x = a2;
    v15.y = a3;
    v13 = CGRectContainsPoint(v16, v15);

    v9 = v10 + 1;
  }

  while (!v13);

  return v8 != v10;
}

uint64_t sub_257C1C4B8()
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C1C614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C1C684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_257C1C70C()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = 0.0;
  v9[0] = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  if (v9[0] == v8 && v8 == v7)
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v9[0] alpha:v6 * 0.8];
  }

  v4 = 0.0;
  v5 = 0.0;
  v3 = 0.0;
  [v0 getHue:&v5 saturation:&v4 brightness:&v3 alpha:{&v6, v8}];
  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v5 saturation:v4 brightness:v3 alpha:v6 * 0.8];
}

id sub_257C1C83C(void *a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0.0;
  [a1 getWhite:&v6 alpha:v7];
  v3 = [a2 userInterfaceStyle];
  v4 = 0.35;
  if (v3 == 2)
  {
    v4 = 0.45;
  }

  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v7[0] alpha:v7[0] * v4];
}

uint64_t sub_257C1C904@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_257C7DE38(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 56 * a1);
    v10 = v9[2];
    v9 += 2;
    v11 = *(v9 + 4);
    v12 = v9[1];
    *a2 = v10;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    *(a2 + 40) = *(v9 + 40);
    result = memmove(v9, v9 + 56, 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_257C1C9C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_257C7DED8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for DoorAttributesCacheItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_257C22DAC(v11, a2, type metadata accessor for DoorAttributesCacheItem);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_257C1CAF8(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

double sub_257C1CB90()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C1CF5C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v30 == 1)
  {
    v28[0] = v0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_257ECF4C0();
    v12 = sub_257ECF4C0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = v13;
    if (!v13)
    {
      sub_257ECF500();
      v14 = sub_257ECF4C0();
    }

    v30 = sub_257ECF500();
    v31 = v15;
    sub_257BDAB08();
    v16 = sub_257ED0100();
    v18 = v17;

    v19 = sub_257E003E8();
    v20 = sub_257E00504();
    sub_257DFD370(v16, v18, v19, v20);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    sub_257D1A130();
    v0 = v28[0];
  }

  v21 = qword_281548350 + 40;
  swift_beginAccess();
  v29 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v22 = sub_257ECF110();
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v28[-2] = &v29;
  v28[-1] = v21;
  sub_257ECFD40();
  (*(v1 + 8))(v7, v0);
  swift_endAccess();
  if (*(v8 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) != 1 || (*(v8 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) & 1) == 0)
  {
    return sub_257D3D02C();
  }

  return result;
}

double sub_257C1CF5C()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  swift_beginAccess();
  v17 = v16[1];
  v18 = v16[2];
  aBlock = *v16;
  v37 = v17;
  v38 = v18;
  v19 = qword_2815447E0;

  if (v19 != -1)
  {
    v20 = swift_once();
  }

  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  *(&v33 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
  sub_257ECFD50();

  v25 = v42;
  v26 = sub_257C592D0(2u, v42);
  v27 = sub_257C592D0(3u, v25);
  v28 = sub_257C592D0(1u, v25);

  v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useDoorSpeechFeedback] = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  *(v29 + 24) = v26;
  *(v29 + 25) = v27;
  v40 = sub_257C22570;
  v41 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_257D231C0;
  v39 = &block_descriptor_8;
  v30 = _Block_copy(&aBlock);
  v31 = v1;
  sub_257ECF150();
  v42 = MEMORY[0x277D84F90];
  sub_257C242AC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v15, v8, v30);
  _Block_release(v30);
  (*(v35 + 8))(v8, v2);
  (*(v33 + 8))(v15, v34);

  return result;
}

void sub_257C1D38C()
{
  v1 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C1D94C();
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView))
  {
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
    v26 = *MEMORY[0x277CBF348];
    v27 = *(MEMORY[0x277CBF348] + 8);
    sub_257ECCCE0();
    v28 = &v14[v8[5]];
    *v28 = v22;
    *(v28 + 1) = v23;
    *(v28 + 2) = v24;
    *(v28 + 3) = v25;
    v29 = &v14[v8[6]];
    *v29 = v22;
    *(v29 + 1) = v23;
    *(v29 + 2) = v24;
    *(v29 + 3) = v25;
    v30 = &v14[v8[7]];
    *v30 = v26;
    *(v30 + 1) = v27;
    v31 = &v14[v8[8]];
    *v31 = v26;
    *(v31 + 1) = v27;
    *&v14[v8[9]] = 0;
    v32 = &v14[v8[10]];
    *v32 = 0;
    v32[4] = 1;
    v33 = &v14[v8[11]];
    *(v33 + 12) = 0;
    *(v33 + 4) = 0u;
    *(v33 + 5) = 0u;
    *(v33 + 2) = 0u;
    *(v33 + 3) = 0u;
    *v33 = 0u;
    *(v33 + 1) = 0u;
    *&v14[v8[12]] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    sub_257C22D44(v14, v7, type metadata accessor for DetectedDoor);
    *&v7[v35] = MEMORY[0x277D84F90];
    *&v7[v36] = 0;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C22D44(v7, &v21[v15[5]], type metadata accessor for MAGOutputEvent.EventType);
    v21[v15[6]] = 1;
    v21[v15[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v37 = qword_281548348;
    sub_257ECC3F0();
    sub_257C22E14(v7, type metadata accessor for MAGOutputEvent.EventType);
    sub_257C22E14(v14, type metadata accessor for DetectedDoor);
    *&v21[v15[8]] = v37;
    sub_257CBBC80(v21);
    sub_257C22E14(v21, type metadata accessor for MAGOutputEvent);
    v38 = sub_257DFF59C();
    v39 = &v38[OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue];
    *v39 = 0;
    *(v39 + 1) = 0xE000000000000000;

    v40 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
    v41 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
    swift_beginAccess();
    [*(v40 + v41) setUseHapticFeedback_];
    [*(v40 + v41) setUseSoundFeedback_];
    v42 = sub_257DFF054();
    v43 = [v42 view];
    if (v43)
    {
      v44 = v43;
      [v43 alpha];
      v46 = v45;

      if (v46 == 0.0)
      {
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v48 = [objc_opt_self() bundleForClass_];
        v49 = sub_257ECF4C0();
        v50 = sub_257ECF4C0();
        v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

        v52 = v51;
        if (!v51)
        {
          sub_257ECF500();
          v52 = sub_257ECF4C0();
        }

        v60 = sub_257ECF500();
        v61 = v53;
        sub_257BDAB08();
        v54 = sub_257ED0100();
        v56 = v55;

        v57 = sub_257E003E8();
        v58 = sub_257E00504();
        sub_257DFD370(v54, v56, v57, v58);

        UIAccessibilitySpeakAndDoNotBeInterrupted();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v60 == 1)
      {
        sub_257C1DC68();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257C1D94C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECF190();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v10, v11, v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v16 = sub_257ECFD30();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  aBlock[4] = sub_257C1EBFC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_9;
  v18 = _Block_copy(aBlock);
  v19 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257C242AC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v15, v8, v18);
  _Block_release(v18);

  (*(v2 + 8))(v8, v1);
  (*(v9 + 8))(v15, v24);
  v20 = *&v19[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_257ECF7F0();
    [v21 setAccessibilityElements_];
  }
}

double sub_257C1DC68()
{
  sub_257BD2C2C(0, &qword_27F8F8060, 0x277CE53B0);
  if ([swift_getObjCClassFromMetadata() supportsFrameSemantics_])
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
    v2 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = [v3 configuration];
      if (v4)
      {
        v5 = v4;
        [v4 setFrameSemantics_];
      }
    }
  }

  return sub_257D1A130();
}

id sub_257C1DD48(uint64_t a1, char a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v5 + v6) setUseSoundFeedback_];
  [*(v5 + v6) setUseHapticFeedback_];
  return [*(v5 + v6) setDetectionType_];
}

uint64_t sub_257C1DDE8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = a8;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  v9 = sub_257ECF120();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_257ECF190();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  sub_257ECF900();
  *(v8 + 152) = sub_257ECF8F0();
  v12 = sub_257ECF8B0();
  *(v8 + 160) = v12;
  *(v8 + 168) = v11;

  return MEMORY[0x2822009F8](sub_257C1DF40, v12, v11);
}

uint64_t sub_257C1DF40()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_257C1DFF0;
  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  return sub_257DA6320(v5, v2, v3, v4);
}

uint64_t sub_257C1DFF0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](sub_257C1E118, v4, v3);
}

uint64_t sub_257C1E118()
{
  v1 = v0[23];

  if (v1)
  {
    v2 = v0[23];
    if (*(v2 + 16))
    {
      v15 = v0[18];
      v3 = v0[15];
      v17 = v0[17];
      v18 = v0[16];
      v5 = v0[13];
      v4 = v0[14];
      v6 = *(v0 + 192);
      v8 = v0[9];
      v7 = v0[10];
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v16 = sub_257ECFD30();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v2;
      *(v9 + 32) = v7;
      *(v9 + 40) = v6;
      v0[6] = sub_257C22938;
      v0[7] = v9;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_257D231C0;
      v0[5] = &block_descriptor_20;
      v10 = _Block_copy(v0 + 2);
      v11 = v8;
      v12 = v7;

      sub_257ECF150();
      v0[8] = MEMORY[0x277D84F90];
      sub_257C242AC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v15, v3, v10);
      _Block_release(v10);

      (*(v4 + 8))(v3, v5);
      (*(v17 + 8))(v15, v18);
    }

    else
    {

      sub_257C1EC1C();
    }
  }

  v13 = v0[1];

  return v13();
}

id sub_257C1E38C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v56 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
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
  sub_257ECFD50();

  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v59 green:v60 blue:v61 alpha:1.0];
  v62.origin.x = a1;
  v62.origin.y = a2;
  v62.size.width = a3;
  v62.size.height = a4;
  v22 = CGPathCreateWithRoundedRect(v62, 16.0, 16.0, 0);
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v58 = v7;
  v57 = v13;
  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_16;
  }

  v23 = objc_opt_self();
  v24 = [v23 currentDevice];
  v25 = [v24 orientation];

  if (v25 == 4)
  {
    result = [v7 view];
    if (result)
    {
      v27 = result;
      [result bounds];
      v29 = v28;

      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      MinY = CGRectGetMinY(v63);
      v64.origin.x = a1;
      v64.origin.y = a2;
      v64.size.width = a3;
      v64.size.height = a4;
      Height = CGRectGetHeight(v64);
      result = [v7 view];
      if (result)
      {
        v32 = result;
        v33 = v29 - MinY - Height;
LABEL_15:
        [v32 bounds];
        v37 = v36;

        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        v38 = v37 - CGRectGetMinX(v66);
        v67.origin.x = a1;
        v67.origin.y = a2;
        v67.size.width = a3;
        v67.size.height = a4;
        v39 = v38 - CGRectGetWidth(v67);
        v68.origin.x = a1;
        v68.origin.y = a2;
        v68.size.width = a3;
        v68.size.height = a4;
        v40 = CGRectGetHeight(v68);
        v69.origin.x = a1;
        v69.origin.y = a2;
        v69.size.width = a3;
        v69.size.height = a4;
        v70.size.height = CGRectGetWidth(v69);
        v70.origin.x = v33;
        v70.origin.y = v39;
        v70.size.width = v40;
        v41 = CGPathCreateWithRoundedRect(v70, 16.0, 16.0, 0);

        v22 = v41;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v34 = [v23 currentDevice];
  v35 = [v34 orientation];

  if (v35 == 3)
  {
    v65.origin.x = a1;
    v65.origin.y = a2;
    v65.size.width = a3;
    v65.size.height = a4;
    v33 = CGRectGetMinY(v65);
    result = [v7 view];
    if (result)
    {
      v32 = result;
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_16:
  [v14 setPath_];
  v42 = [v21 CGColor];
  [v14 setFillColor_];

  v43 = [v21 CGColor];
  [v14 setStrokeColor_];

  v44 = v14;
  v45 = [v21 CGColor];
  [v44 setBorderColor_];

  if (a6)
  {
    v46 = 1.5;
  }

  else
  {
    v46 = 5.0;
  }

  [v44 setLineWidth_];
  LODWORD(v47) = 1045220557;
  [v44 setOpacity_];
  [v44 setCornerRadius_];

  [v56 setPath_];
  v48 = [objc_opt_self() clearColor];
  v49 = [v48 CGColor];

  [v56 setFillColor_];
  v50 = [v21 CGColor];
  [v56 setStrokeColor_];

  v51 = v56;
  v52 = [v21 CGColor];
  [v51 setBorderColor_];

  [v51 setLineWidth_];
  LODWORD(v53) = 1.0;
  [v51 setOpacity_];
  [v51 setCornerRadius_];

  [v57 addSublayer_];
  [v57 addSublayer_];
  [v57 setDrawsAsynchronously_];
  v54 = *&v58[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
  if (v54)
  {
    v55 = [v54 layer];
    [v55 insertSublayer:v57 atIndex:0];

    v51 = v21;
    v21 = v55;
  }

  return v57;
}

id sub_257C1EAB8(uint64_t a1)
{
  v2 = objc_opt_self();
  [v2 begin];
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers;
  result = swift_beginAccess();
  v5 = *(a1 + v3);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(a1 + v3) = MEMORY[0x277D84F90];

    return [v2 commit];
  }

  result = sub_257ED0210();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C72E20](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 removeFromSuperlayer];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C1EC1C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = sub_257C22948;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_26;
  v19 = _Block_copy(aBlock);
  v20 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257C242AC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v8, v19);
  _Block_release(v19);

  (*(v2 + 8))(v8, v1);
  return (*(v10 + 8))(v16, v9);
}

id sub_257C1EEE0(char *a1, uint64_t a2, void *a3, int a4)
{
  v146 = a4;
  v163 = a3;
  v151 = a2;
  v6 = 0;
  v142 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v142, v7, v8, v9, v10);
  v145 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v144, v12, v13, v14, v15);
  v143 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DetectedDoor(0);
  v152 = *(v17 - 1);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v147 = (&v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v142 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F40, &qword_257EDC140);
  MEMORY[0x28223BE20](v30 - 8, v31, v32, v33, v34);
  v161 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v42 = (&v142 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F48, &qword_257EDC148);
  MEMORY[0x28223BE20](v43 - 8, v44, v45, v46, v47);
  v150 = &v142 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v154 = (&v142 - v54);
  v55 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers;
  swift_beginAccess();
  v162 = v55;
  v56 = *&a1[v55];
  if (v56 >> 62)
  {
    v57 = sub_257ED0210();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v159 = v42;
  if (v57)
  {
    if (v57 < 1)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    for (i = 0; i != v57; ++i)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x259C72E20](i, v56);
      }

      else
      {
        v58 = *(v56 + 8 * i + 32);
      }

      v59 = v58;
      [v58 removeFromSuperlayer];
    }

    v42 = v159;
  }

  v60 = MEMORY[0x277D84F90];
  *&a1[v162] = MEMORY[0x277D84F90];

  v172 = v60;
  v61 = v151;
  if (*(v151 + 16))
  {
    i = v152;
    v62 = v154;
    sub_257C22D44(v151 + ((*(v152 + 80) + 32) & ~*(v152 + 80)), v154, type metadata accessor for DetectedDoor);
    v63 = i;
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v154;
    v63 = v152;
  }

  v65 = *(v63 + 56);
  v149 = v63 + 56;
  v148 = v65;
  v65(v62, v64, 1, v17);
  v170 = 0;
  v171 = 0;
  v169 = v61;
  v155 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService;
  v153 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDecorationsCache;
  v156 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;

  v160 = MEMORY[0x277D84F90];
  v66 = 3.4028e38;
  v157 = v17;
LABEL_15:
  v158 = v66;
  while (1)
  {
    v67 = v161;
    sub_257C1FED4(v161);
    sub_257C0DD14(v67, v42, &qword_27F8F5F40, &qword_257EDC140);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50, &unk_257EEA980);
    if ((*(*(v68 - 8) + 48))(v42, 1, v68) == 1)
    {
      break;
    }

    v69 = *v42;
    sub_257C22DAC(v42 + *(v68 + 48), v29, type metadata accessor for DetectedDoor);
    v71 = &v29[v17[10]];
    if ((v71[4] & 1) != 0 || (v72 = *v71, LODWORD(v70) = *v71, *v71 > 4.0))
    {
      v74 = sub_257DA8F4C(v163, *&v29[v17[6]], *&v29[v17[6] + 8], *&v29[v17[6] + 16], *&v29[v17[6] + 24]);
      v72 = *&v74;
      v73 = HIDWORD(v74) & 1;
      *v71 = v74;
      v71[4] = BYTE4(v74) & 1;
    }

    else
    {
      LODWORD(v73) = 0;
    }

    v75 = &v29[v17[6]];
    v76 = *v75;
    v77 = v75[1];
    v78 = v75[2];
    v79 = v75[3];
    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v81 = result;
    [result bounds];
    v83 = v82;
    v85 = v84;

    [v163 displayTransformForOrientation:1 viewportSize:{v83, v85}];
    tx = t1.tx;
    ty = t1.ty;
    v165 = *&t1.a;
    v164 = *&t1.c;
    CGAffineTransformMakeScale(&t1, v83, v85);
    v88 = *&t1.a;
    v89 = *&t1.c;
    v90 = *&t1.tx;
    *&t1.a = v165;
    *&t1.c = v164;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v88;
    *&t2.c = v89;
    *&t2.tx = v90;
    CGAffineTransformConcat(&v166, &t1, &t2);
    t1 = v166;
    v173.origin.x = v76;
    v173.origin.y = v77;
    v173.size.width = v78;
    v173.size.height = v79;
    v174 = CGRectApplyAffineTransform(v173, &t1);
    x = v174.origin.x;
    y = v174.origin.y;
    width = v174.size.width;
    height = v174.size.height;
    if (AXIsInternalInstall())
    {
      sub_257C200C4(v29, x, y, width, height);
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v95 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
      swift_beginAccess();
      v96 = *(v95 + 8);
      v97 = *(v95 + 16);
      t1.a = *v95;
      t1.b = v96;
      LOBYTE(t1.c) = v97;
      v98 = qword_2815447E0;

      if (v98 != -1)
      {
        v99 = swift_once();
      }

      MEMORY[0x28223BE20](v99, v100, v101, v102, v103);
      *(&v142 - 2) = &t1;
      sub_257ECFD50();

      if (LOBYTE(t2.a) == 1)
      {
        v104 = *&v29[v17[12]];
        if (v104)
        {
          if (*(v104 + 16))
          {
            t1.a = v69;

            v105 = sub_257ED0600();
            *&v165 = v6;
            v106 = v105;
            v108 = v107;
            v109 = v153;
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            t2.a = *&a1[v109];
            *&a1[v109] = 0x8000000000000000;
            v111 = v106;
            v6 = v165;
            sub_257EC7424(v104, v111, v108, isUniquelyReferenced_nonNull_native);

            *&a1[v109] = t2.a;
            swift_endAccess();
          }
        }
      }
    }

    v112 = v162;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(t1.a) != 1)
    {

      sub_257C1D94C();
      v132 = v29;
      goto LABEL_57;
    }

    v113 = sub_257C1E38C(x, y, width, height, v29, *&v69);
    swift_beginAccess();
    i = v113;
    MEMORY[0x259C72300]();
    if (*((*&a1[v112] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v112] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
    v114 = sub_257C209C8(v29, *&v69, x, y, width, height);
    MEMORY[0x259C72300]();
    if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v115 = v172;
    v116 = *&a1[v156];
    v66 = v158;
    v160 = v172;
    if (v116)
    {
      v117 = v116;
      sub_257EB73A8(v115);
      v118 = sub_257ECF7F0();

      [v117 setAccessibilityElements_];
    }

    if (v73)
    {
      v119 = 3.4028e38;
    }

    else
    {
      v119 = v72;
    }

    if (v119 < v66)
    {
      v120 = v154;
      sub_257BE4084(v154, &qword_27F8F5F48, &qword_257EDC148);
      sub_257C22D44(v29, v120, type metadata accessor for DetectedDoor);
      v121 = v157;
      v148(v120, 0, 1, v157);
      v122 = sub_257DFF59C();
      sub_257C22A60(v29);
      v124 = v123;
      v125 = [v123 string];

      v126 = sub_257ECF500();
      v128 = v127;

      sub_257C22E14(v29, type metadata accessor for DetectedDoor);
      v129 = &v122[OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue];
      *v129 = v126;
      v129[1] = v128;
      v17 = v121;

      v66 = v119;
      v42 = v159;
      goto LABEL_15;
    }

    sub_257C22E14(v29, type metadata accessor for DetectedDoor);

    v17 = v157;
    v42 = v159;
  }

  v6 = v154;
  v57 = v150;
  if (v66 >= 3.4028e38)
  {
    goto LABEL_51;
  }

  v130 = v66 * 1000.0;
  if (COERCE_INT(fabs(v66 * 1000.0)) > 2139095039)
  {
    goto LABEL_62;
  }

  if (v130 > -2147500000.0)
  {
    if (v130 >= 2147500000.0)
    {
      goto LABEL_64;
    }

    sub_257DE25DC(v130);
LABEL_51:
    sub_257C22950(v6, v57);
    if ((*(v152 + 48))(v57, 1, v17) == 1)
    {
      sub_257BE4084(v6, &qword_27F8F5F48, &qword_257EDC148);
      v131 = v57;
      return sub_257BE4084(v131, &qword_27F8F5F48, &qword_257EDC148);
    }

    v42 = v147;
    sub_257C22DAC(v57, v147, type metadata accessor for DetectedDoor);
    if ((v146 & 1) == 0)
    {
      sub_257C22E14(v42, type metadata accessor for DetectedDoor);
      v131 = v6;
      return sub_257BE4084(v131, &qword_27F8F5F48, &qword_257EDC148);
    }

    v133 = *&a1[v155];
    v134 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_openStateConfidenceThreshold;
    swift_beginAccess();
    v135 = *(v133 + v134);
    sub_257ECFA40();
    v137 = v136;

    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);
    v139 = *(v138 + 48);
    v140 = *(v138 + 64);
    v57 = v145;
    sub_257C22D44(v42, v145, type metadata accessor for DetectedDoor);
    *(v57 + v139) = v151;
    *(v57 + v140) = v137;
    swift_storeEnumTagMultiPayload();

    i = v143;
    sub_257ECCCE0();
    v6 = v144;
    sub_257C22D44(v57, i + *(v144 + 20), type metadata accessor for MAGOutputEvent.EventType);
    *(i + v6[6]) = 1;
    *(i + v6[7]) = 0;
    if (qword_281544FE0 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_56:
  v141 = qword_281548348;
  sub_257ECC3F0();
  sub_257C22E14(v57, type metadata accessor for MAGOutputEvent.EventType);
  *(i + v6[8]) = v141;
  sub_257CBBC80(i);
  sub_257C22E14(i, type metadata accessor for MAGOutputEvent);
  v132 = v42;
LABEL_57:
  sub_257C22E14(v132, type metadata accessor for DetectedDoor);
  v131 = v154;
  return sub_257BE4084(v131, &qword_27F8F5F48, &qword_257EDC148);
}

void sub_257C1FED4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50, &unk_257EEA980);
  v9 = MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v11 = (&v20 - v10);
  v13 = *v1;
  v12 = v1[1];
  v14 = *(*v1 + 16);
  if (v12 == v14)
  {
    v15 = *(v8 + 56);

    v15(a1, 1, 1, v3, v9);
  }

  else
  {
    if (v12 >= v14)
    {
      __break(1u);
    }

    else
    {
      v21 = v8;
      v16 = *(type metadata accessor for DetectedDoor(0) - 8);
      v17 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12;
      v1[1] = v12 + 1;
      v18 = *(v3 + 48);
      v19 = v1[2];
      *v11 = v19;
      sub_257C22D44(v17, v11 + v18, type metadata accessor for DetectedDoor);
      if (!__OFADD__(v19, 1))
      {
        v1[2] = v19 + 1;
        sub_257C0DD14(v11, a1, &qword_27F8F5F50, &unk_257EEA980);
        (*(v21 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

void sub_257C200C4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F58, &qword_257EDC198);
  v108 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v102 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F60, &qword_257EDC1A0);
  MEMORY[0x28223BE20](v18 - 8, v19, v20, v21, v22);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v107 = &v93 - v30;
  v106 = sub_257ECCC80();
  v98 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v31, v32, v33, v34);
  v99 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v110 = &v93 - v41;
  v42 = type metadata accessor for DoorAttributesCacheItem(0);
  v103 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
  v48 = &v93 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v55 = &v93 - v54;
  MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
  v62 = &v93 - v61;
  v63 = (a1 + *(type metadata accessor for DetectedDoor(0) + 44));
  v64 = *v63;
  if (*v63)
  {
    v105 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A80, &qword_257EDC1A8);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_257ED6D30;
    *(v65 + 32) = 0u;
    v109 = v42;
    v112 = v64;
    v113 = *(v63 + 1);
    v115 = *(v63 + 5);
    v116 = *(v63 + 7);
    v117 = *(v63 + 9);
    v118 = *(v63 + 11);
    v114 = *(v63 + 3);
    sub_257C22CE8(&v112, v111);
    sub_257ECCC70();
    *v62 = v64;
    *(v62 + 40) = *(v63 + 5);
    *(v62 + 56) = *(v63 + 7);
    *(v62 + 72) = *(v63 + 9);
    *(v62 + 88) = *(v63 + 11);
    *(v62 + 24) = *(v63 + 3);
    *(v62 + 8) = *(v63 + 1);
    *(v62 + 7) = 0u;
    *(v62 + 16) = v65;
    v66 = &v62[*(v109 + 32)];
    *v66 = a2;
    v66[1] = a3;
    v66[2] = a4;
    v66[3] = a5;
    sub_257C22D44(v62, v55, type metadata accessor for DoorAttributesCacheItem);
    v67 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorAttributesCache;
    swift_beginAccess();
    v68 = *(v6 + v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v67) = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v68 = sub_257BFD418(0, *(v68 + 2) + 1, 1, v68);
      *(v6 + v67) = v68;
    }

    v70 = v108;
    v104 = v24;
    v72 = *(v68 + 2);
    v71 = *(v68 + 3);
    v95 = v62;
    v73 = v102;
    if (v72 >= v71 >> 1)
    {
      v68 = sub_257BFD418((v71 > 1), v72 + 1, 1, v68);
    }

    *(v68 + 2) = v72 + 1;
    v74 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v101 = *(v103 + 72);
    sub_257C22DAC(v55, &v68[v74 + v101 * v72], type metadata accessor for DoorAttributesCacheItem);
    *(v6 + v67) = v68;
    swift_endAccess();
    sub_257ECCC70();
    v75 = *(v6 + v67);
    v100 = v75 + v74;
    v55 = *(v75 + 16);
    v103 = v70 + 56;
    v102 = (v70 + 48);
    v97 = (v98 + 2);
    ++v98;
    v108 = v75;

    v76 = 0;
    v94 = 0;
    v96 = MEMORY[0x277D84F90];
    while (1)
    {
      v77 = v73;
      if (v55)
      {
        --v55;
        v78 = v105;
        v24 = v104;
        if (v55 >= *(v108 + 16))
        {
          goto LABEL_27;
        }

        v79 = v100 + v55 * v101;
        v80 = *(v105 + 48);
        *v77 = v76;
        sub_257C22D44(v79, v77 + v80, type metadata accessor for DoorAttributesCacheItem);
        v81 = __OFADD__(v76++, 1);
        v62 = v107;
        if (v81)
        {
          goto LABEL_28;
        }

        sub_257C0DD14(v77, v24, &qword_27F8F5F58, &qword_257EDC198);
        v82 = 0;
      }

      else
      {
        v82 = 1;
        v78 = v105;
        v24 = v104;
        v62 = v107;
      }

      (*v103)(v24, v82, 1, v78);
      sub_257C0DD14(v24, v62, &qword_27F8F5F60, &qword_257EDC1A0);
      if ((*v102)(v62, 1, v78) == 1)
      {
        break;
      }

      v73 = v77;
      v83 = v62;
      v62 = *v62;
      v84 = &v83[*(v78 + 48)];
      v68 = v99;
      v85 = v106;
      (*v97)(v99, v84 + *(v109 + 28), v106);
      sub_257C22E14(v84, type metadata accessor for DoorAttributesCacheItem);
      sub_257ECCBC0();
      v87 = v86;
      (*v98)(v68, v85);
      if (v87 > 1.0)
      {
        v68 = v96;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_257BFCF1C(0, *(v68 + 2) + 1, 1, v68);
        }

        v89 = *(v68 + 2);
        v88 = *(v68 + 3);
        if (v89 >= v88 >> 1)
        {
          v68 = sub_257BFCF1C((v88 > 1), v89 + 1, 1, v68);
        }

        *(v68 + 2) = v89 + 1;
        v96 = v68;
        *&v68[8 * v89 + 32] = v62;
      }
    }

    v111[0] = v96;

    v90 = v94;
    sub_257C21C94(v111);
    if (v90)
    {

      __break(1u);
    }

    else
    {

      v91 = v111[0];
      v92 = *(v111[0] + 2);
      v24 = v95;
      if (v92)
      {
        swift_beginAccess();
        v68 = v91 + 24;
        while (v92 <= *(v91 + 2))
        {
          sub_257C1C9C4(*&v68[8 * v92], v48);
          sub_257C22E14(v48, type metadata accessor for DoorAttributesCacheItem);
          if (!--v92)
          {
            swift_endAccess();
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_24:

      (*v98)(v110, v106);
      sub_257C22E14(v24, type metadata accessor for DoorAttributesCacheItem);
    }
  }
}

char *sub_257C209C8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *(v6 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  v13 = objc_allocWithZone(type metadata accessor for DoorUIAccessibilityElement());
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F68, &qword_257EDC1B0);
  v15 = [v13 initWithAccessibilityContainer_];

  swift_unknownObjectRelease();
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 bezierPathWithRoundedRect:a3 cornerRadius:{a4, a5, a6, 16.0}];
  [v17 setAccessibilityPath_];

  v19 = sub_257C229C0(a1);
  v21 = v20;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_257ECF4C0();
  v25 = sub_257ECF4C0();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  sub_257ECF500();

  MEMORY[0x259C72150](32, 0xE100000000000000);

  if (v21)
  {
    v27 = v21;
  }

  else
  {
    v19 = 0;
    v27 = 0xE000000000000000;
  }

  MEMORY[0x259C72150](v19, v27);

  sub_257C22A60(a1);
  v112 = v28;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    swift_beginAccess();
    v29 = qword_2815447E0;

    if (v29 != -1)
    {
      v30 = swift_once();
    }

    MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
    sub_257ECFD50();

    if ((v118 & 1) == 0)
    {
      v40 = swift_beginAccess();
      MEMORY[0x28223BE20](v40, v41, v42, v43, v44);

      sub_257ECFD50();

      if ((v117 & 1) == 0)
      {
        v45 = v17;
        v46 = sub_257ECF4C0();
        [v45 setAccessibilityLabel_];

        sub_257BD2C2C(0, &qword_27F8F5F70, 0x277CB88D0);
        v47 = sub_257ECF7F0();
        [v45 setAccessibilityCustomContent_];
      }
    }

    MEMORY[0x28223BE20](v35, v36, v37, v38, v39);

    sub_257ECFD50();

    v114 = v17;
    if (v117 == 1)
    {
      v48 = *(type metadata accessor for DetectedDoor(0) + 48);
      v49 = *(a1 + v48);
      if (v49)
      {
        sub_257C22E74(*(a1 + v48));
        sub_257BD2C2C(0, &qword_27F8F5F70, 0x277CB88D0);
        v50 = sub_257ECF7F0();

        [v17 setAccessibilityCustomContent_];

        v51 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v52 = sub_257ECF4C0();
        v53 = [v51 initWithString_];

        v54 = sub_257C23960(v49);
        if ([v54 length] >= 1)
        {
          v55 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v56 = sub_257ECF4C0();
          v57 = [v55 initWithString_];

          [v53 appendAttributedString_];
          [v53 appendAttributedString_];
        }

        [v17 setAccessibilityAttributedLabel_];
      }
    }

    v58 = swift_beginAccess();
    MEMORY[0x28223BE20](v58, v59, v60, v61, v62);

    sub_257ECFD50();

    if (v115 != 1)
    {

LABEL_40:

      v99 = v112;
      goto LABEL_45;
    }

    v63 = &selRef_imageByApplyingSymbolConfiguration_;
    if (!*(a1 + *(type metadata accessor for DetectedDoor(0) + 44)))
    {
      break;
    }

    v110 = 0;
    v64 = sub_257D747BC();
    a1 = v64 + 64;
    v65 = 1 << *(v64 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v64 + 64);
    v68 = (v65 + 63) >> 6;

    v69 = 0;
    v111 = v68;
    while (v67)
    {
LABEL_28:
      v72 = objc_allocWithZone(MEMORY[0x277CCA898]);

      v73 = sub_257ECF4C0();
      v74 = [v72 initWithString_];

      v75 = objc_allocWithZone(MEMORY[0x277CCA898]);

      v76 = sub_257ECF4C0();

      v77 = [v75 initWithString_];

      v78 = objc_opt_self();
      v113 = v74;
      v79 = v74;
      v80 = v77;
      v81 = [v78 customContentWithAttributedLabel:v79 attributedValue:v77];
      v82 = [v114 accessibilityCustomContent];
      if (!v82)
      {
        sub_257BD2C2C(0, &qword_27F8F5F70, 0x277CB88D0);
        v83 = sub_257ECF7F0();
        [v114 setAccessibilityCustomContent_];
        v82 = v83;
      }

      result = [v114 accessibilityCustomContent];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v85 = result;
      sub_257BD2C2C(0, &qword_27F8F5F70, 0x277CB88D0);
      v86 = sub_257ECF810();

      v115 = v86;
      v87 = v81;
      MEMORY[0x259C72300]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();
      if (v86)
      {
        v70 = sub_257ECF7F0();
      }

      else
      {
        v70 = 0;
      }

      v67 &= v67 - 1;
      v17 = v114;
      [v114 setAccessibilityCustomContent_];

      v68 = v111;
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v71 >= v68)
      {

        v63 = &selRef_imageByApplyingSymbolConfiguration_;
        goto LABEL_37;
      }

      v67 = *(a1 + 8 * v71);
      ++v69;
      if (v67)
      {
        v69 = v71;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

LABEL_37:
  MEMORY[0x28223BE20](v88, v89, v90, v91, v92);

  sub_257ECFD50();

  if (v116 != 1)
  {
    goto LABEL_40;
  }

  v93 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v94 = sub_257ECF4C0();
  v95 = [v93 v63[244]];

  v96 = [v17 accessibilityAttributedLabel];
  if (v96)
  {
    v97 = v96;

    v98 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  }

  else
  {
    v100 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v97 = sub_257ECF4C0();

    v98 = [v100 v63[244]];
  }

  v101 = v98;

  v99 = v112;
  if ([v112 length] >= 1)
  {
    v102 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v103 = sub_257ECF4C0();
    v104 = [v102 v63[244]];

    [v101 appendAttributedString_];
    [v101 appendAttributedString_];
    [v17 setAccessibilityAttributedLabel_];
  }

LABEL_45:
  v105 = [v99 string];
  v106 = sub_257ECF500();
  v108 = v107;

  v109 = &v17[OBJC_IVAR____TtC16MagnifierSupport26DoorUIAccessibilityElement_textValue];
  *v109 = v106;
  v109[1] = v108;

  return v17;
}

void sub_257C217A0(uint64_t a1)
{
  sub_257C1D94C();
  v2 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v2 + v3) stopPulse];
  v4 = sub_257DFF59C();
  v5 = &v4[OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;

  v6 = 2;
  sub_257CC6340(&v6);
}

id sub_257C21860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v9 = *MEMORY[0x277D764F8];
  *(inited + 32) = *MEMORY[0x277D764F8];
  v10 = *(a5 + 48);
  if (v10 == 1)
  {
    v11 = v9;

    v12 = a3;
    v13 = a4;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = v9;
    v16 = [v14 currentLanguageCode];
    v12 = sub_257ECF500();
    v13 = v17;
  }

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F9420, &qword_257EDA500);
  if (_s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(a3, a4, v10))
  {
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_257ECF4C0();
    _s3__C3KeyVMa_0(0);
    sub_257C242AC(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
    v20 = sub_257ECF3C0();

    v21 = [v18 initWithString:v19 attributes:v20];

    return v21;
  }

  else
  {

    return 0;
  }
}

id sub_257C21A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v9 = *MEMORY[0x277D764F8];
  *(inited + 32) = *MEMORY[0x277D764F8];
  v10 = *(a5 + *(type metadata accessor for DetectedTextBlock(0) + 32));
  if (v10 == 1)
  {
    v11 = v9;

    v12 = a3;
    v13 = a4;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = v9;
    v16 = [v14 currentLanguageCode];
    v12 = sub_257ECF500();
    v13 = v17;
  }

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F9420, &qword_257EDA500);
  if (_s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(a3, a4, v10))
  {
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_257ECF4C0();
    _s3__C3KeyVMa_0(0);
    sub_257C242AC(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
    v20 = sub_257ECF3C0();

    v21 = [v18 initWithString:v19 attributes:v20];

    return v21;
  }

  else
  {

    return 0;
  }
}

void sub_257C21C94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C67178(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
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
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_257C21DC8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_257C21DC8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_257C66E20(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_257C22314((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_257BFCB00(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_257BFCB00((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_257C22314((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_257C22314(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

id sub_257C22508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v13 = *(a2 + 64);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  result = sub_257C21860(v5, v6, v7, v8, v12);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_257C22580(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v14 = &v35[-1] - v13;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v15 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  swift_beginAccess();
  v16 = v15[1];
  v17 = v15[2];
  v35[0] = *v15;
  v35[1] = v16;
  v35[2] = v17;
  v18 = qword_2815447E0;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  *(&v34 - 2) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
  sub_257ECFD50();

  v24 = 1;
  v25 = sub_257C592D0(1u, v35[3]);

  if (v25)
  {
    v26 = sub_257CC211C();
    v27 = [v26 isSpeaking];

    v24 = v27 ^ 1;
  }

  v28 = sub_257ECF930();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  sub_257ECF900();
  v29 = v4;
  v30 = a1;
  v31 = sub_257ECF8F0();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  *(v32 + 32) = v29;
  *(v32 + 40) = v30;
  *(v32 + 48) = a2;
  *(v32 + 56) = a3;
  *(v32 + 64) = v24;
  sub_257C3FBD4(0, 0, v14, &unk_257EDC138, v32);
}

uint64_t sub_257C2285C(uint64_t a1)
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
  v11[1] = sub_257BE3DE0;

  return sub_257C1DDE8(v8, v9, a1, v4, v5, v6, v7, v10);
}

uint64_t sub_257C22950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F48, &qword_257EDC148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C229C0(uint64_t a1)
{
  v2 = type metadata accessor for DetectedDoor(0);
  result = 0;
  v4 = a1 + *(v2 + 40);
  if ((*(v4 + 4) & 1) == 0)
  {
    v5 = *v4 * 1000.0;
    if (COERCE_INT(fabs(v5)) > 2139095039)
    {
      __break(1u);
    }

    else if (v5 > -2147500000.0)
    {
      if (v5 < 2147500000.0)
      {
        return generateTextToDisplay(depth:longUnitStyle:)(v5, 0)._countAndFlagsBits;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_257C22A60(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_257ECF4C0();
  v4 = [v2 initWithString_];

  if (*(a1 + *(type metadata accessor for DetectedDoor(0) + 44)))
  {
    v5 = sub_257D747BC();
    v6 = 0;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
LABEL_12:
      v13 = objc_allocWithZone(MEMORY[0x277CCA898]);

      v14 = sub_257ECF4C0();

      v15 = [v13 initWithString_];

      v16 = [v4 string];
      v17 = sub_257ECF500();
      v19 = v18;

      if (!v17 && v19 == 0xE000000000000000)
      {
      }

      else
      {
        v20 = sub_257ED0640();

        if ((v20 & 1) == 0)
        {
          v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v22 = sub_257ECF4C0();
          v23 = [v21 initWithString_];

          [v4 appendAttributedString_];
        }
      }

      v10 &= v10 - 1;
      [v4 appendAttributedString_];
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_257C22D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C22DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C22E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C22E74(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_257ECF4C0();
  v86 = [v2 initWithString_];

  v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v5 = sub_257ECF4C0();
  v6 = [v4 initWithString_];

  v7 = *(a1 + 16);
  v8 = 0x277CCA000uLL;
  v85 = v6;
  if (v7)
  {
    v9 = (a1 + 32);
    do
    {
      v13 = v9[2];
      v95 = v9[3];
      v96 = *(v9 + 8);
      v14 = *v9;
      v93 = v9[1];
      v94 = v13;
      v92 = v14;
      if (*(&v95 + 1) <= 0.25)
      {
        if (BYTE1(v95))
        {
          sub_257C241DC(&v92, &v87);
          v15 = [v6 length];
          if (v15 >= 1)
          {
            v20 = objc_allocWithZone(*(v8 + 2200));
            v21 = sub_257ECF4C0();
            v22 = [v20 initWithString_];

            [v6 appendAttributedString_];
          }

          v23 = BYTE2(v95);
          if (BYTE2(v95) == 4)
          {
            v10 = objc_allocWithZone(*(v8 + 2200));
            v11 = sub_257ECF4C0();
            v12 = [v10 initWithString_];
          }

          else
          {
            v24 = v92;
            v89 = v94;
            v90 = v95;
            v91 = v96;
            v88 = v93;
            v87 = v92;
            if (v92)
            {
              MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
              v84 = &v87;

              sub_257C82C5C(sub_257C2430C, v83, v24);
              v26 = v25;

              v11 = sub_257E5B998(v26);

              sub_257DE85DC(1);
              v27 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v28 = sub_257ECF4C0();

              v12 = [v27 initWithString_];

              sub_257DE86E0(v23);
              v29 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v30 = sub_257ECF4C0();

              v31 = [v29 initWithString_];

              v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v33 = sub_257ECF4C0();
              v34 = [v32 initWithString_];

              [v12 appendAttributedString_];
              [v12 appendAttributedString_];
              v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v36 = sub_257ECF4C0();
              v37 = [v35 initWithString_];

              v8 = 0x277CCA000;
              [v12 appendAttributedString_];

              [v12 appendAttributedString_];
            }

            else
            {
              sub_257DE86E0(BYTE2(v95));
              v63 = objc_allocWithZone(*(v8 + 2200));
              v11 = sub_257ECF4C0();

              v12 = [v63 initWithString_];
            }

            v6 = v85;
          }

          [v6 appendAttributedString_];
        }

        else
        {
          sub_257C241DC(&v92, &v87);
          v38 = [v86 length];
          if (v38 >= 1)
          {
            v43 = objc_allocWithZone(*(v8 + 2200));
            v44 = sub_257ECF4C0();
            v45 = [v43 initWithString_];

            [v86 appendAttributedString_];
          }

          v46 = BYTE2(v95);
          if (BYTE2(v95) == 4)
          {
            v47 = objc_allocWithZone(*(v8 + 2200));
            v48 = sub_257ECF4C0();
            v12 = [v47 initWithString_];
          }

          else
          {
            v49 = v92;
            v89 = v94;
            v90 = v95;
            v91 = v96;
            v88 = v93;
            v87 = v92;
            if (v92)
            {
              MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
              v84 = &v87;

              sub_257C82C5C(sub_257C2430C, v83, v49);
              v51 = v50;

              v48 = sub_257E5B998(v51);

              sub_257DE85DC(0);
              v52 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v53 = sub_257ECF4C0();

              v12 = [v52 initWithString_];

              sub_257DE86E0(v46);
              v54 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v55 = sub_257ECF4C0();

              v56 = [v54 initWithString_];

              v57 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v58 = sub_257ECF4C0();
              v59 = [v57 initWithString_];

              [v12 appendAttributedString_];
              [v12 appendAttributedString_];
              v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v61 = sub_257ECF4C0();
              v62 = [v60 initWithString_];

              v8 = 0x277CCA000;
              [v12 appendAttributedString_];

              [v12 appendAttributedString_];
            }

            else
            {
              sub_257DE86E0(BYTE2(v95));
              v64 = objc_allocWithZone(*(v8 + 2200));
              v48 = sub_257ECF4C0();

              v12 = [v64 initWithString_];
            }

            v6 = v85;
          }

          [v86 appendAttributedString_];
        }

        sub_257C24238(&v92);
      }

      v9 = (v9 + 72);
      --v7;
    }

    while (v7);
  }

  *&v92 = MEMORY[0x277D84F90];
  v65 = v86;
  if ([v65 length] < 1)
  {

    v73 = MEMORY[0x277D84F90];
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v67 = [objc_opt_self() bundleForClass_];
    v68 = sub_257ECF4C0();
    v69 = sub_257ECF4C0();
    v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

    if (!v70)
    {
      sub_257ECF500();
      v70 = sub_257ECF4C0();
    }

    v8 = 0x277CCA000uLL;
    v71 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

    v72 = [objc_opt_self() customContentWithAttributedLabel:v71 attributedValue:v65];
    MEMORY[0x259C72300]();
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v73 = v92;
    v6 = v85;
  }

  v74 = v6;
  if ([v74 length] < 1)
  {
  }

  else
  {
    type metadata accessor for MAGUtilities();
    v75 = swift_getObjCClassFromMetadata();
    v76 = [objc_opt_self() bundleForClass_];
    v77 = sub_257ECF4C0();
    v78 = sub_257ECF4C0();
    v79 = [v76 localizedStringForKey:v77 value:0 table:v78];

    if (!v79)
    {
      sub_257ECF500();
      v79 = sub_257ECF4C0();
    }

    v80 = [objc_allocWithZone(*(v8 + 2200)) initWithString_];

    v81 = [objc_opt_self() customContentWithAttributedLabel:v80 attributedValue:v74];
    MEMORY[0x259C72300]();
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();

    return v92;
  }

  return v73;
}

id sub_257C23960(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_257ECF4C0();
  v4 = [v2 initWithString_];

  v5 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v6 = sub_257ECF4C0();
  v77 = [v5 initWithString_];

  v7 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v8 = sub_257ECF4C0();
  v75 = [v7 initWithString_];

  v9 = *(a1 + 16);
  v10 = &selRef_imageByApplyingSymbolConfiguration_;
  v11 = 0x277CCA000uLL;
  if (v9)
  {
    v12 = (a1 + 32);
    v76 = v4;
    do
    {
      v16 = v12[2];
      v86 = v12[3];
      v87 = *(v12 + 8);
      v17 = *v12;
      v84 = v12[1];
      v85 = v16;
      v83 = v17;
      if (*(&v86 + 1) <= 0.25)
      {
        if (BYTE1(v86))
        {
          sub_257C241DC(&v83, &v78);
          v18 = [v77 length];
          if (v18 >= 1)
          {
            v23 = objc_allocWithZone(*(v11 + 2200));
            v24 = sub_257ECF4C0();
            v25 = [v23 initWithString_];

            [v77 v10[245]];
          }

          v26 = BYTE2(v86);
          if (BYTE2(v86) == 4)
          {
            v13 = objc_allocWithZone(*(v11 + 2200));
            v14 = sub_257ECF4C0();
            v15 = [v13 initWithString_];
          }

          else
          {
            v27 = v83;
            v80 = v85;
            v81 = v86;
            v82 = v87;
            v79 = v84;
            v78 = v83;
            if (v83)
            {
              MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
              v74 = &v78;

              sub_257C82C5C(sub_257C2428C, v73, v27);
              v29 = v28;

              v14 = sub_257E5B998(v29);

              sub_257DE85DC(1);
              v30 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v31 = sub_257ECF4C0();

              v15 = [v30 initWithString_];

              sub_257DE86E0(v26);
              v32 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v33 = sub_257ECF4C0();

              v34 = [v32 initWithString_];

              v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v36 = sub_257ECF4C0();
              v37 = [v35 initWithString_];

              [v15 appendAttributedString_];
              [v15 appendAttributedString_];
              v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v39 = sub_257ECF4C0();
              v40 = [v38 initWithString_];

              v4 = v76;
              [v15 appendAttributedString_];

              v10 = &selRef_imageByApplyingSymbolConfiguration_;
              v11 = 0x277CCA000uLL;
              [v15 &selRef:v34 setViewControllers:? direction:? animated:? completion:? + 3];
            }

            else
            {
              sub_257DE86E0(BYTE2(v86));
              v66 = objc_allocWithZone(*(v11 + 2200));
              v14 = sub_257ECF4C0();

              v15 = [v66 initWithString_];
              v10 = &selRef_imageByApplyingSymbolConfiguration_;
            }
          }

          [v77 v10[245]];
        }

        else
        {
          sub_257C241DC(&v83, &v78);
          v41 = [v4 length];
          if (v41 >= 1)
          {
            v46 = objc_allocWithZone(*(v11 + 2200));
            v47 = sub_257ECF4C0();
            v48 = [v46 initWithString_];

            [v4 v10[245]];
          }

          v49 = BYTE2(v86);
          if (BYTE2(v86) == 4)
          {
            v50 = objc_allocWithZone(*(v11 + 2200));
            v51 = sub_257ECF4C0();
            v15 = [v50 initWithString_];
          }

          else
          {
            v52 = v83;
            v80 = v85;
            v81 = v86;
            v82 = v87;
            v79 = v84;
            v78 = v83;
            if (v83)
            {
              MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
              v74 = &v78;

              sub_257C82C5C(sub_257C2430C, v73, v52);
              v54 = v53;

              v51 = sub_257E5B998(v54);

              sub_257DE85DC(0);
              v55 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v56 = sub_257ECF4C0();

              v15 = [v55 initWithString_];

              sub_257DE86E0(v49);
              v57 = objc_allocWithZone(MEMORY[0x277CCAB48]);
              v58 = sub_257ECF4C0();

              v59 = [v57 initWithString_];

              v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v61 = sub_257ECF4C0();
              v62 = [v60 initWithString_];

              [v15 appendAttributedString_];
              [v15 appendAttributedString_];
              v63 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v64 = sub_257ECF4C0();
              v65 = [v63 initWithString_];

              v4 = v76;
              [v15 appendAttributedString_];

              v10 = &selRef_imageByApplyingSymbolConfiguration_;
              v11 = 0x277CCA000;
              [v15 &selRef:v59 setViewControllers:? direction:? animated:? completion:? + 3];
            }

            else
            {
              sub_257DE86E0(BYTE2(v86));
              v67 = objc_allocWithZone(*(v11 + 2200));
              v51 = sub_257ECF4C0();

              v15 = [v67 initWithString_];
              v10 = &selRef_imageByApplyingSymbolConfiguration_;
            }
          }

          [v4 v10[245]];
        }

        sub_257C24238(&v83);
      }

      v12 = (v12 + 72);
      --v9;
    }

    while (v9);
  }

  v68 = v75;
  [v75 v10[245]];
  if ([v77 length] >= 1)
  {
    v69 = objc_allocWithZone(*(v11 + 2200));
    v70 = sub_257ECF4C0();
    v71 = [v69 initWithString_];

    [v68 v10[245]];
    [v68 v10[245]];
  }

  return v68;
}

uint64_t sub_257C242AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MAGPointAndSpeakService.__allocating_init(eventHandler:arService:textDetectionService:outputEngine:pulseFeedbackProcessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v38 = sub_257ECFD20();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v6, v7, v8, v9);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v16 = sub_257ECF190();
  MEMORY[0x28223BE20](v16 - 8, v17, v18, v19, v20);
  v21 = swift_allocObject();
  sub_257ECCC70();
  sub_257ECCC70();
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];
  v23 = v22;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur) = 0;
  v24 = v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
  v25 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine;
  *(v21 + v25) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  v26 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager;
  type metadata accessor for RotationRateManager();
  v27 = swift_allocObject();
  *(v27 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v27 + 24) = 0;
  *(v21 + v26) = v27;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = 0;
  v37 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue;
  v35[4] = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF180();
  v44 = v23;
  v35[3] = sub_257C32B44(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200);
  sub_257ED0180();
  v28 = *MEMORY[0x277D85260];
  v29 = *(v5 + 104);
  v35[1] = v5 + 104;
  v30 = v36;
  v31 = v38;
  v29(v36, v28, v38);
  *(v21 + v37) = sub_257ECFD80();
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = 0;
  v37 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue;
  v35[0] = "coration.type.text";
  sub_257ECF160();
  v44 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v29(v30, *MEMORY[0x277D85268], v31);
  *(v21 + v37) = sub_257ECFD80();
  v32 = v40;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_eventHandler) = v39;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService) = v32;
  v33 = v42;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textDetectionService) = v41;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine) = v33;
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor) = v43;
  return v21;
}

uint64_t MAGPointAndSpeakService.init(eventHandler:arService:textDetectionService:outputEngine:pulseFeedbackProcessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v38 = sub_257ECFD20();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v8, v9, v10, v11);
  v37 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v18 = sub_257ECF190();
  MEMORY[0x28223BE20](v18 - 8, v19, v20, v21, v22);
  sub_257ECCC70();
  sub_257ECCC70();
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;
  v23 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur) = 0;
  v24 = v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  *(v5 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
  v25 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine;
  *(v6 + v25) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  v26 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager;
  type metadata accessor for RotationRateManager();
  v27 = swift_allocObject();
  *(v27 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v27 + 24) = 0;
  *(v6 + v26) = v27;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = 0;
  v36 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue;
  v35[4] = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF180();
  v44 = v23;
  v35[3] = sub_257C32B44(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200);
  sub_257ED0180();
  v28 = *MEMORY[0x277D85260];
  v29 = *(v7 + 104);
  v35[1] = v7 + 104;
  v31 = v37;
  v30 = v38;
  v29(v37, v28, v38);
  *(v6 + v36) = sub_257ECFD80();
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = 0;
  v36 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue;
  v35[0] = "coration.type.text";
  sub_257ECF160();
  v44 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v29(v31, *MEMORY[0x277D85268], v30);
  *(v6 + v36) = sub_257ECFD80();
  v32 = v40;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_eventHandler) = v39;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService) = v32;
  v33 = v42;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textDetectionService) = v41;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine) = v33;
  *(v6 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor) = v43;
  return v6;
}

uint64_t sub_257C24D74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_257C24D94, 0, 0);
}

uint64_t sub_257C24D94()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_257C24E84;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000028, 0x8000000257EFA0E0, sub_257C253C4, v1, v3);
}

uint64_t sub_257C24E84()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C24FB8;
  }

  else
  {

    v2 = sub_257C24FA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C24FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_257C2501C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FE0, &unk_257EDC480);
  v20 = *(v19 - 8);
  v25 = MEMORY[0x28223BE20](v19, v21, v22, v23, v24);
  v27 = v33 - v26;
  v33[1] = *(a2 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue);
  (*(v20 + 16))(v33 - v26, a1, v19, v25);
  v28 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v29 = swift_allocObject();
  v30 = v33[0];
  *(v29 + 16) = a2;
  *(v29 + 24) = v30;
  (*(v20 + 32))(v29 + v28, v27, v19);
  aBlock[4] = sub_257C32B90;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_215;
  v31 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECF150();
  v37 = MEMORY[0x277D84F90];
  sub_257C32B44(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v18, v11, v31);
  _Block_release(v31);
  (*(v36 + 8))(v11, v5);
  (*(v34 + 8))(v18, v35);

  return result;
}

uint64_t sub_257C253CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECDA30();
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v8 = *(a2 + 16);
  sub_257C2558C(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FE0, &unk_257EDC480);
  return sub_257ECF8D0();
}

void sub_257C2558C(uint64_t a1)
{
  v3 = v1;
  v81 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECD9D0();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_257ECD990();
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v11, v12, v13, v14);
  v80 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v74 - v21;
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v74 - v28;
  v30 = sub_257ECF200();
  v31 = *(v30 - 8);
  v36 = MEMORY[0x28223BE20](v30, v32, v33, v34, v35);
  v38 = (&v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pointSpeakQueue];
  *v38 = v39;
  (*(v31 + 104))(v38, *MEMORY[0x277D85200], v30, v36);
  v40 = v39;
  LOBYTE(v39) = sub_257ECF230();
  (*(v31 + 8))(v38, v30);
  if (v39)
  {
    v79 = v2;
    if (qword_27F8F45B8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v41 = sub_257ECD9C0();
  __swift_project_value_buffer(v41, qword_27F8F5DC0);
  sub_257ECD980();
  v42 = sub_257ECD9A0();
  v43 = sub_257ECFDC0();
  if (sub_257ED0090())
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v42, v43, v45, "HandPose", "", v44, 2u);
    MEMORY[0x259C74820](v44, -1, -1);
  }

  v46 = v82;
  (*(v10 + 16))(v22, v29, v82);
  sub_257ECDA00();
  swift_allocObject();
  sub_257ECD9F0();
  v47 = *(v10 + 8);
  v47(v29, v46);
  v48 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle];
  v78 = v47;
  if (v48 == 270.0)
  {
    v49 = 8;
  }

  else
  {
    v68 = [objc_opt_self() currentDevice];
    v69 = [v68 orientation];

    if (v69 == 4)
    {
      v49 = 3;
    }

    else if (v69 == 3)
    {
      v49 = 1;
    }

    else
    {
      v49 = 6;
    }
  }

  sub_257BE9394(MEMORY[0x277D84F90]);
  v50 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257C32B44(&qword_27F8F4CD8, type metadata accessor for VNImageOption, &unk_257ED8114);
  v51 = sub_257ECF3C0();

  v52 = [v50 initWithCVPixelBuffer:v81 orientation:v49 options:v51];

  v53 = objc_allocWithZone(MEMORY[0x277CE2C98]);
  aBlock[4] = sub_257C32B8C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257C316F8;
  aBlock[3] = &block_descriptor_209;
  v54 = _Block_copy(aBlock);
  sub_257ECC3F0();

  v55 = [v53 initWithCompletionHandler_];
  _Block_release(v54);
  [v55 setMaximumHandCount_];
  v56 = v55;
  [v56 setRevision_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_257ED9BF0;
  *(v57 + 32) = v56;
  sub_257BD2C2C(0, &qword_27F8F5FD8, 0x277CE2DF0);
  v58 = sub_257ECF7F0();

  aBlock[0] = 0;
  LODWORD(v50) = [v52 performRequests:v58 error:aBlock];

  if (v50)
  {
    v59 = aBlock[0];
    v60 = sub_257ECD9A0();
    v61 = v80;
    sub_257ECD9E0();
    v62 = sub_257ECFDB0();
    if (sub_257ED0090())
    {
      sub_257ECC3F0();
      v63 = v75;
      sub_257ECDA10();

      v65 = v76;
      v64 = v77;
      if ((*(v76 + 88))(v63, v77) == *MEMORY[0x277D85B00])
      {
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v63, v64);
        v66 = "";
      }

      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = v80;
      v72 = sub_257ECD970();
      _os_signpost_emit_with_name_impl(&dword_257BAC000, v60, v62, v72, "HandPose", v66, v70, 2u);
      v73 = v70;
      v61 = v71;
      MEMORY[0x259C74820](v73, -1, -1);
    }

    else
    {

      v52 = v56;
    }

    v78(v61, v82);
  }

  else
  {
    v67 = aBlock[0];
    sub_257ECC9F0();

    swift_willThrow();
  }
}

void sub_257C25D78(void *a1, void *a2)
{
  v3 = v2;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v124 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v123 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v20 - 8, v21, v22, v23, v24);
  v122 = &v118 - v25;
  v26 = sub_257ECDA30();
  v27 = *(v26 - 1);
  MEMORY[0x28223BE20](v26, v28, v29, v30, v31);
  v127 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v39 = &v118 - v38;
  if (a2)
  {
    v125 = v26;
    v126 = v27;
    sub_257ECD3E0();
    v40 = a2;
    v41 = sub_257ECDA20();
    v42 = sub_257ECFBD0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v121 = v6;
      v44 = v43;
      v45 = swift_slowAlloc();
      v120 = v13;
      v46 = v14;
      v47 = v7;
      v48 = v3;
      v49 = v45;
      *v44 = 138412290;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&dword_257BAC000, v41, v42, "Hand-pose request error : %@", v44, 0xCu);
      sub_257BE4084(v49, &unk_27F8F5490, &unk_257EDC470);
      v51 = v49;
      v3 = v48;
      v7 = v47;
      v14 = v46;
      v13 = v120;
      MEMORY[0x259C74820](v51, -1, -1);
      v52 = v44;
      v6 = v121;
      MEMORY[0x259C74820](v52, -1, -1);
    }

    else
    {
    }

    v26 = v125;
    v27 = v126;
    (*(v126 + 8))(v39, v125);
  }

  if (!a1)
  {
    goto LABEL_60;
  }

  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (!v53)
  {
    goto LABEL_60;
  }

  v54 = v53;
  v55 = a1;
  v56 = [v54 results];
  if (!v56)
  {

LABEL_60:
    v112 = v127;
    sub_257ECD3E0();
    v113 = sub_257ECDA20();
    v114 = sub_257ECFBD0();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = v27;
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_257BAC000, v113, v114, "No hand pose points detected", v116, 2u);
      v117 = v116;
      v27 = v115;
      MEMORY[0x259C74820](v117, -1, -1);
    }

    (*(v27 + 8))(v112, v26);
    sub_257C2EB24();
    return;
  }

  v57 = v56;
  sub_257BD2C2C(0, &qword_27F8F5FC8, 0x277CE2D28);
  v58 = sub_257ECF810();

  if (!(v58 >> 62))
  {
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_59:

    goto LABEL_60;
  }

  if (!sub_257ED0210())
  {
    goto LABEL_59;
  }

LABEL_11:
  v119 = v7;
  if ((v58 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x259C72E20](0, v58);
  }

  else
  {
    if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v59 = *(v58 + 32);
  }

  v60 = v59;
  v126 = v27;

  v61 = *MEMORY[0x277CE3028];
  aBlock[0] = 0;
  v62 = [v60 recognizedPointsForJointsGroupName:v61 error:aBlock];
  v63 = aBlock[0];
  if (!v62)
  {
    v77 = aBlock[0];
    v78 = sub_257ECC9F0();

    swift_willThrow();
    v27 = v126;
    goto LABEL_60;
  }

  v64 = v62;
  v125 = v55;
  type metadata accessor for JointName(0);
  sub_257BD2C2C(0, &qword_27F8F5FD0, 0x277CE2DC0);
  sub_257C32B44(&qword_27F8F5038, type metadata accessor for JointName, &unk_257ED9858);
  v65 = sub_257ECF3D0();
  v66 = v63;

  if (!*(v65 + 16))
  {

    v27 = v126;
    goto LABEL_60;
  }

  v118 = *MEMORY[0x277CE2F98];
  v67 = sub_257C04244(v118);
  v68 = v65;
  v27 = v126;
  if ((v69 & 1) == 0)
  {

    goto LABEL_60;
  }

  [*(*(v68 + 56) + 8 * v67) confidence];
  v71 = v70;
  v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand] = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand] + 1.0;
  sub_257D22594(0);
  v72 = COERCE_DOUBLE(sub_257E5C218());
  v73 = 0.0;
  v74 = v125;
  v75 = v68;
  if ((v76 & 1) == 0)
  {
    v73 = v72;
    if (v72 >= 0.03)
    {
      if (v72 <= 0.6)
      {
        goto LABEL_20;
      }

      v95 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements];
      v96 = __OFADD__(v95, 1);
      v97 = v95 + 1;
      if (!v96)
      {
        *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements] = v97;
        v98 = sub_257ECF930();
        v99 = v122;
        (*(*(v98 - 8) + 56))(v122, 1, 1, v98);
        v100 = swift_allocObject();
        v100[2] = 0;
        v100[3] = 0;
        v100[4] = v3;
        sub_257ECC3F0();
        sub_257E81524(0, 0, v99, &unk_257EDC468, v100);

LABEL_40:

        return;
      }

LABEL_65:
      __break(1u);
    }
  }

  v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback] = 0;
LABEL_20:
  [*&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer] invalidate];
  if (v73 < 0.03)
  {
    goto LABEL_39;
  }

  v120 = v13;
  v121 = v6;
  v127 = v14;
  v79 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback;
  if ((v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback] & 1) == 0 && *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage] >= 61 && *(v68 + 16))
  {
    v80 = sub_257ECF930();
    v81 = v122;
    (*(*(v80 - 8) + 56))(v122, 1, 1, v80);
    v82 = swift_allocObject();
    v82[2] = 0;
    v82[3] = 0;
    v82[4] = v3;
    sub_257ECC3F0();
    sub_257E81524(0, 0, v81, &unk_257EDC458, v82);
  }

  v3[v79] = 1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage] = 0;
  v126 = *&v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_textQueue];
  aBlock[4] = sub_257C3298C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_194;
  v83 = _Block_copy(aBlock);
  sub_257ECC3F0();
  v84 = v123;
  sub_257ECF150();
  v128 = MEMORY[0x277D84F90];
  sub_257C32B44(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v85 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  v87 = v120;
  v86 = v121;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v84, v87, v83);
  _Block_release(v83);
  v88 = v85;
  (*(v119 + 8))(v87, v86);
  (*(v124 + 8))(v84, v127);

  if (!*(v85 + 16))
  {

    return;
  }

  v89 = v118;
  sub_257C04244(v118);
  v74 = v125;
  if ((v90 & 1) == 0)
  {
LABEL_39:

    goto LABEL_40;
  }

  if (*(v88 + 16) && (v91 = sub_257C04244(v89), (v92 & 1) != 0))
  {
    v93 = *(*(v88 + 56) + 8 * v91);
    v94 = v93;
  }

  else
  {
    v93 = 0;
  }

  v101 = &v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint];
  if (v3[OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint + 16])
  {
    if (v71 < 0.67)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v93)
  {
    v102 = *v101;
    [v93 x];
    if (vabdd_f64(v102, v103) > 0.01)
    {
      if (v71 >= 0.67)
      {
        goto LABEL_53;
      }

LABEL_52:

      goto LABEL_40;
    }

    if ((v101[2] & 1) == 0)
    {
      v104 = v101[1];
      [v93 y];
      if (v71 >= 0.67 || vabdd_f64(v104, v105) <= 0.01)
      {
LABEL_53:
        if (*(v88 + 16))
        {
          v106 = sub_257C04244(v89);
          if (v107)
          {
            v108 = *(*(v88 + 56) + 8 * v106);

            v109 = v108;
            [v109 x];
            [v109 y];

            CGSizeMake();
            sub_257C2809C(v110, v111, 0, 0, 0, 1u, 0, 0, 0, 1);

LABEL_57:
            return;
          }
        }

LABEL_56:

        goto LABEL_57;
      }

      goto LABEL_52;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}