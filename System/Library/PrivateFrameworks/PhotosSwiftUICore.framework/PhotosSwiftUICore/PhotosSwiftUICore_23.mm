void sub_1C11D1568()
{
  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView;
  v2 = *&v0[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    if (v3)
    {
      v4 = v3;
      [v0 addSubview_];
      [v0 setNeedsLayout];
    }
  }
}

void sub_1C11D1600(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView);
  *(v1 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView) = a1;
  v3 = a1;

  sub_1C11D1568();
}

void sub_1C11D1658(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v12 = a2;
  v14 = (v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName);
  v15 = *(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName + 8);
  if (a2)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = *v14 == a1 && v15 == a2;
    if (!v16 && (sub_1C1266D50() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    v17 = *(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight + 8);
    if (a4)
    {
      if (!*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight + 8))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight) != a3)
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale + 8);
    if (a6)
    {
      if ((*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale + 8) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale) != a5)
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_22_0();
    return;
  }

  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_18:
  *v14 = a1;
  v14[1] = v12;

  v19 = v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight;
  *v19 = a3;
  *(v19 + 8) = a4 & 1;
  v20 = v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale;
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  if (v12)
  {
    sub_1C0FDE8F8(0, &qword_1EDE7B5F0, 0x1E69DCAB8);
    swift_bridgeObjectRetain_n();
    v12 = sub_1C11D18C0(a1, v12);
  }

  v21 = OUTLINED_FUNCTION_6_34();
  [v21 v22];

  v23 = 0;
  if ((a4 & 1) == 0 && (a6 & 1) == 0)
  {
    v24 = *MEMORY[0x1E69DDCF8];
    v25 = objc_opt_self();
    v26 = [v25 configurationWithTextStyle:v24 scale:a5];
    v27 = [v25 configurationWithWeight_];
    v23 = [v26 configurationByApplyingConfiguration_];
  }

  v28 = OUTLINED_FUNCTION_6_34();
  [v28 v29];

  v30 = OUTLINED_FUNCTION_6_34();
  [v30 v31];
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_22_0();

  [v32 v33];
}

id sub_1C11D18C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C1265E70();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

void sub_1C11D1930()
{
  v1 = *&v0[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

id sub_1C11D19EC(void *a1)
{
  *&v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v3 = &v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v4 = type metadata accessor for EDRImage.ImageView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithImage_, a1);

  return v5;
}

id sub_1C11D1AA8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v5 = &v2[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v6 = type metadata accessor for EDRImage.ImageView();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v2;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithImage_highlightedImage_, a1, a2);

  return v7;
}

id sub_1C11D1B88(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v9 = &v4[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v10 = type metadata accessor for EDRImage.ImageView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1C11D1C4C(void *a1)
{
  *&v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v3 = &v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v4 = type metadata accessor for EDRImage.ImageView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1C11D1D10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EDRImage.ImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C11D1DB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C11D1E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C11D1E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2BCC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C11D1EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2BCC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11D1F50(uint64_t a1)
{
  sub_1C11D2BCC();
  sub_1C1263BD0();
  __break(1u);
}

id sub_1C11D1F78()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setNumberOfLines_];
  [v1 setAdjustsFontSizeToFitWidth_];
  [v1 setMinimumScaleFactor_];
  [v1 setLineBreakMode_];
  v2 = v1;
  LODWORD(v3) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  [v2 setTextAlignment_];
  [v2 setUserInteractionEnabled_];
  [v2 bounds];
  OUTLINED_FUNCTION_5_1();

  v5 = OUTLINED_FUNCTION_7_37(objc_allocWithZone(MEMORY[0x1E69C44E0]), sel_initWithFrame_);
  [v5 setAutoresizingMask_];
  [v2 addSubview_];
  sub_1C11D20E0(v2);

  return v2;
}

void sub_1C11D20E0(void *a1)
{
  v2 = [a1 subviews];
  sub_1C0FDE8F8(0, &qword_1EDE7B5F8, 0x1E69DD250);
  v3 = sub_1C12660B0();

  if (!sub_1C0FF7688())
  {

LABEL_11:
    sub_1C1266B70();
    __break(1u);
    return;
  }

  sub_1C0FF768C();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C68F02D0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v6 = v4;

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_11;
  }

  [v5 setEdrGain_];
}

void sub_1C11D2238(void *a1)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v55 = v9 - v8;
  v10 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_1EDE82FE0);
  sub_1C10D1A1C(v21, v20, &qword_1EBE919B0, &qword_1C12A8810);
  v22 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
  {
    sub_1C0FD1A5C(v20, &qword_1EBE919B0, &qword_1C12A8810);
  }

  else
  {
    v54 = a1;
    sub_1C11D2A7C(v2, &v56);
    sub_1C1262640();
    v23 = sub_1C1262670();
    v53 = sub_1C1266520();
    sub_1C107BD50(v2);
    if (sub_1C1266730())
    {
      v24 = swift_slowAlloc();
      v52 = v12;
      v25 = v24;
      v50 = swift_slowAlloc();
      v56 = v50;
      *v25 = 136446210;
      v26 = sub_1C1200408();
      v28 = sub_1C0FA0E80(v26, v27, &v56);
      v51 = v10;
      v29 = v6;
      v30 = v4;
      v31 = v28;

      *(v25 + 4) = v31;
      v4 = v30;
      v6 = v29;
      v32 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v23, v53, v32, "EDRText", "EDRText %{public}s", v25, 0xCu);
      v33 = v50;
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x1C68F1630](v33, -1, -1);
      MEMORY[0x1C68F1630](v25, -1, -1);

      (*(v52 + 8))(v16, v51);
    }

    else
    {

      (*(v12 + 8))(v16, v10);
    }

    (*(*(v22 - 8) + 8))(v20, v22);
    a1 = v54;
  }

  sub_1C11D20E0(a1);
  v34 = *(v2 + 24);
  if (v34)
  {
    v57 = *(v2 + 56);
    v35 = *(v2 + 48);
    v56 = v35;
    v36 = v57;
    v37 = v34;
    if (v36 == 1)
    {
      if ((v35 & 1) == 0)
      {
LABEL_12:
        v38 = [v37 colorWithAlphaComponent_];
LABEL_18:
        v41 = v38;
        [a1 setTextColor_];

        goto LABEL_22;
      }
    }

    else
    {
      sub_1C10D1A1C(&v56, v58, &qword_1EBE96D30, &qword_1C12C30E0);
      v42 = v6;
      v43 = sub_1C1266420();
      v44 = sub_1C1264410();
      OUTLINED_FUNCTION_78(v43, &dword_1C0F96000, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      v45 = v55;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v56, &qword_1EBE96D30, &qword_1C12C30E0);
      (*(v42 + 8))(v45, v4);
      if (v58[15] != 1)
      {
        goto LABEL_12;
      }
    }

    v38 = v37;
    goto LABEL_18;
  }

  v57 = *(v2 + 56);
  v39 = *(v2 + 48);
  v56 = v39;
  if (v57 != 1)
  {

    v46 = sub_1C1266420();
    v47 = sub_1C1264410();
    OUTLINED_FUNCTION_78(v46, &dword_1C0F96000, v47, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v48 = v55;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v56, &qword_1EBE96D30, &qword_1C12C30E0);
    (*(v6 + 8))(v48, v4);
    if (v58[0] != 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    v41 = [a1 tintColor];
    goto LABEL_21;
  }

  if (v39)
  {
    goto LABEL_20;
  }

LABEL_15:
  v40 = [objc_opt_self() labelColor];
  v41 = [v40 colorWithAlphaComponent_];

LABEL_21:
  [a1 setTextColor_];
LABEL_22:

  if (*(v2 + 8))
  {
    v49 = sub_1C1265E70();
  }

  else
  {
    v49 = 0;
  }

  [a1 setText_];

  [a1 setFont_];
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11D2864(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, id a5)
{
  if ((a2 | a4))
  {
    return 0;
  }

  [a5 sizeThatFits_];
  if (v7 > *&a1)
  {
    v7 = *&a1;
  }

  return *&v7;
}

uint64_t sub_1C11D2988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2AB4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C11D29EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2AB4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11D2A50(uint64_t a1)
{
  sub_1C11D2AB4();
  sub_1C1263BD0();
  __break(1u);
}

unint64_t sub_1C11D2AB4()
{
  result = qword_1EDE7C178;
  if (!qword_1EDE7C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C178);
  }

  return result;
}

uint64_t sub_1C11D2B18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C11D2B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C11D2BCC()
{
  result = qword_1EDE7C160;
  if (!qword_1EDE7C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C160);
  }

  return result;
}

uint64_t EnvironmentValues.photosFolderCornerRadius.getter()
{
  sub_1C11D2CCC();

  return sub_1C12637F0();
}

unint64_t sub_1C11D2CCC()
{
  result = qword_1EDE76F98;
  if (!qword_1EDE76F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F98);
  }

  return result;
}

void PhotosCornerRadii.init(topLeading:topTrailing:bottomLeading:bottomTrailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void (*EnvironmentValues.photosFolderCornerRadius.modify(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = sub_1C11D2CCC();
  sub_1C12637F0();
  return sub_1C11D2DF4;
}

void sub_1C11D2DF4(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  *(v1 + 72) = v2;
  sub_1C1263800();

  free(v1);
}

uint64_t sub_1C11D2E54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t PhotosScrollRequest.description.getter()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1C1266940();

  v4 = 0xD00000000000002CLL;
  v5 = 0x80000001C126D790;
  sub_1C0FA139C(v0, v3);
  v1 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v1);

  MEMORY[0x1C68EF850](62, 0xE100000000000000);
  return v4;
}

uint64_t PhotosScrollRequest.Error.hashValue.getter()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t View.photosScrollRequestHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PhotosScrollRequestHandlerModifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);
  type metadata accessor for PhotosScrollRequestHandlerObject();
  swift_retain_n();
  sub_1C12628D0();
  MEMORY[0x1C68EE920](v10, a3, v8, a4);
  return sub_1C11D3434(v10);
}

uint64_t PhotosSourceViewScrollRequestHandler.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1C11D3174()
{
  sub_1C11D396C();
  sub_1C12637F0();
  return v1;
}

uint64_t PhotosSourceViewScrollRequestHandler.wrappedValue.getter()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v8 = j__swift_release_2();
    (*(v2 + 8))(v4, v1, v8);
    v5 = v11[1];
  }

  if (!v5)
  {
    return 0;
  }

  v9 = *(v5 + 16);

  return v9;
}

double sub_1C11D3388@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhotosScrollRequestHandlerObject();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = v6;

  return result;
}

uint64_t sub_1C11D3434(uint64_t a1)
{
  v2 = type metadata accessor for PhotosScrollRequestHandlerModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C11D3498()
{
  result = qword_1EBE96DE8;
  if (!qword_1EBE96DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96DE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosScrollRequest.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

double sub_1C11D35C4()
{
  type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF0, &qword_1C12C3538);
  sub_1C12628E0();
  v1 = v0[1];
  *(v3 + 16) = *v0;
  *(v3 + 24) = v1;

  return result;
}

uint64_t sub_1C11D3640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF0, &qword_1C12C3538);
  sub_1C12628E0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF8, &qword_1C12C3620);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E00, &qword_1C12C3628);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v8;
  return result;
}

uint64_t sub_1C11D3728()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C11D3760()
{
  result = qword_1EDE7F780;
  if (!qword_1EDE7F780)
  {
    type metadata accessor for PhotosScrollRequestHandlerModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F780);
  }

  return result;
}

void sub_1C11D37E0(uint64_t a1)
{
  sub_1C1007F88();
  if (v1 <= 0x3F)
  {
    sub_1C11D3864(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C11D3864(uint64_t a1)
{
  if (!qword_1EDE77698)
  {
    type metadata accessor for PhotosScrollRequestHandlerObject();
    v1 = sub_1C1262900();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77698);
    }
  }
}

uint64_t sub_1C11D38E4(uint64_t a1)
{
  result = type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C11D396C()
{
  result = qword_1EDE800E8;
  if (!qword_1EDE800E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE800E8);
  }

  return result;
}

unint64_t sub_1C11D39D0()
{
  result = qword_1EDE7BEF0;
  if (!qword_1EDE7BEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E00, &qword_1C12C3628);
    sub_1C0FDB6D4(&qword_1EDE7BB08, &qword_1EBE96DF8, &qword_1C12C3620, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EDE7B998, &qword_1EBE96E08, &qword_1C12C3638, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEF0);
  }

  return result;
}

id static PhotosSharedFullscreenViewSpec.topCenteredTitleFont.getter()
{
  v0 = PXFontWithTextStyleSymbolicTraitsAndWeight();

  return v0;
}

id static PhotosSharedFullscreenViewSpec.topLeadingSubtitleFont.getter()
{
  v0 = PXFontWithTextStyleSymbolicTraitsAndWeight();

  return v0;
}

id static PhotosSharedFullscreenViewSpec.cappedTopCenteredTitleFont(withMaxContentSizeCategory:)(uint64_t a1)
{
  v1 = MEMORY[0x1C68F0B60](7, 0x8000, a1, *MEMORY[0x1E69DB980]);

  return v1;
}

id static PhotosSharedFullscreenViewSpec.cappedTopLeadingSubtitleFont(withMaxContentSizeCategory:)(uint64_t a1)
{
  v1 = MEMORY[0x1C68F0B60](12, 0x8000, a1, *MEMORY[0x1E69DB970]);

  return v1;
}

_BYTE *storeEnumTagSinglePayload for PhotosSharedFullscreenViewSpec(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C11D3C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10, &qword_1C12C36E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C11D5E48(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1262D00();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosSearchDateRangePicker.init(completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10, &qword_1C12C36E0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for PhotosSearchDateRangePicker(0);
  sub_1C1261DD0();
  v12 = *(v5 + 16);
  v12(v7, v10, v4);
  sub_1C1265410();
  v13 = *(v5 + 8);
  v13(v10, v4);
  sub_1C1261DD0();
  v12(v7, v10, v4);
  sub_1C1265410();
  result = (v13)(v10, v4);
  v15 = (a3 + *(v11 + 28));
  v16 = v18;
  *v15 = v17;
  v15[1] = v16;
  return result;
}

uint64_t PhotosSearchDateRangePicker.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E18, &qword_1C12C36E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E20, &qword_1C12C36F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E28, &qword_1C12C36F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E30, &qword_1C12C3700);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E38, &qword_1C12C3708);
  v0 = sub_1C0FDB6D4(&qword_1EBE96E40, &qword_1EBE96E38, &qword_1C12C3708, MEMORY[0x1E697CCF0]);
  v4 = OUTLINED_FUNCTION_0_75(v0, v1, v2, v3);
  OUTLINED_FUNCTION_0_75(v4, v5, v6, v7);
  v12 = sub_1C0FDB6D4(&qword_1EBE96E48, &qword_1EBE96E28, &qword_1C12C36F8, MEMORY[0x1E697C5E0]);
  OUTLINED_FUNCTION_0_75(v12, v8, v9, v10);
  return sub_1C12631A0();
}

uint64_t sub_1C11D41CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1C1263FD0();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E38, &qword_1C12C3708);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E30, &qword_1C12C3700);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E20, &qword_1C12C36F0);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v25 - v11;
  v33 = a1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E90, &qword_1C12C37A8);
  sub_1C11D5BB0();
  sub_1C1264720();
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDE7E630;
  v14 = sub_1C12648D0();
  v16 = v15;
  v18 = v17;
  v19 = sub_1C0FDB6D4(&qword_1EBE96E40, &qword_1EBE96E38, &qword_1C12C3708, MEMORY[0x1E697CCF0]);
  sub_1C1264C00();
  sub_1C0FDB8E8(v14, v16, v18 & 1);

  (*(v26 + 8))(v7, v5);
  v20 = v29;
  sub_1C1263FC0();
  v36 = v5;
  v37 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C1264E10();
  (*(v31 + 8))(v20, v32);
  v22 = (*(v27 + 8))(v10, v8);
  MEMORY[0x1EEE9AC00](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E28, &qword_1C12C36F8);
  v36 = v8;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1C0FDB6D4(&qword_1EBE96E48, &qword_1EBE96E28, &qword_1C12C36F8, MEMORY[0x1E697C5E0]);
  v23 = v30;
  sub_1C1264FC0();
  return (*(v28 + 8))(v12, v23);
}

uint64_t sub_1C11D4708(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EA8, &qword_1C12C37B0);
  sub_1C0FDB6D4(&qword_1EBE96EA0, &qword_1EBE96EA8, &qword_1C12C37B0, MEMORY[0x1E6981F48]);
  return sub_1C1265700();
}

uint64_t sub_1C11D47AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96ED8, &qword_1C12C3820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v27 - v4;
  v5 = sub_1C1263C60();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EE0, &qword_1C12C3828);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EE8, &qword_1C12C3830);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EF0, &qword_1C12C3838);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v27 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v33 = &v27 - v17;
  type metadata accessor for PhotosSearchDateRangePicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58, &unk_1C12C3770);
  sub_1C1265440();
  v31 = a1;
  sub_1C1265420();
  sub_1C1261DE0();
  sub_1C11D6120();
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C1263C50();
    sub_1C1262880();
    sub_1C1265440();
    sub_1C1265420();
    result = sub_1C1265DE0();
    if (result)
    {
      sub_1C1263C50();
      v19 = v27;
      sub_1C1262870();
      v20 = *(v10 + 16);
      v21 = v28;
      v22 = v33;
      v20(v28, v33, v9);
      v23 = v29;
      v20(v29, v19, v9);
      v24 = v30;
      v20(v30, v21, v9);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EF8, &qword_1C12C3840);
      v20(&v24[*(v25 + 48)], v23, v9);
      v26 = *(v10 + 8);
      v26(v19, v9);
      v26(v22, v9);
      v26(v23, v9);
      return (v26)(v21, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C11D4C5C@<X0>(uint64_t a1@<X8>)
{
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE7E630;
  result = sub_1C12648D0();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1C11D4D3C@<X0>(uint64_t a1@<X8>)
{
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE7E630;
  result = sub_1C12648D0();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1C11D4E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EB0, &qword_1C12C37B8);
  MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EB8, &qword_1C12C37C0);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - v5;
  v7 = sub_1C1263D80();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EC0, &unk_1C12C37C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  sub_1C1263D70();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560, &qword_1C12A5E00);
  sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
  sub_1C1262B20();
  sub_1C1263D60();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EC8, &unk_1C12C37D8);
  sub_1C11D5C84();
  sub_1C1262B20();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_1C1263B30();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

double sub_1C11D5168(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for PhotosSearchDateRangePicker(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1C12639A0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1C11D5D68(a1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1C11D5DCC(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  v17 = v6;
  v18 = v8;
  v19 = v10 & 1;
  v20 = v12;
  sub_1C1265480();

  return result;
}

uint64_t sub_1C11D52F4(uint64_t a1)
{
  v2 = sub_1C1262D00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = *(a1 + *(type metadata accessor for PhotosSearchDateRangePicker(0) + 28));
  v10 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  v9(v8);
  sub_1C109C528(v8);
  sub_1C11D3C78(v5);
  sub_1C1262CF0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C11D5464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a1;
  v30 = a2;
  v3 = sub_1C1261DE0();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - v6;
  v8 = type metadata accessor for PhotosSearchDateRangePicker(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = sub_1C12639A0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1C11D5D68(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_1C11D5DCC(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v34 = v11;
  v35 = v13;
  v36 = v15 & 1;
  v37 = v17;
  v20 = v30;
  sub_1C1265480();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58, &unk_1C12C3770);
  sub_1C1265420();
  v21 = v31;
  sub_1C1265420();
  LOBYTE(v11) = sub_1C1261D80();
  v22 = *(v32 + 8);
  v23 = v21;
  v24 = v33;
  v22(v23, v33);
  v22(v7, v24);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v11 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EC8, &unk_1C12C37D8);
  v28 = (v20 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_1C1023064;
  v28[2] = v26;
  return result;
}

uint64_t sub_1C11D577C(uint64_t a1)
{
  v2 = sub_1C1262D00();
  v13 = *(v2 - 8);
  v14 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1261DE0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = *(a1 + *(type metadata accessor for PhotosSearchDateRangePicker(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58, &unk_1C12C3770);
  sub_1C1265420();
  sub_1C1265420();
  sub_1C1261980();
  v11 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v10(v9);
  sub_1C109C528(v9);
  sub_1C11D3C78(v4);
  sub_1C1262CF0();
  return (*(v13 + 8))(v4, v14);
}

uint64_t type metadata accessor for PhotosSearchDateRangePicker(uint64_t a1)
{
  result = qword_1EBE96E60;
  if (!qword_1EBE96E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C11D5A48(uint64_t a1)
{
  sub_1C11D5B44(319, &qword_1EBE96E70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1C11D5B44(319, &qword_1EBE96E78, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C1007F88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C11D5B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C11D5BB0()
{
  result = qword_1EBE96E98;
  if (!qword_1EBE96E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E90, &qword_1C12C37A8);
    sub_1C0FDB6D4(&qword_1EBE96EA0, &qword_1EBE96EA8, &qword_1C12C37B0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96E98);
  }

  return result;
}

unint64_t sub_1C11D5C84()
{
  result = qword_1EBE96ED0;
  if (!qword_1EBE96ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96EC8, &unk_1C12C37D8);
    sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
    sub_1C0FDB6D4(&unk_1EDE7B8D0, &unk_1EBE91970, &unk_1C12A5EE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96ED0);
  }

  return result;
}

uint64_t sub_1C11D5D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchDateRangePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11D5DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchDateRangePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11D5E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10, &qword_1C12C36E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for PhotosSearchDateRangePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10, &qword_1C12C36E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C1262D00();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);
  v6 = sub_1C1261DE0();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58, &unk_1C12C3770);

  v7(v3 + *(v1 + 24), v6);

  return swift_deallocObject();
}

uint64_t sub_1C11D60A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosSearchDateRangePicker(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C11D6120()
{
  result = qword_1EDE82F38;
  if (!qword_1EDE82F38)
  {
    sub_1C1261DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F38);
  }

  return result;
}

double sub_1C11D6178(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  if (!v5)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || (*v2 == a1 ? (v6 = v5 == a2) : (v6 = 0), !v6 && (sub_1C1266D50() & 1) == 0))
  {

LABEL_10:
    *v2 = a1;
    v2[1] = a2;
  }

  return result;
}

uint64_t sub_1C11D6210(uint64_t result, char a2)
{
  if (*(v2 + 8))
  {
    if (a2)
    {
      return result;
    }

LABEL_6:
    *v2 = result;
    *(v2 + 8) = a2 & 1;
    return result;
  }

  if ((a2 & 1) != 0 || *v2 != result)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_1C11D6240()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C1261990();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F00, &unk_1C12C3D10) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_11_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22[-v17];
  sub_1C109CF2C(v2, &v22[-v17]);
  v19 = *(v11 + 56);
  sub_1C109CF2C(v18, v1);
  sub_1C109CF2C(v4, v1 + v19);
  OUTLINED_FUNCTION_17_1(v1);
  if (v20)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE929A0, &qword_1C12AF660);
    OUTLINED_FUNCTION_17_1(v1 + v19);
    if (v20)
    {
      sub_1C0FD1A5C(v1, &qword_1EBE929A0, &qword_1C12AF660);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1C109CF2C(v1, v15);
  OUTLINED_FUNCTION_17_1(v1 + v19);
  if (v20)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE929A0, &qword_1C12AF660);
    (*(v7 + 8))(v15, v5);
LABEL_9:
    sub_1C0FD1A5C(v1, &qword_1EBE96F00, &unk_1C12C3D10);
LABEL_10:
    sub_1C0FD1A5C(v2, &qword_1EBE929A0, &qword_1C12AF660);
    sub_1C109CF2C(v4, v2);
    goto LABEL_11;
  }

  (*(v7 + 32))(v10, v1 + v19, v5);
  sub_1C109D03C();
  v23 = sub_1C1265DE0();
  v21 = *(v7 + 8);
  v21(v10, v5);
  sub_1C0FD1A5C(v18, &qword_1EBE929A0, &qword_1C12AF660);
  v21(v15, v5);
  sub_1C0FD1A5C(v1, &qword_1EBE929A0, &qword_1C12AF660);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_22_0();
}

void PhotosObservableCollection.init(_:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_23_13();
  v6 = *(*(v5 + 88) + 8);
  OUTLINED_FUNCTION_23_13();
  v8 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_1();
  v87 = v10;
  v88 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v81 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v81 - v14;
  OUTLINED_FUNCTION_23_13();
  v81 = *(v15 + 104);
  v82 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_7();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  v84 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_14_2(*(v24 + 136));
  OUTLINED_FUNCTION_14_2(*(v25 + 144));
  OUTLINED_FUNCTION_14_2(*(v26 + 152));
  v28 = *(v27 + 160);
  v29 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v2 + v28, 1, 1, v29);
  OUTLINED_FUNCTION_10_15();
  __swift_storeEnumTagSinglePayload(v2 + *(v30 + 168), 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_14_2(*(v31 + 192));
  sub_1C1261F60();
  (*(v20 + 16))(v23, v4, v8);
  sub_1C10342F0(v23, *v2, v2 + *(*v2 + 112));
  sub_1C12622A0();
  OUTLINED_FUNCTION_10_15();
  (*(v17 + 32))(v2 + *(v32 + 120), v1, v82);
  OUTLINED_FUNCTION_23_13();
  v34 = (*(*(v33 + 96) + 16))(v8);
  v35 = *v2;
  v36 = (v2 + *(*v2 + 128));
  *v36 = v34;
  v36[1] = v37;
  v38 = OUTLINED_FUNCTION_4_4();
  v40 = v39(v38);
  v42 = v41;
  OUTLINED_FUNCTION_10_15();
  v44 = (v2 + *(v43 + 136));

  *v44 = v40;
  v44[1] = v42;
  v45 = OUTLINED_FUNCTION_4_4();
  v47 = v46(v45);
  v49 = v48;
  OUTLINED_FUNCTION_10_15();
  v51 = (v2 + *(v50 + 144));

  *v51 = v47;
  v51[1] = v49;
  v52 = OUTLINED_FUNCTION_4_4();
  v54 = v53(v52);
  v56 = v55;
  OUTLINED_FUNCTION_10_15();
  v58 = (v2 + *(v57 + 152));

  *v58 = v54;
  v58[1] = v56;
  v59 = v85;
  v60 = OUTLINED_FUNCTION_4_4();
  v61(v60);
  OUTLINED_FUNCTION_10_15();
  v63 = *(v62 + 160);
  sub_1C0FD1A5C(v2 + v63, &qword_1EBE929A0, &qword_1C12AF660);
  sub_1C11DA978(v59, v2 + v63);
  v64 = v86;
  v65 = OUTLINED_FUNCTION_4_4();
  v66(v65);
  OUTLINED_FUNCTION_10_15();
  (*(v87 + 8))(v2 + *(v67 + 168), v88);
  sub_1C11D7090(v64, v35);
  (*(*(v6 + 8) + 8))(v8);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v68 + 184)) = v69 & 1;
  v70 = OUTLINED_FUNCTION_4_4();
  v72 = v71(v70);
  v74 = v73;
  OUTLINED_FUNCTION_10_15();
  v76 = (v2 + *(v75 + 192));

  *v76 = v72;
  v76[1] = v74;
  v77 = OUTLINED_FUNCTION_4_4();
  v79 = v78(v77);
  (*(v84 + 8))(v4, v8);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v80 + 176)) = v79;
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11D6B68(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v6 = v5;
  v7 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_7();
  sub_1C11D873C(v3);
  v11 = *(v9 + 8);
  v11(v3, v7);
  v18 = v7;
  v19 = *(v6 + 88);
  OUTLINED_FUNCTION_20();
  v20 = *(v12 + 104);
  KeyPath = swift_getKeyPath();
  v16 = v1;
  v17 = a1;
  OUTLINED_FUNCTION_27_11(KeyPath, sub_1C11D9F84, v15, MEMORY[0x1E69E7CA8]);

  return (v11)(a1, v7);
}

void sub_1C11D6CDC()
{
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  v15[0] = sub_1C109AB74();
  v15[1] = v5;
  v13 = v2;
  v14 = v0;
  v6 = sub_1C0FA8038(v15, &v13, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180]);

  if (v6)
  {
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_4_22();
    v8 = *(v4 + 96);
    *(v9 - 32) = *(v4 + 80);
    *(v9 - 16) = v8;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12[2] = v1;
    v12[3] = v2;
    v12[4] = v0;
    OUTLINED_FUNCTION_27_11(v11, sub_1C109CF10, v12, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    sub_1C109ABB4();
  }
}

uint64_t sub_1C11D6EF0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_5();
  sub_1C11D912C(v2);
  v8 = sub_1C109CFB8();
  LOBYTE(v6) = sub_1C0FA8038(v2, a1, v6, v8);
  v9 = sub_1C0FD1A5C(v2, &qword_1EBE929A0, &qword_1C12AF660);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_4_22();
    v10 = *(v5 + 96);
    *(v11 - 32) = *(v5 + 80);
    *(v11 - 16) = v10;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v15[2] = v1;
    v15[3] = a1;
    OUTLINED_FUNCTION_27_11(v13, sub_1C11DA924, v15, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    sub_1C109CF2C(a1, v2);
    sub_1C11D9180(v2);
  }

  return sub_1C0FD1A5C(a1, &qword_1EBE929A0, &qword_1C12AF660);
}

uint64_t sub_1C11D7090(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_5_5();

  return v3(v2);
}

void sub_1C11D7110()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  v10 = sub_1C1266790();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_7();
  sub_1C11D9350(v1);
  v14 = *(v12 + 8);
  v14(v1, v10);
  v19 = v9;
  v20 = v7;
  v21 = *(v5 + 96);
  KeyPath = swift_getKeyPath();
  v17 = v0;
  v18 = v3;
  OUTLINED_FUNCTION_27_11(KeyPath, sub_1C11DA908, &v16, MEMORY[0x1E69E7CA8]);

  v14(v3, v10);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C11D72A8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  v14 = *(v0 + *(v2 + 184));
  v4 = v3 & 1;
  v13 = v3;
  v5 = sub_1C0FA8038(&v14, &v13, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_4_22();
    v6 = *(v1 + 96);
    *(v7 - 32) = *(v1 + 80);
    *(v7 - 16) = v6;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v0;
    v12 = v4;
    OUTLINED_FUNCTION_27_11(v9, sub_1C11DA8C8, v11, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v10 + 184)) = v4;
  }
}

void sub_1C11D7430()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v21[0] = v10();
  v21[1] = v11;
  v20[0] = v8;
  v20[1] = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60, &qword_1C12AB090);
  v13 = sub_1C1073248();
  LOBYTE(v12) = sub_1C0FA8038(v21, v20, v12, v13);

  if (v12)
  {
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_4_22();
    v15 = *(v9 + 96);
    *(v16 - 32) = *(v9 + 80);
    *(v16 - 16) = v15;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v19[2] = v0;
    v19[3] = v8;
    v19[4] = v6;
    sub_1C11D9EB0(v18, v4, v19, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    v2(v8, v6);
  }

  OUTLINED_FUNCTION_22_0();
}

double sub_1C11D7594(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = v3;
  sub_1C11D9794();
  OUTLINED_FUNCTION_20();
  v6 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v8 = *(v7 + 80);

  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C12661A0();
  v14 = v8;
  v15 = v6;
  v16 = *(v4 + 96);
  KeyPath = swift_getKeyPath();
  v12 = v1;
  v13 = a1;
  OUTLINED_FUNCTION_27_11(KeyPath, sub_1C11DA8EC, &v11, MEMORY[0x1E69E7CA8]);

  return result;
}

double sub_1C11D76A4()
{
  v1 = v0;
  v2 = *v0;
  v108 = *(*v0 + 80);
  v3 = v108;
  v101 = *(*(&v108 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = sub_1C1266790();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v92 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v92 - v6;
  v7 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v92 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  sub_1C11D8A18();
  v16 = *(v2 + 96);
  v17 = (*(v16 + 16))(v3, v16);
  v19 = v18;
  v20 = *(v7 + 8);
  v106 = v7 + 8;
  v102 = v20;
  v20(v15, v3);
  v112 = v108;
  v113 = v16;
  v114 = *(v2 + 104);
  v21 = v114;
  KeyPath = swift_getKeyPath();
  sub_1C11D9E14(KeyPath);

  v23 = *(*v0 + 200);
  v120 = v1;
  v109 = v108;
  v110 = v16;
  v111 = v21;
  swift_getKeyPath();
  v117 = v108;
  v118 = v16;
  v119 = v21;
  v107 = v21;
  type metadata accessor for PhotosObservableCollection(255, &v117);
  WitnessTable = swift_getWitnessTable();
  v105 = v23;
  sub_1C1261F50();

  v24 = (v1 + *(*v1 + 128));
  swift_beginAccess();
  v25 = *v24 == v17 && v24[1] == v19;
  if (v25 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {

    *v24 = v17;
    v24[1] = v19;
  }

  v26 = v101;
  swift_endAccess();
  sub_1C11D9C14();
  sub_1C11D8A18();
  v93 = (*(v26 + 40))(v3, v26);
  v28 = v27;
  v29 = v102;
  v30 = v102(v12, v3);
  MEMORY[0x1EEE9AC00](v30);
  *(&v92 - 2) = v108;
  v31 = v107;
  *(&v92 - 2) = v16;
  *(&v92 - 1) = v31;
  v32 = v31;
  v33 = swift_getKeyPath();
  sub_1C11D9E14(v33);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v34);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v16;
  *(&v92 - 1) = v32;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v93, v28);
  swift_endAccess();

  sub_1C11D9C14();
  sub_1C11D8A18();
  v93 = (*(v26 + 48))(v3, v26);
  v92 = v35;
  v36 = v29(v12, v3);
  MEMORY[0x1EEE9AC00](v36);
  *(&v92 - 2) = v108;
  v37 = v26;
  v38 = v107;
  *(&v92 - 2) = v16;
  *(&v92 - 1) = v38;
  v39 = swift_getKeyPath();
  sub_1C11D9E14(v39);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v40);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v16;
  *(&v92 - 1) = v38;
  v103 = v16;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v93, v92);
  swift_endAccess();

  sub_1C11D9C14();
  sub_1C11D8A18();
  v41 = *(v37 + 56);
  v100 = v3;
  v93 = v41(v3, v37);
  v43 = v42;
  v44 = v102;
  v45 = v102(v12, v3);
  MEMORY[0x1EEE9AC00](v45);
  *(&v92 - 2) = v108;
  v46 = v107;
  *(&v92 - 2) = v103;
  *(&v92 - 1) = v46;
  v47 = swift_getKeyPath();
  sub_1C11D9E14(v47);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v48);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v103;
  *(&v92 - 1) = v46;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v93, v43);
  swift_endAccess();

  sub_1C11D9C14();
  sub_1C11D8A18();
  v49 = v94;
  v50 = v100;
  (*(v101 + 64))(v100);
  v51 = v44(v12, v50);
  MEMORY[0x1EEE9AC00](v51);
  *(&v92 - 2) = v108;
  v52 = v107;
  *(&v92 - 2) = v103;
  *(&v92 - 1) = v52;
  v53 = swift_getKeyPath();
  sub_1C11D9E14(v53);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v54);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v103;
  *(&v92 - 1) = v52;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6240();
  v55 = v49;
  v56 = v101;
  v57 = v103;
  v58 = v100;
  sub_1C0FD1A5C(v55, &qword_1EBE929A0, &qword_1C12AF660);
  swift_endAccess();
  sub_1C11D9C14();
  sub_1C11D8A18();
  v59 = v95;
  (*(v56 + 72))(v58, v56);
  v60 = v44(v12, v58);
  MEMORY[0x1EEE9AC00](v60);
  *(&v92 - 2) = v108;
  v61 = v107;
  *(&v92 - 2) = v57;
  *(&v92 - 1) = v61;
  v62 = swift_getKeyPath();
  sub_1C11D9E14(v62);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v63);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v57;
  *(&v92 - 1) = v61;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  v64 = v100;
  v94 = *(swift_getAssociatedConformanceWitness() + 8);
  v116 = v94;
  v65 = v97;
  v66 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(v59, v65, v66);
  (*(v96 + 8))(v59, v65);
  swift_endAccess();
  sub_1C11D9C14();
  sub_1C11D8A18();
  v67 = (*(v56 + 80))(v64, v56);
  v97 = v12;
  v68 = v102(v12, v64);
  v120 = v67;
  MEMORY[0x1EEE9AC00](v68);
  *(&v92 - 2) = v108;
  v69 = v103;
  v70 = v107;
  *(&v92 - 2) = v103;
  *(&v92 - 1) = v70;
  v71 = swift_getKeyPath();
  sub_1C11D9E14(v71);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v72);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v69;
  *(&v92 - 1) = v70;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  v73 = sub_1C12661A0();
  v115 = v94;
  v74 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(&v120, v73, v74);
  swift_endAccess();

  sub_1C11D9C14();
  v75 = v98;
  sub_1C11D8A18();
  v76 = (*(*(v56 + 8) + 8))(v64) & 1;
  v77 = v64;
  v78 = v102(v75, v64);
  MEMORY[0x1EEE9AC00](v78);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v69;
  *(&v92 - 1) = v70;
  v79 = swift_getKeyPath();
  sub_1C11D9E14(v79);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v80);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v69;
  *(&v92 - 1) = v70;
  swift_getKeyPath();
  sub_1C1261F50();

  v81 = *(*v1 + 184);
  if (v76 != *(v1 + v81))
  {
    *(v1 + v81) = v76;
  }

  sub_1C11D9C14();
  v82 = v97;
  sub_1C11D8A18();
  v83 = (*(v101 + 88))(v64);
  v85 = v84;
  v86 = v102(v82, v77);
  MEMORY[0x1EEE9AC00](v86);
  *&v87 = v69;
  v88 = v107;
  *(&v87 + 1) = v107;
  *(&v92 - 1) = v87;
  *(&v92 - 2) = v108;
  v89 = swift_getKeyPath();
  sub_1C11D9E14(v89);

  *&v117 = v1;
  MEMORY[0x1EEE9AC00](v90);
  *(&v92 - 2) = v108;
  *(&v92 - 2) = v69;
  *(&v92 - 1) = v88;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v83, v85);
  swift_endAccess();

  return sub_1C11D9C14();
}

uint64_t sub_1C11D873C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_7_4(v1 + v4, v5);
  OUTLINED_FUNCTION_20();
  return (*(*(*(v6 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C11D87C4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_29_1(v1 + v4, v5);
  OUTLINED_FUNCTION_20();
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  v9 = sub_1C11D76A4();
  return (*(v8 + 8))(a1, v7, v9);
}

double (*sub_1C11D8894(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return sub_1C11D8900;
}

double sub_1C11D8900(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C11D76A4();
  }

  return result;
}

uint64_t sub_1C11D8958(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C11D6B68(v3);
}

uint64_t sub_1C11D8A38(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C11D87C4(v3);
}

uint64_t (*sub_1C11D8B04(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  KeyPath = swift_getKeyPath();
  sub_1C11D9E14(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableCollection(255, v3);
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C11D8894(v3);
  return sub_1C11D8C74;
}

void sub_1C11D8C74(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C11D9C14();

  free(v1);
}

uint64_t PhotosObservableCollection.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t sub_1C11D8D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D8DF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D8E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D8E54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D8E74()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C11D8EB4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C11D8EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D8F84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D8F3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C11D8FF4()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C11D9034()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C11D9078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D90BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D912C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 160);
  OUTLINED_FUNCTION_7_4(v1 + v4, v5);
  return sub_1C109CF2C(v1 + v4, a1);
}

uint64_t sub_1C11D9180(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 160);
  OUTLINED_FUNCTION_29_1(v1 + v4, v5);
  sub_1C109CD00(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t sub_1C11D9200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C109CF2C(a1, &v6 - v3);
  return sub_1C11D6EF0(v4);
}

uint64_t sub_1C11D92B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1C109CF2C(a2, &v7 - v4);
  return sub_1C11D9180(v5);
}

uint64_t sub_1C11D9350@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 168);
  OUTLINED_FUNCTION_7_4(v1 + v4, v5);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_1C11D9408(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 168);
  OUTLINED_FUNCTION_29_1(v1 + v4, v5);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_1C11D94EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v9 - v7, a1, v6);
  sub_1C11D7110();
}

uint64_t sub_1C11D95FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C11D9E14(KeyPath);

  return a2(v4);
}

uint64_t sub_1C11D967C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1C1266790();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2, v4);
  return sub_1C11D9408(v6);
}

double sub_1C11D9794()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_7_4(v0 + *(v1 + 176), v2);

  return result;
}

double sub_1C11D97D8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 176);
  swift_beginAccess();
  *(v1 + v4) = a1;

  return result;
}

double sub_1C11D9890()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C11D9E14(KeyPath);

  return sub_1C11D9794();
}

uint64_t sub_1C11D998C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11D99E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C11D99E4()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C11D9E14(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 184));
}

uint64_t sub_1C11D9A64()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C11D9AA4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C11D9AE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D9B2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D9B4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C11D9E14(KeyPath);

  return a2(v4);
}

double sub_1C11D9C14()
{
  OUTLINED_FUNCTION_39_0();
  v10[4] = v0;
  OUTLINED_FUNCTION_39_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_39_0();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_39_0();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_39_0();
  v8 = *(v7 + 104);
  swift_getKeyPath();
  v10[0] = v2;
  v10[1] = v4;
  v10[2] = v6;
  v10[3] = v8;
  type metadata accessor for PhotosObservableCollection(255, v10);
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C11D9D0C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 80);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_7();
  sub_1C11D8A18();
  (*(*(*(v6 + 88) + 16) + 16))(a1, a2, v7);
  return (*(v9 + 8))(v3, v7);
}

uint64_t sub_1C11D9E14(uint64_t a1)
{
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11D9EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableCollection.deinit()
{
  OUTLINED_FUNCTION_2_16();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 112), *(v1 + 80));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  sub_1C0FD1A5C(v0 + *(v6 + 160), &qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_10_2();
  v8 = *(v7 + 168);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  v11 = *(v10 + 200);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v12 + 8))(v0 + v11);
  return v0;
}

void (*sub_1C11DA1F8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C11D8B04(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C11DA3B4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t _s17PhotosSwiftUICore0A14ObservableTripCyACyxGxcfc_0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 752);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_5();
  (*(v7 + 16))(v2, a1, v5);
  PhotosObservableCollection.init(_:)();
  (*(v7 + 8))(a1, v5);
  return v1;
}

uint64_t _s17PhotosSwiftUICore0A14ObservableTripCfD_0()
{
  PhotosObservableCollection.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C11DA570(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11DA5AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11DA5E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C11DA978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double Triangle.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectGetMidX(*&a2);
  v10.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetHeight(v10);
  v11.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetWidth(v11);
  v12.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetHeight(v12);
  v13.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetMidX(v13);
  v14.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetHeight(v14);
  sub_1C12647A0();
  sub_1C1264780();
  sub_1C1264790();
  sub_1C1264790();
  sub_1C1264790();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1C11DAB60()
{
  result = qword_1EBE96F08;
  if (!qword_1EBE96F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F08);
  }

  return result;
}

unint64_t sub_1C11DABB8()
{
  result = qword_1EBE96F10;
  if (!qword_1EBE96F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F10);
  }

  return result;
}

double sub_1C11DAC0C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  Triangle.path(in:)(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_1C11DAC60(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

unint64_t sub_1C11DACD8()
{
  result = qword_1EBE96F18;
  if (!qword_1EBE96F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96F20, &qword_1C12C3DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F18);
  }

  return result;
}

uint64_t sub_1C11DAD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11DAE60();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C11DADA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11DAE60();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C11DAE04(uint64_t a1)
{
  v2 = sub_1C11DAE60();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1C11DAE60()
{
  result = qword_1EBE96F28;
  if (!qword_1EBE96F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F28);
  }

  return result;
}

uint64_t PhotosMaterialTitleCellSpecs.font.getter()
{
  v1 = sub_1C1264680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    if (*v0 == 1)
    {
      sub_1C1264510();
    }

    else
    {
      sub_1C12646E0();
    }

    sub_1C1264600();
  }

  else
  {
    sub_1C1264510();
    sub_1C1264620();
  }

  sub_1C1264670();

  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  v5 = sub_1C12646C0();

  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t PhotosMaterialTitleCellSpecs.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C11DB0F8()
{
  result = qword_1EBE96F30;
  if (!qword_1EBE96F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosMaterialTitleCellSpecs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t PhotosLegibilityOverlay.body.getter@<X0>(uint64_t *a7@<X8>)
{
  *a7 = sub_1C12659A0();
  a7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F38, &qword_1C12C3F70);
  return sub_1C11DB298(a7 + *(v9 + 44));
}

uint64_t sub_1C11DB298@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F48, &qword_1C12C4010);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - v8);
  sub_1C1265160();
  v10 = sub_1C12651E0();

  v11 = *(v4 + 44);
  v12 = *MEMORY[0x1E6981DE8];
  v13 = sub_1C1265A90();
  (*(*(v13 - 8) + 104))(v9 + v11, v12, v13);
  *v9 = v10;
  sub_1C1265160();
  v14 = sub_1C12651E0();

  sub_1C11DB4CC(v9, v6);
  sub_1C11DB4CC(v6, a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F50, &qword_1C12C4018) + 48)) = v14;

  sub_1C11DB53C(v9);

  return sub_1C11DB53C(v6);
}

unint64_t sub_1C11DB468()
{
  result = qword_1EDE7B7C0;
  if (!qword_1EDE7B7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96F40, &qword_1C12C4008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B7C0);
  }

  return result;
}

uint64_t sub_1C11DB4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F48, &qword_1C12C4010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11DB53C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F48, &qword_1C12C4010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C11DB5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
    sub_1C11DF790();
    v4 = a2;
    v5 = 0;
    v6 = v3;
  }

  else
  {
    v6 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
    v4 = a2;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
}

__n128 PhotosSearchBarWithSuggestionView.init(searchText:isEditing:canShowSearchSuggestions:selectedSuggestionIndex:selectedRange:placeholder:searchSuggestions:onSuggestionViewVisibilityChange:onSuggestionViewFrameChange:onSuggestionViewAdditionalOffsetXChange:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, __int128 *a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17)
{
  v26 = *a12;
  v20 = *(a12 + 3);
  v25 = *(a12 + 2);
  v21 = *(a12 + 32);
  v22 = *(a12 + 5);
  *(a9 + 232) = swift_getKeyPath();
  type metadata accessor for PhotosSearchBarWithSuggestionViewModel(0);
  *(a9 + 256) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 271) = 0;
  swift_allocObject();
  PhotosSearchBarWithSuggestionViewModel.init(searchBarLeadingInset:searchBarTrailingInset:)();
  sub_1C1265410();
  v23 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *(a9 + 280) = v33;
  *(a9 + 288) = v34;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = v23;
  *(a9 + 104) = *(a11 + 32);
  *(a9 + 112) = v26;
  *(a9 + 128) = v25;
  *(a9 + 136) = v20;
  *(a9 + 144) = v21;
  *(a9 + 152) = v22;
  *(a9 + 160) = a13;
  *(a9 + 176) = a14;
  result = a16;
  *(a9 + 192) = a15;
  *(a9 + 208) = a16;
  *(a9 + 224) = a17;
  return result;
}

uint64_t sub_1C11DB828()
{
  v0 = sub_1C1263D00();
  __swift_allocate_value_buffer(v0, qword_1EBE96F58);
  __swift_project_value_buffer(v0, qword_1EBE96F58);
  return sub_1C1263F30();
}

uint64_t PhotosSearchBarWithSuggestionViewModel.__allocating_init(searchBarLeadingInset:searchBarTrailingInset:)()
{
  OUTLINED_FUNCTION_14_23();
  v0 = swift_allocObject();
  PhotosSearchBarWithSuggestionViewModel.init(searchBarLeadingInset:searchBarTrailingInset:)();
  return v0;
}

void PhotosSearchBarWithSuggestionView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v60 = v1;
  v2 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v44.i64[0] = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F70, &unk_1C12C4048);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43.i8[-v14];
  memcpy(v65, v0, 0x128uLL);
  v61[0] = *v0;
  *&v61[1] = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  sub_1C1265610();
  v57 = *&v64[0];
  v58 = *(v64 + 8);
  v61[0] = *(v0 + 24);
  LOBYTE(v61[1]) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C1265610();
  v55 = *(&v64[0] + 1);
  v56 = *&v64[0];
  v54 = LOBYTE(v64[1]);
  v61[0] = v0[3];
  LOBYTE(v61[1]) = *(v0 + 64);
  sub_1C1265610();
  v52 = *(&v64[0] + 1);
  v53 = *&v64[0];
  v51 = LOBYTE(v64[1]);
  v16 = v0[8];
  v64[0] = v0[7];
  v64[1] = v16;
  v64[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
  sub_1C1265610();
  v49 = *(&v61[0] + 1);
  v50 = *&v61[0];
  v47 = *(&v61[1] + 1);
  v48 = *&v61[1];
  v46 = LOBYTE(v61[2]);
  v45 = *(&v61[2] + 1);
  v18 = *(v0 + 232);
  *(&v64[1] + 11) = *(v0 + 259);
  v19 = *(v0 + 248);
  v64[0] = v18;
  v64[1] = v19;
  if (BYTE10(v64[2]) == 1)
  {
    v20 = WORD4(v64[2]);
    *v62 = *&v64[0];
    *&v62[8] = *(v64 + 8);
    *&v62[24] = *(&v64[1] + 8);
    v63 = WORD4(v64[2]);
    v17.i64[0] = v18;
    v43 = vzip1q_s64(vdupq_laneq_s64(*(v64 + 8), 1), *(&v64[1] + 8));
    v44 = vzip1q_s64(v17, *(v64 + 8));
    v21 = *&v64[2];
  }

  else
  {
    sub_1C10AF3D4();
    sub_1C1266420();
    v22 = v2;
    v23 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v64, &qword_1EBE96F78, &qword_1C12C4058);
    (*(v44.i64[0] + 8))(v7, v22);
    v43 = *&v62[16];
    v44 = *v62;
    v21 = *&v62[32];
    v20 = v63;
  }

  v24 = v65[20];
  v25 = v65[21];
  v61[19] = *&v65[35];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F80, &qword_1C12C4060);
  sub_1C1265420();
  v26 = v8[11];
  *(v12 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  v27 = v56;
  *v12 = v57;
  *(v12 + 8) = v58;
  v28 = v55;
  *(v12 + 24) = v27;
  *(v12 + 32) = v28;
  *(v12 + 40) = v54;
  v29 = v52;
  *(v12 + 48) = v53;
  *(v12 + 56) = v29;
  *(v12 + 64) = v51;
  v30 = v49;
  *(v12 + 72) = v50;
  *(v12 + 80) = v30;
  v31 = v47;
  *(v12 + 88) = v48;
  *(v12 + 96) = v31;
  *(v12 + 104) = v46;
  *(v12 + 112) = v45;
  v32 = v12 + v8[9];
  v33 = v43;
  *v32 = v44;
  *(v32 + 16) = v33;
  *(v32 + 32) = v21;
  *(v32 + 40) = v20;
  v34 = (v12 + v8[10]);
  *v34 = v24;
  v34[1] = v25;
  type metadata accessor for PhotosSearchBarWithSuggestionViewModel(0);
  OUTLINED_FUNCTION_2_57();
  sub_1C11DD054(v35, v36, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1265770();
  memcpy(v61, v65, 0x128uLL);
  v37 = sub_1C11DC014();
  v39 = v38;
  v40 = &v15[*(v59 + 36)];
  sub_1C11DC198(v65, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F88, &qword_1C12C40A0) + 36));
  *v41 = v37;
  v41[1] = v39;
  sub_1C11DCF08(v12, v15);
  if (qword_1EBE8FD58 != -1)
  {
    swift_once();
  }

  v42 = sub_1C1263D00();
  __swift_project_value_buffer(v42, qword_1EBE96F58);
  sub_1C11DCF6C();
  sub_1C1264BA0();
  sub_1C0FC5224(v15);
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSearchBarWithSuggestionViewBase.init(searchText:isEditing:canShowSearchSuggestions:selectedRange:style:placeholder:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v30 = *a11;
  v18 = *(a11 + 2);
  v19 = *(a11 + 3);
  v20 = *(a11 + 32);
  v21 = *(a11 + 5);
  v34 = *(a12 + 32);
  v33 = *(a12 + 40);
  v22 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  v23 = v22[11];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = v30;
  *(a9 + 88) = v18;
  *(a9 + 96) = v19;
  *(a9 + 104) = v20;
  *(a9 + 112) = v21;
  v24 = a9 + v22[9];
  v25 = *(a12 + 16);
  *v24 = *a12;
  *(v24 + 16) = v25;
  *(v24 + 32) = v34;
  *(v24 + 40) = v33;
  v26 = (a9 + v22[10]);
  *v26 = a13;
  v26[1] = a14;
  type metadata accessor for PhotosSearchBarWithSuggestionViewModel(0);
  OUTLINED_FUNCTION_2_57();
  sub_1C11DD054(v27, v28, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  return sub_1C1265770();
}

uint64_t sub_1C11DC014()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 272);
  if ((*(v0 + 274) & 1) == 0)
  {
    v6 = *(v0 + 232);
    v14 = *(v0 + 240);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 264);

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v11 = sub_1C1022584(v6, v14, v7, v8, v9, v5, 0);
    (*(v2 + 8))(v4, v1, v11);
    LOWORD(v5) = v15;
  }

  if ((v5 & 0x8000) != 0)
  {
    return sub_1C1265940();
  }

  else
  {
    return sub_1C1265960();
  }
}

uint64_t sub_1C11DC198@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97098, &qword_1C12C4860);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v42[-v8];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE970A0, &qword_1C12C4868);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v42[-v9];
  v10 = *(a1 + 88);
  *v59 = *(a1 + 72);
  *&v59[16] = v10;
  v59[32] = a1[104];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952D8, &qword_1C12BC338);
  sub_1C1265610();
  v48 = *&v61[8];
  v49 = *v61;
  v46 = *&v61[24];
  v47 = *&v61[16];
  v57 = v61[32];
  v68 = *(a1 + 280);
  *v59 = *(a1 + 280);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F80, &qword_1C12C4060);
  sub_1C1265420();
  v45 = *v61;
  *v59 = *a1;
  *&v59[16] = *(a1 + 2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  MEMORY[0x1C68EEF20](v61, v11);
  v44 = *v61;
  v67 = *(a1 + 22);
  v65 = *(a1 + 3);
  v66 = a1[64];
  *v59 = *(a1 + 3);
  v59[16] = a1[64];
  sub_1C10AF3D4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  MEMORY[0x1C68EEF20](v61);
  v13 = &v64[24];
  if (v61[0] == 1)
  {
    *v59 = *(a1 + 24);
    v59[16] = a1[40];
    MEMORY[0x1C68EEF20](v61, v12);
    v43 = v61[0];
  }

  else
  {
    v43 = 0;
  }

  *&v64[11] = *(a1 + 259);
  v14 = *(a1 + 248);
  v63 = *(a1 + 232);
  *v64 = v14;
  if ((v64[26] & 1) == 0)
  {
    v13 = &v61[40];
    sub_1C10AF3D4();
    sub_1C1266420();
    v15 = v4;
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v63, &qword_1EBE96F78, &qword_1C12C4058);
    (*(v15 + 8))(v6, v3);
  }

  if (*v13 < 0)
  {
    sub_1C1265B50();
  }

  else
  {
    sub_1C1265B40();
  }

  v19 = v17;
  v20 = v18;
  v22 = *(a1 + 23);
  v21 = *(a1 + 24);
  *v61 = 0;
  sub_1C0FCF1B4(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FA8, &qword_1C12C40A8);
  sub_1C1265410();
  v24 = *v59;
  v23 = *&v59[8];
  v62 = v57;
  v25 = v67;
  *v59 = v65;
  v59[16] = v66;
  MEMORY[0x1C68EEF20](v61, v12);
  v26 = 0;
  if (v61[0] == 1)
  {
    *v59 = v68;
    sub_1C1265420();
    PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter();
    v26 = v27;
  }

  v28 = swift_allocObject();
  memcpy((v28 + 16), a1, 0x128uLL);
  v29 = swift_allocObject();
  memcpy((v29 + 16), a1, 0x128uLL);
  v60[0] = v49;
  v60[1] = v48;
  v60[2] = v47;
  v60[3] = v46;
  LOBYTE(v60[4]) = v57;
  v60[5] = v45;
  v60[6] = v44;
  v60[7] = v25;
  LOBYTE(v60[8]) = v43;
  *&v30 = v22;
  *(&v30 + 1) = v21;
  v60[9] = v19;
  v60[10] = v20;
  *&v31 = v24;
  *(&v31 + 1) = v23;
  *&v60[13] = v31;
  *&v60[11] = v30;
  v60[15] = v26;
  v60[16] = 0;
  v60[17] = sub_1C11E19C4;
  v60[18] = v28;
  v60[19] = sub_1C11E19CC;
  v60[20] = v29;
  *v61 = v68;
  sub_1C11E19D4(a1, v59);
  sub_1C11E19D4(a1, v59);
  sub_1C1265420();
  PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter();
  v33 = v32;

  v58 = v33;
  v34 = swift_allocObject();
  memcpy((v34 + 16), a1, 0x128uLL);
  sub_1C11E19D4(a1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE970A8, &qword_1C12C4870);
  sub_1C11E1A14();
  sub_1C0FF9EE4();
  v35 = v52;
  sub_1C1265010();

  memcpy(v61, v60, sizeof(v61));
  sub_1C0FD1A5C(v61, &qword_1EBE970A8, &qword_1C12C4870);
  memcpy(v59, a1, sizeof(v59));
  sub_1C11DCCCC();
  v37 = v36;
  v38 = swift_allocObject();
  memcpy((v38 + 16), a1, 0x128uLL);
  v39 = v50;
  (*(v53 + 32))(v50, v35, v54);
  v40 = &v39[*(v51 + 36)];
  *v40 = v37;
  v40[1] = sub_1C11E1CB8;
  v40[2] = v38;
  sub_1C0FC593C();
  return sub_1C11E19D4(a1, v59);
}

__n128 PhotosSearchBarWithSuggestionViewOverlay.init(selectedSuggestionIndex:viewModel:searchText:searchSuggestions:canShowSearchSuggestions:animationAnchor:onSuggestionViewVisibilityChange:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FA8, &qword_1C12C40A8);
  sub_1C1265410();
  *(a8 + 104) = v22;
  result = *a1;
  v21 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v21;
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = a9;
  *(a8 + 80) = a10;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

uint64_t PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter()
{
  v0 = sub_1C11DDB10();
  if (v0 != 2 && (v0 & 1) != 0)
  {
    return sub_1C11DD7B0();
  }

  sub_1C11DE49C(sub_1C11DD960, sub_1C11DDED4);
  sub_1C11DE49C(sub_1C11DE234, sub_1C11DE084);
  sub_1C11DE49C(sub_1C11DD960, sub_1C11DDED4);
  sub_1C11DE3E4();
  return sub_1C11DDC84();
}

void sub_1C11DCAE4(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 200))
  {
    if (qword_1EBE8FD58 != -1)
    {
      swift_once();
    }

    v3 = sub_1C1263D00();
    __swift_project_value_buffer(v3, qword_1EBE96F58);
    sub_1C1262D50();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
}

double *sub_1C11DCB8C(double *result, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    return v2(*result, result[1], result[2], result[3]);
  }

  return result;
}

uint64_t sub_1C11DCBC8(uint64_t result)
{
  v1 = *(result + 216);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F80, &qword_1C12C4060);
    sub_1C1265420();
    PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter();
    v3 = v2;

    return v1(v4, v3);
  }

  return result;
}

uint64_t sub_1C11DCC58(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C11DCCCC();
  return MEMORY[0x1C68EC9C0]();
}

void sub_1C11DCCCC()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = *(v0 + 272);
  if ((*(v0 + 274) & 1) == 0)
  {
    v13 = *(v0 + 232);
    v18 = *(v0 + 248);
    v19 = *(v0 + 240);
    v17 = *(v0 + 256);
    v14 = *(v0 + 264);

    sub_1C1266420();
    v15 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v16 = sub_1C1022584(v13, v19, v18, v17, v14, v12, 0);
    (*(v7 + 8))(v11, v5, v16);
    LOWORD(v12) = v20;
  }

  if ((v12 & 0x8000) != 0)
  {
    v4();
  }

  else
  {
    v2();
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSearchBarWithSuggestionViewModel.init(searchBarLeadingInset:searchBarTrailingInset:)()
{
  OUTLINED_FUNCTION_14_23();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 513;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0x3FF0000000000000;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 152) = 1;
  sub_1C1261F60();
  sub_1C11DD14C(v4, v3 & 1);
  sub_1C11DD224(v2, v0 & 1);
  return v1;
}

uint64_t sub_1C11DCF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C11DCF6C()
{
  result = qword_1EBE96F90;
  if (!qword_1EBE96F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96F70, &unk_1C12C4048);
    sub_1C11DD054(&qword_1EBE96F98, type metadata accessor for PhotosSearchBarWithSuggestionViewBase, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewBase);
    sub_1C0FDB6D4(&qword_1EBE96FA0, &qword_1EBE96F88, &qword_1C12C40A0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F90);
  }

  return result;
}

uint64_t sub_1C11DD054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C11DD09C(double a1)
{
  if (*(v1 + 104) == a1)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5[2] = v1;
    *&v5[3] = a1;
    sub_1C11DD558(v4, sub_1C11E191C, v5);
  }
}

double sub_1C11DD14C(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 48);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 40);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 40) = *&a1;
      *(v2 + 48) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C11E19B0, v9);

  return result;
}

double sub_1C11DD224(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 64);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 56);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 56) = *&a1;
      *(v2 + 64) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C11E1968, v9);

  return result;
}

double sub_1C11DD2FC()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return result;
}

double sub_1C11DD3CC(uint64_t a1)
{

  v4 = sub_1C11DD4C0(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_1C11DD558(v6, sub_1C11E17E8, v8);
  }

  else
  {
    *(v1 + 16) = a1;
  }

  return result;
}

BOOL sub_1C11DD4C0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for PhotosSearchBarTokenSizer();
    v3 = static PhotosSearchBarTokenSizer.== infix(_:_:)(a1, a2);
  }

  return !v3;
}

void sub_1C11DD51C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_1C11DD558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_57();
  sub_1C11DD054(v3, v4, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  return sub_1C1261F20();
}

uint64_t sub_1C11DD600()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 24);
}

double sub_1C11DD6D8(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 32);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 24);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 24) = *&a1;
      *(v2 + 32) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C11E192C, v9);

  return result;
}

uint64_t sub_1C11DD7B0()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 40);
}

uint64_t sub_1C11DD888()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 56);
}

uint64_t sub_1C11DD960()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 72);
}

double sub_1C11DDA38(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 80);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 72);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 72) = *&a1;
      *(v2 + 80) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C11E1954, v9);

  return result;
}

uint64_t sub_1C11DDB10()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 81);
}

void sub_1C11DDBB0(int a1)
{
  v2 = a1;
  v3 = *(v1 + 81);
  if (v3 != 2)
  {
    if (a1 != 2 && ((v3 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v1;
    v7 = v2;
    sub_1C11DD558(v5, sub_1C11E1804, v6);

    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 81) = a1;
}

uint64_t sub_1C11DDC84()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 88);
}

double sub_1C11DDD5C(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 96);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 88);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 88) = *&a1;
      *(v2 + 96) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C11E1908, v9);

  return result;
}

double sub_1C11DDE34()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 104);
}

uint64_t sub_1C11DDED4()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 112);
}

double sub_1C11DDFAC(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 120);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 112);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 112) = *&a1;
      *(v2 + 120) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C0FE7AA4, v9);

  return result;
}

uint64_t sub_1C11DE084()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 128);
}

double sub_1C11DE15C(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 136);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 128);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 128) = *&a1;
      *(v2 + 136) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C11E1940, v9);

  return result;
}

uint64_t sub_1C11DE234()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, &protocol conformance descriptor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 144);
}

double sub_1C11DE30C(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = *(v2 + 152);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 144);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 144) = *&a1;
      *(v2 + 152) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = v3 & 1;
  sub_1C11DD558(v8, sub_1C11E150C, v9);

  return result;
}

uint64_t sub_1C11DE3E4()
{
  v0 = sub_1C11DD600();
  if (v1)
  {
    *&result = COERCE_DOUBLE(sub_1C11DD600());
  }

  else
  {
    v3 = *&v0;
    v4 = COERCE_DOUBLE(sub_1C11DD7B0());
    if (v5)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4;
    }

    v7 = COERCE_DOUBLE(sub_1C11DD888());
    if (v8)
    {
      v7 = 0.0;
    }

    *&result = v3 - v6 - v7;
  }

  return result;
}

uint64_t sub_1C11DE458()
{
  *&result = COERCE_DOUBLE(sub_1C11DE3E4());
  if ((v1 & 1) == 0)
  {
    *&result = sub_1C11DDE34() * *&result;
  }

  return result;
}

double sub_1C11DE49C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = COERCE_DOUBLE(a1());
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  v6 = COERCE_DOUBLE(a2());
  if (v7)
  {
    v6 = 0.0;
  }

  return v5 - v6;
}

double sub_1C11DE4F4(__C::_NSRange_optional *a1, Swift::Int a2, char a3)
{
  result = sub_1C11DD2FC();
  if (v5)
  {
    v6 = PhotosSearchBarTokenSizer.tokenMatchingLeadingOffset(from:)(a1);
    v8 = v7;

    if ((v8 & 1) == 0)
    {

      return sub_1C11DE30C(v6, 0);
    }
  }

  return result;
}

uint64_t PhotosSearchBarWithSuggestionViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosSearchBarWithSuggestionViewModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosSearchBarWithSuggestionViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosSearchBarWithSuggestionViewModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C11DE688@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  sub_1C10AF3D4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C1263130();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void PhotosSearchBarWithSuggestionViewBase.body.getter()
{
  OUTLINED_FUNCTION_23();
  v107 = v1;
  v105 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v106 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v102 = v5 - v4;
  *&v100 = type metadata accessor for PhotosOffsetReaderContainer(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6);
  *&v99 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v81 - v9;
  v10 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FB0, &qword_1C12C40B0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FB8, &qword_1C12C40B8);
  OUTLINED_FUNCTION_0();
  v104 = v28;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  v112 = v30;
  *v119 = *v0;
  *&v119[8] = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  sub_1C1265610();
  v97 = *v116;
  v92 = 0x80000001C126CA90;
  v96 = *&v116[8];
  v31 = *(v0 + 32);
  v32 = *(v0 + 40);
  *v119 = *(v0 + 24);
  *&v119[8] = v31;
  v119[16] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C1265610();
  v95 = *v116;
  v94 = *&v116[8];
  v93 = v116[16];
  v33 = *(v0 + 80);
  v34 = *(v0 + 104);
  v35 = *(v0 + 112);
  *v116 = *(v0 + 72);
  *&v116[8] = v33;
  *&v116[16] = *(v0 + 88);
  v117 = v34;
  v118 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
  sub_1C1265610();
  v91 = *v119;
  v90 = *&v119[16];
  v89 = *&v119[24];
  v88 = v120;
  v87 = v121;
  v36 = (v0 + *(v11 + 48));
  v38 = *v36;
  v37 = v36[1];
  v86 = v38;
  v82 = v37;
  v111 = v24;
  sub_1C11DF790();
  v39 = *(v12 + 80);
  v40 = (v39 + 16) & ~v39;
  v41 = v39;
  v84 = swift_allocObject();
  sub_1C11DCF08(v24, v84 + v40);
  sub_1C11DF790();
  v83 = swift_allocObject();
  sub_1C11DCF08(v19, v83 + v40);
  v113 = v0;
  v109 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase;
  sub_1C11DF790();
  v110 = v21;
  v108 = v41;
  v42 = swift_allocObject();
  sub_1C11DCF08(v16, v42 + v40);
  v43 = v85;
  sub_1C11DF790();
  v44 = swift_allocObject();
  sub_1C11DCF08(v43, v44 + v40);
  v45 = type metadata accessor for PhotosSearchBar(0);
  v46 = v45[12];
  *&v27[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v47 = &v27[v45[13]];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0u;
  *(v47 + 24) = 0u;
  *(v47 + 39) = 0;
  v48 = &v27[v45[14]];
  v114 = 0;
  v115 = 1;
  v49 = v82;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  sub_1C1265410();
  v50 = v116[8];
  v51 = *&v116[16];
  *v48 = *v116;
  v48[8] = v50;
  *(v48 + 2) = v51;
  v52 = v45[15];
  v114 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890, &qword_1C12BD5F0);
  sub_1C1265410();
  *&v27[v52] = *v116;
  *v116 = 0xD00000000000001ELL;
  *&v116[8] = v92;
  v53 = v98;
  sub_1C1263F30();
  *(v53 + *(v100 + 20)) = 0;
  sub_1C11DF790();
  sub_1C1265410();
  sub_1C11E1790(v53, type metadata accessor for PhotosOffsetReaderContainer);
  *v27 = v97;
  *(v27 + 8) = v96;
  v54 = v94;
  *(v27 + 3) = v95;
  *(v27 + 4) = v54;
  v27[40] = v93;
  *(v27 + 3) = v91;
  v55 = v89;
  *(v27 + 8) = v90;
  *(v27 + 9) = v55;
  v27[80] = v88;
  v56 = v86;
  *(v27 + 11) = v87;
  *(v27 + 12) = v56;
  *(v27 + 13) = v49;
  *(v27 + 14) = sub_1C11DF384;
  *(v27 + 15) = v84;
  *(v27 + 16) = sub_1C11DF5A0;
  *(v27 + 17) = v83;
  *(v27 + 18) = sub_1C11DF63C;
  *(v27 + 19) = v42;
  *(v27 + 20) = sub_1C11DF730;
  *(v27 + 21) = v44;
  v57 = (v113 + *(v11 + 44));
  v58 = *(v57 + 4);
  LOWORD(v42) = *(v57 + 20);
  v59 = v57[1];
  v100 = *v57;
  v99 = v59;
  KeyPath = swift_getKeyPath();
  v61 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC8, &qword_1C12C4100) + 36)];
  *v61 = KeyPath;
  *(v61 + 24) = v99;
  *(v61 + 8) = v100;
  *(v61 + 5) = v58;
  *(v61 + 24) = v42;
  v62 = v111;
  sub_1C11DF790();
  v63 = swift_allocObject();
  sub_1C11DCF08(v62, v63 + v40);
  v64 = v101;
  v65 = &v27[*(v101 + 36)];
  *v65 = sub_1C1179DC8;
  v65[1] = 0;
  v65[2] = sub_1C11DF864;
  v65[3] = v63;
  v66 = v102;
  sub_1C11DE688(v102);
  sub_1C11DF790();
  v67 = swift_allocObject();
  sub_1C11DCF08(v62, v67 + v40);
  v68 = sub_1C11DF8C8();
  OUTLINED_FUNCTION_4_49();
  v71 = sub_1C11DD054(v69, v70, MEMORY[0x1E697E750]);
  v72 = v66;
  v73 = v105;
  sub_1C1265010();

  (*(v106 + 8))(v72, v73);
  sub_1C0FD1A5C(v27, &qword_1EBE96FB0, &qword_1C12C40B0);
  v74 = *(v57 + 4);
  v75 = *(v57 + 20);
  v76 = v57[1];
  *v119 = *v57;
  *&v119[16] = v76;
  v120 = v74;
  LOWORD(v121) = v75;
  v77 = v111;
  sub_1C11DF790();
  v78 = swift_allocObject();
  sub_1C11DCF08(v77, v78 + v40);
  *v116 = v64;
  *&v116[8] = v73;
  *&v116[16] = v68;
  *&v116[24] = v71;
  OUTLINED_FUNCTION_3_47();
  swift_getOpaqueTypeConformance2();
  sub_1C10C8ACC();
  v79 = v103;
  v80 = v112;
  sub_1C1265010();

  (*(v104 + 8))(v80, v79);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11DF384()
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();

  return sub_1C11DF328(v0 + v1);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 104);
  if (v3 != 255)
  {
    sub_1C1154CB4(*(v2 + 88), *(v2 + 96), v3);
  }

  v4 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0, &qword_1C12C40C0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v2 + v4);

  v6 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1C11DF5B8()
{
  OUTLINED_FUNCTION_17_4();
  v2 = v1;
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0, &qword_1C12C40C0);
  sub_1C1265750();
  v0(v2, 0);
}

void sub_1C11DF654()
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();
  sub_1C11DF5B8();
}

double sub_1C11DF6B8(uint64_t a1)
{
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0, &qword_1C12C40C0);
  sub_1C1265750();

  sub_1C11DD3CC(v1);

  return result;
}

double sub_1C11DF730(uint64_t a1)
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();

  return sub_1C11DF6B8(a1);
}

uint64_t sub_1C11DF790()
{
  OUTLINED_FUNCTION_17_4();
  v2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 16))(v0, v1);
  return v0;
}

double sub_1C11DF7EC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0, &qword_1C12C40C0);
  sub_1C1265750();
  sub_1C11DD6D8(v1, 0);

  return result;
}

double sub_1C11DF864(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();

  return sub_1C11DF7EC(a1);
}

unint64_t sub_1C11DF8C8()
{
  result = qword_1EBE96FD0;
  if (!qword_1EBE96FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FB0, &qword_1C12C40B0);
    sub_1C11DF980();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96FD0);
  }

  return result;
}

unint64_t sub_1C11DF980()
{
  result = qword_1EBE96FD8;
  if (!qword_1EBE96FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FC8, &qword_1C12C4100);
    sub_1C11DD054(&qword_1EBE95878, type metadata accessor for PhotosSearchBar, &protocol conformance descriptor for PhotosSearchBar);
    sub_1C0FDB6D4(qword_1EBE93498, &qword_1EBE93490, &unk_1C12B3480, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96FD8);
  }

  return result;
}

void sub_1C11DFA68()
{
  v1 = sub_1C1263130();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0) + 36) + 40) < 0 && (sub_1C11DE688(v4), v5 = sub_1C1263120(), (*(v2 + 8))(v4, v1), (v5 & 1) == 0))
  {
    v6 = 0.85;
  }

  else
  {
    v6 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0, &qword_1C12C40C0);
  sub_1C1265750();
  sub_1C11DD09C(v6);
}

void sub_1C11DFBB8()
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();
  sub_1C11DFA68();
}

void PhotosSearchBarWithSuggestionViewOverlay.body.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v73 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FE0, &qword_1C12C4108);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FE8, &qword_1C12C4110);
  OUTLINED_FUNCTION_0();
  v65 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FF0, &qword_1C12C4118);
  OUTLINED_FUNCTION_0();
  v66 = v12;
  v67 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  v62 = v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FF8, &qword_1C12C4120);
  OUTLINED_FUNCTION_0();
  v69 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v68 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97000, &qword_1C12C4128);
  OUTLINED_FUNCTION_0();
  v71 = v19;
  v72 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v70 = v21;
  memcpy(v80, v1, 0x78uLL);
  *v6 = sub_1C12638E0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97008, &qword_1C12C4130);
  v23 = sub_1C11E02C8(v80, &v6[*(v22 + 44)]);
  MEMORY[0x1C68EF360](v23, 0.5, 1.0, 0.0);
  sub_1C12659F0();

  v75 = v80;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97010, &qword_1C12C4138);
  OUTLINED_FUNCTION_8_34();
  v27 = sub_1C0FDB6D4(v25, &qword_1EBE96FE0, &qword_1C12C4108, v26);
  v28 = sub_1C11E084C();
  v64 = v10;
  sub_1C1265030();

  sub_1C0FD1A5C(v6, &qword_1EBE96FE0, &qword_1C12C4108);
  v29 = v80[7];
  if (v80[7])
  {
    v30 = *(v80[7] + 16);
    if (v30)
    {
      LOBYTE(v30) = v80[8];
    }
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  LOBYTE(v76) = v30;
  OUTLINED_FUNCTION_12_23();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v31);
  OUTLINED_FUNCTION_22_19();
  *&v77 = v3;
  *(&v77 + 1) = v24;
  v78 = v27;
  v79 = v28;
  OUTLINED_FUNCTION_5_33();
  v34 = OUTLINED_FUNCTION_21_13(v32, v33);
  v35 = MEMORY[0x1E69E6370];
  v36 = MEMORY[0x1E69E6388];
  OUTLINED_FUNCTION_18_29();
  v37 = v62;
  v38 = v63;
  v39 = v64;
  sub_1C1265010();

  (*(v65 + 8))(v39, v38);
  v76 = v29;
  OUTLINED_FUNCTION_12_23();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v40);
  OUTLINED_FUNCTION_22_19();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FA8, &qword_1C12C40A8);
  *&v77 = v38;
  *(&v77 + 1) = v35;
  v78 = v34;
  v79 = v36;
  OUTLINED_FUNCTION_3_47();
  v64 = v41;
  v65 = v42;
  v44 = OUTLINED_FUNCTION_21_13(v41, v43);
  v45 = sub_1C11E0BB4();
  OUTLINED_FUNCTION_18_29();
  v46 = v68;
  v47 = v29;
  v48 = v67;
  sub_1C1265010();

  (*(v66 + 8))(v37, v48);
  sub_1C11DD2FC();
  v76 = v49;
  OUTLINED_FUNCTION_12_23();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v50);
  OUTLINED_FUNCTION_22_19();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97060, &qword_1C12C4158);
  *&v77 = v48;
  v52 = v47;
  *(&v77 + 1) = v64;
  v78 = v44;
  v79 = v45;
  v53 = OUTLINED_FUNCTION_21_13(v51, v65);
  v54 = sub_1C11E0D08();
  OUTLINED_FUNCTION_18_29();
  v55 = v70;
  v56 = v74;
  v67 = v51;
  sub_1C1265010();

  (*(v69 + 8))(v46, v56);
  if (v52 && *(v52 + 16))
  {
  }

  else
  {
    v77 = *&v80[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078, &qword_1C12C4160);
    sub_1C1265420();
    if (v76)
    {
      v52 = v76;
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC0];
    }
  }

  v76 = v52;
  OUTLINED_FUNCTION_12_23();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v57);
  OUTLINED_FUNCTION_22_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94FC0, qword_1C12BC080);
  *&v77 = v74;
  *(&v77 + 1) = v67;
  v78 = v53;
  v79 = v54;
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_21_13(v58, v59);
  sub_1C11E0C38();
  OUTLINED_FUNCTION_18_29();
  v60 = v72;
  sub_1C1265010();

  (*(v71 + 8))(v55, v60);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11E02C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v21 = sub_1C11DE458();
  v20 = v8;
  v9 = *(a1 + 7);
  if (v9 && *(v9 + 16))
  {
  }

  else
  {
    v22[0] = *(a1 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078, &qword_1C12C4160);
    sub_1C1265420();
    if (v24)
    {
      v9 = v24;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }
  }

  v10 = *(a1 + 1);
  v22[0] = *a1;
  v22[1] = v10;
  v23 = a1[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952D8, &qword_1C12BC338);
  sub_1C1265610();
  v19 = v24;
  v11 = v26;
  v18 = v25;
  HIDWORD(v17) = v27;
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1, 0x78uLL);
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = 0;
  v13 = *(type metadata accessor for PhotosSearchSuggestionView(0) + 36);
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  swift_storeEnumTagMultiPayload();
  *&v24 = 0xD000000000000029;
  *(&v24 + 1) = 0x80000001C126DAE0;
  sub_1C11E09E8(a1, v22);
  sub_1C1263F30();
  *&v7[*(v4 + 20)] = 0;
  sub_1C11DF790();
  sub_1C1265410();
  sub_1C11E1790(v7, type metadata accessor for PhotosOffsetReaderContainer);
  *a2 = v21;
  *(a2 + 8) = v20 & 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = sub_1C11E1884;
  *(a2 + 32) = v12;
  *(a2 + 40) = v19;
  *(a2 + 56) = v18;
  *(a2 + 64) = v11;
  *(a2 + 72) = BYTE4(v17);
  v14 = swift_allocObject();
  memcpy((v14 + 16), a1, 0x78uLL);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97090, &qword_1C12C4718) + 36));
  *v15 = sub_1C1179DC8;
  v15[1] = 0;
  v15[2] = sub_1C11E1900;
  v15[3] = v14;
  return sub_1C11E09E8(a1, v22);
}

uint64_t sub_1C11E0688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97030, &qword_1C12C4140);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  if (v9 && *(v9 + 16) && (*(a2 + 64) & 1) != 0)
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97040, &unk_1C12C4148);
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    v14 = &v8[*(v6 + 36)];
    __asm { FMOV            V0.2D, #1.0 }

    *v14 = _Q0;
    *(v14 + 2) = v11;
    *(v14 + 3) = v12;
  }

  else
  {
    v20 = *(a2 + 72);
    v21 = *(a2 + 80);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97040, &unk_1C12C4148);
    (*(*(v22 - 8) + 16))(v8, a1, v22);
    v23 = &v8[*(v6 + 36)];
    __asm { FMOV            V0.2D, #0.5 }

    *v23 = _Q0;
    *(v23 + 2) = v20;
    *(v23 + 3) = v21;
    if (!v9)
    {
LABEL_8:
      v25 = 0.0;
      goto LABEL_9;
    }
  }

  if (!*(v9 + 16))
  {
    goto LABEL_8;
  }

  v25 = 1.0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1C11E1814(v8, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97010, &qword_1C12C4138);
  *(a3 + *(result + 36)) = v25;
  return result;
}

unint64_t sub_1C11E084C()
{
  result = qword_1EBE97020;
  if (!qword_1EBE97020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97010, &qword_1C12C4138);
    sub_1C11E08D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97020);
  }

  return result;
}

unint64_t sub_1C11E08D8()
{
  result = qword_1EBE97028;
  if (!qword_1EBE97028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97030, &qword_1C12C4140);
    sub_1C0FDB6D4(&qword_1EBE97038, &qword_1EBE97040, &unk_1C12C4148, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97028);
  }

  return result;
}

uint64_t sub_1C11E0990(uint64_t result)
{
  v1 = *(result + 88);
  if (v1)
  {
    v2 = *(result + 56);
    if (v2 && *(v2 + 16))
    {
      v3 = *(result + 64);
    }

    else
    {
      v3 = 0;
    }

    return v1(v3);
  }

  return result;
}

void sub_1C11E0A20(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSearchSuggestionView.Section(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 56);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v12 = *(a1 + 104);
      v11[1] = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078, &qword_1C12C4160);
      sub_1C1265430();
      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    do
    {
      v9 = v8;
      if (v6 == v8)
      {
        break;
      }

      sub_1C11DF790();
      ++v8;
      v10 = v4[8];
      sub_1C11E1790(v4, type metadata accessor for PhotosSearchSuggestionView.Section);
    }

    while (v10 != 1);
    v7 = v6 != v9;
  }

  else
  {
    v7 = 2;
  }

  sub_1C11DDBB0(v7);
}

unint64_t sub_1C11E0BB4()
{
  result = qword_1EBE97048;
  if (!qword_1EBE97048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FA8, &qword_1C12C40A8);
    sub_1C11E0C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97048);
  }

  return result;
}

unint64_t sub_1C11E0C38()
{
  result = qword_1EBE97050;
  if (!qword_1EBE97050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94FC0, qword_1C12BC080);
    sub_1C11DD054(&qword_1EBE97058, type metadata accessor for PhotosSearchSuggestionView.Section, &protocol conformance descriptor for PhotosSearchSuggestionView.Section);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97050);
  }

  return result;
}

unint64_t sub_1C11E0D08()
{
  result = qword_1EBE97068;
  if (!qword_1EBE97068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97060, &qword_1C12C4158);
    sub_1C11DD054(&qword_1EBE97070, type metadata accessor for PhotosSearchBarTokenSizer, &protocol conformance descriptor for PhotosSearchBarTokenSizer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97068);
  }

  return result;
}

uint64_t sub_1C11E0DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97080, &qword_1C12CD860);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v21 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97088, &qword_1C12C4650);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v21 - v5);
  v7 = *(v0 + 56);
  if (v7 && *(v7 + 16))
  {
  }

  else
  {
    v23 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078, &qword_1C12C4160);
    sub_1C1265420();
    if (v22)
    {
      v7 = v22;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_1C11DB5A4(v7, v3);

  v8 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    v9 = &qword_1EBE97080;
    v10 = &qword_1C12CD860;
    v11 = v3;
  }

  else
  {
    v12 = *v3;

    sub_1C11E1790(v3, type metadata accessor for PhotosSearchSuggestionView.Section);
    *&v23 = v12;
    v14 = sub_1C11E1520(v12, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    *(&v21 - 2) = &v23;
    sub_1C11E1698(sub_1C11E1770, v17, v16 & 1, v6, v15);

    v18 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v18) != 1)
    {
      v19 = v6[8];
      sub_1C11E1790(v6, type metadata accessor for PhotosSearchSuggestionView.Section.Item);
      return v19;
    }

    v9 = &qword_1EBE97088;
    v10 = &qword_1C12C4650;
    v11 = v6;
  }

  sub_1C0FD1A5C(v11, v9, v10);
  return 0;
}

double sub_1C11E1038(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_1C11E0DBC();
  return sub_1C11DE4F4(v1, v3, v2 & 1);
}

uint64_t sub_1C11E10E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 296))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C11E1124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C11E1224(uint64_t a1)
{
  sub_1C11E1404(319, &qword_1EDE76B78, sub_1C1160258, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1C11E13B8(319, &qword_1EDE76B80, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1C11E13B8(319, &qword_1EDE76B88, &type metadata for PhotosSearchRange);
      if (v3 <= 0x3F)
      {
        sub_1C11E1404(319, &qword_1EDE76B50, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, MEMORY[0x1E6981AA0]);
        if (v4 <= 0x3F)
        {
          sub_1C11E1404(319, &qword_1EDE77578, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C11E13B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C1265640();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C11E1404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C11E1470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C11E14B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C11E150C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 144) = *(v0 + 24);
  *(v1 + 152) = v2;
}

uint64_t sub_1C11E1520(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  do
  {
    if (!v3)
    {
      break;
    }

    --v3;
    v4 = *(type metadata accessor for PhotosSearchSuggestionView.Section.Item(0) - 8);
  }

  while ((*(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3 + 80) & 1) != 0);
  return v3;
}

unint64_t sub_1C11E15D0(unint64_t result, uint64_t a2, __n128 a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    return sub_1C11DF790();
  }

  __break(1u);
  return result;
}

void *sub_1C11E1698@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>, __n128 a5@<Q0>)
{
  if (a3)
  {
    v7 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v7);
  }

  else
  {
    v10 = a2;
    result = (a1)(a4, &v10, a5);
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v9 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1C11E1790(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C11E1814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97030, &qword_1C12C4140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_29Tm()
{

  if (*(v0 + 104))
  {
  }

  OUTLINED_FUNCTION_12_23();

  return swift_deallocObject();
}

void sub_1C11E1908()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 96) = v2;
}

double sub_1C11E191C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 104) = result;
  return result;
}

void sub_1C11E192C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

void sub_1C11E1940()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 128) = *(v0 + 24);
  *(v1 + 136) = v2;
}

void sub_1C11E1954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 72) = *(v0 + 24);
  *(v1 + 80) = v2;
}

void sub_1C11E1968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 56) = *(v0 + 24);
  *(v1 + 64) = v2;
}

uint64_t keypath_get_59Tm()
{
  OUTLINED_FUNCTION_13_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

void sub_1C11E19B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

unint64_t sub_1C11E1A14()
{
  result = qword_1EBE970B0;
  if (!qword_1EBE970B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE970A8, &qword_1C12C4870);
    sub_1C11E1ACC();
    sub_1C0FDB6D4(&unk_1EDE7BA90, &qword_1EBE970D0, &unk_1C12C4880, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970B0);
  }

  return result;
}

unint64_t sub_1C11E1ACC()
{
  result = qword_1EBE970B8;
  if (!qword_1EBE970B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE970C0, &qword_1C12C4878);
    sub_1C11E1B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970B8);
  }

  return result;
}

unint64_t sub_1C11E1B58()
{
  result = qword_1EBE970C8;
  if (!qword_1EBE970C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970C8);
  }

  return result;
}

uint64_t objectdestroy_117Tm()
{

  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_1C1154CB4(*(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 216))
  {
  }

  if (*(v0 + 232))
  {
  }

  sub_1C1022584(*(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 290));

  return swift_deallocObject();
}

uint64_t PhotosMenuContent.init(menuElementsPromise:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double PhotosEnvironmentMenuContent.init(item:allowedActionTypes:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  *(v2 + 16) = swift_getKeyPath();
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C12A3AB0;
  *(v4 + 32) = v1;
  *v3 = v4;
  *(v3 + 8) = v0;
  return result;
}

uint64_t PhotosEnvironmentMenuContent.init(items:allowedActionTypes:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  result = swift_getKeyPath();
  *(v3 + 8) = v0;
  *(v3 + 16) = result;
  *(v3 + 24) = 0;
  *v3 = v1;
  return result;
}

void PhotosEnvironmentMenuContent.body.getter()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = *(v0 + 24);

  if ((v10 & 1) == 0)
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  v12 = sub_1C11FF37C();

  *v2 = v12;
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosMenuContent.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

uint64_t sub_1C11E1F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v12 = type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle(0);
  MEMORY[0x1EEE9AC00](v12);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97298, &qword_1C12C4C78);
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = &v10 - v6;
  sub_1C11E21B8(a1);
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE972A0, &qword_1C12C4C80);
  sub_1C0FDB6D4(&qword_1EDE76CC8, &qword_1EBE972A0, &qword_1C12C4C80, MEMORY[0x1E697D658]);
  sub_1C1265570();
  swift_getObjectType();
  sub_1C11E24EC(v4);
  sub_1C0FDB6D4(&qword_1EDE76C20, &qword_1EBE97298, &qword_1C12C4C78, MEMORY[0x1E697D6A8]);
  sub_1C11E4E04(&qword_1EBE972A8, type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle, &unk_1C12C4CB8);
  v8 = v11;
  sub_1C1264AA0();
  sub_1C11E4AFC(v4);
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_1C11E21B8(uint64_t a1)
{
  sub_1C1266200();
  swift_unknownObjectRetain();
  v2 = sub_1C12661F0();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = a1;
  swift_unknownObjectRetain();
  v5 = sub_1C12661F0();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = a1;
  sub_1C1265620();
  return v8;
}

uint64_t sub_1C11E22A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE972B0, &qword_1C12C4C88);
  sub_1C11E4B68();
  return sub_1C1265380();
}

uint64_t sub_1C11E2344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_1C1265EA0();

  sub_1C0FDB9AC();
  result = sub_1C12648F0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

void sub_1C11E23C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 image];
  if (v4)
  {
    v5 = v4;
    sub_1C12652D0();

    sub_1C1263C20();
  }

  else
  {
    v6 = [a1 systemImageName];
    if (v6)
    {
      v7 = v6;
      sub_1C1265EA0();
    }

    sub_1C1265320();
    sub_1C1263C20();
  }

  *a2 = v8;
  *(a2 + 8) = v9;
}

uint64_t sub_1C11E24EC@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 role];
  if (v3 == 2)
  {
    sub_1C1262850();
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    sub_1C1262840();
LABEL_5:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:
  v5 = sub_1C1262860();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t sub_1C11E257C(uint64_t a1)
{
  v2 = sub_1C12640E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE972C0, &unk_1C12C4C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C0FD0AC4();
  (*(v3 + 16))(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v10 = a1;
  sub_1C12640C0();
  sub_1C11E4E04(&qword_1EDE76DB0, MEMORY[0x1E697C948], MEMORY[0x1E697C940]);
  return sub_1C1265470();
}

uint64_t sub_1C11E2794()
{
  v0 = sub_1C12640A0();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_1C11E27F4(uint64_t a1)
{
  sub_1C11E4338(a1, sub_1C0FF7688, &qword_1EBE97220, &qword_1C12C4BA8);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE970F0, &qword_1C12C4B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE970F8, &qword_1C12C4B18);
  sub_1C0FDB6D4(&unk_1EDE76AB0, &qword_1EBE970F0, &qword_1C12C4B10, MEMORY[0x1E69E6338]);
  sub_1C11E3F3C(&qword_1EBE97108, &unk_1EBE970F8, &qword_1C12C4B18, sub_1C11E3FB8);
  return sub_1C1265680();
}

uint64_t sub_1C11E2944@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97168, &qword_1C12C4B40);
  v44 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v38 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97180, &qword_1C12C4B50);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v38 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97150, &qword_1C12C4B38);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v38 - v5;
  v48 = sub_1C1265670();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97140, &qword_1C12C4B30);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97188, &qword_1C12C4B58);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97190, &qword_1C12C4B60);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v38 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97128, &qword_1C12C4B28);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v55 = &unk_1F40B5E98;
  v20 = swift_dynamicCastObjCProtocolConditional();
  if (v20)
  {
    *v16 = v20;
    swift_storeEnumTagMultiPayload();
    sub_1C11E40FC();
    sub_1C0FDB6D4(&qword_1EBE97138, &qword_1EBE97140, &qword_1C12C4B30, MEMORY[0x1E697CD28]);
    swift_unknownObjectRetain();
    sub_1C1263C20();
    sub_1C0FD0AC4();
    swift_storeEnumTagMultiPayload();
    sub_1C11E4044();
    sub_1C11E4150();
    v21 = v53;
    sub_1C1263C20();
    sub_1C0FD1A5C(v19, &qword_1EBE97128, &qword_1C12C4B28);
  }

  else
  {
    v39 = v10;
    v40 = v11;
    v22 = v51;
    v41 = v17;
    v42 = v13;
    v54 = &unk_1F40B6708;
    v23 = swift_dynamicCastObjCProtocolConditional();
    if (v23)
    {
      MEMORY[0x1EEE9AC00](v23);
      *(&v38 - 2) = v24;
      MEMORY[0x1EEE9AC00](v24);
      *(&v38 - 2) = v25;
      swift_unknownObjectRetain();
      v51 = a1;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE971F8, &qword_1C12C4B68);
      sub_1C0FDB6D4(&qword_1EDE76B30, &qword_1EBE971F8, &qword_1C12C4B68, MEMORY[0x1E6981F48]);
      sub_1C11E3760();
      v26 = v39;
      sub_1C1264750();
      v27 = v50;
      (*(v50 + 16))(v16, v26, v8);
      swift_storeEnumTagMultiPayload();
      sub_1C11E40FC();
      sub_1C0FDB6D4(&qword_1EBE97138, &qword_1EBE97140, &qword_1C12C4B30, MEMORY[0x1E697CD28]);
      sub_1C1263C20();
      sub_1C0FD0AC4();
      swift_storeEnumTagMultiPayload();
      sub_1C11E4044();
      sub_1C11E4150();
      v21 = v53;
      sub_1C1263C20();
      swift_unknownObjectRelease();
      sub_1C0FD1A5C(v19, &qword_1EBE97128, &qword_1C12C4B28);
      (*(v27 + 8))(v26, v8);
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C1265660();
        v28 = v45;
        v29 = v48;
        (*(v45 + 16))(v47, v7, v48);
        swift_storeEnumTagMultiPayload();
        sub_1C11E4E04(&qword_1EDE76B68, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
        sub_1C11E420C();
        sub_1C1263C20();
        sub_1C0FD0AC4();
        swift_storeEnumTagMultiPayload();
        sub_1C11E4044();
        sub_1C11E4150();
        v21 = v53;
        sub_1C1263C20();
        sub_1C0FD1A5C(v22, &unk_1EBE97150, &qword_1C12C4B38);
        (*(v28 + 8))(v7, v29);
      }

      else
      {
        sub_1C12623A0();
        v30 = swift_dynamicCastClass();
        v31 = v49;
        if (!v30)
        {
          v35 = 1;
          v21 = v53;
          goto LABEL_10;
        }

        MEMORY[0x1EEE9AC00](v30);
        *(&v38 - 2) = v32;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97178, &qword_1C12C4B48);
        sub_1C11E429C();
        v33 = v43;
        sub_1C1265700();
        v34 = v44;
        (*(v44 + 16))(v47, v33, v31);
        swift_storeEnumTagMultiPayload();
        sub_1C11E4E04(&qword_1EDE76B68, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
        sub_1C11E420C();
        sub_1C1263C20();
        sub_1C0FD0AC4();
        swift_storeEnumTagMultiPayload();
        sub_1C11E4044();
        sub_1C11E4150();
        v21 = v53;
        sub_1C1263C20();
        swift_unknownObjectRelease();
        sub_1C0FD1A5C(v22, &unk_1EBE97150, &qword_1C12C4B38);
        (*(v34 + 8))(v33, v31);
      }
    }
  }

  v35 = 0;
LABEL_10:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97118, &qword_1C12C4B20);
  return __swift_storeEnumTagSinglePayload(v21, v35, 1, v36);
}

void sub_1C11E3338(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 childElements];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97200, &qword_1C12C4B70);
  v4 = sub_1C12660B0();

  *a2 = v4;
}

double sub_1C11E33A4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 image];
  if (v4)
  {
    v5 = v4;
    sub_1C12652D0();

    sub_1C1263C20();
  }

  else
  {
    v6 = [a1 systemImageName];
    if (v6)
    {
      v7 = v6;
      sub_1C1265EA0();
    }

    sub_1C1265320();
    sub_1C1263C20();
  }

  v8 = [a1 title];
  sub_1C1265EA0();

  sub_1C0FDB9AC();
  v9 = sub_1C12648F0();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v13 &= 1u;
  sub_1C0FDB850(v9, v11, v13);

  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  sub_1C0FDB8E8(v9, v11, v13);

  return result;
}

uint64_t sub_1C11E3590()
{
  v0 = sub_1C1262390();
  sub_1C11E4338(v0, sub_1C0FF7688, &qword_1EBE97218, &qword_1C12C4BA0);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97208, &qword_1C12C4B98);
  sub_1C0FDB6D4(&qword_1EDE76AC0, &unk_1EBE97208, &qword_1C12C4B98, MEMORY[0x1E69E6338]);
  sub_1C11E40FC();
  return sub_1C1265680();
}

unint64_t sub_1C11E3760()
{
  result = qword_1EBE970D8;
  if (!qword_1EBE970D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970D8);
  }

  return result;
}

void sub_1C11E37E0()
{
  OUTLINED_FUNCTION_23();
  v73 = v0;
  v67 = sub_1C1265730();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v65 = v5 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97250, &qword_1C12A7B08);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v59 - v11;
  v12 = sub_1C12639E0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D78, &qword_1C12A7A90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v59 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97260, &qword_1C12C4BD8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  v70 = v7;
  v61 = *(v7 + 80);
  v60 = (v61 + 32) & ~v61;
  v72 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0] + v60;
  sub_1C0FD0AC4();
  (*(v14 + 32))(v18, v21, v12);
  v26 = MEMORY[0x1E697F4E0];
  sub_1C11E4E04(&unk_1EDE76F48, MEMORY[0x1E697F4E0], MEMORY[0x1E697F4F8]);
  v68 = v12;
  sub_1C1265F60();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97270, &qword_1C12C4BE0) + 36);
  v28 = sub_1C11E4E04(&qword_1EDE76F40, v26, MEMORY[0x1E697F508]);
  v73 = 0;
  v29 = 0;
  v63 = (v2 + 32);
  v64 = (v2 + 16);
  for (i = v24; ; v24 = i)
  {
    sub_1C1266310();
    if (*&v24[v27] == v74)
    {
      *&v24[*(v59 + 36)] = v73;
      sub_1C0FD1A5C(v24, &unk_1EBE97260, &qword_1C12C4BD8);
      v56 = *(v72 + 3);
      if (v56 >= 2)
      {
        v57 = v56 >> 1;
        v55 = __OFSUB__(v57, v29);
        v58 = v57 - v29;
        if (v55)
        {
          goto LABEL_37;
        }

        *(v72 + 2) = v58;
      }

      OUTLINED_FUNCTION_22_0();
      return;
    }

    v30 = sub_1C12663A0();
    v31 = v65;
    v32 = v67;
    (*v64)(v65);
    v30(&v74, 0);
    v33 = v28;
    v34 = v27;
    v35 = v33;
    sub_1C1266320();
    v36 = *(v69 + 48);
    v37 = v66;
    v38 = v73;
    *v66 = v73;
    (*v63)(&v37[v36], v31, v32);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    sub_1C1178F50();
    if (v29)
    {
      v39 = v72;
    }

    else
    {
      v40 = v72;
      OUTLINED_FUNCTION_7_39();
      if (v42)
      {
        goto LABEL_34;
      }

      v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
      if (v43 <= 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = v43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97280, &qword_1C12C4BE8);
      v45 = *(v70 + 72);
      v46 = v60;
      v39 = swift_allocObject();
      v47 = _swift_stdlib_malloc_size(v39);
      if (!v45)
      {
        goto LABEL_35;
      }

      v48 = v47 - v46;
      if (v47 - v46 == 0x8000000000000000 && v45 == -1)
      {
        goto LABEL_36;
      }

      v50 = v48 / v45;
      *(v39 + 2) = v44;
      *(v39 + 3) = 2 * (v48 / v45);
      v51 = &v39[v46];
      v52 = *(v40 + 3);
      v53 = (v52 >> 1) * v45;
      if (*(v40 + 2))
      {
        if (v39 < v40 || v51 >= &v40[v46 + v53])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v39 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        *(v40 + 2) = 0;
      }

      v25 = &v51[v53];
      v29 = (v50 & 0x7FFFFFFFFFFFFFFFLL) - (v52 >> 1);

      v27 = v34;
      v38 = v73;
    }

    v55 = __OFSUB__(v29--, 1);
    if (v55)
    {
      goto LABEL_33;
    }

    v28 = v35;
    sub_1C1178F50();
    v25 += *(v70 + 72);
    v72 = v39;
    v73 = v38 + 1;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1C11E3DB0(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
  while (v3 != v2)
  {
    *&v20[0] = v2;
    sub_1C0FDB0A8(v4, v20 + 8);
    v21 = v20[0];
    v22 = v20[1];
    v23 = v20[2];
    if (!v1)
    {
      OUTLINED_FUNCTION_7_39();
      if (v7)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_6_35();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97248, &qword_1C12C4BD0);
      v8 = swift_allocObject();
      v9 = (_swift_stdlib_malloc_size(v8) - 32) / 48;
      v8[2] = v6;
      v8[3] = 2 * v9;
      v10 = (v8 + 4);
      v11 = v5[3];
      v12 = v11 >> 1;
      if (v5[2])
      {
        if (v8 != v5 || v10 >= &v5[6 * v12 + 4])
        {
          memmove(v8 + 4, v5 + 4, 48 * v12);
        }

        v5[2] = 0;
      }

      v6 = (v10 + 48 * v12);
      v1 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - (v11 >> 1);

      v5 = v8;
    }

    v14 = __OFSUB__(v1--, 1);
    if (v14)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v15 = v21;
    v16 = v23;
    v6[1] = v22;
    v6[2] = v16;
    *v6 = v15;
    v6 += 3;
    v4 += 40;
    ++v2;
  }

  v17 = v5[3];
  if (v17 < 2)
  {
    return;
  }

  v18 = v17 >> 1;
  v14 = __OFSUB__(v18, v1);
  v19 = v18 - v1;
  if (!v14)
  {
    v5[2] = v19;
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1C11E3F3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C11E3FB8()
{
  result = qword_1EBE97110;
  if (!qword_1EBE97110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97118, &qword_1C12C4B20);
    sub_1C11E4044();
    sub_1C11E4150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97110);
  }

  return result;
}

unint64_t sub_1C11E4044()
{
  result = qword_1EBE97120;
  if (!qword_1EBE97120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97128, &qword_1C12C4B28);
    sub_1C11E40FC();
    sub_1C0FDB6D4(&qword_1EBE97138, &qword_1EBE97140, &qword_1C12C4B30, MEMORY[0x1E697CD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97120);
  }

  return result;
}

unint64_t sub_1C11E40FC()
{
  result = qword_1EBE97130;
  if (!qword_1EBE97130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97130);
  }

  return result;
}

unint64_t sub_1C11E4150()
{
  result = qword_1EBE97148;
  if (!qword_1EBE97148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97150, &qword_1C12C4B38);
    sub_1C11E4E04(&qword_1EDE76B68, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    sub_1C11E420C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97148);
  }

  return result;
}

unint64_t sub_1C11E420C()
{
  result = qword_1EBE97160;
  if (!qword_1EBE97160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97168, &qword_1C12C4B40);
    sub_1C11E429C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97160);
  }

  return result;
}

unint64_t sub_1C11E429C()
{
  result = qword_1EBE97170;
  if (!qword_1EBE97170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97178, &qword_1C12C4B48);
    sub_1C11E40FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97170);
  }

  return result;
}

void sub_1C11E4338(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = a2();
  v6 = 0;
  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = (MEMORY[0x1E69E7CC0] + 32);
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1;
  while (v5 != v6)
  {
    if (v8)
    {
      v12 = MEMORY[0x1C68F02D0](v6, a1);
    }

    else
    {
      if (v6 >= *(v11 + 16))
      {
        goto LABEL_29;
      }

      v12 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v7)
    {
      OUTLINED_FUNCTION_7_39();
      if (v14)
      {
        goto LABEL_31;
      }

      v15 = v5;
      v16 = v8;
      v17 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v19 = swift_allocObject();
      v20 = (_swift_stdlib_malloc_size(v19) - 32) / 16;
      v19[2] = v18;
      v19[3] = 2 * v20;
      v21 = (v19 + 4);
      v22 = v9[3];
      v23 = v22 >> 1;
      if (v9[2])
      {
        if (v19 != v9 || v21 >= &v9[2 * v23 + 4])
        {
          memmove(v19 + 4, v9 + 4, 16 * v23);
        }

        v9[2] = 0;
      }

      v10 = (v21 + 16 * v23);
      v7 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - (v22 >> 1);

      v9 = v19;
      v8 = v16;
      v5 = v15;
      v11 = v29;
      a1 = v30;
    }

    v25 = __OFSUB__(v7--, 1);
    if (v25)
    {
      goto LABEL_30;
    }

    *v10 = v6;
    v10[1] = v12;
    v10 += 2;
    ++v6;
  }

  v26 = v9[3];
  if (v26 < 2)
  {
    return;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v7);
  v28 = v27 - v7;
  if (!v25)
  {
    v9[2] = v28;
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1C11E44EC()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97238, &qword_1C12C4BC0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_58(v6, v7, v8, v9, v10, v11, v12, v13, v28);
  v14 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_26(v15);
  while (1)
  {
    if (v29 == v1)
    {
      v25 = v14[3];
      if (v25 >= 2)
      {
        v26 = v25 >> 1;
        v24 = __OFSUB__(v26, v0);
        v27 = v26 - v0;
        if (v24)
        {
          goto LABEL_31;
        }

        v14[2] = v27;
      }

      OUTLINED_FUNCTION_22_0();
      return;
    }

    type metadata accessor for PhotosSearchSuggestionView.Section(0);
    *v2 = v1;
    sub_1C11E4974();
    OUTLINED_FUNCTION_18_30();
    if (!v0)
    {
      OUTLINED_FUNCTION_7_39();
      if (v16)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_6_35();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97240, &qword_1C12C4BC8);
      v18 = OUTLINED_FUNCTION_11_31(v17);
      v19 = _swift_stdlib_malloc_size(v18);
      if (!&qword_1C12C4BC0)
      {
        goto LABEL_29;
      }

      if (v19 - v3 == 0x8000000000000000 && (&qword_1C12C4BC0 + 1) == 0)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_48(v19 - v3);
      if (v21)
      {
        OUTLINED_FUNCTION_12_24();
        v23 = !v23 || v3 >= v22;
        if (v23)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 != v14)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      OUTLINED_FUNCTION_15_27();
    }

    v24 = __OFSUB__(v0--, 1);
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_19_19();
    OUTLINED_FUNCTION_9_33();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C11E4730()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97228, &qword_1C12C4BB0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_58(v6, v7, v8, v9, v10, v11, v12, v13, v28);
  v14 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_26(v15);
  while (1)
  {
    if (v29 == v1)
    {
      v25 = v14[3];
      if (v25 >= 2)
      {
        v26 = v25 >> 1;
        v24 = __OFSUB__(v26, v0);
        v27 = v26 - v0;
        if (v24)
        {
          goto LABEL_31;
        }

        v14[2] = v27;
      }

      OUTLINED_FUNCTION_22_0();
      return;
    }

    type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    *v2 = v1;
    sub_1C11E4974();
    OUTLINED_FUNCTION_18_30();
    if (!v0)
    {
      OUTLINED_FUNCTION_7_39();
      if (v16)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_6_35();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97230, &qword_1C12C4BB8);
      v18 = OUTLINED_FUNCTION_11_31(v17);
      v19 = _swift_stdlib_malloc_size(v18);
      if (!&qword_1C12C4BB0)
      {
        goto LABEL_29;
      }

      if (v19 - v3 == 0x8000000000000000 && (&qword_1C12C4BB0 + 1) == 0)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_48(v19 - v3);
      if (v21)
      {
        OUTLINED_FUNCTION_12_24();
        v23 = !v23 || v3 >= v22;
        if (v23)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 != v14)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      OUTLINED_FUNCTION_15_27();
    }

    v24 = __OFSUB__(v0--, 1);
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_19_19();
    OUTLINED_FUNCTION_9_33();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1C11E4974()
{
  OUTLINED_FUNCTION_17_4();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_18();
  v3(v2);
  return v0;
}

unint64_t sub_1C11E49DC()
{
  result = qword_1EBE97288;
  if (!qword_1EBE97288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97290, &qword_1C12C4C20);
    sub_1C11E3F3C(&qword_1EBE97108, &unk_1EBE970F8, &qword_1C12C4B18, sub_1C11E3FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97288);
  }

  return result;
}

uint64_t type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle(uint64_t a1)
{
  result = qword_1EBE972D0;
  if (!qword_1EBE972D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11E4AFC(uint64_t a1)
{
  v2 = type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C11E4B68()
{
  result = qword_1EDE76E48;
  if (!qword_1EDE76E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE972B0, &qword_1C12C4C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E48);
  }

  return result;
}

id sub_1C11E4BE4@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 32) state];
  *a1 = result == 1;
  return result;
}

uint64_t objectdestroyTm_20()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1C11E4CA0(uint64_t a1)
{
  sub_1C11E4D0C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C11E4D0C(uint64_t a1)
{
  if (!qword_1EDE776D0)
  {
    sub_1C1262860();
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE776D0);
    }
  }
}

uint64_t sub_1C11E4D80()
{
  sub_1C12640E0();

  return sub_1C11E2794();
}

uint64_t sub_1C11E4E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1)
{

  return swift_allocObject();
}

id UIView.photosVirtualViewport(frame:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = objc_allocWithZone(type metadata accessor for PXPlatformViewVirtualViewport());
  result = sub_1C11E4FB4(v5, a2, a3, a4, a5);
  *a1 = result;
  return result;
}

id sub_1C11E4FB4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_view] = a1;
  v6 = &v5[OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_frame];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for PXPlatformViewVirtualViewport();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C11E5020(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(v5 + OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_view);
  sub_1C1266580();

  return [v7 convertRect:a1 toCoordinateSpace:?];
}

uint64_t sub_1C11E5098(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_view) convertRect:a1 fromCoordinateSpace:?];
  sub_1C1266670();

  return sub_1C1266580();
}

id sub_1C11E5178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPlatformViewVirtualViewport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PhotosFavoriteButtonStyle.init(isFavorite:tint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

double static ButtonStyle<>.photosMaterialLabelButtonStyle(onlyIcon:background:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for PhotosMaterialLabelButtonStyle(0) + 24);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE950D0, &unk_1C12BC180);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;

  return result;
}

void PhotosInteractiveButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  OUTLINED_FUNCTION_22_20();
  v3 = sub_1C1264060();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97318, &qword_1C12C4DD8);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_8();
  sub_1C1264070();
  if (sub_1C1264080())
  {
    v11 = 0.9;
  }

  else
  {
    v11 = 1.0;
  }

  sub_1C1265B90();
  v13 = v12;
  v15 = v14;
  (*(v5 + 32))(v2, v9, v3);
  v16 = v2 + *(v1 + 44);
  *v16 = v11;
  *(v16 + 8) = v11;
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v17 = sub_1C1265A30();
  v18 = sub_1C1264080();
  sub_1C0FFC488(v2, v0, &qword_1EBE97318, &qword_1C12C4DD8);
  v19 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97320, &qword_1C12C4DE0) + 36);
  *v19 = v17;
  *(v19 + 8) = v18 & 1;
  OUTLINED_FUNCTION_13_27();
}

uint64_t PhotosMaterialTextButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97328, &qword_1C12C4DE8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30_9();
  *v1 = sub_1C12659A0();
  v1[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97330, &qword_1C12C4DF0);
  sub_1C11E5A28(v1 + *(v7 + 44));
  v8 = sub_1C12659A0();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97338, &qword_1C12C4DF8);
  OUTLINED_FUNCTION_48_6(v11);
  v12 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97340, &qword_1C12C4E00) + 36));
  *v12 = v8;
  v12[1] = v10;
  LOBYTE(v8) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97348, &qword_1C12C4E08);
  OUTLINED_FUNCTION_38_9();
  *v13 = v8;
  OUTLINED_FUNCTION_7_40(v13);
  LOBYTE(v8) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97350, &qword_1C12C4E10);
  OUTLINED_FUNCTION_38_9();
  *v14 = v8;
  OUTLINED_FUNCTION_7_40(v14);
  if (qword_1EBE8FD60 != -1)
  {
    OUTLINED_FUNCTION_5_34(&qword_1EBE8FD60);
  }

  v15 = sub_1C1265900();
  v16 = __swift_project_value_buffer(v15, qword_1EBE97300);
  v17 = sub_1C1264470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97358, &qword_1C12C4E18);
  OUTLINED_FUNCTION_35_9();
  (*(v18 + 16))(v3, v16, v15);
  *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97360, &unk_1C12C4E20) + 36)) = v17;
  v19 = v1 + *(v4 + 36);
  v20 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  (*(v21 + 104))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *&v19[v22] = v23;
  sub_1C1264080();
  v24 = OUTLINED_FUNCTION_2();
  sub_1C0FFC488(v24, v25, v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97368, &qword_1C12C4E30);
  return OUTLINED_FUNCTION_15_28(v28);
}

void PhotosMaterialTintedTextButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v1 = OUTLINED_FUNCTION_4_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38_0();
  *v0 = sub_1C12659A0();
  v0[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97330, &qword_1C12C4DF0);
  sub_1C11E5A28(v0 + *(v6 + 44));
  v7 = sub_1C12659A0();
  v9 = v8;
  v10 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97338, &qword_1C12C4DF8) + 36);
  sub_1C11E83BC(v10);
  v11 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97340, &qword_1C12C4E00) + 36));
  *v11 = v7;
  v11[1] = v9;
  LOBYTE(v7) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  v12 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97348, &qword_1C12C4E08) + 36);
  *v12 = v7;
  OUTLINED_FUNCTION_7_40(v12);
  LOBYTE(v7) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  v13 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97350, &qword_1C12C4E10) + 36);
  *v13 = v7;
  OUTLINED_FUNCTION_7_40(v13);
  v14 = sub_1C1265190();
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97378, &qword_1C12C4E40) + 36)) = v14;
  v15 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97380, &qword_1C12C4E48) + 36);
  sub_1C1263060();
  LOBYTE(v9) = sub_1C1264470();
  v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B38, &qword_1C12C4E50) + 36)] = v9;
  v16 = v0 + *(v3 + 44);
  v17 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  (*(v18 + 104))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *&v16[v19] = v20;
  sub_1C1264080();
  OUTLINED_FUNCTION_27_12();
  sub_1C0FFC488(v21, v22, v23, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97388, &qword_1C12C4E58);
  OUTLINED_FUNCTION_12_25(v25);
  OUTLINED_FUNCTION_13_27();
}

uint64_t sub_1C11E5A28@<X0>(uint64_t a1@<X8>)
{
  v43[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v46 = v43 - v8;
  v9 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440, &qword_1C12C4F58);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30_9();
  sub_1C1264070();
  v24 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v43[2] = v22;
  v44 = v1;
  v26 = (v1 + *(v22 + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = v11[13];
  v27(v18, *MEMORY[0x1E697E718], v9);
  v27(v15, *MEMORY[0x1E697E728], v9);
  OUTLINED_FUNCTION_9_34();
  v30 = sub_1C11EC3E0(v28, v29, MEMORY[0x1E697E748]);
  result = OUTLINED_FUNCTION_37_6(v30);
  if (result)
  {
    v32 = v11[4];
    v33 = v46;
    v32(v46, v18, v9);
    v32((v33 + *(v2 + 48)), v15, v9);
    sub_1C0FFC424(v33, v6, &qword_1EBE96B88, &unk_1C12C4E60);
    v34 = *(v2 + 48);
    v32(v21, v6, v9);
    v35 = v11[1];
    v35(v6 + v34, v9);
    sub_1C0FFC488(v33, v6, &qword_1EBE96B88, &unk_1C12C4E60);
    v32(&v21[*(v45 + 36)], (v6 + *(v2 + 48)), v9);
    v35(v6, v9);
    sub_1C11EE280();
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_14_6();
    sub_1C10239B0(v36, v37, v38, v39);
    v40 = v44;
    sub_1C1264BC0();
    OUTLINED_FUNCTION_14_6();
    sub_1C0F9E27C(v41, v42);
    return sub_1C0F9E27C(v40, &qword_1EBE97440);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PhotosMaterialSymbolButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_34_10();
  v3 = v2;
  v96 = v4;
  sub_1C1263070();
  OUTLINED_FUNCTION_0();
  v93 = v6;
  v94 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v92 = (v8 - v7);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v90 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v83 - v13;
  sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v100 = v15;
  v101 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v99 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v83 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v87 = v21;
  v97 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30();
  v27 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v83 - v29;
  v31 = sub_1C1264060();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97390, &qword_1C12C4E70);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_8();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97398, &qword_1C12C4E78);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_34();
  v84 = v41;
  v95 = v3;
  sub_1C1264070();
  sub_1C1263020();
  sub_1C1262FE0();
  v42 = *(v23 + 8);
  v43 = v30;
  v44 = v97;
  v42(v43, v97);
  OUTLINED_FUNCTION_2_59();
  sub_1C11EC3E0(v45, v46, MEMORY[0x1E697C8C8]);
  sub_1C1264B20();
  v47 = v27;
  v48 = v98;
  v42(v47, v44);
  v50 = v99;
  v49 = v100;
  v52 = *(v33 + 8);
  v51 = v33 + 8;
  v52(v37, v31);
  v53 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v85 = v38;
  v55 = *(v38 + 36);
  v97 = v1;
  v56 = (v1 + v55);
  *v56 = KeyPath;
  v56[1] = v53;
  v57 = v49;
  v58 = *(v49 + 104);
  v59 = v101;
  v58(v48, *MEMORY[0x1E697E718], v101);
  v58(v50, *MEMORY[0x1E697E728], v59);
  OUTLINED_FUNCTION_9_34();
  sub_1C11EC3E0(v60, v61, MEMORY[0x1E697E748]);
  if ((sub_1C1265DA0() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v62 = *(v57 + 32);
  v63 = v88;
  v62(v88, v48, v59);
  v64 = v91;
  v62((v63 + *(v91 + 48)), v50, v59);
  v65 = v90;
  sub_1C0FFC424(v63, v90, &qword_1EBE96B88, &unk_1C12C4E60);
  v66 = *(v64 + 48);
  v67 = v87;
  v62(v87, v65, v59);
  v68 = *(v57 + 8);
  v68(v65 + v66, v59);
  sub_1C0FFC488(v63, v65, &qword_1EBE96B88, &unk_1C12C4E60);
  v62(&v67[*(v89 + 36)], (v65 + *(v64 + 48)), v59);
  v68(v65, v59);
  sub_1C11EC428();
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_14_6();
  sub_1C10239B0(v69, v70, v71, v72);
  v51 = v84;
  v73 = v97;
  sub_1C1264BC0();
  OUTLINED_FUNCTION_14_6();
  sub_1C0F9E27C(v74, v75);
  sub_1C0F9E27C(v73, &qword_1EBE97390);
  v48 = v92;
  sub_1C1263060();
  if (qword_1EBE8FD60 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_5_34(&qword_1EBE8FD60);
  }

  v76 = sub_1C1265900();
  v77 = __swift_project_value_buffer(v76, qword_1EBE97300);
  v78 = v51 + *(v86 + 36);
  v80 = v93;
  v79 = v94;
  (*(v93 + 16))(v78, v48, v94);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973A8, &qword_1C12C4EB8);
  (*(*(v76 - 8) + 16))(v78 + *(v81 + 52), v77, v76);
  (*(v80 + 8))(v48, v79);
  sub_1C1264080();
  sub_1C0FFC488(v51, v96, &qword_1EBE97398, &qword_1C12C4E78);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973B0, &qword_1C12C4EC0);
  OUTLINED_FUNCTION_15_28(v82);
  OUTLINED_FUNCTION_33();
}

void PhotosMaterialLabelButtonStyle.init(onlyIcon:background:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for PhotosMaterialLabelButtonStyle(0) + 24);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE950D0, &unk_1C12BC180);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
}

uint64_t sub_1C11E65F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE950D0, &unk_1C12BC180);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosMaterialLabelButtonStyle(0);
  sub_1C0FFC424(v1 + *(v10 + 24), v9, &qword_1EBE950D0, &unk_1C12BC180);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1262A10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C11E6824()
{
  sub_1C1262A10();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_2();
  v5(v4);
  return MEMORY[0x1C68ECE20](v3);
}

void PhotosMaterialLabelButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v6 = v0;
  v8 = v7;
  v53 = v9;
  sub_1C1265900();
  OUTLINED_FUNCTION_0();
  v47 = v11;
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v46 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973B8, &qword_1C12C4EC8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973C0, &qword_1C12C4ED0);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973C8, &qword_1C12C4ED8) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973D0, &qword_1C12C4EE0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_4();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973D8, &qword_1C12C4EE8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_26_11();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973E0, &qword_1C12C4EF0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_7();
  *v16 = sub_1C12659A0();
  v16[1] = v25;
  v26 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973E8, &unk_1C12C4EF8) + 44);
  v52 = v8;
  sub_1C11E6DC4(v8, v6, v26);
  LOBYTE(v8) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  sub_1C0FFC488(v16, v2, &qword_1EBE973B8, &qword_1C12C4EC8);
  v27 = (v2 + *(v5 + 44));
  *v27 = v8;
  OUTLINED_FUNCTION_7_40(v27);
  LOBYTE(v16) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  sub_1C0FFC488(v2, v21, &qword_1EBE973C0, &qword_1C12C4ED0);
  v28 = &v21[*(v18 + 44)];
  *v28 = v16;
  OUTLINED_FUNCTION_7_40(v28);
  if (*(v6 + 8))
  {
    v29 = *(v6 + 8);
  }

  else
  {
    v31 = v46;
    v30 = v47;
    v32 = v48;
    if (qword_1EBE8FD60 != -1)
    {
      OUTLINED_FUNCTION_5_34(&qword_1EBE8FD60);
    }

    v33 = __swift_project_value_buffer(v32, qword_1EBE97300);
    (*(v30 + 16))(v31, v33, v32);
    OUTLINED_FUNCTION_2();
    v29 = sub_1C1262C90();
  }

  v34 = sub_1C1264470();
  sub_1C0FFC488(v21, v4, &qword_1EBE973C8, &qword_1C12C4ED8);
  v35 = v4 + *(v51 + 36);
  *v35 = v29;
  *(v35 + 8) = v34;
  v36 = v1 + *(v49 + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v38 = *(v37 + 104);
  v39 = OUTLINED_FUNCTION_18();
  v38(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *(v36 + v40) = v41;
  sub_1C0FFC488(v4, v1, &qword_1EBE973D0, &qword_1C12C4EE0);
  v42 = v3 + *(v50 + 36);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80, &qword_1C12C2260);
  sub_1C1263410();
  v44 = OUTLINED_FUNCTION_18();
  v38(v44);
  *(v42 + *(v43 + 36)) = 0;
  sub_1C0FFC488(v1, v3, &qword_1EBE973D8, &qword_1C12C4EE8);
  sub_1C1264080();
  sub_1C0FFC488(v3, v53, &qword_1EBE973E0, &qword_1C12C4EF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973F0, &qword_1C12C4F08);
  OUTLINED_FUNCTION_12_25(v45);
  OUTLINED_FUNCTION_13_27();
}

uint64_t sub_1C11E6DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v88 = a1;
  v80 = a3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440, &qword_1C12C4F58);
  MEMORY[0x1EEE9AC00](v94);
  v91 = v69 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97828, &qword_1C12C5970);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v69 - v12;
  v14 = sub_1C1263130();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v69 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  MEMORY[0x1EEE9AC00](v92);
  v89 = v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20, &qword_1C12BEA30);
  v86 = *(v21 - 8);
  v87 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97830, &qword_1C12C5978);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v77 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v69 - v27;
  v100 = xmmword_1C12C4D90;
  v101 = 0;
  if (qword_1EDE7AFB8 != -1)
  {
    swift_once();
  }

  v93 = v28;
  v98 = qword_1EDE7AFC0;
  v99 = dword_1EDE7AFC8;
  if (qword_1EDE7AEC0 != -1)
  {
    swift_once();
  }

  v96 = word_1EDE7AEC8;
  v97 = byte_1EBE9468C | HIBYTE(word_1EDE7AEC8);
  v81 = v23;
  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C(v100, *(&v100 + 1));
  v29 = v15;
  v30 = v15 + 104;
  v31 = *(v15 + 104);
  v83 = *MEMORY[0x1E697E6E8];
  v31(v19);
  v32 = v95;
  v82 = *MEMORY[0x1E697E720];
  v84 = v31;
  v85 = v30;
  v31(v95);
  v33 = sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1C1265DA0();
  if (result)
  {
    v74 = v7;
    v76 = v33;
    v35 = *(v29 + 32);
    v36 = v13;
    v35(v13, v19, v14);
    v35(&v13[*(v8 + 48)], v32, v14);
    v75 = v19;
    v37 = v13;
    v38 = v10;
    sub_1C0FFC424(v37, v10, &qword_1EBE96B88, &unk_1C12C4E60);
    v39 = *(v8 + 48);
    v40 = v89;
    v35(v89, v38, v14);
    v41 = *(v29 + 8);
    v41(v38 + v39, v14);
    sub_1C0FFC488(v36, v38, &qword_1EBE96B88, &unk_1C12C4E60);
    v71 = v8;
    v42 = *(v8 + 48);
    v43 = v40;
    v44 = &v40[*(v92 + 36)];
    v72 = v35;
    v35(v44, (v38 + v42), v14);
    v73 = v29 + 8;
    v70 = v41;
    v41(v38, v14);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80, &unk_1C12BE930);
    v46 = sub_1C1062140();
    *&v100 = v45;
    *(&v100 + 1) = v46;
    swift_getOpaqueTypeConformance2();
    v47 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
    v48 = v87;
    v69[1] = v47;
    v49 = v81;
    sub_1C1264BC0();
    v50 = v95;
    v51 = v91;
    sub_1C0F9E27C(v43, &qword_1EBE96B00);
    (*(v86 + 8))(v49, v48);
    sub_1C1264070();
    sub_1C11E77D0();
    v52 = sub_1C1264540();

    KeyPath = swift_getKeyPath();
    v54 = &v51[*(v94 + 36)];
    *v54 = KeyPath;
    v54[1] = v52;
    v55 = v75;
    v56 = v84;
    (v84)(v75, v83, v14);
    (v56)(v50, v82, v14);
    result = sub_1C1265DA0();
    if (result)
    {
      v57 = v55;
      v58 = v72;
      v72(v36, v57, v14);
      v59 = v71;
      v58(v36 + *(v71 + 48), v50, v14);
      sub_1C0FFC424(v36, v38, &qword_1EBE96B88, &unk_1C12C4E60);
      v60 = *(v59 + 48);
      v58(v43, v38, v14);
      v61 = v70;
      v70(v38 + v60, v14);
      sub_1C0FFC488(v36, v38, &qword_1EBE96B88, &unk_1C12C4E60);
      v58(v43 + *(v92 + 36), (v38 + *(v59 + 48)), v14);
      v61(v38, v14);
      sub_1C11EE280();
      v62 = v74;
      v63 = v91;
      sub_1C1264BC0();
      sub_1C0F9E27C(v43, &qword_1EBE96B00);
      sub_1C0F9E27C(v63, &qword_1EBE97440);
      sub_1C1263060();
      v64 = v93;
      v65 = v77;
      sub_1C0FFC424(v93, v77, &qword_1EBE97830, &qword_1C12C5978);
      v66 = v79;
      sub_1C0FFC424(v62, v79, &qword_1EBE97828, &qword_1C12C5970);
      v67 = v80;
      sub_1C0FFC424(v65, v80, &qword_1EBE97830, &qword_1C12C5978);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97838, &unk_1C12C5980);
      sub_1C0FFC424(v66, v67 + *(v68 + 48), &qword_1EBE97828, &qword_1C12C5970);
      sub_1C0F9E27C(v62, &qword_1EBE97828);
      sub_1C0F9E27C(v64, &qword_1EBE97830);
      sub_1C0F9E27C(v66, &qword_1EBE97828);
      return sub_1C0F9E27C(v65, &qword_1EBE97830);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C11E77D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_1C1262A10();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_1C1264700();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C11E65F8(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DC20], v3);
  v14 = sub_1C1262A00();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  v16 = MEMORY[0x1E6980F30];
  if ((v14 & 1) == 0)
  {
    v16 = MEMORY[0x1E6980EF0];
  }

  (*(v11 + 104))(v13, *v16, v10);
  v17 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v17);
  v18 = sub_1C1264640();
  sub_1C0F9E27C(v2, &qword_1EBE96550);
  (*(v11 + 8))(v13, v10);
  return v18;
}

uint64_t static PhotosMaterialLabelButtonStyle.labelTextStyle(controlSize:)()
{
  OUTLINED_FUNCTION_22_20();
  v2 = sub_1C1262A10();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  (*(v4 + 104))(v1, *MEMORY[0x1E697DC20], v2);
  v6 = sub_1C1262A00();
  (*(v4 + 8))(v1, v2);
  sub_1C1264700();
  OUTLINED_FUNCTION_0_10();
  v8 = MEMORY[0x1E6980F30];
  if ((v6 & 1) == 0)
  {
    v8 = MEMORY[0x1E6980EF0];
  }

  return (*(v7 + 104))(v0, *v8);
}

void PhotosMaterialCircleImageButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973F8, &qword_1C12C4F10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_9();
  *v0 = sub_1C12659A0();
  v0[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97400, &qword_1C12C4F18);
  sub_1C11E7E70(v0 + *(v6 + 44));
  v7 = sub_1C12659A0();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97408, &qword_1C12C4F20);
  OUTLINED_FUNCTION_48_6(v10);
  v11 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97340, &qword_1C12C4E00) + 36));
  *v11 = v7;
  v11[1] = v9;
  LOBYTE(v7) = sub_1C1264470();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97410, &qword_1C12C4F28);
  OUTLINED_FUNCTION_38_9();
  *v12 = v7;
  OUTLINED_FUNCTION_7_40(v12);
  if (qword_1EBE8FD60 != -1)
  {
    OUTLINED_FUNCTION_5_34(&qword_1EBE8FD60);
  }

  v13 = sub_1C1265900();
  v14 = __swift_project_value_buffer(v13, qword_1EBE97300);
  v15 = sub_1C1264470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97418, &qword_1C12C4F30);
  OUTLINED_FUNCTION_35_9();
  (*(v16 + 16))(v2, v14, v13);
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97360, &unk_1C12C4E20) + 36)) = v15;
  v17 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97420, &qword_1C12C4F38) + 36);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v21 = *(v20 + 104);
  v21(v17, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *&v17[v22] = v23;
  v24 = v0 + *(v3 + 36);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80, &qword_1C12C2260);
  sub_1C1263410();
  v21(v24, v18, v19);
  v24[*(v25 + 36)] = 0;
  sub_1C1264080();
  v26 = OUTLINED_FUNCTION_2();
  sub_1C0FFC488(v26, v27, v28, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97428, &qword_1C12C4F40);
  OUTLINED_FUNCTION_12_25(v30);
  OUTLINED_FUNCTION_13_27();
}

uint64_t sub_1C11E7E70@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = sub_1C1263130();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20, &qword_1C12BEA30);
  v35 = *(v16 - 8);
  v36 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v41 = xmmword_1C12C4D90;
  v42 = 0;
  if (qword_1EDE7AFB8 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDE7AFC0;
  v40 = dword_1EDE7AFC8;
  if (qword_1EDE7AEC0 != -1)
  {
    swift_once();
  }

  v37 = word_1EDE7AEC8;
  v38 = byte_1EBE9468C | HIBYTE(word_1EDE7AEC8);
  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C(v41, *(&v41 + 1));
  v19 = *MEMORY[0x1E697E718];
  v32 = v18;
  v20 = v7[13];
  v20(v12, v19, v6);
  v20(v9, *MEMORY[0x1E697E728], v6);
  sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1C1265DA0();
  if (result)
  {
    v22 = v7[4];
    v22(v5, v12, v6);
    v22(&v5[*(v1 + 48)], v9, v6);
    v23 = v33;
    sub_1C0FFC424(v5, v33, &qword_1EBE96B88, &unk_1C12C4E60);
    v31 = v13;
    v24 = *(v1 + 48);
    v22(v15, v23, v6);
    v25 = v7[1];
    v25(v23 + v24, v6);
    sub_1C0FFC488(v5, v23, &qword_1EBE96B88, &unk_1C12C4E60);
    v22(&v15[*(v31 + 36)], (v23 + *(v1 + 48)), v6);
    v25(v23, v6);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80, &unk_1C12BE930);
    v27 = sub_1C1062140();
    *&v41 = v26;
    *(&v41 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
    v28 = v36;
    v29 = v32;
    sub_1C1264BC0();
    sub_1C0F9E27C(v15, &qword_1EBE96B00);
    return (*(v35 + 8))(v29, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C11E83BC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  v42 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v40 - v7;
  v9 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v40[0] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440, &qword_1C12C4F58);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_11();
  sub_1C1264070();
  sub_1C1264510();
  v23 = sub_1C1264540();

  KeyPath = swift_getKeyPath();
  v40[1] = v21;
  v41 = v1;
  v25 = (v1 + *(v21 + 36));
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = v11;
  v27 = *(v11 + 104);
  v27(v18, *MEMORY[0x1E697E718], v9);
  v27(v15, *MEMORY[0x1E697E728], v9);
  OUTLINED_FUNCTION_9_34();
  v30 = sub_1C11EC3E0(v28, v29, MEMORY[0x1E697E748]);
  result = OUTLINED_FUNCTION_37_6(v30);
  if (result)
  {
    v32 = *(v11 + 32);
    v32(v8, v18, v9);
    v32(&v8[*(v2 + 48)], v15, v9);
    v33 = v42;
    sub_1C0FFC424(v8, v42, &qword_1EBE96B88, &unk_1C12C4E60);
    v34 = *(v2 + 48);
    v35 = v40[0];
    v32(v40[0], v33, v9);
    v36 = *(v26 + 8);
    v36(v33 + v34, v9);
    sub_1C0FFC488(v8, v33, &qword_1EBE96B88, &unk_1C12C4E60);
    v32((v35 + *(v44 + 36)), (v33 + *(v2 + 48)), v9);
    v36(v33, v9);
    sub_1C11EE280();
    OUTLINED_FUNCTION_4_6();
    sub_1C10239B0(v37, &qword_1EBE96B00, &qword_1C12C21E0, v38);
    v39 = v41;
    sub_1C1264BC0();
    sub_1C0F9E27C(v35, &qword_1EBE96B00);
    return sub_1C0F9E27C(v39, &qword_1EBE97440);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C11E87B0()
{
  v0 = sub_1C1265900();
  __swift_allocate_value_buffer(v0, qword_1EBE97300);
  __swift_project_value_buffer(v0, qword_1EBE97300);
  return sub_1C12658C0();
}

void PhotosOpaqueBannerPrimaryTextButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97430, &qword_1C12C4F48);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97438, &qword_1C12C4F50) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_4();
  sub_1C1264070();
  sub_1C1264690();
  v7 = sub_1C1264540();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440, &qword_1C12C4F58);
  OUTLINED_FUNCTION_23_14();
  *v9 = KeyPath;
  v9[1] = v7;
  v10 = sub_1C1265190();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97448, &qword_1C12C4F60) + 36)) = v10;
  LOBYTE(v10) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97450, &qword_1C12C4F68);
  OUTLINED_FUNCTION_23_14();
  *v11 = v10;
  OUTLINED_FUNCTION_7_40(v11);
  LOBYTE(v10) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97458, &qword_1C12C4F70);
  OUTLINED_FUNCTION_23_14();
  *v12 = v10;
  OUTLINED_FUNCTION_7_40(v12);
  v13 = sub_1C1265130();
  LOBYTE(v7) = sub_1C1264470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97460, &qword_1C12C4F78);
  OUTLINED_FUNCTION_23_14();
  *v14 = v13;
  *(v14 + 8) = v7;
  v15 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97468, &qword_1C12C4F80) + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v17 = *(v16 + 104);
  OUTLINED_FUNCTION_16_3();
  v17(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *(v15 + v19) = v20;
  v21 = v1 + *(v2 + 44);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80, &qword_1C12C2260);
  sub_1C1263410();
  OUTLINED_FUNCTION_16_3();
  v17(v23);
  *(v21 + *(v22 + 36)) = 0;
  sub_1C12659A0();
  OUTLINED_FUNCTION_17_27();
  sub_1C0FFC488(v1, v0, &qword_1EBE97430, &qword_1C12C4F48);
  memcpy((v0 + *(v5 + 44)), v26, 0x70uLL);
  sub_1C1264080();
  sub_1C0FFC488(v0, v25, &qword_1EBE97438, &qword_1C12C4F50);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97470, &qword_1C12C4F88);
  OUTLINED_FUNCTION_12_25(v24);
  OUTLINED_FUNCTION_13_27();
}

void PhotosTransparentBannerPrimaryTextButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v34 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97478, &qword_1C12C4F90);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_8();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97480, &qword_1C12C4F98) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v32 = v5;
  sub_1C1264070();
  sub_1C1264530();
  v6 = sub_1C1264540();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440, &qword_1C12C4F58);
  OUTLINED_FUNCTION_23_14();
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = sub_1C1265190();
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97448, &qword_1C12C4F60) + 36)) = v9;
  LOBYTE(v9) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97450, &qword_1C12C4F68);
  OUTLINED_FUNCTION_23_14();
  *v10 = v9;
  OUTLINED_FUNCTION_7_40(v10);
  LOBYTE(v9) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97458, &qword_1C12C4F70);
  OUTLINED_FUNCTION_23_14();
  *v11 = v9;
  OUTLINED_FUNCTION_7_40(v11);
  v12 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97488, &qword_1C12C4FA0) + 36);
  sub_1C12658D0();
  LOBYTE(v6) = sub_1C1264470();
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97360, &unk_1C12C4E20) + 36)) = v6;
  v13 = swift_getKeyPath();
  v14 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97490, &unk_1C12C4FD8) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D70, &qword_1C12B69E0) + 28);
  v16 = *MEMORY[0x1E697DBA8];
  sub_1C12629F0();
  OUTLINED_FUNCTION_0_10();
  (*(v17 + 104))(v14 + v15, v16);
  *v14 = v13;
  v18 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97498, &qword_1C12C4FE8) + 36));
  sub_1C1263320();
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v20 = *(v19 + 104);
  OUTLINED_FUNCTION_16_3();
  v20();
  __asm { FMOV            V0.2D, #5.0 }

  v31 = _Q0;
  *v18 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_19_20();
  *(v18 + v26) = v27;
  v28 = (v0 + *(v1 + 44));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96748, &unk_1C12C0F30);
  sub_1C1263410();
  OUTLINED_FUNCTION_16_3();
  v20();
  *v28 = v31;
  *(v28 + *(v29 + 36)) = 0;
  sub_1C12659A0();
  OUTLINED_FUNCTION_17_27();
  sub_1C0FFC488(v0, v32, &qword_1EBE97478, &qword_1C12C4F90);
  memcpy((v32 + *(v33 + 44)), v35, 0x70uLL);
  sub_1C1264080();
  sub_1C0FFC488(v32, v34, &qword_1EBE97480, &qword_1C12C4F98);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974A0, &qword_1C12C4FF0);
  OUTLINED_FUNCTION_12_25(v30);
  OUTLINED_FUNCTION_13_27();
}

double static ButtonStyle<>.photosDismissSymbolButtonStyle.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EDE7AB18 != -1)
  {
    OUTLINED_FUNCTION_20_21(&qword_1EDE7AB18);
  }

  result = *&qword_1EDE9B648;
  *a1 = qword_1EDE9B648;
  return result;
}

double PhotosDismissSymbolButtonStyle.makeBody(configuration:)@<D0>(uint64_t *a7@<X8>)
{
  *a7 = sub_1C12659A0();
  a7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974A8, &qword_1C12C4FF8);
  sub_1C11E9024((a7 + *(v9 + 44)));
  sub_1C12659A0();
  sub_1C1262C80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974B0, &qword_1C12C5000);
  OUTLINED_FUNCTION_38_9();
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_1C11E9024@<X0>(void *a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97800, &qword_1C12C5910);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97808, &qword_1C12C5918);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_1C1264070();
  v14 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97810, &unk_1C12C5920) + 36)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v16 = *MEMORY[0x1E69816E0];
  v17 = sub_1C1265340();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  v18 = sub_1C1265150();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97818, &qword_1C12C5960) + 36)] = v18;
  v19 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  v20 = sub_1C1264630();
  sub_1C0F9E27C(v3, &qword_1EBE96550);
  KeyPath = swift_getKeyPath();
  v22 = &v6[*(v4 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_1C12645B0();
  sub_1C11EFD38();
  sub_1C1264990();
  sub_1C0F9E27C(v6, &qword_1EBE97800);
  v23 = *(v8 + 16);
  v23(v10, v13, v7);
  v24 = v30;
  *v30 = 1;
  *(v24 + 4) = 256;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97820, &qword_1C12C5968);
  v23(&v25[*(v26 + 48)], v10, v7);
  v27 = *(v8 + 8);
  v27(v13, v7);
  return (v27)(v10, v7);
}

void PhotosBannerDismissSymbolButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_34_10();
  v32 = v4;
  v33 = v5;
  v31 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = sub_1C1264060();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974B8, &qword_1C12C5008);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_7();
  sub_1C1264070();
  sub_1C1263020();
  sub_1C1262FE0();
  v20 = *(v7 + 8);
  v21 = v14;
  v22 = v31;
  v20(v21, v31);
  OUTLINED_FUNCTION_2_59();
  sub_1C11EC3E0(v23, v24, MEMORY[0x1E697C8C8]);
  sub_1C1264B20();
  v20(v11, v22);
  (*(v17 + 8))(v1, v15);
  v25 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v27 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97390, &qword_1C12C4E70) + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = [objc_opt_self() systemGrayColor];
  *(v2 + *(v3 + 44)) = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  sub_1C1264080();
  sub_1C0FFC488(v2, v33, &qword_1EBE974B8, &qword_1C12C5008);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974C0, &qword_1C12C5010);
  OUTLINED_FUNCTION_15_28(v29);
  OUTLINED_FUNCTION_33();
}

double PhotosFavoriteButtonStyle.makeBody(configuration:)@<D0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = v4 ^ sub_1C1264080();
  if (v6)
  {
    v7 = 0xEA00000000006C6CLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = qword_1EDE833C0;

  if (v8 != -1)
  {
    swift_once();
  }

  if (v6)
  {
    v9 = 0x69662E7472616568;
  }

  else
  {
    v9 = 0x7472616568;
  }

  *&v13 = v9;
  *(&v13 + 1) = v7;
  v14 = 262912;
  v15 = 0;
  v16 = 65280;

  sub_1C12192C4(&v13);

  v10 = sub_1C12652F0();

  KeyPath = swift_getKeyPath();
  *a2 = v10;
  a2[1] = KeyPath;
  a2[2] = v5;

  return result;
}

uint64_t sub_1C11E97AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C0FFC424(v2, &v14 - v9, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void PhotosToggleStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C11E9A48(a1, v2, a2);
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974C8, &unk_1C12C5048) + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *(v4 + v7) = v8;
}

uint64_t sub_1C11E9A48@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97720, &qword_1C12C5768);
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v50 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97770, &qword_1C12C5898);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v50 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97710, &unk_1C12C5758);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v50 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97700, &qword_1C12C5750);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v50 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97778, &qword_1C12C58A0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v50 - v10;
  v11 = sub_1C12629F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97780, &qword_1C12C58A8);
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE976E0, &qword_1C12C5740);
  MEMORY[0x1EEE9AC00](v53);
  v61 = &v50 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE976D0, &qword_1C12C5738);
  MEMORY[0x1EEE9AC00](v62);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v50 - v25;
  if (sub_1C12640B0())
  {
    v58 = v23;
    v60 = a3;
    sub_1C11EA228(a1, v20);
    v59 = a2;
    sub_1C11E97AC(v17);
    v26 = *(v12 + 104);
    LODWORD(v57) = *MEMORY[0x1E697DBA8];
    v56 = v26;
    v26(v14);
    v27 = sub_1C12629D0();
    v28 = *(v12 + 8);
    v28(v14, v11);
    v28(v17, v11);
    v29 = v18;
    if (v27)
    {
      v30 = sub_1C1265190();
    }

    else
    {
      v30 = sub_1C1265160();
    }

    v37 = v30;
    v38 = v61;
    (*(v54 + 32))(v61, v20, v29);
    *(v38 + *(v53 + 36)) = v37;
    sub_1C11E97AC(v17);
    v56(v14, v57, v11);
    LOBYTE(v37) = sub_1C12629D0();
    v28(v14, v11);
    v28(v17, v11);
    if (v37)
    {
      sub_1C1265150();
    }

    else
    {
      sub_1C1265160();
    }

    v44 = sub_1C12651E0();
    v45 = v58;

    v46 = sub_1C1264470();
    sub_1C0FFC488(v61, v45, &qword_1EBE976E0, &qword_1C12C5740);
    v47 = v45 + *(v62 + 36);
    *v47 = v44;
    *(v47 + 8) = v46;
    v42 = &qword_1EBE976D0;
    v48 = v55;
    sub_1C0FFC488(v45, v55, &qword_1EBE976D0, &qword_1C12C5738);
    sub_1C0FFC424(v48, v64, &qword_1EBE976D0, &qword_1C12C5738);
    swift_storeEnumTagMultiPayload();
    sub_1C11EEB24();
    sub_1C11EED54();
    sub_1C1263C20();
    v43 = v48;
  }

  else
  {
    if (MEMORY[0x1C68F0CE0]())
    {
      v31 = v51;
      sub_1C11EA228(a1, v51);
      v32 = sub_1C1263E40();
      v33 = v58;
      *(v31 + *(v57 + 36)) = v32;
      v34 = &qword_1EBE97710;
      sub_1C0FFC424(v31, v33, &qword_1EBE97710, &unk_1C12C5758);
      swift_storeEnumTagMultiPayload();
      sub_1C11EEDE0();
      sub_1C11EEF58();
      v35 = v59;
      sub_1C1263C20();
      v36 = v31;
    }

    else
    {
      v39 = v52;
      sub_1C11EA228(a1, v52);
      *(v39 + *(v57 + 36)) = sub_1C1263E40();
      v40 = sub_1C1264470();
      v41 = v39 + *(v60 + 36);
      *v41 = 1;
      *(v41 + 8) = v40;
      v34 = &qword_1EBE97720;
      sub_1C0FFC424(v39, v58, &qword_1EBE97720, &qword_1C12C5768);
      swift_storeEnumTagMultiPayload();
      sub_1C11EEDE0();
      sub_1C11EEF58();
      v35 = v59;
      sub_1C1263C20();
      v36 = v39;
    }

    sub_1C0F9E27C(v36, v34);
    v42 = &qword_1EBE97700;
    sub_1C0FFC424(v35, v64, &qword_1EBE97700, &qword_1C12C5750);
    swift_storeEnumTagMultiPayload();
    sub_1C11EEB24();
    sub_1C11EED54();
    sub_1C1263C20();
    v43 = v35;
  }

  return sub_1C0F9E27C(v43, v42);
}

uint64_t sub_1C11EA228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v24 = v4;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = sub_1C12640E0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE976E8, &qword_1C12C5748);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_0();
  (*(v11 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v19, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v27 = a1;
  v28 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97788, &qword_1C12C58B0);
  sub_1C11EFAB4();
  sub_1C1265480();
  sub_1C12632D0();
  sub_1C10239B0(&qword_1EBE976F0, &qword_1EBE976E8, &qword_1C12C5748, MEMORY[0x1E697D680]);
  sub_1C11EC3E0(&qword_1EDE7BCF0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  OUTLINED_FUNCTION_4_4();
  v21 = v24;
  sub_1C12649F0();
  (*(v25 + 8))(v8, v21);
  return (*(v17 + 8))(v2, v15);
}

uint64_t sub_1C11EA534@<X0>(uint64_t *a7@<X8>)
{
  *a7 = sub_1C12659A0();
  a7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977C8, &qword_1C12C58D8);
  sub_1C11EA610(a7 + *(v9 + 44));
  v10 = sub_1C12659A0();
  v12 = v11;
  v13 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977A0, &qword_1C12C58B8) + 36);
  sub_1C11EAE14(v13);
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977C0, &unk_1C12C58C8) + 36)];
  *v14 = v10;
  v14[1] = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97788, &qword_1C12C58B0);
  *(a7 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C11EA610@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  MEMORY[0x1EEE9AC00](v1);
  v60 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v56 - v4;
  v5 = sub_1C1263130();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  MEMORY[0x1EEE9AC00](v70);
  v62 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D0, &qword_1C12C58E0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D8, &qword_1C12C58E8);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v17 = &v56 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977E8, &qword_1C12C58F0);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v56 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977F0, &qword_1C12C58F8);
  MEMORY[0x1EEE9AC00](v66);
  v20 = &v56 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977F8, &unk_1C12C5900);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v56 - v21;
  sub_1C12640D0();
  v22 = sub_1C12646E0();
  KeyPath = swift_getKeyPath();
  v24 = &v15[*(v13 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_1C1264600();
  v25 = sub_1C11EFC50();
  v61 = v17;
  v59 = v13;
  v58 = v25;
  sub_1C1264990();
  sub_1C0F9E27C(v15, &qword_1EBE977D0);
  v26 = v6[13];
  v26(v11, *MEMORY[0x1E697E6F0], v5);
  v26(v8, *MEMORY[0x1E697E728], v5);
  sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1C1265DA0();
  if (result)
  {
    v57 = v20;
    v28 = v1;
    v29 = v6[4];
    v30 = v68;
    v29(v68, v11, v5);
    v29((v30 + *(v1 + 48)), v8, v5);
    v31 = v60;
    sub_1C0FFC424(v30, v60, &qword_1EBE96B88, &unk_1C12C4E60);
    v32 = *(v28 + 48);
    v33 = v62;
    v29(v62, v31, v5);
    v34 = v6[1];
    v34(v31 + v32, v5);
    sub_1C0FFC488(v30, v31, &qword_1EBE96B88, &unk_1C12C4E60);
    v29((v33 + *(v70 + 36)), (v31 + *(v28 + 48)), v5);
    v34(v31, v5);
    __src[0] = v59;
    __src[1] = v58;
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
    v35 = v67;
    v36 = v65;
    v37 = v61;
    sub_1C1264BC0();
    sub_1C0F9E27C(v33, &qword_1EBE96B00);
    (*(v64 + 8))(v37, v36);
    v38 = sub_1C12644D0();
    sub_1C12628A0();
    v39 = v35 + *(v63 + 36);
    *v39 = v38;
    *(v39 + 8) = v40;
    *(v39 + 16) = v41;
    *(v39 + 24) = v42;
    *(v39 + 32) = v43;
    *(v39 + 40) = 0;
    v44 = sub_1C1264460();
    MEMORY[0x1C68F0CE0]();
    sub_1C12628A0();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v57;
    sub_1C0FFC488(v35, v57, &qword_1EBE977E8, &qword_1C12C58F0);
    v54 = v53 + *(v66 + 36);
    *v54 = v44;
    *(v54 + 8) = v46;
    *(v54 + 16) = v48;
    *(v54 + 24) = v50;
    *(v54 + 32) = v52;
    *(v54 + 40) = 0;
    sub_1C12659A0();
    sub_1C1263390();
    v55 = v72;
    sub_1C0FFC488(v53, v72, &qword_1EBE977F0, &qword_1C12C58F8);
    memcpy((v55 + *(v71 + 36)), __src, 0x70uLL);
    return sub_1C0FFC488(v55, v69, &qword_1EBE977F8, &unk_1C12C5900);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C11EAE14@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v35 - v4;
  v5 = sub_1C1263130();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D0, &qword_1C12C58E0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D8, &qword_1C12C58E8);
  v40 = *(v17 - 8);
  v41 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  sub_1C12640D0();
  v20 = sub_1C12646E0();
  KeyPath = swift_getKeyPath();
  v22 = &v16[*(v14 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_1C1264600();
  v23 = sub_1C11EFC50();
  v39 = v19;
  v36 = v23;
  v37 = v14;
  sub_1C1264990();
  sub_1C0F9E27C(v16, &qword_1EBE977D0);
  v24 = v6;
  v25 = *(v6 + 104);
  v25(v11, *MEMORY[0x1E697E6F0], v5);
  v25(v8, *MEMORY[0x1E697E728], v5);
  sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1C1265DA0();
  if (result)
  {
    v35 = v12;
    v27 = *(v6 + 32);
    v28 = v42;
    v27(v42, v11, v5);
    v27((v28 + *(v1 + 48)), v8, v5);
    v29 = v43;
    sub_1C0FFC424(v28, v43, &qword_1EBE96B88, &unk_1C12C4E60);
    v30 = *(v1 + 48);
    v31 = v38;
    v27(v38, v29, v5);
    v32 = *(v24 + 8);
    v32(v29 + v30, v5);
    sub_1C0FFC488(v28, v29, &qword_1EBE96B88, &unk_1C12C4E60);
    v27((v31 + *(v35 + 36)), (v29 + *(v1 + 48)), v5);
    v32(v29, v5);
    v45 = v37;
    v46 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
    v33 = v41;
    v34 = v39;
    sub_1C1264BC0();
    sub_1C0F9E27C(v31, &qword_1EBE96B00);
    return (*(v40 + 8))(v34, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double static ToggleStyle<>.photosToggleStyle.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);

  swift_storeEnumTagMultiPayload();
  return result;
}

void PhotosToolbarLabelButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v49 = v2;
  v3 = sub_1C1264680();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = sub_1C1264700();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974D0, &qword_1C12C5058);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974D8, &qword_1C12C5060);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_7();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974E0, &qword_1C12C5068);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v48 = v21;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974E8, &qword_1C12C5070);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v47 = v23;
  sub_1C1264070();
  type metadata accessor for PhotosToolbarLabel(0);
  if (qword_1EDE7AB18 != -1)
  {
    OUTLINED_FUNCTION_20_21(&qword_1EDE7AB18);
  }

  (*(v12 + 104))(v16, *MEMORY[0x1E6980F30], v10);
  sub_1C100D418();
  sub_1C1262BD0();
  sub_1C12646E0();
  (*(v5 + 104))(v9, *MEMORY[0x1E6980EA8], v3);
  OUTLINED_FUNCTION_18();
  v24 = sub_1C12646C0();

  (*(v5 + 8))(v9, v3);
  KeyPath = swift_getKeyPath();
  v26 = (v1 + *(v17 + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  sub_1C12645B0();
  sub_1C11EC560();
  sub_1C1264990();
  sub_1C0F9E27C(v1, &qword_1EBE974D0);
  v27 = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  v28 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974F0, &unk_1C12C5078) + 36));
  *v28 = v27;
  OUTLINED_FUNCTION_7_40(v28);
  v29 = sub_1C1263060();
  MEMORY[0x1C68F0CE0](v29);
  v30 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  sub_1C10239B0(&qword_1EDE76D58, &qword_1EBE94AB8, &qword_1C12BAE80, MEMORY[0x1E69809C8]);
  v32 = sub_1C1262C90();
  v33 = sub_1C1264470();
  sub_1C0FFC488(v0, v48, &qword_1EBE974D8, &qword_1C12C5060);
  v34 = v48 + *(v46 + 36);
  *v34 = v32;
  *(v34 + 8) = v33;
  v35 = v47 + *(v45 + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  v36 = OUTLINED_FUNCTION_18();
  v37(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *(v35 + v38) = v39;
  v40 = OUTLINED_FUNCTION_4_4();
  sub_1C0FFC488(v40, v41, v42, v43);
  sub_1C1264080();
  sub_1C0FFC488(v47, v49, &qword_1EBE974E8, &qword_1C12C5070);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974F8, &qword_1C12C5088);
  OUTLINED_FUNCTION_12_25(v44);
  OUTLINED_FUNCTION_13_27();
}

double sub_1C11EB8DC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosToolbarLabel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  sub_1C1262BF0();
  sub_1C12659A0();
  sub_1C1262C80();
  v3 = sub_1C1264060();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97740, &qword_1C12C5868) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

void PhotosShelfLabelButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_22_20();
  v2 = sub_1C1264700();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_4_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_0();
  sub_1C1264070();
  *(v1 + *(type metadata accessor for PhotosShelfLabel(0) + 20)) = 0;
  (*(v4 + 104))(v8, *MEMORY[0x1E6980F30], v2);
  sub_1C10D9AFC();
  sub_1C1262BD0();
  v13 = v1 + *(v11 + 44);
  v14 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  (*(v15 + 104))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40);
  OUTLINED_FUNCTION_19_20();
  *(v13 + v16) = v17;
  sub_1C1264080();
  OUTLINED_FUNCTION_27_12();
  sub_1C0FFC488(v18, v19, v20, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97508, &qword_1C12C5098);
  OUTLINED_FUNCTION_15_28(v22);
  OUTLINED_FUNCTION_33();
}

void PhotosShelfLabelSquareButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_22_20();
  v3 = sub_1C1264700();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_8();
  sub_1C1264070();
  *(v2 + *(type metadata accessor for PhotosShelfLabel(0) + 20)) = 1;
  (*(v5 + 104))(v9, *MEMORY[0x1E6980F30], v3);
  sub_1C10D9AFC();
  sub_1C1262BD0();
  *(v2 + *(v1 + 44)) = 256;
  sub_1C1264080();
  OUTLINED_FUNCTION_27_12();
  sub_1C0FFC488(v13, v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97518, &qword_1C12C50A8);
  OUTLINED_FUNCTION_15_28(v17);
  OUTLINED_FUNCTION_33();
}

uint64_t sub_1C11EBD70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_1C1264680();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1264060();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97740, &qword_1C12C5868);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v47 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97748, &qword_1C12C5870);
  MEMORY[0x1EEE9AC00](v49);
  v12 = &v47 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97750, &qword_1C12C5878);
  MEMORY[0x1EEE9AC00](v55);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97758, &qword_1C12C5880);
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v47 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97760, &qword_1C12C5888);
  v17 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v47 - v18;
  v19 = *(v6 + 16);
  v50 = v8;
  v19(v8, v2, v5, v17);
  if (*(v2 + *(type metadata accessor for PhotosShelfLabel(0) + 20)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
    sub_1C1262BF0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8, &unk_1C12B60D0);
  sub_1C1262BF0();
  sub_1C12659A0();
  sub_1C1262C80();
  (*(v6 + 32))(v10, v50, v5);
  v20 = &v10[*(v48 + 36)];
  v21 = v63;
  *v20 = v62;
  *(v20 + 1) = v21;
  *(v20 + 2) = v64;
  v22 = sub_1C1264460();
  sub_1C12628A0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1C0FFC488(v10, v12, &qword_1EBE97740, &qword_1C12C5868);
  v31 = &v12[*(v49 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_1C12646E0();
  v33 = v57;
  v32 = v58;
  v34 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x1E6980EA8], v59);
  v35 = sub_1C12646C0();

  (*(v32 + 8))(v33, v34);
  KeyPath = swift_getKeyPath();
  sub_1C0FFC488(v12, v14, &qword_1EBE97748, &qword_1C12C5870);
  v37 = &v14[*(v55 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_1C12645B0();
  sub_1C11EF8B4();
  v38 = v52;
  sub_1C1264990();
  sub_1C0F9E27C(v14, &qword_1EBE97750);
  v39 = v56;
  sub_1C1263060();
  v40 = (*(v53 + 32))(v39, v38, v54);
  if (MEMORY[0x1C68F0CE0](v40))
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  v61 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AB8, &qword_1C12BAE80);
  sub_1C10239B0(&qword_1EDE76D58, &qword_1EBE94AB8, &qword_1C12BAE80, MEMORY[0x1E69809C8]);
  v42 = sub_1C1262C90();
  v43 = sub_1C1264470();
  v44 = v60;
  sub_1C0FFC488(v39, v60, &qword_1EBE97760, &qword_1C12C5888);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97768, &qword_1C12C5890);
  v46 = v44 + *(result + 36);
  *v46 = v42;
  *(v46 + 8) = v43;
  return result;
}

uint64_t sub_1C11EC3E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C11EC428()
{
  result = qword_1EBE973A0;
  if (!qword_1EBE973A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97390, &qword_1C12C4E70);
    sub_1C1264060();
    sub_1C11EC3E0(&qword_1EDE7BA80, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE973A0);
  }

  return result;
}

unint64_t sub_1C11EC560()
{
  result = qword_1EDE774C0;
  if (!qword_1EDE774C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974D0, &qword_1C12C5058);
    sub_1C11EC3E0(&unk_1EDE7AE10, type metadata accessor for PhotosToolbarLabel, &unk_1C12C5814);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774C0);
  }

  return result;
}

void sub_1C11EC8A0(uint64_t a1)
{
  sub_1C11EC950();
  if (v1 <= 0x3F)
  {
    sub_1C11ECAD0(319, &unk_1EDE77580, MEMORY[0x1E697DC30]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C11EC950()
{
  if (!qword_1EDE77508)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77508);
    }
  }
}

void sub_1C11ECA48(uint64_t a1)
{
  sub_1C11ECAD0(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C11ECAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *sub_1C11ECB44(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C11ECBF0()
{
  result = qword_1EDE77230;
  if (!qword_1EDE77230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97320, &qword_1C12C4DE0);
    sub_1C11EFA18(&qword_1EDE773F0, &qword_1EBE97318);
    sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77230);
  }

  return result;
}

unint64_t sub_1C11ECCC8()
{
  result = qword_1EBE97538;
  if (!qword_1EBE97538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97368, &qword_1C12C4E30);
    sub_1C11ECD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97538);
  }

  return result;
}

unint64_t sub_1C11ECD54()
{
  result = qword_1EBE97540;
  if (!qword_1EBE97540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97328, &qword_1C12C4DE8);
    sub_1C11ECE0C();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88, &unk_1C12ACC40, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97540);
  }

  return result;
}

unint64_t sub_1C11ECE0C()
{
  result = qword_1EBE97548;
  if (!qword_1EBE97548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97358, &qword_1C12C4E18);
    sub_1C11ECEC4();
    sub_1C10239B0(&qword_1EBE97580, &qword_1EBE97360, &unk_1C12C4E20, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97548);
  }

  return result;
}

unint64_t sub_1C11ECEC4()
{
  result = qword_1EBE97550;
  if (!qword_1EBE97550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97350, &qword_1C12C4E10);
    sub_1C11ECF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97550);
  }

  return result;
}

unint64_t sub_1C11ECF50()
{
  result = qword_1EBE97558;
  if (!qword_1EBE97558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97348, &qword_1C12C4E08);
    sub_1C11ECFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97558);
  }

  return result;
}

unint64_t sub_1C11ECFDC()
{
  result = qword_1EBE97560;
  if (!qword_1EBE97560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97338, &qword_1C12C4DF8);
    sub_1C10239B0(&qword_1EBE97568, &unk_1EBE97570, &unk_1C12C56F0, MEMORY[0x1E6981880]);
    sub_1C10239B0(&qword_1EBE97578, &qword_1EBE97340, &qword_1C12C4E00, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97560);
  }

  return result;
}

unint64_t sub_1C11ED0C0()
{
  result = qword_1EBE97588;
  if (!qword_1EBE97588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97388, &qword_1C12C4E58);
    sub_1C11ED14C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97588);
  }

  return result;
}

unint64_t sub_1C11ED14C()
{
  result = qword_1EBE97590;
  if (!qword_1EBE97590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97370, &qword_1C12C4E38);
    sub_1C11ED204();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88, &unk_1C12ACC40, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97590);
  }

  return result;
}

unint64_t sub_1C11ED204()
{
  result = qword_1EBE97598;
  if (!qword_1EBE97598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97380, &qword_1C12C4E48);
    sub_1C11ED2BC();
    sub_1C10239B0(&qword_1EDE76D88, &qword_1EBE96B38, &qword_1C12C4E50, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97598);
  }

  return result;
}

unint64_t sub_1C11ED2BC()
{
  result = qword_1EBE975A0;
  if (!qword_1EBE975A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97378, &qword_1C12C4E40);
    sub_1C11ECEC4();
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975A0);
  }

  return result;
}

unint64_t sub_1C11ED374()
{
  result = qword_1EBE975A8;
  if (!qword_1EBE975A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973B0, &qword_1C12C4EC0);
    sub_1C11ED400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975A8);
  }

  return result;
}

unint64_t sub_1C11ED400()
{
  result = qword_1EBE975B0;
  if (!qword_1EBE975B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97398, &qword_1C12C4E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97390, &qword_1C12C4E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00, &qword_1C12C21E0);
    sub_1C11EC428();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EBE975B8, &qword_1EBE973A8, &qword_1C12C4EB8, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975B0);
  }

  return result;
}

unint64_t sub_1C11ED554()
{
  result = qword_1EDE76FF0;
  if (!qword_1EDE76FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973F0, &qword_1C12C4F08);
    sub_1C11ED5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FF0);
  }

  return result;
}

unint64_t sub_1C11ED5E0()
{
  result = qword_1EDE77010;
  if (!qword_1EDE77010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973E0, &qword_1C12C4EF0);
    sub_1C11ED698();
    sub_1C10239B0(&qword_1EDE7BA30, &qword_1EBE91F80, &qword_1C12C2260, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77010);
  }

  return result;
}

unint64_t sub_1C11ED698()
{
  result = qword_1EDE77040;
  if (!qword_1EDE77040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973D8, &qword_1C12C4EE8);
    sub_1C11ED750();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88, &unk_1C12ACC40, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77040);
  }

  return result;
}

unint64_t sub_1C11ED750()
{
  result = qword_1EDE770B8;
  if (!qword_1EDE770B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973D0, &qword_1C12C4EE0);
    sub_1C11ED808();
    sub_1C10239B0(&qword_1EDE7BA78, &unk_1EBE975C0, &unk_1C12C5700, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770B8);
  }

  return result;
}

unint64_t sub_1C11ED808()
{
  result = qword_1EDE77170;
  if (!qword_1EDE77170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973C8, &qword_1C12C4ED8);
    sub_1C11ED894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77170);
  }

  return result;
}

unint64_t sub_1C11ED894()
{
  result = qword_1EDE772D0;
  if (!qword_1EDE772D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973C0, &qword_1C12C4ED0);
    sub_1C10239B0(&qword_1EDE76B98, &qword_1EBE973B8, &qword_1C12C4EC8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772D0);
  }

  return result;
}

unint64_t sub_1C11ED94C()
{
  result = qword_1EBE975C8;
  if (!qword_1EBE975C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97428, &qword_1C12C4F40);
    sub_1C11ED9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975C8);
  }

  return result;
}

unint64_t sub_1C11ED9D8()
{
  result = qword_1EBE975D0;
  if (!qword_1EBE975D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973F8, &qword_1C12C4F10);
    sub_1C11EDA90();
    sub_1C10239B0(&qword_1EDE7BA30, &qword_1EBE91F80, &qword_1C12C2260, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975D0);
  }

  return result;
}

unint64_t sub_1C11EDA90()
{
  result = qword_1EBE975D8;
  if (!qword_1EBE975D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97420, &qword_1C12C4F38);
    sub_1C11EDB48();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88, &unk_1C12ACC40, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975D8);
  }

  return result;
}

unint64_t sub_1C11EDB48()
{
  result = qword_1EBE975E0;
  if (!qword_1EBE975E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97418, &qword_1C12C4F30);
    sub_1C11EDC00();
    sub_1C10239B0(&qword_1EBE97580, &qword_1EBE97360, &unk_1C12C4E20, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975E0);
  }

  return result;
}

unint64_t sub_1C11EDC00()
{
  result = qword_1EBE975E8;
  if (!qword_1EBE975E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97410, &qword_1C12C4F28);
    sub_1C11EDC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975E8);
  }

  return result;
}

unint64_t sub_1C11EDC8C()
{
  result = qword_1EBE975F0;
  if (!qword_1EBE975F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97408, &qword_1C12C4F20);
    sub_1C10239B0(&qword_1EBE975F8, &unk_1EBE97600, &unk_1C12C5708, MEMORY[0x1E6981880]);
    sub_1C10239B0(&qword_1EBE97578, &qword_1EBE97340, &qword_1C12C4E00, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975F0);
  }

  return result;
}