uint64_t sub_257E84564@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_257E84650(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t (*static MagnifierIntent.description.modify(uint64_t a1, __n128 a2))(uint64_t a1)
{
  if (qword_27F8F47F8 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECC540();
  __swift_project_value_buffer(v2, qword_27F8FB300);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_257E847D0@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

double sub_257E84888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (*a5 == -1)
  {
    v10 = a6(0);
  }

  else
  {
    swift_once();
    v10 = a6(0);
  }

  v11 = v10;
  v12 = __swift_project_value_buffer(v10, a7);
  swift_beginAccess();
  (*(*(v11 - 8) + 24))(v12, a1, v11);
  swift_endAccess();
  return result;
}

uint64_t static MagnifierIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F8FB318 = a1;
  return result;
}

uint64_t MagnifierIntent.perform()(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_257ECF900();
  v1[6] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E84B20, v4, v3);
}

uint64_t sub_257E84B20()
{

  sub_257ECD340();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFC00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Launching Magnifier via intent.", v3, 2u);
    MEMORY[0x259C74820](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  sub_257ECC350();

  v7 = v0[1];

  return v7();
}

uint64_t sub_257E84C38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F8FB2E8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_257E84D3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_257BE3DE0;

  return MagnifierIntent.perform()(a1);
}

uint64_t sub_257E84DD4(uint64_t a1)
{
  v2 = sub_257CF9810();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_257E84E14()
{
  result = qword_27F8FB320;
  if (!qword_27F8FB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB320);
  }

  return result;
}

unint64_t sub_257E84E88()
{
  result = qword_281545A88;
  if (!qword_281545A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A88);
  }

  return result;
}

unint64_t sub_257E84EE0()
{
  result = qword_281545A98;
  if (!qword_281545A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A98);
  }

  return result;
}

id sub_257E8516C(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_27F8F4670 != -1)
  {
    v9 = ObjectType;
    swift_once();
    ObjectType = v9;
  }

  v4 = 118.0;
  if (byte_27F8F8D89)
  {
    v4 = 85.0;
  }

  *&v1[OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_kBottomInset] = v4;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_kSideInset] = 0x4034000000000000;
  v5 = &v1[OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_peopleDetectionText];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v1[OBJC_IVAR____TtC16MagnifierSupport16NoDetectionLabel_doorDetectionText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

void sub_257E85410(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v21, sel_attributedText);
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      sub_257E8655C();
      v7 = a1;
      v8 = sub_257ECFF50();

      if (v8)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = &v2[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__textHeight];
  if (v2[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__textHeight + 8] == 1)
  {
    v20.receiver = v2;
    v20.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v20, sel_attributedText);
    if (v10)
    {
      v11 = v10;
      [v10 size];
      [v11 boundingRectWithSize:8 options:0 context:?];
      Height = CGRectGetHeight(v22);

      *v9 = Height;
      *(v9 + 8) = 0;
    }

    v19.receiver = v2;
    v19.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v19, sel_attributedText);
    if (v13)
    {
      v14 = v13;
      sub_257E85678(v13);
      *&v2[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__rightInset] = v15;
      sub_257E85928(v14);
      *&v2[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__topInset] = v16;
      sub_257E85B38(v14);
      v18 = v17;

      *&v2[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__bottomInset] = v18;
    }
  }
}

void sub_257E85678(_BYTE *a1)
{
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v18 = [v3 currentDevice];
    v19 = [v18 orientation];

    if (v19 == 3)
    {
      return;
    }

    v20 = [v3 currentDevice];
    v21 = [v20 orientation];

    if (v21 == 4)
    {
      [v1 bounds];
      CGRectGetHeight(v25);
      [a1 size];
      return;
    }
  }

  v6 = [a1 string];
  sub_257ECF500();

  v7 = sub_257ECF5E0();

  v8 = sub_257E862EC();
  v9 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = sub_257E862EC();
  if (__OFADD__(v11, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = sub_257E864A8(a1, v10, v11 + 1);
  v14 = [a1 attributedSubstringFromRange_];
  v15 = __OFSUB__(v10, 1);
  v16 = v10 - 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v17 = v14;
  if (v16 < 0)
  {
    v16 = 0;
  }

  else if ([a1 length] < v16)
  {
    v16 = [a1 length];
  }

  if (__OFADD__(v16, 1))
  {
    goto LABEL_25;
  }

  if ([a1 length] < v16 + 1)
  {
    v22 = [a1 length];
    v23 = v22 - v16;
    if (!__OFSUB__(v22, v16))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v23 = 1;
LABEL_19:
  v24 = [a1 attributedSubstringFromRange_];
  [v17 size];
  [v24 size];
  [v1 bounds];
  CGRectGetWidth(v26);
}

void sub_257E85928(id a1)
{
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    [v1 bounds];
    CGRectGetHeight(v12);
    return;
  }

  if (([a1 length] & 0x8000000000000000) != 0)
  {
    v6 = [a1 length];
    v7 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  if ([a1 length] >= v7)
  {
    goto LABEL_9;
  }

  v8 = [a1 length];
  v9 = v8 - v6;
  if (__OFSUB__(v8, v6))
  {
    __break(1u);
LABEL_9:
    v9 = 1;
  }

  a1 = [a1 attributedSubstringFromRange_];
  [a1 size];
  v10 = [v3 currentDevice];
  v11 = [v10 orientation];

  if (v11 == 2)
  {
LABEL_17:

    return;
  }

  if (v11 == 3 || v11 == 4)
  {
    [v1 bounds];
    CGRectGetWidth(v13);
  }

  else
  {
    [v1 bounds];
    CGRectGetHeight(v14);
  }
}

void sub_257E85B38(id a1)
{
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    return;
  }

  if (([a1 length] & 0x8000000000000000) != 0)
  {
    v6 = [a1 length];
    v7 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  if ([a1 length] >= v7)
  {
    goto LABEL_8;
  }

  v8 = [a1 length];
  v9 = v8 - v6;
  if (__OFSUB__(v8, v6))
  {
    __break(1u);
LABEL_8:
    v9 = 1;
  }

  a1 = [a1 attributedSubstringFromRange_];
  [a1 size];
  v10 = [v3 currentDevice];
  v11 = [v10 orientation];

  if (v11 == 2)
  {
LABEL_16:
    [v1 bounds];
    CGRectGetHeight(v13);

    return;
  }

  if (v11 == 3 || v11 == 4)
  {
    [v1 bounds];
    CGRectGetWidth(v12);
  }

  else
  {
  }
}

void sub_257E85D30(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_rotateIfPossibleTo_, a1);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, sel_attributedText);
  if (v4)
  {
    v5 = v4;
    sub_257E85678(v4);
    *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__rightInset] = v6;
    sub_257E85928(v5);
    *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__topInset] = v7;
    sub_257E85B38(v5);
    v9 = v8;

    *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__bottomInset] = v9;
  }
}

id sub_257E85E44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kBottomInset;
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v11 = 96.0;
  if (byte_27F8F8D89)
  {
    v11 = 60.0;
    v12 = 60.0;
  }

  else
  {
    v12 = 100.0;
  }

  if (byte_27F8F8D89)
  {
    v13 = 34.0;
  }

  else
  {
    v13 = 60.0;
  }

  if (byte_27F8F8D89)
  {
    v14 = 32.22;
  }

  else
  {
    v14 = 47.08;
  }

  *&v4[v10] = v11;
  v15 = objc_opt_self();
  v16 = [v15 monospacedDigitSystemFontOfSize:v12 weight:*MEMORY[0x277D743F8]];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kDigitFont] = v16;
  v17 = [v15 monospacedDigitSystemFontOfSize:v13 weight:*MEMORY[0x277D74420]];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kUnitFont] = v17;
  v18 = [v15 monospacedDigitSystemFontOfSize:v14 weight:*MEMORY[0x277D74418]];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kSpaceFont] = v18;
  v19 = &v4[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__textHeight];
  *v19 = 0;
  v19[8] = 1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__rightInset] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__topInset] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__bottomInset] = 0;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_257E86058(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kBottomInset;
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v5 = 96.0;
  if (byte_27F8F8D89)
  {
    v5 = 60.0;
    v6 = 60.0;
  }

  else
  {
    v6 = 100.0;
  }

  if (byte_27F8F8D89)
  {
    v7 = 34.0;
  }

  else
  {
    v7 = 60.0;
  }

  if (byte_27F8F8D89)
  {
    v8 = 32.22;
  }

  else
  {
    v8 = 47.08;
  }

  *&v1[v4] = v5;
  v9 = objc_opt_self();
  v10 = [v9 monospacedDigitSystemFontOfSize:v6 weight:*MEMORY[0x277D743F8]];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kDigitFont] = v10;
  v11 = [v9 monospacedDigitSystemFontOfSize:v7 weight:*MEMORY[0x277D74420]];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kUnitFont] = v11;
  v12 = [v9 monospacedDigitSystemFontOfSize:v8 weight:*MEMORY[0x277D74418]];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel_kSpaceFont] = v12;
  v13 = &v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__textHeight];
  *v13 = 0;
  v13[8] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__rightInset] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__topInset] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport10DepthLabel__bottomInset] = 0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_257E862EC()
{
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
  sub_257ECFD50();

  v6 = objc_opt_self();
  v7 = &selRef_feet;
  if (!v12)
  {
    v7 = &selRef_meters;
  }

  v8 = [v6 *v7];
  v9 = [v8 symbol];

  sub_257ECF500();
  v10 = sub_257ECF5E0();

  return v10;
}

_BYTE *sub_257E864A8(_BYTE *result, uint64_t a2, int64_t a3)
{
  v4 = result;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  v5 = a2;
  result = [result length];
  if (result < v5)
  {
    result = [v4 length];
    v5 = result;
  }

  if (a3 < 0)
  {
    return v5;
  }

  while (!__OFADD__(a3, v5))
  {
    if ([v4 length] < a3 + v5)
    {
      result = [v4 length];
      a3 = &result[-v5];
      if (__OFSUB__(result, v5))
      {
        __break(1u);
LABEL_10:
        v5 = 0;
        if ((a3 & 0x8000000000000000) == 0)
        {
          continue;
        }
      }
    }

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_257E8655C()
{
  result = qword_27F8F6E48;
  if (!qword_27F8F6E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F6E48);
  }

  return result;
}

uint64_t sub_257E865A8(uint64_t a1)
{
  v1 = 1667851624;
  v2 = sub_257ECF500();
  v4 = v3;
  if (v2 == sub_257ECF500() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_257ED0640();

  if ((v7 & 1) == 0)
  {
    v1 = 1718183272;
    v8 = sub_257ECF500();
    v10 = v9;
    if (v8 == sub_257ECF500() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_257ED0640();

    if ((v13 & 1) == 0)
    {
      v1 = 6778986;
      v14 = sub_257ECF500();
      v16 = v15;
      if (v14 == sub_257ECF500() && v16 == v17)
      {
LABEL_13:

        return v1;
      }

      v19 = sub_257ED0640();

      if ((v19 & 1) == 0)
      {
        v20 = sub_257ECF500();
        v22 = v21;
        if (v20 == sub_257ECF500() && v22 == v23)
        {
        }

        else
        {
          v24 = sub_257ED0640();

          if ((v24 & 1) == 0)
          {
            return 0;
          }
        }

        return 6711668;
      }
    }
  }

  return v1;
}

id sub_257E867E0(uint64_t a1)
{
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v87 = &v86 - v15;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v86 - v21;
  v23 = sub_257ECDA30();
  v89 = *(v23 - 8);
  v90 = v23;
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v88 = &v86 - v35;
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v42 = &v86 - v41;
  v43 = [objc_opt_self() defaultManager];
  sub_257ECCB50();
  v44 = sub_257ECF4C0();

  v45 = [v43 fileExistsAtPath_];

  if (v45)
  {
    v46 = v2;
    v47 = sub_257ECCAE0();
    v48 = CGImageSourceCreateWithURL(v47, 0);

    if (v48)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v48, 0, 0);
      if (ImageAtIndex)
      {
        v50 = ImageAtIndex;
        v51 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:ImageAtIndex scale:sub_257E879E8() orientation:1.0];

        return v51;
      }

      v73 = v2;
      v74 = v88;
      sub_257ECD360();
      v75 = v87;
      (*(v3 + 16))(v87, a1, v2);
      v76 = sub_257ECDA20();
      v77 = sub_257ECFBD0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v91 = v79;
        *v78 = 136315138;
        v80 = sub_257ECCB50();
        v81 = v75;
        v83 = v82;
        (*(v3 + 8))(v81, v73);
        v84 = sub_257BF1FC8(v80, v83, &v91);

        *(v78 + 4) = v84;
        _os_log_impl(&dword_257BAC000, v76, v77, "Error in CGImageSourceCreateImageAtIndex for %s", v78, 0xCu);
        v85 = __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x259C74820](v79, -1, -1, v85);
        MEMORY[0x259C74820](v78, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v75, v73);
      }

      (*(v89 + 8))(v74, v90);
    }

    else
    {
      sub_257ECD360();
      v63 = v3;
      (*(v3 + 16))(v9, a1, v2);
      v64 = sub_257ECDA20();
      v65 = sub_257ECFBD0();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v91 = v67;
        *v66 = 136315138;
        v68 = sub_257ECCB50();
        v70 = v69;
        (*(v63 + 8))(v9, v46);
        v71 = sub_257BF1FC8(v68, v70, &v91);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_257BAC000, v64, v65, "Error in CGImageSourceCreateWithURL for %s", v66, 0xCu);
        v72 = __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x259C74820](v67, -1, -1, v72);
        MEMORY[0x259C74820](v66, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v9, v46);
      }

      (*(v89 + 8))(v29, v90);
    }
  }

  else
  {
    sub_257ECD360();
    (*(v3 + 16))(v22, a1, v2);
    v53 = sub_257ECDA20();
    v54 = sub_257ECFBD0();
    v55 = v2;
    if (os_log_type_enabled(v53, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v91 = v57;
      *v56 = 136315138;
      v58 = sub_257ECCB50();
      v60 = v59;
      (*(v3 + 8))(v22, v55);
      v61 = sub_257BF1FC8(v58, v60, &v91);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_257BAC000, v53, v54, "File does not exist at path %s", v56, 0xCu);
      v62 = __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x259C74820](v57, -1, -1, v62);
      MEMORY[0x259C74820](v56, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v22, v2);
    }

    (*(v89 + 8))(v42, v90);
  }

  return 0;
}

id sub_257E86E70(uint64_t a1)
{
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v90 = &v90 - v15;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v90 - v21;
  v23 = sub_257ECDA30();
  v92 = *(v23 - 8);
  v93 = v23;
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v91 = &v90 - v35;
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v42 = &v90 - v41;
  v43 = [objc_opt_self() defaultManager];
  sub_257ECCB50();
  v44 = sub_257ECF4C0();

  v45 = [v43 fileExistsAtPath_];

  if (v45)
  {
    v46 = sub_257ECCAE0();
    v47 = CGImageSourceCreateWithURL(v46, 0);

    if (v47)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB388, &qword_257EEF560);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED9BD0;
      v49 = *MEMORY[0x277CD3570];
      *(inited + 32) = *MEMORY[0x277CD3570];
      v50 = MEMORY[0x277D839B0];
      *(inited + 40) = 1;
      v51 = *MEMORY[0x277CD3660];
      *(inited + 64) = v50;
      *(inited + 72) = v51;
      *(inited + 104) = MEMORY[0x277D85048];
      *(inited + 80) = 0x4060000000000000;
      v52 = v49;
      v53 = v51;
      sub_257BE8F18(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55C0, &qword_257EDA510);
      swift_arrayDestroy();
      type metadata accessor for CFString(0);
      sub_257E87AD0();
      v54 = sub_257ECF3C0();

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v47, 0, v54);

      if (ThumbnailAtIndex)
      {
        v56 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:ThumbnailAtIndex scale:sub_257E879E8() orientation:1.0];

        return v56;
      }

      v78 = v91;
      sub_257ECD360();
      v79 = v90;
      (*(v3 + 16))(v90, a1, v2);
      v80 = sub_257ECDA20();
      v81 = sub_257ECFBD0();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v94[0] = v83;
        *v82 = 136315138;
        v84 = sub_257ECCB50();
        v85 = v79;
        v87 = v86;
        (*(v3 + 8))(v85, v2);
        v88 = sub_257BF1FC8(v84, v87, v94);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_257BAC000, v80, v81, "Error in CGImageSourceCreateThumbnailAtIndex for %s", v82, 0xCu);
        v89 = __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x259C74820](v83, -1, -1, v89);
        MEMORY[0x259C74820](v82, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v79, v2);
      }

      (*(v92 + 8))(v78, v93);
    }

    else
    {
      sub_257ECD360();
      v68 = v2;
      (*(v3 + 16))(v9, a1, v2);
      v69 = sub_257ECDA20();
      v70 = sub_257ECFBD0();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v94[0] = v72;
        *v71 = 136315138;
        v73 = sub_257ECCB50();
        v75 = v74;
        (*(v3 + 8))(v9, v68);
        v76 = sub_257BF1FC8(v73, v75, v94);

        *(v71 + 4) = v76;
        _os_log_impl(&dword_257BAC000, v69, v70, "Error in CGImageSourceCreateWithURL for %s", v71, 0xCu);
        v77 = __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x259C74820](v72, -1, -1, v77);
        MEMORY[0x259C74820](v71, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v9, v2);
      }

      (*(v92 + 8))(v29, v93);
    }
  }

  else
  {
    sub_257ECD360();
    (*(v3 + 16))(v22, a1, v2);
    v58 = sub_257ECDA20();
    v59 = sub_257ECFBD0();
    v60 = v2;
    if (os_log_type_enabled(v58, v59))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v94[0] = v62;
      *v61 = 136315138;
      v63 = sub_257ECCB50();
      v65 = v64;
      (*(v3 + 8))(v22, v60);
      v66 = sub_257BF1FC8(v63, v65, v94);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_257BAC000, v58, v59, "File does not exist at path %s", v61, 0xCu);
      v67 = __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x259C74820](v62, -1, -1, v67);
      MEMORY[0x259C74820](v61, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v22, v2);
    }

    (*(v92 + 8))(v42, v93);
  }

  return 0;
}

id sub_257E875E8(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECDA30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultManager];
  v19 = sub_257ECCAE0();
  v40[0] = 0;
  v20 = [v18 removeItemAtURL:v19 error:v40];

  v21 = v40[0];
  if (v20)
  {

    return v21;
  }

  else
  {
    v38 = v11;
    v39 = v40[0];
    v23 = v40[0];
    v24 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD360();
    (*(v3 + 16))(v9, a1, v2);
    v25 = v24;
    v26 = sub_257ECDA20();
    v27 = sub_257ECFBD0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40[0] = v37;
      *v28 = 136315394;
      v29 = sub_257ECCB50();
      v39 = v10;
      v31 = v30;
      (*(v3 + 8))(v9, v2);
      v32 = sub_257BF1FC8(v29, v31, v40);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_257ED0720();
      v35 = sub_257BF1FC8(v33, v34, v40);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_257BAC000, v26, v27, "Could not delete file %s. Error: %s", v28, 0x16u);
      v36 = v37;
      swift_arrayDestroy();
      MEMORY[0x259C74820](v36, -1, -1);
      MEMORY[0x259C74820](v28, -1, -1);

      return (*(v38 + 8))(v17, v39);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
      return (*(v38 + 8))(v17, v10);
    }
  }
}

CFDictionaryRef sub_257E879E8()
{
  result = CGImageSourceCopyPropertiesAtIndex(v0, 0, 0);
  if (result)
  {
    v2 = result;
    if ([(__CFDictionary *)result __swift_objectForKeyedSubscript:*MEMORY[0x277CD3410]])
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if (swift_dynamicCast())
      {
        v3 = sub_257D06454(v4);

        return v3;
      }
    }

    else
    {

      sub_257C3A464(v7);
    }

    return 0;
  }

  return result;
}

unint64_t sub_257E87AD0()
{
  result = qword_27F8F4C08;
  if (!qword_27F8F4C08)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4C08);
  }

  return result;
}

uint64_t sub_257E87B28(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  sub_257ECF900();
  v2[64] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();
  v2[65] = v4;
  v2[66] = v3;

  return MEMORY[0x2822009F8](sub_257E87BC4, v4, v3);
}

uint64_t sub_257E87BC4()
{
  v1 = v0[62];
  [v1 topLeft];
  v0[67] = v2;
  v0[68] = v3;
  [v1 bottomLeft];
  v0[69] = v4;
  v0[70] = v5;
  [v1 topRight];
  v0[71] = v6;
  v0[72] = v7;
  [v1 bottomRight];
  v0[73] = v8;
  v0[74] = v9;
  v10 = swift_task_alloc();
  v0[75] = v10;
  *v10 = v0;
  v10[1] = sub_257E87CC8;

  return MAGFrameProviderService.currentFrame.getter();
}

uint64_t sub_257E87CC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 608) = a1;
  *(v4 + 616) = v1;

  v5 = *(v3 + 528);
  v6 = *(v3 + 520);
  if (v1)
  {
    v7 = sub_257E883A8;
  }

  else
  {
    v7 = sub_257E87E10;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_257E87E10()
{
  v84 = v0;

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 608);
  if (Strong)
  {
    v3 = Strong;
    Width = CVPixelBufferGetWidth(*(v0 + 608));
    Height = CVPixelBufferGetHeight(v2);
    v6 = v3;
    [v6 bounds];
    v7 = CGRectGetHeight(v92);
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v93.origin.x = v9;
    v93.origin.y = v11;
    v93.size.width = v13;
    v93.size.height = v15;
    v16 = CGRectGetWidth(v93);
    if (v16 == 0.0)
    {
      v2 = *(v0 + 608);
      v17 = v6;
    }

    else
    {
      v18 = v16;
      v19 = Width / v16 / (Height / v7);
      if (qword_27F8F4668 != -1)
      {
        swift_once();
      }

      v74 = *(v0 + 584);
      v72 = *(v0 + 568);
      v68 = *(v0 + 560);
      v20 = *(v0 + 544);
      point = *(v0 + 536);
      point_8 = *(v0 + 552);
      v21 = *(v0 + 504);
      v22 = 2.0;
      if (byte_27F8F8D88)
      {
        v22 = 20.0;
      }

      v23 = v19 * v22;
      CGAffineTransformMakeScale(&v83, 1.0, -1.0);
      v24 = *&v83.c;
      v25 = *&v83.tx;
      *(v0 + 16) = *&v83.a;
      *(v0 + 32) = v24;
      *(v0 + 48) = v25;
      CGAffineTransformTranslate(&v83, (v0 + 16), -v18 / v23, -v7);
      b = v83.b;
      c = v83.c;
      d = v83.d;
      v66 = v83.c;
      tx = v83.tx;
      ty = v83.ty;
      a = v83.a;
      *(v0 + 64) = 0x3FF0000000000000;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0x3FF0000000000000;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      CGAffineTransformScale(&v83, (v0 + 64), v18 * v19, v7);
      v29 = v83.b;
      v30 = v83.c;
      v31 = v83.d;
      v32 = v83.tx;
      v33 = v83.ty;
      v75 = v83.a;
      v76 = v83.tx;
      v73 = v7;
      *(v0 + 112) = v83.a;
      *(v0 + 120) = v29;
      v34 = v29;
      v79 = v31;
      v80 = v29;
      *(v0 + 128) = v30;
      *(v0 + 136) = v31;
      v35 = v31;
      *(v0 + 144) = v32;
      *(v0 + 152) = v33;
      v36 = v33;
      v77 = v30;
      v78 = v33;
      v86.x = point;
      v86.y = v20;
      v87 = CGPointApplyAffineTransform(v86, (v0 + 112));
      *(v0 + 160) = a;
      *(v0 + 168) = b;
      *(v0 + 176) = c;
      *(v0 + 184) = d;
      *(v0 + 192) = tx;
      *(v0 + 200) = ty;
      v37 = CGPointApplyAffineTransform(v87, (v0 + 160));
      *(v0 + 208) = v75;
      *(v0 + 216) = v34;
      *(v0 + 224) = v77;
      *(v0 + 232) = v35;
      *(v0 + 240) = v76;
      *(v0 + 248) = v36;
      v88.x = point_8;
      v88.y = v68;
      v89 = CGPointApplyAffineTransform(v88, (v0 + 208));
      *(v0 + 256) = a;
      *(v0 + 264) = b;
      point_8a = v18;
      *(v0 + 272) = v66;
      *(v0 + 280) = d;
      *(v0 + 288) = tx;
      *(v0 + 296) = ty;
      v38 = CGPointApplyAffineTransform(v89, (v0 + 256));
      *(v0 + 304) = v75;
      *(v0 + 312) = v80;
      *(v0 + 320) = v77;
      *(v0 + 328) = v79;
      *(v0 + 336) = v76;
      *(v0 + 344) = v78;
      v90 = CGPointApplyAffineTransform(v72, (v0 + 304));
      *(v0 + 352) = a;
      *(v0 + 360) = b;
      *(v0 + 368) = v66;
      *(v0 + 376) = d;
      *(v0 + 384) = tx;
      *(v0 + 392) = ty;
      v39 = CGPointApplyAffineTransform(v90, (v0 + 352));
      *(v0 + 400) = v75;
      *(v0 + 408) = v80;
      *(v0 + 416) = v77;
      *(v0 + 424) = v79;
      *(v0 + 432) = v76;
      *(v0 + 440) = v78;
      v91 = CGPointApplyAffineTransform(v74, (v0 + 400));
      *(v0 + 448) = a;
      *(v0 + 456) = b;
      *(v0 + 464) = v66;
      *(v0 + 472) = d;
      *(v0 + 480) = tx;
      *(v0 + 488) = ty;
      v40 = CGPointApplyAffineTransform(v91, (v0 + 448));
      v41 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
      v17 = v41;
      if (v37.x > 0.0)
      {
        x = v37.x;
      }

      else
      {
        x = 0.0;
      }

      if (v37.y > 0.0)
      {
        y = v37.y;
      }

      else
      {
        y = 0.0;
      }

      [v41 moveToPoint_];
      v44 = v38.x;
      if (v38.x <= 0.0)
      {
        v44 = 0.0;
      }

      v45 = v38.y;
      if (v73 + -12.5 < v38.y)
      {
        v45 = v73 + -12.5;
      }

      [v17 addLineToPoint_];
      v46 = v18 + -12.5;
      if (point_8a + -12.5 >= v40.x)
      {
        v47 = v40.x;
      }

      else
      {
        v47 = point_8a + -12.5;
      }

      if (v73 + -12.5 >= v40.y)
      {
        v48 = v40.y;
      }

      else
      {
        v48 = v73 + -12.5;
      }

      [v17 addLineToPoint_];
      v49 = v39.x;
      v50 = v39.y;
      if (v46 < v39.x)
      {
        v49 = v46;
      }

      if (v39.y <= 0.0)
      {
        v50 = 0.0;
      }

      [v17 addLineToPoint_];
      if (v37.y + 3.0 > 0.0)
      {
        v51 = v37.y + 3.0;
      }

      else
      {
        v51 = 0.0;
      }

      [v17 addLineToPoint_];
      v52 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer;
      v53 = *(v21 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer);
      v54 = [v17 CGPath];
      [v53 setPath_];

      v55 = sub_257DFF59C();
      [v55 setIsAccessibilityElement_];

      v56 = *(v21 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer);
      v57 = *(v21 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView);
      v58 = *(v56 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView);
      *(v56 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView) = v57;
      v59 = v57;

      v60 = [*(v21 + v52) superlayer];
      if (v60)
      {
        v2 = *(v0 + 608);
      }

      else
      {
        v61 = swift_unknownObjectWeakLoadStrong();
        v2 = *(v0 + 608);
        if (v61)
        {
          v62 = v61;
          v63 = *(v21 + v52);
          [v62 insertSublayer:v63 atIndex:1];

          v17 = v63;
          v2 = v62;
          goto LABEL_36;
        }
      }
    }

LABEL_36:
  }

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_257E883A8()
{
  v1 = *(v0 + 616);

  sub_257BEBEF0();
  swift_allocError();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 2;
  *(v2 + 24) = 4;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

id sub_257E8845C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemYellowColor];
  v6 = [v5 CGColor];

  [v4 setStrokeColor_];
  v7 = *(v0 + v1);
  v8 = [v3 clearColor];
  v9 = [v8 CGColor];

  [v7 setFillColor_];
  v10 = *(v0 + v1);

  return [v10 setLineWidth_];
}

void sub_257E88588(uint64_t a1, uint64_t a2)
{
  sub_257E88CD0();
  sub_257CF5978();
  v5 = sub_257ECFA60();
  v21.receiver = v2;
  v21.super_class = type metadata accessor for AppViewController(0);
  objc_msgSendSuper2(&v21, sel_touchesBegan_withEvent_, v5, a2);

  v6 = sub_257DF8CE8(a1);
  if (v6)
  {
    v7 = v6;
    v8 = [v2 view];
    [v7 locationInView_];
    v10 = v9;
    v12 = v11;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v18)
    {
      sub_257D98414(v17, v18, v19, v20);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v17 == 1)
      {
        v13 = qword_27F8F4668;
        v14 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer];
        if (v13 != -1)
        {
          swift_once();
        }

        if (byte_27F8F8D88 == 1)
        {
          sub_257E887D8();
          v10 = v15;
          v12 = v16;
        }

        sub_257DC1410(v10, v12);
      }
    }
  }
}

void sub_257E887D8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer) + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
    v3 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator;
    v4 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
    if (v4)
    {
      v5 = v1;
      [v4 videoRotationAngleForHorizonLevelCapture];
      if (v6 == 90.0)
      {

LABEL_7:
        CGSizeMake();
        return;
      }

      v8 = *(v2 + v3);
      if (v8)
      {
        [v8 videoRotationAngleForHorizonLevelCapture];
        if (v9 == 180.0)
        {
          [v5 bounds];
          CGRectGetHeight(v22);

          goto LABEL_7;
        }

        v10 = *(v2 + v3);
        if (v10)
        {
          [v10 videoRotationAngleForHorizonLevelCapture];
          if (v11 == 270.0)
          {
            v12 = v5;
            [v12 bounds];
            CGRectGetWidth(v23);
            [v12 bounds];
            v14 = v13;
            v16 = v15;
            v18 = v17;
            v20 = v19;

            v24.origin.x = v14;
            v24.origin.y = v16;
            v24.size.width = v18;
            v24.size.height = v20;
            CGRectGetHeight(v24);

            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      v7 = v1;
    }

    [v1 bounds];
    CGRectGetWidth(v21);

    goto LABEL_7;
  }
}

void sub_257E889C0(uint64_t a1, uint64_t a2)
{
  sub_257E88CD0();
  sub_257CF5978();
  v5 = sub_257ECFA60();
  v21.receiver = v2;
  v21.super_class = type metadata accessor for AppViewController(0);
  objc_msgSendSuper2(&v21, sel_touchesMoved_withEvent_, v5, a2);

  v6 = sub_257DF8CE8(a1);
  if (v6)
  {
    v7 = v6;
    v8 = [v2 view];
    [v7 locationInView_];
    v10 = v9;
    v12 = v11;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v18)
    {
      sub_257D98414(v17, v18, v19, v20);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v17 == 1)
      {
        v13 = qword_27F8F4668;
        v14 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer];
        if (v13 != -1)
        {
          swift_once();
        }

        if (byte_27F8F8D88 == 1)
        {
          sub_257E887D8();
          v10 = v15;
          v12 = v16;
        }

        sub_257DC169C(v10, v12, 0.0, 0.0);
      }
    }
  }
}

double sub_257E88C30(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_257E88CD0();
  sub_257CF5978();
  v8 = sub_257ECFA70();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

unint64_t sub_257E88CD0()
{
  result = qword_27F8F78B0;
  if (!qword_27F8F78B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F78B0);
  }

  return result;
}

double sub_257E88D1C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_257E88D9C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257E2BF60(v2, v3, v4, v5);
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

void sub_257E88E3C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257E88EBC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

void sub_257E88F30(void *a1, double a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30, &qword_257EEBBA0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView;
  *&v3[v15] = [objc_allocWithZone(type metadata accessor for MFGrabber()) init];
  v16 = OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_contentView;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v17 = objc_opt_self();
  v18 = [objc_opt_self() effectWithStyle_];
  v19 = [v17 visualEffectViewAllowingBlur:0 withBlurEffect:v18];

  if (v19)
  {
    *&v3[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backgroundBlur] = v19;
    v20 = OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_internalDraggableView;
    *&v3[v20] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v21 = OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_shadowView;
    *&v3[v21] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v22 = OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backdropView;
    *&v3[v22] = [objc_allocWithZone(MEMORY[0x277D763C8]) init];
    *&v3[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card] = a1;
    v23 = &v3[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_configuration];
    *v23 = a2;
    v23[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_257ED9BF0;
    v25 = *&v3[v14];
    v3[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] = 1;
    *&v3[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_heightOfPanAreaAboveDrawer] = 0x403E000000000000;
    *(v24 + 32) = v25;
    *&v3[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews] = v24;
    v26 = type metadata accessor for MFPassthroughView();
    v32.receiver = v3;
    v32.super_class = v26;
    v27 = a1;
    v28 = v25;
    v29 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_257E8927C();
    sub_257E89634();
    v30 = sub_257ECC810();
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    sub_257E89D88(v13);
    sub_257E8A550(v13);
    v31 = [objc_opt_self() defaultCenter];
    [v31 addObserver:v29 selector:sel_updateAppearanceForReduceTransparency_ name:*MEMORY[0x277D764C8] object:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_257E8927C()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView];
  v4 = [v1 clearColor];
  [v3 setBackgroundColor_];

  [v0 addSubview_];
  v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_internalDraggableView];
  v6 = [v1 clearColor];
  [v5 setBackgroundColor_];

  [v5 setClipsToBounds_];
  if (sub_257ECF030())
  {
    [v5 ax:1 setWantsFlexibleGlassAppearance:?];
    v7 = [v5 layer];
    v8 = [objc_opt_self() mainScreen];
    v9 = [v8 traitCollection];

    [v9 displayCornerRadius];
    v11 = v10;

    [v7 setCornerRadius_];
  }

  else
  {
    v12 = [v5 layer];
    [v12 setCornerRadius_];

    v7 = [v5 layer];
    if (qword_281544A80 != -1)
    {
      swift_once();
    }

    [v7 setCornerCurve_];
  }

  v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backdropView];
  [v13 setRenderMode_];
  [v3 addSubview_];
  [v3 addSubview_];
  [v3 addSubview_];
  v14 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backgroundBlur];
  v15 = sub_257ECF4C0();
  [v14 _setGroupName_];

  [v14 _setCaptureView_];
  [v5 addSubview_];
  v16 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_contentView];
  [v16 addSubview_];
  v17 = [v14 contentView];
  [v17 addSubview_];

  v18 = [v14 contentView];
  [v18 addSubview_];
}

void sub_257E89634()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_contentView];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  v50 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_internalDraggableView];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backgroundBlur];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_shadowView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backdropView] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  sub_257EB6FD8(v4, *MEMORY[0x277D768C8], v6, v7, v8);

  sub_257EB6FD8(v4, v5, v6, v7, v8);

  sub_257EB6FD8(v4, v5, v6, v7, v8);

  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257EDED10;
  v10 = [v2 topAnchor];
  v11 = [v4 &selRef_dataForKey_];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [v2 leadingAnchor];
  v14 = [v3 contentView];
  v15 = [v14 &selRef_configuration + 1];

  v16 = [v13 constraintEqualToAnchor_];
  *(v9 + 40) = v16;
  v17 = [v2 trailingAnchor];
  v18 = [v3 contentView];
  v19 = [v18 &selRef_setImage_forState_ + 4];

  v20 = [v17 constraintEqualToAnchor_];
  *(v9 + 48) = v20;
  sub_257C80FFC();
  v21 = sub_257ECF7F0();

  [v52 activateConstraints_];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257EDBE40;
  v23 = [v49 topAnchor];
  v24 = [v4 topAnchor];
  v25 = [v23 &selRef_usesLanguageDetection + 5];

  *(v22 + 32) = v25;
  v26 = [v49 leadingAnchor];
  v27 = [v3 contentView];
  v28 = [v27 leadingAnchor];

  v29 = [v26 &selRef_usesLanguageDetection + 5];
  *(v22 + 40) = v29;
  v30 = [v49 trailingAnchor];
  v31 = [v3 contentView];
  v32 = [v31 trailingAnchor];

  v33 = [v30 &selRef_usesLanguageDetection + 5];
  *(v22 + 48) = v33;
  v34 = [v49 bottomAnchor];
  v35 = [v3 contentView];
  v36 = [v35 bottomAnchor];

  v37 = [v34 &selRef_usesLanguageDetection + 5];
  *(v22 + 56) = v37;
  v38 = sub_257ECF7F0();

  [v52 activateConstraints_];

  sub_257EB6FD8(v49, v5, v6, v7, v8);

  sub_257EB6FD8(v50, v5, v6, v7, v8);

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_257EDED10;
  v40 = [v4 bottomAnchor];
  v41 = [v1 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v39 + 32) = v42;
  v43 = [v4 leadingAnchor];
  v44 = [v1 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v39 + 40) = v45;
  v46 = [v4 trailingAnchor];
  v47 = [v1 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v39 + 48) = v48;
  v51 = sub_257ECF7F0();

  [v52 activateConstraints_];
}

void sub_257E89D88(uint64_t a1)
{
  v2 = sub_257ECF030();
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backgroundBlur);
  v4 = [v3 backgroundView];
  v5 = v4;
  if (v2)
  {
    if (v4)
    {
      v6 = [objc_opt_self() clearColor];
      [v5 setBackgroundColor_];
    }

    v12 = [v3 layer];
    v7 = [objc_opt_self() mainScreen];
    v8 = [v7 traitCollection];

    [v8 displayCornerRadius];
    v10 = v9;

    [v12 setCornerRadius_];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.6;
    }

    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v11];
    [v5 setBackgroundColor_];
  }
}

void sub_257E8A064()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  if (sub_257ECF030())
  {
    v1 = [v0 window];
    if (v1)
    {
      v2 = v1;
      v3 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_internalDraggableView] layer];
      [v0 frame];
      [v2 bounds];
      v4 = [objc_opt_self() mainScreen];
      v5 = [v4 traitCollection];

      [v5 displayCornerRadius];
      v7 = v6;

      AXCornerRadiiForFrameInContainer();
      [v3 setCornerRadii_];
    }
  }

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89)
  {
    v8 = 3;
LABEL_20:
    v18 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_internalDraggableView] layer];
    [v18 setMaskedCorners_];

    return;
  }

  v9 = [v0 traitCollection];
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_18;
  }

  if (*MEMORY[0x277D76620])
  {
    v10 = *MEMORY[0x277D76620];
    v11 = sub_257CA7574();
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;

      v17 = [v9 horizontalSizeClass];
      if (v17 == 1)
      {
        v8 = 3;
        if (v14 <= 375.0 || v14 / v16 <= 0.42)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_19;
    }

LABEL_18:
LABEL_19:
    v8 = 15;
    goto LABEL_20;
  }

  __break(1u);
}

void sub_257E8A3D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_backdropView);
}

uint64_t sub_257E8A550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30, &qword_257EEBBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257E8A5B8(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_style))
  {

    sub_257E8B22C(a1);
  }

  else
  {
    sub_257E8A9F4(a1);
    v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1 + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      v26 = v3;
      v7 = v6(ObjectType, v4);
      v8 = v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0;
      v9 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0);
      if (v9)
      {
        v10 = ObjectType;
        v11 = *(v8 + 8);
        v12 = swift_getObjectType();
        v13 = *(v11 + 16);
        v14 = v9;
        v15 = v11;
        ObjectType = v10;
        v13(v7 & 1, v12, v15);
      }

      v25 = v7;
      v16 = v7 ^ 1;
      v17 = *(v4 + 16);
      v17(v16 & 1, ObjectType, v4);
      sub_257E8AE74();
      v18 = *v8;
      if (*v8)
      {
        v24 = ObjectType;
        v19 = *(v8 + 8);
        v20 = swift_getObjectType();
        v21 = *(v19 + 16);
        v22 = v18;
        v23 = v19;
        ObjectType = v24;
        v21(v16 & 1, v20, v23);
      }

      v17(v25 & 1, ObjectType, v4);
      sub_257E8AE74();
    }
  }
}

char *sub_257E8A7CC(char a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator] = 0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v1[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_style] = a1 & 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons] = MEMORY[0x277D84F90];
  v6 = &v1[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
  *v6 = &type metadata for LayoutConstants.CommonButtonRow;
  v6[1] = &off_28690AB80;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ButtonRowBase();
  v7 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor_];

  v11 = v9;
  v12 = [v8 clearColor];
  [v11 setBackgroundColor_];

  v13 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView;
  [*&v11[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView] setShowsHorizontalScrollIndicator_];
  [*&v11[v13] setShowsVerticalScrollIndicator_];
  [*&v11[v13] setDecelerationRate_];
  [*&v11[v13] setScrollEnabled_];
  [*&v11[v13] setClipsToBounds_];
  [v11 addSubview_];
  return v11;
}

uint64_t sub_257E8A9F4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator) = 0;

  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator) = 0;

  v5 = (v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0);
  v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0);
  *v5 = 0;
  v5[1] = 0;
  v61 = v5;

  v7 = (v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1);
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1);
  *v7 = 0;
  v7[1] = 0;
  v64 = v7;
  v65 = v1;

  v57 = a1;
  v9 = *(a1 + 16);
  v66 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView;
    v12 = (v57 + 40);
    do
    {
      v20 = *(v12 - 1);
      v21 = *v12;
      v22 = v64;
      if (v10 != 1)
      {
        if (v10)
        {
          goto LABEL_32;
        }

        v22 = v61;
      }

      ++v10;
      v13 = *v22;
      *v22 = v20;
      v22[1] = v21;
      v14 = v20;

      v15 = *(v65 + v11);
      ObjectType = swift_getObjectType();
      v17 = v14;
      [v15 addSubview_];
      v18 = v21[12];
      v19 = swift_unknownObjectRetain();
      v18(v19, &off_28690AE30, ObjectType, v21);

      v12 += 2;
      v9 = v66;
    }

    while (v66 != v10);
  }

  v56 = OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons;
  v23 = *(v65 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = 0;
    v26 = v23 + 32;
    v58 = v23 + 32;
    v59 = v24;
    v60 = v23;
    while (v25 < *(v23 + 16))
    {
      v30 = v26 + 16 * v25;
      v31 = *v30;
      v32 = *(v30 + 8);
      v33 = swift_getObjectType();
      v34 = *(v32 + 8);
      v28 = v31;
      if (v34(v33, v32))
      {
        v62 = v33;
        v63 = v28;
        if (v9)
        {
          v35 = (v57 + 40);
          v36 = v9;
          v27 = MEMORY[0x277D84F90];
          do
          {
            v37 = *(v35 - 1);
            v38 = *v35;
            v39 = swift_getObjectType();
            v40 = *(v38 + 56);
            v41 = v37;
            v40((&v67 + 1), v39, v38);

            v42 = BYTE1(v67);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_257BFCB14(0, *(v27 + 2) + 1, 1, v27);
            }

            v44 = *(v27 + 2);
            v43 = *(v27 + 3);
            if (v44 >= v43 >> 1)
            {
              v27 = sub_257BFCB14((v43 > 1), v44 + 1, 1, v27);
            }

            *(v27 + 2) = v44 + 1;
            v27[v44 + 32] = v42;
            v35 += 2;
            --v36;
          }

          while (v36);
        }

        else
        {
          v27 = MEMORY[0x277D84F90];
        }

        v28 = v63;
        (*(v32 + 56))(&v67, v62, v32);
        v29 = sub_257C3EF48(v67, v27);

        v9 = v66;
        v24 = v59;
        v23 = v60;
        v26 = v58;
        if (v29)
        {

          (*(v32 + 16))(1, v62, v32);
          v51 = v56;
          goto LABEL_27;
        }
      }

      ++v25;

      if (v25 == v24)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_32:
    result = sub_257ED0410();
    __break(1u);
  }

  else
  {
LABEL_22:

    v45 = *v61;
    if (*v61)
    {
      v46 = v61[1];
      v47 = swift_getObjectType();
      v48 = v46[2];
      v49 = v45;
      v48(1, v47, v46);
    }

    v50 = *v64;
    v51 = v56;
    if (*v64)
    {
      v52 = v64[1];
      v53 = swift_getObjectType();
      v54 = v52[2];
      v28 = v50;
      v54(0, v53, v52);
LABEL_27:
    }

    *(v65 + v51) = v57;

    return sub_257CAED1C();
  }

  return result;
}

void sub_257E8AE74()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0];
  if (v1)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0 + 8];
    v4 = &v0[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1];
    v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1];
    v35 = v1;
    [v2 bounds];
    v7 = v6;
    v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
    v9 = *&v2[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config + 8];
    if (v5)
    {
      v10 = v6 - (*(v9 + 24))(*&v2[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config], *&v2[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config + 8]);
      v11 = *(v9 + 72);
      v12 = v11(v8, v9);
      v7 = v10 - (v12 + v12);
      (*(v9 + 64))(v8, v9);
    }

    else
    {
      v11 = *(v9 + 72);
      v14 = v11(*&v2[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config], *&v2[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config + 8]);
      v13 = v14 + v14;
    }

    v15 = v7 - v13;
    [v2 bounds];
    v16 = *(v9 + 24);
    v18 = (v17 - v16(v8, v9)) * 0.5;
    v19 = v11(v8, v9);
    ObjectType = swift_getObjectType();
    v21 = v15;
    if (((*(v3 + 8))(ObjectType, v3) & 1) == 0)
    {
      v21 = v16(v8, v9);
    }

    v22 = v16(v8, v9);
    [v35 setFrame_];
    v23 = *v4;
    if (*v4)
    {
      v33 = v11;
      v34 = v16;
      v24 = *(v4 + 1);
      v25 = swift_getObjectType();
      v26 = *(v24 + 8);
      v27 = v23;
      if (v26(v25, v24))
      {
        v37.origin.x = v19;
        v37.origin.y = v18;
        v37.size.width = v21;
        v37.size.height = v22;
        MaxX = CGRectGetMaxX(v37);
        v29 = MaxX + (*(v9 + 64))(v8, v9);
        v30 = v34;
      }

      else
      {
        [v2 bounds];
        v30 = v34;
        v32 = v31 - v34(v8, v9);
        v29 = v32 - v33(v8, v9);
      }

      if ((v26(v25, v24) & 1) == 0)
      {
        v15 = v30(v8, v9);
      }

      [v27 setFrame_];
    }
  }
}

uint64_t sub_257E8B22C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator) = 0;

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView;
    v23 = a1;
    v8 = (a1 + 40);
    v22 = *(a1 + 16);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v2 + v7);
      ObjectType = swift_getObjectType();
      v13 = v9;
      [v11 addSubview_];
      v14 = *(v10 + 96);
      v15 = swift_unknownObjectRetain();
      v14(v15, &off_28690AE30, ObjectType, v10);
      (*(v10 + 16))(0, ObjectType, v10);

      v8 += 2;
      --v6;
    }

    while (v6);
    a1 = v23;
    if (v22 == 1)
    {
      v16 = *(v23 + 32);
      v17 = *(v23 + 40);
      v18 = swift_getObjectType();
      v19 = *(v17 + 16);
      v20 = v16;
      v19(1, v18, v17);
    }
  }

  *(v2 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons) = a1;

  return sub_257CAED1C();
}

void sub_257E8B3C4()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_style;
  if (v0[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_style] == 1 && ([v1 setContentSize_], v3 = sub_257E8B4A8(), objc_msgSend(v0, sel_bounds), v5 = objc_msgSend(v1, sel_setScrollEnabled_, v4 <= v3), (v0[v2] & 1) != 0))
  {
    sub_257E8B5FC(v5);
  }

  else
  {
    sub_257E8AE74();
  }
}

double sub_257E8B4A8()
{
  v1 = v0;
  [v0 bounds];
  v2 = OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons;
  v3 = *(*&v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons] + 16) - 1;
  sub_257E8CBFC();
  v5 = v4;
  v6 = &v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
  v7 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
  v8 = *(v6 + 1);
  v9 = v8[6](v7, v8);
  if (v5 > v9)
  {
    v9 = v5;
  }

  v10 = *(*&v1[v2] + 16);
  v11 = v9 * v3 + v8[3](v7, v8) * v10;
  v12 = v8[9](v7, v8);
  return v11 + v12 + v12;
}

void sub_257E8B5FC(uint64_t a1)
{
  v2 = v1;
  sub_257E8CBFC();
  v4 = v3;
  v5 = *&v1[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
  v6 = *&v1[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config + 8];
  v7 = v6[6](v5, v6);
  if (v4 > v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  [v1 bounds];
  v10 = v9;
  v55 = v6[9];
  v11 = v55(v5, v6);
  [v1 bounds];
  v13 = v12;
  v58 = v6[3];
  v59 = v6;
  v14 = v6;
  v15 = v6 + 3;
  v16 = v58(v5, v14);
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView] contentOffset];
  v18 = v17;
  v19 = OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons;
  v20 = *(*&v2[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons] + 16);

  v53 = v20;
  if (v20)
  {
    v49 = v19;
    v52 = v2;
    v22 = 0;
    v23 = (v21 + 40);
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        goto LABEL_31;
      }

      v24 = v5;
      v25 = v15;
      v26 = v21;
      v27 = *(v23 - 1);
      v28 = *v23;
      ObjectType = swift_getObjectType();
      v56 = *(v28 + 8);
      v30 = v27;
      v31 = v56(ObjectType, v28);

      if (v31)
      {
        break;
      }

      ++v22;
      v23 += 2;
      v21 = v26;
      v15 = v25;
      v5 = v24;
      if (v53 == v22)
      {
        v22 = 0;
        goto LABEL_12;
      }
    }

    v5 = v24;
LABEL_12:
    v50 = v22;
    v51 = v31 ^ 1;
    v2 = v52;
    v19 = v49;
  }

  else
  {
    v50 = 0;
    v51 = 1;
  }

  v32 = *&v2[v19];
  v33 = *(v32 + 16);
  v57 = v32;

  v54 = v33;
  if (!v33)
  {
LABEL_27:

    return;
  }

  v34 = 0;
  v35 = v10 - (v11 + v11);
  v36 = (v13 - v16) * 0.5;
  v37 = (v57 + 40);
  while (v34 < *(v57 + 16))
  {
    v38 = *(v37 - 1);
    v39 = *v37;
    v40 = swift_getObjectType();
    v41 = *(v39 + 8);
    v42 = v38;
    if (v41(v40, v39))
    {
      v43 = v55(v5, v59);
    }

    else
    {
      if (v51)
      {
        v45 = v8 * v34 + v58(v5, v59) * v34;
        v44 = v55(v5, v59) + v45;
        goto LABEL_24;
      }

      if (v50 < v34)
      {
        v46 = v55(v5, v59);
        v44 = v8 * (v34 - v50 - 1) + v58(v5, v59) * (v34 - v50 - 1) + v8 + v35 + v18 + v46;
        goto LABEL_24;
      }

      v48 = v8 * (v34 - v50) + v58(v5, v59) * (v34 - v50);
      v43 = v55(v5, v59) + v48;
    }

    v44 = v18 + v43;
LABEL_24:
    v47 = v35;
    if ((v41(v40, v39) & 1) == 0)
    {
      v47 = v58(v5, v59);
    }

    ++v34;
    [v42 setFrame_];

    v37 += 2;
    if (v54 == v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_257E8BAAC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_style))
  {
    sub_257E8C154(a1, a2);
  }

  else
  {
    sub_257E8BAC4(a1, a2);
  }
}

void sub_257E8BAC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0;
  v5 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0);
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1);
    if (v6)
    {
      v8 = *(v4 + 8);
      v9 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v8 + 32);
      v12 = v5;
      v57 = v6;
      if (v11(ObjectType, v8) & 1) == 0 || ((*(v8 + 8))(ObjectType, v8))
      {
        v13 = swift_getObjectType();
        if ((*(v9 + 32))(v13, v9) & 1) == 0 || ((*(v9 + 8))(v13, v9))
        {
          v54 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator;
          v14 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator);
          if (v14)
          {
            [v14 stopAnimation_];
          }

          v15 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator;
          v16 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator);
          if (v16)
          {
            [v16 stopAnimation_];
          }

          v17 = ((*(v8 + 8))(ObjectType, v8) & 1) == 0;
          if (v17)
          {
            v18 = v57;
          }

          else
          {
            v18 = v12;
          }

          if (v17)
          {
            v19 = v9;
          }

          else
          {
            v19 = v8;
          }

          v52 = v19;
          v53 = v18;
          if (v17)
          {
            v20 = v12;
          }

          else
          {
            v20 = v57;
          }

          v56 = v20;
          if (v17)
          {
            v21 = v8;
          }

          else
          {
            v21 = v9;
          }

          v22 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView);
          v23 = swift_getObjectType();
          v51 = v12;
          v58 = v57;
          [v22 bringSubviewToFront_];
          v24 = (*(a2 + 80))(v23, a2);
          [v22 sendSubviewToBack_];

          v25 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
          [v25 setStiffness_];
          [v25 setDamping_];
          [v25 setInitialVelocity_];
          [v25 damping];
          v27 = v26;
          [v25 stiffness];
          v29 = sqrt(v28);
          v30 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithDampingRatio:v27 / (v29 + v29) initialVelocity:{0.5, 0.5}];
          [v25 settlingDuration];
          v32 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v30 timingParameters:v31];
          v33 = *(v3 + v15);
          *(v3 + v15) = v32;
          v34 = v32;

          if (v34)
          {
            v35 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v36 = swift_allocObject();
            *(v36 + 24) = a2;
            swift_unknownObjectWeakInit();
            v37 = swift_allocObject();
            *(v37 + 16) = v35;
            *(v37 + 24) = v36;
            v63 = sub_257E8CBC0;
            v64 = v37;
            aBlock = MEMORY[0x277D85DD0];
            v60 = 1107296256;
            v61 = sub_257D231C0;
            v62 = &block_descriptor_64;
            v38 = _Block_copy(&aBlock);

            [v34 addAnimations_];
            _Block_release(v38);

            v39 = *(v3 + v15);
            if (v39)
            {
              v40 = swift_allocObject();
              *(v40 + 24) = v21;
              swift_unknownObjectWeakInit();
              v63 = sub_257E8CBE0;
              v64 = v40;
              aBlock = MEMORY[0x277D85DD0];
              v60 = 1107296256;
              v61 = sub_257D231C0;
              v62 = &block_descriptor_20_2;
              v41 = _Block_copy(&aBlock);
              v42 = v39;

              [v42 addAnimations:v41 delayFactor:0.2];
              _Block_release(v41);

              [v25 settlingDuration];
              v44 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v30 timingParameters:v43 * 0.6];
              v45 = *(v3 + v54);
              *(v3 + v54) = v44;
              v46 = v44;

              if (v46)
              {
                v47 = swift_allocObject();
                *(v47 + 24) = v52;
                swift_unknownObjectWeakInit();
                v63 = sub_257E8D71C;
                v64 = v47;
                aBlock = MEMORY[0x277D85DD0];
                v60 = 1107296256;
                v61 = sub_257D231C0;
                v62 = &block_descriptor_24;
                v48 = _Block_copy(&aBlock);

                [v46 addAnimations_];
                _Block_release(v48);

                v49 = *(v3 + v54);
                if (v49)
                {
                  [v49 startAnimation];
                  v50 = *(v3 + v15);
                  if (v50)
                  {
                    [v50 startAnimation];

                    return;
                  }

LABEL_37:
                  __break(1u);
                  return;
                }

LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_35;
        }
      }
    }
  }
}

void sub_257E8C154(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons) + 16) >= 2uLL)
  {
    v3 = v2;
    v6 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator;
    v7 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_sliderAnimator);
    if (v7)
    {
      [v7 stopAnimation_];
    }

    v8 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator;
    v9 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_expansionAnimator);
    if (v9)
    {
      [v9 stopAnimation_];
    }

    v44 = v6;
    ObjectType = swift_getObjectType();
    v45 = (*(a2 + 8))(ObjectType, a2);
    v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView);
    [v11 setScrollEnabled_];
    [v11 bringSubviewToFront_];
    v12 = (*(a2 + 80))(ObjectType, a2);
    [v11 sendSubviewToBack_];

    v13 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
    [v13 setStiffness_];
    [v13 setDamping_];
    [v13 setInitialVelocity_];
    [v13 damping];
    v15 = v14;
    [v13 stiffness];
    v17 = sqrt(v16);
    v18 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithDampingRatio:v15 / (v17 + v17) initialVelocity:{0.5, 0.5}];
    [v13 settlingDuration];
    v46 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v18 timingParameters:v19];
    v21 = *(v3 + v8);
    *(v3 + v8) = v20;
    v22 = v20;

    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 24) = a2;
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v24;
      v51 = sub_257E8D53C;
      v52 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_257D231C0;
      v50 = &block_descriptor_32_0;
      v26 = _Block_copy(&aBlock);

      [v22 addAnimations_];
      _Block_release(v26);

      v27 = *(v3 + v8);
      if (v27)
      {
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_257E8D69C;
        v52 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v48 = 1107296256;
        v49 = sub_257E106F4;
        v50 = &block_descriptor_36_0;
        v29 = _Block_copy(&aBlock);
        v30 = v27;

        [v30 addCompletion_];
        _Block_release(v29);

        if (v45)
        {
          [v13 settlingDuration];
          v32 = v46;
          v33 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v46 timingParameters:v31 * 0.6];
          v34 = *(v3 + v44);
          *(v3 + v44) = v33;
          v35 = v33;

          if (!v35)
          {
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v36 = swift_allocObject();
          *(v36 + 24) = a2;
          swift_unknownObjectWeakInit();
          v51 = sub_257E8D71C;
          v52 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v48 = 1107296256;
          v49 = sub_257D231C0;
          v50 = &block_descriptor_44_1;
          v37 = _Block_copy(&aBlock);

          [v35 addAnimations_];
          _Block_release(v37);

          v38 = *(v3 + v44);
          if (v38)
          {
            goto LABEL_14;
          }

          __break(1u);
        }

        v39 = *(v3 + v8);
        v32 = v46;
        if (!v39)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v40 = swift_allocObject();
        *(v40 + 24) = a2;
        swift_unknownObjectWeakInit();
        v51 = sub_257E8D71C;
        v52 = v40;
        aBlock = MEMORY[0x277D85DD0];
        v48 = 1107296256;
        v49 = sub_257D231C0;
        v50 = &block_descriptor_40_0;
        v41 = _Block_copy(&aBlock);
        v42 = v39;

        [v42 addAnimations:v41 delayFactor:0.2];
        _Block_release(v41);

        v38 = *(v3 + v8);
        if (!v38)
        {
LABEL_22:
          __break(1u);
          return;
        }

LABEL_14:
        [v38 startAnimation];
        v43 = *(v3 + v8);
        if (v43)
        {
          [v43 startAnimation];

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

void sub_257E8C77C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView);
}

unint64_t sub_257E8C8A0()
{
  result = qword_27F8FB470;
  if (!qword_27F8FB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB470);
  }

  return result;
}

void sub_257E8C8F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      v6 = v4;
LABEL_13:

      return;
    }

    v6 = v5;
    v7 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(v25, ObjectType, v7);
    *v10 = !*v10;
    v9(v25, 0);
    v11 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1;
    v12 = *&v4[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button1];
    if (v12)
    {
      sub_257CD13D4();
      v13 = v12;
      v14 = v6;
      v15 = sub_257ECFF50();

      if (v15)
      {
        v11 = OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0;
LABEL_10:
        v19 = *&v4[v11];
        if (v19)
        {
          v20 = *&v4[v11 + 8];
          v24 = swift_getObjectType();
          v21 = *(v7 + 8);
          v22 = v19;
          v23 = v21(ObjectType, v7);
          (*(v20 + 16))((v23 & 1) == 0, v24, v20);
        }

        sub_257E8AE74();
        [v4 layoutIfNeeded];

        goto LABEL_13;
      }
    }

    v16 = *&v4[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_button0];
    if (v16)
    {
      sub_257CD13D4();
      v17 = v6;
      v13 = v16;
      v18 = sub_257ECFF50();

      if (v18)
      {
        goto LABEL_10;
      }
    }

    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_257ED02D0();
    MEMORY[0x259C72150](0xD000000000000015, 0x8000000257F09730);
    swift_getWitnessTable();
    sub_257ED0620();
    sub_257ED0410();
    __break(1u);
  }
}

double block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

void sub_257E8CBFC()
{
  v1 = *(*&v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons] + 16);
  if (v1 >= 2)
  {
    [v0 bounds];
    if (v1 > 5)
    {
      v4 = &v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
      v6 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
      v5 = *(v4 + 1);
      (*(v5 + 24))(v6, v5);
      (*(v5 + 72))(v6, v5);
    }

    else
    {
      v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config];
      v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_config + 8];
      (*(v3 + 24))(v2, v3);
      (*(v3 + 72))(v2, v3);
    }
  }
}

void sub_257E8CD64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v8 = (*(v7 + 24))(v51);
      *v9 = !*v9;
      v8(v51, 0);
      v42 = v4;
      v10 = *&v4[OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons];
      v11 = *(v10 + 16);

      if (v11)
      {
        v44 = v10 + 32;
        v41 = v11 - 1;
        v43 = MEMORY[0x277D84F90];
        v12 = 0;
        while (v12 < *(v10 + 16))
        {
          v14 = v11;
          v15 = v10;
          v48 = *(v44 + 16 * v12);
          v47 = v12 + 1;
          v16 = *(v44 + 16 * v12);
          v17 = swift_getObjectType();
          v18 = *(*(&v48 + 1) + 56);
          v46 = v16;
          v18(&v50, v17, *(&v48 + 1));
          v19 = v50;
          (*(v7 + 56))(&v49, ObjectType, v7);
          v20 = 0xEA0000000000726FLL;
          v21 = 0x746361466D6F6F7ALL;
          switch(v19)
          {
            case 1:
              v21 = 0xD000000000000011;
              v20 = 0x8000000257EF7780;
              break;
            case 2:
              v21 = 0x4379616C70736964;
              v20 = 0xEF74736172746E6FLL;
              break;
            case 3:
              v20 = 0xE700000000000000;
              v21 = 0x737265746C6966;
              break;
            case 4:
              v20 = 0xEA00000000007468;
              v21 = 0x67696C6873616C66;
              break;
            case 5:
              v21 = 0x6544656C706F6570;
              v20 = 0xEF6E6F6974636574;
              break;
            case 6:
              v21 = 0x636F4C7375636F66;
              v20 = 0xE90000000000006BLL;
              break;
            case 7:
              v21 = 0x79546172656D6163;
              v20 = 0xEA00000000006570;
              break;
            case 8:
              v21 = 0x4D65727574706163;
              v20 = 0xEB0000000065646FLL;
              break;
            case 9:
              v21 = 0x6F69746365746564;
              v20 = 0xED000065646F4D6ELL;
              break;
            case 10:
              v22 = 1919905636;
              goto LABEL_23;
            case 11:
              v21 = 0xD000000000000013;
              v20 = 0x8000000257EF74D0;
              break;
            case 12:
              v21 = 0x7061436567616D69;
              v20 = 0xEC0000006E6F6974;
              break;
            case 13:
              v20 = 0xEA00000000006B61;
              v21 = 0x657053746E696F70;
              break;
            case 14:
              v22 = 1954047348;
LABEL_23:
              v21 = v22 | 0x6574654400000000;
              v20 = 0xED00006E6F697463;
              break;
            case 15:
              v20 = 0xEA00000000007365;
              v21 = 0x6974697669746361;
              break;
            default:
              break;
          }

          v23 = 0xEA0000000000726FLL;
          v10 = v15;
          v24 = 0x746361466D6F6F7ALL;
          v11 = v14;
          switch(v49)
          {
            case 1:
              v23 = 0x8000000257EF7780;
              if (v21 == 0xD000000000000011)
              {
                goto LABEL_54;
              }

              goto LABEL_5;
            case 2:
              v23 = 0xEF74736172746E6FLL;
              if (v21 != 0x4379616C70736964)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 3:
              v23 = 0xE700000000000000;
              if (v21 != 0x737265746C6966)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 4:
              v23 = 0xEA00000000007468;
              if (v21 != 0x67696C6873616C66)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 5:
              v23 = 0xEF6E6F6974636574;
              if (v21 != 0x6544656C706F6570)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 6:
              v23 = 0xE90000000000006BLL;
              if (v21 != 0x636F4C7375636F66)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 7:
              v23 = 0xEA00000000006570;
              if (v21 != 0x79546172656D6163)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 8:
              v23 = 0xEB0000000065646FLL;
              if (v21 != 0x4D65727574706163)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 9:
              v25 = 0x6F69746365746564;
              v26 = 0x65646F4D6ELL;
              goto LABEL_36;
            case 10:
              v24 = 0x65746544726F6F64;
              v23 = 0xED00006E6F697463;
              goto LABEL_53;
            case 11:
              v23 = 0x8000000257EF74D0;
              if (v21 != 0xD000000000000013)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 12:
              v23 = 0xEC0000006E6F6974;
              if (v21 != 0x7061436567616D69)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 13:
              v23 = 0xEA00000000006B61;
              if (v21 != 0x657053746E696F70)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 14:
              v25 = 0x6574654474786574;
              v26 = 0x6E6F697463;
LABEL_36:
              v23 = v26 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v21 != v25)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            case 15:
              v23 = 0xEA00000000007365;
              if (v21 != 0x6974697669746361)
              {
                goto LABEL_5;
              }

              goto LABEL_54;
            default:
LABEL_53:
              if (v21 != v24)
              {
                goto LABEL_5;
              }

LABEL_54:
              if (v20 == v23)
              {

LABEL_6:

                ++v12;
                if (v14 == v47)
                {
                  goto LABEL_66;
                }

                continue;
              }

LABEL_5:
              v13 = sub_257ED0640();

              if (v13)
              {
                goto LABEL_6;
              }

              v27 = v43;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[0] = v43;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_257BF2A04(0, *(v43 + 16) + 1, 1);
                v27 = v51[0];
              }

              v30 = *(v27 + 16);
              v29 = *(v27 + 24);
              if (v30 >= v29 >> 1)
              {
                sub_257BF2A04((v29 > 1), v30 + 1, 1);
                v27 = v51[0];
              }

              *(v27 + 16) = v30 + 1;
              v43 = v27;
              *(v27 + 16 * v30 + 32) = v48;
              if (v41 == v12)
              {
                goto LABEL_66;
              }

              ++v12;
              break;
          }
        }

        __break(1u);
        goto LABEL_74;
      }

      v43 = MEMORY[0x277D84F90];
LABEL_66:
      v31 = v6;

      v32 = *(v43 + 16);
      if (v32)
      {
        v33 = 0;
        v34 = (v43 + 40);
        while (v33 < *(v43 + 16))
        {
          ++v33;
          v35 = *(v34 - 1);
          v36 = *v34;
          v37 = swift_getObjectType();
          v38 = *(v36 + 16);
          v39 = v35;
          v38(0, v37, v36);

          v34 += 2;
          if (v32 == v33)
          {
            goto LABEL_70;
          }
        }

LABEL_74:
        __break(1u);
        return;
      }

LABEL_70:

      sub_257E8B5FC(v40);
      [v42 layoutIfNeeded];
    }

    else
    {
      v31 = v4;
    }
  }
}

void sub_257E8D544(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
    v5 = *(v4 + 16);

    v6 = (v4 + 40);
    v7 = -v5;
    v8 = -1;
    while (1)
    {
      if (v7 + v8 == -1)
      {

        v15 = *&v3[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView];
        [v15 setScrollEnabled_];

        goto LABEL_8;
      }

      if (++v8 >= *(v4 + 16))
      {
        break;
      }

      v9 = v6 + 2;
      v10 = *(v6 - 1);
      v11 = *v6;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 8);
      v14 = v10;
      LOBYTE(v11) = v13(ObjectType, v11);

      v6 = v9;
      if (v11)
      {

        [*&v3[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_scrollView] setScrollEnabled_];
LABEL_8:

        return;
      }
    }

    __break(1u);
  }
}

void sub_257E8D6A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    sub_257D47910(ObjectType, v4);
  }
}

unint64_t sub_257E8D74C()
{
  result = qword_27F8FB478;
  if (!qword_27F8FB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB478);
  }

  return result;
}

id sub_257E8D7A0(char a1)
{
  v1 = sub_257ECF4C0();
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 configurationWithPointSize:4 weight:-1 scale:25.0];
  v6 = [v4 imageByApplyingSymbolConfiguration_];

  return v6;
}

uint64_t sub_257E8D8DC(char a1)
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

unint64_t sub_257E8DACC()
{
  result = qword_27F8FB480;
  if (!qword_27F8FB480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6A20, &unk_257EDD490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB480);
  }

  return result;
}

unint64_t sub_257E8DB30()
{
  result = qword_27F8FB488;
  if (!qword_27F8FB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB488);
  }

  return result;
}

uint64_t sub_257E8DB88()
{
  v15[9] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = v15 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F8FB490);
  __swift_project_value_buffer(v7, qword_27F8FB490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E0, &qword_257EEF900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v9 = sub_257E8E328();
  *(inited + 32) = &type metadata for MagnifierCommand.TextDetectionLanguagesCommand;
  *(inited + 40) = v9;
  v10 = sub_257E8E37C();
  *(inited + 48) = &type metadata for MagnifierCommand.ShortcutsCommand;
  *(inited + 56) = v10;
  v11 = sub_257E8E3D0();
  v12 = sub_257BFE3C0(1, 3, 1, inited);
  *(v12 + 2) = 3;
  *(v12 + 8) = &type metadata for MagnifierCommand.ServiceCommand;
  *(v12 + 9) = v11;
  v13 = sub_257ECD7D0();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  return sub_257ECD800();
}

uint64_t static MagnifierCommand.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4800 != -1)
  {
    swift_once();
  }

  v3 = sub_257ECD810();
  v4 = __swift_project_value_buffer(v3, qword_27F8FB490);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t static MagnifierCommand.configuration.setter(uint64_t a1, __n128 a2)
{
  if (qword_27F8F4800 != -1)
  {
    swift_once();
  }

  v3 = sub_257ECD810();
  v4 = __swift_project_value_buffer(v3, qword_27F8FB490);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t (*static MagnifierCommand.configuration.modify(uint64_t a1, __n128 a2))(uint64_t a1)
{
  if (qword_27F8F4800 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECD810();
  __swift_project_value_buffer(v2, qword_27F8FB490);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_257E8DFD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4800 != -1)
  {
    swift_once();
  }

  v3 = sub_257ECD810();
  v4 = __swift_project_value_buffer(v3, qword_27F8FB490);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

double sub_257E8E098(uint64_t a1, __n128 a2)
{
  if (qword_27F8F4800 != -1)
  {
    swift_once();
  }

  v3 = sub_257ECD810();
  v4 = __swift_project_value_buffer(v3, qword_27F8FB490);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  swift_endAccess();
  return result;
}

unint64_t sub_257E8E18C()
{
  result = qword_27F8FB4A8;
  if (!qword_27F8FB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4A8);
  }

  return result;
}

uint64_t sub_257E8E1E0(uint64_t a1)
{
  sub_257E8E18C();
  sub_257ECD790();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_257E8E26C()
{
  result = qword_27F8FB4B0;
  if (!qword_27F8FB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4B0);
  }

  return result;
}

unint64_t sub_257E8E2C4()
{
  result = qword_27F8FB4B8;
  if (!qword_27F8FB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4B8);
  }

  return result;
}

unint64_t sub_257E8E328()
{
  result = qword_27F8FB4C8;
  if (!qword_27F8FB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4C8);
  }

  return result;
}

unint64_t sub_257E8E37C()
{
  result = qword_27F8FB4D0;
  if (!qword_27F8FB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4D0);
  }

  return result;
}

unint64_t sub_257E8E3D0()
{
  result = qword_27F8FB4D8;
  if (!qword_27F8FB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4D8);
  }

  return result;
}

uint64_t sub_257E8E424()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913370);
  __swift_project_value_buffer(v7, qword_27F913370);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E8E57C()
{
  v1 = sub_257ECCD90();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257E8E638, 0, 0);
}

uint64_t sub_257E8E638()
{
  sub_257ECD280();
  v1 = sub_257CB7C20(0);
  v3 = v1[2];
  if (v3)
  {
    v4 = (v0[3] + 8);
    v5 = v1 + 5;
    do
    {
      v6 = v0[4];
      v7 = v0[2];
      v8 = *(v5 - 1);
      v9 = *v5;

      MEMORY[0x259C72150](v8, v9);
      MEMORY[0x259C72150](2108704, 0xE300000000000000);
      sub_257ECCD80();
      v10 = sub_257ECCD10();
      v12 = v11;

      (*v4)(v6, v7);
      if (v12)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0x6E776F6E6B6E55;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE700000000000000;
      }

      MEMORY[0x259C72150](v13, v14);

      MEMORY[0x259C72150](8224, 0xE200000000000000);

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257ED6D30;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 32) = 0xD00000000000002BLL;
  *(v15 + 40) = 0x8000000257F098A0;
  sub_257ECD290();

  v16 = v0[1];

  return v16();
}

uint64_t sub_257E8E890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257E8E57C();
}

uint64_t sub_257E8E91C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E92968();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E8E9EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913388);
  __swift_project_value_buffer(v7, qword_27F913388);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E8EB3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB568, &qword_257EEFC78);
  v0[12] = v1;
  v0[13] = *(v1 - 8);
  v0[14] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB570, &qword_257EEFC80);
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v0[17] = swift_task_alloc();
  v3 = sub_257ECD260();
  v0[18] = v3;
  v0[19] = *(v3 - 8);
  v0[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257E8ECC8, 0, 0);
}

uint64_t sub_257E8ECC8()
{
  sub_257ECD280();
  v1 = objc_allocWithZone(sub_257ECD270());
  v2 = sub_257ECD230();
  sub_257ECD240();
  v3 = sub_257ECD250();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB578, &unk_257EEFC88);
  sub_257ECD6A0();
  v0[10] = v3;
  v0[11] = v5;
  sub_257E928C0();
  sub_257BD2D4C(&qword_27F8FB588, &qword_27F8FB570, &qword_257EEFC80, MEMORY[0x277D85AC0]);
  v6 = sub_257ECF410();

  v7 = *(v6 + 16);
  if (v7)
  {
    v23 = v2;
    v8 = v0[13];
    v10 = *(v8 + 16);
    v9 = v8 + 16;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v24 = *(v9 + 56);
    v25 = v10;
    do
    {
      v12 = v0[14];
      v13 = v0[12];
      v25(v12, v11, v13);
      sub_257ECD510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_257ED6D30;
      sub_257ECD6B0();
      (*(v9 - 8))(v12, v13);

      v15 = MEMORY[0x259C720C0](v0[6], v0[7], v0[8], v0[9]);
      v17 = v16;

      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      sub_257ECD290();

      v11 += v24;
      --v7;
    }

    while (v7);

    v2 = v23;
  }

  else
  {
  }

  v19 = v0[19];
  v18 = v0[20];
  v20 = v0[18];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_257E8F034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E8EB3C();
}

uint64_t sub_257E8F0C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E92914();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E8F190()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v21 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F9133A0);
  __swift_project_value_buffer(v7, qword_27F9133A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E0, &qword_257EEF900);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_257EDB2E0;
  v9 = sub_257E925D4();
  *(v8 + 32) = &type metadata for MagnifierCommand.ServiceCommand.ShowDetectionUICommand;
  *(v8 + 40) = v9;
  v10 = sub_257E92628();
  *(v8 + 48) = &type metadata for MagnifierCommand.ServiceCommand.DismissetectionUICommand;
  *(v8 + 56) = v10;
  v11 = sub_257E9267C();
  *(v8 + 64) = &type metadata for MagnifierCommand.ServiceCommand.ToggleTextDetectionCommand;
  *(v8 + 72) = v11;
  v12 = sub_257E926D0();
  *(v8 + 80) = &type metadata for MagnifierCommand.ServiceCommand.TogglePeopleDetectionCommand;
  *(v8 + 88) = v12;
  v13 = sub_257E92724();
  *(v8 + 96) = &type metadata for MagnifierCommand.ServiceCommand.ToggleDoorDetectionCommand;
  *(v8 + 104) = v13;
  v14 = sub_257E92778();
  *(v8 + 112) = &type metadata for MagnifierCommand.ServiceCommand.ToggleImageDescriptionsCommand;
  *(v8 + 120) = v14;
  v15 = sub_257E927CC();
  *(v8 + 128) = &type metadata for MagnifierCommand.ServiceCommand.TogglePointAndSpeakCommand;
  *(v8 + 136) = v15;
  v16 = sub_257E92820();
  *(v8 + 144) = &type metadata for MagnifierCommand.ServiceCommand.CurrentStateCommand;
  *(v8 + 152) = v16;
  v17 = type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand(0);
  v18 = sub_257E935D0(&qword_27F8FB560, type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand, &unk_257EF0580);
  *(v8 + 160) = v17;
  *(v8 + 168) = v18;
  v19 = sub_257ECD7D0();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  return sub_257ECD800();
}

uint64_t sub_257E8F3D0(uint64_t a1)
{
  sub_257E8E3D0();
  sub_257ECD790();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_257E8F47C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F9133B8);
  __swift_project_value_buffer(v7, qword_27F9133B8);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E8F5E0()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000034;
  *(v1 + 40) = 0x8000000257F09D40;
  sub_257ECD290();

  v2 = sub_257E91174();
  sub_257ECD550();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E8F70C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E8F5C0();
}

uint64_t sub_257E8F798(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E93978();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E8F868()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F9133D0);
  __swift_project_value_buffer(v7, qword_27F9133D0);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E8F9D4()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000037;
  *(v1 + 40) = 0x8000000257F09D00;
  sub_257ECD290();

  v2 = sub_257E91174();
  sub_257ECD5B0();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E8FB00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E8F9B4();
}

uint64_t sub_257E8FB8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E93924();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E8FC5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F9133E8);
  __swift_project_value_buffer(v7, qword_27F9133E8);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E8FDC0()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000038;
  *(v1 + 40) = 0x8000000257F09CC0;
  sub_257ECD290();

  v2 = sub_257E91174();
  sub_257ECD580();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E8FEEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E8FDA0();
}

uint64_t sub_257E8FF78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E938D0();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E90048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913400);
  __swift_project_value_buffer(v7, qword_27F913400);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E901B0()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD00000000000003ALL;
  *(v1 + 40) = 0x8000000257F09C80;
  sub_257ECD290();

  v2 = sub_257E91174();
  sub_257ECD590();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E902DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E90190();
}

uint64_t sub_257E90368(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E9387C();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E90438()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913418);
  __swift_project_value_buffer(v7, qword_27F913418);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E905A0()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000038;
  *(v1 + 40) = 0x8000000257F09C40;
  sub_257ECD290();

  v2 = sub_257E91174();
  sub_257ECD560();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E906CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E90580();
}

uint64_t sub_257E90758(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E93828();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E90828()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913430);
  __swift_project_value_buffer(v7, qword_27F913430);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E909A4()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD00000000000003CLL;
  *(v1 + 40) = 0x8000000257F09C00;
  sub_257ECD290();

  v2 = sub_257E91174();
  sub_257ECD5A0();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E90AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E90984();
}

uint64_t sub_257E90B5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E937D4();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E90C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913448);
  __swift_project_value_buffer(v7, qword_27F913448);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E90DA4()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000039;
  *(v1 + 40) = 0x8000000257F09BC0;
  sub_257ECD290();

  v2 = sub_257E91174();
  sub_257ECD570();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E90ED0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E90D84();
}

uint64_t sub_257E90F5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E93780();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E9102C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913460);
  __swift_project_value_buffer(v7, qword_27F913460);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

id sub_257E91174()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [objc_allocWithZone(sub_257ECD5C0()) init];
    *v0 = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

uint64_t sub_257E911F0()
{
  sub_257ECD280();
  sub_257ECD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000042;
  *(v1 + 40) = 0x8000000257F09B70;
  sub_257ECD290();

  v3 = sub_257E91174();
  v4 = sub_257ECD530();
  v6 = v5;

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_257ED6D30;
  *(v8 + 56) = v2;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  sub_257ECD290();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_257E91378()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E911D0();
}

uint64_t sub_257E91404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E9372C();
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E914D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB4C0, &qword_257EEF8F8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v10 - v5;
  v7 = sub_257ECD810();
  __swift_allocate_value_buffer(v7, qword_27F913478);
  __swift_project_value_buffer(v7, qword_27F913478);
  v8 = sub_257ECD7D0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_257ECD800();
}

uint64_t sub_257E91620()
{
  v1[4] = v0;
  v2 = sub_257ECD5E0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257E916E0, 0, 0);
}

uint64_t sub_257E916E0()
{
  sub_257ECD280();
  type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB5A0, &unk_257EEFCA0);
  sub_257ECD840();
  if (v0[3])
  {
    v2 = sub_257E91174();
    sub_257ECD5D0();

    sub_257ECD540();
    (*(v0[6] + 8))(v0[7], v0[5]);
  }

  else
  {
    sub_257ECD7A0();
    sub_257E935D0(&qword_27F8FB6A0, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
    swift_allocError();
    sub_257ECD7B0();
    swift_willThrow();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_257E918A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB5A0, &unk_257EEFCA0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v3, v4, v5, v6);
  v59 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB6C0, &qword_257EF07D8);
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v54 - v13;
  v15 = sub_257ECD830();
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  v20 = sub_257ECD7D0();
  MEMORY[0x28223BE20](v20 - 8, v21, v22, v23, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB6B0, &qword_257EF07C8);
  MEMORY[0x28223BE20](v25 - 8, v26, v27, v28, v29);
  v31 = &v54 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB6B8, &qword_257EF07D0);
  MEMORY[0x28223BE20](v32 - 8, v33, v34, v35, v36);
  v38 = &v54 - v37;
  v39 = type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand(0);
  MEMORY[0x28223BE20](v39 - 8, v40, v41, v42, v43);
  v45 = &v54 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v45 = 0;
  v47 = *(v46 + 28);
  sub_257ECD750();
  v48 = sub_257ECD760();
  (*(*(v48 - 8) + 56))(v38, 0, 1, v48);
  v49 = sub_257ECD770();
  (*(*(v49 - 8) + 56))(v31, 1, 1, v49);
  sub_257ECD7C0();
  sub_257ECD820();
  sub_257ECD850();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257E93618();
  v50 = v60;
  sub_257ED0840();
  if (!v50)
  {
    v51 = v56;
    sub_257BD2D4C(&qword_27F8FB6D0, &qword_27F8FB5A0, &unk_257EEFCA0, MEMORY[0x277CEEA68]);
    v52 = v58;
    sub_257ED0540();
    (*(v57 + 8))(v14, v8);
    (*(v51 + 40))(&v45[v47], v59, v52);
    sub_257E936C8(v45, v55);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_257E9366C(v45);
}

void sub_257E91D50(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E756F6E6E61 && a2 == 0xEC000000746E656DLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_257ED0640();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_257E91DE8(uint64_t a1)
{
  v2 = sub_257E93618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257E91E24(uint64_t a1)
{
  v2 = sub_257E93618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257E91E60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E91620();
}

uint64_t sub_257E91EEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_257E935D0(&qword_27F8FB6A8, type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand, &unk_257EF0550);
  *v3 = v1;
  v3[1] = sub_257C167C4;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_257E91FEC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_257ECD810();
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_257E92088@<X0>(void *a1@<X8>)
{
  v3 = sub_257ECD830();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v8 = sub_257ECD7D0();
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB6B0, &qword_257EF07C8);
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB6B8, &qword_257EF07D0);
  MEMORY[0x28223BE20](v20 - 8, v21, v22, v23, v24);
  v26 = &v30 - v25;
  *a1 = 0;
  sub_257ECD750();
  v27 = sub_257ECD760();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  v28 = sub_257ECD770();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  sub_257ECD7C0();
  sub_257ECD820();
  return sub_257ECD850();
}

unint64_t sub_257E9230C()
{
  result = qword_27F8FB4E0;
  if (!qword_27F8FB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4E0);
  }

  return result;
}

unint64_t sub_257E92368()
{
  result = qword_27F8FB4E8;
  if (!qword_27F8FB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4E8);
  }

  return result;
}

unint64_t sub_257E923C0()
{
  result = qword_27F8FB4F0;
  if (!qword_27F8FB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4F0);
  }

  return result;
}

unint64_t sub_257E9241C()
{
  result = qword_27F8FB4F8;
  if (!qword_27F8FB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB4F8);
  }

  return result;
}

unint64_t sub_257E92474()
{
  result = qword_27F8FB500;
  if (!qword_27F8FB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB500);
  }

  return result;
}

unint64_t sub_257E924D0()
{
  result = qword_27F8FB508;
  if (!qword_27F8FB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB508);
  }

  return result;
}

unint64_t sub_257E92528()
{
  result = qword_27F8FB510;
  if (!qword_27F8FB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB510);
  }

  return result;
}

unint64_t sub_257E92580()
{
  result = qword_27F8FB518;
  if (!qword_27F8FB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB518);
  }

  return result;
}

unint64_t sub_257E925D4()
{
  result = qword_27F8FB520;
  if (!qword_27F8FB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB520);
  }

  return result;
}

unint64_t sub_257E92628()
{
  result = qword_27F8FB528;
  if (!qword_27F8FB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB528);
  }

  return result;
}

unint64_t sub_257E9267C()
{
  result = qword_27F8FB530;
  if (!qword_27F8FB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB530);
  }

  return result;
}

unint64_t sub_257E926D0()
{
  result = qword_27F8FB538;
  if (!qword_27F8FB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB538);
  }

  return result;
}

unint64_t sub_257E92724()
{
  result = qword_27F8FB540;
  if (!qword_27F8FB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB540);
  }

  return result;
}

unint64_t sub_257E92778()
{
  result = qword_27F8FB548;
  if (!qword_27F8FB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB548);
  }

  return result;
}

unint64_t sub_257E927CC()
{
  result = qword_27F8FB550;
  if (!qword_27F8FB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB550);
  }

  return result;
}

unint64_t sub_257E92820()
{
  result = qword_27F8FB558;
  if (!qword_27F8FB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB558);
  }

  return result;
}

uint64_t type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand(uint64_t a1)
{
  result = qword_27F8FB5A8;
  if (!qword_27F8FB5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_257E928C0()
{
  result = qword_27F8FB580;
  if (!qword_27F8FB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB580);
  }

  return result;
}

unint64_t sub_257E92914()
{
  result = qword_27F8FB590;
  if (!qword_27F8FB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB590);
  }

  return result;
}

unint64_t sub_257E92968()
{
  result = qword_27F8FB598;
  if (!qword_27F8FB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB598);
  }

  return result;
}

void sub_257E929E4(uint64_t a1)
{
  sub_257E92A68(319);
  if (v1 <= 0x3F)
  {
    sub_257E92AC0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257E92A68(uint64_t a1)
{
  if (!qword_27F8FB5B8)
  {
    sub_257ECD5C0();
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8FB5B8);
    }
  }
}

void sub_257E92AC0(uint64_t a1)
{
  if (!qword_27F8FB5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4D70, &unk_257ED81A0);
    v1 = sub_257ECD860();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8FB5C0);
    }
  }
}

uint64_t sub_257E92B94(uint64_t *a1, unsigned int a2)
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

uint64_t sub_257E92BF0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_257E92C54()
{
  result = qword_27F8FB5C8;
  if (!qword_27F8FB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB5C8);
  }

  return result;
}

unint64_t sub_257E92CB0()
{
  result = qword_27F8FB5D0;
  if (!qword_27F8FB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB5D0);
  }

  return result;
}

unint64_t sub_257E92D08()
{
  result = qword_27F8FB5D8;
  if (!qword_27F8FB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB5D8);
  }

  return result;
}

unint64_t sub_257E92D64()
{
  result = qword_27F8FB5E0;
  if (!qword_27F8FB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB5E0);
  }

  return result;
}

unint64_t sub_257E92DBC()
{
  result = qword_27F8FB5E8;
  if (!qword_27F8FB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB5E8);
  }

  return result;
}

unint64_t sub_257E92E18()
{
  result = qword_27F8FB5F0;
  if (!qword_27F8FB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB5F0);
  }

  return result;
}

unint64_t sub_257E92E70()
{
  result = qword_27F8FB5F8;
  if (!qword_27F8FB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB5F8);
  }

  return result;
}

unint64_t sub_257E92ECC()
{
  result = qword_27F8FB600;
  if (!qword_27F8FB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB600);
  }

  return result;
}

unint64_t sub_257E92F24()
{
  result = qword_27F8FB608;
  if (!qword_27F8FB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB608);
  }

  return result;
}

unint64_t sub_257E92F80()
{
  result = qword_27F8FB610;
  if (!qword_27F8FB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB610);
  }

  return result;
}

unint64_t sub_257E92FD8()
{
  result = qword_27F8FB618;
  if (!qword_27F8FB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB618);
  }

  return result;
}

unint64_t sub_257E93034()
{
  result = qword_27F8FB620;
  if (!qword_27F8FB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB620);
  }

  return result;
}

unint64_t sub_257E9308C()
{
  result = qword_27F8FB628;
  if (!qword_27F8FB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB628);
  }

  return result;
}

unint64_t sub_257E930E8()
{
  result = qword_27F8FB630;
  if (!qword_27F8FB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB630);
  }

  return result;
}

unint64_t sub_257E93140()
{
  result = qword_27F8FB638;
  if (!qword_27F8FB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB638);
  }

  return result;
}

unint64_t sub_257E9319C()
{
  result = qword_27F8FB640;
  if (!qword_27F8FB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB640);
  }

  return result;
}

unint64_t sub_257E93314()
{
  result = qword_27F8FB660;
  if (!qword_27F8FB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB660);
  }

  return result;
}

unint64_t sub_257E9336C()
{
  result = qword_27F8FB668;
  if (!qword_27F8FB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB668);
  }

  return result;
}

unint64_t sub_257E933C4()
{
  result = qword_27F8FB670;
  if (!qword_27F8FB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB670);
  }

  return result;
}

unint64_t sub_257E9341C()
{
  result = qword_27F8FB678;
  if (!qword_27F8FB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB678);
  }

  return result;
}

unint64_t sub_257E93474()
{
  result = qword_27F8FB680;
  if (!qword_27F8FB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB680);
  }

  return result;
}

unint64_t sub_257E934CC()
{
  result = qword_27F8FB688;
  if (!qword_27F8FB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB688);
  }

  return result;
}

unint64_t sub_257E93524()
{
  result = qword_27F8FB690;
  if (!qword_27F8FB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB690);
  }

  return result;
}

unint64_t sub_257E9357C()
{
  result = qword_27F8FB698;
  if (!qword_27F8FB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB698);
  }

  return result;
}

uint64_t sub_257E935D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257E93618()
{
  result = qword_27F8FB6C8;
  if (!qword_27F8FB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB6C8);
  }

  return result;
}

uint64_t sub_257E9366C(uint64_t a1)
{
  v2 = type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257E936C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagnifierCommand.ServiceCommand.SimulateEventCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_257E9372C()
{
  result = qword_27F8FB6D8;
  if (!qword_27F8FB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB6D8);
  }

  return result;
}

unint64_t sub_257E93780()
{
  result = qword_27F8FB6E0;
  if (!qword_27F8FB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB6E0);
  }

  return result;
}

unint64_t sub_257E937D4()
{
  result = qword_27F8FB6E8;
  if (!qword_27F8FB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB6E8);
  }

  return result;
}

unint64_t sub_257E93828()
{
  result = qword_27F8FB6F0;
  if (!qword_27F8FB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB6F0);
  }

  return result;
}

unint64_t sub_257E9387C()
{
  result = qword_27F8FB6F8;
  if (!qword_27F8FB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB6F8);
  }

  return result;
}

unint64_t sub_257E938D0()
{
  result = qword_27F8FB700;
  if (!qword_27F8FB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB700);
  }

  return result;
}

unint64_t sub_257E93924()
{
  result = qword_27F8FB708;
  if (!qword_27F8FB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB708);
  }

  return result;
}

unint64_t sub_257E93978()
{
  result = qword_27F8FB710;
  if (!qword_27F8FB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB710);
  }

  return result;
}

unint64_t sub_257E939E0()
{
  result = qword_27F8FB718;
  if (!qword_27F8FB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB718);
  }

  return result;
}

unint64_t sub_257E93A38()
{
  result = qword_27F8FB720;
  if (!qword_27F8FB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB720);
  }

  return result;
}

unint64_t sub_257E93A90()
{
  result = qword_27F8FB728;
  if (!qword_27F8FB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB728);
  }

  return result;
}

uint64_t sub_257E93B60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_257BF2A64(0, v2, 0);
    v3 = v12;
    v6 = a1 + 32;
    do
    {

      v8 = sub_257E94078(v7, a2);

      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF2A64((v9 > 1), v10 + 1, 1);
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v8;
      v6 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_257E93C58(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v50 = a1;
  v51 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v52 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12, v13, v14, v15);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v48 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v42 = *(v24 - 8);
  v43 = v24;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v39 - v29;
  v31 = sub_257ECFAF0();
  if (!v31)
  {
    return sub_257ECF840();
  }

  v53 = v31;
  v57 = sub_257ED03A0();
  v44 = sub_257ED03B0();
  sub_257ED0350();
  result = sub_257ECFAE0();
  if ((v53 & 0x8000000000000000) == 0)
  {
    v39 = v10;
    v40 = a5;
    v33 = 0;
    v45 = (v54 + 16);
    v46 = (v54 + 8);
    v47 = v8;
    while (!__OFADD__(v33, 1))
    {
      v54 = v33 + 1;
      v34 = sub_257ECFB10();
      v35 = v17;
      v36 = v17;
      v37 = AssociatedTypeWitness;
      (*v45)(v35);
      v34(v56, 0);
      v38 = v55;
      v50(v36, v52);
      if (v38)
      {
        (*v46)(v36, v37);
        (*(v42 + 8))(v30, v43);

        return (*(v39 + 32))(v41, v52, v40);
      }

      v55 = 0;
      (*v46)(v36, v37);
      sub_257ED0390();
      result = sub_257ECFB00();
      ++v33;
      v17 = v36;
      if (v54 == v53)
      {
        (*(v42 + 8))(v30, v43);
        return v57;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_257E94078(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DetectedTextBlock(0);
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v42 = &v39 - v16;
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v41 = &v39 - v22;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = *(type metadata accessor for SpatialTextBlock(0) - 8);
  v25 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v26 = *(v24 + 72);
  v27 = MEMORY[0x277D84F90];
  v40 = v10;
  do
  {
    v29 = *a2;
    if (*(*a2 + 16))
    {
      v30 = sub_257C0458C(v25);
      if (v31)
      {
        v32 = *(v43 + 72);
        v33 = v42;
        sub_257C31F70(*(v29 + 56) + v32 * v30, v42, type metadata accessor for DetectedTextBlock);
        v34 = v33;
        v35 = v41;
        sub_257BD584C(v34, v41, type metadata accessor for DetectedTextBlock);
        sub_257BD584C(v35, v10, type metadata accessor for DetectedTextBlock);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_257BFD440(0, v27[2] + 1, 1, v27);
        }

        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          v27 = sub_257BFD440((v36 > 1), v37 + 1, 1, v27);
        }

        v27[2] = v37 + 1;
        v28 = v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + v37 * v32;
        v10 = v40;
        sub_257BD584C(v40, v28, type metadata accessor for DetectedTextBlock);
      }
    }

    v25 += v26;
    --v23;
  }

  while (v23);
  return v27;
}

double sub_257E94324()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v67, v10, v11, v12, v13);
  v70 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v69, v15, v16, v17, v18);
  v68 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548348;
  v21 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
  swift_beginAccess();
  v22 = v21[1];
  v23 = v21[2];
  v76 = *v21;
  v77 = v22;
  v78 = v23;
  v24 = qword_2815447E0;

  if (v24 != -1)
  {
    v25 = swift_once();
  }

  v30 = qword_2815447E8;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  *(&v66 - 2) = &v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
  v73 = v30;
  sub_257ECFD50();

  v31 = sub_257C592E8(1, v74);

  v71 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v76 == 1)
  {
    v66 = 0;
    v72 = v3;
    v32 = v2;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass_];
    v35 = sub_257ECF4C0();
    v36 = sub_257ECF4C0();
    v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

    v38 = v37;
    if (!v37)
    {
      sub_257ECF500();
      v38 = sub_257ECF4C0();
    }

    v76 = sub_257ECF500();
    v77 = v39;
    sub_257BDAB08();
    v40 = sub_257ED0100();
    v42 = v41;

    v43 = sub_257E003E8();
    v44 = sub_257E00504();
    sub_257DFD370(v40, v42, v43, v44);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    sub_257D1A130();
    v2 = v32;
    v3 = v72;
  }

  v45 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v76 & 1) == 0)
    {
      v72 = v3;
      v46 = v2;
      v47 = v20 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
      v48 = swift_beginAccess();
      v49 = *(v47 + 8);
      v50 = *(v47 + 16);
      v76 = *v47;
      v77 = v49;
      LOBYTE(v78) = v50;
      MEMORY[0x28223BE20](v48, v51, v52, v53, v54);
      *(&v66 - 2) = &v76;

      sub_257ECFD50();

      if (v75 == 1)
      {
        v2 = v46;
        v3 = v72;
        if ((*(v1 + v45) & 1) == 0)
        {
          if (*(v1 + v71) == 1)
          {
            v55 = v70;
            *v70 = 4;
            swift_storeEnumTagMultiPayload();
            v56 = v68;
            sub_257ECCCE0();
            v57 = v69;
            sub_257C31F70(v55, v56 + *(v69 + 20), type metadata accessor for MAGOutputEvent.EventType);
            *(v56 + v57[6]) = 0;
            *(v56 + v57[7]) = 0;
            sub_257ECC3F0();
            sub_257BD57EC(v55, type metadata accessor for MAGOutputEvent.EventType);
            *(v56 + v57[8]) = v20;
            sub_257CBBC80(v56);
            sub_257BD57EC(v56, type metadata accessor for MAGOutputEvent);
          }

          sub_257BD7F48();
        }
      }

      else
      {
        v2 = v46;
        v3 = v72;
      }
    }
  }

  v58 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument) = 0;

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextGroups) = MEMORY[0x277D84F90];

  v59 = qword_281548350 + 112;
  swift_beginAccess();
  LOBYTE(v75) = 1;
  v60 = sub_257ECF110();
  MEMORY[0x28223BE20](v60, v61, v62, v63, v64);
  *(&v66 - 2) = &v75;
  *(&v66 - 1) = v59;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  return result;
}

void sub_257E94AB8(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C672A8(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = sub_257ED05F0();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *&v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FA6A0, &qword_257EDB150);
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_257E968AC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_257E94C14(void *a1)
{
  v2 = *(type metadata accessor for DetectedTextBlock(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_257C672BC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_257E96504(v5);
  *a1 = v3;
}

void sub_257E94CBC()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = MEMORY[0x277D84F90];
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C31F70(v8, &v15[v9[5]], type metadata accessor for MAGOutputEvent.EventType);
  v15[v9[6]] = 1;
  v15[v9[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  sub_257ECC3F0();
  sub_257BD57EC(v8, type metadata accessor for MAGOutputEvent.EventType);
  *&v15[v9[8]] = v16;
  sub_257CBBC80(v15);
  sub_257BD57EC(v15, type metadata accessor for MAGOutputEvent);
  v17 = sub_257DFF054();
  v18 = [v17 view];
  if (v18)
  {
    v19 = v18;
    [v18 alpha];
    v21 = v20;

    if (v21 == 0.0)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      v24 = sub_257ECF4C0();
      v25 = sub_257ECF4C0();
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      v27 = v26;
      if (!v26)
      {
        sub_257ECF500();
        v27 = sub_257ECF4C0();
      }

      v34[0] = sub_257ECF500();
      v34[1] = v28;
      sub_257BDAB08();
      v29 = sub_257ED0100();
      v31 = v30;

      v32 = sub_257E003E8();
      v33 = sub_257E00504();
      sub_257DFD370(v29, v31, v32, v33);

      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v34[0]) == 1)
    {
      sub_257D1A130();
    }

    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn) = 0;
    *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  }

  else
  {
    __break(1u);
  }
}

double sub_257E950D0(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTextBlock(0);
  v9 = MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v7 + 20);
    v14 = &v11[*(v7 + 36)];
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    v17 = 0uLL;
    v9.n128_u64[0] = 0;
    v25 = v9;
    do
    {
      v24 = v17;
      sub_257C31F70(v15, v11, type metadata accessor for SpatialTextBlock);
      *&v18 = vmuls_lane_f32(COERCE_FLOAT(*&v11[v13]), *&v11[v13], 1);
      v19 = v25;
      v19.n128_f32[0] = v25.n128_f32[0] + *&v18;
      v25 = v19;
      v22 = v14[3];
      v23 = v18;
      sub_257BD57EC(v11, type metadata accessor for SpatialTextBlock);
      v20.i64[0] = vaddq_f32(v24, vmulq_n_f32(v22, *&v23)).u64[0];
      v20.i64[1] = COERCE_UNSIGNED_INT(v24.f32[2] + vmuls_lane_f32(*&v23, v22, 2));
      v15 += v16;
      v17 = v20;
      --v12;
    }

    while (v12);
  }

  else
  {
    v20 = 0uLL;
    v9.n128_u64[0] = 0;
    v25 = v9;
  }

  *&result = vdivq_f32(v20, vdupq_lane_s32(v25.n128_u64[0], 0)).u64[0];
  return result;
}

double sub_257E9526C(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTextBlock(0);
  v9 = MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v7 + 20);
    v14 = &v11[*(v7 + 36)];
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    v17 = 0uLL;
    v9.n128_u64[0] = 0;
    v32 = v9;
    do
    {
      v31 = v17;
      sub_257C31F70(v15, v11, type metadata accessor for SpatialTextBlock);
      *&v18 = vmuls_lane_f32(COERCE_FLOAT(*&v11[v13]), *&v11[v13], 1);
      v19 = v32;
      v19.n128_f32[0] = v32.n128_f32[0] + *&v18;
      v32 = v19;
      v20 = *(v14 + 1);
      v28 = *v14;
      v29 = v20;
      v30 = v18;
      sub_257BD57EC(v11, type metadata accessor for SpatialTextBlock);
      v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v28)), v29, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
      v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
      v23 = vmulq_f32(v21, v21);
      *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
      *v23.f32 = vrsqrte_f32(v24);
      *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
      v25 = vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
      *v26.f32 = vadd_f32(*v31.f32, vmul_n_f32(*v25.f32, *&v30));
      v26.f32[2] = v31.f32[2] + vmuls_lane_f32(*&v30, v25, 2);
      v26.i32[3] = 0;
      v15 += v16;
      v17 = v26;
      --v12;
    }

    while (v12);
  }

  else
  {
    v26 = 0uLL;
    v9.n128_u64[0] = 0;
    v32 = v9;
  }

  *&result = vdivq_f32(v26, vdupq_lane_s32(v32.n128_u64[0], 0)).u64[0];
  return result;
}

void sub_257E95474(uint64_t a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float a4@<S1>)
{
  v6 = *(a1 + 16);
  if (v6 != 1)
  {
    if (!v6)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    v29 = MEMORY[0x277D84F90];
    sub_257BF2A84(0, v6, 0);
    v10 = v29;
    v11 = (a1 + 32);
    do
    {
      v12 = *v11;

      *v14.i64 = sub_257E950D0(v13);
      v15 = v14;
      v29 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v27 = v14;
        sub_257BF2A84((v16 > 1), v17 + 1, 1);
        v15 = v27;
        v10 = v29;
      }

      v19 = vsubq_f32(a3, v15);
      v20 = vmulq_f32(v19, v19);
      *(v10 + 16) = v18;
      v21 = v10 + 16 * v17;
      *(v21 + 32) = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
      *(v21 + 40) = v12;
      ++v11;
      --v6;
    }

    while (v6);
    v29 = v10;
    sub_257ECC3F0();
    sub_257E94AB8(&v29);

    v22 = v29;
    v23 = *(v29 + 16);
    if (v23)
    {
      v4 = *(v29 + 32);
      v6 = *(v29 + 40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v22;
      if (!isUniquelyReferenced_nonNull_native || (v23 - 1) > v22[3] >> 1)
      {
        v22 = sub_257BFE28C(isUniquelyReferenced_nonNull_native, v23, 1, v22);
        v30 = v22;
      }

      sub_257E54108(0, 1, 0);
      v23 = v22[2];
      if (v23)
      {
        v18 = v22[5];
        v30 = v22;
        v25 = v22[3];

        if (v23 - 1 <= v25 >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_22:
    v30 = sub_257BFE28C(1, v23, 1, v22);
LABEL_17:
    sub_257E54108(0, 1, 0);

    v26 = sub_257E97F5C(v18, v6);

    if ((v26 / v4) >= a4)
    {
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F69A0, &unk_257EDD420);
      *(a2 + 32) = sub_257E99A18();
      *a2 = v6;
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return;
  }

  v7 = *(a1 + 32);
  *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F69A0, &unk_257EDD420);
  *(a2 + 32) = sub_257E99A18();
  *a2 = v7;
}

uint64_t sub_257E9576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_257ECF900();
  v5[4] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E95804, v7, v6);
}

uint64_t sub_257E95804()
{
  v1 = v0[3];
  v2 = v0[2];

  [v1 timestamp];
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastDetectedTextCheckTime) = v3;
  *(*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback) = 0;
  v4 = [v1 capturedImage];
  sub_257CB7AE4(v4, 1);
  v6 = v0[2];
  v5 = v0[3];
  v8 = v7;
  v9 = v7;
  sub_257E9595C(v8, v6, v5);

  v10 = v0[1];

  return v10();
}

double sub_257E9595C(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    v7 = detectTextBlocks(forDocument:)(v6);
    v8 = sub_257E9830C(v7);

    v16[3] = &type metadata for MFFeatureFlags;
    v16[4] = sub_257C73100();
    LOBYTE(v16[0]) = 0;
    v9 = sub_257ECCF60();
    __swift_destroy_boxed_opaque_existential_0(v16);
    if (v9)
    {
      sub_257E98CA4(v8, a3);
      v11 = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5958, &qword_257EDB138);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_257ED6D30;
      v16[0] = v8;

      sub_257E94C14(v16);

      *(v11 + 32) = v16[0];
    }

    v14 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument);
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument) = a1;
    v15 = v6;

    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextGroups) = v11;

    sub_257E95B30(v11);
  }

  else
  {
    v12 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument);
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument) = 0;

    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextGroups) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_257E95B30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = (v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v18 - 8, v19, v20, v21, v22);
  v61 = v59 - v23;
  v24 = *(a1 + 16);
  if (!v24)
  {
    v37 = 0;
LABEL_20:
    v63[1] = v37;
    sub_257CCCE54(0, &v64);
    v38 = v64;
    if (v64 != 12)
    {
      v39 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService];
      v40 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage;
      v41 = *(v39 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage);
      if (v41 < 61)
      {
        v49 = v41 + 1;
      }

      else
      {
        v42 = sub_257ECF930();
        (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
        sub_257ECF900();
        v43 = v2;
        v62 = v2;
        v44 = v43;
        v45 = sub_257ECF8F0();
        v46 = swift_allocObject();
        v47 = MEMORY[0x277D85700];
        *(v46 + 16) = v45;
        *(v46 + 24) = v47;
        *(v46 + 32) = v44;
        v48 = v61;
        v2 = v62;
        *(v46 + 40) = v38;
        sub_257C3FBD4(0, 0, v48, &unk_257EF0A30, v46);

        v49 = 0;
      }

      *(v39 + v40) = v49;
    }

    *v10 = a1;
    swift_storeEnumTagMultiPayload();

    sub_257ECCCE0();
    sub_257C31F70(v10, &v17[v11[5]], type metadata accessor for MAGOutputEvent.EventType);
    v17[v11[6]] = 1;
    v17[v11[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v59[1] = v4;
  v60 = a1;
  v62 = v1;
  v25 = (a1 + 32);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = *v25;
    v28 = *(*v25 + 16);
    v2 = v26[2];
    v29 = &v2[v28];
    if (__OFADD__(v2, v28))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v29 <= v26[3] >> 1)
    {
      if (*(v27 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v2 <= v29)
      {
        v31 = &v2[v28];
      }

      else
      {
        v31 = v2;
      }

      v26 = sub_257BFD440(isUniquelyReferenced_nonNull_native, v31, 1, v26);
      if (*(v27 + 16))
      {
LABEL_14:
        v2 = v26[2];
        v32 = (v26[3] >> 1) - v2;
        type metadata accessor for DetectedTextBlock(0);
        if (v32 < v28)
        {
          goto LABEL_37;
        }

        swift_arrayInitWithCopy();

        if (v28)
        {
          v33 = v26[2];
          v34 = __OFADD__(v33, v28);
          v35 = v33 + v28;
          if (v34)
          {
            goto LABEL_38;
          }

          v26[2] = v35;
        }

        goto LABEL_4;
      }
    }

    if (v28)
    {
      goto LABEL_36;
    }

LABEL_4:
    ++v25;
    if (!--v24)
    {
      v36 = sub_257EB75A8(v26);

      sub_257CCB1A8(v36, 0, v63);

      v37 = v63[0];
      v2 = v62;
      a1 = v60;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_26:
  v50 = qword_281548348;
  sub_257ECC3F0();
  sub_257BD57EC(v10, type metadata accessor for MAGOutputEvent.EventType);
  *&v17[v11[8]] = v50;
  v51 = MAGOutputEvent.displayContent.getter();
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    if (!v51 && v52 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0 || (v55 = &v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement], , v56 = sub_257ECF4C0(), , v57 = sub_257ECF4C0(), v58 = sub_257E5BABC(v57, 1000, 0.65), v56, v57, (v58 & 1) == 0))
    {
      sub_257BD57EC(v17, type metadata accessor for MAGOutputEvent);
    }

    else
    {
      sub_257CBBC80(v17);
      sub_257BD57EC(v17, type metadata accessor for MAGOutputEvent);
      *v55 = v53;
      v55[1] = v54;
    }
  }

  else
  {
    sub_257BD57EC(v17, type metadata accessor for MAGOutputEvent);
  }
}

uint64_t sub_257E960D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = type metadata accessor for MAGOutputEvent(0);
  *(v5 + 48) = swift_task_alloc();
  sub_257ECF900();
  *(v5 + 56) = sub_257ECF8F0();
  v7 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E961D0, v7, v6);
}

uint64_t sub_257E961D0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v20 = *(v0 + 64);

  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();

  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_257ECF500();
  v11 = v10;

  v12 = sub_257E003E8();
  v13 = sub_257E00504();
  sub_257DFD370(v9, v11, v12, v13);

  *v2 = v20;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C31F70(v2, v1 + v3[5], type metadata accessor for MAGOutputEvent.EventType);
  *(v1 + v3[6]) = 1;
  *(v1 + v3[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = *(v0 + 32);
  v17 = qword_281548348;
  sub_257ECC3F0();
  sub_257BD57EC(v16, type metadata accessor for MAGOutputEvent.EventType);
  *(v14 + *(v15 + 32)) = v17;
  sub_257CBBC80(v14);
  sub_257BD57EC(v14, type metadata accessor for MAGOutputEvent);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_257E96474@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(*a2 + 16))
  {
    result = sub_257C0458C(result);
    if (v5)
    {
      v6 = result;
      v7 = *(v4 + 56);
      v8 = type metadata accessor for DetectedTextBlock(0);
      return sub_257C31F70(v7 + *(*(v8 - 8) + 72) * v6, a3, type metadata accessor for DetectedTextBlock);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_257E96504(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DetectedTextBlock(0);
        v6 = sub_257ECF850();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DetectedTextBlock(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_257E96E44(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_257E96630(0, v2, 1, a1);
  }
}

void sub_257E96630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for DetectedTextBlock(0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v29 = &v40 - v28;
  v42 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v48 = v21 + 8;
    v49 = v29 + 8;
    v32 = v30 + v31 * (a3 - 1);
    v33 = -v31;
    v34 = a1 - a3;
    v47 = v30;
    v41 = v31;
    v35 = v30 + v31 * a3;
LABEL_5:
    v45 = v32;
    v46 = a3;
    v43 = v35;
    v44 = v34;
    while (1)
    {
      sub_257C31F70(v35, v29, type metadata accessor for DetectedTextBlock);
      sub_257C31F70(v32, v21, type metadata accessor for DetectedTextBlock);
      v36 = *(v8 + 24);
      v37 = 1.0 - *&v49[v36];
      v38 = 1.0 - *&v48[v36];
      sub_257BD57EC(v21, type metadata accessor for DetectedTextBlock);
      sub_257BD57EC(v29, type metadata accessor for DetectedTextBlock);
      if (v37 >= v38)
      {
LABEL_4:
        a3 = v46 + 1;
        v32 = v45 + v41;
        v34 = v44 - 1;
        v35 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      sub_257BD584C(v35, v14, type metadata accessor for DetectedTextBlock);
      swift_arrayInitWithTakeFrontToBack();
      sub_257BD584C(v14, v32, type metadata accessor for DetectedTextBlock);
      v32 += v33;
      v35 += v33;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_257E968AC(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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

    v82 = v8 + 16;
    v83 = *(v8 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[16 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_257E97800((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
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
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 8;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 4;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = *(v23 + 1);
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
    v36 = *(v8 + 3);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      v8 = sub_257BFCB00((v36 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v37;
    v38 = v8 + 32;
    v39 = &v8[16 * v5 + 32];
    *v39 = v9;
    *(v39 + 1) = v7;
    v91 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[16 * v37];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[16 * v37];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = &v38[16 * v5 - 16];
        v78 = *v77;
        v79 = &v38[16 * v5];
        v80 = *(v79 + 1);
        sub_257E97800((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *(v8 + 2);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        memmove(&v38[16 * v5], v79 + 16, 16 * (v81 - 1 - v5));
        *(v8 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[16 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[16 * v37];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

void sub_257E96E44(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v132 = a1;
  v9 = type metadata accessor for DetectedTextBlock(0);
  v142 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v136 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v143 = &v129 - v20;
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v34 = &v129 - v32;
  v135 = a3;
  v35 = a3[1];
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v132;
    if (!*v132)
    {
      goto LABEL_133;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v135;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_127:
      v37 = sub_257C66E20(v37);
    }

    v149 = v37;
    v124 = *(v37 + 16);
    if (v124 >= 2)
    {
      while (*v53)
      {
        v125 = *(v37 + 16 * v124);
        v126 = v37;
        v127 = *(v37 + 16 * (v124 - 1) + 32);
        v37 = *(v37 + 16 * (v124 - 1) + 40);
        sub_257E97A04(*v53 + *(v142 + 72) * v125, *v53 + *(v142 + 72) * v127, *v53 + *(v142 + 72) * v37, v5);
        if (v6)
        {
          goto LABEL_105;
        }

        if (v37 < v125)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_257C66E20(v126);
        }

        if (v124 - 2 >= *(v126 + 2))
        {
          goto LABEL_121;
        }

        v128 = &v126[16 * v124];
        *v128 = v125;
        *(v128 + 1) = v37;
        v149 = v126;
        sub_257C66D94(v124 - 1);
        v37 = v149;
        v124 = *(v149 + 16);
        if (v124 <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_131;
    }

LABEL_105:

    return;
  }

  v148 = v31;
  v130 = a4;
  v36 = 0;
  v144 = v33;
  v146 = v33 + 8;
  v147 = v34 + 8;
  v37 = MEMORY[0x277D84F90];
  v145 = &v129 - v32;
  while (1)
  {
    v38 = v36;
    v133 = v37;
    if (v36 + 1 >= v35)
    {
      v52 = v36 + 1;
      v53 = v135;
    }

    else
    {
      v39 = *v135;
      v40 = *(v142 + 72);
      v5 = *v135 + v40 * (v36 + 1);
      sub_257C31F70(v5, v34, type metadata accessor for DetectedTextBlock);
      v41 = v144;
      sub_257C31F70(v39 + v40 * v38, v144, type metadata accessor for DetectedTextBlock);
      v42 = *(v148 + 24);
      v43 = 1.0 - *&v147[v42];
      v44 = 1.0 - *(v146 + v42);
      sub_257BD57EC(v41, type metadata accessor for DetectedTextBlock);
      sub_257BD57EC(v34, type metadata accessor for DetectedTextBlock);
      v131 = v38;
      v45 = v38 + 2;
      v46 = v39 + v40 * (v38 + 2);
      while (v35 != v45)
      {
        sub_257C31F70(v46, v34, type metadata accessor for DetectedTextBlock);
        v47 = v144;
        sub_257C31F70(v5, v144, type metadata accessor for DetectedTextBlock);
        v48 = *(v148 + 24);
        v49 = 1.0 - *&v147[v48];
        v50 = 1.0 - *(v146 + v48);
        v51 = v47;
        v34 = v145;
        sub_257BD57EC(v51, type metadata accessor for DetectedTextBlock);
        sub_257BD57EC(v34, type metadata accessor for DetectedTextBlock);
        ++v45;
        v46 += v40;
        v5 += v40;
        if (v43 < v44 == v49 >= v50)
        {
          v52 = v45 - 1;
          goto LABEL_11;
        }
      }

      v52 = v35;
LABEL_11:
      v37 = v133;
      v38 = v131;
      v53 = v135;
      if (v43 < v44)
      {
        if (v52 < v131)
        {
          goto LABEL_124;
        }

        if (v131 < v52)
        {
          v54 = v40 * (v52 - 1);
          v55 = v52 * v40;
          v141 = v52;
          v56 = v52;
          v57 = v131;
          v58 = v131 * v40;
          do
          {
            if (v57 != --v56)
            {
              v59 = *v135;
              if (!*v135)
              {
                goto LABEL_130;
              }

              v5 = v59 + v58;
              sub_257BD584C(v59 + v58, v136, type metadata accessor for DetectedTextBlock);
              if (v58 < v54 || v5 >= v59 + v55)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_257BD584C(v136, v59 + v54, type metadata accessor for DetectedTextBlock);
              v37 = v133;
            }

            ++v57;
            v54 -= v40;
            v55 -= v40;
            v58 += v40;
          }

          while (v57 < v56);
          v53 = v135;
          v34 = v145;
          v38 = v131;
          v52 = v141;
        }
      }
    }

    v60 = v53[1];
    if (v52 < v60)
    {
      if (__OFSUB__(v52, v38))
      {
        goto LABEL_123;
      }

      if (v52 - v38 < v130)
      {
        if (__OFADD__(v38, v130))
        {
          goto LABEL_125;
        }

        if (v38 + v130 >= v60)
        {
          v61 = v53[1];
        }

        else
        {
          v61 = v38 + v130;
        }

        if (v61 < v38)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v52 != v61)
        {
          break;
        }
      }
    }

    v62 = v52;
    if (v52 < v38)
    {
      goto LABEL_122;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_257BFCB00(0, *(v37 + 16) + 1, 1, v37);
    }

    v64 = *(v37 + 16);
    v63 = *(v37 + 24);
    v5 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v37 = sub_257BFCB00((v63 > 1), v64 + 1, 1, v37);
    }

    *(v37 + 16) = v5;
    v65 = v37 + 16 * v64;
    *(v65 + 32) = v38;
    *(v65 + 40) = v62;
    v66 = *v132;
    if (!*v132)
    {
      goto LABEL_132;
    }

    v137 = v62;
    if (v64)
    {
      while (1)
      {
        v67 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v68 = *(v37 + 32);
          v69 = *(v37 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_54:
          if (v71)
          {
            goto LABEL_111;
          }

          v84 = (v37 + 16 * v5);
          v86 = *v84;
          v85 = v84[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_114;
          }

          v90 = (v37 + 32 + 16 * v67);
          v92 = *v90;
          v91 = v90[1];
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_118;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v94 = (v37 + 16 * v5);
        v96 = *v94;
        v95 = v94[1];
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_68:
        if (v89)
        {
          goto LABEL_113;
        }

        v97 = v37 + 16 * v67;
        v99 = *(v97 + 32);
        v98 = *(v97 + 40);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_116;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_75:
        v105 = v67 - 1;
        if (v67 - 1 >= v5)
        {
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

        if (!*v53)
        {
          goto LABEL_129;
        }

        v106 = *(v37 + 32 + 16 * v105);
        v5 = *(v37 + 32 + 16 * v67 + 8);
        sub_257E97A04(*v53 + *(v142 + 72) * v106, *v53 + *(v142 + 72) * *(v37 + 32 + 16 * v67), *v53 + *(v142 + 72) * v5, v66);
        if (v6)
        {
          goto LABEL_105;
        }

        if (v5 < v106)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_257C66E20(v37);
        }

        if (v105 >= *(v37 + 16))
        {
          goto LABEL_108;
        }

        v107 = v37 + 16 * v105;
        *(v107 + 32) = v106;
        *(v107 + 40) = v5;
        v149 = v37;
        sub_257C66D94(v67);
        v37 = v149;
        v5 = *(v149 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = v37 + 32 + 16 * v5;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_109;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_110;
      }

      v79 = (v37 + 16 * v5);
      v81 = *v79;
      v80 = v79[1];
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_112;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_115;
      }

      if (v83 >= v75)
      {
        v101 = (v37 + 32 + 16 * v67);
        v103 = *v101;
        v102 = v101[1];
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_119;
        }

        if (v70 < v104)
        {
          v67 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v35 = v53[1];
    v36 = v137;
    if (v137 >= v35)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v108 = *v53;
  v109 = *(v142 + 72);
  v110 = *v53 + v109 * (v52 - 1);
  v111 = -v109;
  v131 = v38;
  v112 = v38 - v52;
  v134 = v109;
  v5 = v108 + v52 * v109;
  v113 = v144;
  v137 = v61;
LABEL_86:
  v140 = v110;
  v141 = v52;
  v138 = v5;
  v139 = v112;
  v114 = v110;
  v115 = v148;
  while (1)
  {
    v116 = v145;
    sub_257C31F70(v5, v145, type metadata accessor for DetectedTextBlock);
    sub_257C31F70(v114, v113, type metadata accessor for DetectedTextBlock);
    v117 = *(v115 + 24);
    v118 = 1.0 - *&v147[v117];
    v119 = 1.0 - *(v146 + v117);
    sub_257BD57EC(v113, type metadata accessor for DetectedTextBlock);
    sub_257BD57EC(v116, type metadata accessor for DetectedTextBlock);
    if (v118 >= v119)
    {
LABEL_85:
      v52 = v141 + 1;
      v110 = v140 + v134;
      v112 = v139 - 1;
      v5 = v138 + v134;
      v62 = v137;
      if (v141 + 1 != v137)
      {
        goto LABEL_86;
      }

      v6 = v129;
      v53 = v135;
      v37 = v133;
      v34 = v145;
      v38 = v131;
      if (v137 < v131)
      {
        goto LABEL_122;
      }

      goto LABEL_35;
    }

    if (!v108)
    {
      break;
    }

    v120 = v143;
    sub_257BD584C(v5, v143, type metadata accessor for DetectedTextBlock);
    v115 = v148;
    swift_arrayInitWithTakeFrontToBack();
    v121 = v120;
    v113 = v144;
    sub_257BD584C(v121, v114, type metadata accessor for DetectedTextBlock);
    v114 += v111;
    v5 += v111;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_85;
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

uint64_t sub_257E97800(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v20 = *(v18 - 4);
      v18 -= 4;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void sub_257E97A04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DetectedTextBlock(0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v57 = &v49 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_63;
  }

  v23 = (a2 - a1) / v21;
  v60 = a4;
  v61 = a1;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = v8;
    v33 = a4 + v25;
    if (v25 < 1)
    {
      v36 = a4 + v25;
    }

    else
    {
      v51 = v58 + 8;
      v52 = v57 + 8;
      v34 = -v21;
      v35 = a4 + v25;
      v36 = v33;
      v53 = a4;
      v54 = v34;
      do
      {
        v49 = v36;
        v37 = a2 + v34;
        v55 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v61 = a2;
            v59 = v49;
            goto LABEL_60;
          }

          v39 = a3;
          v50 = v36;
          v40 = a3 + v34;
          v41 = v35 + v34;
          v42 = v57;
          sub_257C31F70(v41, v57, type metadata accessor for DetectedTextBlock);
          v43 = v37;
          v44 = v37;
          v45 = v58;
          sub_257C31F70(v44, v58, type metadata accessor for DetectedTextBlock);
          v46 = *(v56 + 24);
          v47 = 1.0 - *(v52 + v46);
          v48 = 1.0 - *(v51 + v46);
          sub_257BD57EC(v45, type metadata accessor for DetectedTextBlock);
          sub_257BD57EC(v42, type metadata accessor for DetectedTextBlock);
          if (v47 < v48)
          {
            break;
          }

          v36 = v41;
          a3 = v40;
          if (v39 < v35 || v40 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v43;
          }

          else
          {
            v37 = v43;
            if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v41;
          v38 = v41 > v53;
          v34 = v54;
          a2 = v55;
          if (!v38)
          {
            goto LABEL_58;
          }
        }

        a3 = v40;
        if (v39 < v55 || v40 >= v55)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v50;
          v34 = v54;
        }

        else
        {
          a2 = v43;
          v36 = v50;
          v34 = v54;
          if (v39 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v53);
    }

LABEL_58:
    v61 = a2;
    v59 = v36;
  }

  else
  {
    v24 = v23 * v21;
    v55 = a3;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v24;
    v59 = a4 + v24;
    if (v24 >= 1 && a2 < v55)
    {
      v56 = v57 + 8;
      v28 = v57;
      v54 = v58 + 8;
      do
      {
        sub_257C31F70(a2, v28, type metadata accessor for DetectedTextBlock);
        v29 = v58;
        sub_257C31F70(a4, v58, type metadata accessor for DetectedTextBlock);
        v30 = *(v8 + 24);
        v31 = 1.0 - *(v56 + v30);
        v32 = 1.0 - *(v54 + v30);
        sub_257BD57EC(v29, type metadata accessor for DetectedTextBlock);
        sub_257BD57EC(v28, type metadata accessor for DetectedTextBlock);
        if (v31 >= v32)
        {
          if (a1 < a4 || a1 >= a4 + v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = a4 + v21;
          a4 += v21;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v21;
        }

        a1 += v21;
        v61 = a1;
      }

      while (a4 < v26 && a2 < v55);
    }
  }

LABEL_60:
  sub_257C761CC(&v61, &v60, &v59);
}

float sub_257E97F5C(uint64_t a1, uint64_t a2)
{
  *v4.i64 = sub_257E950D0(a2);
  v12 = v4;
  *v5.i64 = sub_257E950D0(a1);
  v11 = v5;
  *v6.i64 = sub_257E9526C(a2);
  v13 = v6;
  *v7.i64 = sub_257E9526C(a1);
  v8 = vextq_s8(v12, v12, 8uLL).u64[0];
  v9 = vextq_s8(v11, v11, 8uLL).u64[0];
  return vaddv_f32(vabs_f32(vadd_f32(vmul_f32(vsub_f32(vzip1_s32(v9, v8), vzip1_s32(v8, v9)), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v7, v7, 8uLL))), vadd_f32(vmul_f32(vsub_f32(vzip1_s32(*v11.i8, *v12.i8), vzip1_s32(*v12.i8, *v11.i8)), vzip1_s32(*v13.i8, *v7.i8)), vmul_f32(vsub_f32(vzip2_s32(*v11.i8, *v12.i8), vzip2_s32(*v12.i8, *v11.i8)), vzip2_s32(*v13.i8, *v7.i8)))))) * 0.5;
}

double sub_257E98020(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v19[-v8];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v19[15] != 1 || (!*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement] ? (v10 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement + 8] == 0xE000000000000000) : (v10 = 0), v10 || (sub_257ED0640() & 1) != 0))
  {
    [a1 timestamp];
    result = v12 - *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastDetectedTextCheckTime];
    if (result > 2.0)
    {
      v13 = sub_257ECF930();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      sub_257ECF900();
      v14 = v1;
      v15 = a1;
      v16 = sub_257ECF8F0();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v14;
      v17[5] = v15;
      sub_257C3FBD4(0, 0, v9, &unk_257EF0A18, v17);
    }
  }

  return result;
}

uint64_t sub_257E9824C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257E9576C(a1, v4, v5, v7, v6);
}

uint64_t sub_257E9830C(uint64_t a1)
{
  v2 = type metadata accessor for DetectedTextBlock(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v16 = &v26 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = *(v14 + 72);
  v20 = a1 + v18;
  v21 = MEMORY[0x277D84F90];
  do
  {
    sub_257C31F70(v20, v16, type metadata accessor for DetectedTextBlock);
    if (*&v16[*(v2 + 24) + 16] * *&v16[*(v2 + 24) + 24] <= 0.0009)
    {
      sub_257BD57EC(v16, type metadata accessor for DetectedTextBlock);
    }

    else
    {
      sub_257BD584C(v16, v8, type metadata accessor for DetectedTextBlock);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_257BF2A24(0, *(v21 + 16) + 1, 1);
        v21 = v27;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_257BF2A24((v23 > 1), v24 + 1, 1);
        v21 = v27;
      }

      *(v21 + 16) = v24 + 1;
      sub_257BD584C(v8, v21 + v18 + v24 * v19, type metadata accessor for DetectedTextBlock);
    }

    v20 += v19;
    --v17;
  }

  while (v17);
  return v21;
}

void *sub_257E98538(uint64_t a1, void *a2)
{
  v110 = a2;
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250, &qword_257EDC440);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v106 = &v99 - v16;
  v105 = type metadata accessor for SpatialTextBlock(0);
  v17 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v18, v19, v20, v21);
  v111 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v109 = &v99 - v28;
  v29 = type metadata accessor for DetectedTextBlock(0);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29 - 8, v31, v32, v33, v34);
  v108 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v104 = &v99 - v41;
  MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
  v48 = &v99 - v47;
  v49 = *(a1 + 16);
  if (!v49)
  {
    return MEMORY[0x277D84F98];
  }

  v99 = v10;
  v100 = v4;
  v101 = v3;
  v50 = objc_opt_self();
  v51 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v102 = (v17 + 48);
  v103 = v50;
  v52 = MEMORY[0x277D84F98];
  v53 = *(v30 + 72);
  while (1)
  {
    sub_257C31F70(v51, v48, type metadata accessor for DetectedTextBlock);
    v54 = [v103 currentDevice];
    v55 = [v54 orientation];

    if ((v55 - 2) > 2)
    {
      v56 = 1;
    }

    else
    {
      v56 = qword_257EF0A38[(v55 - 2)];
    }

    v57 = [v110 sceneDepth];
    if (!v57 || (v58 = v57, v59 = [v57 depthMap], v58, !v59))
    {

      goto LABEL_23;
    }

    v107 = v51;
    v60 = v49;
    v61 = v53;
    v62 = v48;
    v63 = v48;
    v64 = v104;
    sub_257C31F70(v62, v104, type metadata accessor for DetectedTextBlock);
    v65 = v110;
    v66 = [v110 camera];
    v67 = [v65 capturedImage];
    v68 = v59;
    v69 = v56;
    v70 = v106;
    sub_257EACA08(v64, v66, v67, v68, v69, v106);
    if ((*v102)(v70, 1, v105) == 1)
    {
      break;
    }

    v71 = v70;
    v72 = v109;
    sub_257BD584C(v71, v109, type metadata accessor for SpatialTextBlock);
    v73 = v72;
    v74 = v111;
    sub_257C31F70(v73, v111, type metadata accessor for SpatialTextBlock);
    sub_257C31F70(v63, v108, type metadata accessor for DetectedTextBlock);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v52;
    v76 = sub_257C0458C(v74);
    v78 = v52[2];
    v79 = (v77 & 1) == 0;
    v80 = __OFADD__(v78, v79);
    v81 = v78 + v79;
    if (v80)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_257ED06C0();
      __break(1u);
      return result;
    }

    v82 = v77;
    v48 = v63;
    if (v52[3] >= v81)
    {
      v53 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = v76;
        sub_257C096C8();
        v76 = v90;
      }
    }

    else
    {
      sub_257EC6268(v81, isUniquelyReferenced_nonNull_native);
      v76 = sub_257C0458C(v111);
      if ((v82 & 1) != (v83 & 1))
      {
        goto LABEL_29;
      }

      v53 = v61;
    }

    v84 = v60;
    v52 = v112;
    v85 = v107;
    if (v82)
    {
      sub_257C7E354(v108, v112[7] + v76 * v53);

      sub_257BD57EC(v111, type metadata accessor for SpatialTextBlock);
      sub_257BD57EC(v109, type metadata accessor for SpatialTextBlock);
      sub_257BD57EC(v48, type metadata accessor for DetectedTextBlock);
    }

    else
    {
      v112[(v76 >> 6) + 8] |= 1 << v76;
      v86 = v76;
      v87 = v111;
      sub_257C31F70(v111, v52[6] + *(v17 + 72) * v76, type metadata accessor for SpatialTextBlock);
      sub_257BD584C(v108, v52[7] + v86 * v53, type metadata accessor for DetectedTextBlock);

      sub_257BD57EC(v87, type metadata accessor for SpatialTextBlock);
      sub_257BD57EC(v109, type metadata accessor for SpatialTextBlock);
      sub_257BD57EC(v48, type metadata accessor for DetectedTextBlock);
      v88 = v52[2];
      v80 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v80)
      {
        goto LABEL_28;
      }

      v52[2] = v89;
    }

    v51 = v85 + v53;
    v49 = v84 - 1;
    if (!v49)
    {
      return v52;
    }
  }

  sub_257BE4084(v70, &qword_27F8F5250, &qword_257EDC440);
  v48 = v63;
LABEL_23:
  v91 = v99;
  sub_257ECD490();
  v92 = sub_257ECDA20();
  v93 = sub_257ECFC00();
  v94 = os_log_type_enabled(v92, v93);
  v96 = v100;
  v95 = v101;
  if (v94)
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_257BAC000, v92, v93, "Failed to spatialize text block", v97, 2u);
    MEMORY[0x259C74820](v97, -1, -1);
  }

  (*(v96 + 8))(v91, v95);
  sub_257BD57EC(v48, type metadata accessor for DetectedTextBlock);
  return 0;
}

void sub_257E98CA4(uint64_t a1, void *a2)
{
  v4 = sub_257ECDA30();
  *&v135 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DetectedTextBlock(0);
  v12 = *(v11 - 8);
  v138 = v11;
  v139 = v12;
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = &v131 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB730, &qword_257EF0A20);
  MEMORY[0x28223BE20](v26 - 8, v27, v28, v29, v30);
  v32 = &v131 - v31;
  v137 = type metadata accessor for SpatialTextBlock(0);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v33, v34, v35, v36);
  v38 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250, &qword_257EDC440);
  MEMORY[0x28223BE20](a1, v39, v40, v41, v42);
  v45 = &v131 - v44;
  v46 = *(a1 + 16);
  v47 = MEMORY[0x277D84F90];
  if (!v46)
  {
    return;
  }

  v133 = v25;
  v134 = v43;
  v48 = a2;
  v49 = sub_257E98538(v43, a2);
  if (!v49)
  {
    goto LABEL_15;
  }

  v50 = v4;
  v148[0] = v49;

  v52 = sub_257EA991C(v51, 0.15);

  if (!v52)
  {

    v4 = v50;
LABEL_15:
    sub_257ECD490();
    v81 = sub_257ECDA20();
    v82 = sub_257ECFBE0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_257BAC000, v81, v82, "Cannot group and sort 3D text groups. Sorting 2D text blocks instead", v83, 2u);
      MEMORY[0x259C74820](v83, -1, -1);
    }

    (*(v135 + 8))(v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5958, &qword_257EDB138);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_257ED6D30;
    v144 = v134;

    sub_257E94C14(&v144);
    *(v84 + 32) = v144;
    return;
  }

  v147 = v47;
  v53 = [v48 camera];
  [v53 transform];
  v135 = v54;

  v55 = v135;
  v55.i32[3] = 0;
  sub_257E95474(v52, &v141, v55, 0.25);
  *&v135 = v18;
  if (AssociatedTypeWitness)
  {
    sub_257BE40E4(&v141, &v144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5958, &qword_257EDB138);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    v57 = v145;
    v58 = v146;
    v59 = __swift_project_boxed_opaque_existential_1(&v144, v145);
    MEMORY[0x28223BE20](v59, v60, v61, v62, v63);
    *(&v131 - 2) = v148;
    *&v141 = sub_257E93C58(sub_257E999F8, (&v131 - 4), v57, v138, MEMORY[0x277D84A98], v58, MEMORY[0x277D84AC0], v64);

    sub_257E94C14(&v141);
    v132 = 0;
    v134 = v52;

    *(inited + 32) = v141;
    sub_257EB1420(inited);
    v65 = __swift_project_boxed_opaque_existential_1(&v144, v145);
    v69 = MEMORY[0x28223BE20](v65, v65, v66, v67, v68);
    (*(v71 + 16))(&v131 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v141);
    sub_257ECF730();
    v72 = (v136 + 48);
    v73 = (v139 + 56);
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v141, AssociatedTypeWitness);
      sub_257ED00E0();
      if ((*v72)(v45, 1, v137) == 1)
      {
        break;
      }

      sub_257BD584C(v45, v38, type metadata accessor for SpatialTextBlock);
      v75 = sub_257C0458C(v38);
      if (v76)
      {
        v77 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v148[0];
        v140 = v148[0];
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_257C096C8();
          v79 = v140;
        }

        sub_257BD57EC(*(v79 + 48) + *(v136 + 72) * v77, type metadata accessor for SpatialTextBlock);
        sub_257BD584C(*(v79 + 56) + *(v139 + 72) * v77, v32, type metadata accessor for DetectedTextBlock);
        sub_257C079B8(v77, v79);
        sub_257BD57EC(v38, type metadata accessor for SpatialTextBlock);
        v74 = 0;
        v148[0] = v79;
      }

      else
      {
        sub_257BD57EC(v38, type metadata accessor for SpatialTextBlock);
        v74 = 1;
      }

      (*v73)(v32, v74, 1, v138);
      sub_257BE4084(v32, &qword_27F8FB730, &qword_257EF0A20);
    }

    __swift_destroy_boxed_opaque_existential_0(&v141);
    __swift_destroy_boxed_opaque_existential_0(&v144);
    v52 = v134;
    v80 = v132;
  }

  else
  {
    v80 = 0;
  }

  v85 = sub_257E93B60(v52, v148);

  v86 = *(v85 + 16);
  if (v86)
  {
    v87 = 0;
    v88 = v86 - 1;
    v89 = MEMORY[0x277D84F98];
    while (2)
    {
      v90 = v87;
      while (1)
      {
        if (v90 >= *(v85 + 16))
        {
          goto LABEL_66;
        }

        v144 = *(v85 + 32 + 8 * v90);
        swift_bridgeObjectRetain_n();
        sub_257E94C14(&v144);
        if (v80)
        {
          goto LABEL_72;
        }

        if (v144[2])
        {
          break;
        }

        ++v90;

        if (v86 == v90)
        {
          goto LABEL_40;
        }
      }

      v136 = v88;
      v91 = *(v139 + 80);
      v137 = v144;
      v92 = v133;
      sub_257C31F70(v144 + ((v91 + 32) & ~v91), v133, type metadata accessor for DetectedTextBlock);
      v93 = v92;
      v94 = v135;
      sub_257C31F70(v93, v135, type metadata accessor for DetectedTextBlock);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v144 = v89;
      v96 = sub_257C0422C(v94);
      v98 = v89[2];
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        goto LABEL_70;
      }

      v102 = v97;
      if (v89[3] >= v101)
      {
        if ((v95 & 1) == 0)
        {
          v104 = v96;
          sub_257C099BC();
          v96 = v104;
          v89 = v144;
          if (v102)
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }
      }

      else
      {
        sub_257EC66D0(v101, v95);
        v96 = sub_257C0422C(v135);
        if ((v102 & 1) != (v103 & 1))
        {
          goto LABEL_73;
        }
      }

      v89 = v144;
      if (v102)
      {
LABEL_33:
        *(v89[7] + 8 * v96) = v137;

        sub_257BD57EC(v135, type metadata accessor for DetectedTextBlock);
        sub_257BD57EC(v133, type metadata accessor for DetectedTextBlock);
        goto LABEL_37;
      }

LABEL_35:
      v89[(v96 >> 6) + 8] |= 1 << v96;
      v105 = v96;
      v106 = v135;
      sub_257C31F70(v135, v89[6] + *(v139 + 72) * v96, type metadata accessor for DetectedTextBlock);
      *(v89[7] + 8 * v105) = v137;
      sub_257BD57EC(v106, type metadata accessor for DetectedTextBlock);
      sub_257BD57EC(v133, type metadata accessor for DetectedTextBlock);
      v107 = v89[2];
      v100 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v100)
      {
        goto LABEL_71;
      }

      v89[2] = v108;
LABEL_37:
      v88 = v136;
      v87 = v90 + 1;
      if (v136 != v90)
      {
        continue;
      }

      goto LABEL_40;
    }
  }

  v89 = MEMORY[0x277D84F98];
LABEL_40:

  v109 = v89[2];
  v110 = MEMORY[0x277D84F90];
  if (v109)
  {
    v111 = sub_257C63E90(v89[2], 0);
    sub_257C67D30(&v144, v111 + ((*(v139 + 80) + 32) & ~*(v139 + 80)), v109, v89);
    v113 = v112;
    v114 = v144;

    sub_257C02520(v114);
    if (v113 != v109)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v110 = MEMORY[0x277D84F90];
  }

  else
  {
    v111 = MEMORY[0x277D84F90];
  }

  v144 = v111;
  sub_257ECC3F0();
  sub_257E94C14(&v144);
  if (!v80)
  {
    v138 = 0;

    v80 = v144;
    v115 = v144[2];
    if (v115)
    {
      v144 = v110;
      sub_257BF2A64(0, v115, 0);
      v116 = 0;
      v117 = v144;
      v118 = v80 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      while (v89[2])
      {
        v119 = sub_257C0422C(v118 + *(v139 + 72) * v116);
        if ((v120 & 1) == 0)
        {
          goto LABEL_68;
        }

        v121 = *(v89[7] + 8 * v119);
        v144 = v117;
        v123 = *(v117 + 16);
        v122 = *(v117 + 24);

        if (v123 >= v122 >> 1)
        {
          sub_257BF2A64((v122 > 1), v123 + 1, 1);
          v117 = v144;
        }

        ++v116;
        *(v117 + 16) = v123 + 1;
        *(v117 + 8 * v123 + 32) = v121;
        if (v115 == v116)
        {

          goto LABEL_54;
        }
      }
    }

    else
    {

      v117 = MEMORY[0x277D84F90];
LABEL_54:
      sub_257EB1420(v117);
      v124 = 0;
      v125 = v147;
      v126 = *(v147 + 16);
      v127 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v126 == v124)
        {

          return;
        }

        if (v124 >= *(v125 + 16))
        {
          break;
        }

        v128 = *(v125 + 8 * v124++ + 32);
        if (*(v128 + 16))
        {

          v129 = swift_isUniquelyReferenced_nonNull_native();
          v144 = v127;
          if ((v129 & 1) == 0)
          {
            sub_257BF2A64(0, *(v127 + 16) + 1, 1);
            v127 = v144;
          }

          v80 = *(v127 + 16);
          v130 = *(v127 + 24);
          if (v80 >= v130 >> 1)
          {
            sub_257BF2A64((v130 > 1), v80 + 1, 1);
            v127 = v144;
          }

          *(v127 + 16) = v80 + 1;
          *(v127 + 8 * v80 + 32) = v128;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_72:

  __break(1u);
LABEL_73:
  sub_257ED06C0();
  __break(1u);

  __break(1u);
}

unint64_t sub_257E99A18()
{
  result = qword_27F8FB738;
  if (!qword_27F8FB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F69A0, &unk_257EDD420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB738);
  }

  return result;
}

uint64_t sub_257E99A7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257BE3DE0;

  return sub_257E960D4(a1, v4, v5, v6, v7);
}

void static MAGImageUtils.convertToJPEGData(_:scale:orientation:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:a1 scale:a2 orientation:a3];
  v4 = UIImageJPEGRepresentation(v3, 1.0);
  if (v4)
  {
    v5 = v4;
    sub_257ECCBA0();
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v6 = 0xD000000000000038;
    *(v6 + 8) = 0x8000000257EF91B0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 2;
    swift_willThrow();
  }
}

uint64_t static MAGImageUtils.convertToJPEGData(_:quality:maxDimensionSize:)(uint64_t a1, uint64_t a2, char a3, CGFloat a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
  if ((a3 & 1) == 0)
  {
    [v7 extent];
    Width = CGRectGetWidth(v26);
    [v7 extent];
    Height = CGRectGetHeight(v27);
    v11 = Height / Width * *&a2;
    v12 = *&a2 / Width;
    v13 = Width / Height * *&a2;
    if (Width >= Height)
    {
      v13 = *&a2;
    }

    else
    {
      v11 = *&a2;
    }

    if (Width < Height)
    {
      v12 = *&a2 / Height;
    }

    v14 = Width <= *&a2 || Height <= *&a2;
    if (v14)
    {
      v15 = Height;
    }

    else
    {
      v15 = v11;
    }

    if (!v14)
    {
      Width = v13;
    }

    v16 = Height / Height;
    if (!v14)
    {
      v16 = v12;
    }

    CGAffineTransformMakeScale(&v25, v16, v16);
    v17 = [v7 imageByApplyingTransform_];
    v18 = [v17 imageByCroppingToRect_];

    v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
    v8 = v19;
  }

  v20 = UIImageJPEGRepresentation(v8, a4);
  if (v20)
  {
    v21 = v20;
    v22 = sub_257ECCBA0();
  }

  else
  {
    v22 = 0x8000000257EF91B0;
    sub_257BEBEF0();
    swift_allocError();
    *v23 = 0xD000000000000038;
    *(v23 + 8) = 0x8000000257EF91B0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 2;
    swift_willThrow();
  }

  return v22;
}

uint64_t MAGCVPixelBufferWrapper.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id static MAGImageUtils.convertToImage2(_:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v2 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];

  return v2;
}

uint64_t static MAGImageUtils.convertToJPEGData(_:quality:)(UIImage *a1, CGFloat a2)
{
  v2 = UIImageJPEGRepresentation(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = sub_257ECCBA0();

    return v4;
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v6 = 0xD000000000000038;
    *(v6 + 8) = 0x8000000257EF91B0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 2;
    return swift_willThrow();
  }
}

uint64_t static MAGImageUtils.convertToPNGData(_:)(UIImage *a1)
{
  v1 = UIImagePNGRepresentation(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_257ECCBA0();

    return v3;
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v5 = 0xD000000000000036;
    *(v5 + 8) = 0x8000000257F09DC0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 2;
    return swift_willThrow();
  }
}

void sub_257E9A0D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id static MAGImageUtils.convertToImage(_:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v5 = sub_257ECCB90();
    v6 = [v4 initWithData_];
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v5 = sub_257ECCB90();
    v6 = [v8 initWithData:v5 scale:*&a3];
  }

  v9 = v6;

  if (!v9)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v10 = 0xD000000000000029;
    *(v10 + 8) = 0x8000000257F09E00;
    *(v10 + 16) = 0;
    *(v10 + 24) = 2;
    swift_willThrow();
  }

  return v9;
}

id static MAGImageUtils.convertToImage(_:scale:orientation:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v6 initWithCGImage:a1 scale:a2 orientation:a3];
}

id static MAGImageUtils.convertToCGImage(_:)(void *a1)
{
  result = [a1 CGImage];
  if (!result)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v2 = 0xD00000000000002BLL;
    *(v2 + 8) = 0x8000000257F09E30;
    *(v2 + 16) = 0;
    *(v2 + 24) = 2;
    swift_willThrow();
    return 0;
  }

  return result;
}

void static MAGImageUtils.convertToPNGData(_:)(__CVBuffer *a1)
{
  v2 = sub_257E9C938(a1);
  if (!v1)
  {
    v3 = v2;
    v4 = UIImagePNGRepresentation(v2);
    if (v4)
    {
      v5 = v4;
      sub_257ECCBA0();
    }

    else
    {
      sub_257BEBEF0();
      swift_allocError();
      *v6 = 0xD00000000000003DLL;
      *(v6 + 8) = 0x8000000257F09E60;
      *(v6 + 16) = 0;
      *(v6 + 24) = 2;
      swift_willThrow();
    }
  }
}

void static MAGImageUtils.resizeImageData(_:maxDimension:format:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v17 = sub_257ECCB90();
  v18 = [v16 initWithData_];

  if (!v18)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v41 = 0xD000000000000035;
    *(v41 + 8) = 0x8000000257F09EA0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 2;
    swift_willThrow();
    return;
  }

  [v18 size];
  v20 = v19;
  v22 = v21;
  v23 = v19 / v21;
  v24 = v21 < v19;
  v25 = v19 / v21 * a4;
  if (v24)
  {
    v26 = a4;
  }

  else
  {
    v26 = v25;
  }

  if (v24)
  {
    a4 = a4 / v23;
  }

  sub_257ECD340();
  v27 = sub_257ECDA20();
  v28 = sub_257ECFC00();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134219008;
    *(v29 + 4) = v20;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v22;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v23;
    *(v29 + 32) = 2048;
    *(v29 + 34) = v26;
    *(v29 + 42) = 2048;
    *(v29 + 44) = a4;
    _os_log_impl(&dword_257BAC000, v27, v28, "Will resize image. originalSize=[%f x %f] aspectRatio=%f targetSize=[%f x %f]", v29, 0x34u);
    MEMORY[0x259C74820](v29, -1, -1);
  }

  (*(v7 + 8))(v13, v6);
  v30 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v30 setScale_];
  v31 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v30 format:{v26, a4}];
  v32 = swift_allocObject();
  *(v32 + 16) = v18;
  *(v32 + 24) = v26;
  *(v32 + 32) = a4;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_257E9D288;
  *(v33 + 24) = v32;
  aBlock[4] = sub_257E9D2A4;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257E9A0D4;
  aBlock[3] = &block_descriptor_65;
  v34 = _Block_copy(aBlock);
  sub_257ECC3F0();
  v35 = v18;

  v36 = [v31 imageWithActions_];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if ((v34 & 1) == 0)
  {
    if (v15)
    {
      v37 = UIImagePNGRepresentation(v36);
      if (!v37)
      {
        v38 = 0x8000000257F09F20;
        sub_257BEBEF0();
        swift_allocError();
        v40 = 0xD000000000000030;
LABEL_18:
        *v39 = v40;
        *(v39 + 8) = v38;
        *(v39 + 16) = 0;
        *(v39 + 24) = 2;
        swift_willThrow();

        return;
      }
    }

    else
    {
      v37 = UIImageJPEGRepresentation(v36, v14);
      if (!v37)
      {
        v38 = 0x8000000257F09EE0;
        sub_257BEBEF0();
        swift_allocError();
        v40 = 0xD000000000000031;
        goto LABEL_18;
      }
    }

    v42 = v37;
    sub_257ECCBA0();

    return;
  }

  __break(1u);
}

CGContextRef static MAGImageUtils.convertToPixelBuffer(_:)(void *a1)
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 CGImage];
  if (!v2)
  {
    v17 = 0x8000000257F09F60;
    sub_257BEBEF0();
    swift_allocError();
    *v19 = 0xD00000000000003DLL;
    *(v19 + 8) = 0x8000000257F09F60;
    *(v19 + 16) = 0;
    *(v19 + 24) = 2;
    swift_willThrow();
    return v17;
  }

  v3 = v2;
  pixelBufferOut[0] = 0;
  [a1 size];
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB740, &qword_257EF0A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v9 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v10 = v9;
  v11 = sub_257ECF8A0();
  v12 = *MEMORY[0x277CC4D68];
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  v13 = v12;
  *(inited + 56) = sub_257ECF8A0();
  sub_257BEA7AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB748, &qword_257EF0A78);
  swift_arrayDestroy();
  if (v5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  if (v7 >= 9.22337204e18)
  {
    goto LABEL_24;
  }

  v14 = *MEMORY[0x277CBECE8];
  sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
  sub_257E9D2E4();
  v15 = sub_257ECF3C0();
  v16 = CVPixelBufferCreate(v14, v5, v7, 0x20u, v15, pixelBufferOut);

  if (v16)
  {

    v17 = v16;
    sub_257BEBEF0();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = v16;
    *(v18 + 24) = 1;
    swift_willThrow();

    return v17;
  }

  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
    __break(1u);
    goto LABEL_26;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0);
  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut[0]);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut[0]);
  result = __CGBitmapContextCreate_1(BaseAddress, v5, v7, 8uLL, BytesPerRow, DeviceRGB, 6u);
  v24 = result;
  if (result)
  {
    result = sub_257ECFB70();
  }

  if (!pixelBufferOut[0])
  {
    goto LABEL_28;
  }

  v17 = pixelBufferOut[0];

  result = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    CVPixelBufferUnlockBaseAddress(pixelBufferOut[0], 0);

    return v17;
  }

LABEL_29:
  __break(1u);
  return result;
}