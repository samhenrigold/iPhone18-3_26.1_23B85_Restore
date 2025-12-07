uint64_t sub_1E3ACC3E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0x6C6C616D7378;
  OUTLINED_FUNCTION_13_18(v8 + 99, a2, a3, a4, a5, a6, a7, a8, v18);
  v11 = *(v8 + 99);
  *(v8 + 99) = a1;
  OUTLINED_FUNCTION_5_0(v8 + 99, v19);
  v12 = 0xE600000000000000;
  v13 = 0x6C6C616D7378;
  switch(*(v8 + 99))
  {
    case 1:
      v12 = 0xE500000000000000;
      v13 = 0x6C6C616D73;
      break;
    case 2:
      v12 = 0xE800000000000000;
      v13 = OUTLINED_FUNCTION_17_67();
      break;
    case 3:
      v12 = 0xE500000000000000;
      v13 = 0x656772616CLL;
      break;
    default:
      break;
  }

  v14 = 0xE600000000000000;
  switch(v11)
  {
    case 1:
      v14 = 0xE500000000000000;
      v10 = 0x6C6C616D73;
      break;
    case 2:
      v14 = 0xE800000000000000;
      v10 = 0x647261646E617473;
      break;
    case 3:
      v14 = 0xE500000000000000;
      v10 = 0x656772616CLL;
      break;
    default:
      break;
  }

  if (v13 == v10 && v12 == v14)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_44_10(v13);

    if ((v16 & 1) == 0)
    {
      return sub_1E3ACC288();
    }
  }

  return result;
}

void (*sub_1E3ACC548(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_5_0(v1 + 99, v3);
  *(v3 + 32) = *(v1 + 99);
  return sub_1E3ACC5B8;
}

void sub_1E3ACC5D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

double sub_1E3ACC614(uint64_t a1)
{
  *(v1 + 128) = a1;

  return result;
}

double sub_1E3ACC624(uint64_t a1)
{
  v2 = v1;
  nullsub_1();
  if (sub_1E385050C())
  {
    type metadata accessor for TextBadgeLayout(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v6 = v4;
      OUTLINED_FUNCTION_14_0((v2 + 14), v5);
      v2[14] = v6;
      swift_retain_n();

      (*(*v2 + 1808))(v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B28, &unk_1E42B2C80);
      sub_1E4148DE0(sub_1E3ACC738);
    }
  }

  return result;
}

uint64_t sub_1E3ACC738(uint64_t *a1)
{
  v1 = *a1;
  v2 = *sub_1E3810A0C();

  sub_1E3C37EC8(v1, v2);
}

uint64_t sub_1E3ACC790(__int16 a1)
{
  if (((a1 - 153) & 0xFFF8) != 0)
  {
    return 8;
  }

  else
  {
    return (0x706050408080800uLL >> (8 * (a1 + 103)));
  }
}

uint64_t sub_1E3ACC7F4(uint64_t a1)
{
  *(v1 + 98) = 512;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  v2 = sub_1E3C2F9A0();

  sub_1E3ACB0B0();

  return v2;
}

uint64_t sub_1E3ACC840(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3ACC87C(v1);
}

uint64_t sub_1E3ACC87C(char a1)
{
  *(v1 + 98) = 512;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  swift_beginAccess();
  *(v1 + 98) = a1;
  v3 = sub_1E3C2F9A0();

  sub_1E3ACB0B0();

  return v3;
}

unint64_t sub_1E3ACC8F8()
{
  v0 = sub_1E4207784();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3ACC944(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7478654E7075;
      break;
    case 2:
      result = 0x7374726F7073;
      break;
    case 3:
      result = 0x70537478654E7075;
      break;
    case 4:
      result = 0x6B6369726276616ELL;
      break;
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x6867696C746F7073;
      break;
    case 7:
      result = 0x70756B636F6CLL;
      break;
    case 8:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3ACCA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27E310;
  if (!qword_1EE27E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27E310);
  }

  return result;
}

unint64_t sub_1E3ACCAD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3ACC8F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3ACCB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3ACC944(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OverlaySizeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OverlayLayout.OverlayType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

id sub_1E3ACCD58()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_contentSize);
}

uint64_t sub_1E3ACCDF0(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setContentSize_, a1, a2);
  return sub_1E3ACCE44();
}

uint64_t sub_1E3ACCE44()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView_contentSizeDidChangeHandler];
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 1);
    v7.receiver = v0;
    v7.super_class = ObjectType;

    v6 = objc_msgSendSuper2(&v7, sel_contentSize);
    v4(v6);
    return sub_1E34AF594(v4, v5);
  }

  return result;
}

id sub_1E3ACCEE0(void *a1)
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView_contentSizeDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v10 = ObjectType;
  v5 = OUTLINED_FUNCTION_2_15();
  v8 = objc_msgSendSuper2(v6, v7, a1, v5, v1, v10);

  return v8;
}

id sub_1E3ACCFA4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView_contentSizeDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1E3ACD07C(uint64_t a1)
{
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_0_137();
  sub_1E3ACD534(v1, v2, &unk_1E42AB768);

  return sub_1E42010C4();
}

uint64_t sub_1E3ACD0E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32608, &qword_1E42B8A90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v32 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32610, qword_1E42B8A98);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  swift_retain_n();
  v14 = sub_1E392583C();
  if (!v14)
  {
    goto LABEL_7;
  }

  if (!(*(*v14 + 392))(v14))
  {

LABEL_7:

    goto LABEL_8;
  }

  v33 = a2;
  type metadata accessor for MediaShowcasingMetadataLayout();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    if (sub_1E3CCE274(*(v15 + 120), 4u))
    {
    }

    else
    {
      v18 = sub_1E3CCE274(*(v16 + 120), 5u);

      if (!v18)
      {
        sub_1E379EF88(a1, v6, v19);
        sub_1E3ACD47C(v6, v9);
        v26 = swift_storeEnumTagMultiPayload();
        sub_1E3ACD4E0(v26, v27, v28);
        OUTLINED_FUNCTION_1_137();
        sub_1E3ACD534(v29, v30, &unk_1E429C828);
        sub_1E4201F44();

        sub_1E3ACD57C(v6);
        goto LABEL_15;
      }
    }

    *v9 = sub_1E3A0D4E4();
    v9[1] = v20;
    v21 = swift_storeEnumTagMultiPayload();
    sub_1E3ACD4E0(v21, v22, v23);
    OUTLINED_FUNCTION_1_137();
    sub_1E3ACD534(v24, v25, &unk_1E429C828);
    swift_retain_n();
    sub_1E4201F44();

LABEL_15:
    v31 = v33;
    sub_1E3ACD5D8(v13, v33);
    return __swift_storeEnumTagSinglePayload(v31, 0, 1, v10);
  }

  a2 = v33;
LABEL_8:

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
}

uint64_t sub_1E3ACD47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3ACD4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2416C8[0];
  if (!qword_1EE2416C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2416C8);
  }

  return result;
}

uint64_t sub_1E3ACD534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3ACD57C(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3ACD5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32610, qword_1E42B8A98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3ACD67C()
{
  result = qword_1EE288FB8;
  if (!qword_1EE288FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32618, &qword_1E42B8B30);
    sub_1E3ACD700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FB8);
  }

  return result;
}

unint64_t sub_1E3ACD700()
{
  result = qword_1EE288FC0;
  if (!qword_1EE288FC0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32610, qword_1E42B8A98);
    sub_1E3ACD4E0(v1, v2, v3);
    sub_1E3ACD534(&qword_1EE23EF78, type metadata accessor for PlaybackMediaShowcasingMetadataView, &unk_1E429C828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FC0);
  }

  return result;
}

void sub_1E3ACD7BC(void *a1)
{
  v2 = a1;
  v3 = sub_1E4205ED4();

  [v1 setObject:v2 forKeyedSubscript:v3];
}

void sub_1E3ACD844(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32620, &qword_1E42B8B38);
    v2 = sub_1E4207A34();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1E4205ED4();

  [v1 setObject:v2 forKeyedSubscript:v3];
  swift_unknownObjectRelease();
}

uint64_t sub_1E3ACD91C(uint64_t a1)
{
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = 0;
  v2 = sub_1E3C2F9A0();

  v3 = *sub_1E37BD068();
  (*(v3 + 1696))(2);

  v4 = *(v2 + 104);

  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);

  OUTLINED_FUNCTION_0_36();
  v9 = *(v8 + 1792);

  v9(10);

  OUTLINED_FUNCTION_0_36();
  v11 = *(v10 + 1984);

  v11(1);

  OUTLINED_FUNCTION_0_36();
  v13 = *(v12 + 1720);

  v13(7);

  v14 = *sub_1E374EA2C();
  (*(v14 + 1696))(17);

  v15 = *(v2 + 112);

  v16 = *sub_1E3E5FDEC();
  v17 = *(*v15 + 680);
  v18 = v16;
  v17(v16);

  v19 = *(**(v2 + 112) + 1984);

  v19(1);

  v20 = *(**(v2 + 112) + 1720);

  v20(7);

  return v2;
}

id sub_1E3ACDC74()
{
  v1 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemBlueColor];
    v6 = OUTLINED_FUNCTION_17_1();
    [v6 v7];

    v8 = [objc_opt_self() systemFontOfSize_];
    v9 = OUTLINED_FUNCTION_17_1();
    [v9 v10];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1E3ACDD94(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    type metadata accessor for MetricsCellPresentationUtilities();
    v9 = sub_1E3B625A8();
    [v8 setTextColor_];

    v10 = [objc_opt_self() systemFontOfSize_];
    [v8 setFont_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v7 + v3);
    *(v7 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

void sub_1E3ACDE98()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  sub_1E42076B4();
  __break(1u);
}

void *sub_1E3ACDF20(uint64_t a1)
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  if (v3)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for MetricsSessionCell();
  v5 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v4);

  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xB8);
  v7 = v5;
  v6();

  return v7;
}

void sub_1E3ACE060()
{
  [v0 setAccessoryType_];
  v1 = [v0 contentView];
  v2 = sub_1E3ACDC74();
  v3 = OUTLINED_FUNCTION_17_1();
  [v3 v4];

  v5 = [v0 contentView];
  v6 = sub_1E3ACDD74();
  v7 = OUTLINED_FUNCTION_17_1();
  [v7 v8];

  v9 = [v0 contentView];
  v10 = sub_1E3ACDD84();
  v11 = OUTLINED_FUNCTION_17_1();
  [v11 v12];

  v13 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel] leadingAnchor];
  v15 = OUTLINED_FUNCTION_0_115();
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 &selRef_loadFairPlayStreamingKeyRequests_completion_ + 1];
  v18 = OUTLINED_FUNCTION_17_1();
  v20 = [v18 v19];

  OUTLINED_FUNCTION_1_138();
  v21 = [*&v0[v13] trailingAnchor];
  v22 = OUTLINED_FUNCTION_0_115();
  v23 = OUTLINED_FUNCTION_3_114(v22);

  v24 = [v23 centerXAnchor];
  v25 = OUTLINED_FUNCTION_17_1();
  v27 = [v25 v26];

  OUTLINED_FUNCTION_1_138();
  v28 = [*&v0[v13] topAnchor];
  v29 = OUTLINED_FUNCTION_0_115();
  v30 = OUTLINED_FUNCTION_3_114(v29);

  v31 = [v30 &selRef_validationResults_fromIndex_];
  v32 = OUTLINED_FUNCTION_17_1();
  v34 = [v32 v33];

  OUTLINED_FUNCTION_1_138();
  v35 = [*&v0[v13] heightAnchor];
  v36 = OUTLINED_FUNCTION_0_115();
  v37 = OUTLINED_FUNCTION_3_114(v36);

  v38 = [v37 &selRef_imageCellStyle + 2];
  v39 = OUTLINED_FUNCTION_17_1();
  v41 = [v39 v40];

  OUTLINED_FUNCTION_1_138();
  v42 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___startDateLabel;
  v43 = [*&v0[OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___startDateLabel] leadingAnchor];
  v44 = OUTLINED_FUNCTION_0_115();
  v45 = OUTLINED_FUNCTION_3_114(v44);

  v46 = [v45 leadingAnchor];
  v47 = OUTLINED_FUNCTION_17_1();
  v49 = [v47 v48];

  OUTLINED_FUNCTION_1_138();
  v50 = [*&v0[v42] trailingAnchor];
  v51 = OUTLINED_FUNCTION_0_115();
  v52 = OUTLINED_FUNCTION_3_114(v51);

  v53 = [v52 centerXAnchor];
  v54 = OUTLINED_FUNCTION_17_1();
  v56 = [v54 v55];

  OUTLINED_FUNCTION_1_138();
  v57 = [*&v0[v42] bottomAnchor];
  v58 = OUTLINED_FUNCTION_0_115();
  v59 = OUTLINED_FUNCTION_3_114(v58);

  v60 = [v59 bottomAnchor];
  v61 = OUTLINED_FUNCTION_17_1();
  v63 = [v61 v62];

  OUTLINED_FUNCTION_1_138();
  v64 = [*&v0[v42] heightAnchor];
  v65 = OUTLINED_FUNCTION_0_115();
  v66 = OUTLINED_FUNCTION_3_114(v65);

  v67 = [v66 heightAnchor];
  v68 = OUTLINED_FUNCTION_17_1();
  v70 = [v68 v69];

  OUTLINED_FUNCTION_1_138();
  v71 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___numEventsLabel;
  v72 = [*&v0[OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___numEventsLabel] trailingAnchor];
  v73 = OUTLINED_FUNCTION_0_115();
  v74 = OUTLINED_FUNCTION_3_114(v73);

  v75 = [v74 trailingAnchor];
  v76 = OUTLINED_FUNCTION_17_1();
  v78 = [v76 v77];

  OUTLINED_FUNCTION_1_138();
  v79 = [*&v0[v71] centerYAnchor];
  v80 = OUTLINED_FUNCTION_0_115();
  v81 = OUTLINED_FUNCTION_3_114(v80);

  v82 = [v81 centerYAnchor];
  v83 = OUTLINED_FUNCTION_17_1();
  v85 = [v83 v84];

  OUTLINED_FUNCTION_1_138();
  v86 = [*&v0[v71] topAnchor];
  v87 = OUTLINED_FUNCTION_0_115();
  v88 = OUTLINED_FUNCTION_3_114(v87);

  v89 = [v88 topAnchor];
  v90 = OUTLINED_FUNCTION_17_1();
  v92 = [v90 v91];

  OUTLINED_FUNCTION_1_138();
  v93 = [*&v0[v71] bottomAnchor];
  v94 = OUTLINED_FUNCTION_0_115();
  v95 = [v94 layoutMarginsGuide];

  v96 = [v95 bottomAnchor];
  v97 = [v9 constraintEqualToAnchor_];

  [v97 setActive_];
}

void sub_1E3ACE7BC(uint64_t a1, void *a2)
{
  v3 = sub_1E3ACDC74();
  v4 = sub_1E4207944();
  MEMORY[0x1E69109E0](v4);

  sub_1E390E860(0x206E6F6973736553, 0xE800000000000000, v3);

  v5 = sub_1E3ACDD84();
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xB8);
  v6();

  v15 = sub_1E4207944();
  v16 = v7;
  v8 = MEMORY[0x1E69109E0](0x746E65766520, 0xE600000000000000);
  v9 = *((v6)(v8) + 16);

  if (v9 <= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 115;
  }

  if (v9 <= 1)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  MEMORY[0x1E69109E0](v10, v11);

  sub_1E390E860(v15, v16, v5);

  v12 = sub_1E3ACDD74();
  type metadata accessor for MetricsCellPresentationUtilities();
  v13 = sub_1E3B622D4(*(a2 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_processStartTime), 0, 0);
  sub_1E390E860(v13, v14, v12);
}

id sub_1E3ACE97C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsSessionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3ACEA08()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_DF4FEADE0595972FE8D162EA68024A1324FeaturedLockupInteractor__identifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3ACEAB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  type metadata accessor for FeaturedLockupCell();
  *(v0 + 16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + 24) = 2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 63) = 0;
  v5 = OBJC_IVAR____TtC8VideosUIP33_DF4FEADE0595972FE8D162EA68024A1324FeaturedLockupInteractor__identifier;
  v7[0] = 0xD000000000000018;
  v7[1] = 0x80000001E42B8C90;
  sub_1E4200634();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_1E3ACEBF4()
{
  type metadata accessor for FeaturedLockupInteractor(0);
  v0 = swift_allocObject();
  sub_1E3ACEAB8();
  return v0;
}

void *sub_1E3ACEC30@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = memcpy((a3 + 8), a2, 0xC3uLL);
  *(a3 + 208) = sub_1E3ACEBF4;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  return result;
}

void *sub_1E3ACEC80()
{
  type metadata accessor for FeaturedLockupInteractor(0);
  sub_1E3ACEEE8();
  v1 = sub_1E4200BC4();
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  if (*(v0 + 64))
  {
    v5 = v3;
  }

  else
  {
    v5 = *(v0 + 56);
  }

  if (*(v0 + 80))
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v0 + 72);
  }

  sub_1E3DF9E68(__src);
  *__src = v5;
  *&__src[1] = v6;
  LOBYTE(__src[2]) = 0;
  BYTE1(__src[5]) = 1;
  v16[0] = sub_1E3D43D3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390E0, &unk_1E42D38F0);
  sub_1E4148DE0(sub_1E37CCD5C);

  memcpy(__dst, __src, 0x52uLL);
  memcpy(v16, __src, 0x52uLL);
  sub_1E37CCDA0(__dst, v13);
  sub_1E37CCDFC(v16);
  memcpy(__src, __dst, 0x52uLL);
  memcpy(v16, __src, 0x52uLL);
  type metadata accessor for FeaturedLockupCell();
  v7 = *(v1 + 16);
  __dst[0] = 2;
  memset(&__dst[1], 0, 35);
  v8 = v7;
  v9 = sub_1E40BCBE0(v2, v7, v16);
  sub_1E37CCDFC(__src);

  v10 = *(v1 + 16);
  *(v1 + 16) = v9;
  v11 = v9;

  if (!v9)
  {
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return v11;
}

uint64_t type metadata accessor for FeaturedLockupInteractor(uint64_t a1)
{
  result = qword_1EE297E38;
  if (!qword_1EE297E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3ACEEE8()
{
  result = qword_1ECF55740[0];
  if (!qword_1ECF55740[0])
  {
    type metadata accessor for FeaturedLockupInteractor(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF55740);
  }

  return result;
}

unint64_t sub_1E3ACEF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3ACEF6C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3ACEF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF32628;
  if (!qword_1ECF32628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32628);
  }

  return result;
}

unint64_t sub_1E3ACEFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2830F0;
  if (!qword_1EE2830F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2830F0);
  }

  return result;
}

uint64_t sub_1E3ACF018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3ACF394(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3ACF064()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3ACF394(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3ACF138()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3ACEF6C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3ACF18C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3ACEF6C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3ACF1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3ACEF6C(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

void sub_1E3ACF210(uint64_t a1)
{
  sub_1E3846618();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3ACF2C8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 225))
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

uint64_t sub_1E3ACF308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3ACF394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF32630;
  if (!qword_1ECF32630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32630);
  }

  return result;
}

void *sub_1E3ACF408(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  HIDWORD(v400) = a6;
  v11 = (*(*a1 + 488))();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (a2)
  {
    type metadata accessor for UnifiedOverlayView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = a2;
    }
  }

  else
  {
    v13 = 0;
  }

  *__src = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32638, &unk_1E42B8DD0);
  sub_1E4148C68(sub_1E3AD1E10, v16, &v435);

  v15 = v435;
  __src[0] = 0;
  v17 = (*a1 + 776);
  v398 = *v17;
  (*v17)(&v435, __src, &unk_1F5D5E068, &off_1F5D5CAD8);
  v411 = a1;
  v399 = v17;
  v402 = a4;
  v403 = a5;
  if (*(&v436 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && sub_1E3ACAAF4() != 4)
    {
      OUTLINED_FUNCTION_47_0();
      (*(v18 + 1800))();
    }
  }

  else
  {
    sub_1E325F6F0(&v435, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_12_5();
  v20 = *(v19 + 368);

  v20(v21);
  v23 = sub_1E373E010(23, v12, v22);
  v422 = v12;
  if (!v23)
  {
LABEL_25:
    type metadata accessor for UIFactory();
    OUTLINED_FUNCTION_18_1();
    v43 += 63;
    v44 = *v43;
    v45 = (*v43)();
    v32 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    OUTLINED_FUNCTION_2_110();
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v46, v47, v48, v49, v32);

    v50 = MEMORY[0x1E69E7D40];
    sub_1E325F6F0(&v435, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v51 = OUTLINED_FUNCTION_8_10();
    v53 = v52(v51);
    v54 = (v44)(v53);
    if (!v54)
    {
      goto LABEL_33;
    }

    v35 = v54;
    OUTLINED_FUNCTION_47_0();
    v58 = (*(v55 + 1864))() && (OUTLINED_FUNCTION_30(), v57 = (*(v56 + 936))(), , v57 != 2) && (v57 & 1) != 0 || v23 == 0;
    [v35 setHidden_];
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_47_0();
  v25 = *(v24 + 1864);

  if (!(v25)(v26))
  {

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_30();
  v28 = (*(v27 + 2408))();

  __src[0] = 35;
  v29 = *(*v23 + 776);
  v29(&v435, __src, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!*(&v436 + 1))
  {
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

  v417 = *__src;
  __src[0] = 36;
  v29(&v435, __src, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!*(&v436 + 1))
  {
LABEL_23:

    sub_1E325F6F0(&v435, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1E3F1E07C(v417, *__src);
  if (!v31)
  {

    goto LABEL_25;
  }

  v418 = v31;
  v412 = v30;
  v32 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  OUTLINED_FUNCTION_36_3();
  v34 = *((*MEMORY[0x1E69E7D40] & v33) + 0x1F8);
  v35 = v28;
  v36 = v34();
  sub_1E3810954(v412, v418, v35, v36);
  OUTLINED_FUNCTION_36_3();
  v38 = (*((*MEMORY[0x1E69E7D40] & v37) + 0x200))();
  v419 = v34;
  v39 = (v34)(v38);
  if (!v39)
  {
    goto LABEL_211;
  }

  v40 = v39;
  if (!v25())
  {
    goto LABEL_209;
  }

  OUTLINED_FUNCTION_30();
  v413 = (*(v41 + 936))();

  for (i = v413; ; i = 0)
  {
    [v40 setHidden_];

LABEL_211:
    v391 = v419();
    if (v391)
    {
      v392 = v391;
      if (v25())
      {
        OUTLINED_FUNCTION_30();
        v394 = (*(v393 + 648))();
      }

      else
      {
        v394 = 5;
      }

      sub_1E393EC18(v394);

      v35 = v392;
    }

    else
    {
    }

LABEL_32:
    v50 = MEMORY[0x1E69E7D40];

LABEL_33:

    v59 = type metadata accessor for UIFactory();
    v61 = sub_1E373E010(15, v422, v60);
    OUTLINED_FUNCTION_36_3();
    v63 = *((*v50 & v62) + 0x210);
    v64 = v63();
    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    OUTLINED_FUNCTION_2_110();
    sub_1E393D92C(v61, v64, v65, 0, v32);

    sub_1E325F6F0(&v435, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v66 = OUTLINED_FUNCTION_8_10();
    v68 = v67(v66);
    v69 = (v63)(v68);
    if (v69)
    {
      v71 = v69;
      OUTLINED_FUNCTION_47_0();
      if ((*(v72 + 1888))() && (OUTLINED_FUNCTION_30(), v75 = (*(v74 + 936))(), , v75 != 2) && (v75 & 1) != 0 || !sub_1E373E010(15, v422, v73))
      {
        v76 = 1;
      }

      else
      {

        v76 = 0;
      }

      [v71 setHidden_];
    }

    v77 = sub_1E373E010(36, v422, v70);
    OUTLINED_FUNCTION_12_5();
    v78 += 69;
    v79 = *v78;
    v80 = (*v78)();
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    OUTLINED_FUNCTION_2_110();
    sub_1E393D92C(v77, v80, v81, 0, v82);

    sub_1E325F6F0(&v435, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v83 = OUTLINED_FUNCTION_8_10();
    v85 = v84(v83);
    v86 = (v79)(v85);
    if (v86)
    {
      v88 = v86;
      OUTLINED_FUNCTION_47_0();
      v90 = (*(v89 + 1984))();
      v91 = (*(*v90 + 936))();

      if ((v91 == 2 || (v91 & 1) == 0) && sub_1E373E010(36, v422, v92))
      {

        v93 = 0;
      }

      else
      {
        v93 = 1;
      }

      [v88 setHidden_];
    }

    v94 = sub_1E373E010(44, v422, v87);
    OUTLINED_FUNCTION_12_5();
    v95 += 75;
    v96 = *v95;
    v97 = (*v95)();
    sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
    OUTLINED_FUNCTION_2_110();
    v404 = v98;
    sub_1E393D92C(v94, v97, v99, 0, v98);

    sub_1E325F6F0(&v435, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v100 = OUTLINED_FUNCTION_8_10();
    v102 = v101(v100);
    v103 = (v96)(v102);
    if (v103)
    {
      v105 = v103;
      OUTLINED_FUNCTION_47_0();
      v107 = (*(v106 + 2008))();
      v108 = (*(*v107 + 936))();

      if ((v108 == 2 || (v108 & 1) == 0) && sub_1E373E010(44, v422, v109))
      {

        v110 = 0;
      }

      else
      {
        v110 = 1;
      }

      [v105 setHidden_];
    }

    v414 = v59;
    v111 = a3;
    sub_1E373E010(44, v422, v104);
    OUTLINED_FUNCTION_12_5();
    (*(v112 + 776))();
    v114 = sub_1E373E010(115, v422, v113);
    v115 = v114 == 0;
    v419 = v114;
    if (v114)
    {
      OUTLINED_FUNCTION_47_0();
      v117 = *(v116 + 392);

      v119 = v117(v118);

      if (v119)
      {
        type metadata accessor for ProgressLayout();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_30();
          (*(v120 + 1776))(0);
        }
      }
    }

    v121 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    v122 += 54;
    v123 = *v122;
    v124 = (*v122)();
    type metadata accessor for StyledProgressBarView();
    OUTLINED_FUNCTION_2_110();
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v125, v126, v127, v128, v129);

    sub_1E325F6F0(&v435, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v130 = OUTLINED_FUNCTION_8_10();
    v132 = v131(v130);
    v133 = (v123)(v132);
    if (v133)
    {
      v134 = v133;
      (*(*v111 + 2056))();
      OUTLINED_FUNCTION_30();
      v136 = (*(v135 + 936))();

      if (v136 != 2 && (v136 & 1) != 0)
      {
        v115 = 1;
      }

      [v134 setHidden_];
    }

    v406 = v111;
    sub_1E3DF9E68(&v435);
    v432 = v435;
    v433 = v436;
    v434 = v437;
    v430[0] = *v438;
    *(v430 + 7) = *&v438[7];
    v138 = v439;
    if ((WORD2(v400) & 0xFF00) == 0x200)
    {
      v139 = 0;
    }

    else
    {
      v139 = v402;
    }

    if ((WORD2(v400) & 0xFF00) == 0x200)
    {
      v140 = 0;
    }

    else
    {
      v140 = v403;
    }

    v431 = ((WORD2(v400) & 0xFF00) == 512) | BYTE4(v400) & 1;
    sub_1E373E010(32, v422, v137);
    OUTLINED_FUNCTION_36_3();
    v142 = (*v121 & v141) + 456;
    v143 = *((*v121 & v141) + 0x1C8);
    v144 = v143();
    *__src = v435;
    *&__src[16] = v436;
    *&__src[32] = v437;
    v401 = v140;
    v402 = v139;
    *&__src[48] = v139;
    *&__src[56] = v140;
    __src[64] = v431;
    *&__src[65] = *v438;
    *&__src[72] = *&v438[7];
    __src[80] = 1;
    LODWORD(v403) = v138;
    __src[81] = v138;
    *&__dst[24] = &unk_1F5D869A0;
    *&__dst[32] = &off_1F5D868A0;
    *__dst = swift_allocObject();
    memcpy((*__dst + 16), __src, 0x52uLL);
    sub_1E37CCDA0(__src, v428);
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v145, v146, v147, v148, v404);

    sub_1E325F6F0(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v149 = OUTLINED_FUNCTION_8_10();
    v151 = v150(v149);
    v395 = v143;
    v396 = v142;
    v152 = (v143)(v151);
    if (v152)
    {
      v154 = v152;
      if ((*(*v111 + 1912))() && (OUTLINED_FUNCTION_30(), v157 = (*(v156 + 936))(), , v157 != 2) && (v157 & 1) != 0 || !sub_1E373E010(32, v422, v155))
      {
        v158 = 1;
      }

      else
      {

        v158 = 0;
      }

      v121 = MEMORY[0x1E69E7D40];
      [v154 setHidden_];
    }

    v159 = sub_1E373E010(40, v422, v153);
    v160 = (*v121 & *v15) + 480;
    v161 = *((*v121 & *v15) + 0x1E0);
    v162 = v161(v159);
    v428[0] = v432;
    v428[1] = v433;
    v428[2] = v434;
    *&v428[3] = v139;
    *(&v428[3] + 1) = v140;
    LOBYTE(v428[4]) = v431;
    *(&v428[4] + 1) = v430[0];
    *(&v428[4] + 1) = *(v430 + 7);
    LOBYTE(v428[5]) = 1;
    BYTE1(v428[5]) = v403;
    *(&v441[1] + 1) = &unk_1F5D869A0;
    *&v441[2] = &off_1F5D868A0;
    *&v441[0] = swift_allocObject();
    memcpy((*&v441[0] + 16), v428, 0x52uLL);
    sub_1E37CCDA0(v428, __dst);
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v163, v164, v165, v166, v404);

    v167 = MEMORY[0x1E69E7D40];

    sub_1E325F6F0(v441, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v168 = OUTLINED_FUNCTION_8_10();
    v170 = v169(v168);
    v405 = v160;
    v397 = v161;
    v171 = v161(v170);
    if (!v171)
    {

      v174 = v411;
      v179 = v419;
      if (!v419)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v172 = v171;
    v174 = v411;
    if (*(*v111 + 1936))() && (OUTLINED_FUNCTION_30(), v176 = (*(v175 + 936))(), , v176 != 2) && (v176)
    {
    }

    else
    {
      v177 = sub_1E373E010(40, v422, v173);

      if (v177)
      {

        v178 = 0;
        goto LABEL_89;
      }
    }

    v178 = 1;
LABEL_89:
    v179 = v419;
    [v172 setHidden_];

    if (!v419)
    {
LABEL_87:
      memset(__dst, 0, 32);
      goto LABEL_92;
    }

LABEL_90:
    LOBYTE(v441[0]) = 36;
    v180 = *(*v179 + 776);

    v181 = OUTLINED_FUNCTION_11_81();
    v180(v181);

    if (*&__dst[24])
    {
      v189 = OUTLINED_FUNCTION_9_80(v182, v183, v184, MEMORY[0x1E69E76D8], v185, v186, v187, v188, v395, v396, v397, v398, v399, v400, v140, v402, v403, v405, v406, v409, v410, v411, v414, v416, v419, v421, v422, v424, __dst[0]);
      OUTLINED_FUNCTION_13_84(v189);
      goto LABEL_93;
    }

LABEL_92:
    sub_1E325F6F0(__dst, &unk_1ECF296E0, &unk_1E4298030);
LABEL_93:
    OUTLINED_FUNCTION_18_1();
    (*(v190 + 992))();
    if (v179)
    {
      LOBYTE(v441[0]) = 35;
      v191 = *(*v179 + 776);

      v192 = OUTLINED_FUNCTION_11_81();
      v191(v192);

      v200 = v398;
      if (*&__dst[24])
      {
        v201 = OUTLINED_FUNCTION_9_80(v193, v194, v195, MEMORY[0x1E69E76D8], v196, v197, v198, v199, v395, v396, v397, v398, v399, v400, v401, v402, v403, v405, v406, v409, v410, v411, v414, v416, v419, v421, v422, v424, __dst[0]);
        OUTLINED_FUNCTION_13_84(v201);
        goto LABEL_98;
      }
    }

    else
    {
      memset(__dst, 0, 32);
      v200 = v398;
    }

    sub_1E325F6F0(__dst, &unk_1ECF296E0, &unk_1E4298030);
LABEL_98:
    OUTLINED_FUNCTION_18_1();
    (*(v202 + 1016))();
    LOBYTE(v441[0]) = 2;
    v203 = OUTLINED_FUNCTION_11_81();
    v204 = v200(v203);
    if (*&__dst[24])
    {
      if (OUTLINED_FUNCTION_9_80(v204, v205, v206, MEMORY[0x1E69E6370], v207, v208, v209, v210, v395, v396, v397, v398, v399, v400, v401, v402, v403, v405, v406, v409, v410, v411, v414, v416, v419, v421, v422, v424, __dst[0]))
      {
        OUTLINED_FUNCTION_18_1();
        (*(v211 + 848))();
      }
    }

    else
    {
      sub_1E325F6F0(__dst, &unk_1ECF296E0, &unk_1E4298030);
    }

    LOBYTE(v441[0]) = 3;
    v212 = OUTLINED_FUNCTION_11_81();
    v213 = (v200)(v212, &unk_1F5D5E068, &off_1F5D5CAD8);
    if (*&__dst[24])
    {
      v220 = OUTLINED_FUNCTION_9_80(v213, v214, v215, MEMORY[0x1E69E6370], v216, v217, v218, v219, v395, v396, v397, v398, v399, v400, v401, v402, v403, v405, v406, v409, v410, v411, v414, v416, v419, v421, v422, v424, __dst[0]);
      a3 = v407;
      if (v220)
      {
        OUTLINED_FUNCTION_18_1();
        (*(v225 + 872))();
      }
    }

    else
    {
      sub_1E325F6F0(__dst, &unk_1ECF296E0, &unk_1E4298030);
      a3 = v406;
    }

    v226 = *(v174 + 98);
    if (sub_1E373F6E0(v226, 154, v221, v222, v223, v224))
    {
      v231 = 1;
    }

    else
    {
      v231 = sub_1E373F6E0(v226, 156, v227, v228, v229, v230);
    }

    v232 = sub_1E373F6E0(v226, 163, v227, v228, v229, v230);
    v233 = v232;
    if (v231 & 1) != 0 || (v232)
    {
      *&__dst[24] = &unk_1F5D5E068;
      *&__dst[32] = &off_1F5D5CAD8;
      __dst[0] = 4;
      v240 = j__OUTLINED_FUNCTION_18();
      v239 = v411;
      v241 = sub_1E39C29F0(__dst, v240 & 1);
      v242 = __swift_destroy_boxed_opaque_existential_1(__dst);
      if ((v241 & 1) != 0 && ((v243 = v397(v242)) != 0 || (v243 = v395()) != 0))
      {

        v244 = 1;
      }

      else
      {
        v244 = 0;
      }

      OUTLINED_FUNCTION_18_1();
      v246 = (*(v245 + 648))();
      if (!v246)
      {
        type metadata accessor for OverlayProtectionView();
        v246 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
      }

      v247 = v246;
      OUTLINED_FUNCTION_8_9();
      v249 = (*(v248 + 160))();
      if (!v249)
      {
        type metadata accessor for OverlayViewGradientFactory();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v250 = swift_allocObject();
        *(v250 + 16) = xmmword_1E429DCC0;
        v251 = objc_opt_self();
        *(v250 + 32) = [v251 clearColor];
        v252 = [v251 blackColor];
        v253 = [v252 colorWithAlphaComponent_];

        *(v250 + 40) = v253;
        v249 = sub_1E38E264C(a3, v250);
        v239 = v411;
        v167 = MEMORY[0x1E69E7D40];
      }

      OUTLINED_FUNCTION_8_9();
      (*(v254 + 168))(v249);
      OUTLINED_FUNCTION_8_9();
      (*(v255 + 192))();
      v256 = (*((*v167 & *v247) + 0x108))(v244 & (v233 ^ 1u));
      v257 = 55.0;
      if ((*(*a3 + 840))(v256))
      {
        OUTLINED_FUNCTION_30();
        v259 = (*(v258 + 304))();
        v261 = v260;

        if ((v261 & 1) == 0)
        {
          v257 = *&v259;
        }
      }

      OUTLINED_FUNCTION_8_9();
      (*(v262 + 408))(v257);
      OUTLINED_FUNCTION_36_3();
      v264 = *((*v167 & v263) + 0x290);
      v265 = v247;
      v264(v247);
    }

    else
    {
      v234 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v235 = OUTLINED_FUNCTION_12_75();
      v236(v235);
      OUTLINED_FUNCTION_36_3();
      v238 = (*((*v234 & v237) + 0x2A8))(0);
      v239 = v411;
    }

    v266 = (*(*v239 + 488))(v238);
    if (!v266)
    {
      goto LABEL_198;
    }

    v267 = v266;
    v25 = (v266 + 64);
    v268 = 1 << *(v266 + 32);
    v269 = -1;
    if (v268 < 64)
    {
      v269 = ~(-1 << v268);
    }

    v40 = v269 & *(v266 + 64);
    v32 = (v268 + 63) >> 6;

    v270 = 0;
    if (v40)
    {
      break;
    }

LABEL_130:
    while (1)
    {
      v35 = v270 + 1;
      if (__OFADD__(v270, 1))
      {
        break;
      }

      if (v35 >= v32)
      {

        v271 = 0;
        goto LABEL_137;
      }

      v40 = *(v25 + v35);
      ++v270;
      if (v40)
      {
        goto LABEL_133;
      }
    }

    __break(1u);
LABEL_209:
    ;
  }

  while (1)
  {
    v35 = v270;
LABEL_133:
    v271 = *(*(v267 + 56) + 8 * (__clz(__rbit64(v40)) | (v35 << 6)));

    if (sub_1E385050C())
    {
      break;
    }

    v40 &= v40 - 1;
    v270 = v35;
    if (!v40)
    {
      goto LABEL_130;
    }
  }

LABEL_137:
  v276 = v239[49];
  if (sub_1E373F6E0(v276, 154, v272, v273, v274, v275))
  {

    v277 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    v278 += 78;
    v279 = *v278;
    v280 = (*v278)();
    sub_1E3280A90(0, &unk_1EE23B210, off_1E8728638);
    OUTLINED_FUNCTION_5_110();
    sub_1E393D92C(v271, v280, v281, 0, v282);

    sub_1E325F6F0(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_36_3();
    v283 = OUTLINED_FUNCTION_8_10();
    v285 = v284(v283);
    v286 = (v279)(v285);
    if (v286)
    {
      v287 = v286;
      v288 = [v286 rentalExpirationLabel];

      if (v288)
      {

        v289 = v279();
        if (v289)
        {
          v290 = v289;
          [v289 setDelegate_];
        }
      }
    }

    v291 = v279();
    if (v291)
    {
      v292 = v291;
      OUTLINED_FUNCTION_47_0();
      v296 = (*(v293 + 1960))() && (OUTLINED_FUNCTION_30(), v295 = (*(v294 + 936))(), , v295 != 2) && (v295 & 1) != 0 || v271 == 0;
      [v292 setHidden_];
    }

    OUTLINED_FUNCTION_12_5();
    v317 = OUTLINED_FUNCTION_12_75();
    v318(v317);
    OUTLINED_FUNCTION_36_3();
    (*((*v277 & v319) + 0x2D8))(0);
    goto LABEL_197;
  }

  OUTLINED_FUNCTION_12_5();
  v297 += 78;
  v298 = *v297;
  v299 = (*v297)();
  sub_1E3280A90(0, &unk_1EE23B210, off_1E8728638);
  OUTLINED_FUNCTION_5_110();
  sub_1E393D92C(v271, v299, v300, 0, v301);

  sub_1E325F6F0(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
  OUTLINED_FUNCTION_36_3();
  v302 = OUTLINED_FUNCTION_8_10();
  v304 = v303(v302);
  v305 = (v298)(v304);
  if (v305)
  {
    v306 = v305;
    [v305 setVuiAlpha_];
  }

  OUTLINED_FUNCTION_47_0();
  v308 = (*(v307 + 1960))();
  v311 = v308 && (OUTLINED_FUNCTION_30(), v310 = (*(v309 + 936))(), v308 = , v310 != 2) && (v310 & 1) != 0 || v271 == 0;
  v312 = (v298)(v308);
  if (v312)
  {
    v315 = v312;
    [v312 setHidden_];
  }

  if (v311)
  {
    v316 = 0;
  }

  else
  {
    v312 = sub_1E3EB8C74();
    v316 = v312;
  }

  if ((v400 & 0x10000000000) != 0)
  {
    v324 = OUTLINED_FUNCTION_14_90(v312, v313, v314);
    if (v324 && (OUTLINED_FUNCTION_30(), v328 = (*(v327 + 392))(), v324 = , v328) && (v329 = (*(*v328 + 936))(v324), v324 = , v329 != 2) && (v329 & 1) != 0 || !OUTLINED_FUNCTION_14_90(v324, v325, v326))
    {

      v335 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v336 = OUTLINED_FUNCTION_12_75();
      v337(v336);
      OUTLINED_FUNCTION_36_3();
      v339 = (*((*v335 & v338) + 0x2B8))();
      if (v339)
      {
        v340 = v339;
        [v339 vui_removeFromSuperView];
      }

      OUTLINED_FUNCTION_12_5();
      v342 = (*(v341 + 720))();
      if (v342)
      {
        v343 = v342;
        [v342 vui_removeFromSuperView];
      }
    }

    else
    {

      if (sub_1E373F6E0(v276, 156, v330, v331, v332, v333) & 1) != 0 && ([objc_opt_self() isTV])
      {
        v334 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_47_0();
        v344 += 224;
        v345 = *v344;
        v346 = (*v344)();
        if (sub_1E3ACABC8(v346, 1))
        {
          v334 = 2;
        }

        else
        {
          v347 = v345();
          v334 = (sub_1E3ACABC8(v347, 3) & 1) == 0;
        }
      }

      LOBYTE(v441[0]) = 1;
      v348 = OUTLINED_FUNCTION_11_81();
      v349(v348);
      if (*&__dst[24])
      {
        if (swift_dynamicCast())
        {
          v350 = sub_1E3AA9D30();
          if (v350 != 3)
          {
            v334 = v350;
          }
        }
      }

      else
      {
        sub_1E325F6F0(__dst, &unk_1ECF296E0, &unk_1E4298030);
      }

      sub_1E3AA9CE0(v334);
      OUTLINED_FUNCTION_47_0();
      v352 = (*(v351 + 1824))();
      v355 = OUTLINED_FUNCTION_14_90(v352, v353, v354);
      if (v355)
      {
        OUTLINED_FUNCTION_30();
        v359 = (*(v358 + 600))();

        if (v359)
        {
LABEL_189:
          if (sub_1E39DFFE0(v355, v356, v357))
          {

            v361 = type metadata accessor for ScoreboardLayout();
            v362 = sub_1E3AECE90(v361);
            sub_1E3280A90(0, &qword_1EE23AF68, off_1E87285B8);
            swift_bridgeObjectRetain_n();
            v363 = sub_1E3744600(v359);
            v364 = sub_1E37766C4(v363);
            if ([v364 showScoreboard])
            {
              type metadata accessor for CGRect(0);
              memset(v441, 0, 32);
              OUTLINED_FUNCTION_11_81();
              sub_1E42038E4();

              v441[0] = *__dst;
              v441[1] = *&__dst[16];
              *&v441[2] = *&__dst[32];
              *(&v441[2] + 1) = v411;
              v441[3] = v359;
              *&v441[4] = v362;
              *&__dst[40] = v411;
              *&__dst[48] = v359;
              *&__dst[64] = v362;

              sub_1E3AD1EE4(v441, v440);
              sub_1E3AD1F1C(__dst);
              v420 = v441[1];
              v423 = v441[0];
              v408 = v441[3];
              v415 = v441[2];
              v365 = *&v441[4];
            }

            else
            {

              v365 = 0;
              v420 = 0u;
              v423 = 0u;
              v415 = 0u;
              v408 = 0u;
            }

            v441[0] = v423;
            v441[1] = v420;
            v441[2] = v415;
            v441[3] = v408;
            *&v441[4] = v365;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32690, &qword_1E42B8F10);
            if (swift_dynamicCast())
            {
              memcpy(__dst, v440, 0x48uLL);
            }

            else
            {
              memset(__dst, 0, 72);
            }

            memcpy(v441, __dst, 0x48uLL);
            v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32698, &qword_1E42B8F18);
            v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326A0, &qword_1E42B8F20);
            sub_1E4148F70(sub_1E3AD1E54, 0, v384, v385, v440);
            v386 = MEMORY[0x1E69E7D40];
            (*((*MEMORY[0x1E69E7D40] & *v15) + 0x2C0))(v440[0]);
            OUTLINED_FUNCTION_36_3();
            (*((*v386 & v387) + 0x2D8))(0);
            sub_1E325F6F0(__dst, &qword_1ECF32698, &qword_1E42B8F18);
          }

          else
          {
            v366 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_12_5();
            v367 = OUTLINED_FUNCTION_12_75();
            v369 = v368(v367);
            v372 = OUTLINED_FUNCTION_14_90(v369, v370, v371);

            OUTLINED_FUNCTION_36_3();
            v374 = (*((*v366 & v373) + 0x2D0))();
            sub_1E3280A90(0, &qword_1EE23B220, off_1E87285A0);
            OUTLINED_FUNCTION_5_110();
            sub_1E393D92C(v372, v374, v375, 0, v376);

            sub_1E325F6F0(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
            OUTLINED_FUNCTION_36_3();
            v377 = OUTLINED_FUNCTION_8_10();
            v378(v377);
          }

          sub_1E404542C();
          sub_1E3280A90(0, &qword_1EE23AF68, off_1E87285B8);
          v388 = sub_1E3744600(v359);

          v389 = sub_1E37766C4(v388);
          v390 = sub_1E4045644(v389);

          if (((v316 | v390) & 1) == 0)
          {
            goto LABEL_197;
          }

          goto LABEL_196;
        }
      }

      if (OUTLINED_FUNCTION_14_90(v355, v356, v357))
      {
        OUTLINED_FUNCTION_30();
        v359 = (*(v360 + 552))();

        if (v359)
        {
          goto LABEL_189;
        }
      }

      else
      {
      }

      v379 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v380 = OUTLINED_FUNCTION_12_75();
      v381(v380);
      OUTLINED_FUNCTION_36_3();
      (*((*v379 & v382) + 0x2D8))(0);
    }

    if ((v316 & 1) == 0)
    {
      goto LABEL_197;
    }

LABEL_196:
    sub_1E3EB4874(1);
    goto LABEL_197;
  }

  v320 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v321 = OUTLINED_FUNCTION_12_75();
  v322(v321);
  OUTLINED_FUNCTION_36_3();
  (*((*v320 & v323) + 0x2D8))(0);
LABEL_197:

LABEL_198:

  *__dst = v432;
  *&__dst[16] = v433;
  *&__dst[32] = v434;
  *&__dst[48] = v402;
  *&__dst[56] = v401;
  __dst[64] = v431;
  *&__dst[65] = v430[0];
  *&__dst[72] = *(v430 + 7);
  v426 = 1;
  v427 = v403;
  sub_1E37CCDFC(__dst);
  return v15;
}

id sub_1E3AD1E10@<X0>(void *a1@<X8>)
{
  type metadata accessor for UnifiedOverlayView();
  result = sub_1E3890DAC();
  *a1 = result;
  return result;
}

uint64_t sub_1E3AD1E54@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326A0, &qword_1E42B8F20));
  sub_1E3AD1EE4(__dst, v6);
  result = sub_1E4201214();
  *a2 = result;
  return result;
}

uint64_t sub_1E3AD1F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32640, &qword_1E42B8DE0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32648, &qword_1E42B8DE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(v1 + 48);
  if (v11)
  {
    sub_1E3280A90(0, &qword_1EE23AF68, off_1E87285B8);
    v12 = sub_1E3744600(v11);
    v13 = sub_1E37766C4(v12);
    type metadata accessor for ScoreboardObservable(0);
    sub_1E4067BA0();
    v15 = v14;
    if ([v13 showScoreboard])
    {

      sub_1E4068D54();
      v16 = sub_1E4202734();
      v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32650, &qword_1E42B8DF0) + 36)] = v16;
      sub_1E4067E98(v15, &v6[*(v3 + 36)]);

      sub_1E379E528(v6, v10, &qword_1ECF32640, &qword_1E42B8DE0);
      v17 = 0;
    }

    else
    {

      v17 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v17, 1, v3);
    sub_1E379E528(v10, a1, &qword_1ECF32648, &qword_1E42B8DE8);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  }
}

uint64_t getEnumTagSinglePayload for OverlayFactoryContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OverlayFactoryContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3AD227C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1E3AD22BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3AD234C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1E3AD23C8()
{
  result = qword_1ECF32670;
  if (!qword_1ECF32670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32640, &qword_1E42B8DE0);
    sub_1E3AD2484();
    sub_1E3AD2540(&qword_1ECF32688, type metadata accessor for SportsKitScoreboardUpdating, &unk_1E42E80B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32670);
  }

  return result;
}

unint64_t sub_1E3AD2484()
{
  result = qword_1ECF32678;
  if (!qword_1ECF32678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32650, &qword_1E42B8DF0);
    sub_1E3AD2540(&qword_1ECF32680, type metadata accessor for Scoreboard, &unk_1E42E8110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32678);
  }

  return result;
}

uint64_t sub_1E3AD2540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3AD2588()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_50();
  sub_1E3AD25B8();
}

void sub_1E3AD25B8()
{
  OUTLINED_FUNCTION_31_1();
  v16 = v2;
  v15 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = sub_1E4203FF4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5();
  v8 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI11LibMPSource_mpLibraryCancellables] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  sub_1E4203FE4();
  v18 = v8;
  OUTLINED_FUNCTION_10_77();
  sub_1E328FC1C(v9, v10, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0, &qword_1E429D100);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v11, &unk_1ECF326B0, &qword_1E429D100, v12);
  sub_1E42072E4();
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8090], v15);
  *&v0[v14] = sub_1E4206A44();
  v13 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mpDownloadObserverSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *&v0[v13] = sub_1E4200544();
  *&v0[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary] = v16;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for LibMPSource();
  objc_msgSendSuper2(&v17, sel_init);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3AD286C()
{
  [*&v0[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary] endGeneratingLibraryChangeNotifications];
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = [objc_opt_self() sharedManager];
  [v2 unregisterObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for LibMPSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E3AD29BC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v22 = v8;
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = *(v3 + OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v2;
  v11[4] = v5;
  OUTLINED_FUNCTION_2_12(v11);
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v24[2] = v12;
  v24[3] = &block_descriptor_57;
  v13 = _Block_copy(v24);
  v14 = v9;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v15, v16, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v17, &qword_1ECF2A730, &qword_1E429B000, v18);
  sub_1E42072E4();
  v19 = OUTLINED_FUNCTION_51_23();
  MEMORY[0x1E6911380](v19);
  _Block_release(v13);

  v20 = OUTLINED_FUNCTION_11_6();
  v21(v20);
  (*(v22 + 8))(v1, v23);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD2C34()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v126 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v125 = v8 - v7;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_5_0(v3 + 16, v138);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v1(MEMORY[0x1E69E7CC0]);
LABEL_99:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v122 = v1;
  v16 = sub_1E4206BA4();
  v17 = VUISignpostLogObject(v16);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v119 = v19;
  v19(v15, v9);
  v20 = sub_1E3A8CC04();
  v24 = v20;
  v25 = MEMORY[0x1E69E7CC0];
  v137 = MEMORY[0x1E69E7CC0];
  v121 = v9;
  v120 = v15;
  v129 = *(v20 + 16);
  if (!v129)
  {
LABEL_89:

    v113 = sub_1E32AE9B0(v25);

    for (i = 0; v113 != i; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v115 = MEMORY[0x1E6911E60](i, v25);
      }

      else
      {
        if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_103;
        }

        v115 = *(v25 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_102;
      }

      (*(*v115 + 264))(1);
    }

    v116 = sub_1E4206B94();
    v117 = VUISignpostLogObject(v116);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v119(v120, v121);
    v122(v25);

    goto LABEL_99;
  }

  v26 = 0;
  v130 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary;
  v128 = v20 + 32;
  v123 = (v5 + 8);
  v124 = (v5 + 16);
  v134 = *MEMORY[0x1E696FB58];
  *&v23 = 136315138;
  v118 = v23;
  v127 = v20;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      goto LABEL_104;
    }

    v133 = v26;
    v27 = *(v128 + v26);
    LOBYTE(v139[0]) = v27;
    LOBYTE(v140) = 13;
    sub_1E37D4BA4(v20, v21, v22);
    OUTLINED_FUNCTION_35_5();
    sub_1E4206254();
    OUTLINED_FUNCTION_35_5();
    sub_1E4206254();
    v28 = OUTLINED_FUNCTION_30_41();
    v30 = v30 && v18 == &v140;
    if (v30)
    {
      goto LABEL_15;
    }

    v31 = OUTLINED_FUNCTION_97_0(v28, v18, v29);

    if ((v31 & 1) == 0)
    {
      LOBYTE(v139[0]) = v27;
      OUTLINED_FUNCTION_31_35(9);
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      v32 = OUTLINED_FUNCTION_30_41();
      if (!v30 || v18 != &v140)
      {
        v35 = OUTLINED_FUNCTION_97_0(v32, v18, v33);

        v36 = ~v35 & 1;
        goto LABEL_17;
      }

LABEL_15:
    }

    v36 = 0;
LABEL_17:
    v37 = *&Strong[v130];
    v38 = sub_1E3AD3914(v27, 0, 0, v36, v37);

    if (v38)
    {
      break;
    }

LABEL_87:
    v24 = v127;
    v111 = v133;
LABEL_88:
    v26 = v111 + 1;
    if (v26 == v129)
    {
      goto LABEL_89;
    }
  }

  LOBYTE(v139[0]) = v27;
  OUTLINED_FUNCTION_31_35(13);
  OUTLINED_FUNCTION_35_5();
  sub_1E4206254();
  OUTLINED_FUNCTION_35_5();
  sub_1E4206254();
  v39 = OUTLINED_FUNCTION_30_41();
  if (v30 && v18 == &v140)
  {
  }

  else
  {
    v42 = OUTLINED_FUNCTION_97_0(v39, v18, v40);

    if ((v42 & 1) == 0)
    {
      sub_1E399D4C4();
      if ((v43 & 1) == 0)
      {
        v100 = sub_1E41A3110();
        (*v124)(v125, v100, v126);
        v101 = sub_1E41FFC94();
        v102 = sub_1E4206814();
        if (os_log_type_enabled(v101, v102))
        {
          v18 = swift_slowAlloc();
          v103 = OUTLINED_FUNCTION_100();
          *&v143[0] = v103;
          *v18 = v118;
          LOBYTE(v142[0]) = v27;
          sub_1E38F53C4(v103, v104, v105);
          v106 = sub_1E4207944();
          v108 = sub_1E3270FC8(v106, v107, v143);

          *(v18 + 4) = v108;
          _os_log_impl(&dword_1E323F000, v101, v102, "LibMPSource:: menu %s has no item", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v103);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_21_0();
        }

        v20 = (*v123)(v125, v126);
        goto LABEL_87;
      }

      if (![*&Strong[v130] uniqueIdentifier])
      {
        goto LABEL_108;
      }

      v44 = OUTLINED_FUNCTION_106();
      type metadata accessor for LibMenuItem(v44);
      v45 = sub_1E4205F14();
      v47 = v46;

      v48 = OUTLINED_FUNCTION_18();
      v18 = sub_1E3A8A680(v27, v45, v47, 0, 0, v48 & 1);
      LOBYTE(v139[0]) = v27;
      OUTLINED_FUNCTION_31_35(9);
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      if (*&v143[0] == *&v142[0] && *(&v143[0] + 1) == *(&v142[0] + 1))
      {
      }

      else
      {
        v50 = OUTLINED_FUNCTION_97_0(*&v143[0], *(&v143[0] + 1), *&v142[0]);

        if ((v50 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      sub_1E399D58C();
      v51 = (*(*v18 + 232))();
LABEL_84:
      MEMORY[0x1E6910BF0](v51);
      v112 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v112 >> 1)
      {
        OUTLINED_FUNCTION_35(v112);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v25 = v137;
      goto LABEL_87;
    }
  }

  sub_1E399E1FC();
  if (!v52)
  {
    goto LABEL_74;
  }

  v18 = v52;
  v53 = sub_1E32AE9B0(v52);
  if (v53)
  {
    v54 = v53;
    v55 = MEMORY[0x1E69E7CC0];
    if (v53 < 1)
    {
      goto LABEL_105;
    }

    v56 = 0;
    v135 = v18 & 0xC000000000000001;
    v131 = v18;
    while (1)
    {
      if (v135)
      {
        v57 = MEMORY[0x1E6911E60](v56, v18);
      }

      else
      {
        v57 = *(v18 + 8 * v56 + 32);
      }

      v58 = v57;
      v59 = [v57 items];
      sub_1E3280A90(0, &qword_1EE23B3F8, 0x1E69705D0);
      v60 = sub_1E42062B4();

      if (v60 >> 62)
      {
        if (!sub_1E4207384())
        {
LABEL_60:

          goto LABEL_61;
        }
      }

      else if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1E6911E60](0, v60);
      }

      else
      {
        if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_101;
        }

        v61 = *(v60 + 32);
      }

      v62 = v61;

      if ([v62 valueForProperty_])
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        v140 = 0u;
        v141 = 0u;
      }

      v139[0] = v140;
      v139[1] = v141;
      if (*(&v141 + 1))
      {
        if (swift_dynamicCast())
        {
          v63 = v54;
          v64 = v25;
          v65 = v138[3];
          v66 = sub_1E3AD8F54(v62);
          if (v67)
          {
            v68 = v66;
            v69 = v67;
            *&v139[0] = v65;
            v70 = sub_1E4207944();
            sub_1E3BEBF48(v70, v71, v68, v69, v142);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_1E3923C10(0, *(v55 + 2) + 1, 1, v55);
            }

            v73 = *(v55 + 2);
            v72 = *(v55 + 3);
            v25 = v64;
            if (v73 >= v72 >> 1)
            {
              v78 = OUTLINED_FUNCTION_35(v72);
              v55 = sub_1E3923C10(v78, v73 + 1, 1, v55);
            }

            v54 = v63;

            *(v55 + 2) = v73 + 1;
            v74 = &v55[64 * v73];
            v75 = v142[0];
            v76 = v142[1];
            v77 = v142[3];
            *(v74 + 4) = v142[2];
            *(v74 + 5) = v77;
            *(v74 + 2) = v75;
            *(v74 + 3) = v76;
          }

          else
          {

            v54 = v63;
          }

          v18 = v131;
        }

        else
        {
        }
      }

      else
      {

        sub_1E325F6F0(v139, &unk_1ECF296E0, &unk_1E4298030);
      }

LABEL_61:
      if (v54 == ++v56)
      {
        goto LABEL_65;
      }
    }
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_65:
  if (!*(v55 + 2))
  {

LABEL_74:

    goto LABEL_87;
  }

  v79 = *&Strong[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary];
  v80 = [v79 uniqueIdentifier];
  if (!v80)
  {
    goto LABEL_107;
  }

  v81 = v80;

  v18 = type metadata accessor for LibMenuItem(0);
  v82 = sub_1E4205F14();
  v84 = v83;

  v85 = OUTLINED_FUNCTION_18();
  v86 = sub_1E3A8A680(13, v82, v84, 0, 0, v85 & 1);
  v87 = v86;
  v88 = *(v55 + 2);
  if (!v88)
  {

    v99 = MEMORY[0x1E69E7CC0];
LABEL_78:
    (*(*v87 + 296))(v99);

    MEMORY[0x1E6910BF0](v109);
    v110 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v24 = v127;
    v111 = v133;
    if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v110 >> 1)
    {
      OUTLINED_FUNCTION_35(v110);
      sub_1E42062F4();
    }

    sub_1E4206324();

    v25 = v137;
    goto LABEL_88;
  }

  v136 = v86;
  *&v140 = MEMORY[0x1E69E7CC0];
  sub_1E4207574();
  v89 = 0;
  v90 = 32;
  while (v89 < *(v55 + 2))
  {
    v91 = *&v55[v90];
    v92 = *&v55[v90 + 16];
    v93 = *&v55[v90 + 48];
    v143[2] = *&v55[v90 + 32];
    v143[3] = v93;
    v143[0] = v91;
    v143[1] = v92;
    sub_1E39241C4(v143, v139);
    v94 = [v79 uniqueIdentifier];
    if (!v94)
    {
      goto LABEL_106;
    }

    v95 = v94;
    ++v89;
    v96 = sub_1E4205F14();
    v98 = v97;

    sub_1E3A8B094(v143, v96, v98);
    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
    v90 += 64;
    if (v88 == v89)
    {

      v99 = v140;
      v87 = v136;
      goto LABEL_78;
    }
  }

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
}

uint64_t sub_1E3AD3914(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  switch(a1)
  {
    case 0:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v8 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A0B38(v8);
      goto LABEL_15;
    case 1:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v16 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A0B78(v16);
      goto LABEL_15;
    case 2:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v11 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A0E0C(v11);
      goto LABEL_15;
    case 3:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v19 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A0E18(v19);
      goto LABEL_15;
    case 4:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v20 = a5;
      v21 = 0;
      goto LABEL_14;
    case 5:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v12 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A10B4(v12);
      goto LABEL_15;
    case 6:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v17 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A04E4(v17);
      goto LABEL_15;
    case 8:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v18 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A10A8(v18);
      goto LABEL_15;
    case 9:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v20 = a5;
      v21 = 1;
LABEL_14:
      v9 = sub_1E39A100C(v20, v21);
      goto LABEL_15;
    case 10:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v22 = OUTLINED_FUNCTION_6_94();
      return sub_1E39A1ED8(v22);
    case 13:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
      v10 = OUTLINED_FUNCTION_6_94();
      v9 = sub_1E39A19F8(v10);
LABEL_15:
      v5 = v9;
      goto LABEL_16;
    case 14:
      sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);

      v13 = OUTLINED_FUNCTION_35_5();
      sub_1E39A1A84(v13, v14, a5);
      v5 = v15;

LABEL_16:
      swift_beginAccess();
      *(v5 + 24) = a4;
      break;
    default:
      return v5;
  }

  return v5;
}

void sub_1E3AD3B98()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v49 = v8;
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v48 = v10 - v9;
  OUTLINED_FUNCTION_138();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v46 = v12;
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v45 = v14 - v13;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1E41A3110();
  (*(v17 + 16))(v21, v22, v15);

  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v42 = v15;
    v25 = swift_slowAlloc();
    v43 = v2;
    v26 = OUTLINED_FUNCTION_100();
    v51[0] = v26;
    *v25 = 136315138;
    v27 = (*(*v6 + 432))();
    v29 = v6;
    v30 = v4;
    v31 = sub_1E3270FC8(v27, v28, v51);

    *(v25 + 4) = v31;
    v4 = v30;
    v6 = v29;
    _os_log_impl(&dword_1E323F000, v23, v24, "LibMPSource:: fetchMPCollectionForMenu for menu %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v2 = v43;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v17 + 8))(v21, v42);
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  v32 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue);
  OUTLINED_FUNCTION_4_0();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v4;
  v34[4] = v2;
  v34[5] = v6;
  v34[6] = ObjectType;
  OUTLINED_FUNCTION_2_12(v34);
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v51[2] = v35;
  v51[3] = &block_descriptor_10_2;
  v36 = _Block_copy(v51);

  v37 = v32;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v38, v39, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v40, &qword_1ECF2A730, &qword_1E429B000, v41);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v45, v48, v36);
  _Block_release(v36);

  (*(v49 + 8))(v48, v50);
  (*(v46 + 8))(v45, v47);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD4024()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v112 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_5_0(v0 + 16, &v120);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v4(MEMORY[0x1E69E7CC0]);
    goto LABEL_41;
  }

  v20 = Strong;
  v113 = v17;
  v114 = v11;
  v21 = *(v2 + 32);
  if (sub_1E38BBD0C(v21, 1, v19) & 1) != 0 || (sub_1E38BBD0C(v21, 2, v22))
  {
    v24 = 25;
  }

  else if (sub_1E38BBD0C(v21, 3, v23))
  {
    v24 = 25;
  }

  else
  {
    v24 = 0;
  }

  v109 = v2;
  v25 = *(v2 + 40);
  v26 = *(v2 + 48);
  v115 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary;
  v27 = v20;
  v28 = *&v20[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary];
  v29 = sub_1E3AD3914(v21, v25, v26, v24, v28);

  if (!v29)
  {
    v4(MEMORY[0x1E69E7CC0]);

    goto LABEL_41;
  }

  v108 = v4;
  v116 = v27;
  v30 = sub_1E4206BA4();
  v31 = VUISignpostLogObject(v30);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v32 = *(v13 + 8);
  v32(v113, v114);
  v33 = sub_1E4206BA4();
  v34 = VUISignpostLogObject(v33);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v111 = v32;
  v32(v113, v114);
  v36 = sub_1E38BBD0C(v21, 1, v35);
  v110 = MEMORY[0x1E69E7CC0];
  v107 = v5;
  if (v36 & 1) != 0 || (sub_1E38BBD0C(v21, 2, v37))
  {
    sub_1E399EC28();
    if (v38)
    {
      v39 = v38;
      if (sub_1E32AE9B0(v38))
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    v106 = 0;
    v55 = MEMORY[0x1E69E7CC0];
    v48 = v111;
    goto LABEL_27;
  }

  if (v21 > 0xE || ((1 << v21) & 0x4426) == 0 || (sub_1E399E1FC(), !v40))
  {
LABEL_23:
    sub_1E399D664();
    if (v59)
    {
      v118[0] = v59;
      v60 = sub_1E4206B94();
      v61 = VUISignpostLogObject(v60);
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      (v111)(v113, v114);
      if (sub_1E38BBD0C(v21, 9, v62))
      {
        v61 = 0;
        sub_1E3AD4D60(v118);
      }

      v106 = 0;
      v96 = sub_1E4206BA4();
      v97 = VUISignpostLogObject(v96);
      OUTLINED_FUNCTION_40_34();
      v98 = OUTLINED_FUNCTION_32_41();
      OUTLINED_FUNCTION_35_34(v98, v99, v100, "LibMPSource.parsingItems", 24);

      OUTLINED_FUNCTION_7_110();
      v48 = *(v101 - 256);
      (v48)(v102);
      type metadata accessor for LibResponseParser();
      v55 = sub_1E3920DD0(v118[0]);

      v103 = sub_1E4206B94();
      v104 = VUISignpostLogObject(v103);
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_35_34(v103, &dword_1E323F000, v104, "LibMPSource.parsingItems", 24);

      v105 = OUTLINED_FUNCTION_242();
      (v48)(v105);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v39 = v40;
  if (!sub_1E32AE9B0(v40))
  {

    goto LABEL_23;
  }

LABEL_20:
  v41 = sub_1E4206B94();
  v42 = VUISignpostLogObject(v41);
  OUTLINED_FUNCTION_40_34();
  v43 = OUTLINED_FUNCTION_15_81();
  OUTLINED_FUNCTION_35_34(v43, v44, v45, v46, 25);

  OUTLINED_FUNCTION_7_110();
  v48 = *(v47 - 256);
  v48();
  v49 = sub_1E4206BA4();
  v50 = VUISignpostLogObject(v49);
  sub_1E41FFBE4();
  v51 = OUTLINED_FUNCTION_15_81();
  OUTLINED_FUNCTION_22_47(v51, v52, v53);

  v54 = OUTLINED_FUNCTION_242();
  (v48)(v54);
  type metadata accessor for LibResponseParser();
  v55 = sub_1E3920F60(v39);

  v56 = sub_1E4206B94();
  v57 = VUISignpostLogObject(v56);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_22_47(v56, &dword_1E323F000, v57);

  v58 = OUTLINED_FUNCTION_242();
  (v48)(v58);
  v106 = 0;
LABEL_27:
  v63 = sub_1E4206BA4();
  v64 = VUISignpostLogObject(v63);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_34(v63, &dword_1E323F000, v64, "LibMPSource.constructViewModels", 31);

  v65 = OUTLINED_FUNCTION_242();
  (v48)(v65);
  v66 = 0;
  v119 = MEMORY[0x1E69E7CC0];
  v67 = v55[2];
  v68 = v55 + 4;
LABEL_28:
  v69 = &v68[5 * v66];
  while (v67 != v66)
  {
    if (v66 >= v55[2])
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    sub_1E327F454(v69, v118);
    sub_1E327F454(v118, v117);
    if (![*&v116[v115] uniqueIdentifier])
    {
      goto LABEL_44;
    }

    v70 = OUTLINED_FUNCTION_106();
    v71 = type metadata accessor for LibLockupViewModel(v70);
    v72 = sub_1E4205F14();
    v74 = v73;

    v75 = j__OUTLINED_FUNCTION_18();
    v63 = v71;
    sub_1E38BC104(v117, v21, v72, v74, v75 & 1);
    if (v76)
    {
      v77 = *(*v76 + 1640);

      v77();

      v78 = __swift_destroy_boxed_opaque_existential_1(v118);
      v63 = &v119;
      MEMORY[0x1E6910BF0](v78);
      v79 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v79 >> 1)
      {
        OUTLINED_FUNCTION_35(v79);
        sub_1E42062F4();
      }

      ++v66;
      sub_1E4206324();
      v110 = v119;
      v68 = v55 + 4;
      goto LABEL_28;
    }

    __swift_destroy_boxed_opaque_existential_1(v118);
    v69 += 40;
    ++v66;
  }

  v80 = sub_1E4206B94();
  v81 = VUISignpostLogObject(v80);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_32_41();
  sub_1E41FFBA4();

  OUTLINED_FUNCTION_7_110();
  v83 = *(v82 - 256);
  v83(v84);
  v85 = sub_1E4206B94();
  v86 = VUISignpostLogObject(v85);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_32_41();
  sub_1E41FFBA4();

  (v83)(v113, v66);
  v87 = sub_1E41A3110();
  (*(v112 + 16))(v10, v87, v107);
  swift_bridgeObjectRetain_n();

  v88 = sub_1E41FFC94();
  v89 = sub_1E4206814();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = OUTLINED_FUNCTION_100();
    v118[0] = v91;
    *v90 = 136315394;
    v92 = (*(*v109 + 432))(v91);
    v94 = sub_1E3270FC8(v92, v93, v118);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2048;
    v95 = sub_1E32AE9B0(v110);

    *(v90 + 14) = v95;

    _os_log_impl(&dword_1E323F000, v88, v89, "LibMPSource:: fetchMPCollectionForMenu for menu %s result %ld", v90, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v112 + 8))(v10, v107);
  v108(v110);

LABEL_41:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD4B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_123_2();
  v25 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  MEMORY[0x1EEE9AC00](v34);
  *&v36 = MEMORY[0x1EEE9AC00](v35).n128_u64[0];
  v37 = *v24;
  v38 = [*v20 vui_rentalExpirationDate];
  if (v38)
  {
    v39 = v38;
    sub_1E41FE584();

    v40 = *(v27 + 32);
    v41 = OUTLINED_FUNCTION_35_5();
    v40(v41);
    v42 = [v37 vui_rentalExpirationDate];
    if (v42)
    {
      v43 = v42;
      sub_1E41FE584();

      (v40)(v33, v30, v25);
      sub_1E41FE534();
      v44 = *(v27 + 8);
      v44(v33, v25);
      v45 = OUTLINED_FUNCTION_13_8();
      (v44)(v45);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_13_8();
      v47(v46);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD4D60(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1E37EFA58(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1E3AD76BC(v4);
  *a1 = v2;
}

void sub_1E3AD4DD8()
{
  OUTLINED_FUNCTION_31_1();
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v44 = v9;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v42 = v15;
  v43 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v16 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v20 = OUTLINED_FUNCTION_43_29();
  (*(v18 + 16))(v0, v20, v16);

  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  if (os_log_type_enabled(v21, v22))
  {
    v40 = v4;
    v23 = swift_slowAlloc();
    v39 = v1;
    v24 = v13;
    v25 = v6;
    v26 = OUTLINED_FUNCTION_100();
    v45[0] = v26;
    *v23 = 136315394;
    *(v23 + 4) = sub_1E3270FC8(v44, v8, v45);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v25 & 1;
    _os_log_impl(&dword_1E323F000, v21, v22, "LibMPSource:: fetchMPSeasons for show %s download only %{BOOL}d", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v6 = v25;
    v13 = v24;
    v1 = v39;
    OUTLINED_FUNCTION_6_0();
    v4 = v40;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v18 + 8))(v0, v16);
  v27 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue);
  OUTLINED_FUNCTION_4_0();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v41;
  *(v29 + 32) = v4;
  *(v29 + 40) = v44;
  *(v29 + 48) = v8;
  *(v29 + 56) = v6 & 1;
  OUTLINED_FUNCTION_2_12(v29);
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v45[2] = v30;
  v45[3] = &block_descriptor_17_2;
  v31 = _Block_copy(v45);

  v32 = v27;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v33, v34, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v35, &qword_1ECF2A730, &qword_1E429B000, v36);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v13, v31);
  _Block_release(v31);

  v37 = OUTLINED_FUNCTION_13_8();
  v38(v37);
  (*(v42 + 8))(v1, v43);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD5208()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_106();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v41 = v11;
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0(v0 + 16, &v45);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = v1;
    v40 = v9;
    v16 = v5;
    v17 = Strong;
    v18 = sub_1E4206BA4();
    v19 = VUISignpostLogObject(v18);
    v20 = sub_1E41FFBE4();
    OUTLINED_FUNCTION_41_31(v20, &dword_1E323F000, v21, "LibMPSource.fetchSeasons");

    v22 = *(v13 + 8);
    v23 = OUTLINED_FUNCTION_13_8();
    v22(v23);
    sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
    v24 = *&v17[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary];
    sub_1E39A1134(v7, v16, v3 & 1, v24);

    v44 = MEMORY[0x1E69E7CC0];
    sub_1E399E1FC();
    if (v25)
    {
      OUTLINED_FUNCTION_123_2();
      type metadata accessor for LibResponseParser();
      v26 = sub_1E3920F60(v24);

      v27 = sub_1E3AD5600(v26);

      if (v27)
      {
        sub_1E3AD5784(v27);
      }
    }

    v28 = sub_1E4206B94();
    v29 = VUISignpostLogObject(v28);
    v30 = sub_1E41FFBE4();
    OUTLINED_FUNCTION_41_31(v30, &dword_1E323F000, v31, "LibMPSource.fetchSeasons");

    v32 = OUTLINED_FUNCTION_13_8();
    v22(v32);
    v33 = sub_1E41A3110();
    (*(v41 + 16))(v39, v33, v42);
    v34 = v44;

    v35 = sub_1E41FFC94();
    v36 = sub_1E4206814();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = OUTLINED_FUNCTION_100();
      v43 = v38;
      *v37 = 136315650;
      *(v37 + 4) = sub_1E3270FC8(v7, v16, &v43);
      *(v37 + 12) = 1024;
      *(v37 + 14) = v3 & 1;
      *(v37 + 18) = 2048;
      *(v37 + 20) = *(v34 + 16);

      _os_log_impl(&dword_1E323F000, v35, v36, "LibMPSource:: did fetchMPSeasons for show %s download only\n%{BOOL}d result count %ld", v37, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v41 + 8))(v39, v42);
    v40(v34);
  }

  else
  {
    v9(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AD5600(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1E3AD8B90(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1E327F454(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760, &unk_1E42E65A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1E3251BE8(v8, v11);
      sub_1E3251BE8(v11, v10);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E3AD8B90((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1E3251BE8(v10, v3 + 40 * v6 + 32);
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1E325F6F0(v8, &qword_1ECF2D640, &qword_1E42A9BA0);
    return 0;
  }

  return v3;
}

uint64_t sub_1E3AD5784(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3AD8B28(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760, &unk_1E42E65A0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E3AD5860()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource:: MPMediaLibrary cancelMPMediaLibraryObservation");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  [*(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary) endGeneratingLibraryChangeNotifications];
  v11 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mpLibraryCancellables;
  swift_beginAccess();
  *(v0 + v11) = MEMORY[0x1E69E7CC0];
}

void sub_1E3AD5998()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326D0, &qword_1E42B8F28);
  OUTLINED_FUNCTION_0_10();
  v85 = v2;
  v86 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v84 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v69 - v5;
  OUTLINED_FUNCTION_138();
  v87 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v91 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v76 = v9 - v8;
  OUTLINED_FUNCTION_138();
  v89 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v92 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v88 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326E0, &unk_1E42B8F30);
  OUTLINED_FUNCTION_0_10();
  v81 = v15;
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v69 - v16;
  OUTLINED_FUNCTION_138();
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v26 = sub_1E41A3110();
  v27 = *(v19 + 16);
  v78 = v26;
  v79 = v27;
  (v27)(v25);
  v28 = v0;
  v29 = sub_1E41FFC94();
  v30 = sub_1E4206814();
  v31 = os_log_type_enabled(v29, v30);
  v90 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = [*(&v90->isa + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary) status];

    _os_log_impl(&dword_1E323F000, v29, v30, "LibMPSource:: MPMediaLibrary status is %ld", v32, 0xCu);
    v28 = v90;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v29 = v28;
  }

  v33 = OUTLINED_FUNCTION_35_5();
  v35 = v34;
  (v34)(v33);
  v36 = *(&v28->isa + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary);
  sub_1E3280A90(0, &qword_1EE23B020, 0x1E6970610);
  v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v95 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  v94 = v37;
  v38 = sub_1E4205F14();
  v40 = OUTLINED_FUNCTION_14_91(v38, v39);
  [v36 addLibraryFilterPredicate_];

  v41 = MEMORY[0x1E69E6370];
  v95 = MEMORY[0x1E69E6370];
  LOBYTE(v94) = 0;
  v42 = sub_1E4205F14();
  v44 = OUTLINED_FUNCTION_14_91(v42, v43);
  [v36 addLibraryFilterPredicate_];

  v95 = v41;
  LOBYTE(v94) = 0;
  v45 = sub_1E4205F14();
  v47 = OUTLINED_FUNCTION_14_91(v45, v46);
  [v36 addLibraryFilterPredicate_];

  [v36 beginGeneratingLibraryChangeNotifications];
  v79(v22, v78, v17);
  v48 = sub_1E41FFC94();
  v49 = sub_1E4206814();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_125_0();
    *v50 = 0;
    _os_log_impl(&dword_1E323F000, v48, v49, "LibMPSource:: MPMediaLibrary beginGeneratingLibraryChangeNotifications", v50, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v35(v22, v17);
  v79 = objc_opt_self();
  v51 = [v79 defaultCenter];
  v52 = v88;
  sub_1E4206C14();

  v75 = sub_1E3B7B208();
  v53 = v76;
  sub_1E4207074();
  v74 = objc_opt_self();
  v54 = [v74 mainRunLoop];
  v94 = v54;
  sub_1E4207054();
  v55 = v83;
  OUTLINED_FUNCTION_52_22();
  v72 = sub_1E3280A90(0, &qword_1EE23AD08, 0x1E695DFD0);
  v78 = sub_1E328FC1C(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v73 = sub_1E3782CC4();
  v56 = v80;
  v57 = v89;
  sub_1E42007F4();
  sub_1E325F6F0(v55, &unk_1ECF3DB30, &unk_1E42A89B0);

  v58 = *(v91 + 8);
  v91 += 8;
  v71 = v58;
  v58(v53, v87);
  v59 = *(v92 + 8);
  v92 += 8;
  v77 = v59;
  (v59)(v52, v57);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v60 = v90;
  swift_unknownObjectWeakInit();
  v70 = MEMORY[0x1E695BE50];
  sub_1E32752B0(&unk_1EE28A2C0, &unk_1ECF326E0, &unk_1E42B8F30, MEMORY[0x1E695BE50]);
  v61 = v82;
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v81 + 8))(v56, v61);
  OUTLINED_FUNCTION_23_45();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90, MEMORY[0x1E69E6348]);
  sub_1E42004D4();
  swift_endAccess();

  v62 = [objc_opt_self() sharedManager];
  [v62 registerObserver_];

  v94 = *&v60[OBJC_IVAR____TtC8VideosUI11LibMPSource_mpDownloadObserverSubject];

  sub_1E4207074();
  v63 = [v74 mainRunLoop];
  v93 = v63;
  OUTLINED_FUNCTION_52_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF88]);
  v64 = v84;
  sub_1E42007F4();
  sub_1E325F6F0(v55, &unk_1ECF3DB30, &unk_1E42A89B0);

  v71(v53, v87);

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&unk_1EE28A2D0, &unk_1ECF326D0, &qword_1E42B8F28, v70);
  v65 = v86;
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v85 + 8))(v64, v65);
  OUTLINED_FUNCTION_23_45();
  sub_1E42004D4();
  swift_endAccess();

  v66 = [v79 defaultCenter];
  v67 = sub_1E4205ED4();
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  v68 = OUTLINED_FUNCTION_35_5();
  v77(v68);
  OUTLINED_FUNCTION_23_45();
  sub_1E42004D4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3AD64B4(unint64_t a1, char a2)
{
  v6 = a1;
  v112 = a1;
  v7 = sub_1E32AE9B0(a1);
  v107 = v6 & 0xC000000000000001;

  if (a2)
  {
    v105 = v2;
    for (i = 0; v7 != i; ++i)
    {
      if (v107)
      {
        v27 = OUTLINED_FUNCTION_11_6();
        v10 = MEMORY[0x1E6911E60](v27);
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v9)
        {
          goto LABEL_103;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_47_29();
      v111 = 10;
      v14 = sub_1E37D4BA4(v11, v12, v13);
      OUTLINED_FUNCTION_29_42();
      sub_1E4206254();
      OUTLINED_FUNCTION_28_37();
      v15 = sub_1E4206254();
      v23 = OUTLINED_FUNCTION_13_85(v15, v16, v17, v18, v19, v20, v21, v22, v105, v107, v108, v109, v110);
      v26 = v26 && v14 == v2;
      if (v26)
      {

LABEL_56:
        (*(*v10 + 264))(1);

        return v6;
      }

      OUTLINED_FUNCTION_24_41(v23, v24, v25);
      OUTLINED_FUNCTION_54_18();

      if (v4)
      {
        goto LABEL_56;
      }
    }

    result = [*(v105 + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary) uniqueIdentifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v47 = OUTLINED_FUNCTION_106();
    v48 = type metadata accessor for LibMenuItem(v47);
    v49 = sub_1E4205F14();
    v51 = v50;

    v52 = OUTLINED_FUNCTION_18();
    v106 = sub_1E3A8A680(10, v49, v51, 0, 0, v52 & 1);
    v53 = sub_1E32AE9B0(v6);
    v54 = v53;
    v55 = 0;
    while (v54 != v55)
    {
      if (v107)
      {
        v72 = OUTLINED_FUNCTION_11_6();
        MEMORY[0x1E6911E60](v72);
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v55 >= v9)
        {
          goto LABEL_109;
        }
      }

      OUTLINED_FUNCTION_47_29();
      v111 = 13;
      v59 = sub_1E37D4BA4(v56, v57, v58);
      OUTLINED_FUNCTION_29_42();
      sub_1E4206254();
      OUTLINED_FUNCTION_28_37();
      v60 = sub_1E4206254();
      v68 = OUTLINED_FUNCTION_13_85(v60, v61, v62, v63, v64, v65, v66, v67, v106, v107, v108, v109, v110);
      if (v26 && v59 == v48)
      {

LABEL_99:
        v100 = OUTLINED_FUNCTION_11_6();
        sub_1E37EFABC(v100, v101);
        if (sub_1E32AE9B0(v6) < v55)
        {
          goto LABEL_122;
        }

        v102 = sub_1E32AE9B0(v6);
        v44 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (!v44)
        {
          sub_1E3797CDC(v103, 1);
          sub_1E3AD8DE4(v55, v55, 1, v106);
          return v112;
        }

        goto LABEL_123;
      }

      OUTLINED_FUNCTION_24_41(v68, v69, v70);
      OUTLINED_FUNCTION_54_18();

      if (v4)
      {
        goto LABEL_99;
      }

      v44 = __OFADD__(v55++, 1);
      if (v44)
      {
        goto LABEL_110;
      }
    }

LABEL_96:
    MEMORY[0x1E6910BF0](v53);
    v9 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
    {
      goto LABEL_124;
    }

    goto LABEL_97;
  }

  v28 = 0;
  while (1)
  {
    if (v7 == v28)
    {
      v28 = sub_1E32AE9B0(v6);
      goto LABEL_48;
    }

    if (v107)
    {
      v45 = OUTLINED_FUNCTION_13_8();
      MEMORY[0x1E6911E60](v45);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 >= v9)
      {
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
        goto LABEL_114;
      }
    }

    OUTLINED_FUNCTION_47_29();
    v111 = 10;
    sub_1E37D4BA4(v29, v30, v31);
    OUTLINED_FUNCTION_29_42();
    sub_1E4206254();
    OUTLINED_FUNCTION_28_37();
    v32 = sub_1E4206254();
    v40 = OUTLINED_FUNCTION_13_85(v32, v33, v34, v35, v36, v37, v38, v39, v104, v107, v108, v109, v110);
    if (v26 && v3 == v2)
    {
      break;
    }

    OUTLINED_FUNCTION_24_41(v40, v41, v42);
    OUTLINED_FUNCTION_54_18();

    if (v4)
    {
      goto LABEL_46;
    }

    v44 = __OFADD__(v28++, 1);
    if (v44)
    {
      goto LABEL_105;
    }
  }

LABEL_46:
  if (__OFADD__(v28, 1))
  {
    goto LABEL_118;
  }

  if (v28 + 1 != sub_1E32AE9B0(v6))
  {
    v79 = v28 + 5;
    do
    {
      v80 = v79 - 4;
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v79 - 4, v6);
      }

      else
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_106;
        }

        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80 >= v9)
        {
          goto LABEL_107;
        }
      }

      OUTLINED_FUNCTION_47_29();
      v111 = 10;
      sub_1E4206254();
      v81 = sub_1E4206254();
      v89 = OUTLINED_FUNCTION_13_85(v81, v82, v83, v84, v85, v86, v87, v88, v104, v107, v108, v109, v110);
      if (v26 && &type metadata for LibMenuType == &v111)
      {
      }

      else
      {
        OUTLINED_FUNCTION_24_41(v89, v90, v91);
        OUTLINED_FUNCTION_54_18();

        if (v80 != v28)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v93 = OUTLINED_FUNCTION_13_8();
            v94 = MEMORY[0x1E6911E60](v93);
            v95 = MEMORY[0x1E6911E60](v79 - 4, v6);
          }

          else
          {
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_119;
            }

            v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v28 >= v9)
            {
              goto LABEL_120;
            }

            if (v80 >= v9)
            {
              goto LABEL_121;
            }

            v94 = *(v6 + 8 * v28 + 32);
            v95 = *(v6 + 8 * v79);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = sub_1E37EFA58(v6);
            v96 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v96) = 0;
          }

          v97 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20) = v95;

          if ((v6 & 0x8000000000000000) != 0 || v96)
          {
            v53 = sub_1E37EFA58(v6);
            v6 = v53;
            v97 = v53 & 0xFFFFFFFFFFFFFF8;
            if ((v80 & 0x8000000000000000) != 0)
            {
LABEL_95:
              __break(1u);
              goto LABEL_96;
            }
          }

          else if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_95;
          }

          v9 = *(v97 + 16);
          if (v80 >= v9)
          {
            goto LABEL_112;
          }

          *(v97 + 8 * v79) = v94;

          v112 = v6;
        }

        v44 = __OFADD__(v28++, 1);
        if (v44)
        {
          goto LABEL_111;
        }
      }

      v98 = v79 - 3;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_108;
      }

      if (v6 >> 62)
      {
        v99 = sub_1E4207384();
      }

      else
      {
        v9 = v6 & 0xFFFFFFFFFFFFFF8;
        v99 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v79;
    }

    while (v98 != v99);
  }

LABEL_48:
  v73 = sub_1E32AE9B0(v6);
  v74 = v73 - v28;
  if (v73 < v28)
  {
    goto LABEL_113;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v75 = v73;
  if (sub_1E32AE9B0(v6) < v73)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v44 = __OFSUB__(0, v74);
  v76 = -v74;
  if (v44)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v77 = sub_1E32AE9B0(v6);
  v44 = __OFADD__(v77, v76);
  v78 = v77 + v76;
  if (!v44)
  {
    sub_1E3797CDC(v78, 1);
    sub_1E3AD8CE8(v28, v75, 0);
    return v112;
  }

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
  OUTLINED_FUNCTION_35(v9);
  sub_1E42062F4();
LABEL_97:
  sub_1E4206324();
  return v112;
}

uint64_t sub_1E3AD6BE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF80]);
  return sub_1E4200624();
}

double sub_1E3AD6D34()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource::mpMediaLibraryContentChanged");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v13 = v0;
  v12(sub_1E3AD8FB8, v11);

  return result;
}

void sub_1E3AD6E94()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v17 = OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v6 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  OUTLINED_FUNCTION_2_12(v8);
  v18[1] = 1107296256;
  v18[2] = sub_1E378AEA4;
  v18[3] = &block_descriptor_36;
  v9 = _Block_copy(v18);

  sub_1E4203FE4();
  v18[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v10, v11, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v12, &qword_1ECF2A730, &qword_1E429B000, v13);
  sub_1E42072E4();
  v14 = OUTLINED_FUNCTION_51_23();
  MEMORY[0x1E6911380](v14);
  _Block_release(v9);

  v15 = OUTLINED_FUNCTION_11_6();
  v16(v15);
  (*(v4 + 8))(v0, v17);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3AD7160()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource::mpMediaLibraryDownloadingDidChange");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  if (sub_1E3AD3914(10, 0, 0, 1, *(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary)))
  {
    sub_1E399D4C4();
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v12 & 1);
  }

  return result;
}

uint64_t sub_1E3AD7308()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource::refreshRentalMenu");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
  v11 = sub_1E39A2208();
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v11);
}

uint64_t sub_1E3AD7494(uint64_t result)
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
      sub_1E3280A90(0, &qword_1EE23B3F8, 0x1E69705D0);
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

void *sub_1E3AD7500(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32768, &unk_1E42E03B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760, &unk_1E42E65A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3AD7670(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_5_0(v2 + 16, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong *a2];
}

void sub_1E3AD76BC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E3AD7494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E3AD7A90(v8, v9, a1, v5);
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
    sub_1E3AD779C(0, v3, 1, a1);
  }
}

void sub_1E3AD779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v53);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v40 - v15;
  v41 = a2;
  if (a3 == a2)
  {
    return;
  }

  v16 = *a4;
  v17 = (v14 + 32);
  v47 = (v14 + 8);
  v51 = v16;
  v18 = v16 + 8 * a3 - 8;
  v19 = a1 - a3;
  v20 = &selRef_vui_disableLocalAsset;
  while (2)
  {
    v43 = v18;
    v44 = a3;
    v21 = *(v51 + 8 * a3);
    v42 = v19;
    do
    {
      v22 = *v18;
      v23 = v21;
      v24 = v22;
      v25 = [v23 v20[101]];
      if (!v25)
      {
        goto LABEL_9;
      }

      v26 = v25;
      v27 = v24;
      v28 = v48;
      sub_1E41FE584();

      v29 = *v17;
      v30 = v28;
      v24 = v27;
      (*v17)(v52, v30, v53);
      v31 = [v27 v20[101]];
      if (!v31)
      {
        (*v47)(v52, v53);
LABEL_9:

        goto LABEL_10;
      }

      v32 = v31;
      v33 = v46;
      sub_1E41FE584();

      v34 = v52;
      v35 = v45;
      v50 = v24;
      v36 = v53;
      v29(v45, v33, v53);
      v49 = sub_1E41FE534();
      v37 = *v47;
      (*v47)(v35, v36);
      v37(v34, v36);
      v20 = &selRef_vui_disableLocalAsset;

      if ((v49 & 1) == 0)
      {
        break;
      }

LABEL_10:
      if (!v51)
      {
        __break(1u);
        return;
      }

      v38 = *v18;
      v21 = *(v18 + 8);
      *v18 = v21;
      *(v18 + 8) = v38;
      v18 -= 8;
    }

    while (!__CFADD__(v19++, 1));
    a3 = v44 + 1;
    v18 = v43 + 8;
    v19 = v42 - 1;
    if (v44 + 1 != v41)
    {
      continue;
    }

    break;
  }
}

void sub_1E3AD7A90(id *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v144 = a4;
  v145 = a1;
  v7 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v7);
  v156 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v140 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v140 - v12;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v140 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v150 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v153 = a3;
  v24 = *(a3 + 1);
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v163 = *v145;
    if (!v163)
    {
      goto LABEL_144;
    }

    a3 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v132 = a3;
LABEL_104:
      a3 = v132 + 16;
      v133 = *(v132 + 2);
      while (v133 >= 2)
      {
        if (!*v153)
        {
          goto LABEL_141;
        }

        v134 = v132;
        v135 = &v132[16 * v133];
        v136 = *v135;
        v137 = &a3[16 * v133];
        v138 = *(v137 + 1);
        sub_1E3AD8528((*v153 + 8 * *v135), (*v153 + 8 * *v137), (*v153 + 8 * v138), v163);
        if (v5)
        {
          break;
        }

        if (v138 < v136)
        {
          goto LABEL_129;
        }

        if (v133 - 2 >= *a3)
        {
          goto LABEL_130;
        }

        *v135 = v136;
        *(v135 + 1) = v138;
        v139 = *a3 - v133;
        if (*a3 < v133)
        {
          goto LABEL_131;
        }

        v133 = *a3 - 1;
        memmove(v137, v137 + 16, 16 * v139);
        *a3 = v133;
        v132 = v134;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v132 = sub_1E37FFF5C(a3);
    goto LABEL_104;
  }

  v149 = &v140 - v22;
  v158 = v23;
  v25 = 0;
  v160 = (v21 + 32);
  v161 = (v21 + 8);
  v26 = MEMORY[0x1E69E7CC0];
  v157 = v7;
  while (2)
  {
    v27 = v25;
    v28 = v25 + 1;
    v152 = v24;
    if (v28 >= v24)
    {
      goto LABEL_25;
    }

    v143 = v26;
    a3 = *v153;
    v29 = v27;
    v30 = v28;
    v165 = *(*v153 + 8 * v28);
    v31 = *&a3[8 * v27];
    v164 = v31;
    v32 = v165;
    v33 = v31;
    sub_1E3AD4B7C(&v165, &v164, v34, v35, v36, v37, v38, v39, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
    LODWORD(v162) = v40;
    if (v5)
    {

      return;
    }

    v142 = 0;

    v148 = 8 * v29;
    v41 = &a3[8 * v29 + 16];
    v141 = v29;
    v42 = (v29 + 2);
    v28 = v152;
    while (1)
    {
      if (v30 + 1 >= v28)
      {
        goto LABEL_15;
      }

      v154 = v30;
      v43 = *(v41 - 1);
      v44 = *v41;
      a3 = v43;
      v45 = [v44 vui_rentalExpirationDate];
      if (v45)
      {
        break;
      }

LABEL_12:

      if ((v162 & 1) == 0)
      {
        v28 = v154 + 1;
        v5 = v142;
        v26 = v143;
        v57 = v144;
        v27 = v141;
        goto LABEL_26;
      }

LABEL_13:
      ++v41;
      v30 = v154 + 1;
      v42 = (v42 + 1);
    }

    v46 = v45;
    v163 = v42;
    v47 = a3;
    v48 = v150;
    sub_1E41FE584();

    v49 = *v160;
    v50 = v149;
    v51 = v48;
    a3 = v47;
    (*v160)(v149, v51, v7);
    v52 = [v47 vui_rentalExpirationDate];
    if (!v52)
    {
      (*v161)(v50, v7);
      v42 = v163;
      v28 = v152;
      goto LABEL_12;
    }

    v53 = v52;
    v151 = v47;
    v54 = v147;
    sub_1E41FE584();

    v55 = v146;
    v49(v146, v54, v7);
    LODWORD(v53) = sub_1E41FE534();
    a3 = *v161;
    v56 = v55;
    v28 = v152;
    (*v161)(v56, v7);
    (a3)(v50, v7);

    v42 = v163;
    if (((v162 ^ v53) & 1) == 0)
    {
      goto LABEL_13;
    }

    v28 = v154 + 1;
LABEL_15:
    v26 = v143;
    v57 = v144;
    v5 = v142;
    v27 = v141;
    v58 = v148;
    if ((v162 & 1) == 0)
    {
LABEL_26:
      v65 = v153[1];
      if (v28 < v65)
      {
        if (__OFSUB__(v28, v27))
        {
          goto LABEL_134;
        }

        if (v28 - v27 < v57)
        {
          v66 = v27 + v57;
          if (__OFADD__(v27, v57))
          {
            goto LABEL_135;
          }

          if (v66 >= v65)
          {
            v66 = v153[1];
          }

          if (v66 >= v27)
          {
            if (v28 == v66)
            {
              goto LABEL_47;
            }

            v143 = v26;
            v142 = v5;
            v162 = *v153;
            v67 = (v162 + 8 * v28 - 8);
            v141 = v27;
            v68 = (v27 - v28);
            v148 = v66;
LABEL_35:
            v154 = v28;
            v69 = *(v162 + 8 * v28);
            v151 = v68;
            v152 = v67;
            while (1)
            {
              a3 = *v67;
              v70 = v69;
              v71 = a3;
              v72 = [v70 vui_rentalExpirationDate];
              if (!v72)
              {
                goto LABEL_41;
              }

              v73 = v72;
              v163 = v70;
              v74 = v7;
              v75 = v71;
              v76 = v159;
              sub_1E41FE584();

              a3 = *v160;
              v77 = v158;
              v78 = v76;
              v71 = v75;
              v7 = v74;
              (*v160)(v158, v78, v74);
              v79 = [v71 vui_rentalExpirationDate];
              if (!v79)
              {
                break;
              }

              v80 = v79;
              v81 = v156;
              sub_1E41FE584();

              v82 = v71;
              v83 = v155;
              v84 = v81;
              v7 = v157;
              (a3)(v155, v84, v157);
              LOBYTE(v80) = sub_1E41FE534();
              a3 = *v161;
              (*v161)(v83, v7);
              (a3)(v77, v7);

              if ((v80 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_42:
              if (!v162)
              {
                __break(1u);
                goto LABEL_139;
              }

              v85 = *v67;
              v69 = v67[1];
              *v67 = v69;
              v67[1] = v85;
              --v67;
              if (__CFADD__(v68++, 1))
              {
LABEL_45:
                v28 = v154 + 1;
                v67 = (v152 + 8);
                v68 = v151 - 1;
                if (v154 + 1 == v148)
                {
                  v28 = v148;
                  v5 = v142;
                  v26 = v143;
                  v27 = v141;
                  goto LABEL_47;
                }

                goto LABEL_35;
              }
            }

            (*v161)(v77, v74);
            v70 = v163;
LABEL_41:

            goto LABEL_42;
          }

LABEL_136:
          __break(1u);
          goto LABEL_137;
        }
      }

LABEL_47:
      if (v28 < v27)
      {
        goto LABEL_133;
      }

      v87 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v87;
      }

      else
      {
        v26 = sub_1E37FFF70(0, *(v87 + 2) + 1, 1, v87);
      }

      a3 = *(v26 + 2);
      v89 = *(v26 + 3);
      v90 = (a3 + 1);
      if (a3 >= v89 >> 1)
      {
        v26 = sub_1E37FFF70((v89 > 1), (a3 + 1), 1, v26);
      }

      *(v26 + 2) = v90;
      v91 = v26 + 32;
      v92 = &v26[16 * a3 + 32];
      v93 = v154;
      *v92 = v27;
      v92[1] = v93;
      v163 = *v145;
      if (!v163)
      {
        goto LABEL_143;
      }

      if (!a3)
      {
LABEL_96:
        v25 = v154;
        v24 = v153[1];
        if (v154 >= v24)
        {
          goto LABEL_101;
        }

        continue;
      }

      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v26[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v26 + 4);
          v98 = *(v26 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_67:
          if (v100)
          {
            goto LABEL_120;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_123;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_128;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v90 < 2)
        {
          goto LABEL_122;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_82:
        if (v115)
        {
          goto LABEL_125;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_127;
        }

        if (v122 < v114)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v94 - 1 >= v90)
        {
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
          goto LABEL_136;
        }

        if (!*v153)
        {
          goto LABEL_140;
        }

        v126 = v26;
        a3 = &v91[16 * v94 - 16];
        v127 = *a3;
        v128 = v91;
        v129 = &v91[16 * v94];
        v130 = *(v129 + 1);
        sub_1E3AD8528((*v153 + 8 * *a3), (*v153 + 8 * *v129), (*v153 + 8 * v130), v163);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v130 < v127)
        {
          goto LABEL_115;
        }

        v5 = *(v126 + 2);
        if (v94 > v5)
        {
          goto LABEL_116;
        }

        *a3 = v127;
        *(a3 + 1) = v130;
        if (v94 >= v5)
        {
          goto LABEL_117;
        }

        v90 = v5 - 1;
        memmove(v129, v129 + 16, 16 * (v5 - 1 - v94));
        v26 = v126;
        *(v126 + 2) = v5 - 1;
        v131 = v5 > 2;
        v5 = 0;
        v7 = v157;
        v91 = v128;
        if (!v131)
        {
          goto LABEL_96;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_118;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_119;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_121;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_124;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_132;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

    break;
  }

  if (v28 >= v141)
  {
    if (v141 >= v28)
    {
      goto LABEL_26;
    }

    v59 = v152;
    if (v152 >= v42)
    {
      v59 = v42;
    }

    v60 = 8 * v59 - 8;
    v61 = v28;
    v62 = v141;
    do
    {
      if (v62 != --v61)
      {
        v63 = *v153;
        if (!*v153)
        {
          goto LABEL_142;
        }

        v64 = *(v63 + v58);
        *(v63 + v58) = *(v63 + v60);
        *(v63 + v60) = v64;
      }

      ++v62;
      v60 -= 8;
      v58 += 8;
    }

    while (v62 < v61);
LABEL_25:
    v57 = v144;
    goto LABEL_26;
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1E3AD8528(void **a1, id *a2, void **a3, void **a4)
{
  v84 = sub_1E41FE5D4();
  v8 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v77 = (&v76 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v83 = (&v76 - v23);
  v24 = a2 - a1;
  v25 = a3 - a2;
  if (v24 < v25)
  {
    v90 = a3;
    if (a4 != a1 || &a1[v24] <= a4)
    {
      memmove(a4, a1, 8 * v24);
    }

    v27 = (v8 + 32);
    v82 = (v8 + 8);
    v28 = &selRef_vui_disableLocalAsset;
    v29 = &a4[v24];
    v89 = v29;
    while (1)
    {
      if (a4 >= v29 || a2 >= v90)
      {
        a2 = a1;
        goto LABEL_45;
      }

      v31 = *a4;
      v32 = *a2;
      v33 = v31;
      v34 = [v32 v28[101]];
      if (!v34)
      {
        goto LABEL_18;
      }

      v35 = v34;
      v87 = a1;
      v88 = a2;
      v86 = a4;
      v36 = v33;
      v37 = v27;
      v38 = v81;
      sub_1E41FE584();

      v39 = *v37;
      v40 = v83;
      v41 = v38;
      v42 = v84;
      (*v37)(v83, v41, v84);
      v43 = v28[101];
      v85 = v36;
      v44 = [v36 v43];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v46 = v28;
      v47 = v78;
      sub_1E41FE584();

      v48 = v77;
      v49 = v83;
      v39(v77, v47, v42);
      LOBYTE(v45) = sub_1E41FE534();
      v50 = *v82;
      (*v82)(v48, v42);
      v50(v49, v42);
      v28 = v46;

      a4 = v86;
      a1 = v87;
      a2 = v88;
      v29 = v89;
      v27 = v37;
      if (v45)
      {
        goto LABEL_19;
      }

      v51 = v86;
      a4 = v86 + 1;
      if (v87 != v86)
      {
        goto LABEL_20;
      }

LABEL_21:
      ++a1;
    }

    (*v82)(v40, v42);
    a4 = v86;
    a1 = v87;
    a2 = v88;
    v29 = v89;
    v27 = v37;
    v33 = v85;
LABEL_18:

LABEL_19:
    v51 = a2;
    v52 = a1 == a2++;
    if (v52)
    {
      goto LABEL_21;
    }

LABEL_20:
    *a1 = *v51;
    goto LABEL_21;
  }

  v78 = v22;
  if (a4 != a2 || &a2[v25] <= a4)
  {
    memmove(a4, a2, 8 * v25);
  }

  v54 = (v8 + 32);
  v77 = (v8 + 8);
  v29 = &a4[v25];
  v81 = v54;
  v86 = a4;
  v87 = a1;
LABEL_28:
  v88 = a2 - 1;
  v55 = a3 - 1;
  v83 = a2;
  while (v29 > a4 && a2 > a1)
  {
    v90 = v55;
    v89 = v29;
    v57 = v29 - 1;
    v58 = *v88;
    v59 = *(v29 - 1);
    v60 = v58;
    v61 = [v59 vui_rentalExpirationDate];
    if (!v61)
    {
      goto LABEL_41;
    }

    v62 = v61;
    v85 = v59;
    v63 = v82;
    sub_1E41FE584();

    v64 = *v54;
    v65 = v78;
    v66 = v84;
    (*v54)(v78, v63, v84);
    v67 = [v60 vui_rentalExpirationDate];
    if (!v67)
    {
      (*v77)(v65, v66);
      a2 = v83;
      v59 = v85;
LABEL_41:

LABEL_42:
      a3 = v90;
      v52 = v90 + 1 == a2;
      a4 = v86;
      a1 = v87;
      a2 = v88;
      v29 = v89;
      v54 = v81;
      if (!v52)
      {
        *v90 = *v88;
      }

      goto LABEL_28;
    }

    v68 = v67;
    v69 = v80;
    sub_1E41FE584();

    v70 = v79;
    v64(v79, v69, v66);
    LOBYTE(v68) = sub_1E41FE534();
    v71 = *v77;
    (*v77)(v70, v66);
    v71(v65, v66);

    a2 = v83;
    if (v68)
    {
      goto LABEL_42;
    }

    v72 = v90;
    if (v89 != v90 + 1)
    {
      *v90 = *v57;
    }

    v55 = v72 - 1;
    v29 = v57;
    a4 = v86;
    a1 = v87;
    v54 = v81;
  }

LABEL_45:
  v73 = v29 - a4;
  if (a2 != a4 || a2 >= &a4[v73])
  {
    memmove(a2, a4, 8 * v73);
  }

  return 1;
}

void *sub_1E3AD8B28(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E3AD7500(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1E3AD8B90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3AD8BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3AD8BB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32768, &unk_1E42E03B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760, &unk_1E42E65A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3AD8CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for LibMenuItem(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void sub_1E3AD8DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for LibMenuItem(0);
  swift_arrayDestroy();
  v14 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_17;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_26:
  v15 = sub_1E4207384();
LABEL_6:
  v16 = v15 - v8;
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = (v11 + 8 * v8);
  if (v5 != v17 || &v17[8 * v16] <= v5)
  {
    memmove(v5, v17, 8 * v16);
  }

  if (v9)
  {
    v19 = sub_1E4207384();
  }

  else
  {
    v19 = *(v10 + 16);
  }

  if (__OFADD__(v19, v12))
  {
    goto LABEL_28;
  }

  *(v10 + 16) = v19 + v12;
LABEL_17:
  if (v7 < 1)
  {
  }

  else
  {
    v20 = v10 + 8 * v6;
    *(v20 + 32) = v4;
    if (v20 + 40 < v5)
    {

      __break(1u);
    }
  }
}

uint64_t sub_1E3AD8F54(void *a1)
{
  v1 = [a1 genre];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E3AD8FC0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_5_0(*(v0 + 16) + 16, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8))(v1);
  }
}

double sub_1E3AD9070(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_26_0();
  v5 = (*(v4 + 392))();
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    OUTLINED_FUNCTION_26_0();
    (*(v8 + 984))();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
    v11.n128_f64[0] = OUTLINED_FUNCTION_58_18(v9, v10, v9);
    (*(*v7 + 1128))(v11);
    LOBYTE(v22) = v12 & 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
    OUTLINED_FUNCTION_58_18(v13, v14, v13);
    type metadata accessor for LayoutGrid();

    v15 = OUTLINED_FUNCTION_51_1();
    v16 = sub_1E3A25B9C(v7, v21, v15 & 1);

    sub_1E3A25D00(v16, 0, a2, *&v21);
    sub_1E3A258E4(a2);
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v17) + 0x460))(a1, 0);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_7_111();
    v18();
    if (v26)
    {
    }

    else
    {
      v19 = sub_1E3952BD8(v23, v24, v25);

      return v22 + v19;
    }
  }

  return v6;
}

uint64_t sub_1E3AD9318(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1E3AD9330()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v2)
  {
    swift_getObjectType();
    v8 = sub_1E40175B0();
  }

  else
  {
    v8 = 0.0;
  }

  type metadata accessor for LayoutGrid();
  v9 = OUTLINED_FUNCTION_18_54();
  v10 = sub_1E3A2579C(v9);
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v10);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v13 = (*(v12 + 232))(v3);

  v14 = *(*v5 + 392);
  v15 = v14();
  if (v15)
  {
    v16 = v15;
    v17 = v13;
    sub_1E3C2AE10();
    v19 = v18;
    (*(*v16 + 1640))();
  }

  v20 = *(MEMORY[0x1E69DC5C0] + 16);
  v81 = *MEMORY[0x1E69DC5C0];
  v82 = v20;
  if (v14())
  {
    OUTLINED_FUNCTION_30();
    (*(v21 + 176))(v83);

    if ((v84 & 1) == 0)
    {
      *&v81 = v83[0];
      *&v82 = v83[2];
    }
  }

  v22 = sub_1E3AE0394(v7);
  if (v22)
  {
    (*((*v11 & *v1) + 0x4C8))(v5, &v81, v22);
  }

  v66 = v13;
  if ((v14)(v22) && (OUTLINED_FUNCTION_30(), v24 = (*(v23 + 304))(), v26 = v25, , (v26 & 1) == 0) || (v27 = 0.0, v14()) && (OUTLINED_FUNCTION_30(), v24 = (*(v28 + 328))(), v30 = v29, , (v30 & 1) == 0))
  {
    v27 = *&v24;
  }

  v64 = v7;
  v31 = objc_opt_self();
  v32 = [v31 estimatedDimension_];
  v33 = v5[49];
  if (sub_1E373F6E0(v33, 107, v34, v35, v36, v37) & 1) != 0 || (sub_1E373F6E0(v33, 75, v38, v39, v40, v41) & 1) != 0 || (sub_1E373F6E0(v33, 89, v42, v43, v44, v45))
  {
    sub_1E38BAE74(v85);
    v46 = sub_1E3ADD488(v5);
    type metadata accessor for UIFactory();
    v79 = v46;
    *&v69 = &type metadata for CollectionViewCellContext;
    *(&v69 + 1) = &off_1F5D621F8;
    v47 = swift_allocObject();
    v67 = v47;
    *(v47 + 16) = 1;
    *(v47 + 17) = *&v85[1];
    *(v47 + 33) = v86[0];
    *(v47 + 43) = *(v86 + 10);
    v48 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    sub_1E38E5240(v5, &v79, &v67, 0, 0, v48, v80);
    sub_1E325F748(&v67, &qword_1ECF296C0, &unk_1E429BBE0);
    v49 = *&v80[0];
    if (*&v80[0])
    {
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        [v50 vui:v8 sizeThatFits:{0.0, v64, v66, v67}];
        v27 = v51;
        v52 = [v31 absoluteDimension_];

        v32 = v52;
        goto LABEL_24;
      }
    }
  }

LABEL_24:
  v53 = [v31 fractionalWidthDimension_];
  v54 = objc_opt_self();
  v55 = [v54 sizeWithWidthDimension:v53 heightDimension:v32];

  v56 = [objc_opt_self() itemWithLayoutSize_];
  v57 = [v31 fractionalWidthDimension_];
  v58 = [v31 estimatedDimension_];
  v59 = [v54 sizeWithWidthDimension:v57 heightDimension:v58];

  v60 = [objc_opt_self() horizontalGroupWithLayoutSize:v59 repeatingSubitem:v56 count:1];
  v61 = [v56 layoutSize];
  v62 = [v60 layoutSize];
  sub_1E3AE0584(0xD000000000000014, 0x80000001E4270A00, v33, v65, v61, v62);

  sub_1E3790540(v80);
  v63 = [objc_opt_self() sectionWithGroup_];
  [v63 setContentInsets_];

  v67 = v63;
  v68 = v80[0];
  v69 = v80[1];
  v70 = v80[2];
  v71 = v80[3];
  v72 = v80[4];
  v73 = v80[5];
  v74 = v80[6];
  v75 = v80[7];
  v76 = v80[8];
  v77 = v80[9];
  v78 = v80[10];
  sub_1E325F748(&v68, &unk_1ECF296A0, &qword_1E42DF0E0);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3AD9A44()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v124 = v6;
  v125 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v116.n128_u64[0] = v10 - v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v111 - v14;
  v143[0] = (*(*v3 + 1040))(v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580, &unk_1E42B6570);
  sub_1E3AE0FBC();
  sub_1E4149048(v16);

  OUTLINED_FUNCTION_39();
  v17 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & v18) + 0x470);
  *&v126 = v5;
  v19(v3, v5, v1);
  sub_1E3ADBEBC(v1);
  OUTLINED_FUNCTION_39();
  v21 = *((*v17 & v20) + 0x458);
  v127.n128_u64[0] = v1;
  v22 = v21(v143, v3, v1);
  v23 = *v143;
  v123.n128_u64[0] = v143[1];
  v24 = *(*v3 + 960);
  v122.n128_u64[0] = *v3 + 960;
  v121.n128_u64[0] = v24;
  v25 = v24(v22);
  if (v25)
  {
    LODWORD(v115) = *(v25 + 98);
  }

  else
  {
    LODWORD(v115) = 263;
  }

  v26 = sub_1E324FBDC();
  v27 = v8[2];
  v112 = v26;
  *&v113 = v8 + 2;
  v28 = v125;
  v111 = v27;
  (v27)(v15);

  v29 = sub_1E41FFC94();
  v30 = sub_1E4206814();

  v31 = os_log_type_enabled(v29, v30);
  v120 = v8;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v143[0] = v33;
    *v32 = 136315906;
    v142[0] = *(v3 + 98);
    sub_1E37D144C(v33, v34, v35);
    v36 = sub_1E4207944();
    sub_1E3270FC8(v36, v37, v143);
    OUTLINED_FUNCTION_11_5();

    *(v32 + 4) = v17;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v126;
    *(v32 + 22) = 2080;
    if (*(v3 + 24))
    {
      v38 = *(v3 + 16);
      v39 = *(v3 + 24);
    }

    else
    {
      v39 = 0xE300000000000000;
      v38 = 7104878;
    }

    sub_1E3270FC8(v38, v39, v143);
    OUTLINED_FUNCTION_11_5();

    *(v32 + 24) = v38;
    *(v32 + 32) = 2080;
    if (v115 == 263)
    {
      v40 = 0xE300000000000000;
      v41 = 7104878;
    }

    else
    {
      sub_1E384EE08(v115);
      v40 = v42;
    }

    sub_1E3270FC8(v41, v40, v143);
    OUTLINED_FUNCTION_11_5();

    *(v32 + 34) = v38;
    _os_log_impl(&dword_1E323F000, v29, v30, "StackViewController+Layout::computed metrics for type:type:%s, index: %ld,\nid:%s, prototype:%s", v32, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v28 = v125;
    *&v114 = v120[1];
    (v114)(v15, v125);
  }

  else
  {

    *&v114 = v8[1];
    (v114)(v15, v28);
  }

  type metadata accessor for LayoutGrid();
  v43 = OUTLINED_FUNCTION_18_54();
  sub_1E3A258E4(v43);
  OUTLINED_FUNCTION_39();
  (*((*MEMORY[0x1E69E7D40] & v44) + 0x460))(v3, v127.n128_u64[0]);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_111();
  v45();
  if (v138)
  {
    sub_1E41A300C(v139);
    v46 = *&v139[1];
    v119.n128_u64[0] = v139[2];
    v118.n128_u64[0] = v139[3];
    v47 = *&v139[4];
    v48 = *&v139[5];
    v49 = *&v139[6];
    v50 = *&v139[7];
    v51 = *&v139[8];
    v52 = v139[9];
  }

  else
  {
    v46 = v129;
    v119.n128_u64[0] = v130;
    v47 = v132;
    v118.n128_u64[0] = v131;
    v48 = v133;
    v49 = v134;
    v50 = v135;
    v51 = v136;
    v52 = v137;
  }

  v53 = objc_opt_self();
  v54 = [v53 fractionalWidthDimension_];
  v55 = [v53 fractionalHeightDimension_];
  v56 = objc_opt_self();
  v57 = [v56 sizeWithWidthDimension:v54 heightDimension:v55];

  v58 = objc_opt_self();
  v117 = v57;
  v59 = [v58 itemWithLayoutSize_];
  if (v46 <= 10000.0)
  {
    v71 = &selRef_absoluteDimension_;
    v72 = v46;
  }

  else
  {
    v60 = v116.n128_u64[0];
    v111(v116.n128_u64[0], v112, v28);

    v61 = sub_1E41FFC94();
    v62 = sub_1E42067F4();

    if (os_log_type_enabled(v61, v62))
    {
      LODWORD(v113) = v62;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v112 = v64;
      v143[0] = v64;
      *v63 = 134219010;
      *(v63 + 4) = v46;
      *(v63 + 12) = 2080;
      v142[0] = *(v3 + 98);
      sub_1E37D144C(v64, v65, v66);
      v67 = sub_1E4207944();
      sub_1E3270FC8(v67, v68, v143);
      OUTLINED_FUNCTION_11_5();

      *(v63 + 14) = v62;
      *(v63 + 22) = 2048;
      *(v63 + 24) = v126;
      *(v63 + 32) = 2080;
      if (*(v3 + 24))
      {
        v69 = *(v3 + 16);
        v70 = *(v3 + 24);
      }

      else
      {
        v70 = 0xE300000000000000;
        v69 = 7104878;
      }

      sub_1E3270FC8(v69, v70, v143);
      OUTLINED_FUNCTION_11_5();

      *(v63 + 34) = v69;
      *(v63 + 42) = 2080;
      if (v115 == 263)
      {
        v75 = 0xE300000000000000;
        v76 = 7104878;
      }

      else
      {
        sub_1E384EE08(v115);
        v75 = v77;
      }

      sub_1E3270FC8(v76, v75, v143);
      OUTLINED_FUNCTION_11_5();

      *(v63 + 44) = v69;
      _os_log_impl(&dword_1E323F000, v61, v113, "StackViewController+Layout:: internalHorizontalCollectionLayout: height:%f, type:%s,\nindex: %ld, id:%s, prototype:%s", v63, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v73 = v116.n128_u64[0];
      v74 = v125;
    }

    else
    {

      v73 = v60;
      v74 = v28;
    }

    (v114)(v73, v74);
    v71 = &selRef_estimatedDimension_;
    v72 = v23;
  }

  v78 = [v53 *v71];
  v79 = [v53 absoluteDimension_];
  v80 = [v56 sizeWithWidthDimension:v79 heightDimension:v78];

  v120 = v78;
  v81 = objc_opt_self();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v83 = OUTLINED_FUNCTION_24_3(v82);
  *(v83 + 16) = xmmword_1E4298880;
  *(v83 + 32) = v59;
  sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
  v84 = v59;
  v85 = sub_1E42062A4();

  v125 = v80;
  v86 = [v81 horizontalGroupWithLayoutSize:v80 subitems:v85];

  v87 = [objc_opt_self() sectionWithGroup_];
  type metadata accessor for CollectionLayoutFactory();
  v88 = OUTLINED_FUNCTION_35_0();
  v94 = [v87 setOrthogonalScrollingBehavior_];
  if ((v121.n128_u64[0])(v94))
  {
  }

  v95 = [v84 layoutSize];
  v96 = [v86 layoutSize];
  v97 = OUTLINED_FUNCTION_28_38(26);
  v98 = v126;
  sub_1E3AE0584(v97, v99, v100, v126, v95, v96);

  [v87 setInterGroupSpacing_];
  nullsub_1();
  [v87 setContentInsets_];
  v101 = OUTLINED_FUNCTION_51_1();
  sub_1E3814DBC(v98, v101 & 1, v140, v46, v119.n128_f64[0], v118.n128_f64[0], v47, v48, v49, v50, v51, v52);
  memcpy(v128, v140, sizeof(v128));
  nullsub_1();
  memcpy(v143, v128, 0xB0uLL);
  sub_1E3F3778C(v143, v87, v141);
  v127 = v141[0];
  v126 = v141[1];
  v123 = v141[2];
  v122 = v141[3];
  v121 = v141[4];
  v119 = v141[5];
  v118 = v141[6];
  v116 = v141[7];
  v115 = v141[8];
  v114 = v141[9];
  v113 = v141[10];

  memcpy(v142, v141, sizeof(v142));
  if (sub_1E3AD9318(v142) == 1)
  {
    v102 = v128[0];
    v103 = v128[1];
    v104 = v128[2];
    v105 = v128[3];
    v106 = v128[4];
    v107 = v128[5];
    v108 = v128[6];
    v109 = v128[7];
  }

  else
  {
    sub_1E3AE0F68(v140);
    v103 = v126;
    v102 = v127;
    v105 = v122;
    v104 = v123;
    v106 = v121;
    v108 = v118;
    v107 = v119;
    v109 = v116;
  }

  v110 = v124;
  *v124 = v87;
  OUTLINED_FUNCTION_12_76(v110, v102, v103, v104, v105, v106, v107, v108, v109);
  OUTLINED_FUNCTION_42();
}

void sub_1E3ADA640(void (*a1)(uint64_t *__return_ptr)@<X3>, void *a2@<X8>)
{
  a1(&v11);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  *a2 = v11;
  OUTLINED_FUNCTION_13_86(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1E3ADA6A8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v105 = v10;
  (*(v9 + 1136))(v5);
  OUTLINED_FUNCTION_2_33();
  v12 = (*(v11 + 392))();
  if (v3)
  {
    swift_getObjectType();
    v13 = sub_1E40175B0();
  }

  else
  {
    v13 = 0.0;
  }

  v14 = 1.0;
  if (v12)
  {
    v15 = *(*v12 + 984);

    v17 = v15(v16);
    LOBYTE(v15) = v18;

    if (v15)
    {
      v19 = 21;
    }

    else
    {
      v19 = v17;
    }

    v20 = *(*v12 + 1128);

    *&v22 = COERCE_DOUBLE(v20(v21));
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v14 = *&v22;
    }
  }

  else
  {
    v19 = 21;
  }

  type metadata accessor for LayoutGrid();
  v25 = OUTLINED_FUNCTION_51_1();
  v99 = sub_1E3A25B9C(v12, v19, v25 & 1);
  v100 = v14;
  v26 = sub_1E3A25D00(v99, 1, v13, v14);
  sub_1E3A258E4(v13);
  OUTLINED_FUNCTION_67_1();
  (*((*v8 & v27) + 0x460))(v5, v3);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_111();
  v28();
  if (v116)
  {
    sub_1E41A300C(v117);
    v29 = v118;
    v30 = v119;
  }

  else
  {
    v29 = v114;
    v30 = v115;
  }

  if (v3)
  {
    swift_getObjectType();
    v31 = sub_1E40175B0();
  }

  else
  {
    v31 = 0.0;
  }

  OUTLINED_FUNCTION_85();
  (*(v32 + 440))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v104 = (*(v33 + 232))(v3);

  v34 = objc_opt_self();
  v35 = [v34 absoluteDimension_];
  v36 = [v34 absoluteDimension_];
  v37 = objc_opt_self();
  v38 = [v37 sizeWithWidthDimension:v36 heightDimension:v35];

  v102 = v38;
  v39 = [objc_opt_self() itemWithLayoutSize_];
  v40 = [v34 fractionalWidthDimension_];
  v103 = v35;
  v41 = [v37 sizeWithWidthDimension:v40 heightDimension:v35];

  v42 = objc_opt_self();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v44 = OUTLINED_FUNCTION_24_3(v43);
  *(v44 + 16) = xmmword_1E4298880;
  *(v44 + 32) = v39;
  sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
  v45 = v39;
  v46 = sub_1E42062A4();

  v101 = v41;
  v47 = [v42 horizontalGroupWithLayoutSize:v41 subitems:v46];

  sub_1E3A25950(v31);
  v49 = [objc_opt_self() fixedSpacing_];
  [v47 setInterItemSpacing_];

  v106 = [objc_opt_self() sectionWithGroup_];
  LOBYTE(v120[0]) = 34;
  (*(*v5 + 776))(__dst, v120, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (__dst[3])
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      sub_1E3A25950(v31);
      goto LABEL_25;
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_26();
  v52 = (*(v51 + 392))();
  v50 = v30;
  if (v52)
  {
    OUTLINED_FUNCTION_30();
    *&v54 = COERCE_DOUBLE((*(v53 + 1176))());
    v56 = v55;

    v50 = v30;
    if ((v56 & 1) == 0)
    {
      v50 = *&v54;
    }
  }

LABEL_25:
  [v106 setInterGroupSpacing_];
  OUTLINED_FUNCTION_2_33();
  if ((*(v57 + 960))())
  {
  }

  v58 = [v45 layoutSize];
  v59 = [v47 layoutSize];
  v60 = OUTLINED_FUNCTION_28_38(24);
  sub_1E3AE0584(v60, v61, v62, v105, v58, v59);

  nullsub_1();
  [v106 setContentInsets_];

  sub_1E3790540(__src);
  memcpy(__dst, __src, 0xB0uLL);
  memcpy(v112, __src, sizeof(v112));
  v63 = __dst[21];
  v110[0] = 40;
  (*(*v5 + 776))(v120, v110, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v120[3])
  {
    sub_1E325F748(v120, &unk_1ECF296E0, &unk_1E4298030);
LABEL_45:
    sub_1E3F3778C(__dst, v106, v120);

    OUTLINED_FUNCTION_82();
    sub_1E325F748(v84, v85, v86);
    memcpy(v109, v112, 0xA8uLL);
    *(&v109[10] + 1) = v63;
    memcpy(v110, v112, sizeof(v110));
    v111 = v63;
    sub_1E37C5830(v109, v108, &unk_1ECF296A0, &qword_1E42DF0E0);
    OUTLINED_FUNCTION_82();
    sub_1E325F748(v87, v88, v89);
    v90 = v109[0];
    v91 = v109[1];
    v92 = v109[2];
    v93 = v109[3];
    v94 = v109[4];
    v95 = v109[5];
    v96 = v109[6];
    v97 = v109[7];
    *v7 = v106;
    OUTLINED_FUNCTION_13_86(v90, v91, v92, v93, v94, v95, v96, v97);
    OUTLINED_FUNCTION_42();
    return;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_45;
  }

  if ((v110[0] & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_26();
  v65 = (*(v64 + 1040))();
  if (!v65)
  {
    goto LABEL_45;
  }

  v66 = v65;
  if (!sub_1E32AE9B0(v65))
  {
LABEL_46:

    goto LABEL_45;
  }

  if ((v66 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v69 = v98;
    v67 = v100;
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    v67 = v100;
    if (!v68)
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v69 = *(v66 + 32);
  }

  v71 = (*(*v69 + 872))(v70);
  if (!v71)
  {

    goto LABEL_45;
  }

  v72 = sub_1E32AE9B0(v71);

  sub_1E3A262D8(v72, v99, 1, v13, v67);
  v74 = v73;
  v107 = MEMORY[0x1E69E7CD0];
  v75 = __OFSUB__(v72, v73);
  v76 = v72 - v73;
  if (v75)
  {
    goto LABEL_50;
  }

  if (v72 < v76)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v76 == v72)
  {
LABEL_41:
    v78 = *MEMORY[0x1E69DDCE0];
    v79 = *(MEMORY[0x1E69DDCE0] + 8);
    v80 = *(MEMORY[0x1E69DDCE0] + 16);
    v81 = *(MEMORY[0x1E69DDCE0] + 24);
    v82 = OUTLINED_FUNCTION_51_1();
    sub_1E3814DBC(v105, v82 & 1, v108, 0.0, v78, v79, v80, *&v81, v78, v79, v80, v81);

    memcpy(v109, v108, sizeof(v109));
    nullsub_1();
    memcpy(v110, v112, sizeof(v110));
    v111 = v63;
    sub_1E325F748(v110, &unk_1ECF296A0, &qword_1E42DF0E0);
    memcpy(v112, v109, sizeof(v112));
    v83 = *(&v109[10] + 1);
    memcpy(v120, v109, 0xA8uLL);
    v120[21] = *(&v109[10] + 1);
    if (sub_1E3AD9318(v120) == 1)
    {
      v63 = v83;
    }

    else
    {
      v63 = v107;
    }

    goto LABEL_46;
  }

  if (v76 < v72)
  {
    do
    {
      v77 = v76 + 1;
      sub_1E3897544(v120, v76);
      v76 = v77;
      --v74;
    }

    while (v74);
    goto LABEL_41;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_1E3ADB20C()
{
  sub_1E3ADB254();
  sub_1E3AE0F68(&v2);
  return v1;
}

double sub_1E3ADB254()
{
  OUTLINED_FUNCTION_41_5();
  v4 = v3;
  v6 = v5;
  v136 = v7;
  OUTLINED_FUNCTION_21();
  v139 = v9;
  (*(v8 + 1136))(v6);
  if (v4)
  {
    swift_getObjectType();
    v10 = sub_1E40175B0();
  }

  else
  {
    v10 = 0.0;
  }

  v134 = *(*v6 + 392);
  v11 = v134();
  v12 = MEMORY[0x1E69DDCE0];
  if (!v11 || (OUTLINED_FUNCTION_30(), v0 = (*(v13 + 984))(), v15 = v14, , (v15 & 1) != 0) || v0 == 21)
  {
    type metadata accessor for LayoutGrid();
    v20 = OUTLINED_FUNCTION_18_54();
    sub_1E3A258E4(v20);
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
  }

  else
  {
    v16 = *v12;
    v17 = v12[1];
    v18 = v12[2];
    v19 = v12[3];
  }

  v25 = OUTLINED_FUNCTION_51_0();
  v26(v25);
  OUTLINED_FUNCTION_16_73();
  v129 = *(*v6 + 960);
  if (v129())
  {
    OUTLINED_FUNCTION_30();
    (*(v27 + 392))();
    OUTLINED_FUNCTION_11_5();

    if (v0)
    {
      OUTLINED_FUNCTION_47_0();
      v167[0] = (*(v28 + 200))();
      LOBYTE(v167[1]) = v29 & 1;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
      sub_1E3A1F10C(v30, v31, v32);
      OUTLINED_FUNCTION_54_19();
      if ((v166 & 1) == 0)
      {
        v137 = v165;
        OUTLINED_FUNCTION_47_0();
        v167[0] = (*(v33 + 304))();
        LOBYTE(v167[1]) = v34 & 1;
        OUTLINED_FUNCTION_54_19();
        v110 = v165;
        v111 = objc_opt_self();
        v112 = [v111 fractionalWidthDimension_];
        v113 = [v111 absoluteDimension_];
        v128 = objc_opt_self();
        v114 = [v128 sizeWithWidthDimension:v112 heightDimension:v113];

        v115 = objc_opt_self();
        v116 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v117 = swift_allocObject();
        *(v117 + 2) = v6;
        *(v117 + 3) = v16;
        *(v117 + 4) = v17;
        *(v117 + 5) = v18;
        *(v117 + 6) = v19;
        *(v117 + 7) = v0;
        v117[8] = v137;
        *(v117 + 9) = v116;
        v117[10] = v110;
        v167[4] = sub_1E3AE10F0;
        v167[5] = v117;
        v167[0] = MEMORY[0x1E69E9820];
        v167[1] = 1107296256;
        v167[2] = sub_1E3AE0974;
        v167[3] = &block_descriptor_58;
        v118 = _Block_copy(v167);

        v119 = [v115 customGroupWithLayoutSize:v114 itemProvider:v118];
        _Block_release(v118);
        v120 = v119;
        v121 = [v111 absoluteDimension_];
        v122 = [v111 absoluteDimension_];
        v123 = [v128 sizeWithWidthDimension:v121 heightDimension:v122];

        v138 = v123;
        goto LABEL_18;
      }
    }
  }

  sub_1E40B9D0C(sub_1E3AE0A10);
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_51_0();
    v40 = sub_1E3952BE0(v36, v37, v38, v39);
    v126 = sub_1E3AE0A7C(v6, v4, v10 - v40);
    v41 = objc_opt_self();
    [v126 dimension];
    v122 = [v41 estimatedDimension_];
    v42 = [v41 fractionalWidthDimension_];
    v43 = objc_opt_self();
    v44 = [v43 sizeWithWidthDimension:v42 heightDimension:v122];

    v45 = objc_opt_self();
    v138 = v44;
    v46 = [v45 itemWithLayoutSize_];
    v47 = [v41 fractionalWidthDimension_];
    v48 = [v43 sizeWithWidthDimension:v47 heightDimension:v122];

    v49 = objc_opt_self();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v51 = OUTLINED_FUNCTION_24_3(v50);
    *(v51 + 16) = xmmword_1E4298880;
    *(v51 + 32) = v46;
    sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
    v121 = v46;
    v52 = sub_1E42062A4();

    v123 = [v49 horizontalGroupWithLayoutSize:v48 subitems:v52];
  }

  else
  {
    v122 = sub_1E3AE0A7C(v6, v4, v10 - v1 - v2);
    v53 = objc_opt_self();
    v54 = [v53 fractionalWidthDimension_];
    v55 = objc_opt_self();
    v56 = [v55 sizeWithWidthDimension:v54 heightDimension:v122];

    v57 = objc_opt_self();
    v138 = v56;
    v58 = [v57 itemWithLayoutSize_];
    v59 = [v53 fractionalWidthDimension_];
    v48 = [v55 sizeWithWidthDimension:v59 heightDimension:v122];

    v60 = objc_opt_self();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v62 = OUTLINED_FUNCTION_24_3(v61);
    *(v62 + 16) = xmmword_1E4298880;
    *(v62 + 32) = v58;
    sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
    v121 = v58;
    v63 = sub_1E42062A4();

    v123 = [v60 horizontalGroupWithLayoutSize:v48 subitems:v63];
  }

  v120 = v123;
LABEL_18:

  if ((v129)(v123))
  {
  }

  v64 = v120;
  v65 = [v64 layoutSize];
  v66 = OUTLINED_FUNCTION_28_38(20);
  sub_1E3AE0584(v66, v67, v68, v139, v138, v65);

  v69 = [objc_opt_self() sectionWithGroup_];
  OUTLINED_FUNCTION_5_111();
  if ((v134)([v70 v71]))
  {
    OUTLINED_FUNCTION_30();
    v73 = (*(v72 + 1176))();
    v75 = v74;

    v167[0] = v73;
    LOBYTE(v167[1]) = v75 & 1;
    MEMORY[0x1EEE9AC00](v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
    sub_1E4148DE0(sub_1E3AE10D8);
  }

  v77 = [v64 layoutSize];

  v78 = [v77 heightDimension];
  [v78 dimension];

  v79 = *(MEMORY[0x1E69DDCE0] + 24);
  OUTLINED_FUNCTION_62_13();
  v81 = v80;
  OUTLINED_FUNCTION_62_13();
  v83 = v82;
  OUTLINED_FUNCTION_62_13();
  v85 = v84;
  OUTLINED_FUNCTION_62_13();
  v87 = v86;
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_111();
  sub_1E3814DBC(v88, v89, v90, v91, v92, v93, v94, v79, v81, v83, v85, v87);
  v135 = v141;
  v132 = v143;
  v133 = v142;
  v130 = v145;
  v131 = v144;
  v125 = v147;
  v127 = v146;
  v95 = v148;
  v96 = v149;
  v124 = v150;
  v97 = v151;
  *(&v140[10] + 1) = *v152;
  HIDWORD(v140[10]) = *&v152[3];
  v98 = v153;
  v99 = v154;
  v100 = v155;
  v101 = v156;
  v102 = v157;
  v103 = v158;
  *(&v140[16] + 1) = *v159;
  HIDWORD(v140[16]) = *&v159[3];
  v104 = v160;
  v105 = v161;
  v106 = v162;
  v108 = v163;
  v107 = v164;
  v140[0] = v141;
  v140[1] = v142;
  v140[2] = v143;
  v140[3] = v144;
  v140[4] = v145;
  v140[5] = v146;
  v140[6] = v147;
  v140[7] = v148;
  v140[8] = v149;
  v140[9] = v150;
  LOBYTE(v140[10]) = v151;
  v140[11] = v153;
  v140[12] = v154;
  v140[13] = v155;
  v140[14] = v156;
  v140[15] = v157;
  LOBYTE(v140[16]) = v158;
  v140[17] = v160;
  v140[18] = v161;
  v140[19] = v162;
  v140[20] = v163;
  v140[21] = v164;
  nullsub_1();
  memcpy(v167, v140, 0xB0uLL);
  sub_1E3AE1020(&v141, &v165);
  sub_1E3F3778C(v167, v69, &v165);

  sub_1E3AE0F68(&v141);
  sub_1E325F748(&v165, &unk_1ECF296A0, &qword_1E42DF0E0);
  *v136 = v69;
  *(v136 + 8) = v135;
  *(v136 + 16) = v133;
  *(v136 + 24) = v132;
  *(v136 + 32) = v131;
  *(v136 + 40) = v130;
  *(v136 + 48) = v127;
  *(v136 + 56) = v125;
  *(v136 + 64) = v95;
  *(v136 + 72) = v96;
  *(v136 + 80) = v124;
  *(v136 + 88) = v97 & 1;
  *(v136 + 96) = v98;
  *(v136 + 104) = v99;
  *(v136 + 112) = v100;
  *(v136 + 120) = v101;
  *(v136 + 128) = v102;
  *(v136 + 136) = v103;
  *(v136 + 144) = v104;
  *(v136 + 152) = v105;
  *(v136 + 160) = v106;
  *(v136 + 168) = v108;
  *(v136 + 176) = v107;
  OUTLINED_FUNCTION_42();
  return result;
}

CGFloat sub_1E3ADBEBC(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = sub_1E40175B0();
  }

  else
  {
    v3 = 0.0;
  }

  if ((sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v4, v5) & 1) == 0 || ![objc_opt_self() isMac])
  {
    return v3;
  }

  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v6;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  if (CGRectGetWidth(v24) <= 0.0)
  {
    return v3;
  }

  v17 = [v2 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v18 = v17;
  [v17 frame];
  OUTLINED_FUNCTION_16_73();

  OUTLINED_FUNCTION_5_111();

  return CGRectGetWidth(*&v19);
}

void sub_1E3ADC014()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = sub_1E3ADBEBC(v1);
  v17 = sub_1E324FBDC();
  v55 = *(v8 + 16);
  v55(v15, v17, v6);
  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v54 = v17;
    *v20 = 134217984;
    *(v20 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v18, v19, "StackViewController+Layout::container width for metrics calculation: %f", v20, 0xCu);
    v17 = v54;
    OUTLINED_FUNCTION_6_0();
  }

  v21 = *(v8 + 8);
  v22 = v21(v15, v6);
  v23 = (*(*v3 + 392))(v22);
  if (v23)
  {
    v24 = v23;
    OUTLINED_FUNCTION_26_0();
    v56 = (*(v25 + 984))();
    v57 = v26 & 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
    v29.n128_f64[0] = OUTLINED_FUNCTION_57_14(v27, v28, v27);
    v30 = *&v60;
    v56 = (*(*v24 + 1128))(v29);
    v57 = v31 & 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
    OUTLINED_FUNCTION_57_14(v32, v33, v32);
    v34 = v60;
    v35 = type metadata accessor for LayoutGrid();
    v36 = OUTLINED_FUNCTION_18_54();
    sub_1E3A25950(v36);
    v38 = v37;
    v58 = &unk_1F5D5D888;
    v59 = &off_1F5D5C918;
    LOBYTE(v56) = 12;
    v39 = sub_1E39C29F0(&v56, 1);
    __swift_destroy_boxed_opaque_existential_1(&v56);

    sub_1E3A25B9C(v40, v30, v39 & 1);
    OUTLINED_FUNCTION_35_0();

    sub_1E3A25D00(v35, 0, v16, v34);
  }

  else
  {
    v55(v12, v17, v6);
    v41 = sub_1E41FFC94();
    v42 = sub_1E42067F4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_125_0();
      *v43 = 0;
      _os_log_impl(&dword_1E323F000, v41, v42, "StackViewController+Layout::No view layout found.", v43, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v21(v12, v6);
    v38 = 10.0;
  }

  type metadata accessor for LayoutGrid();
  v44 = OUTLINED_FUNCTION_18_54();
  sub_1E3A258E4(v44);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  VUICeilValue();
  *v5 = v53;
  v5[1] = v38;
  *(v5 + 2) = v46;
  *(v5 + 3) = v48;
  *(v5 + 4) = v50;
  *(v5 + 5) = v52;
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3ADC444(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0();
  if (!(*(v2 + 392))() || (OUTLINED_FUNCTION_30(), (*(v3 + 176))(&v9), , (v10 & 1) != 0))
  {
    type metadata accessor for CollectionLayoutFactory();
    sub_1E3C11D38(a1, v4, v5, v6, v7, &v8);
  }
}

void sub_1E3ADC524()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_32_42();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_125_0();
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v10, v11, "StackViewController+Layout::computing cell metrics for multiple prototypes.", v12, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  sub_1E3ADC6D8();
  memcpy(v1, v13, 0x51uLL);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3ADC6D8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v100 = v2;
  LODWORD(v99) = v3;
  *&v98 = v4;
  OUTLINED_FUNCTION_32_42();
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v85 - v21;
  v23 = *(*v6 + 1016);
  v97 = v6;
  v24 = v23(v20);
  if (!v24)
  {
    goto LABEL_27;
  }

  v25 = v24;
  v26 = sub_1E32AE9B0(v24);
  if (!v26)
  {

LABEL_27:
    v65 = sub_1E324FBDC();
    (*(v11 + 16))(v15, v65, v9);
    v66 = sub_1E41FFC94();
    v67 = sub_1E4206814();
    if (os_log_type_enabled(v66, v67))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_15_14(&dword_1E323F000, v68, v69, "StackViewController+Layout::prototypes are empty, returning.");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v15, v9);
    v56 = 0;
    v57 = 0;
    v70 = 0;
    v71 = 0.0;
    v72 = 0uLL;
    v55 = 0;
    v73 = 1;
    v54 = 0.0;
    v74 = 0uLL;
    goto LABEL_35;
  }

  if (v26 >= 1)
  {
    v86 = v18;
    v87 = v8;
    v28 = 0.0;
    v92 = v25 & 0xC000000000000001;
    v29 = (v11 + 16);
    v30 = (v11 + 8);
    v31 = MEMORY[0x1E69E7CC0];
    *&v27 = 136315138;
    v89 = v27;
    v90 = v9;
    v32 = v22;
    v96 = v25;
    v93 = v26;
    v88 = v22;
    do
    {
      v101 = v28;
      if (v92)
      {
        v33 = MEMORY[0x1E6911E60](*&v28, v25);
      }

      else
      {
        v33 = *(v25 + 8 * *&v28 + 32);
      }

      v34 = sub_1E324FBDC();
      v35 = *v29;
      v94 = v34;
      v95 = v35;
      (v35)(v32);

      v36 = v32;
      v37 = sub_1E41FFC94();
      v38 = sub_1E4206814();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_6_21();
        v91 = swift_slowAlloc();
        *v39 = OUTLINED_FUNCTION_49_26(v91).n128_u32[0];
        v102 = *(v33 + 98);
        sub_1E37D144C(v40, v41, v42);
        v43 = sub_1E4207944();
        v45 = v1;
        v46 = v31;
        v47 = v29;
        v48 = v30;
        v49 = sub_1E3270FC8(v43, v44, &v103);

        *(v39 + 4) = v49;
        v30 = v48;
        v29 = v47;
        v31 = v46;
        v1 = v45;
        _os_log_impl(&dword_1E323F000, v37, v38, "StackViewController+Layout::processing multiple prototype view model type: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        OUTLINED_FUNCTION_6_0();
        v9 = v90;
        OUTLINED_FUNCTION_6_0();

        v50 = *v30;
        v32 = v88;
        (*v30)(v88, v9);
      }

      else
      {

        v50 = *v30;
        (*v30)(v36, v9);
        v32 = v36;
      }

      sub_1E3ADCEC8();

      if (v105[80])
      {
      }

      else
      {
        memcpy(v106, v105, sizeof(v106));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1E3AE0E54(0, *(v31 + 2) + 1, 1, v31);
        }

        v52 = *(v31 + 2);
        v51 = *(v31 + 3);
        if (v52 >= v51 >> 1)
        {
          v31 = sub_1E3AE0E54((v51 > 1), v52 + 1, 1, v31);
        }

        *(v31 + 2) = v52 + 1;
        memcpy(&v31[80 * v52 + 32], v106, 0x50uLL);
      }

      v25 = v96;
      *&v28 = *&v101 + 1;
    }

    while (v93 != *&v101 + 1);

    v53 = *(v31 + 2);
    if (v53)
    {
      v55 = *(v31 + 4);
      v54 = *(v31 + 5);
      v56 = *(v31 + 6);
      v57 = *(v31 + 7);
      v58 = *(v31 + 4);
      v59 = *(v31 + 5);
      v61 = *(v31 + 12);
      v60 = *(v31 + 13);
      v62 = v53 - 1;
      if (v62)
      {
        v63 = (v31 + 184);
        do
        {
          if (v54 < *(v63 - 8))
          {
            v61 = *(v63 - 1);
            v60 = *v63;
            v59 = *(v63 - 3);
            v58 = *(v63 - 5);
            v56 = *(v63 - 7);
            v57 = *(v63 - 6);
            v54 = *(v63 - 8);
            v55 = *(v63 - 9);
          }

          v63 += 10;
          --v62;
        }

        while (v62);
      }

      v98 = v59;
      v99 = v58;
      v100 = v61;
      v101 = v60;

      v64 = 0;
    }

    else
    {

      v101 = 0.0;
      v100 = 0;
      v57 = 0;
      v56 = 0;
      v99 = 0u;
      v54 = 0.0;
      v64 = 1;
      v55 = 0;
      v98 = 0u;
    }

    v103 = 0;
    v104 = 0xE000000000000000;
    LODWORD(v97) = v64;
    v75 = sub_1E4206E54();
    MEMORY[0x1E69109E0](v75);

    v76 = v103;
    v77 = v104;
    v78 = v86;
    v95(v86, v94, v90);

    v79 = sub_1E41FFC94();
    v80 = sub_1E4206814();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = OUTLINED_FUNCTION_6_21();
      v96 = v30;
      v82 = v81;
      v83 = swift_slowAlloc();
      *v82 = OUTLINED_FUNCTION_49_26(v83).n128_u32[0];
      v84 = sub_1E3270FC8(v76, v77, &v103);

      *(v82 + 4) = v84;
      _os_log_impl(&dword_1E323F000, v79, v80, "StackViewController+Layout::tallest multiple prototype size: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v50(v78, v90);
    v8 = v87;
    v71 = v101;
    v70 = v100;
    v72 = v99;
    v74 = v98;
    v73 = v97;
LABEL_35:
    *v8 = v55;
    *(v8 + 8) = v54;
    *(v8 + 16) = v56;
    *(v8 + 24) = v57;
    *(v8 + 32) = v72;
    *(v8 + 48) = v74;
    *(v8 + 64) = v70;
    *(v8 + 72) = v71;
    *(v8 + 80) = v73;
    OUTLINED_FUNCTION_20_0();
    return;
  }

  __break(1u);
}

void sub_1E3ADCEC8()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v107 = 1;
  OUTLINED_FUNCTION_21();
  v24 = (*(v23 + 1104))();
  if (!v24 && v8)
  {

    sub_1E38BAE74(&v92);
    LODWORD(v85) = *(&v92 + 1);
    *(&v85 + 3) = HIDWORD(v92);
    *v84 = *v95;
    *(&v84[1] + 7) = *&v95[15];
    if (v4)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v6;
    }

    v24 = sub_1E3ADD488(v8);
    v96[0] = v8;
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_35_0();

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D558, &qword_1E42A98F8);
    if (OUTLINED_FUNCTION_37_31(v26, v27, v28, v29, v30, v31, v32, v33, v66, v67, v68, v71, v72, v75, v76, v79, v80, v83, v84[0], v84[1], v84[2], v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, v92, v93, v94, *v95, *&v95[8], *&v95[16], v96[0]))
    {
      v34 = *(&v102 + 1);
      v35 = v103;
      __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
      (*(v35 + 16))(v34, v35);
      __swift_destroy_boxed_opaque_existential_1(&v101);
      if (v24)
      {
LABEL_8:
        type metadata accessor for UIFactory();
        *&v88 = v24;
        *(&v102 + 1) = &type metadata for CollectionViewCellContext;
        *&v103 = &off_1F5D621F8;
        v36 = swift_allocObject();
        *&v101 = v36;
        *(v36 + 16) = 1;
        *(v36 + 17) = v85;
        *(v36 + 20) = *(&v85 + 3);
        *(v36 + 24) = v25;
        *(v36 + 32) = 0;
        *(v36 + 40) = *v84;
        *(v36 + 55) = *(&v84[1] + 7);
        v37 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);

        v38 = v24;
        sub_1E38E5240(v8, &v88, &v101, 0, v0, v37, v96);

        sub_1E325F748(&v101, &qword_1ECF296C0, &unk_1E429BBE0);
        v24 = v96[0];
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_49();
      sub_1E325F748(&v101, &qword_1ECF2D560, &unk_1E42B8130);
      if (v24)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    goto LABEL_16;
  }

LABEL_9:
  if (!v24)
  {
    goto LABEL_15;
  }

  *&v101 = v24;
  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v8 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA30, qword_1E42A78A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(&v89 + 1))
  {
    sub_1E3251BE8(&v88, v96);
    v39 = v97;
    v40 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    (*(v40 + 8))(&v101, v39, v40, v18, v16, v14, *&v12, *&v10);
    v77 = v102;
    v81 = v101;
    v69 = v103;
    v73 = v104;
    v41 = v105;
    v42 = v106;

    __swift_destroy_boxed_opaque_existential_1(v96);
    v44 = v69;
    v43 = v73;
    v46 = v77;
    v45 = v81;
    v47 = 0;
    goto LABEL_26;
  }

LABEL_16:
  v48 = sub_1E325F748(&v88, &qword_1ECF3F4E0, &qword_1E42E91D0);
  if (!(*(*v20 + 960))(v48) || (OUTLINED_FUNCTION_30(), (*(v49 + 392))(), OUTLINED_FUNCTION_6_19(), , !v8))
  {

    OUTLINED_FUNCTION_25_49();
LABEL_25:
    sub_1E325F748(&v101, &qword_1ECF32788, &qword_1E42B8F60);
    v41 = 0;
    v42 = 0;
    v45 = 0uLL;
    v47 = v107;
    v46 = 0uLL;
    v44 = 0uLL;
    v43 = 0uLL;
    goto LABEL_26;
  }

  v96[0] = v8;
  type metadata accessor for ViewLayout();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32790, &qword_1E42B8F68);
  if ((OUTLINED_FUNCTION_37_31(v50, v51, v52, v53, v54, v55, v56, v57, v66, v67, v68, v71, v72, v75, v76, v79, v80, v83, v84[0], v84[1], v84[2], v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, v92, v93, v94, *v95, *&v95[8], *&v95[16], v96[0]) & 1) == 0)
  {
    OUTLINED_FUNCTION_25_49();
    goto LABEL_24;
  }

  if (!*(&v102 + 1))
  {
LABEL_24:

    goto LABEL_25;
  }

  sub_1E3251BE8(&v101, &v88);
  if (v2)
  {
    swift_getObjectType();
    v58 = sub_1E40175B0();
  }

  else
  {
    v58 = 0.0;
  }

  v59 = *(&v89 + 1);
  v60 = v90;
  __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
  (*(v60 + 8))(v96, v20, v59, v60, v58, v18, v16, v14, *&v12, *&v10);
  if (v100)
  {

    v41 = 0;
    v42 = 0;
    v78 = 0u;
    v82 = 0u;
    v47 = v107;
    v70 = 0u;
    v74 = 0u;
  }

  else
  {
    v61 = *v96;
    if ((v99 & 1) == 0)
    {
      v16 = *&v96[1];
      v14 = *&v96[2];
      v12 = v97;
      v10 = v98;
    }

    sub_1E397F03C();
    OUTLINED_FUNCTION_2_6();
    sub_1E41A3034(&v101, v18, v61, v62, v63, v64, v65, v16, v14, v12, v10);
    v78 = v102;
    v82 = v101;
    v74 = v104;
    v70 = v103;
    v41 = v105;
    v42 = v106;

    v47 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v88);
  v46 = v78;
  v45 = v82;
  v44 = v70;
  v43 = v74;
LABEL_26:
  *v22 = v45;
  *(v22 + 16) = v46;
  *(v22 + 32) = v44;
  *(v22 + 48) = v43;
  *(v22 + 64) = v41;
  *(v22 + 72) = v42;
  *(v22 + 80) = v47;
  OUTLINED_FUNCTION_20_0();
}

id sub_1E3ADD488(uint64_t a1)
{
  v3 = *(a1 + 98);
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 608))();
  sub_1E378D684(v3, v6, v7);
  OUTLINED_FUNCTION_11_5();

  if (v2)
  {
    [v2 prepareForReuse];
    v9 = [v2 vuiCellView];
    v10 = OUTLINED_FUNCTION_23_13();
    [v11 v12];
  }

  else
  {
    v13 = (*((*v4 & *v1) + 0x1B8))(v8);
    sub_1E384EE08(v3);
    OUTLINED_FUNCTION_85();
    v15 = (*(v14 + 224))();

    if (v15)
    {
      swift_getObjCClassFromMetadata();
      v16 = OUTLINED_FUNCTION_23_13();
      v2 = [v17 v18];
      OUTLINED_FUNCTION_39();
      v20 = *((*v4 & v19) + 0x270);
      v21 = v2;
      v24 = v20(v29);
      v25 = v22;
      if (v21)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *v25;
        sub_1E37902C4(v21, v3, isUniquelyReferenced_nonNull_native);
        *v25 = v28;
      }

      else
      {
      }

      v24(v29, 0);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_1E3ADD6D8()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v91 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  sub_1E3ADBEBC(v2);
  type metadata accessor for LayoutGrid();
  v14 = OUTLINED_FUNCTION_18_54();
  v15 = sub_1E3A2579C(v14);
  OUTLINED_FUNCTION_67_1();
  (*((*MEMORY[0x1E69E7D40] & v16) + 0x1B8))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v18 = (*(v17 + 232))(v2);

  if (TVAppFeature.isEnabled.getter(10, v19, v20))
  {
    v87 = v4;
    OUTLINED_FUNCTION_85();
    v22 = (*(v21 + 992))();
    if (v23 == 1)
    {
      v25 = sub_1E324FBDC();
      v26 = v91;
      (*(v91 + 16))(v10, v25, v5);
      v27 = sub_1E41FFC94();
      v28 = sub_1E42067F4();
      if (os_log_type_enabled(v27, v28))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v29, v30, "StackViewController+Layout:: missing view layout environment");
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v26 + 8))(v10, v5);
    }

    else
    {
      v56 = v22;
      v57 = v23;
      v58 = v24;
      v93 = v22;
      v92 = v15;
      sub_1E37F99D4(v22, v23, v24);
      v59 = sub_1E4205E84();
      v60 = v87;
      if ((v59 & 1) == 0)
      {
        v61 = sub_1E324FBDC();
        v62 = v91;
        (*(v91 + 16))(v13, v61, v5);
        v63 = sub_1E41FFC94();
        v64 = sub_1E42067F4();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = OUTLINED_FUNCTION_125_0();
          *v65 = 0;
          _os_log_impl(&dword_1E323F000, v63, v64, "StackViewController+Layout:: size class mismatch", v65, 2u);
          v62 = v91;
          OUTLINED_FUNCTION_6_0();
        }

        (*(v62 + 8))(v13, v5);
      }

      v66 = v18;
      sub_1E39DFB80(v56, v57);
      if ((*(*v60 + 392))())
      {
        OUTLINED_FUNCTION_30();
        (*(v67 + 1640))(v56, v66, v58);
      }

      OUTLINED_FUNCTION_111();
      v69 = (*(v68 + 1016))();
      if (v69)
      {
        v70 = v69;
        v88 = v66;
        v89 = v58;
        v90 = v56;
        v71 = sub_1E32AE9B0(v69);
        v72 = 0;
        v91 = v70 & 0xC000000000000001;
        while (v71 != v72)
        {
          if (v91)
          {
            MEMORY[0x1E6911E60](v72, v70);
          }

          else
          {
            if (v72 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }
          }

          if (__OFADD__(v72, 1))
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_11_13();
          if ((*(v73 + 392))())
          {
            OUTLINED_FUNCTION_30();
            v75 = *(v74 + 1640);
            v76 = v88;
            v77 = v88;
            v75(v90, v76, v89);
          }

          else
          {
          }

          ++v72;
        }

        v66 = v88;
        v56 = v90;
        v58 = v89;
      }

      OUTLINED_FUNCTION_111();
      if ((*(v78 + 968))())
      {
        OUTLINED_FUNCTION_26_0();
        v81 = v80;
        (*(v79 + 392))();
        OUTLINED_FUNCTION_35_0();

        if (v81)
        {
          OUTLINED_FUNCTION_8();
          (*(v82 + 1640))(v56, v66, v58);
        }
      }

      OUTLINED_FUNCTION_111();
      if ((*(v83 + 992))())
      {
        OUTLINED_FUNCTION_26_0();
        v85 = (*(v84 + 392))();

        if (v85)
        {
          OUTLINED_FUNCTION_8();
          (*(v86 + 1640))(v56, v66, v58);
        }
      }
    }

    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    v31 = v18;
    sub_1E3C2AE10();
    v91 = v32;
    if ((*(*v4 + 392))())
    {
      OUTLINED_FUNCTION_30();
      v33 = OUTLINED_FUNCTION_15_82();
      v34(v33);
    }

    OUTLINED_FUNCTION_111();
    v36 = (*(v35 + 1016))();
    if (v36)
    {
      v37 = v36;
      v90 = v31;
      v38 = sub_1E32AE9B0(v36);
      for (i = 0; ; ++i)
      {
        if (v38 == i)
        {

          v31 = v90;
          goto LABEL_19;
        }

        if ((v37 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](i, v37);
        }

        else
        {
          if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        OUTLINED_FUNCTION_11_13();
        if ((*(v40 + 392))())
        {
          OUTLINED_FUNCTION_30();
          v41 = OUTLINED_FUNCTION_15_82();
          v42(v41);
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    else
    {
LABEL_19:
      OUTLINED_FUNCTION_111();
      if ((*(v43 + 968))())
      {
        OUTLINED_FUNCTION_26_0();
        v46 = v45;
        (*(v44 + 392))();
        OUTLINED_FUNCTION_35_0();

        if (v46)
        {
          OUTLINED_FUNCTION_8();
          v47 = OUTLINED_FUNCTION_15_82();
          v48(v47);
        }
      }

      OUTLINED_FUNCTION_111();
      if ((*(v49 + 992))())
      {
        OUTLINED_FUNCTION_26_0();
        v51 = (*(v50 + 392))();

        if (v51)
        {
          OUTLINED_FUNCTION_8();
          v52 = OUTLINED_FUNCTION_15_82();
          v53(v52);
        }
      }

      OUTLINED_FUNCTION_54_0();
    }
  }
}

void sub_1E3ADE074()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v163 = v6;
  v8 = v7;
  v149 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v143 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v146 = v12 - v11;
  sub_1E3790540(v182);
  v173 = v182[6];
  v174 = v182[7];
  v171 = v182[4];
  v172 = v182[5];
  v169 = v182[2];
  v170 = v182[3];
  v167 = v182[0];
  v168 = v182[1];
  v13 = v183;
  v176 = v185;
  v177 = v184;
  v161 = v186;
  v14 = v187;
  v175 = v188;
  v15 = type metadata accessor for StackViewController(0);
  v18 = sub_1E407DA28(v15, v16, v17);
  v139 = v5[49];
  v20 = sub_1E38E5664(v139, v18, v19);

  v155 = v3;
  v160 = v14;
  if (v20)
  {
    if (v3)
    {
      swift_getObjectType();
      sub_1E40175B0();
    }

    type metadata accessor for CollectionViewModel();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v32 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x470);

      v32(v31, v163, v3);
    }

    else
    {
      type metadata accessor for LayoutGrid();
      v44 = OUTLINED_FUNCTION_18_54();
      v45 = sub_1E3A2579C(v44);
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8))(v45);
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      v47 = (*(v46 + 232))(v3);

      v48 = (*(*v5 + 392))();
      if (v48)
      {
        v49 = v48;
        v50 = v47;
        sub_1E3C2AE10();
        v52 = v51;
        (*(*v49 + 1640))();
      }

      else
      {
      }
    }

    v77 = (*(*v5 + 392))(v33);
    v78 = 0.0;
    v151 = v1;
    if (v77)
    {
      v79 = v77;
      OUTLINED_FUNCTION_26_0();
      v81 = *(v80 + 304);

      v82 = v81();
      LOBYTE(v81) = v83;

      if ((v81 & 1) == 0 || (v84 = *(*v79 + 328), v85 = , v82 = v84(v85), LOBYTE(v84) = v86, , (v84 & 1) == 0))
      {
        v78 = *&v82;
      }
    }

    v87 = objc_opt_self();
    v88 = [v87 estimatedDimension_];
    v89 = [v87 fractionalWidthDimension_];
    v90 = objc_opt_self();
    v91 = [v90 sizeWithWidthDimension:v89 heightDimension:v88];

    v137 = v91;
    v34 = [objc_opt_self() itemWithLayoutSize_];
    v92 = [v87 fractionalWidthDimension_];
    v141 = v88;
    v93 = [v90 sizeWithWidthDimension:v92 heightDimension:v88];

    v134 = v93;
    v94 = [objc_opt_self() horizontalGroupWithLayoutSize:v93 repeatingSubitem:v34 count:1];
    v95 = [v34 layoutSize];
    v14 = [v94 layoutSize];
    v96 = OUTLINED_FUNCTION_28_38(37);
    sub_1E3AE0584(v96, v97, v98, v163, v95, v14);

    v35 = [objc_opt_self() sectionWithGroup_];
    v99.n128_u64[0] = *MEMORY[0x1E69DDCE0];
    v100.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 8);
    v101.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 16);
    v102.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 24);
    (*((*MEMORY[0x1E69E7D40] & *v151) + 0x460))(v5, v155, v99, v100, v101, v102);
    v166 = v35;
    [v35 setContentInsets_];
    v103 = swift_dynamicCastClass();
    if (v103)
    {
      v35 = v103;
      OUTLINED_FUNCTION_26_0();
      v105 = *(v104 + 1344);

      v107 = v105(v106);
      v178[0] = 127;
      v189 = v107;
      sub_1E3742F1C(v107, v108, v109);
      v14 = &qword_1F5D5CE68;
      sub_1E4206254();
      sub_1E4206254();
      if (*v181 == *&v179[0] && *&v181[8] == *(&v179[0] + 1))
      {
      }

      else
      {
        v14 = sub_1E42079A4();

        if ((v14 & 1) == 0)
        {

LABEL_37:

          sub_1E3790540(v181);
          v154 = *&v181[96];
          v159 = *&v181[112];
          v148 = *&v181[64];
          v152 = *&v181[80];
          v142 = *&v181[32];
          v145 = *&v181[48];
          v135 = *v181;
          v138 = *&v181[16];
          v111 = *&v181[128];
          v112 = *&v181[136];
          OUTLINED_FUNCTION_50_23();
          *v181 = v167;
          *&v181[16] = v168;
          *&v181[32] = v169;
          *&v181[48] = v170;
          *&v181[64] = v171;
          *&v181[80] = v172;
          *&v181[96] = v173;
          *&v181[112] = v174;
          *&v181[128] = v13;
          OUTLINED_FUNCTION_2_111();
          sub_1E325F748(v181, &unk_1ECF296A0, &qword_1E42DF0E0);
          v13 = v111;
          v59 = v112;
          v37 = v94;
          v62 = v135;
          v61 = v138;
          v64 = v142;
          v63 = v145;
          v66 = v148;
          v65 = v152;
          v67 = v154;
          v68 = v159;
          v60 = v166;
          goto LABEL_38;
        }
      }

      sub_1E3F37A14(v166, v35);

      goto LABEL_37;
    }

    goto LABEL_37;
  }

  type metadata accessor for CollectionViewModel();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v136 = v8;
    v153 = v13;
    v23 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x470);

    v24 = v23(v22, v163, v3);
    v25 = (*(*v22 + 1344))(v24);
    if (sub_1E40597A0(v22))
    {
      sub_1E3AD9A44();
LABEL_16:
      v164 = *&v181[120];
      v157 = *&v181[104];
      v147 = *&v181[72];
      v150 = *&v181[88];
      v140 = *&v181[40];
      v144 = *&v181[56];
      v130 = *&v181[8];
      v132 = *&v181[24];
      v57 = *v181;
      v128 = *&v181[136];
      OUTLINED_FUNCTION_50_23();
      v58 = *&v181[176];

      *v181 = v167;
      *&v181[16] = v168;
      *&v181[32] = v169;
      *&v181[48] = v170;
      *&v181[64] = v171;
      *&v181[80] = v172;
      *&v181[96] = v173;
      *&v181[112] = v174;
      *&v181[128] = v153;
      OUTLINED_FUNCTION_2_111();
      sub_1E325F748(v181, &unk_1ECF296A0, &qword_1E42DF0E0);
      v59 = v1;
      v34 = v25;
      v35 = v22;
      v14 = v3;
      v60 = v57;
      v37 = v58;
      v13 = v128;
      v62 = v130;
      v61 = v132;
      v64 = v140;
      v63 = v144;
      v66 = v147;
      v65 = v150;
      v67 = v157;
      v68 = v164;
LABEL_17:
      v8 = v136;
      goto LABEL_38;
    }

    if (sub_1E373F6E0(v25, 118, v26, v27, v28, v29))
    {
      OUTLINED_FUNCTION_24_42();
      sub_1E3ADA6A8();
      goto LABEL_16;
    }

    if (sub_1E373F6E0(v25, 122, v53, v54, v55, v56))
    {
      OUTLINED_FUNCTION_24_42();
      sub_1E3ADEF30();
      v165 = *&v181[120];
      v158 = *&v181[104];
      v131 = *&v181[72];
      v133 = *&v181[88];
      v127 = *&v181[40];
      v129 = *&v181[56];
      v125 = *&v181[8];
      v126 = *&v181[24];
      v60 = *v181;
      v73 = *&v181[136];
      v124 = *&v181[144];
      v74 = *&v181[152];
      v75 = *&v181[160];
      v76 = *&v181[168];
      v37 = *&v181[176];

      *&v181[8] = v167;
      *&v181[24] = v168;
      *&v181[40] = v169;
      *&v181[56] = v170;
      *&v181[72] = v171;
      *&v181[88] = v172;
      *&v181[104] = v173;
      *&v181[120] = v174;
      *v181 = 0;
      *&v181[136] = v153;
      *&v181[144] = v177;
      *&v181[152] = v176;
      *&v181[160] = v161;
      *&v181[168] = v160;
      *&v181[176] = v175;
      sub_1E325F748(v181, &unk_1ECF42A70, &unk_1E429BA80);
      v59 = v124;
      v34 = v74;
      v35 = v75;
      v14 = v76;
      v13 = v73;
      v62 = v125;
      v61 = v126;
      v64 = v127;
      v63 = v129;
      v66 = v131;
      v65 = v133;
      v67 = v158;
      v68 = v165;
      v8 = v136;
      if (v60)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (sub_1E373F6E0(v25, 119, v69, v70, v71, v72))
      {
        OUTLINED_FUNCTION_24_42();
        sub_1E3ADB254();
        v60 = *v181;
        memcpy(v178, &v181[8], 0xB0uLL);

        memcpy(v179, v178, sizeof(v179));
        nullsub_1();
        *v181 = v167;
        *&v181[16] = v168;
        *&v181[32] = v169;
        *&v181[48] = v170;
        *&v181[64] = v171;
        *&v181[80] = v172;
        *&v181[96] = v173;
        *&v181[112] = v174;
        *&v181[128] = v13;
        OUTLINED_FUNCTION_2_111();
        sub_1E325F748(v181, &unk_1ECF296A0, &qword_1E42DF0E0);
        v67 = v179[6];
        v68 = v179[7];
        v66 = v179[4];
        v65 = v179[5];
        v64 = v179[2];
        v63 = v179[3];
        v62 = v179[0];
        v61 = v179[1];
        v59 = *(&v179[8] + 1);
        v13 = *&v179[8];
        v35 = *(&v179[9] + 1);
        v34 = *&v179[9];
        v37 = *(&v179[10] + 1);
        v14 = *&v179[10];
        goto LABEL_17;
      }

      v34 = v176;
      v14 = v160;
      v35 = v161;
      OUTLINED_FUNCTION_8_79();
    }
  }

  else
  {
    v34 = v176;
    v35 = v161;
    OUTLINED_FUNCTION_8_79();
  }

  v36 = sub_1E324FBDC();
  (*(v143 + 16))(v146, v36, v149);

  v37 = sub_1E41FFC94();
  v38 = sub_1E42067F4();

  v156 = v38;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_6_21();
    v162 = v35;
    v40 = swift_slowAlloc();
    *v181 = v40;
    *v39 = 136315138;
    sub_1E384EE08(v139);
    v43 = sub_1E3270FC8(v41, v42, v181);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1E323F000, v37, v156, "StackViewController::internalCollectionLayoutSection missing layout for %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v35 = v162;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v143 + 8))(v146, v149);
  v60 = 0;
  v68 = OUTLINED_FUNCTION_8_79();
LABEL_38:
  *(v179 + 8) = v62;
  *(&v179[1] + 8) = v61;
  *(&v179[2] + 8) = v64;
  *(&v179[3] + 8) = v63;
  *(&v179[4] + 8) = v66;
  *(&v179[5] + 8) = v65;
  *(&v179[6] + 8) = v67;
  *(&v179[7] + 8) = v68;
  *&v179[0] = v60;
  *(&v179[8] + 1) = v13;
  *&v179[9] = v59;
  *(&v179[9] + 1) = v34;
  *&v179[10] = v35;
  *(&v179[10] + 1) = v14;
  v180 = v37;
  *&v181[8] = v62;
  *&v181[24] = v61;
  *&v181[40] = v64;
  *&v181[56] = v63;
  *&v181[72] = v66;
  *&v181[88] = v65;
  *&v181[104] = v67;
  *&v181[120] = v68;
  *v181 = v60;
  *&v181[136] = v13;
  *&v181[144] = v59;
  *&v181[152] = v34;
  *&v181[160] = v35;
  *&v181[168] = v14;
  *&v181[176] = v37;
  sub_1E37C5830(v179, v178, &unk_1ECF42A70, &unk_1E429BA80);
  sub_1E325F748(v181, &unk_1ECF42A70, &unk_1E429BA80);
  v113 = v180;
  v114 = v179[1];
  v115 = v179[2];
  v116 = v179[3];
  v117 = v179[4];
  v118 = v179[5];
  v119 = v179[6];
  v120 = v179[7];
  v121 = v179[8];
  v122 = v179[9];
  v123 = v179[10];
  *v8 = v179[0];
  *(v8 + 16) = v114;
  *(v8 + 32) = v115;
  *(v8 + 48) = v116;
  *(v8 + 64) = v117;
  *(v8 + 80) = v118;
  *(v8 + 96) = v119;
  *(v8 + 112) = v120;
  *(v8 + 128) = v121;
  *(v8 + 144) = v122;
  *(v8 + 160) = v123;
  *(v8 + 176) = v113;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3ADEF30()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v141 = *(*v3 + 1040);
  v170[0] = v141();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580, &unk_1E42B6570);
  sub_1E3AE0FBC();
  sub_1E4149048(v9);

  OUTLINED_FUNCTION_67_1();
  v10 = MEMORY[0x1E69E7D40];
  v144 = v6;
  (*((*MEMORY[0x1E69E7D40] & v11) + 0x470))(v4, v6, v2);
  OUTLINED_FUNCTION_2_33();
  v13 = *(v12 + 392);
  v145 = v13();
  if (v2)
  {
    swift_getObjectType();
    v14 = sub_1E40175B0();
  }

  else
  {
    v14 = 0.0;
  }

  OUTLINED_FUNCTION_85();
  (*(v15 + 1112))(v170, v4, v2);
  v16 = *v170;
  v17 = *&v170[1];
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v14);
  OUTLINED_FUNCTION_67_1();
  (*((*v10 & v18) + 0x460))(v4, v2);
  OUTLINED_FUNCTION_2_6();
  v19 = *v10 & *v0;
  v20 = v153;
  (*(v19 + 1128))(v153, v4, COERCE_DOUBLE(*&v14), 0, v2, v16, v21, v22, v23, v24);
  v135 = v8;
  if (v154)
  {
    v20 = v155;
    sub_1E41A300C(v155);
    v25 = v156;
    v26 = v158;
    v27 = v159;
    v28 = v160;
    v139 = v161;
    v140 = v157;
    v137 = v163;
    v138 = v162;
    v29 = v164;
  }

  else
  {
    v25 = *&v153[1];
    v26 = v153[3];
    v27 = *&v153[4];
    v28 = *&v153[5];
    v139 = v153[6];
    v140 = *&v153[2];
    v137 = v153[8];
    v138 = *&v153[7];
    v29 = v153[9];
  }

  v136 = v29;
  v30 = *v20;
  v31 = objc_opt_self();
  v32 = [v31 absoluteDimension_];
  v33 = [v31 absoluteDimension_];
  v142 = objc_opt_self();
  v34 = [v142 sizeWithWidthDimension:v32 heightDimension:v33];

  v134 = v34;
  v35 = [objc_opt_self() itemWithLayoutSize_];
  v36 = v13();
  if (!v36 || (OUTLINED_FUNCTION_11_13(), v38 = *(v37 + 984), v39 = , v40 = v38(v39), v42 = v41, , (v42 & 1) != 0))
  {
    v40 = 9;
  }

  v43 = OUTLINED_FUNCTION_51_1();
  v44 = sub_1E3A25B9C(v36, v40, v43 & 1);
  v45 = v44;
  v46 = 1.0;
  if (v36)
  {
    OUTLINED_FUNCTION_11_13();
    v48 = *(v47 + 1128);

    *&v50 = COERCE_DOUBLE(v48(v49));
    v52 = v51;

    v53 = v145;
    if ((v52 & 1) == 0)
    {
      v46 = *&v50;
    }
  }

  else
  {
    v53 = v145;
  }

  v54 = (v141)(v44);
  if (!v54)
  {
    goto LABEL_21;
  }

  v55 = v54;
  if (!sub_1E32AE9B0(v54))
  {
    v60 = 0;
    goto LABEL_23;
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_34_0();
  if (!v56)
  {
    __break(1u);
    goto LABEL_85;
  }

  v57 = *(v55 + 32);

  while (1)
  {

    v59 = (*(*v57 + 872))(v58);

    if (v59)
    {
      v60 = sub_1E32AE9B0(v59);
LABEL_23:
    }

    else
    {
LABEL_21:
      v60 = 0;
    }

    v133 = *&v28;
    sub_1E3A262D8(v60, v45, 0, v14, v46);
    v62 = v61;
    if (v53 && (v63 = *(*v53 + 1104), v64 = , v65 = v63(v64), v53 = v145, v66 = v65, v45 = v67, , (v45 & 1) == 0))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27;
      v66 = 1;
    }

    v27 = v62;
    v68 = ceil(v60 / v62);
    if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v68 <= -1.0)
    {
      goto LABEL_79;
    }

    if (v68 >= 1.84467441e19)
    {
      goto LABEL_80;
    }

    if (v66 >= v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = v66;
    }

    if (v68)
    {
      v70 = v69;
    }

    else
    {
      v70 = v66;
    }

    v143 = v70;
    v14 = v17;
    if (v53)
    {
      v53 = *(*v53 + 1176);

      *&v72 = COERCE_DOUBLE(v53(v71));
      v74 = v73;

      v14 = v17;
      if ((v74 & 1) == 0)
      {
        v14 = *&v72;
      }
    }

    v75 = v143 - 1;
    if (!v143)
    {
      goto LABEL_81;
    }

    if (!__OFSUB__(v62, 1))
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    OUTLINED_FUNCTION_41_1();
    v57 = v128;
  }

  v132 = v26;
  v76 = v75;
  v77 = v14 * v75;
  v78 = v30 * v27 + v17 * (v62 - 1);
  v79 = [v31 absoluteDimension_];
  v80 = [v31 absoluteDimension_];
  v81 = [v142 sizeWithWidthDimension:v79 heightDimension:v80];

  v152 = MEMORY[0x1E69E7CC0];
  if (v62 >= 1)
  {
    do
    {
      v82 = v35;
      MEMORY[0x1E6910BF0]();
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      --v62;
    }

    while (v62);
  }

  v83 = objc_opt_self();
  sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
  v84 = sub_1E42062A4();

  v131 = v81;
  v85 = [v83 horizontalGroupWithLayoutSize:v81 subitems:v84];

  v86 = objc_opt_self();
  v87 = [v86 fixedSpacing_];
  [v85 setInterItemSpacing_];

  v88 = v25 * v143 + v77 * v76;
  v89 = [v31 absoluteDimension_];
  v90 = [v31 absoluteDimension_];
  v91 = [v142 sizeWithWidthDimension:v89 heightDimension:v90];

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v93 = OUTLINED_FUNCTION_24_3(v92);
  *(v93 + 16) = xmmword_1E4298880;
  *(v93 + 32) = v85;
  v130 = v85;
  v94 = sub_1E42062A4();

  v142 = v91;
  v31 = [v83 verticalGroupWithLayoutSize:v91 subitems:v94];

  v95 = [v86 fixedSpacing_];
  [v31 setInterItemSpacing_];

  v45 = [objc_opt_self() sectionWithGroup_];
  OUTLINED_FUNCTION_2_33();
  if ((*(v96 + 960))())
  {
  }

  v97 = [v35 layoutSize];
  v98 = [v31 layoutSize];
  v99 = OUTLINED_FUNCTION_28_38(35);
  sub_1E3AE0584(v99, v100, v101, v144, v97, v98);

  LOBYTE(v168[0]) = 39;
  v102 = *(*v4 + 776);
  v103 = v102(v170, v168, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v170[3])
  {
    if (OUTLINED_FUNCTION_55_23(v103, v104, v105, MEMORY[0x1E69E6370]) && (v168[0] & 1) != 0)
    {
      v106 = 4;
      goto LABEL_54;
    }
  }

  else
  {
    sub_1E325F748(v170, &unk_1ECF296E0, &unk_1E4298030);
  }

  v106 = 2;
LABEL_54:
  [v45 setOrthogonalScrollingBehavior_];
  [v45 setInterGroupSpacing_];
  nullsub_1();
  [v45 setContentInsets_];
  v107 = OUTLINED_FUNCTION_51_1();
  sub_1E3814DBC(v144, v107 & 1, __src, v88, v140, *&v132, v28, *&v133, *&v139, v138, *&v137, v136);
  memcpy(__dst, __src, sizeof(__dst));
  LOBYTE(v168[0]) = 40;
  v108 = v102(v170, v168, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v170[3])
  {
    sub_1E325F748(v170, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_73;
  }

  if (!OUTLINED_FUNCTION_55_23(v108, v109, v110, MEMORY[0x1E69E6370]))
  {
    goto LABEL_73;
  }

  if ((v168[0] & 1) == 0)
  {
    goto LABEL_73;
  }

  v111 = v141();
  if (!v111)
  {
    goto LABEL_73;
  }

  v112 = v111;
  if (!sub_1E32AE9B0(v111))
  {

    goto LABEL_73;
  }

  if ((v112 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_34_0();
    if (v113)
    {
      v114 = *(v112 + 32);

      goto LABEL_62;
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_85:
  OUTLINED_FUNCTION_41_1();
  v114 = v129;
LABEL_62:

  v116 = (*(*v114 + 872))(v115);
  if (!v116)
  {

    goto LABEL_73;
  }

  v117 = sub_1E32AE9B0(v116);

  if ((v143 & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

  v170[0] = MEMORY[0x1E69E7CD0];
  if (v117 < 0)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return;
  }

  if (!v117)
  {
    goto LABEL_71;
  }

  if (!v143)
  {
    goto LABEL_89;
  }

  v118 = 0;
  do
  {
    v119 = v118 + 1;
    if (!((v118 + 1) % v143))
    {
      sub_1E3897544(v168, v118);
    }

    v118 = v119;
  }

  while (v117 != v119);
LABEL_71:
  v169 = __src[21];
  sub_1E3897544(v168, v117 - 1);

  sub_1E325F748(&v169, &qword_1ECF32798, &qword_1E42B8F70);
  __dst[21] = v170[0];
LABEL_73:
  OUTLINED_FUNCTION_59_12(v150);
  nullsub_1();
  memcpy(v170, v150, 0xB0uLL);
  sub_1E3F3778C(v170, v45, v166);

  memcpy(v167, v166, sizeof(v167));
  if (sub_1E3AD9318(v167) != 1)
  {
    memcpy(v168, v167, sizeof(v168));
    sub_1E3AE107C(v168, __dst);
  }

  OUTLINED_FUNCTION_59_12(v147);
  OUTLINED_FUNCTION_59_12(v148);
  nullsub_1();
  OUTLINED_FUNCTION_59_12(v149);
  sub_1E3AE1020(v147, v146);
  sub_1E3AE0F68(v149);
  v120 = v148[0];
  v121 = v148[1];
  v122 = v148[2];
  v123 = v148[3];
  v124 = v148[4];
  v125 = v148[5];
  v126 = v148[6];
  v127 = v148[7];
  *v135 = v45;
  OUTLINED_FUNCTION_12_76(v135, v120, v121, v122, v123, v124, v125, v126, v127);
  OUTLINED_FUNCTION_42();
}

id sub_1E3ADFDC4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(*a2 + 968))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 98);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0))();
  sub_1E3AE003C(v5, v6, v7);
  v9 = v8;

  if (!v9)
  {
LABEL_10:

    return v9;
  }

  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension_];
  v12 = [v10 estimatedDimension_];
  v13 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v12];

  sub_1E3280A90(0, &qword_1EE23AEC0, 0x1E6995548);
  v14 = v13;
  OUTLINED_FUNCTION_82();
  v9 = sub_1E3AE0094(v15, v16, v17, 2);
  v28 = 19;
  v18 = (*(*v4 + 776))(v29, &v28, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v29[3])
  {

    sub_1E325F748(v29, &unk_1ECF296E0, &unk_1E4298030);
    return v9;
  }

  if ((OUTLINED_FUNCTION_13_14(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22, v23, v24, v26, *v27, *&v27[4], v27[6], v28, v29[0]) & 1) == 0)
  {

    goto LABEL_10;
  }

  [v9 setPinToVisibleBounds_];

  return v9;
}

uint64_t sub_1E3AE003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1E3740AE8(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a2 + 56) + 16 * v4);

  return v6;
}

id sub_1E3AE0094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E4205ED4();

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

id sub_1E3AE011C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(*a2 + 992))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 98);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E8))();
  sub_1E3AE003C(v5, v6, v7);
  v9 = v8;

  if (!v9)
  {
LABEL_10:

    return v9;
  }

  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension_];
  v12 = [v10 estimatedDimension_];
  v13 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v12];

  sub_1E3280A90(0, &qword_1EE23AEC0, 0x1E6995548);
  v14 = v13;
  OUTLINED_FUNCTION_82();
  v9 = sub_1E3AE0094(v15, v16, v17, 5);
  v28 = 19;
  v18 = (*(*v4 + 776))(v29, &v28, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v29[3])
  {

    sub_1E325F748(v29, &unk_1ECF296E0, &unk_1E4298030);
    return v9;
  }

  if ((OUTLINED_FUNCTION_13_14(v18, v19, v20, MEMORY[0x1E69E6370], v21, v22, v23, v24, v26, *v27, *&v27[4], v27[6], v28, v29[0]) & 1) == 0)
  {

    goto LABEL_10;
  }

  [v9 setPinToVisibleBounds_];

  return v9;
}

uint64_t sub_1E3AE0394(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x218))(v4);
  sub_1E4200104();

  result = sub_1E4200044();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      v10 = 0;
      v11 = (result + 48);
      while (v10 < *(v7 + 16))
      {
        v12 = *v11;

        v13 = sub_1E41FFFD4();
        if ((v14 & 1) == 0 && v13 == v9)
        {
          v17 = OUTLINED_FUNCTION_44_31();
          v18(v17);

          return v12;
        }

        ++v10;

        v11 += 3;
        if (v8 == v10)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v15 = OUTLINED_FUNCTION_44_31();
    v16(v15);
    return 0;
  }

  return result;
}