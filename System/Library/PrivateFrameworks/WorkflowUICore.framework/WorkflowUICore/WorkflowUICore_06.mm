BOOL sub_274B6DE38(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_274BF38E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x277CE0268];
  if (v13 != *MEMORY[0x277CE0268])
  {
    if (v13 == *MEMORY[0x277CE0298])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE02A0])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x277CE0260])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x277CE0270])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x277CE0248])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x277CE0280])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x277CE0278])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x277CE0288])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x277CE0250])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277CE0298])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277CE02A0])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x277CE0290])
    {
      if (v16 == *MEMORY[0x277CE0260])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0270])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0248])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0280])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0278])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0288])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0250])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0258])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_274B6E254()
{
  result = qword_28098C770;
  if (!qword_28098C770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C758, &qword_274C00820);
    sub_274AFA930(&qword_28098C778, &qword_28098C768, &qword_274C00830, MEMORY[0x277CE04B0]);
    sub_274AFA930(&qword_28098C780, &qword_28098C760, &qword_274C00828, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C770);
  }

  return result;
}

void *sub_274B6E36C()
{
  v1 = OBJC_IVAR___WFIconHostingView_icon;
  OUTLINED_FUNCTION_3_14(v0 + OBJC_IVAR___WFIconHostingView_icon, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_274B6E40C(void *a1)
{
  v3 = OBJC_IVAR___WFIconHostingView_icon;
  OUTLINED_FUNCTION_8_10(v1 + OBJC_IVAR___WFIconHostingView_icon, v6);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_274B6E4A0(v4);
}

void sub_274B6E470(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_274B6E40C(v1);
}

void sub_274B6E4A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___WFIconHostingView_icon;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_274AD8430(0, &unk_2815A2E80, 0x277D79FB0), v6 = v5, v7 = a1, v8 = sub_274BF5624(), v7, v6, (v8 & 1) == 0))
  {
LABEL_6:
    sub_274B6ECCC();
  }
}

void (*sub_274B6E560(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR___WFIconHostingView_icon;
  OUTLINED_FUNCTION_2_20();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_274B6E5D8;
}

void sub_274B6E5D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_274B6E40C(v3);
  }

  else
  {
    sub_274B6E40C(*(*a1 + 24));
  }

  free(v2);
}

double sub_274B6E668()
{
  v1 = v0 + OBJC_IVAR___WFIconHostingView_iconSize;
  OUTLINED_FUNCTION_3_14(v0 + OBJC_IVAR___WFIconHostingView_iconSize, v3);
  return *v1;
}

void sub_274B6E708()
{
  OUTLINED_FUNCTION_7_14();
  v3 = (v0 + OBJC_IVAR___WFIconHostingView_iconSize);
  OUTLINED_FUNCTION_8_10(v0 + OBJC_IVAR___WFIconHostingView_iconSize, v6);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  *(v3 + 1) = v1;
  sub_274B6E784(v4, v5);
}

void sub_274B6E784(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___WFIconHostingView_iconSize);
  swift_beginAccess();
  if (*v5 != a1 || v5[1] != a2)
  {
    sub_274B6ECCC();
  }
}

void (*sub_274B6E7EC(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *(v3 + 5) = v1;
  v4 = OBJC_IVAR___WFIconHostingView_iconSize;
  OUTLINED_FUNCTION_2_20();
  *(v3 + 24) = *(v1 + v4);
  return sub_274B6E85C;
}

void sub_274B6E85C(void **a1)
{
  v1 = *a1;
  sub_274B6E708();

  free(v1);
}

uint64_t sub_274B6E8C4()
{
  v1 = OBJC_IVAR___WFIconHostingView_useAccentColor;
  OUTLINED_FUNCTION_3_14(v0 + OBJC_IVAR___WFIconHostingView_useAccentColor, v3);
  return *(v0 + v1);
}

void sub_274B6E954(char a1)
{
  v3 = OBJC_IVAR___WFIconHostingView_useAccentColor;
  OUTLINED_FUNCTION_8_10(v1 + OBJC_IVAR___WFIconHostingView_useAccentColor, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_274B6E9A4(v4);
}

void sub_274B6E9A4(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___WFIconHostingView_useAccentColor;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    sub_274B6ECCC();
  }
}

void (*sub_274B6EA00(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR___WFIconHostingView_useAccentColor;
  OUTLINED_FUNCTION_2_20();
  *(v3 + 32) = *(v1 + v4);
  return sub_274B6EA70;
}

void sub_274B6EA70(uint64_t a1)
{
  v1 = *a1;
  sub_274B6E954(*(*a1 + 32));

  free(v1);
}

id IconHostingView.__allocating_init(icon:size:)()
{
  OUTLINED_FUNCTION_7_14();
  v1 = objc_allocWithZone(v0);
  return IconHostingView.init(icon:size:)();
}

id IconHostingView.init(icon:size:)()
{
  OUTLINED_FUNCTION_7_14();
  v4 = v3;
  v5 = OBJC_IVAR___WFIconHostingView_icon;
  *&v0[OBJC_IVAR___WFIconHostingView_icon] = 0;
  v0[OBJC_IVAR___WFIconHostingView_useAccentColor] = 0;
  *&v0[OBJC_IVAR___WFIconHostingView_hostingView] = 0;
  OUTLINED_FUNCTION_8_10(&v0[v5], v11);
  *&v0[v5] = v4;
  v6 = &v0[OBJC_IVAR___WFIconHostingView_iconSize];
  *v6 = v2;
  v6[1] = v1;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for IconHostingView();
  v7 = v4;
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_274B6ECCC();

  return v8;
}

void sub_274B6EC34()
{
  *(v0 + OBJC_IVAR___WFIconHostingView_icon) = 0;
  *(v0 + OBJC_IVAR___WFIconHostingView_useAccentColor) = 0;
  *(v0 + OBJC_IVAR___WFIconHostingView_hostingView) = 0;
  sub_274BF5AC4();
  __break(1u);
}

void sub_274B6ECCC()
{
  v2 = v0;
  v3 = sub_274BF29C4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = (v8 - v7);
  sub_274BF29F4();
  OUTLINED_FUNCTION_1();
  v67 = v11;
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v70 = &v62 - v16;
  v71 = sub_274BF29E4();
  OUTLINED_FUNCTION_1();
  v69 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_2();
  v21 = v19 - v20;
  *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v25 = &v62 - v24;
  v66 = OBJC_IVAR___WFIconHostingView_hostingView;
  v26 = *&v2[OBJC_IVAR___WFIconHostingView_hostingView];
  if (v26)
  {
    [v26 removeFromSuperview];
  }

  v27 = OBJC_IVAR___WFIconHostingView_icon;
  OUTLINED_FUNCTION_3_14(&v2[OBJC_IVAR___WFIconHostingView_icon], v77);
  v28 = *&v2[v27];
  if (v28)
  {
    v65 = v3;
    v29 = OBJC_IVAR___WFIconHostingView_useAccentColor;
    OUTLINED_FUNCTION_3_14(&v2[OBJC_IVAR___WFIconHostingView_useAccentColor], v76);
    if (v2[v29] == 1)
    {
      v30 = objc_opt_self();
      v31 = v28;
      v1 = [v30 wf_accentColor];
      v32 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

      *v25 = v32;
      v25[8] = 1;
      v33 = OUTLINED_FUNCTION_1_18();
      v34(v33);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_1_18();
      v36(v35);
      v37 = v28;
    }

    v38 = OBJC_IVAR___WFIconHostingView_iconSize;
    OUTLINED_FUNCTION_3_14(&v2[OBJC_IVAR___WFIconHostingView_iconSize], v75);
    *v9 = *&v2[v38];
    (*(v5 + 104))(v9, *MEMORY[0x277D7D690], v65);
    v39 = v1[2];
    v63 = v3;
    v39(v21, v3, v25);
    v65 = v28;
    v40 = v70;
    sub_274BF2A04();
    v41 = v67;
    (*(v67 + 16))(v14, v40, v68);
    v42 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C7B0, &qword_274C00868));
    v43 = sub_274BF3324();
    v44 = [objc_opt_self() clearColor];
    [v43 setBackgroundColor_];

    type metadata accessor for UILayoutPriority(0);
    v72 = 1084227584;
    v73 = 1132068864;
    sub_274B6F950();
    v45 = v43;
    sub_274BF2BF4();
    LODWORD(v46) = v74;
    [v45 setContentHuggingPriority:0 forAxis:v46];
    [v45 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addSubview_];
    v64 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8, &qword_274BFFB50);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_274BFFAD0;
    v48 = [v2 leadingAnchor];
    v49 = [v45 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    *(v47 + 32) = v50;
    v51 = [v2 trailingAnchor];
    v52 = [v45 trailingAnchor];

    v53 = OUTLINED_FUNCTION_6_11();
    *(v47 + 40) = v53;
    v54 = [v2 topAnchor];
    v55 = [v45 topAnchor];

    v56 = OUTLINED_FUNCTION_6_11();
    *(v47 + 48) = v56;
    v57 = [v2 bottomAnchor];
    v58 = [v45 bottomAnchor];

    v59 = OUTLINED_FUNCTION_6_11();
    *(v47 + 56) = v59;
    sub_274AD8430(0, &qword_28098C428, 0x277CCAAD0);
    v60 = sub_274BF5134();

    [v64 activateConstraints_];

    (*(v41 + 8))(v70, v68);
    (*(v69 + 8))(v63, v71);
    v61 = *&v2[v66];
    *&v2[v66] = v45;
  }
}

uint64_t static IconHostingView.render(icon:with:)()
{
  OUTLINED_FUNCTION_7_14();
  v32 = v2;
  v3 = sub_274BF29E4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = sub_274BF29C4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = (v15 - v14);
  v17 = sub_274BF29F4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_2();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v31 - v26;
  *v16 = v1;
  v16[1] = v0;
  (*(v12 + 104))(v16, *MEMORY[0x277D7D690], v10, v25);
  (*(v5 + 104))(v9, *MEMORY[0x277D7D6D0], v3);
  v28 = v32;
  sub_274BF2A04();
  (*(v19 + 16))(v23, v27, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C7A8, &qword_274C00838);
  swift_allocObject();
  MEMORY[0x277C629D0](v23);
  v29 = sub_274BF3124();

  (*(v19 + 8))(v27, v17);
  return v29;
}

id IconHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id IconHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_274B6F950()
{
  result = qword_28098C7B8;
  if (!qword_28098C7B8)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C7B8);
  }

  return result;
}

id OUTLINED_FUNCTION_6_11()
{

  return [v0 (v1 + 3941)];
}

Swift::String __swiftcall String.appendingLabelFormat()()
{
  v2 = v1;
  v3 = v0;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_274BF4FE4("%@:", 3);
    if (qword_2809893B8 != -1)
    {
      swift_once();
    }

    v5 = qword_28098C7C0;
    v6 = sub_274BF4F04();
    v7 = sub_274BF4F04();

    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    sub_274BF4F44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_274BF8D80;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_274B12CA0();
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;

    v3 = sub_274BF4F74();
    v2 = v10;
  }

  else
  {
  }

  v11 = v3;
  v12 = v2;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

void StaticString._asString.getter(const char *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_10:
      sub_274BF4FE4(a1, a2);
      return;
    }

    __break(1u);
  }

  v3 = a1 >> 32;
  if (a1 >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    v3 = a1 >> 16;
    if (a1 >> 16 <= 0x10)
    {
      if (a1 <= 0x7F)
      {
        v4 = a1 + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        a1 = &v11;
        goto LABEL_10;
      }

LABEL_13:
      v6 = (a1 & 0x3F) << 8;
      v7 = (a1 >> 6) + v6 + 33217;
      v8 = (v6 | (a1 >> 6) & 0x3F) << 8;
      v9 = (a1 >> 18) + ((v8 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (a1 >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (a1 < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
}

id static NSBundle._current.getter()
{
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v1 = qword_28098C7C0;

  return v1;
}

id sub_274B6FCA0()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28098C7C0 = result;
  return result;
}

uint64_t WFGeneratedContentItem.preview(configuration:)(unsigned __int8 *a1, __n128 a2)
{
  v3 = v2;
  v90 = sub_274BF2BE4();
  OUTLINED_FUNCTION_1();
  v89 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v88 = v8 - v7;
  sub_274BF2114();
  OUTLINED_FUNCTION_1();
  v91 = v10;
  v92 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C7C8, &unk_274C00880);
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  v93 = type metadata accessor for MontaraPreviewView(0);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v94 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 1);
  v22 = OUTLINED_FUNCTION_3_15();
  v23 = sub_274B70590(v22);
  if (v24)
  {
    v25 = v23;
    v26 = v24;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
LABEL_5:
      v105[0] = v94;
      v105[1] = v20;
      v106 = v21;
      *&v97 = 0;
      v95 = 0u;
      v96 = 0u;
      v28 = v3;

      MontaraPreviewView.init(with:configuration:delegate:)(v28, v105, &v95, v19);
      sub_274B706F0();
      return sub_274BF48B4();
    }
  }

  v29 = OUTLINED_FUNCTION_3_15();
  if (sub_274B70600(v29))
  {
    v30 = sub_274B22B94();

    if (v30)
    {
      v31 = OUTLINED_FUNCTION_0_20();
      WFContentItem.previewView(configuration:previewableThumbnailItem:previewableListItem:forceUseDefaultPreview:)(v31, 0, 0, v16);
      v32 = &v16[*(v14 + 36)];
      *v32 = v3;
      v32[8] = v19;
      v32[9] = v20;
      *(v32 + 2) = v21;
      *(v32 + 24) = 0u;
      *(v32 + 40) = 0u;
      sub_274B708B4();
      v33 = v3;

      return sub_274BF48B4();
    }
  }

  v35 = OUTLINED_FUNCTION_3_15();
  v36 = [v35 numberValue];

  if (v36)
  {
    sub_274AD8430(0, &qword_28098C820, 0x277CFC480);
    *(&v96 + 1) = sub_274AD8430(0, &qword_28098C818, 0x277CCABB0);
    *&v95 = v36;
    v37 = v36;
    v38 = sub_274B704E4(&v95);
    if (v38)
    {
      v39 = v38;
      v40 = OUTLINED_FUNCTION_0_20();
      v41 = WFNumberContentItem.preview(configuration:)(v40);
      v42 = 0.0;
      *&v95 = v41;
      *(&v95 + 1) = v3;
      if (v20)
      {
        v43 = 16.0;
      }

      else
      {
        v43 = 0.0;
      }

      LOBYTE(v96) = v19;
      if (!v20)
      {
        v42 = 16.0;
      }

      BYTE1(v96) = v20;
      *(&v96 + 1) = v21;
      *&v97 = v43;
      *(&v97 + 1) = 0x4030000000000000;
      *&v98 = v42;
      *(&v98 + 1) = 0x4030000000000000;
LABEL_29:
      v52 = v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C7E0, &qword_274C00890);
      v53 = sub_274B70748();
      v34 = OUTLINED_FUNCTION_2_21(v53);

      return v34;
    }
  }

  v44 = OUTLINED_FUNCTION_3_15();
  v45 = [v44 BOOLeanValue];

  if (v45)
  {
    sub_274AD8430(0, &qword_28098C810, 0x277CFC270);
    *(&v96 + 1) = sub_274AD8430(0, &qword_28098C818, 0x277CCABB0);
    *&v95 = v45;
    v37 = v45;
    v46 = sub_274B704E4(&v95);
    if (v46)
    {
      v39 = v46;
      v47 = OUTLINED_FUNCTION_0_20();
      v48 = WFNumberContentItem.preview(configuration:)(v47);
      v49 = 0.0;
      v50 = 16.0;
      if (v20)
      {
        v51 = 16.0;
      }

      else
      {
        v51 = 0.0;
      }

      if (v20)
      {
        v50 = 24.0;
      }

      *&v95 = v48;
      *(&v95 + 1) = v3;
      LOBYTE(v96) = v19;
      BYTE1(v96) = v20;
      *(&v96 + 1) = v21;
      if (!v20)
      {
        v49 = 14.0;
      }

      *&v97 = v51;
      *(&v97 + 1) = v50;
      *&v98 = v49;
      *(&v98 + 1) = v50;
      goto LABEL_29;
    }
  }

  v55 = OUTLINED_FUNCTION_3_15();
  v56 = [v55 date];

  if (!v56)
  {
LABEL_42:
    v70 = OUTLINED_FUNCTION_3_15();
    v71 = sub_274B70678(v70);
    if (v71)
    {
      v72 = v71;
      sub_274AD8430(0, &qword_28098C7D8, 0x277CFC388);
      *(&v96 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B760, &qword_274BFE688);
      *&v95 = v72;
      v73 = sub_274B704E4(&v95);
      if (v73)
      {
        v74 = v73;
        v75 = v94;
        LOBYTE(v95) = v94;
        BYTE1(v95) = v20;
        *(&v95 + 1) = v21;
        *&v95 = WFDictionaryContentItem.preview(configuration:)(&v95);
        *(&v95 + 1) = v3;
        LOBYTE(v96) = v75;
        BYTE1(v96) = v20;
        *(&v96 + 1) = v21;
        __asm { FMOV            V0.2D, #16.0 }

        v97 = _Q0;
        v98 = _Q0;
        v81 = v3;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C7E0, &qword_274C00890);
        v82 = sub_274B70748();
        v34 = OUTLINED_FUNCTION_2_21(v82);

        return v34;
      }
    }

    v83 = v88;
    sub_274BF2A54();
    v84 = sub_274BF2BD4();
    v85 = sub_274BF5494();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_274AD4000, v84, v85, "No fields on WFGeneratedResponse available to preview, falling back to rawResponse.", v86, 2u);
      MEMORY[0x277C664A0](v86, -1, -1);
    }

    (*(v89 + 8))(v83, v90);
    goto LABEL_5;
  }

  sub_274BF20C4();

  sub_274AD8430(0, &qword_28098C7F0, 0x277CFC368);
  v57 = v92;
  *(&v96 + 1) = v92;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
  v59 = v91;
  (*(v91 + 16))(boxed_opaque_existential_1, v13, v57);
  v60 = sub_274B704E4(&v95);
  if (!v60)
  {
    (*(v59 + 8))(v13, v57);
    goto LABEL_42;
  }

  v61 = v60;
  *&v95 = sub_274B74C24();
  *(&v95 + 1) = v62;
  sub_274B707D4();
  v63 = v59;
  v64 = sub_274BF48B4();
  if (v20)
  {
    v65 = 0x4032000000000000;
  }

  else
  {
    v65 = 0x4030000000000000;
  }

  if (v20)
  {
    v66 = 0;
  }

  else
  {
    v66 = 0x4030000000000000;
  }

  v67 = v3;

  v68 = sub_274BF3E44();
  v105[0] = 0;
  *&v95 = v64;
  *(&v95 + 1) = v67;
  LOBYTE(v96) = v94;
  BYTE1(v96) = v20;
  *(&v96 + 1) = v21;
  v97 = 0x402C000000000000uLL;
  v98 = 0uLL;
  v99 = v68;
  v100 = v65;
  v101 = 0x4030000000000000;
  v102 = v66;
  v103 = 0x4030000000000000;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C800, &qword_274C00898);
  v69 = sub_274B70828();
  v34 = OUTLINED_FUNCTION_2_21(v69);

  (*(v63 + 8))(v13, v92);
  return v34;
}

id sub_274B704E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_274BF5C04();
  v3 = [swift_getObjCClassFromMetadata() itemWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_274B70590(void *a1)
{
  v2 = [a1 rawResponse];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_274BF4F44();

  return v3;
}

uint64_t sub_274B70600(void *a1)
{
  v2 = [a1 list];

  if (!v2)
  {
    return 0;
  }

  sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
  v3 = sub_274BF5144();

  return v3;
}

uint64_t sub_274B70678(void *a1)
{
  v2 = [a1 dictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_274BF4DF4();

  return v3;
}

unint64_t sub_274B706F0()
{
  result = qword_28098C7D0;
  if (!qword_28098C7D0)
  {
    type metadata accessor for MontaraPreviewView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C7D0);
  }

  return result;
}

unint64_t sub_274B70748()
{
  result = qword_28098C7E8;
  if (!qword_28098C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C7E0, &qword_274C00890);
    sub_274B0B5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C7E8);
  }

  return result;
}

unint64_t sub_274B707D4()
{
  result = qword_28098C7F8;
  if (!qword_28098C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C7F8);
  }

  return result;
}

unint64_t sub_274B70828()
{
  result = qword_28098C808;
  if (!qword_28098C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C800, &qword_274C00898);
    sub_274B70748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C808);
  }

  return result;
}

unint64_t sub_274B708B4()
{
  result = qword_28098C828;
  if (!qword_28098C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C7C8, &unk_274C00880);
    sub_274B08B6C();
    sub_274B0B5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C828);
  }

  return result;
}

id UIKitAutocompleteCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_274B70974(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_274B709F8(v2, v1);
}

uint64_t sub_274B709F8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_274B70A64(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_274B70AF0;
}

void sub_274B70AF0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_274B70B78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_274B70C4C(v1);
}

void sub_274B70BA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_responder;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  sub_274B715D8(v4);
}

void *sub_274B70C10(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_responder;
  OUTLINED_FUNCTION_0_21(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_274B70C4C(void *a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_responder;
  OUTLINED_FUNCTION_2_22(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_274B70BA8(v4);
}

void (*sub_274B70CA8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_responder;
  OUTLINED_FUNCTION_3_14(v1 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_responder, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_274B70D28;
}

void sub_274B70D28(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_274B70C4C(v3);
  }

  else
  {
    sub_274B70C4C(*(*a1 + 24));
  }

  free(v2);
}

double sub_274B70DC0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource;
  v5 = swift_beginAccess();
  v7 = *(v2 + v4);
  if (v7)
  {
    if (v7 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  sub_274B715D8(v5);
  sub_274B716B4();
  v8 = *(v2 + v4);
  if (v8)
  {
    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
    v11 = *(v10 + 8);

    v11(v9, v10);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_274B722E4;
    *(v13 + 24) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C958, &qword_274C00A08);
    sub_274B7231C();
    v14 = sub_274BF2DB4();
  }

  else
  {
    v14 = 0;
  }

  *(v2 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_dataSourceObservation) = v14;

  return result;
}

double sub_274B70F58(uint64_t a1)
{
  OUTLINED_FUNCTION_0_21(a1);

  return result;
}

double sub_274B70F90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource;
  OUTLINED_FUNCTION_2_22(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_274B70DC0(v4);

  return result;
}

void (*sub_274B70FF4(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource;
  OUTLINED_FUNCTION_3_14(v1 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource, v3);
  v3[3] = *(v1 + v4);

  return sub_274B71074;
}

void sub_274B71074(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_274B70F90(v4);
  }

  else
  {
    sub_274B70F90(v3);
  }

  free(v2);
}

void sub_274B710D8()
{

  sub_274AFCD40(v0);

  sub_274B715D8(v1);
}

id sub_274B71144()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator____lazy_storage___accessoryBarHostingController;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator____lazy_storage___accessoryBarHostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator____lazy_storage___accessoryBarHostingController);
  }

  else
  {
    sub_274B711A8(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_274B711A8(uint64_t a1)
{
  v1 = type metadata accessor for AutocompleteAccessoryBar(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DF8, &qword_274BFB068);
  swift_storeEnumTagMultiPayload();
  v10 = v7 + v2[7];
  v24 = xmmword_274C00930;

  sub_274BF4774();
  v11 = v26;
  *v10 = v25;
  *(v10 + 2) = v11;
  *&v25 = 0x4035000000000000;
  sub_274AFD208();
  sub_274BF3074();
  *&v25 = 0x4034000000000000;
  sub_274BF3074();
  *&v25 = 0x4031000000000000;
  sub_274BF3074();
  *&v25 = 0x4048000000000000;
  sub_274BF3074();
  v12 = (v7 + v2[12]);
  type metadata accessor for AutocompleteAccessoryBar.Model(0);
  sub_274B72208();
  v13 = sub_274BF3264();
  v15 = v14;

  *v12 = v13;
  v12[1] = v15;
  v16 = (v7 + v2[13]);
  *v16 = sub_274B72108;
  v16[1] = v8;
  v17 = (v7 + v2[14]);
  *v17 = sub_274B72110;
  v17[1] = v9;
  sub_274B01174(v7, v4);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C950, &qword_274C00A00));
  v19 = sub_274BF3984();
  v20 = [v19 view];
  if (v20)
  {
    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];

    v22 = [v19 view];
    if (v22)
    {
      v23 = [objc_opt_self() clearColor];
      [v22 setBackgroundColor_];

      sub_274BF3964();
      sub_274B72260(v7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_274B71528(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_274B71BC4(a1);
  }
}

void sub_274B71584(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_3_14(a1 + 16, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_274B715D8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_responder;
  OUTLINED_FUNCTION_0_21(a1);
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_274B71144();
    v6 = [v5 view];

    if (v6)
    {
      [v6 sizeToFit];

      v7 = [*(v1 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator____lazy_storage___accessoryBarHostingController) view];
      [v4 setInputAccessoryView_];

      [v4 reloadInputViews];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_274B716B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28098C930, &qword_274C009B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2 - 8];
  v4 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource;
  OUTLINED_FUNCTION_3_14(&v0[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource], v11);
  if (*&v0[v4])
  {
    v5 = sub_274BF5214();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    sub_274BF51E4();
    v6 = v0;
    v7 = sub_274BF51D4();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_274BD2E58();
  }

  else
  {
    *&v0[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_items] = MEMORY[0x277D84F90];

    sub_274B710D8();
  }
}

uint64_t sub_274B717F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_274BF51E4();
  v4[6] = sub_274BF51D4();
  v6 = sub_274BF51C4();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_274B71890, v6, v5);
}

uint64_t sub_274B71890()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource;
  OUTLINED_FUNCTION_3_14(v1 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource, (v0 + 2));
  v3 = *(v1 + v2);
  v0[9] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_274B71984;

    return sub_274B85A8C();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_274B71984(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_274B71AAC, v4, v3);
}

uint64_t sub_274B71AAC()
{
  v1 = v0[11];
  v2 = v0[5];

  *(v2 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_items) = v1;

  sub_274B710D8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_274B71B3C()
{
  v1 = v0 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate;
  OUTLINED_FUNCTION_3_14(v0 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate, v5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274B71BC4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate;
  OUTLINED_FUNCTION_3_14(v1 + OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate, v7);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

id UIKitAutocompleteCoordinator.init()()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_responder] = 0;
  *&v0[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_autocompleteDataSource] = 0;
  *&v0[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_dataSourceObservation] = 0;
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_items] = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_barModel;
  type metadata accessor for AutocompleteAccessoryBar.Model(0);
  swift_allocObject();
  *&v1[v3] = sub_274AFCDB0(v2);
  *&v1[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator____lazy_storage___accessoryBarHostingController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UIKitAutocompleteCoordinator();
  return objc_msgSendSuper2(&v5, sel_init);
}

id UIKitAutocompleteCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitAutocompleteCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274B72054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_274B08848;

  return sub_274B717F8(a1, v4, v5, v6);
}

uint64_t sub_274B72140(uint64_t a1)
{
  v2 = sub_274BF33A4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_274BF3574();
}

unint64_t sub_274B72208()
{
  result = qword_280989CB0;
  if (!qword_280989CB0)
  {
    type metadata accessor for AutocompleteAccessoryBar.Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989CB0);
  }

  return result;
}

uint64_t sub_274B72260(uint64_t a1)
{
  v2 = type metadata accessor for AutocompleteAccessoryBar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274B7231C()
{
  result = qword_28098C960;
  if (!qword_28098C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C958, &qword_274C00A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C960);
  }

  return result;
}

uint64_t EnvironmentValues.glyphCache.getter()
{
  sub_274B723BC();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274B723BC()
{
  result = qword_28098C970;
  if (!qword_28098C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C970);
  }

  return result;
}

void (*EnvironmentValues.glyphCache.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_274B723BC();
  sub_274BF37A4();
  return sub_274B724D8;
}

void sub_274B724D8(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_274BF37B4();
  }

  else
  {
    sub_274BF37B4();
  }
}

uint64_t sub_274B72598(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_274B72604(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

void sub_274B72654()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  while (1)
  {
    v2 = WFGlyphCharactersInSection();
    sub_274AD8430(0, &qword_28098C818, 0x277CCABB0);
    v3 = sub_274BF5144();

    if (v3 >> 62)
    {
      v4 = sub_274BF5874();
      if (!v4)
      {
LABEL_14:

        v6 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    v20 = MEMORY[0x277D84F90];
    sub_274B63E6C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      goto LABEL_29;
    }

    v19 = v1;
    v5 = 0;
    v6 = v20;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C65230](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 unsignedShortValue];

      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_274B63E6C((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v20 + 16) = v11 + 1;
      *(v20 + 2 * v11 + 32) = v9;
    }

    while (v4 != v5);

    v1 = v19;
LABEL_15:
    v12 = *(v6 + 16);
    v13 = *(v1 + 16);
    if (__OFADD__(v13, v12))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v1 + 24) >> 1)
    {
      sub_274BBB810();
      v1 = v14;
    }

    if (*(v6 + 16))
    {
      v15 = *(v1 + 16);
      if ((*(v1 + 24) >> 1) - v15 < v12)
      {
        goto LABEL_30;
      }

      memcpy((v1 + 2 * v15 + 32), (v6 + 32), 2 * v12);

      if (v12)
      {
        v16 = *(v1 + 16);
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_31;
        }

        *(v1 + 16) = v18;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_28;
      }
    }

    if (++v0 == 3)
    {
      return;
    }
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

uint64_t GlyphCache.__allocating_init(size:outline:)(uint64_t a1, double a2, double a3)
{
  v3 = a1;
  v6 = swift_allocObject();
  GlyphCache.init(size:outline:)(v3, a2, a3);
  return v6;
}

uint64_t GlyphCache.init(size:outline:)(char a1, double a2, double a3)
{
  v18 = sub_274BF54F4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  sub_274BF54D4();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v13 = sub_274BF4CD4();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_4();
  type metadata accessor for WFGlyphCharacter(0);
  sub_274AD8430(0, &unk_28098B350, 0x277D79FC8);
  sub_274B73B70(&qword_28098B340, type metadata accessor for WFGlyphCharacter, &unk_274BF95C0);
  *(v3 + 16) = sub_274BF4E14();
  sub_274BF4D24();
  *(v3 + 24) = sub_274BF4E14();
  *(v3 + 32) = 0;
  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  sub_274BF4CC4();
  sub_274B73B70(&qword_28098C978, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C980, &qword_274C00A10);
  sub_274B73BB8(&qword_28098C988, &qword_28098C980, &qword_274C00A10);
  sub_274BF57F4();
  v14 = *MEMORY[0x277D85260];
  v15 = *(v7 + 104);
  v15(v11, v14, v18);
  *(v3 + 64) = sub_274BF5544();
  sub_274BF4CC4();
  sub_274BF57F4();
  v15(v11, v14, v18);
  *(v3 + 72) = sub_274BF5544();
  sub_274B72654();
  *(v3 + 80) = v16;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = a1;
  return v3;
}

uint64_t sub_274B72CD0()
{
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  swift_weakInit();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C998, &qword_274C00B18);
  OUTLINED_FUNCTION_10_5(v0, v1, v0, v2, v3, v4, v5, v6, v8);

  return v9;
}

void sub_274B72D68(uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (!*(v7 + 16) || (v8 = sub_274BDA978(a2), (v9 & 1) == 0))
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v11 = v10;

LABEL_7:
  *a3 = v11;
}

void sub_274B72E40(void *a1, __int16 a2)
{
  v5 = *(v2 + 72);
  OUTLINED_FUNCTION_36();
  v6 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_7_10();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_274B74684;
  *(v8 + 24) = v7;
  v12[4] = sub_274B746E8;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_4_12();
  v12[2] = v9;
  v12[3] = &block_descriptor_54;
  v10 = _Block_copy(v12);
  v11 = a1;

  dispatch_sync(v5, v10);
  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

double sub_274B72FAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (a3)
    {
      v8 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v7 + 16);
      sub_274B31B1C(v8, a2, isUniquelyReferenced_nonNull_native, v10, v11, v12);
      *(v7 + 16) = v13;
    }

    else
    {
    }

    swift_endAccess();
  }

  return result;
}

uint64_t sub_274B73078(__int16 a1, uint64_t a2, uint64_t a3)
{
  sub_274BF4C94();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_36();
  v7 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_9_10();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  aBlock[4] = sub_274B74674;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6();
  aBlock[2] = v9;
  aBlock[3] = &block_descriptor_43_0;
  _Block_copy(aBlock);

  sub_274ADDED0(a2, a3);
  OUTLINED_FUNCTION_0_22();
  sub_274B73B70(v10, v11, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  sub_274B73BB8(&qword_280989F98, &qword_280989F90, &qword_274BFE890);
  sub_274BF57F4();
  sub_274BF4D24();
  swift_allocObject();
  v12 = sub_274BF4D04();

  return v12;
}

void sub_274B7326C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    type metadata accessor for GlyphCache();
    v7 = sub_274B73380(a2);
    [v7 setOutline_];
    v8 = [v7 imageWithSize_];
    sub_274B72E40(v8, a2);
    swift_beginAccess();
    sub_274B29880(a2);
    swift_endAccess();

    if (a3)
    {
      a3(v9);
    }
  }
}

id sub_274B73380(unsigned __int16 a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D7A1E8]) init];
  [v2 setDrawBackground_];
  [v2 setGlyphCharacter_];
  return v2;
}

uint64_t sub_274B733E4()
{
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  swift_weakInit();
  v0 = sub_274BF4D24();
  OUTLINED_FUNCTION_10_5(v0, v1, v0, v2, v3, v4, v5, v6, v8);

  return v9;
}

void sub_274B73470(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_274BF4C94();
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = *(v7 + 24);
    if (*(v8 + 16) && (v9 = sub_274BDA978(a2), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = sub_274B73078(a2, 0, 0);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v7 + 24);
      sub_274B31BEC(v11, a2, isUniquelyReferenced_nonNull_native, v13, v14, v15);
      *(v7 + 24) = v17;
      swift_endAccess();
      sub_274BF4D14();
    }
  }

  else
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274B02D5C;
    aBlock[3] = &block_descriptor_58_0;
    _Block_copy(aBlock);
    sub_274B73B70(&qword_280989F88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
    sub_274B73BB8(&qword_280989F98, &qword_280989F90, &qword_274BFE890);
    sub_274BF57F4();
    sub_274BF4D24();
    swift_allocObject();
    v11 = sub_274BF4D04();
  }

  *a3 = v11;
}

double sub_274B73718(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v33 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v31 = v13;
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = sub_274BF4CA4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  swift_beginAccess();
  if (*(v3 + 32) == 1)
  {
    OUTLINED_FUNCTION_3_14(v3 + 33, aBlock);
    a2(*(v3 + 33));
  }

  else
  {
    *(v3 + 32) = 1;
    sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
    (*(v19 + 104))(v23, *MEMORY[0x277D851B8], v17);
    v29 = sub_274BF5554();
    (*(v19 + 8))(v23, v17);
    OUTLINED_FUNCTION_9_10();
    v25 = swift_allocObject();
    v25[2] = v3;
    v25[3] = a1;
    v25[4] = a2;
    v25[5] = a3;
    aBlock[4] = sub_274B73B4C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274B02D5C;
    aBlock[3] = &block_descriptor_9;
    v26 = _Block_copy(aBlock);

    sub_274BF4CB4();
    OUTLINED_FUNCTION_0_22();
    sub_274B73B70(v27, v28, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
    sub_274B73BB8(&qword_280989F98, &qword_280989F90, &qword_274BFE890);
    sub_274BF57F4();
    MEMORY[0x277C64DC0](0, v16, v11, v26);
    _Block_release(v26);

    (*(v33 + 8))(v11, v6);
    (*(v31 + 8))(v16, v32);
  }

  return result;
}

uint64_t sub_274B73ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(a1 + 80);
  }

  sub_274B73C0C(v6, a3, a4);
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_274B73B70(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274B73BB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_274B73C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_274BF4C94();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v7 = dispatch_group_create();
  v8 = *(v3 + 64);
  OUTLINED_FUNCTION_36();
  v9 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_7_10();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_274B7464C;
  *(v11 + 24) = v10;
  v40 = sub_274B74658;
  v41 = v11;
  OUTLINED_FUNCTION_3_16();
  v37 = 1107296256;
  OUTLINED_FUNCTION_4_12();
  v38 = v12;
  v39 = &block_descriptor_26;
  v13 = _Block_copy(aBlock);

  v14 = v7;

  dispatch_sync(v8, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v32 = v14;
    OUTLINED_FUNCTION_3_14(v4 + 24, v35);
    v16 = *(v4 + 24);
    v19 = *(v16 + 64);
    v18 = v16 + 64;
    v17 = v19;
    v20 = 1 << *(*(v4 + 24) + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    if (v22)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
        v26 = sub_274BF5504();
        OUTLINED_FUNCTION_36();
        v27 = swift_allocObject();
        swift_weakInit();
        OUTLINED_FUNCTION_7_10();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a2;
        v28[4] = a3;
        v40 = sub_274B74660;
        v41 = v28;
        OUTLINED_FUNCTION_3_16();
        v37 = 1107296256;
        OUTLINED_FUNCTION_6();
        v38 = v29;
        v39 = &block_descriptor_33;
        _Block_copy(aBlock);
        OUTLINED_FUNCTION_0_22();
        sub_274B73B70(v30, v31, MEMORY[0x277D851A0]);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
        sub_274B73BB8(&qword_280989F98, &qword_280989F90, &qword_274BFE890);
        sub_274BF57F4();
        sub_274BF4D24();
        swift_allocObject();
        sub_274BF4D04();

        sub_274BF54C4();

        return;
      }

      v22 = *(v18 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        do
        {
LABEL_10:
          v22 &= v22 - 1;

          sub_274BF5534();
        }

        while (v22);
        continue;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_274B7401C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = (a2 + 32);
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        dispatch_group_enter(a3);
        v10 = swift_allocObject();
        *(v10 + 16) = a3;
        v11 = a3;
        v12 = sub_274B73078(v9, sub_274B7466C, v10);

        swift_beginAccess();

        swift_isUniquelyReferenced_nonNull_native();
        v13 = *(v5 + 24);
        *(v5 + 24) = 0x8000000000000000;
        v14 = sub_274BDA978(v9);
        if (__OFADD__(v13[2], (v15 & 1) == 0))
        {
          break;
        }

        v16 = v14;
        v17 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B338, &qword_274BFDB40);
        if (sub_274BF5A74())
        {
          v18 = sub_274BDA978(v8);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_17;
          }

          v16 = v18;
        }

        if (v17)
        {
          *(v13[7] + 8 * v16) = v12;
        }

        else
        {
          v13[(v16 >> 6) + 8] |= 1 << v16;
          *(v13[6] + 2 * v16) = v8;
          *(v13[7] + 8 * v16) = v12;
          v20 = v13[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_16;
          }

          v13[2] = v22;
        }

        *(v5 + 24) = v13;
        swift_endAccess();

        if (!--v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      type metadata accessor for WFGlyphCharacter(0);
      sub_274BF5C44();
      __break(1u);
    }

    else
    {
LABEL_13:
    }
  }
}

double sub_274B74238(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    *(v5 + 33) = 1;
    a2(1);
  }

  return result;
}

uint64_t sub_274B742C4(unsigned __int16 a1)
{
  result = sub_274B72CD0();
  if (!result)
  {
    WFReplacementGlyphCharacterForCharacter();
    result = sub_274B72CD0();
    if (!result)
    {
      sub_274B733E4();
      sub_274BF4D14();
      v2 = sub_274B72CD0();

      return v2;
    }
  }

  return result;
}

id static GlyphCache.uncachedImage(character:size:)(unsigned __int16 a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A610, &qword_274BFFF90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_274BF8D80;
  sub_274BF5984();
  MEMORY[0x277C648E0](91, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C990, &qword_274C00A18);
  v7 = sub_274BF5DC4();
  MEMORY[0x277C648E0](v7);

  MEMORY[0x277C648E0](0xD00000000000004FLL, 0x8000000274C0BBB0);
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_274BF5CA4();

  type metadata accessor for GlyphCache();
  v8 = sub_274B73380(a1);
  v9 = [v8 imageWithSize_];

  return v9;
}

uint64_t GlyphCache.deinit()
{

  return v0;
}

uint64_t GlyphCache.__deallocating_deinit()
{
  GlyphCache.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B74534@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GlyphCache();
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

unint64_t sub_274B74720()
{
  result = qword_28098C9A0;
  if (!qword_28098C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C9A0);
  }

  return result;
}

uint64_t sub_274B747A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  v13[1] = a1;
  v3 = sub_274BF3A94();
  MEMORY[0x28223BE20](v3);
  v4 = sub_274BF2F54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C9A8, &qword_274C00B90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  sub_274BF3BA4();
  sub_274BF2F14();
  sub_274B74BA0(&qword_28098A728, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_274B74BA0(&qword_28098C9B0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  sub_274BF4984();
  (*(v5 + 8))(v7, v4);
  sub_274BF2F74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C9B8, &qword_274C00B98);
  sub_274AFA930(&qword_28098C9C0, &qword_28098C9B8, &qword_274C00B98, MEMORY[0x277CE04B0]);
  sub_274AFA930(&qword_28098C9C8, &qword_28098C9A8, &qword_274C00B90, MEMORY[0x277CDFB18]);
  sub_274BF4344();
  return (*(v9 + 8))(v11, v8);
}

void sub_274B74ABC()
{
  sub_274BF2F34();
  v1 = v0;
  sub_274BF2F44();
  v3 = v2;
  v4 = [objc_opt_self() sharedContext];
  v6 = [v4 applicationOrNil];

  v5 = v6;
  if (v6)
  {
    if (v1 != v3)
    {
      [v6 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
      v5 = v6;
    }
  }
}

uint64_t sub_274B74BA0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t WFDateContentItem.preview(configuration:)()
{
  sub_274B74C24();
  sub_274B707D4();
  return sub_274BF48B4();
}

id sub_274B74C24()
{
  v24 = sub_274BF1FC4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = sub_274BF1FF4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = sub_274BF2114();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  result = [v0 date];
  if (result)
  {
    v22 = result;
    sub_274BF20C4();

    sub_274BF1FA4();
    sub_274BF1FB4();
    v23 = sub_274BF20D4();
    (*(v2 + 8))(v6, v24);
    (*(v9 + 8))(v13, v7);
    (*(v16 + 8))(v20, v14);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274B74E8C@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_274BF3804();
  sub_274ADDF6C();

  v6 = sub_274BF4104();
  v8 = v7;
  v10 = v9;
  v12 = v11 & 1;
  sub_274AF396C(v6, v7, v11 & 1);

  sub_274AFA1D0(v6, v8, v12);

  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = v12;
  *(a3 + 48) = v10;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

unint64_t sub_274B74F64()
{
  result = qword_28098C9D0;
  if (!qword_28098C9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9D8, &qword_274C00C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C9D0);
  }

  return result;
}

void *sub_274B74FC8()
{
  result = sub_274B334BC();
  if (v1 > 0xFDu || (v1 & 1) != 0)
  {
    sub_274AE8EFC(result, v1);
    return 0;
  }

  return result;
}

id sub_274B75158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_274BF4F04();

  v7 = sub_274BF4F04();

  v8 = [swift_getObjCClassFromMetadata() typeWithClassName:v6 frameworkName:v7 location:a5];

  return v8;
}

unint64_t sub_274B75230()
{
  result = qword_28098C9F0;
  if (!qword_28098C9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E8, &qword_274C00C68);
    sub_274AFA930(&qword_28098C9F8, &qword_28098CA00, &qword_274C00C70, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C9F0);
  }

  return result;
}

uint64_t sub_274B752E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v128 = a4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CD58, &qword_274C01018);
  MEMORY[0x28223BE20](v114);
  v7 = &v111 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C9E8, &qword_274C00C68);
  MEMORY[0x28223BE20](v8);
  v116 = &v111 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CA00, &qword_274C00C70);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v111 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0, &qword_274C00C60);
  swift_getTupleTypeMetadata2();
  v11 = sub_274BF4B54();
  v118 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v111 - v12;
  v117 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = &v111 - v18;
  v127 = v19;
  v20 = sub_274BF3A74();
  v122 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v111 - v21;
  v124 = v8;
  v126 = sub_274BF3A74();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v111 - v23;
  v24 = a1;
  v25 = *(a1 + 8);

  v26 = sub_274B3356C();
  v28 = v27;

  if (v28 == 254)
  {
    v116 = v13;
    v111 = type metadata accessor for WFShowContentDialogRequest.TextLoadingView(0, a2, v121, v30);
    v43 = *(v25 + 16);
    v44 = [v43 name];

    v45 = sub_274BF4F44();
    v47 = v46;

    v136 = v45;
    v137 = v47;
    sub_274ADDF6C();
    v48 = sub_274BF4104();
    v50 = v49;
    v51 = v20;
    v53 = v52;
    v55 = v54;
    KeyPath = swift_getKeyPath();
    v57 = v24 + v111[9];
    v58 = v120;
    v111 = v22;
    v59 = v121;
    sub_274ADB48C(v57, a2, v121);
    v136 = v48;
    v137 = v50;
    v60 = a2;
    v61 = v48;
    v113 = v48;
    v114 = v50;
    LOBYTE(v48) = v53 & 1;
    v62 = v51;
    v138 = v48;
    v139 = v55;
    v140 = KeyPath;
    v115 = v55;
    v112 = KeyPath;
    v141 = 2;
    v142 = 0;
    v143[0] = &v136;
    v63 = v117;
    v64 = v58;
    v65 = v60;
    (*(v117 + 16))(v16, v64, v60);
    v143[1] = v16;
    sub_274AF396C(v61, v50, v48);

    v135[0] = v119;
    v135[1] = v65;
    v66 = v65;
    v133 = sub_274B7AC30();
    v134 = v59;
    v67 = v116;
    sub_274ADE60C(v143, 2, v135);
    v121 = *(v63 + 8);
    v121(v16, v66);
    sub_274AFA1D0(v136, v137, v138);

    v68 = v127;
    WitnessTable = swift_getWitnessTable();
    v70 = v111;
    v33 = MEMORY[0x277CE1410];
    sub_274B2CC88(v67, MEMORY[0x277CE1428], v68, MEMORY[0x277CE1410], WitnessTable, v71, v72, v73, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    v131 = v33;
    v132 = WitnessTable;
    v74 = swift_getWitnessTable();
    v75 = sub_274B75230();
    v39 = v123;
    sub_274ADB9A0(v70, v62, v124, v74, v75, v76, v77, v78, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    sub_274AFA1D0(v113, v114, v48);

    (*(v122 + 8))(v70, v62);
    (*(v118 + 8))(v67, v68);
    v121(v120, v66);
  }

  else if (v28 == 255)
  {
    v31 = v127;
    v32 = swift_getWitnessTable();
    v33 = MEMORY[0x277CE1410];
    sub_274ADB9A0(v32, MEMORY[0x277CE1428], v31, MEMORY[0x277CE1410], v32, v34, v35, v36, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    v129 = v33;
    v130 = v32;
    v37 = swift_getWitnessTable();
    v38 = sub_274B75230();
    v39 = v123;
    sub_274ADB9A0(v22, v20, v124, v37, v38, v40, v41, v42, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    (*(v122 + 8))(v22, v20);
  }

  else
  {
    v39 = v123;
    v111 = v26;
    if (v28)
    {
      swift_getErrorValue();
      v136 = sub_274BF5C54();
      v137 = v79;
      sub_274ADDF6C();
      v80 = sub_274BF4104();
      v82 = v81;
      *v7 = v80;
      *(v7 + 1) = v81;
      v84 = v83 & 1;
      v7[16] = v83 & 1;
      *(v7 + 3) = v85;
      swift_storeEnumTagMultiPayload();
      sub_274AF396C(v80, v82, v84);

      sub_274AF396C(v80, v82, v84);
      sub_274AFA930(&qword_28098C9F8, &qword_28098CA00, &qword_274C00C70, MEMORY[0x277CDD6E0]);

      v86 = v116;
      sub_274BF3A64();
      v87 = swift_getWitnessTable();
      v143[8] = MEMORY[0x277CE1410];
      v143[9] = v87;
      v88 = swift_getWitnessTable();
      v89 = sub_274B75230();
      sub_274B2CC88(v86, v20, v124, v88, v89, v90, v91, v92, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
      sub_274AE8EFC(v111, v28);
      sub_274AFA1D0(v80, v82, v84);

      v93 = v80;
      v33 = MEMORY[0x277CE1410];
      sub_274AFA1D0(v93, v82, v84);

      sub_274B0671C(v86, &qword_28098C9E8, &qword_274C00C68);
    }

    else
    {
      MEMORY[0x28223BE20](v29);
      *(&v111 - 2) = v26;
      sub_274BF3E24();
      sub_274B7AC30();
      v94 = v112;
      sub_274BF2EC4();
      v95 = v113;
      v96 = v115;
      (*(v113 + 16))(v7, v94, v115);
      swift_storeEnumTagMultiPayload();
      sub_274AFA930(&qword_28098C9F8, &qword_28098CA00, &qword_274C00C70, MEMORY[0x277CDD6E0]);
      v97 = v116;
      sub_274BF3A64();
      v98 = swift_getWitnessTable();
      v33 = MEMORY[0x277CE1410];
      v143[2] = MEMORY[0x277CE1410];
      v143[3] = v98;
      v99 = swift_getWitnessTable();
      v100 = sub_274B75230();
      sub_274B2CC88(v97, v20, v124, v99, v100, v101, v102, v103, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
      sub_274AE8EFC(v111, v28);
      sub_274B0671C(v97, &qword_28098C9E8, &qword_274C00C68);
      (*(v95 + 8))(v94, v96);
    }
  }

  v104 = v126;
  v105 = v125;
  v106 = swift_getWitnessTable();
  v143[6] = v33;
  v143[7] = v106;
  v107 = swift_getWitnessTable();
  v108 = sub_274B75230();
  v143[4] = v107;
  v143[5] = v108;
  v109 = swift_getWitnessTable();
  sub_274ADB48C(v39, v104, v109);
  return (*(v105 + 8))(v39, v104);
}

uint64_t sub_274B75FB8@<X0>(uint64_t a2@<X8>)
{
  sub_274BF4F44();
  sub_274ADDF6C();
  v3 = sub_274BF4104();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_274B76048(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_274AFA930(a4, a5, a6, &unk_274C00380);

  return sub_274BF3264();
}

uint64_t sub_274B76254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v28[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0, &qword_274C00C60);
  v11 = *(a1 + 16);
  OUTLINED_FUNCTION_12_5();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_76();
  sub_274BF4B54();
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  OUTLINED_FUNCTION_4_2();
  v12 = sub_274BF3A74();
  OUTLINED_FUNCTION_2_23();
  WitnessTable = swift_getWitnessTable();
  v32 = MEMORY[0x277CE1410];
  v33 = WitnessTable;
  v30 = swift_getWitnessTable();
  v31 = a4();
  swift_getWitnessTable();
  v14 = sub_274BF48A4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_2();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v28 - v22;
  v24 = *(a1 + 24);
  v28[4] = v11;
  v28[5] = v24;
  v29 = v6;
  sub_274B2CD38(v12);
  sub_274BF4894();
  OUTLINED_FUNCTION_4_13();
  v25 = swift_getWitnessTable();
  sub_274ADB48C(v20, v14, v25);
  v26 = *(v16 + 8);
  v26(v20, v14);
  sub_274ADB48C(v23, v14, v25);
  return (v26)(v23, v14);
}

unint64_t sub_274B764A4()
{
  result = qword_28098CA10;
  if (!qword_28098CA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CA08, &unk_274C00C78);
    sub_274B7AB7C(&qword_280989AB8, &qword_280989AC0, &unk_274BFAAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CA10);
  }

  return result;
}

uint64_t sub_274B76550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v147 = a4;
  v8 = sub_274BF46E4();
  v130 = *(v8 - 8);
  v131 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0, &qword_274C00C60);
  swift_getTupleTypeMetadata2();
  v11 = sub_274BF4B54();
  v136 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v135 = &v127 - v12;
  v134 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v139 = &v127 - v17;
  v146 = v18;
  v19 = sub_274BF3A74();
  v140 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v138 = &v127 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CA08, &unk_274C00C78);
  v141 = v19;
  v142 = v21;
  v22 = sub_274BF3A74();
  v144 = *(v22 - 8);
  v145 = v22;
  MEMORY[0x28223BE20](v22);
  v143 = &v127 - v23;
  v132 = a3;
  v25 = type metadata accessor for WFShowContentDialogRequest.ImageLoadingView(0, a2, a3, v24);
  v137 = a1;
  v26 = *(a1 + 8);

  v27 = sub_274B33580();
  v29 = v28;

  if (v29 == 254)
  {
    v44 = *(v26 + 16);
    v45 = [v44 name];

    v46 = sub_274BF4F44();
    v48 = v47;

    v155 = v46;
    v156 = v48;
    sub_274ADDF6C();
    v49 = sub_274BF4104();
    v51 = v50;
    v52 = v25;
    v53 = v15;
    v55 = v54;
    v57 = v56;
    KeyPath = swift_getKeyPath();
    v59 = v137 + *(v52 + 36);
    v60 = v139;
    v61 = v132;
    sub_274ADB48C(v59, a2, v132);
    v155 = v49;
    v156 = v51;
    v62 = a2;
    v63 = v49;
    v129 = v49;
    v130 = v51;
    LOBYTE(v49) = v55 & 1;
    LOBYTE(v157) = v55 & 1;
    LODWORD(v137) = v55 & 1;
    v158 = v57;
    v159 = KeyPath;
    v131 = v57;
    v128 = KeyPath;
    v160 = 2;
    v161 = 0;
    v170 = &v155;
    v64 = v134;
    v65 = v60;
    v66 = v62;
    (*(v134 + 16))(v53, v65, v62);
    *&v171 = v53;
    sub_274AF396C(v63, v51, v49);

    v154[0] = v133;
    v154[1] = v66;
    v127 = v66;
    v152 = sub_274B7AC30();
    v153 = v61;
    v67 = v135;
    sub_274ADE60C(&v170, 2, v154);
    v68 = *(v64 + 8);
    v68(v53, v66);
    sub_274AFA1D0(v155, v156, v157);

    v69 = v146;
    WitnessTable = swift_getWitnessTable();
    v71 = v138;
    v72 = MEMORY[0x277CE1410];
    sub_274B2CC88(v67, MEMORY[0x277CE1428], v69, MEMORY[0x277CE1410], WitnessTable, v73, v74, v75, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
    v150 = v72;
    v151 = WitnessTable;
    v76 = v141;
    v77 = swift_getWitnessTable();
    v78 = sub_274B764A4();
    v40 = v143;
    v79 = v77;
    v33 = v72;
    sub_274ADB9A0(v71, v76, v142, v79, v78, v80, v81, v82, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
    sub_274AFA1D0(v129, v130, v137);

    (*(v140 + 8))(v71, v76);
    (*(v136 + 8))(v67, v69);
    v68(v139, v127);
  }

  else if (v29 == 255)
  {
    v30 = v146;
    v31 = swift_getWitnessTable();
    v32 = v138;
    v33 = MEMORY[0x277CE1410];
    sub_274ADB9A0(v31, MEMORY[0x277CE1428], v30, MEMORY[0x277CE1410], v31, v34, v35, v36, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
    v148 = v33;
    v149 = v31;
    v37 = v141;
    v38 = swift_getWitnessTable();
    v39 = sub_274B764A4();
    v40 = v143;
    sub_274ADB9A0(v32, v37, v142, v38, v39, v41, v42, v43, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
    (*(v140 + 8))(v32, v37);
  }

  else
  {
    LODWORD(v140) = v29;
    v129 = v27;
    if (v29)
    {
      swift_getErrorValue();
      v155 = sub_274BF5C54();
      v156 = v83;
      sub_274ADDF6C();
      v84 = sub_274BF4104();
      v86 = v85;
      v88 = v87 & 1;
      v170 = v84;
      *&v171 = v85;
      *(&v171 + 1) = v87 & 1;
      v172 = v89;
      v173 = 1;
      sub_274AF396C(v84, v85, v87 & 1);

      sub_274AF396C(v84, v86, v88);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AC0, &unk_274BFAAE0);
      sub_274B7AB7C(&qword_280989AB8, &qword_280989AC0, &unk_274BFAAE0);
      sub_274BF3A64();
      v138 = v156;
      v139 = v155;
      v90 = v157;
      v91 = v158;
      LODWORD(v137) = v159;
      v92 = swift_getWitnessTable();
      v168 = MEMORY[0x277CE1410];
      v169 = v92;
      v93 = v141;
      v94 = swift_getWitnessTable();
      v95 = sub_274B764A4();
      v96 = v94;
      v40 = v143;
      sub_274B2CC88(&v155, v93, v142, v96, v95, v97, v98, v99, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
      sub_274AE8EFC(v129, v140);
      sub_274AFA1D0(v84, v86, v88);

      v100 = v84;
      v33 = MEMORY[0x277CE1410];
      sub_274AFA1D0(v100, v86, v88);

      v102 = v138;
      v101 = v139;
      v103 = v90;
      v104 = v91;
      v105 = v137;
    }

    else
    {
      sub_274B7706C(v27);
      v107 = v130;
      v106 = v131;
      (*(v130 + 104))(v10, *MEMORY[0x277CE0FE0], v131);
      v108 = sub_274BF4734();

      (*(v107 + 8))(v10, v106);
      v139 = v108;
      v170 = v108;
      v171 = xmmword_274BFBC10;
      v172 = 0;
      v173 = 0;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AC0, &unk_274BFAAE0);
      sub_274B7AB7C(&qword_280989AB8, &qword_280989AC0, &unk_274BFAAE0);
      sub_274BF3A64();
      v109 = v155;
      v110 = v156;
      v112 = v157;
      v111 = v158;
      v113 = v159;
      v114 = swift_getWitnessTable();
      v162 = MEMORY[0x277CE1410];
      v163 = v114;
      v115 = v141;
      v116 = swift_getWitnessTable();
      v117 = sub_274B764A4();
      v40 = v143;
      sub_274B2CC88(&v155, v115, v142, v116, v117, v118, v119, v120, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
      sub_274AE8EFC(v129, v140);

      v101 = v109;
      v33 = MEMORY[0x277CE1410];
      v102 = v110;
      v103 = v112;
      v104 = v111;
      v105 = v113;
    }

    sub_274B7ADA8(v101, v102, v103, v104, v105);
  }

  v121 = swift_getWitnessTable();
  v166 = v33;
  v167 = v121;
  v122 = swift_getWitnessTable();
  v123 = sub_274B764A4();
  v164 = v122;
  v165 = v123;
  v124 = v145;
  v125 = swift_getWitnessTable();
  sub_274ADB48C(v40, v124, v125);
  return (*(v144 + 8))(v40, v124);
}

uint64_t sub_274B7706C(void *a1)
{
  v1 = a1;

  return sub_274BF46C4();
}

uint64_t sub_274B770EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B771A4(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B772A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CCF0, &unk_274C00F58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = qword_28098CBD8;
  sub_274B77094(0, 1);
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + 16) = a1;
  aBlock[4] = sub_274B7AA7C;
  v12 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274BDB8EC;
  aBlock[3] = &block_descriptor_24;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  [v9 getPreferredFileSize_];
  _Block_release(v8);

  return v1;
}

uint64_t sub_274B77470(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF4C94();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_274BF4CD4();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  v10 = sub_274BF5504();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_274B7AA84;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_30;
  v12 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  sub_274AFA930(&qword_280989F98, &qword_280989F90, &qword_274BFE890, MEMORY[0x277D83970]);
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

uint64_t sub_274B77768()
{
  v1 = qword_28098CBD8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CCF0, &unk_274C00F58);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_274B777DC()
{
  v0 = sub_274B77768();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B77830(uint64_t *a1)
{
  swift_getWitnessTable();

  return sub_274BF3264();
}

uint64_t sub_274B778B0()
{

  v0 = sub_274B770EC();
  v2 = v1;

  if (v2)
  {

    v3 = sub_274B74FC8();

    if (!v3)
    {
      return 0;
    }

    v0 = [v3 fileSize];
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  v5 = [v4 stringFromByteCount_];

  v6 = sub_274BF4F44();
  return v6;
}

id sub_274B77998()
{
  v1 = *(v0 + 8);

  v2 = sub_274B74FC8();

  if (!v2 || (v3 = [v2 wfType], v2, !v3))
  {
    v4 = *(v1 + 16);
    v3 = [v4 preferredFileType];

    if (!v3)
    {
      return 0;
    }
  }

  v5 = [v3 documentIcon];

  return v5;
}

void sub_274B77A58()
{
  OUTLINED_FUNCTION_19_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v4[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BD8, &unk_274BFABB0);
  swift_allocObject();
  v6 = v3;
  v7 = sub_274BC1C48(v6, 0);
  *v5 = sub_274B76048(v7, v8, v9, &qword_280989BE0, &qword_280989BD8, &unk_274BFABB0);
  v5[1] = v10;
  v11 = OUTLINED_FUNCTION_7_15();
  _s15FileLoadingViewV14FileSizeLoaderCMa(v11, v12, v13, v14);
  v15 = sub_274B7726C(v6);
  v5[3] = sub_274B77830(v15);
  v5[4] = v16;
  v17 = OUTLINED_FUNCTION_7_15();
  type metadata accessor for WFShowContentDialogRequest.FileLoadingView(v17, v18, v19, v20);
  v1();
  OUTLINED_FUNCTION_18_5();
}

uint64_t WFShowContentDialogRequest.FileLoadingView.body.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0, &qword_274C00C60);
  v4 = MEMORY[0x277CE1180];
  v25 = v3;
  v26 = MEMORY[0x277CE1180];
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CA18, &qword_274C00C88);
  OUTLINED_FUNCTION_4_2();
  v27 = sub_274BF3A74();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28098CA20, &qword_274C00C90);
  v29 = v4;
  OUTLINED_FUNCTION_12_5();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_76();
  v6 = sub_274BF4B54();
  OUTLINED_FUNCTION_2_23();
  swift_getWitnessTable();
  v7 = sub_274BF48A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v21[-v15];
  v17 = *(a1 + 24);
  v22 = v5;
  v23 = v17;
  v24 = v1;
  sub_274B2CD38(v6);
  sub_274BF4894();
  OUTLINED_FUNCTION_4_13();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v13, v7, WitnessTable);
  v19 = *(v9 + 8);
  v19(v13, v7);
  sub_274ADB48C(v16, v7, WitnessTable);
  return (v19)(v16, v7);
}

uint64_t sub_274B77D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  *&v77 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CA18, &qword_274C00C88);
  v84 = sub_274BF3A74();
  v91 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v90 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  v81 = a1;
  v16 = *(*(a1 + 8) + 16);
  v17 = [v16 name];

  v18 = sub_274BF4F44();
  v20 = v19;

  v110 = v18;
  v111 = v20;
  v79 = sub_274ADDF6C();
  v21 = sub_274BF4104();
  v87 = v22;
  v88 = v21;
  v82 = v23;
  v89 = v24;
  KeyPath = swift_getKeyPath();

  v25 = sub_274B334BC();
  v27 = v26;
  LODWORD(v20) = v26;

  v86 = a3;
  v92 = v15;
  if (v20 == 254)
  {
    v29 = type metadata accessor for WFShowContentDialogRequest.FileLoadingView(0, a2, a3, v28);
    sub_274ADB48C(v81 + *(v29 + 44), a2, a3);
    sub_274ADB48C(v11, a2, a3);
    v30 = sub_274B7AAD8();
    sub_274ADB9A0(v8, a2, v80, a3, v30, v31, v32, v33, v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1), v78, v79);
    v34 = *(v77 + 8);
    v34(v8, a2);
    v34(v11, a2);
  }

  else
  {
    v35 = v80;
    sub_274AE8EFC(v25, v27);
    v36 = sub_274B77998();
    if (v36)
    {
      v37 = v36;
      v38 = sub_274BF5604();
      v39 = sub_274BF3E44();
      sub_274BF2E54();
      v75 = v40;
      v76 = v41;
      v74 = v42;
      v77 = v43;

      *&v45 = v74;
      *&v44 = v75;
      *(&v44 + 1) = v76;
      *(&v45 + 1) = v77;
      v46 = v39;
    }

    else
    {
      v38 = 0;
      v46 = 0;
      v44 = 0uLL;
      v45 = 0uLL;
    }

    v47 = v86;
    v110 = v38;
    v111 = v46;
    v112 = v44;
    v113 = v45;
    v114 = 0;
    v48 = sub_274B7AAD8();
    sub_274B2CC88(&v110, a2, v35, v47, v48, v49, v50, v51, v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1), v78, v79);
  }

  v52 = sub_274B778B0();
  if (v53)
  {
    v110 = v52;
    v111 = v53;
    v80 = sub_274BF4104();
    v81 = v54;
    v79 = v55;
    *&v77 = v56 & 1;
  }

  else
  {
    v80 = 0;
    v81 = 0;
    *&v77 = 0;
    v79 = 0;
  }

  v57 = v88;
  v110 = v88;
  v111 = v87;
  v58 = v82 & 1;
  LOBYTE(v112) = v82 & 1;
  v82 &= 1u;
  v59 = v90;
  v60 = v84;
  *(&v112 + 1) = v89;
  *&v113 = KeyPath;
  *(&v113 + 1) = 2;
  v114 = 0;
  v107 = 0;
  v108 = 1;
  v109[0] = &v110;
  v109[1] = &v107;
  (*(v91 + 16))(v90, v92, v84);
  v62 = v80;
  v61 = v81;
  v103 = v80;
  v104 = v81;
  v63 = v77;
  v64 = v79;
  v105 = v77;
  v106 = v79;
  v109[2] = v59;
  v109[3] = &v103;
  v101 = 0;
  v102 = 1;
  v109[4] = &v101;
  v65 = v57;
  v66 = v87;
  sub_274AF396C(v65, v87, v58);

  sub_274B7ABEC(v62, v61, v63, v64);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C9E0, &qword_274C00C60);
  v68 = MEMORY[0x277CE1180];
  v100[0] = v67;
  v100[1] = MEMORY[0x277CE1180];
  v100[2] = v60;
  v100[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098CA20, &qword_274C00C90);
  v100[4] = v68;
  v69 = sub_274B7AC30();
  v70 = MEMORY[0x277CE1170];
  v95 = v69;
  v96 = MEMORY[0x277CE1170];
  v71 = sub_274B7AAD8();
  v93 = v86;
  v94 = v71;
  WitnessTable = swift_getWitnessTable();
  v98 = sub_274B7ACE8();
  v99 = v70;
  sub_274ADE60C(v109, 5, v100);
  sub_274B7AD64(v62, v61, v63, v64);
  sub_274AFA1D0(v88, v66, v82);

  v72 = *(v91 + 8);
  v72(v92, v60);
  sub_274B7AD64(v103, v104, v105, v106);
  v72(v90, v60);
  sub_274AFA1D0(v110, v111, v112);
}

uint64_t WFShowContentDialogRequest.ContentView.init(item:multipleItems:activityIndicator:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = a2;
  return result;
}

uint64_t WFShowContentDialogRequest.ContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = OUTLINED_FUNCTION_7_15();
  v9 = type metadata accessor for WFShowContentDialogRequest.FileLoadingView(v5, v6, v7, v8);
  OUTLINED_FUNCTION_1();
  v107 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_2();
  v106 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v110 = &v105 - v15;
  v16 = OUTLINED_FUNCTION_7_15();
  v20 = type metadata accessor for WFShowContentDialogRequest.ImageLoadingView(v16, v17, v18, v19);
  OUTLINED_FUNCTION_1();
  v108 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15_2();
  v112 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v111 = &v105 - v26;
  v28 = type metadata accessor for WFShowContentDialogRequest.TextLoadingView(255, v4, v3, v27);
  v116 = v20;
  v29 = sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v115 = v30;
  MEMORY[0x28223BE20](v31);
  v114 = &v105 - v32;
  v113 = *(v28 - 8);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v34);
  v36 = &v105 - v35;
  v117 = v9;
  sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v119 = v38;
  v120 = v37;
  MEMORY[0x28223BE20](v37);
  v118 = &v105 - v39;
  v41 = *v2;
  v40 = *(v2 + 8);
  v42 = *(v2 + 16);
  v43 = *(v2 + 24);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_274B74FF8(v41, v43, v40, v42, v4, v3);
    OUTLINED_FUNCTION_3_17();
    WitnessTable = swift_getWitnessTable();
    v45 = OUTLINED_FUNCTION_16_4();
    sub_274ADB48C(v45, v46, WitnessTable);
    v109 = v36;
    v47 = *(v113 + 8);
    v48 = OUTLINED_FUNCTION_16_4();
    v47(v48);
    sub_274ADB48C(v36, v28, WitnessTable);
    OUTLINED_FUNCTION_1_19();
    v49 = v116;
    v50 = swift_getWitnessTable();
    v51 = v114;
    v52 = OUTLINED_FUNCTION_16_4();
    sub_274ADB9A0(v52, v53, v49, WitnessTable, v50, v54, v55, v56, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
    v122 = WitnessTable;
    v123 = v50;
    OUTLINED_FUNCTION_3_0();
    v57 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_23();
    v58 = v117;
    v59 = swift_getWitnessTable();
    v60 = v118;
    sub_274ADB9A0(v51, v29, v58, v57, v59, v61, v62, v63, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
    (*(v115 + 8))(v51, v29);
    v64 = OUTLINED_FUNCTION_16_4();
    v47(v64);
    (v47)(v109, v28);
    v65 = v60;
  }

  else
  {
    v66 = v112;
    v67 = v116;
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    v69 = v41;
    if (v68)
    {
      v70 = v66;
      OUTLINED_FUNCTION_17_4();
      sub_274B760D4();
      OUTLINED_FUNCTION_1_19();
      v71 = v67;
      v72 = swift_getWitnessTable();
      v73 = v111;
      sub_274ADB48C(v70, v67, v72);
      v74 = *(v108 + 8);
      v74(v70, v67);
      v75 = v70;
      sub_274ADB48C(v73, v71, v72);
      OUTLINED_FUNCTION_3_17();
      v76 = swift_getWitnessTable();
      v77 = v114;
      sub_274B2CC88(v75, v28, v71, v76, v72, v78, v79, v80, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
      v124 = v76;
      v125 = v72;
      OUTLINED_FUNCTION_3_0();
      v81 = swift_getWitnessTable();
      OUTLINED_FUNCTION_0_23();
      v82 = v117;
      v83 = swift_getWitnessTable();
      v65 = v118;
      sub_274ADB9A0(v77, v29, v82, v81, v83, v84, v85, v86, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
      (*(v115 + 8))(v77, v29);
      v74(v112, v71);
      v74(v111, v71);
    }

    else
    {
      v87 = v106;
      OUTLINED_FUNCTION_17_4();
      sub_274B77A58();
      OUTLINED_FUNCTION_0_23();
      v88 = v117;
      v89 = swift_getWitnessTable();
      v90 = v110;
      sub_274ADB48C(v87, v88, v89);
      v91 = *(v107 + 8);
      v91(v87, v88);
      sub_274ADB48C(v90, v88, v89);
      OUTLINED_FUNCTION_3_17();
      v92 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_19();
      v93 = swift_getWitnessTable();
      v130 = v92;
      v131 = v93;
      OUTLINED_FUNCTION_3_0();
      v94 = swift_getWitnessTable();
      v65 = v118;
      sub_274B2CC88(v87, v29, v88, v94, v89, v95, v96, v97, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
      v91(v87, v88);
      v91(v110, v88);
    }
  }

  v98 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  v99 = swift_getWitnessTable();
  v128 = v98;
  v129 = v99;
  v100 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_23();
  v101 = swift_getWitnessTable();
  v126 = v100;
  v127 = v101;
  v102 = v120;
  v103 = swift_getWitnessTable();
  sub_274ADB48C(v65, v102, v103);
  return (*(v119 + 8))(v65, v102);
}

void WFShowContentDialogRequest.mapContentCollection(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_274B78DC0;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_274B7977C;
  v7[3] = &block_descriptor_10;
  v6 = _Block_copy(v7);

  [v2 getContentCollectionWithCompletionHandler_];
  _Block_release(v6);
}

void sub_274B78BD8(void *a1, void (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    v5 = [a1 items];
    sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
    v6 = sub_274BF5144();

    sub_274AD8430(0, &qword_28098CCF8, 0x277CBEA60);
    v7 = sub_274B78DC8(v6);

    v8 = sub_274B79028(v7);
    v16 = sub_274B790A0;
    v17 = 0;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_274B79464;
    v15 = &block_descriptor_34_1;
    v9 = _Block_copy(&v12);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v16 = sub_274B7AAC0;
    v17 = v10;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_274B796E8;
    v15 = &block_descriptor_40_0;
    v11 = _Block_copy(&v12);

    [v8 if:v9 mapAsynchronously:v11 completionHandler:?];
    _Block_release(v11);
    _Block_release(v9);
  }

  else
  {
    a2();
  }
}

char *sub_274B78DC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_274BF5874();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_274B63E8C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C65230](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_274B63E8C((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_274B29EBC(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_274B78F30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_274BF59F4();
    v4 = a1 + 32;
    do
    {
      sub_274AF5954(v4, &v5);
      sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
      swift_dynamicCast();
      sub_274BF59C4();
      sub_274BF5A14();
      sub_274BF5A24();
      sub_274BF59D4();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

id sub_274B79028(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_274BF5134();

  v3 = [v1 initWithArray_];

  return v3;
}

void sub_274B790A0(void *a1, uint64_t a2, void (*a3)(void *, void), uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == sub_274AD8430(0, &qword_28098CD00, 0x277CFC3F0))
  {
    sub_274AF5954(a1, aBlock);
    a3(aBlock, 0);
    sub_274B0671C(aBlock, &qword_28098B300, &qword_274BFDB20);
  }

  else
  {
    sub_274AF5954(a1, aBlock);
    sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
    swift_dynamicCast();
    v8 = aBlock[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CD08, &qword_274C00FC8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_274BFA880;
    *(v9 + 32) = sub_274AD8430(0, &qword_28098CD10, 0x277CFC410);
    *(v9 + 40) = sub_274AD8430(0, &qword_28098CD18, 0x277CFC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CD20, &qword_274C00FD0);
    v10 = sub_274BF5134();

    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    aBlock[4] = sub_274B7AAD0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274B793C0;
    aBlock[3] = &block_descriptor_49_0;
    v12 = _Block_copy(aBlock);

    [v8 coerceToItemClasses:v10 completionHandler:v12];
    _Block_release(v12);
  }
}

uint64_t sub_274B792E8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t))
{
  if (a1 && sub_274B22B94())
  {
    sub_274B17EC8();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x277C65230](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    *(&v10 + 1) = sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
    *&v9 = v7;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  a3(&v9, a2);
  return sub_274B0671C(&v9, &qword_28098B300, &qword_274BFDB20);
}

uint64_t sub_274B793C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
    v4 = sub_274BF5144();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_274B79464(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v11[3] = swift_getObjectType();
  v11[0] = a2;
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  swift_unknownObjectRetain();
  v7(v11, a3, sub_274B7AAC8, v9);

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_274B79534(uint64_t a1, void *a2, uint64_t a3)
{
  sub_274B489B0(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = sub_274BF5C04();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_274BF1E64();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_274B79698(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_274B78F30(a1);
  a3();
}

void sub_274B796E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_274BF5144();

  v6 = a3;
  v4(v5, a3);
}

void sub_274B7977C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_274B79910(uint64_t a1)
{
  sub_274B7A208(319, qword_28098CAA8, &qword_280989B18, &qword_274BFAB40, &qword_280989B20);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_274B799C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = *(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 1;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_274B79B44(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 1;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) != -1)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_274B79D94(uint64_t a1)
{
  sub_274B7A208(319, &qword_28098CB30, &qword_28098CB38, qword_274C00E38, qword_28098CB40);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_274B79E3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_274B79FBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_274B7A208(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_274AFA930(a5, a3, a4, &unk_274C00380);
    v9 = sub_274BF3294();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_274B7A2A4(uint64_t a1)
{
  sub_274B7A208(319, &qword_28098CBC8, &qword_280989BD8, &unk_274BFABB0, &qword_280989BE0);
  if (v2 <= 0x3F)
  {
    sub_274B7A7A8(319);
    if (v4 <= 0x3F)
    {
      _s15FileLoadingViewV14FileSizeLoaderCMa(255, *(a1 + 16), *(a1 + 24), v3);
      swift_getWitnessTable();
      sub_274BF3294();
      if (v5 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_274B7A3BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 40) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_274B7A54C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 40) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_274B7A7A8(uint64_t a1)
{
  if (!qword_28098CBD0)
  {
    sub_274AD8430(255, &qword_28098B7D0, 0x277CFC3C8);
    v1 = sub_274BF5724();
    if (!v2)
    {
      atomic_store(v1, &qword_28098CBD0);
    }
  }
}

void sub_274B7A828(uint64_t a1)
{
  sub_274B7A8C8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_274B7A8C8(uint64_t a1)
{
  if (!qword_28098CC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28098CC68, qword_274C00E90);
    v1 = sub_274BF2D94();
    if (!v2)
    {
      atomic_store(v1, &qword_28098CC60);
    }
  }
}

uint64_t sub_274B7A92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA6VStackVyAA19_ConditionalContentVyAFyAA05EmptyC0VAA05TupleC0VyAA08ModifiedF0VyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_xtGGAFyAA06ScrollC0VyASGANGGGAaBHPyHCTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0, &qword_274C00C60);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_12_5();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_76();
  sub_274BF4B54();
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  OUTLINED_FUNCTION_2_23();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_11();
  swift_getWitnessTable();
  a4();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_4_2();
  sub_274BF48A4();
  OUTLINED_FUNCTION_4_13();
  return swift_getWitnessTable();
}

unint64_t sub_274B7AAD8()
{
  result = qword_28098CD30;
  if (!qword_28098CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CA18, &qword_274C00C88);
    sub_274B7AB7C(&qword_28098CD38, &qword_28098CD40, &qword_274C01008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CD30);
  }

  return result;
}

uint64_t sub_274B7AB7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_274B7ABEC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274AF396C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_274B7AC30()
{
  result = qword_28098CD48;
  if (!qword_28098CD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0, &qword_274C00C60);
    sub_274AFA930(&qword_2815A2F78, &qword_28098B728, &qword_274C01010, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CD48);
  }

  return result;
}

unint64_t sub_274B7ACE8()
{
  result = qword_28098CD50;
  if (!qword_28098CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28098CA20, &qword_274C00C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CD50);
  }

  return result;
}

uint64_t sub_274B7AD64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274AFA1D0(result, a2, a3 & 1);
  }

  return result;
}

double sub_274B7ADA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_274AFA1D0(a1, a2, a3 & 1);
  }

  else
  {
  }

  return result;
}

id sub_274B7AE50(uint64_t a1)
{
  v2 = sub_274BF4084();
  OUTLINED_FUNCTION_1();
  v28 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = sub_274BF33A4();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = sub_274BF3774();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v14 + 16))(v18, a1, v12);
  v20 = v19;
  v21 = sub_274BF3684();
  sub_274BF3564();
  v22 = NSTextAlignment.init(alignment:layoutDirection:)(v21, v11);
  v23 = *(v14 + 8);
  v23(v18, v12);
  [v20 setAlignment_];
  sub_274BF3534();
  v24 = (*(v28 + 88))(v7, v2);
  if (v24 == *MEMORY[0x277CE0B20])
  {
    v25 = 3;
  }

  else if (v24 == *MEMORY[0x277CE0B28])
  {
    v25 = 4;
  }

  else
  {
    if (v24 != *MEMORY[0x277CE0B30])
    {
      (*(v28 + 8))(v7, v2);
    }

    v25 = 5;
  }

  [v20 setLineBreakMode_];
  sub_274BF34F4();
  [v20 setLineSpacing_];
  sub_274BF3634();
  [v20 setLineHeightMultiple_];
  sub_274BF35C4();
  [v20 setMaximumLineHeight_];
  sub_274BF35D4();
  [v20 setMinimumLineHeight_];
  sub_274BF35B4();
  *&v26 = v26;
  [v20 setHyphenationFactor_];
  [v20 setAllowsDefaultTighteningForTruncation_];

  v23(a1, v12);
  return v20;
}

uint64_t NSTextAlignment.init(in:)(uint64_t a1)
{
  v2 = sub_274BF33A4();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  v6 = sub_274BF3684();
  sub_274BF3564();
  v7 = NSTextAlignment.init(alignment:layoutDirection:)(v6, v5);
  v8 = sub_274BF3774();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t NSTextAlignment.init(alignment:layoutDirection:)(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098CD60, &unk_274C01020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v8 = *(v7 + 56);
  *(&v14 - v5) = a1;
  v9 = sub_274BF33A4();
  v10 = *(v9 - 8);
  (*(v10 + 32))(&v6[v8], a2, v9);
  if (a1)
  {
    if (a1 == 1)
    {
      (*(v10 + 8))(&v6[v8], v9);
      return 1;
    }

    v13 = (*(v10 + 88))(&v6[v8], v9);
    if (v13 == *MEMORY[0x277CDFA88])
    {
      return 2;
    }

    if (v13 != *MEMORY[0x277CDFA90])
    {
LABEL_10:
      sub_274B7B3E0(v6);
    }
  }

  else
  {
    v12 = (*(v10 + 88))(&v6[v8], v9);
    if (v12 != *MEMORY[0x277CDFA88])
    {
      if (v12 == *MEMORY[0x277CDFA90])
      {
        return 2;
      }

      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t sub_274B7B3E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098CD60, &unk_274C01020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SecureDrawUIHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for SecureDrawUIHostingController);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  v7 = sub_274BF3984();
  (*(v4 + 8))(a1, v3);
  return v7;
}

void *SecureDrawUIHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for SecureDrawUIHostingController);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = sub_274BF3974();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id SecureDrawUIHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SecureDrawUIHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SecureDrawUIHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WFCalendarEventContentItem.preview(configuration:)(char *a1)
{
  sub_274B7B904();

  v2 = v1;
  return sub_274BF48B4();
}

unint64_t sub_274B7B904()
{
  result = qword_28098CDE8;
  if (!qword_28098CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CDE8);
  }

  return result;
}

uint64_t sub_274B7B9A8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CDF0, &qword_274C01118);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CDF8, &qword_274C01120);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE00, &qword_274C01128);
  *&v8 = MEMORY[0x28223BE20](v52).n128_u64[0];
  v10 = &v52 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 9);
  v14 = *(v1 + 16);
  v15 = [*v1 event];
  sub_274B803FC(v15);
  if (v16)
  {

    v17 = 0;
  }

  else
  {
    v17 = [v15 isAllDay];
  }

  *v4 = sub_274BF38F4();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE08, &qword_274C01130);
  if (v13)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  sub_274B7BCC8(v11, v19 | v12, v14, v15, v17, &v4[*(v18 + 44)]);
  v20 = sub_274BF3E54();
  sub_274BF2E54();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_274B16ED0(v4, v7, &qword_28098CDF0, &qword_274C01118);
  v29 = &v7[*(v5 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_274BF3E64();
  sub_274BF2E54();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_274B16ED0(v7, v10, &qword_28098CDF8, &qword_274C01120);
  v39 = &v10[*(v52 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_274BF3E74();
  sub_274BF2E54();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = v53;
  sub_274B16ED0(v10, v53, &qword_28098CE00, &qword_274C01128);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE10, &qword_274C01138);
  v51 = v49 + *(result + 36);
  *v51 = v40;
  *(v51 + 8) = v42;
  *(v51 + 16) = v44;
  *(v51 + 24) = v46;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_274B7BCC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v70 = a5;
  v72 = a4;
  v69 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE18, &qword_274C01140);
  MEMORY[0x28223BE20](v66);
  v10 = &v56 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE20, &qword_274C01148);
  MEMORY[0x28223BE20](v67);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v56 - v14;
  MEMORY[0x28223BE20](v15);
  v71 = &v56 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE28, &qword_274C01150);
  MEMORY[0x28223BE20](v63);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE30, &qword_274C01158);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE38, &qword_274C01160);
  MEMORY[0x28223BE20](v25 - 8);
  v64 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  v68 = a2;
  if (a2)
  {
    __swift_storeEnumTagSinglePayload(&v56 - v28, 1, 1, v63);
  }

  else
  {
    v58 = sub_274BF3804();
    sub_274B7C2E0(v73, v72, v30);
    v60 = a3;
    v62 = a6;
    v31 = v73[0];
    v32 = v73[1];
    v61 = v12;
    v33 = v74;
    v56 = v75;
    v57 = v76;
    v34 = v77;
    LOBYTE(v73[0]) = 1;
    v79 = v74;
    v78 = v77;
    sub_274BF4934();
    *&v24[*(v19 + 36)] = sub_274BF3B94();
    v59 = v29;
    sub_274B01968(v24, v21, &qword_28098CE30, &qword_274C01158);
    *v18 = v58;
    *(v18 + 1) = 0;
    v18[16] = 1;
    *(v18 + 3) = v31;
    *(v18 + 4) = v32;
    v18[40] = v33;
    v35 = v57;
    *(v18 + 6) = v56;
    *(v18 + 7) = v35;
    v18[64] = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE50, &qword_274C01178);
    sub_274B01968(v21, &v18[*(v36 + 48)], &qword_28098CE30, &qword_274C01158);
    sub_274AF396C(v31, v32, v33);

    sub_274AFA708(v24, &qword_28098CE30, &qword_274C01158);
    v29 = v59;
    sub_274AFA708(v21, &qword_28098CE30, &qword_274C01158);
    v37 = v31;
    a3 = v60;
    v38 = v32;
    a6 = v62;
    v39 = v33;
    v12 = v61;
    sub_274AFA1D0(v37, v38, v39);

    sub_274B16ED0(v18, v29, &qword_28098CE28, &qword_274C01150);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v63);
  }

  *v10 = sub_274BF3804();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE40, &qword_274C01168);
  sub_274B7C660(v72, v69, v68 & 0x101, a3, v70 & 1, &v10[*(v40 + 44)]);
  *&v10[*(v66 + 36)] = 256;
  v41 = sub_274BF3E54();
  sub_274BF2E54();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v65;
  sub_274B16ED0(v10, v65, &qword_28098CE18, &qword_274C01140);
  v51 = v50 + *(v67 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = v71;
  sub_274B16ED0(v50, v71, &qword_28098CE20, &qword_274C01148);
  v53 = v64;
  sub_274B01968(v29, v64, &qword_28098CE38, &qword_274C01160);
  sub_274B01968(v52, v12, &qword_28098CE20, &qword_274C01148);
  sub_274B01968(v53, a6, &qword_28098CE38, &qword_274C01160);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE48, &qword_274C01170);
  sub_274B01968(v12, a6 + *(v54 + 48), &qword_28098CE20, &qword_274C01148);
  sub_274AFA708(v52, &qword_28098CE20, &qword_274C01148);
  sub_274AFA708(v29, &qword_28098CE38, &qword_274C01160);
  sub_274AFA708(v12, &qword_28098CE20, &qword_274C01148);
  return sub_274AFA708(v53, &qword_28098CE38, &qword_274C01160);
}

uint64_t sub_274B7C2E0@<X0>(uint64_t a1@<X8>, void *a2@<X0>, __n128 a3@<Q0>)
{
  sub_274B7C460(a2, a3);
  sub_274ADDF6C();
  v4 = sub_274BF4104();
  v6 = v5;
  v8 = v7;
  sub_274BF3ED4();
  sub_274BF3F34();
  sub_274BF3F84();

  v9 = sub_274BF40D4();
  v11 = v10;
  v13 = v12;

  sub_274AFA1D0(v4, v6, v8 & 1);

  sub_274BF3B94();
  v14 = sub_274BF40A4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_274AFA1D0(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  v18 &= 1u;
  *(a1 + 16) = v18;
  *(a1 + 24) = v20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_274AF396C(v14, v16, v18);

  sub_274AFA1D0(v14, v16, v18);
}

id sub_274B7C460(void *a1, __n128 a2)
{
  v3 = sub_274BF2114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  [v10 setDateStyle_];
  [v10 setTimeStyle_];
  result = [a1 startDate];
  if (result)
  {
    v12 = result;
    sub_274BF20C4();

    v13 = sub_274BF20A4();
    v14 = *(v4 + 8);
    v14(v9, v3);
    result = [a1 endDate];
    if (result)
    {
      v15 = result;
      sub_274BF20C4();

      v16 = sub_274BF20A4();
      v14(v6, v3);
      v17 = [v10 stringFromDate:v13 toDate:v16];

      v18 = sub_274BF4F44();
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_274B7C660(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v83 = a5;
  v80 = a2;
  v81 = a4;
  v79 = a3;
  v85 = a6;
  v7 = sub_274BF3484();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE58, &qword_274C01180);
  MEMORY[0x28223BE20](v11);
  v13 = &v74 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE60, &qword_274C01188);
  MEMORY[0x28223BE20](v75);
  v15 = &v74 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE68, &qword_274C01190);
  MEMORY[0x28223BE20](v76);
  v17 = &v74 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE70, &qword_274C01198);
  MEMORY[0x28223BE20](v77);
  v84 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  MEMORY[0x28223BE20](v22);
  v82 = &v74 - v23;
  v24 = *(v8 + 28);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_274BF38C4();
  (*(*(v26 - 8) + 104))(&v10[v24], v25, v26);
  __asm { FMOV            V0.2D, #2.0 }

  *v10 = _Q0;
  v78 = a1;
  v32 = [a1 calendar];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 CGColor];

    if (v34)
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      v35 = sub_274BF4564();
      KeyPath = swift_getKeyPath();
      sub_274B8046C(v10, v13);
      v37 = &v13[*(v11 + 36)];
      *v37 = KeyPath;
      v37[1] = v35;
      sub_274BF4A94();
      sub_274BF30D4();
      sub_274B16ED0(v13, v15, &qword_28098CE58, &qword_274C01180);
      v38 = &v15[*(v75 + 36)];
      v39 = v105;
      *v38 = v104;
      *(v38 + 1) = v39;
      *(v38 + 2) = v106;
      sub_274BF4A94();
      sub_274BF34A4();
      sub_274B16ED0(v15, v17, &qword_28098CE60, &qword_274C01188);
      memcpy(&v17[*(v76 + 36)], v107, 0x70uLL);
      v40 = sub_274BF3E94();
      sub_274BF2E54();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      sub_274B16ED0(v17, v21, &qword_28098CE68, &qword_274C01190);
      v49 = &v21[*(v77 + 36)];
      *v49 = v40;
      *(v49 + 1) = v42;
      *(v49 + 2) = v44;
      *(v49 + 3) = v46;
      *(v49 + 4) = v48;
      v49[40] = 0;
      v50 = v82;
      sub_274B16ED0(v21, v82, &qword_28098CE70, &qword_274C01198);
      v51 = sub_274BF37E4();
      v101 = 1;
      sub_274B7CD64(v78, v87);
      memcpy(v102, v87, 0x261uLL);
      memcpy(v103, v87, 0x261uLL);
      sub_274B01968(v102, v86, &qword_28098CE78, &qword_274C011D0);
      sub_274AFA708(v103, &qword_28098CE78, &qword_274C011D0);
      memcpy(&v100[7], v102, 0x261uLL);
      v52 = v101;
      v53 = sub_274BF3E54();
      sub_274BF2E54();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v100[616] = 0;
      v62 = sub_274BF3E64();
      sub_274BF2E54();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v101 = 0;
      v71 = v84;
      sub_274B01968(v50, v84, &qword_28098CE70, &qword_274C01198);
      v72 = v85;
      sub_274B01968(v71, v85, &qword_28098CE70, &qword_274C01198);
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CE80, &qword_274C011D8) + 48);
      v86[0] = v51;
      v86[1] = 0;
      LOBYTE(v86[2]) = v52;
      memcpy(&v86[2] + 1, v100, 0x268uLL);
      LOBYTE(v86[80]) = v53;
      v86[81] = v55;
      v86[82] = v57;
      v86[83] = v59;
      v86[84] = v61;
      LOBYTE(v86[85]) = 0;
      LOBYTE(v86[86]) = v62;
      v86[87] = v64;
      v86[88] = v66;
      v86[89] = v68;
      v86[90] = v70;
      LOBYTE(v86[91]) = 0;
      memcpy((v72 + v73), v86, 0x2D9uLL);
      sub_274B01968(v86, v87, &qword_28098CE88, &qword_274C011E0);
      sub_274AFA708(v50, &qword_28098CE70, &qword_274C01198);
      v87[0] = v51;
      v87[1] = 0;
      LOBYTE(v87[2]) = v52;
      memcpy(&v87[2] + 1, v100, 0x268uLL);
      v88 = v53;
      v89 = v55;
      v90 = v57;
      v91 = v59;
      v92 = v61;
      v93 = 0;
      v94 = v62;
      v95 = v64;
      v96 = v66;
      v97 = v68;
      v98 = v70;
      v99 = 0;
      sub_274AFA708(v87, &qword_28098CE88, &qword_274C011E0);
      sub_274AFA708(v71, &qword_28098CE70, &qword_274C01198);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_274B7CD64@<X0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  v7 = sub_274BF3904();
  sub_274B7D014(a1, __src);
  memcpy(__dst, __src, 0x69uLL);
  memcpy(v17, __src, 0x69uLL);
  sub_274B01968(__dst, v21, &qword_28098CE90, &qword_274C011E8);
  sub_274AFA708(v17, &qword_28098CE90, &qword_274C011E8);
  memcpy(&v15[7], __dst, 0x69uLL);
  v8 = sub_274BF3914();
  LOBYTE(v10[0]) = 0;
  sub_274B7D318(a1);
  memcpy(v18, __src, 0x1B1uLL);
  memcpy(v19, __src, 0x1B1uLL);
  sub_274B01968(v18, v21, &qword_28098CE98, &qword_274C011F0);
  sub_274AFA708(v19, &qword_28098CE98, &qword_274C011F0);
  memcpy(&v14[7], v18, 0x1B1uLL);
  v20[0] = v7;
  v20[1] = 0x4000000000000000;
  LOBYTE(v20[2]) = 0;
  memcpy(&v20[2] + 1, v15, 0x70uLL);
  memcpy(v22, v20, 0x81uLL);
  v13[464] = 1;
  v21[0] = v8;
  v21[1] = 0x4000000000000000;
  LOBYTE(v21[2]) = 0;
  memcpy(&v21[2] + 1, v14, 0x1B8uLL);
  memcpy(&v13[7], v21, 0x1C9uLL);
  memcpy(a5, v22, 0x88uLL);
  *(a5 + 136) = 0;
  *(a5 + 144) = 1;
  memcpy((a5 + 145), v13, 0x1D0uLL);
  __src[0] = v8;
  __src[1] = 0x4000000000000000;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v14, 0x1B8uLL);
  sub_274B01968(v20, v10, &qword_28098CEA0, &qword_274C011F8);
  sub_274B01968(v21, v10, &qword_28098CEA8, &qword_274C01200);
  sub_274AFA708(__src, &qword_28098CEA8, &qword_274C01200);
  v10[0] = v7;
  v10[1] = 0x4000000000000000;
  v11 = 0;
  memcpy(v12, v15, sizeof(v12));
  return sub_274AFA708(v10, &qword_28098CEA0, &qword_274C011F8);
}

uint64_t sub_274B7D014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_274B06430(a1, &selRef_title);
  if (v5)
  {
    sub_274ADDF6C();
    v6 = sub_274BF4104();
    v8 = v7;
    v10 = v9;
    sub_274BF3F34();
    v42 = sub_274BF4074();
    v43 = v11;
    v45 = v12;
    v14 = v13;
    sub_274AFA1D0(v6, v8, v10 & 1);

    KeyPath = swift_getKeyPath();
    sub_274B06430(a1, &selRef_location);
    if (v15)
    {
      v16 = sub_274BF4104();
      v18 = v17;
      v20 = v19;
      sub_274BF3ED4();
      v21 = sub_274BF40D4();
      v41 = v14;
      v23 = v22;
      v25 = v24;

      sub_274AFA1D0(v16, v18, v20 & 1);

      sub_274BF4654();
      v26 = sub_274BF4094();
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = v23;
      v14 = v41;
      sub_274AFA1D0(v21, v33, v25 & 1);

      v34 = swift_getKeyPath();
      v35 = v30 & 1;
      v36 = v26;
      v37 = v26;
      v38 = v28;
      sub_274AF396C(v37, v28, v35);
      v39 = v32;

      v40 = 1;
    }

    else
    {
      v36 = 0;
      v38 = 0;
      v35 = 0;
      v39 = 0;
      v34 = 0;
      v40 = 0;
    }

    *a2 = v42;
    *(a2 + 8) = v45;
    *(a2 + 16) = v14 & 1;
    *(a2 + 24) = v43;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 3;
    *(a2 + 48) = 0;
    *(a2 + 56) = v36;
    *(a2 + 64) = v38;
    *(a2 + 72) = v35;
    *(a2 + 80) = v39;
    *(a2 + 88) = v34;
    *(a2 + 96) = v40;
    *(a2 + 104) = 0;
    sub_274AF396C(v42, v45, v14 & 1);

    sub_274B06560(v36, v38, v35, v39, v34);
    sub_274B065B0(v36, v38, v35, v39, v34);
    sub_274B065B0(v36, v38, v35, v39, v34);
    sub_274AFA1D0(v42, v45, v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_274B7D318(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v153 = v1;
  v154 = v2;
  v156 = v3;
  v155 = v4;
  v142 = v5;
  v6 = sub_274BF2114();
  v7 = *(v6 - 8);
  v163 = v6;
  v164 = v7;
  MEMORY[0x28223BE20](v6);
  v137 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v134 - v10;
  MEMORY[0x28223BE20](v11);
  v135 = &v134 - v12;
  MEMORY[0x28223BE20](v13);
  v136 = &v134 - v14;
  MEMORY[0x28223BE20](v15);
  v139 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v143 = &v134 - v18;
  MEMORY[0x28223BE20](v19);
  v144 = &v134 - v20;
  MEMORY[0x28223BE20](v21);
  v147 = &v134 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v134 - v24;
  v26 = sub_274BF2234();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v148 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v150 = &v134 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v134 - v32;
  v162 = sub_274BF2254();
  v34 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v138 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v141 = &v134 - v37;
  MEMORY[0x28223BE20](v38);
  v158 = &v134 - v39;
  MEMORY[0x28223BE20](v40);
  v149 = &v134 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v134 - v43;
  sub_274BF2224();
  v45 = *MEMORY[0x277CC9988];
  v46 = *(v27 + 104);
  v46(v33, v45, v26);
  sub_274BF2104();
  v152 = sub_274BF2244();
  v47 = *(v164 + 8);
  v164 += 8;
  v157 = v47;
  v47(v25, v163);
  v48 = *(v27 + 8);
  v49 = v33;
  v50 = v155;
  v159 = v27 + 8;
  v146 = v48;
  v48(v49, v26);
  v51 = v26;
  v52 = v149;
  v160 = *(v34 + 8);
  v161 = v34 + 8;
  v160(v44, v162);
  v53 = v150;
  sub_274BF2224();
  v145 = v46;
  v46(v53, v45, v51);
  result = [v50 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v55 = result;
  v56 = v147;
  sub_274BF20C4();

  v151 = sub_274BF2244();
  v157(v56, v163);
  v57 = v53;
  v58 = v146;
  v146(v57, v51);
  v160(v52, v162);
  sub_274BF2224();
  v59 = v148;
  v150 = v51;
  v145(v148, v45, v51);
  result = [v50 endDate];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v60 = result;
  v61 = v50;
  v62 = v144;
  sub_274BF20C4();

  v63 = v158;
  v64 = sub_274BF2244();
  v65 = v157;
  v157(v62, v163);
  v58(v59, v150);
  v160(v63, v162);
  v66 = v156;
  v68 = v153;
  v67 = v154;
  v70 = v151;
  v69 = v152;
  v150 = sub_274B7E348(v153, v156 & 1, v154, v151, v152, v64, v61);
  v159 = v71;
  v148 = v64;
  v149 = sub_274B7E978(v68, v66 & 1, v67, v61, v64, v69, v70);
  v158 = v72;
  v73 = [v61 isAllDay];
  v74 = v163;
  v75 = v65;
  v76 = v61;
  if (v73)
  {
    v77 = v141;
    sub_274BF2224();
    result = [v61 startDate];
    if (result)
    {
      v78 = result;
      v79 = v139;
      sub_274BF20C4();

      sub_274BF21C4();
      v65(v79, v74);
      v80 = v162;
      v81 = v160;
      v160(v77, v162);
      v82 = v138;
      sub_274BF2224();
      result = [v76 endDate];
      if (result)
      {
        v83 = result;
        v84 = v74;

        v85 = v135;
        sub_274BF20C4();

        v86 = v136;
        sub_274BF21C4();
        v75(v85, v84);
        v81(v82, v80);
        sub_274B8068C(&qword_28098CF00, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v87 = v143;
        LOBYTE(v83) = sub_274BF4EF4();
        v75(v86, v84);
        v75(v87, v84);
        if (v83)
        {
          sub_274BF4FE4("all-day", 7);
          v88 = v159;
          if (qword_2809893B8 != -1)
          {
            swift_once();
          }

          v89 = qword_28098C7C0;
          v90 = sub_274BF4F04();
          v91 = sub_274BF4F04();

          v92 = [v89 localizedStringForKey:v90 value:v91 table:0];

          v93 = sub_274BF4F44();
          v95 = v94;

          *&v183[0] = v150;
          *(&v183[0] + 1) = v88;

          MEMORY[0x277C648E0](v93, v95);

          sub_274ADDF6C();
          v96 = sub_274BF4104();
          v98 = v97;
          LOBYTE(v95) = v99;
          sub_274BF3ED4();
          v100 = sub_274BF40D4();
          v102 = v101;
          v104 = v103;
          v106 = v105;

          sub_274AFA1D0(v96, v98, v95 & 1);

          KeyPath = swift_getKeyPath();
          LOBYTE(v165[0]) = v104 & 1;
          v174[0] = 0;
          v175[0] = 1;
          *&v183[0] = v100;
          *(&v183[0] + 1) = v102;
          LOBYTE(v183[1]) = v104 & 1;
          *(&v183[1] + 1) = v106;
          *&v183[2] = KeyPath;
          LOBYTE(v183[3]) = 0;
          *(&v183[2] + 1) = 1;
          *(&v183[3] + 1) = 0x3FF0000000000000;
          LOBYTE(v183[4]) = 1;
        }

        else
        {

          *&v183[0] = sub_274B7F150(v151, v152, v148, v76, v120);
          *(&v183[0] + 1) = v121;
          sub_274ADDF6C();
          v122 = sub_274BF4104();
          v124 = v123;
          v126 = v125;
          sub_274BF3ED4();
          v127 = sub_274BF40D4();
          v129 = v128;
          v131 = v130;
          v133 = v132;

          sub_274AFA1D0(v122, v124, v126 & 1);

          v174[0] = v131 & 1;
          v173[0] = 0;
          *&v183[0] = v127;
          *(&v183[0] + 1) = v129;
          LOBYTE(v183[1]) = v131 & 1;
          *(&v183[1] + 1) = v165[0];
          DWORD1(v183[1]) = *(v165 + 3);
          *(&v183[1] + 1) = v133;
          v183[2] = *v175;
          v183[3] = *&v175[16];
          LOBYTE(v183[4]) = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CEE0, &qword_274C01228);
        sub_274B80568();
        sub_274BF3A64();
        memcpy(v175, v180, 0x41uLL);
        sub_274B80620(v175);
        memcpy(v165, v175, 0x1B1uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CEC0, &qword_274C01218);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CEC8, &qword_274C01220);
        sub_274B804DC();
        sub_274AFA930(&qword_28098CEF8, &qword_28098CEC8, &qword_274C01220, MEMORY[0x277CE14C0]);
        sub_274BF3A64();
        return memcpy(v142, v183, 0x1B1uLL);
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v108 = v159;
  result = [v76 startDate];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v109 = result;
  v110 = v140;
  sub_274BF20C4();

  v111 = sub_274BF37E4();
  v182 = 0;
  v113 = v153;
  v112 = v154;
  sub_274B7F534(v153, v156 & 0x101, v154, v108, v183);
  memcpy(v178, v183, sizeof(v178));
  memcpy(v179, v183, sizeof(v179));
  sub_274B01968(v178, v175, &qword_28098CEB0, &qword_274C01208);
  sub_274AFA708(v179, &qword_28098CEB0, &qword_274C01208);
  memcpy(&v181[7], v178, 0xC0uLL);
  v114 = v110;
  v115 = v163;
  v116 = v75;
  v75(v114, v163);
  v180[0] = v111;
  v180[1] = 0x4000000000000000;
  LOBYTE(v180[2]) = v182;
  memcpy(&v180[2] + 1, v181, 0xC7uLL);
  result = [v155 endDate];
  if (result)
  {
    v117 = result;

    v118 = v137;
    sub_274BF20C4();

    v119 = sub_274BF37E4();
    v177 = 0;
    sub_274B7F534(v113, v156 & 0x101, v112, v158, v183);
    memcpy(v168, v183, sizeof(v168));
    memcpy(v169, v183, sizeof(v169));
    sub_274B01968(v168, v175, &qword_28098CEB0, &qword_274C01208);
    sub_274AFA708(v169, &qword_28098CEB0, &qword_274C01208);

    memcpy(&v176[7], v168, 0xC0uLL);
    v116(v118, v115);
    v170[0] = v119;
    v170[1] = 0x4000000000000000;
    LOBYTE(v170[2]) = v177;
    memcpy(&v170[2] + 1, v176, 0xC7uLL);
    memcpy(v167, v180, sizeof(v167));
    memcpy(v173, v170, sizeof(v173));
    memcpy(v171, v180, sizeof(v171));
    memcpy(v166, v180, 0xD8uLL);
    memcpy(v172, v170, sizeof(v172));
    memcpy(&v166[216], v170, 0xD8uLL);
    sub_274B01968(v180, v183, &qword_28098CEB8, &qword_274C01210);
    sub_274B01968(v170, v183, &qword_28098CEB8, &qword_274C01210);
    sub_274B01968(v171, v183, &qword_28098CEB8, &qword_274C01210);
    sub_274B01968(v172, v183, &qword_28098CEB8, &qword_274C01210);
    sub_274AFA708(v173, &qword_28098CEB8, &qword_274C01210);
    memcpy(v174, v167, sizeof(v174));
    sub_274AFA708(v174, &qword_28098CEB8, &qword_274C01210);
    memcpy(v175, v166, 0x1B0uLL);
    sub_274B804D0(v175);
    memcpy(v183, v175, 0x1B1uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CEC0, &qword_274C01218);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CEC8, &qword_274C01220);
    sub_274B804DC();
    sub_274AFA930(&qword_28098CEF8, &qword_28098CEC8, &qword_274C01220, MEMORY[0x277CE14C0]);
    sub_274BF3A64();
    sub_274AFA708(v170, &qword_28098CEB8, &qword_274C01210);
    sub_274AFA708(v180, &qword_28098CEB8, &qword_274C01210);
    memcpy(v183, v165, 0x1B1uLL);
    return memcpy(v142, v183, 0x1B1uLL);
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_274B7E348(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v56 = a6;
  v57 = a7;
  v54 = a5;
  v55 = a4;
  v8 = sub_274BF2064();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274BF2044();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_274BF2084();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_274BF2094();
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - v26;
  v28 = sub_274BF2114();
  MEMORY[0x28223BE20](v28);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = MEMORY[0x28223BE20](v31).n128_u64[0];
  v36 = &v44 - v35;
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v44 = v33;
  v45 = v32;
  if (v55 == v54 && v55 == v56)
  {
    result = [v57 startDate];
    if (result)
    {
      v42 = result;
      sub_274BF20C4();

      MEMORY[0x277C61330]();
      sub_274BF2074();
      sub_274BF2024();
      (*(v49 + 8))(v15, v50);
      v43 = *(v53 + 8);
      v43(v21, v16);
      sub_274BF2034();
      sub_274BF2004();
      (*(v51 + 8))(v12, v52);
      v43(v24, v16);
      sub_274B8068C(&qword_28098CF10, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      sub_274BF20F4();
      v43(v27, v16);
      (*(v44 + 8))(v30, v45);
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  result = [v57 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v39 = result;
  sub_274BF20C4();

  MEMORY[0x277C61330]();
  sub_274BF2074();
  sub_274BF2024();
  (*(v49 + 8))(v15, v50);
  v40 = *(v53 + 8);
  v40(v18, v16);
  sub_274BF2034();
  sub_274BF2004();
  (*(v51 + 8))(v12, v52);
  v40(v21, v16);
  v41 = v46;
  sub_274BF2054();
  sub_274BF2014();
  (*(v47 + 8))(v41, v48);
  v40(v24, v16);
  sub_274B8068C(&qword_28098CF10, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_274BF20F4();
  v40(v27, v16);
  (*(v44 + 8))(v36, v45);
LABEL_11:
  v58 = v60;
  v59 = v61;

  MEMORY[0x277C648E0](8236, 0xE200000000000000);

  return v58;
}

id sub_274B7E978(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a5;
  v78 = a7;
  v76 = a6;
  v81 = a4;
  v8 = sub_274BF2064();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274BF2044();
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10);
  v68 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_274BF2084();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_274BF2094();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x28223BE20](v13);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v18);
  v65 = &v59 - v19;
  MEMORY[0x28223BE20](v20);
  v67 = &v59 - v21;
  v22 = sub_274BF2254();
  v79 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  v28 = sub_274BF2114();
  v80 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v59 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v59 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v59 - v36;
  MEMORY[0x28223BE20](v38);
  v41 = &v59 - v40;
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v59 = v39;
  v60 = v17;
  sub_274BF2224();
  result = [v81 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v43 = result;
  sub_274BF20C4();

  sub_274BF21C4();
  v79 = *(v79 + 8);
  (v79)(v27, v22);
  v61 = v22;
  v44 = *(v80 + 1);
  v44(v37, v28);
  sub_274BF2224();
  v45 = v81;
  result = [v81 endDate];
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v46 = result;
  sub_274BF20C4();

  sub_274BF21C4();
  (v79)(v24, v61);
  v44(v31, v28);
  sub_274B8068C(&qword_28098CF00, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LOBYTE(v46) = sub_274BF4EF4();
  v44(v34, v28);
  v44(v41, v28);
  if ((v46 & 1) == 0 && (v77 != v76 || v78 != v77))
  {
    v80 = v44;
    result = [v45 endDate];
    if (result)
    {
      v48 = result;
      v49 = v59;
      sub_274BF20C4();

      v50 = v62;
      MEMORY[0x277C61330]();
      v51 = v63;
      sub_274BF2074();
      v52 = v60;
      sub_274BF2024();
      (*(v64 + 8))(v51, v66);
      v53 = v72;
      v54 = *(v71 + 8);
      v54(v50, v72);
      v55 = v68;
      sub_274BF2034();
      v56 = v65;
      sub_274BF2004();
      (*(v69 + 8))(v55, v70);
      v54(v52, v53);
      v57 = v73;
      sub_274BF2054();
      v58 = v67;
      sub_274BF2014();
      (*(v74 + 8))(v57, v75);
      v54(v56, v53);
      sub_274B8068C(&qword_28098CF10, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      sub_274BF20F4();
      v54(v58, v53);
      v80(v49, v28);
      v82 = v84;
      v83 = v85;

      MEMORY[0x277C648E0](8236, 0xE200000000000000);

      return v82;
    }

    goto LABEL_15;
  }

  return 0;
}

id sub_274B7F150(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v9 = sub_274BF2114();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v46 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v46 - v20;
  if (a1 != a2 || a3 != a2)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
    [v23 setDateStyle_];
    [v23 setTimeStyle_];
    result = [a4 startDate];
    if (result)
    {
      v25 = result;
      sub_274BF20C4();

      v26 = sub_274BF20A4();
      v27 = *(v10 + 8);
      v27(v15, v9);
      result = [a4 endDate];
      if (result)
      {
        v28 = result;
        sub_274BF20C4();

        v29 = sub_274BF20A4();
        v27(v12, v9);
        v30 = [v23 stringFromDate:v26 toDate:v29];

        v31 = sub_274BF4F44();
        return v31;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_274B80628(0x64204D4D4DLL, 0xE500000000000000, v32);
  result = [a4 startDate];
  if (!result)
  {
    goto LABEL_13;
  }

  v33 = result;
  sub_274BF20C4();

  v34 = sub_274BF20A4();
  v35 = *(v10 + 8);
  v35(v21, v9);
  v36 = [v32 stringFromDate_];

  v37 = sub_274BF4F44();
  v39 = v38;

  result = [a4 endDate];
  if (result)
  {
    v40 = result;
    sub_274BF20C4();

    v41 = sub_274BF20A4();
    v35(v18, v9);
    v42 = [v32 stringFromDate_];

    v43 = sub_274BF4F44();
    v45 = v44;

    v46[0] = v37;
    v46[1] = v39;
    MEMORY[0x277C648E0](2108704, 0xE300000000000000);
    MEMORY[0x277C648E0](v43, v45);

    return v46[0];
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_274B7F534@<X0>(uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v113 = a2;
  WORD4(v113) = a3;
  *&v114 = a4;
  v12 = sub_274B7FBD0();
  v14 = v13;
  v89 = a2;
  v91 = a4;
  if (!sub_274B7FE48())
  {
    v86 = (a3 >> 8) & 1;
    v87 = a3 & 1;
    goto LABEL_5;
  }

  v93 = v14;
  *&v113 = a2;
  WORD4(v113) = a3 & 0x101;
  *&v114 = a4;
  sub_274B80198();
  v86 = (a3 >> 8) & 1;
  v87 = a3 & 1;
  if (!v15)
  {
LABEL_5:
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    goto LABEL_6;
  }

  sub_274ADDF6C();
  v16 = sub_274BF4104();
  v18 = v17;
  v20 = v19;
  sub_274BF3FB4();
  v85 = a6;
  v21 = sub_274BF40D4();
  v23 = v22;
  v25 = v24;

  sub_274AFA1D0(v16, v18, v20 & 1);

  sub_274BF3F14();
  v26 = sub_274BF4074();
  v28 = v27;
  v30 = v29;
  sub_274AFA1D0(v21, v23, v25 & 1);

  sub_274BF4644();
  sub_274BF4634();

  v31 = sub_274BF4094();
  v33 = v32;
  LOBYTE(v23) = v34;
  v36 = v35;

  sub_274AFA1D0(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v106[0]) = 0;
  sub_274AF396C(v31, v33, v23 & 1);
  *&v113 = v31;
  *(&v113 + 1) = v33;
  a6 = v85;
  LOBYTE(v114) = v23 & 1;
  *(&v114 + 1) = v36;
  *&v115 = KeyPath;
  *(&v115 + 1) = 1;
  LOBYTE(v116) = 0;
  *(&v116 + 1) = 0x3FF0000000000000;

  v14 = v93;
LABEL_6:
  *(&v107 + 1) = a6;

  MEMORY[0x277C648E0](v12, v14);

  sub_274ADDF6C();
  v38 = sub_274BF4104();
  v40 = v39;
  v42 = v41;
  sub_274BF3ED4();
  v43 = sub_274BF40D4();
  v94 = v44;
  v46 = v45;
  v48 = v47;

  sub_274AFA1D0(v38, v40, v42 & 1);

  v49 = swift_getKeyPath();
  v112 = v46 & 1;
  v111 = 0;
  *&v107 = v89;
  BYTE8(v107) = v87;
  BYTE9(v107) = v86;
  *&v108 = v91;
  if (sub_274B7FE48() || (*&v107 = v89, BYTE8(v107) = v87, BYTE9(v107) = v86, *&v108 = v91, sub_274B80198(), !v50))
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
  }

  else
  {
    v51 = sub_274BF4104();
    v53 = v52;
    v88 = v49;
    v55 = v54;
    sub_274BF3FB4();
    v56 = sub_274BF40D4();
    v90 = v43;
    v92 = v48;
    v58 = v57;
    v60 = v59;

    sub_274AFA1D0(v51, v53, v55 & 1);

    sub_274BF3F14();
    v61 = sub_274BF4074();
    v63 = v62;
    v65 = v64;
    sub_274AFA1D0(v56, v58, v60 & 1);

    sub_274BF4644();
    sub_274BF4634();

    v66 = sub_274BF4094();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v43 = v90;

    v73 = v65 & 1;
    v49 = v88;
    sub_274AFA1D0(v61, v63, v73);

    v74 = swift_getKeyPath();
    LOBYTE(v106[0]) = v70 & 1;
    LOBYTE(v105[0]) = 0;
    sub_274AF396C(v66, v68, v70 & 1);
    *&v107 = v66;
    *(&v107 + 1) = v68;
    v48 = v92;
    LOBYTE(v108) = v70 & 1;
    *(&v108 + 1) = v72;
    *&v109 = v74;
    *(&v109 + 1) = 1;
    LOBYTE(v110) = 0;
    *(&v110 + 1) = 0x3FF0000000000000;
  }

  v99 = v113;
  v75 = v113;
  v100 = v114;
  v101 = v115;
  v102 = v116;
  v95 = v107;
  v76 = v107;
  v96 = v108;
  v97 = v109;
  v98 = v110;
  v77 = v116;
  v103[2] = v115;
  v103[3] = v116;
  v78 = v114;
  v103[0] = v113;
  v103[1] = v114;
  v79 = v110;
  v104[2] = v109;
  v80 = v109;
  v104[3] = v110;
  v81 = v108;
  v104[0] = v107;
  v104[1] = v108;
  *(a7 + 32) = v115;
  *(a7 + 48) = v77;
  *a7 = v75;
  *(a7 + 16) = v78;
  v82 = v111;
  v83 = v112;
  *(a7 + 64) = v43;
  *(a7 + 72) = v94;
  *(a7 + 80) = v83;
  *(a7 + 88) = v48;
  *(a7 + 96) = v49;
  *(a7 + 104) = 1;
  *(a7 + 112) = v82;
  *(a7 + 120) = 0x3FF0000000000000;
  *(a7 + 160) = v80;
  *(a7 + 176) = v79;
  *(a7 + 128) = v76;
  *(a7 + 144) = v81;
  sub_274B01968(v103, v106, &qword_28098CF08, &qword_274C01268);
  sub_274AF396C(v43, v94, v83 & 1);

  sub_274B01968(v104, v106, &qword_28098CF08, &qword_274C01268);
  sub_274AFA708(&v113, &qword_28098CF08, &qword_274C01268);
  sub_274AFA708(&v107, &qword_28098CF08, &qword_274C01268);
  v105[0] = v95;
  v105[1] = v96;
  v105[2] = v97;
  v105[3] = v98;
  sub_274AFA708(v105, &qword_28098CF08, &qword_274C01268);
  sub_274AFA1D0(v43, v94, v83 & 1);

  v106[0] = v99;
  v106[1] = v100;
  v106[2] = v101;
  v106[3] = v102;
  return sub_274AFA708(v106, &qword_28098CF08, &qword_274C01268);
}

uint64_t sub_274B7FBD0()
{
  v0 = sub_274BF2194();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_274BF21B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_274BF2184();
  sub_274BF21A4();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9758], v0);
  LOBYTE(v10) = sub_274BD7978();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v10)
  {
    v13 = 1835874920;
    v14 = 0xE400000000000000;
  }

  else
  {
    v13 = 0x6D6D3A4848;
    v14 = 0xE500000000000000;
  }

  sub_274B80628(v13, v14, v11);
  v15 = sub_274BF20A4();
  v16 = [v11 stringFromDate_];

  v17 = sub_274BF4F44();
  return v17;
}

BOOL sub_274B7FE48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C358, &unk_274C01270);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_274BF21B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_274BF4F04();
  sub_274BF2184();
  v9 = sub_274BF2174();
  (*(v4 + 8))(v6, v3);
  v10 = [v7 dateFormatFromTemplate:v8 options:0 locale:v9];

  if (v10)
  {
    v11 = sub_274BF4F44();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v25 = v11;
  v26 = v13;
  v23 = 97;
  v24 = 0xE100000000000000;
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_274ADDF6C();
  v21 = sub_274BF57A4();
  v22 = v14;
  sub_274AFA708(v2, &qword_28098C358, &unk_274C01270);
  v25 = v11;
  v26 = v13;
  v23 = 72;
  v24 = 0xE100000000000000;
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v15 = sub_274BF57A4();
  v17 = v16;
  sub_274AFA708(v2, &qword_28098C358, &unk_274C01270);
  if (v17)
  {
    v25 = v11;
    v26 = v13;
    v23 = 104;
    v24 = 0xE100000000000000;
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    v15 = sub_274BF57A4();
    v19 = v18;
    sub_274AFA708(v2, &qword_28098C358, &unk_274C01270);
  }

  else
  {

    v19 = 0;
  }

  result = 0;
  if ((v22 & 1) == 0 && (v19 & 1) == 0)
  {
    return v21 >> 14 < v15 >> 14;
  }

  return result;
}

uint64_t sub_274B80198()
{
  v0 = sub_274BF2194();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = sub_274BF21B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2184();
  sub_274BF21A4();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9758], v0);
  LOBYTE(v7) = sub_274BD7978();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);
  v12 = 0;
  if (v7)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_274B80628(97, 0xE100000000000000, v13);
    v14 = sub_274BF20A4();
    v15 = [v13 stringFromDate_];

    v12 = sub_274BF4F44();
  }

  return v12;
}

uint64_t sub_274B803FC(void *a1)
{
  v2 = [a1 location];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_274BF4F44();

  return v3;
}

uint64_t sub_274B8046C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF3484();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274B804DC()
{
  result = qword_28098CED0;
  if (!qword_28098CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CEC0, &qword_274C01218);
    sub_274B80568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CED0);
  }

  return result;
}

unint64_t sub_274B80568()
{
  result = qword_28098CED8;
  if (!qword_28098CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CEE0, &qword_274C01228);
    sub_274B7AC30();
    sub_274AFA930(&qword_28098CEE8, &qword_28098CEF0, &qword_274C01230, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CED8);
  }

  return result;
}

void sub_274B80628(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_274BF4F04();

  [a3 setDateFormat_];
}

uint64_t sub_274B8068C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274B80704(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_274B80788()
{
  result = qword_28098CF28;
  if (!qword_28098CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CDF8, &qword_274C01120);
    sub_274AFA930(&qword_28098CF30, &qword_28098CDF0, &qword_274C01118, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098CF28);
  }

  return result;
}

void WFUserInterfaceHost.presentAlert(for:)(void *a1)
{
  v2 = v1;
  v4 = sub_274BF1E64();
  v5 = [v4 wf_isUserCancelledError];

  if ((v5 & 1) == 0)
  {
    sub_274B808F4();
    v6 = a1;
    v7 = sub_274B80938(a1);
    [v2 presentAlert_];
  }
}

unint64_t sub_274B808F4()
{
  result = qword_28098CF38;
  if (!qword_28098CF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098CF38);
  }

  return result;
}

id sub_274B80938(void *a1)
{
  v2 = sub_274BF1E64();
  v3 = [swift_getObjCClassFromMetadata() alertWithError_];

  return v3;
}

uint64_t sub_274B809B0(uint64_t a1)
{
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_274B809C8()
{
  v1 = [*(v0 + 16) items];
  sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
  v2 = sub_274BF5144();

  return v2;
}

uint64_t sub_274B80A30(void *a1, __n128 a2)
{
  v4 = v2;
  v6 = sub_274BF2BB4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  ObjectType = swift_getObjectType();
  if (ObjectType == sub_274AD8430(0, &qword_28098CD00, 0x277CFC3F0))
  {
    goto LABEL_26;
  }

  v13 = objc_opt_self();
  if (!OUTLINED_FUNCTION_6_12(v13))
  {
    v14 = objc_opt_self();
    if (!OUTLINED_FUNCTION_6_12(v14))
    {
      v19 = objc_opt_self();
      if (OUTLINED_FUNCTION_6_12(v19))
      {
        v20 = type metadata accessor for PreviewableContentCollection.PreviewableListItem(0);
        v16 = OUTLINED_FUNCTION_5_11(v20);
        sub_274B814F4(a1, 50.0, 50.0);
        v18 = 7;
        goto LABEL_28;
      }

      v21 = a1;
      v22 = &selRef_setOutline_;
      if ([v21 preferredDisplayStyle] == 2)
      {
        goto LABEL_9;
      }

      if ([v21 preferredDisplayStyle] == 1)
      {
        sub_274AD8430(0, &qword_28098B858, 0x277CBFC40);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = [objc_opt_self() typeWithClass_];
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C08, &unk_274C01680);
        OUTLINED_FUNCTION_5_11(v26);
        v27 = OUTLINED_FUNCTION_1_20();
        v16 = sub_274BC1CB4(v27, v28);
        v18 = 2;
        goto LABEL_28;
      }

      v29 = [v21 preferredObjectType];
      if (v29)
      {
        v22 = v29;
        sub_274AD8430(0, &qword_28098B850, 0x277CD97A8);
        v3 = swift_getObjCClassFromMetadata();
        v30 = [v22 isEqualToClass_];

        if (v30)
        {
          v31 = [objc_opt_self() typeWithClass_];
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BF8, &unk_274BFABC0);
          OUTLINED_FUNCTION_5_11(v32);
          v33 = OUTLINED_FUNCTION_1_20();
          v16 = sub_274BC1C90(v33, v34);
          v18 = 3;
          goto LABEL_28;
        }
      }

      v35 = [v21 preferredObjectType];
      if (v35 && (v22 = v35, sub_274AD8430(0, &qword_28098D030, 0x277CE63D8), v3 = [v22 isEqualToClass_], v22, (v3 & 1) != 0) || (v36 = objc_msgSend(v21, sel_preferredFileType)) != 0 && (v22 = v36, sub_274AD8430(0, &qword_28098D028, 0x277CFC208), v3 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_ownedTypes), v37 = objc_msgSend(v22, sel_conformsToTypes_, v3), v22, v3, v37))
      {
        sub_274AD8430(0, &qword_28098D030, 0x277CE63D8);
        v38 = swift_getObjCClassFromMetadata();
        v39 = [objc_opt_self() typeWithClass_];
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BE8, &unk_274C01670);
        OUTLINED_FUNCTION_5_11(v40);
        v41 = OUTLINED_FUNCTION_1_20();
        v16 = sub_274BC1C6C(v41, v42);
        v18 = 4;
        goto LABEL_28;
      }

      if ([v21 preferredFileType])
      {
        OUTLINED_FUNCTION_8_11();
        sub_274BF2B94();
        sub_274BF2B34();
        v43 = OUTLINED_FUNCTION_2_24();
        v44(v43);
        v45 = OUTLINED_FUNCTION_4_14();

        if (v45)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BD8, &unk_274BFABB0);
          OUTLINED_FUNCTION_5_11(v46);
          v16 = sub_274BC1C48(v21, 0);
          v18 = 5;
          goto LABEL_28;
        }
      }

      v47 = [v21 preferredObjectType];
      if (!v47 || (v22 = v47, sub_274AD8430(0, &qword_28098D020, 0x277D237F0), v3 = [v22 isEqualToClass_], v22, !v3))
      {
        if ([v21 preferredFileType] && (OUTLINED_FUNCTION_8_11(), sub_274BF2B54(), sub_274BF2B34(), v49 = OUTLINED_FUNCTION_2_24(), v50(v49), v51 = OUTLINED_FUNCTION_4_14(), v22, v3, (v51 & 1) != 0) || objc_msgSend(v21, sel_preferredFileType) && (OUTLINED_FUNCTION_8_11(), sub_274BF2B74(), sub_274BF2B34(), v52 = OUTLINED_FUNCTION_2_24(), v53(v52), v54 = OUTLINED_FUNCTION_4_14(), v22, v3, v54))
        {
          sub_274AD8430(0, &qword_28098D018, 0x277D79F68);
          sub_274BF2B74();
          v16 = sub_274B8113C(v11);

          goto LABEL_27;
        }

        if ([v21 getListSubtitle_])
        {
LABEL_9:
          v23 = type metadata accessor for PreviewableContentCollection.PreviewableListItem(0);
          v16 = OUTLINED_FUNCTION_5_11(v23);
          v17 = v21;
          goto LABEL_5;
        }

        v55 = objc_opt_self();
        if (OUTLINED_FUNCTION_6_12(v55) || (v56 = objc_opt_self(), OUTLINED_FUNCTION_6_12(v56)) || [v21 preferredFileType] && (OUTLINED_FUNCTION_8_11(), sub_274BF2BA4(), v62 = sub_274BF2B34(), (*(v8 + 8))(v11, v6), v63 = OUTLINED_FUNCTION_4_14(), v22, v62, v63))
        {
          sub_274AD8430(0, &qword_28098B848, 0x277CCACA8);
          v57 = swift_getObjCClassFromMetadata();
          v58 = [objc_opt_self() typeWithClass_];
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B18, &qword_274BFAB40);
          OUTLINED_FUNCTION_5_11(v59);
          v60 = OUTLINED_FUNCTION_1_20();
          v16 = sub_274BC1C24(v60, v61);
          v18 = 6;
          goto LABEL_28;
        }
      }

LABEL_26:
      v16 = 0;
LABEL_27:
      v18 = 0;
      goto LABEL_28;
    }
  }

  v15 = type metadata accessor for PreviewableContentCollection.PreviewableListItem(0);
  v16 = OUTLINED_FUNCTION_5_11(v15);
  v17 = a1;
LABEL_5:
  sub_274B814F4(v17, 50.0, 50.0);
  v18 = 1;
LABEL_28:
  *(v4 + 24) = v16;
  *(v4 + 32) = v18;
  return v4;
}

id sub_274B8113C(uint64_t a1)
{
  v2 = sub_274BF2B34();
  v3 = [swift_getObjCClassFromMetadata() typeWithUTType_];

  v4 = sub_274BF2BB4();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t sub_274B811D4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    if (*(v0 + 32))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v0 + 24);
      v4 = v3;
    }

    v5 = *(v2 + 16);
    type metadata accessor for ContentItemQuickLookModel();
    v1 = swift_allocObject();
    sub_274B82274(v5, 0, v3);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t PreviewableContentCollection.PreviewableThumbnailItem.deinit()
{
  sub_274AFC6E8(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t PreviewableContentCollection.PreviewableThumbnailItem.__deallocating_deinit()
{
  PreviewableContentCollection.PreviewableThumbnailItem.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B81318(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v3;
}

uint64_t sub_274B81398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B81410()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B81484(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B814F4(void *a1, double a2, double a3)
{
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CF60, &qword_274C01288);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CF48, &qword_274C01280);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtCC14WorkflowUICore28PreviewableContentCollection19PreviewableListItem__subtitle;
  aBlock = 0;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CF80, &qword_274C013B0);
  sub_274BF2D24();
  v19 = *(v14 + 32);
  v19(v3 + v18, v17, v12);
  v20 = OBJC_IVAR____TtCC14WorkflowUICore28PreviewableContentCollection19PreviewableListItem__altText;
  aBlock = 0;
  v42 = 0;
  sub_274BF2D24();
  v19(v3 + v20, v17, v12);
  v21 = OBJC_IVAR____TtCC14WorkflowUICore28PreviewableContentCollection19PreviewableListItem__thumbnail;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098CF90, &qword_274C013B8);
  sub_274BF2D24();
  (*(v8 + 32))(v3 + v21, v11, v6);
  v22 = v40;
  *(v3 + 16) = v40;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v45 = sub_274B82D34;
  v46 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_274B0E2BC;
  v44 = &block_descriptor_74_0;
  v23 = _Block_copy(&aBlock);
  v24 = v22;

  v25 = [v24 getListSubtitle_];
  _Block_release(v23);
  v45 = sub_274B82D64;
  v46 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_274B0E2BC;
  v44 = &block_descriptor_77;
  v26 = _Block_copy(&aBlock);

  v27 = [v24 getListAltText_];
  _Block_release(v26);
  v45 = sub_274B82D94;
  v46 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_274B0E618;
  v44 = &block_descriptor_80_0;
  v28 = _Block_copy(&aBlock);

  v29 = [v24 getListThumbnail:v28 forSize:{a2, a3}];
  _Block_release(v28);
  v30 = sub_274B812DC();
  if (v31)
  {
    sub_274AFA278(v30, v31);
  }

  else
  {
    if (v25)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    sub_274B812F0(0, v32);
  }

  v33 = sub_274B81304();
  if (v34)
  {
    sub_274AFA278(v33, v34);
  }

  else
  {
    if (v27)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    sub_274B81384(0, v35);
  }

  v36 = sub_274B81410();
  if (v36)
  {
    sub_274AFA308(v36);
  }

  else
  {
    if (v29)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    sub_274B81484(v37);
  }

  return v3;
}

uint64_t sub_274B81940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = sub_274BF4D34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  *v12 = sub_274BF5504();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v7);
  v13 = sub_274BF4D54();
  result = (*(v9 + 8))(v12, v7);
  if (v13)
  {
    if (a2)
    {

      v15 = a1;
      v16 = a2;
    }

    else
    {
      v15 = 0;
      v16 = 1;
    }

    return a4(v15, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274B81A98(uint64_t a1)
{
  v2 = sub_274BF4D34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  *v5 = sub_274BF5504();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_274BF4D54();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      a1 = 1;
    }

    return sub_274B81484(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PreviewableContentCollection.PreviewableListItem.deinit()
{
  v1 = OBJC_IVAR____TtCC14WorkflowUICore28PreviewableContentCollection19PreviewableListItem__subtitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CF48, &qword_274C01280);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC14WorkflowUICore28PreviewableContentCollection19PreviewableListItem__altText, v2);
  v4 = OBJC_IVAR____TtCC14WorkflowUICore28PreviewableContentCollection19PreviewableListItem__thumbnail;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098CF60, &qword_274C01288);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PreviewableContentCollection.PreviewableListItem.__deallocating_deinit()
{
  PreviewableContentCollection.PreviewableListItem.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B81D24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PreviewableContentCollection.PreviewableListItem(0);
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

uint64_t sub_274B81D64(double a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 40);
  if (v6)
  {
    if (*(v3 + 24) == a1 && *(v3 + 32) == a2)
    {

      return v6;
    }
  }

  v8 = sub_274B809C8();
  v9 = sub_274B22B94();
  if (!v9)
  {

    v6 = MEMORY[0x277D84F90];
LABEL_16:
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = v6;

    return v6;
  }

  v10 = v9;
  v16 = MEMORY[0x277D84F90];
  result = sub_274BF59F4();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C65230](v12, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = type metadata accessor for PreviewableContentCollection.PreviewableListItem(0);
      OUTLINED_FUNCTION_5_11(v15);
      sub_274B814F4(v14, a1, a2);
      sub_274BF59C4();
      OUTLINED_FUNCTION_7_16();
      sub_274BF5A14();
      OUTLINED_FUNCTION_7_16();
      sub_274BF5A24();
      sub_274BF59D4();
    }

    while (v10 != v12);

    v6 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_274B81ED4()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {

    return v2;
  }

  v3 = sub_274B809C8();
  v4 = sub_274B22B94();
  if (!v4)
  {

    v2 = MEMORY[0x277D84F90];
LABEL_12:
    *(v1 + 48) = v2;

    return v2;
  }

  v5 = v4;
  v11 = MEMORY[0x277D84F90];
  result = sub_274BF59F4();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C65230](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      type metadata accessor for PreviewableContentCollection.PreviewableThumbnailItem();
      swift_allocObject();
      sub_274B80A30(v9, v10);
      sub_274BF59C4();
      OUTLINED_FUNCTION_7_16();
      sub_274BF5A14();
      OUTLINED_FUNCTION_7_16();
      sub_274BF5A24();
      sub_274BF59D4();
    }

    while (v5 != v7);

    v2 = v11;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t PreviewableContentCollection.deinit()
{

  return v0;
}

uint64_t PreviewableContentCollection.__deallocating_deinit()
{
  PreviewableContentCollection.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for PreviewableContentCollection.PreviewableListItem(uint64_t a1)
{
  result = qword_28098CF68;
  if (!qword_28098CF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B8214C(uint64_t a1)
{
  sub_274B0ED4C(319, &qword_28098CF78, &qword_28098CF80, &qword_274C013B0);
  if (v1 <= 0x3F)
  {
    sub_274B0ED4C(319, &qword_28098CF88, qword_28098CF90, &qword_274C013B8);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_274B82274(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  v7 = (v4 + 40);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8 = objc_allocWithZone(WFContentItemProxy);

  v9 = a1;
  *(v4 + 32) = [v8 init];
  v10 = &qword_274BFB000;
  if (!a2)
  {
    *v7 = 0;
LABEL_15:

    [*(v4 + 32) setItem_];
    [*(v4 + 32) setPreferredFileType_];
    v21 = *(v4 + 32);
    v22 = swift_allocObject();
    swift_weakInit();
    v32 = sub_274B82C80;
    v33 = v22;
    OUTLINED_FUNCTION_3_18();
    v29 = v10[60];
    v30 = sub_274B02D5C;
    v31 = &block_descriptor_11;
    v23 = _Block_copy(aBlock);
    v24 = v21;

    [v24 setRefreshBlock_];
    _Block_release(v23);

    return v4;
  }

  v27 = MEMORY[0x277D84F90];
  result = sub_274B22B94();
  if (!result)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_14:
    *v7 = v20;
    goto LABEL_15;
  }

  v12 = result;
  if (result >= 1)
  {
    v25 = v9;
    v13 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x277C65230](v13, a2);
      }

      else
      {
        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [objc_allocWithZone(WFContentItemProxy) init];
      [v16 setItem_];
      [v16 setPreferredFileType_];
      v17 = swift_allocObject();
      swift_weakInit();
      v32 = sub_274B82DAC;
      v33 = v17;
      OUTLINED_FUNCTION_3_18();
      v29 = 1107296256;
      v30 = sub_274B02D5C;
      v31 = &block_descriptor_57;
      v18 = _Block_copy(aBlock);

      [v16 setRefreshBlock_];
      _Block_release(v18);
      v19 = v16;
      MEMORY[0x277C649C0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274BF5154();
      }

      ++v13;
      sub_274BF5184();
    }

    while (v12 != v13);
    v20 = v27;

    v7 = (v4 + 40);
    v9 = v25;
    v10 = &qword_274BFB000;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_274B825CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 48);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
      return;
    }

    *(Strong + 48) = v4;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for ContentItemQuickLookModel();
    sub_274B4C28C();
    sub_274BF2CE4();

    sub_274BF2D04();
  }
}

uint64_t sub_274B82684()
{

  return v0;
}

uint64_t sub_274B826BC()
{
  sub_274B82684();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B82720(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 9))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B82760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_274B827BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 3;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 2)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 3) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 4)
        {
          return EnumTagSinglePayload - 3;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_274B82988(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 3;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 2)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 3) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 3;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_274B82C1C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContentItemQuickLookModel();
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

unint64_t sub_274B82C58(uint64_t a1)
{
  result = sub_274B4C28C();
  *(a1 + 8) = result;
  return result;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_274B82CB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_274B0F308(*a1, v6);
  return a5(v7, v6);
}

uint64_t sub_274B82D00(id *a1)
{
  v1 = *a1;
  sub_274B0F2F8(*a1);
  return sub_274B81484(v1);
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t (*sub_274B82DD8())()
{
  sub_274B8346C();
  sub_274BF37A4();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_35();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_274B83564;
}

double View.onAttachmentTapGesture(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_35();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_274BF4204();

  return result;
}

uint64_t (*sub_274B82F58@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = sub_274B82DD8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_274B8355C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_274B82FFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_274B83468;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_274ADDED0(v1, v2);
  return sub_274B83090(v4, v3);
}

uint64_t sub_274B83090(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_35();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_274B8346C();
  return sub_274BF37B4();
}

double sub_274B83164(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_274BF4204();

  return result;
}

uint64_t sub_274B831F4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_274BF37A4();
  return v3;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyy14WorkflowUICore012PlatformTextC0_p_So16NSTextAttachmentCSo6CGRectVtcSgGGAaBHPxAaBHD1__AnA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_274BF33D4();
  sub_274B83324(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_274B83324(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_274B833C0()
{
  result = qword_28098D048;
  if (!qword_28098D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D048);
  }

  return result;
}

unint64_t sub_274B83414()
{
  result = qword_28098D050;
  if (!qword_28098D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D050);
  }

  return result;
}

unint64_t sub_274B8346C()
{
  result = qword_28098D058;
  if (!qword_28098D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D058);
  }

  return result;
}

uint64_t sub_274B834C0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = *(v6 + 16);
  v10 = a2;
  *v9 = a3;
  *&v9[1] = a4;
  *&v9[2] = a5;
  *&v9[3] = a6;
  return v7(a1, &v10, v9);
}

_BYTE *ContentItemPreview.Configuration.init(mode:context:dataSource:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  *(a4 + 1) = v4;
  *(a4 + 8) = a3;
  return result;
}

uint64_t WFContentItem.previewView(configuration:previewableThumbnailItem:previewableListItem:forceUseDefaultPreview:)@<X0>(unsigned __int8 *a1@<X0>, double *a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v78 = a4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D060, &qword_274C01930);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  v77 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D068, &unk_274C01938);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v72 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A178, &unk_274BFB9B0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v13);
  v15 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 1);
  v79 = v20;
  if (v20)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_274B84020(v4, v22 | v19, v21);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if ((a3 & 1) != 0 || (v30 = swift_getObjectType(), (v31 = dynamic_cast_existential_1_conditional(v4, v30, &protocol descriptor for ContentItemPreviewProviding)) == 0))
  {
    if (v19)
    {
      if (a2)
      {
        v48 = a2;
      }

      else
      {
        type metadata accessor for PreviewableContentCollection.PreviewableListItem(0);
        swift_allocObject();
        v48 = sub_274B814F4(v4, 32.0, 32.0);
      }

      v74 = v48;
      v57 = v48[3];
      v58 = v48[4];

      sub_274B0DFBC(v57, v58);
      KeyPath = swift_getKeyPath();
      LOBYTE(v87[0]) = 0;
      type metadata accessor for ContentItemDataSource(0);
      sub_274B84740(&qword_28098D070, type metadata accessor for ContentItemDataSource, &protocol conformance descriptor for ContentItemDataSource);
      swift_retain_n();
      v60 = sub_274BF3264();
      v62 = v61;
      v63 = v87[0];
      v64 = sub_274BF3E44();
      v82 = 0;
      sub_274BF4A94();
      v65 = OUTLINED_FUNCTION_3_19();
      OUTLINED_FUNCTION_10_6(v65, v66, v67, v68);
      memcpy(&v83[7], __src, 0x70uLL);
      v81[0] = KeyPath;
      LOBYTE(v81[1]) = v63;
      v81[2] = v60;
      v81[3] = v62;
      LOBYTE(v81[4]) = v19;
      BYTE1(v81[4]) = v79;
      v81[5] = v21;
      v81[6] = 0x3FB999999999999ALL;
      LOBYTE(v81[7]) = 0;
      LOBYTE(v81[8]) = v64;
      *&v81[9] = v23;
      v81[10] = v25;
      v81[11] = v27;
      v81[12] = v29;
      LOBYTE(v81[13]) = 0;
      memcpy(&v81[13] + 1, v83, 0x77uLL);
      memcpy(v85, v81, 0xE0uLL);
      sub_274B845F4(v85);
      memcpy(v87, v85, 0xE1uLL);
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_8_12();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A1C8, &unk_274C008D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A1E8, &unk_274C008E0);
      OUTLINED_FUNCTION_5_12(&qword_28098A1C0);
      OUTLINED_FUNCTION_4_15();
      sub_274B8451C(v69, v70, &unk_274C008E0, v71);
      sub_274BF3A64();

      sub_274AFA708(v81, &qword_28098A1C8, &unk_274C008D0);

      sub_274AFA708(v81, &qword_28098A1C8, &unk_274C008D0);
      memcpy(v87, v84, 0xE1uLL);
    }

    else
    {
      type metadata accessor for PreviewableContentCollection.PreviewableThumbnailItem();
      swift_allocObject();
      v49 = v4;
      v51 = sub_274B80A30(v49, v50);
      v52 = swift_getKeyPath();
      v53 = swift_getKeyPath();
      sub_274BF4A94();
      OUTLINED_FUNCTION_3_19();
      sub_274BF34A4();
      v83[0] = 0;
      memcpy(&v86[7], v81, 0x70uLL);
      v85[0] = v51;
      LOBYTE(v85[1]) = 1;
      v85[2] = v52;
      LOBYTE(v85[3]) = 0;
      v85[4] = v53;
      LOBYTE(v85[5]) = v79;
      memcpy(&v85[5] + 1, v86, 0x77uLL);
      sub_274B84510(v85);
      memcpy(v84, v85, sizeof(v84));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A1C8, &unk_274C008D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A1E8, &unk_274C008E0);
      OUTLINED_FUNCTION_5_12(&qword_28098A1C0);
      OUTLINED_FUNCTION_4_15();
      sub_274B8451C(v54, v55, &unk_274C008E0, v56);
      sub_274BF3A64();
    }

    memcpy(v77, v87, 0xE1uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A1B8, &unk_274BFB9D0);
    sub_274B08BF8();
    sub_274B08DC0();
    return sub_274BF3A64();
  }

  else
  {
    v33 = v31;
    v34 = v32;
    ObjectType = swift_getObjectType();
    v85[0] = v33;
    LOBYTE(v87[0]) = v19;
    BYTE1(v87[0]) = v79;
    v87[1] = v21;
    v36 = *(v34 + 40);
    v74 = v4;
    v73 = v36(v87, ObjectType, v34);
    v37 = sub_274BF3E44();
    sub_274BF4A94();
    v38 = 1;
    v39 = OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_10_6(v39, v40, v41, v42);
    LOBYTE(v85[0]) = 0;
    memcpy(&v80[7], v87, 0x70uLL);
    v43 = swift_getKeyPath();
    if (v79)
    {
      sub_274BF4A44();
      v38 = 0;
    }

    v44 = sub_274BF4A54();
    __swift_storeEnumTagSinglePayload(v12, v38, 1, v44);
    v45 = (v15 + *(v76 + 36));
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A1A8, &unk_274C008C0);
    sub_274B21EA8(v12, v45 + *(v46 + 28), &qword_28098D068, &unk_274C01938);
    *v45 = v43;
    *v15 = v73;
    *(v15 + 8) = v37;
    v15[2] = v23;
    *(v15 + 3) = v25;
    *(v15 + 4) = v27;
    *(v15 + 5) = v29;
    *(v15 + 48) = 0;
    memcpy(v15 + 49, v80, 0x77uLL);
    sub_274B21EA8(v15, v18, &qword_28098A178, &unk_274BFB9B0);
    sub_274B22670(v18, v77, &qword_28098A178, &unk_274BFB9B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A1B8, &unk_274BFB9D0);
    sub_274B08BF8();
    sub_274B08DC0();
    sub_274BF3A64();

    return sub_274AFA708(v18, &qword_28098A178, &unk_274BFB9B0);
  }
}

int *ContentItemPreview.Action.init(title:symbolName:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_274BF2154();
  result = type metadata accessor for ContentItemPreview.Action(0);
  v15 = (a7 + result[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ContentItemPreviewProviding.primaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContentItemPreview.Action(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t _s14WorkflowUICore28ContentCollectionPreviewViewV0E5StateO9PageStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

uint64_t ContentItemPreview.Action.id.getter()
{
  sub_274BF2164();
  OUTLINED_FUNCTION_0_2();
  v0 = OUTLINED_FUNCTION_11();

  return v1(v0);
}

uint64_t ContentItemPreview.Action.title.getter()
{
  v0 = type metadata accessor for ContentItemPreview.Action(0);
  OUTLINED_FUNCTION_7_17(*(v0 + 20));

  return OUTLINED_FUNCTION_11();
}

uint64_t ContentItemPreview.Action.symbolName.getter()
{
  v0 = type metadata accessor for ContentItemPreview.Action(0);
  OUTLINED_FUNCTION_7_17(*(v0 + 24));

  return OUTLINED_FUNCTION_11();
}

uint64_t ContentItemPreview.Action.handler.getter()
{
  v0 = type metadata accessor for ContentItemPreview.Action(0);
  OUTLINED_FUNCTION_7_17(*(v0 + 28));

  return OUTLINED_FUNCTION_11();
}

double sub_274B84020(void *a1, __int16 a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2 & 0x100;
  v14 = a1;
  sub_274B08760();
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADC8, &qword_274BFD338);
  if (swift_dynamicCast())
  {
    sub_274B226BC(v12, v15);
    v8 = v16;
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    LOBYTE(v12[0]) = v4 & 1;
    BYTE1(v12[0]) = BYTE1(v6);
    *(&v12[0] + 1) = a3;
    v10 = (*(v9 + 32))(v12, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v15);
    if (v10)
    {
      return 0.0;
    }
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_274AFA708(v12, &qword_28098ADD0, &qword_274BFD340);
  }

  result = 19.0;
  if (v4)
  {
    result = 16.0;
  }

  if (!v6)
  {
    return 13.0;
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B841BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D068, &unk_274C01938);
  MEMORY[0x28223BE20](v2 - 8);
  sub_274B22670(a1, &v5 - v3, &qword_28098D068, &unk_274C01938);
  return sub_274BF3624();
}

void *sub_274B84264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BDE964();
  *a1 = v3;
  return result;
}

void WFContentCollection.shouldShowGridView.getter()
{
  v1 = [v0 items];
  sub_274B08760();
  sub_274BF5144();

  v2 = sub_274B22B94();

  if (v2 >= 2)
  {
    v3 = [v0 items];
    v4 = sub_274BF5144();

    v5 = sub_274B22B94();
    if (!v5)
    {
LABEL_22:

      return;
    }

    v6 = v5;
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C65230](v7, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_24:

        return;
      }

      v11 = objc_opt_self();
      if (OUTLINED_FUNCTION_11_8(v11))
      {
        goto LABEL_20;
      }

      v12 = objc_opt_self();
      if (OUTLINED_FUNCTION_11_8(v12))
      {
        goto LABEL_20;
      }

      v13 = objc_opt_self();
      if (OUTLINED_FUNCTION_11_8(v13))
      {
        goto LABEL_20;
      }

      v14 = objc_opt_self();
      if (OUTLINED_FUNCTION_11_8(v14))
      {
        goto LABEL_20;
      }

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D078, &qword_274C01A00);
      if (sub_274BF4FA4() == 0xD000000000000012 && 0x8000000274C0BF20 == v15)
      {
        break;
      }

      v17 = sub_274BF5C24();

      if ((v17 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_21:
      ++v7;
      if (v10 == v6)
      {
        goto LABEL_22;
      }
    }

LABEL_20:

    goto LABEL_21;
  }
}

uint64_t sub_274B8451C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t type metadata accessor for ContentItemPreview.Action(uint64_t a1)
{
  result = qword_28098D090;
  if (!qword_28098D090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274B8464C()
{
  result = qword_28098D080;
  if (!qword_28098D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D080);
  }

  return result;
}

unint64_t sub_274B846A4()
{
  result = qword_28098F380;
  if (!qword_28098F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F380);
  }

  return result;
}

uint64_t sub_274B84740(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ContentItemPreview(_BYTE *result, int a2, int a3)
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

_BYTE *sub_274B848B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274B849BC(uint64_t a1)
{
  result = sub_274BF2164();
  if (v2 <= 0x3F)
  {
    result = sub_274AD8470();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t WFAppStoreAppContentItem.preview(configuration:)(char *a1)
{
  sub_274B0DFBC(34.0, 34.0);
  swift_getKeyPath();
  type metadata accessor for ContentItemDataSource(0);
  sub_274B84F44();
  swift_retain_n();
  sub_274BF3264();
  sub_274B08F64();
  return sub_274BF48B4();
}

uint64_t WFAppStoreAppContentItem.primaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_274BF1F54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v29 - v10;
  v12 = [v2 object];
  v13 = [v12 viewURL];

  if (v13)
  {
    sub_274BF1F04();

    sub_274BF4FE4("Open in App Store", 17);
    if (qword_2809893B8 != -1)
    {
      swift_once();
    }

    v14 = qword_28098C7C0;
    v15 = sub_274BF4F04();
    v16 = sub_274BF4F04();

    v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

    v18 = sub_274BF4F44();
    v20 = v19;

    (*(v5 + 16))(v7, v11, v4);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = swift_allocObject();
    (*(v5 + 32))(v22 + v21, v7, v4);
    sub_274BF2154();
    (*(v5 + 8))(v11, v4);
    v23 = type metadata accessor for ContentItemPreview.Action(0);
    v24 = (a1 + v23[5]);
    *v24 = v18;
    v24[1] = v20;
    v25 = (a1 + v23[6]);
    *v25 = 0x65726F7473707061;
    v25[1] = 0xE800000000000000;
    v26 = (a1 + v23[7]);
    *v26 = sub_274B84F9C;
    v26[1] = v22;
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v23);
  }

  else
  {
    v28 = type metadata accessor for ContentItemPreview.Action(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v28);
  }
}

void sub_274B84E68()
{
  v0 = [objc_opt_self() sharedContext];
  v3 = sub_274BF1ED4();
  v1 = sub_274BF4F44();
  sub_274B84FFC(v3, v1, v2, 0, 0, v0);
}

unint64_t sub_274B84F44()
{
  result = qword_28098D070;
  if (!qword_28098D070)
  {
    type metadata accessor for ContentItemDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D070);
  }

  return result;
}

void sub_274B84F9C()
{
  sub_274BF1F54();

  sub_274B84E68();
}

void sub_274B84FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_274BF4F04();

  [a6 openURL:a1 withBundleIdentifier:v10 userInterface:a4 completionHandler:a5];
}

uint64_t sub_274B85090(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_274BF5354();
  if (!v19)
  {
    return sub_274BF5164();
  }

  v41 = v19;
  v45 = sub_274BF5A44();
  v32 = sub_274BF5A54();
  sub_274BF59E4();
  result = sub_274BF5344();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_274BF5414();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_274BF5A34();
      result = sub_274BF5384();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AutocompleteSearchStringType.hashValue.getter()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

uint64_t AnyAutocompleteDataSource.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyAutocompleteDataSource.init<A>(_:)(a1, a2, a3, v7);
  return v6;
}

void *AnyAutocompleteDataSource.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = type metadata accessor for AnyAutocompleteDataSource.AutocompleteDataSourceStorage(0, a2, a3, a4);
  v4[6] = &off_2883CC988;
  v4[2] = a1;
  return v4;
}

uint64_t sub_274B855F0()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = OUTLINED_FUNCTION_8_13();
  return v3(v2, v1);
}

uint64_t sub_274B85640()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_274B8569C()
{
  OUTLINED_FUNCTION_2_25();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_274BF51E4();
  v1[5] = sub_274BF51D4();
  OUTLINED_FUNCTION_8_13();
  v5 = sub_274BF51C4();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_274B85730, v5, v4);
}

uint64_t sub_274B85730()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  OUTLINED_FUNCTION_5_13();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_274B85854;
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6, v2, v3);
}

uint64_t sub_274B85854()
{
  OUTLINED_FUNCTION_2_25();
  v1 = *v0;
  OUTLINED_FUNCTION_3_20();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_20();
  *v5 = v4;
  *(v7 + 72) = v6;

  v8 = *(v1 + 56);
  v9 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_274B85970, v9, v8);
}

uint64_t sub_274B85970()
{
  OUTLINED_FUNCTION_2_25();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_274B859D0(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_274B85A3C()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = OUTLINED_FUNCTION_8_13();
  return v3(v2, v1);
}

uint64_t sub_274B85A8C()
{
  OUTLINED_FUNCTION_2_25();
  v1[2] = v0;
  sub_274BF51E4();
  v1[3] = sub_274BF51D4();
  OUTLINED_FUNCTION_8_13();
  v3 = sub_274BF51C4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_274B85B1C, v3, v2);
}

uint64_t sub_274B85B1C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  OUTLINED_FUNCTION_5_13();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_6_13(v5);

  return v7(v2, v3);
}

uint64_t sub_274B85C34()
{
  OUTLINED_FUNCTION_2_25();
  v1 = *v0;
  OUTLINED_FUNCTION_3_20();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_20();
  *v5 = v4;
  *(v7 + 56) = v6;

  v8 = *(v1 + 40);
  v9 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_274B85D50, v9, v8);
}

uint64_t sub_274B85D50()
{
  OUTLINED_FUNCTION_2_25();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_274B85DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_274BF2CC4();
  OUTLINED_FUNCTION_4_8();
  swift_getAssociatedConformanceWitness();
  v9 = sub_274BF2DA4();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v9;
}