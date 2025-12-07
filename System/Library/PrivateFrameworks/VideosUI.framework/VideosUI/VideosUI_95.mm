id sub_1E3DFB764(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v8 = v7(a2, a3, a4);

  return v8;
}

unint64_t sub_1E3DFB7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39370;
  if (!qword_1ECF39370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39370);
  }

  return result;
}

unint64_t sub_1E3DFB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39378;
  if (!qword_1ECF39378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39378);
  }

  return result;
}

_BYTE *sub_1E3DFB88C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1E3DFB970(_BYTE *result, int a2, int a3)
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

double sub_1E3DFBA34@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_1E3DFBA40@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

unint64_t sub_1E3DFBA4C()
{
  result = qword_1EE23B340;
  if (!qword_1EE23B340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B340);
  }

  return result;
}

uint64_t sub_1E3DFBA90(uint64_t a1)
{
  v1 = (*(*a1 + 392))();
  if (v1)
  {
    type metadata accessor for ButtonLayout();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = (*(*v2 + 1784))();

      if (v3 != 11)
      {
        sub_1E3751DB0(v4, v5, v6);
        LOBYTE(v1) = sub_1E4205E84();
        return v1 & 1;
      }
    }

    else
    {
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

double sub_1E3DFBB94(uint64_t a1, void *a2)
{
  if (a1)
  {

    if (sub_1E3DFBA90(v4))
    {
      v5 = (*(*a1 + 624))();
      v14 = 9;
      (*(*a1 + 776))(v15, &v14, &unk_1F5D5D0A8, &off_1F5D5C758);
      if (!v15[3])
      {
        sub_1E329505C(v15);
        goto LABEL_14;
      }

      if (!swift_dynamicCast() || (v14 & 1) == 0)
      {
LABEL_14:
        while (v5)
        {
          type metadata accessor for CollectionViewModel();
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            v8 = *(*v7 + 1440);

            v10 = v8(v9);

            if (v10)
            {
              goto LABEL_16;
            }
          }

          v11 = (*(*v5 + 624))();

          v5 = v11;
        }
      }

      v10 = 0;
LABEL_16:
      if (a2)
      {
        type metadata accessor for BaseImpressionManager();
        v12 = a2;
        v13 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v12);
      }

      else
      {
        v13 = 0;
      }

      (*(*a1 + 808))(2, v13);

      sub_1E3DFBE28(a1, v10, a2);
    }

    else
    {
    }
  }

  return result;
}

void sub_1E3DFBE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E39BE4D0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1E324FBDC();
    (*(v7 + 16))(v9, v12, v6);

    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v39 = a3;
      v16 = v15;
      v37 = v15;
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v16 = 136315138;
      v17 = *(*a1 + 368);
      v36 = v14;
      v18 = v17();
      v20 = v11;
      v21 = a2;
      v22 = sub_1E3270FC8(v18, v19, v40);

      v23 = v37;
      *(v37 + 4) = v22;
      a2 = v21;
      v11 = v20;
      _os_log_impl(&dword_1E323F000, v13, v36, "Button(%s dispatching select event", v23, 0xCu);
      v24 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E69143B0](v24, -1, -1);
      a3 = v39;
      MEMORY[0x1E69143B0](v23, -1, -1);
    }

    v25 = (*(v7 + 8))(v9, v6);
    v27 = (*(*a1 + 544))(v25);
    if (a2)
    {
      v28 = sub_1E3744600(v11);

      v29 = sub_1E3744600(a2);
      v30 = objc_allocWithZone(VUIRouterDataSource);
      v31 = sub_1E37C07A4(v28, v29);
    }

    else
    {

      v31 = v27;
    }

    ViewModelEvent.description.getter(2);
    v32 = sub_1E4205ED4();

    if ((*(*a1 + 648))(v33))
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
    }

    else
    {
      Strong = 0;
    }

    [objc_opt_self() handleEvent:v32 targetResponder:a3 appContext:Strong routerDataSource:v31 supplementaryData:0 extraInfo:0];
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v26();
  }
}

void sub_1E3DFC234()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v5[4] = sub_1E3DFC344;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1E37C0588;
  v5[3] = &block_descriptor_118;
  v4 = _Block_copy(v5);

  [v0 setSelectActionHandler_];
  _Block_release(v4);
}

void sub_1E3DFC344(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_1E3294F34(a1, v6);
    if (v7)
    {
      sub_1E37C0760();
      if (swift_dynamicCast())
      {
        v3 = v5;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      sub_1E329505C(v6);
      v3 = 0;
    }

    type metadata accessor for SeeAllButton();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    sub_1E3DFBB94(v4, v3);
  }
}

double sub_1E3DFC4F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI10NavBarCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1E3DFC5B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI10NavBarCell_titleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3DFC5EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI10NavBarCell_titleLabel;
  OUTLINED_FUNCTION_3_102(a1, a2, a3, a4, a5, a6, a7, a8, v15);
  v11 = *&v8[v10];
  *&v8[v10] = a1;
  v12 = OBJC_IVAR____TtC8VideosUI10NavBarCell_titleLabel;
  v13 = a1;
  OUTLINED_FUNCTION_5_0(&v8[v12], v16);
  v14 = *&v8[v12];
  if (v14)
  {
    if (v14 == v11)
    {
      goto LABEL_8;
    }

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else if (!v11)
  {
    goto LABEL_8;
  }

  [v11 removeFromSuperview];
  if (*&v8[v12])
  {
LABEL_7:
    [v8 addSubview_];
  }

LABEL_8:
  [v8 setNeedsLayout];
}

void (*sub_1E3DFC6AC(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI10NavBarCell_titleLabel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI10NavBarCell_titleLabel, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3DFC72C;
}

void *sub_1E3DFC744(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI10NavBarCell_accessoryView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3DFC780(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI10NavBarCell_accessoryView;
  OUTLINED_FUNCTION_3_102(a1, a2, a3, a4, a5, a6, a7, a8, v15);
  v11 = *&v8[v10];
  *&v8[v10] = a1;
  v12 = OBJC_IVAR____TtC8VideosUI10NavBarCell_accessoryView;
  v13 = a1;
  OUTLINED_FUNCTION_5_0(&v8[v12], v16);
  v14 = *&v8[v12];
  if (v14)
  {
    if (v14 == v11)
    {
      goto LABEL_7;
    }
  }

  else if (!v11)
  {
    goto LABEL_7;
  }

  [v11 removeFromSuperview];
  if (*&v8[v12])
  {
    [v8 addSubview_];
  }

LABEL_7:
  [v8 setNeedsLayout];
}

void (*sub_1E3DFC83C(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI10NavBarCell_accessoryView;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI10NavBarCell_accessoryView, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3DFC8BC;
}

void sub_1E3DFC8D4(uint64_t a1, char a2, void (*a3)(id))
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

id sub_1E3DFC954()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI10NavBarCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI10NavBarCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI10NavBarCell_accessoryView) = 0;
  v5 = type metadata accessor for NavBarCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1E3DFCA0C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI10NavBarCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI10NavBarCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI10NavBarCell_accessoryView) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3DFCAAC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NavBarCell();
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(0);
  return (*((*v1 & *v0) + 0xA0))(0);
}

double sub_1E3DFCB98()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NavBarCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3DFCBE8(0, v1);
}

double sub_1E3DFCBE8(char a1, double a2)
{
  v3 = v2;
  v6 = [objc_opt_self() vui:a2 paddingForWindowWidth:?];
  v8 = v7;
  v10 = v9;
  v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
  v12 = (v11)(v6);
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v12)
  {
    v16 = v12;
    [v12 sizeThatFits_];
    v14 = v17;
    v15 = v18;
  }

  OUTLINED_FUNCTION_16_1();
  v20 = *(v19 + 128);
  v21 = v20();
  v22 = 0.0;
  if (v21)
  {
    v23 = v21;
    [v21 sizeThatFits_];
    v13 = v24;
    v22 = v25;
  }

  v63 = v13;
  v26 = v20();
  if (v26)
  {

    v27 = v11();
    if (v27)
    {

      v28 = v20();
      if (v28)
      {
        v29 = v28;
        [v28 baselineHeight];
      }
    }
  }

  v64 = v8;
  v65 = v15;
  v30 = v20();
  v66 = v14;
  if (!v30 || (v30, OUTLINED_FUNCTION_16_1(), (v32 = (*(v31 + 104))()) == 0) || (v33 = (*(*v32 + 1704))(v32), v34 = , (*(*v33 + 152))(v67, v34), v35 = , (v68 & 1) != 0))
  {
    v36 = v11();
    v37 = 0.0;
    if (v36 && (v36, OUTLINED_FUNCTION_16_1(), (v39 = (*(v38 + 104))()) != 0))
    {
      v40 = (*(*v39 + 1728))(v39);

      (*(*v40 + 152))(v69, v41);

      v42 = 0.0;
      if (v70)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v69[0];
      }

      if (a1)
      {
        return a2;
      }
    }

    else
    {
      v42 = 0.0;
      if (a1)
      {
        return a2;
      }
    }

    goto LABEL_24;
  }

  v43 = v67[0];
  v44 = (v20)(v35);
  v37 = 0.0;
  v42 = 0.0;
  if (v44)
  {
    v45 = v44;
    [v44 topMarginWithBaselineMargin_];
    v42 = v46;
  }

  if ((a1 & 1) == 0)
  {
LABEL_24:
    v47 = [v3 effectiveUserInterfaceLayoutDirection];
    v48 = v20();
    if (v48)
    {
      v49 = v48;
      v50 = a2 - v10 - v63;
      v51 = v10;
      v52 = v64;
      if (v47 != 1)
      {
        v50 = v64;
      }

      v53 = a2 - v14;
      [v48 setFrame_];
    }

    else
    {
      v53 = a2 - v14;
      v51 = v10;
      v52 = v64;
    }

    if (v47 == 1)
    {
      v54 = v52;
    }

    else
    {
      v54 = v53 - v51;
    }

    v55 = v20();
    if (v55)
    {

      v56 = v20();
      if (v56)
      {
        v57 = v56;
        [v56 baselineHeight];
        v59 = v58;

        v37 = v42 + v59 - v65;
      }
    }

    v60 = v11();
    if (v60)
    {
      v61 = v60;
      [v60 setFrame_];
    }
  }

  return a2;
}

void *sub_1E3DFD154(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v57 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v57 - v12;
  if (a2)
  {
    v14 = *(*a1 + 488);
    v15 = a2;
    v16 = v14();
    if (v16)
    {
      v17 = v16;
      if (*(v16 + 16))
      {
        if ((*(*a1 + 392))())
        {
          type metadata accessor for NavBarCellLayout();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v19 = v18;
            v20 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x70);

            v20(v19);
            type metadata accessor for UIFactory();
            sub_1E373E010(23, v17, v21);
            OUTLINED_FUNCTION_0_251();
            v23 = (*(v22 + 128))();
            sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
            v24 = OUTLINED_FUNCTION_4_196();
            v27 = sub_1E393D92C(v24, v23, v25, 0, v26);

            sub_1E373C624(v57);
            OUTLINED_FUNCTION_0_251();
            (*(v28 + 136))(v27);
            sub_1E373E010(62, v17, v29);

            OUTLINED_FUNCTION_0_251();
            v31 = (*(v30 + 152))();
            sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
            v32 = OUTLINED_FUNCTION_4_196();
            v35 = sub_1E393D92C(v32, v31, v33, 0, v34);

            sub_1E373C624(v57);
            OUTLINED_FUNCTION_0_251();
            (*(v36 + 160))(v35);

            return a2;
          }
        }

        else
        {
        }

        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v42(v13);
        v43 = sub_1E41FFC94();
        v44 = sub_1E42067E4();
        if (os_log_type_enabled(v43, v44))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_5_20(&dword_1E323F000, v45, v46, "NavBarCell:: layout is missing, returning nil");
          OUTLINED_FUNCTION_6_0();
        }

        (*(v5 + 8))(v13, v4);
        return 0;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v37(v10);
    v38 = sub_1E41FFC94();
    v39 = sub_1E42067E4();
    if (os_log_type_enabled(v38, v39))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v40, v41, "NavBarCell::children is empty, returning nil");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v10, v4);
    return 0;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v48(v7);

  v49 = v7;
  v50 = sub_1E41FFC94();
  v51 = sub_1E4206814();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v57[0] = v53;
    *v52 = 136315138;
    sub_1E384EE08(a1[49]);
    v56 = sub_1E3270FC8(v54, v55, v57);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_1E323F000, v50, v51, "NavBarCell: Failed to get correct cell for [%s]", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v49, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3DFD72C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavBarCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CGFloat sub_1E3DFD7BC()
{
  [v0 bounds];

  return CGRectGetHeight(*&v1);
}

id sub_1E3DFD818()
{
  v1 = qword_1ECF393A0;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3DFD86C(uint64_t a1)
{
  v3 = qword_1ECF393A0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3DFD968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_252();
  sub_1E40C49A8();
  v5 = qword_1ECF393A0;
  *(v2 + qword_1ECF393A0) = v6;
  v7 = [*(a1 + 16) uiConfiguration];
  [v7 setShouldWrapModalInNavigationController_];

  swift_beginAccess();
  v8 = *(v3 + v5);
  return sub_1E4201E44();
}

void sub_1E3DFDA94()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ExtrasRootHostingController(0);
  objc_msgSendSuper2(&v9, sel_viewDidLayoutSubviews);
  v2 = *sub_1E3CD9D88();

  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 frame];
    v6 = v5;
    v8 = v7;

    (*(*v2 + 192))(v6, v8, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ExtrasRootHostingController(uint64_t a1)
{
  result = qword_1ECF64000;
  if (!qword_1ECF64000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DFDBB0(void *a1)
{
  v1 = a1;
  sub_1E3DFDA94();
}

id sub_1E3DFDC68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtrasRootHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3DFDCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = [v6 isTV];
  v8 = [v6 isTV];
  v9 = sub_1E3CD9D88();
  v10 = *(**v9 + 184);

  v10(v11);

  sub_1E3D98BF4(a1, a2, v7, v8);
  type metadata accessor for Router(0);
  sub_1E40C4334();

  sub_1E40C49A8();
  v13 = v12;

  sub_1E3A58140(&qword_1EE23C228, type metadata accessor for Router, &unk_1E42EB398);
  v14 = sub_1E4200504();
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A58, &qword_1E42B2780) + 36));
  *v15 = v14;
  v15[1] = v13;
  v16 = *v9;
  type metadata accessor for AppEnvironment(0);
  sub_1E3A58140(&qword_1EE283350, type metadata accessor for AppEnvironment, &unk_1E42BD340);

  v17 = sub_1E4200504();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393A8, qword_1E42D4228);
  v19 = (a3 + *(result + 36));
  *v19 = v17;
  v19[1] = v16;
  return result;
}

unint64_t sub_1E3DFDF48()
{
  result = qword_1ECF393B0;
  if (!qword_1ECF393B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF393A8, qword_1E42D4228);
    sub_1E3A04428();
    sub_1E3A583F0(&qword_1EE288820, &qword_1ECF2A7B8, &qword_1E429E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF393B0);
  }

  return result;
}

void sub_1E3DFDFEC()
{
  v1 = (*(*v0 + 896))();
  if (v1)
  {

    v0[290] = 1;
  }
}

void sub_1E3DFE040(void *a1)
{
  v3 = a1;
  sub_1E39EAD28(a1, v2);
  sub_1E3DFDFEC();
}

uint64_t (*sub_1E3DFE090(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1E39EAD64();
  return sub_1E3DFE0F0;
}

void sub_1E3DFE0F0(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1E3DFDFEC();
  }

  free(v3);
}

uint64_t sub_1E3DFE14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3DFE1A0(v5, a2, a3);
}

uint64_t sub_1E3DFE1A8()
{
  v0 = sub_1E39EBC28();

  return MEMORY[0x1EEE6BDC0](v0, 291, 7);
}

uint64_t sub_1E3DFE1DC()
{
  (*(*v0 + 928))();
  if (!v1)
  {
    return 0;
  }

  result = (*(*v0 + 896))(v2);
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1E3DFE2B4()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1840))();
  if ((sub_1E373F6E0(v2, 165, v3, v4, v5, v6) & 1) == 0)
  {
    if ([objc_opt_self() isTV])
    {
      OUTLINED_FUNCTION_8();
      v8 = (*(v7 + 1792))();
      if (sub_1E3ACABC8(v8, 3))
      {
        v9.n128_u64[0] = 0x4041000000000000;
      }

      else
      {
        v9.n128_u64[0] = 16.0;
      }
    }

    else
    {
      v10 = sub_1E3ACABC8(*(v0 + 192), 0);
      v9.n128_u64[0] = 8.0;
      if (v10)
      {
        v9.n128_f64[0] = 4.0;
      }
    }

    j__OUTLINED_FUNCTION_7_78(v9);
  }

  OUTLINED_FUNCTION_8();
  return (*(v11 + 184))(v12, v13, v14, v15, v16);
}

uint64_t sub_1E3DFE3CC(char a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_14_0(v3 + 98, a2);
  *(v3 + 98) = a1;
  v5 = swift_beginAccess();
  sub_1E3ACCA54(v5, v6, v7);
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    return sub_1E3DFE2B4();
  }

  return result;
}

void (*sub_1E3DFE45C(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 98);
  return sub_1E3DFE4D4;
}

void sub_1E3DFE4D4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  sub_1E3DFE3CC(*(*a1 + 32), a2);

  free(v2);
}

uint64_t sub_1E3DFE514()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = type metadata accessor for ScoreboardLayout();
    v1 = sub_1E3AEC538(v2);
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t (*sub_1E3DFE57C(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E3DFE514();
  return sub_1E3DFE5C4;
}

double sub_1E3DFE5C4(void *a1)
{
  *(a1[1] + 104) = *a1;

  return result;
}

uint64_t sub_1E3DFE5FC(__int16 a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 112, a2);
  *(v2 + 112) = a1;
  return result;
}

uint64_t sub_1E3DFE630()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ImageLayout();
    v5 = sub_1E3BD61D8();
    sub_1E41E1A64(&v5, sub_1E3DFE6DC, v3, &v6);

    v1 = v6;
    *(v2 + 160) = v6;
  }

  return v1;
}

uint64_t sub_1E3DFE6DC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1840))();
  result = sub_1E373F6E0(v1, 165, v2, v3, v4, v5);
  if (result)
  {
    v26[0] = 0x4038000000000000;
    LOBYTE(v26[1]) = 0;
    v37 = 0x4044000000000000;
    v38 = 0;
    v7 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00();
    v33 = v35;
    v34 = v36;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_18_100();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_23_55();
    sub_1E3C3DE00();
    v27 = v29;
    v28 = v30;
    sub_1E3C2FCB8(&v33, v32, v31, &v27, v26, &v37, v7, __src);
    memcpy(v26, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v9 = *(v8 + 1600);
    v9(v26, 100, v10 & 1, v7);
    v26[0] = 0x4038000000000000;
    LOBYTE(v26[1]) = 0;
    v37 = 0x403E000000000000;
    v38 = 0;
    v35 = 0x404E000000000000;
    v36 = 0;
    v33 = 0x4044000000000000;
    v34 = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_18_100();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_23_55();
    sub_1E3C2FCB8(v26, v32, &v37, &v35, v31, &v33, v7, __src);
    memcpy(v26, __src, 0x59uLL);
    v11 = OUTLINED_FUNCTION_18();
    v9(v26, 2, v11 & 1, v7);
    OUTLINED_FUNCTION_111();
    (*(v12 + 200))();
    OUTLINED_FUNCTION_9_2();
    (*(v13 + 312))();
    sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0470588235 green:0.0470588235 blue:0.0470588235 alpha:1.0];
    v15 = objc_opt_self();
    v16 = [v15 blackColor];
    v17 = sub_1E3E5F2F8(v14, v16);

    OUTLINED_FUNCTION_9_2();
    (*(v18 + 680))(v17);
    v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.733333333 green:0.733333333 blue:0.733333333 alpha:1.0];
    v20 = [v15 whiteColor];
    v21 = sub_1E3E5F2F8(v19, v20);

    OUTLINED_FUNCTION_9_2();
    (*(v22 + 752))(v21);
    OUTLINED_FUNCTION_9_2();
    (*(v23 + 512))(17);
    v24 = *(MEMORY[0x1E69DDCE0] + 16);
    __src[0] = *MEMORY[0x1E69DDCE0];
    __src[1] = v24;
    LOBYTE(__src[2]) = 0;
    OUTLINED_FUNCTION_111();
    return (*(v25 + 160))(__src);
  }

  return result;
}

double sub_1E3DFEB48(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 176, a2);
  *(v2 + 176) = a1;

  return result;
}

void *sub_1E3DFEB84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  swift_allocObject();
  return sub_1E3DFEBD0(v3, v2);
}

void *sub_1E3DFEBD0(__int16 a1, char a2)
{
  OUTLINED_FUNCTION_27_75();
  *(v2 + 168) = OUTLINED_FUNCTION_22_76();
  v405 = type metadata accessor for ViewGradientLayout(0);
  *(v2 + 176) = sub_1E40C3088();
  v5 = type metadata accessor for ProgressLayout();
  *(v2 + 184) = sub_1E3FB3220(v5);
  *(v2 + 112) = a1;
  *(v2 + 192) = a2;
  v6 = sub_1E3C2F9A0();
  v7 = (*v6 + 1840);
  v8 = *v7;

  v424 = v8;
  v444 = v7;
  v8();
  OUTLINED_FUNCTION_9_2();
  v10 = (*(v9 + 1888))();
  OUTLINED_FUNCTION_3_0((v6 + 16), &v472);
  v6[16] = v10;

  type metadata accessor for TextLayout();
  v11 = sub_1E383BCC0();
  OUTLINED_FUNCTION_9_2();
  v13 = (*(v12 + 1840))();
  if (v13 != 154)
  {
    if (v13 == 163)
    {
      v14 = sub_1E383BCC0();

      OUTLINED_FUNCTION_26();
      (*(v100 + 656))(1);
      sub_1E4205F14();
      OUTLINED_FUNCTION_2_33();
      (*(v101 + 1768))();
      OUTLINED_FUNCTION_2_33();
      (*(v102 + 1696))(22);
      OUTLINED_FUNCTION_2_33();
      (*(v103 + 1792))(10);
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      OUTLINED_FUNCTION_11_12();
      v104 = sub_1E4206F24();
      v105 = [v104 colorWithAlphaComponent_];

      OUTLINED_FUNCTION_2_33();
      (*(v106 + 680))(v105);
      *__dst = 0;
      __dst[8] = 1;
      v500[0] = 0;
      OUTLINED_FUNCTION_19_113();
      OUTLINED_FUNCTION_24_87(0x4033000000000000uLL);
      v107 = MEMORY[0x1E69E7DE0];
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_226();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_0_253();
      sub_1E3C2FCB8(v108, v109, v110, v111, v112, v113, v107, v114);
      OUTLINED_FUNCTION_13_138(v115, v116, v117, v118, v119, v120, v121, v122, v351, v370, v388, v405, v8, v7, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      OUTLINED_FUNCTION_11_139(v123, v124, v125, v126, v127, v128, v129, v130, v358, v376, v394, v412, v431, v451, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
      OUTLINED_FUNCTION_21_91();
      v131();
      goto LABEL_6;
    }

    if (v13 != 156)
    {
      goto LABEL_7;
    }
  }

  v14 = sub_1E383BCC0();

  OUTLINED_FUNCTION_26();
  (*(v15 + 656))(1);
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_33();
  (*(v16 + 1768))();
  __dst[0] = 10;
  LOBYTE(v500[0]) = 11;
  LOBYTE(v497[0]) = 11;
  LOBYTE(v494[0]) = 6;
  LOBYTE(v491[0]) = 5;
  v17 = sub_1E3C3DE00();
  LOBYTE(v485[0]) = v488[0];
  v25 = OUTLINED_FUNCTION_2_194(v17, v18, v19, v20, v21, v22, v23, v24, v351, v370, v388, v405, v8, v7, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  sub_1E3C2FCB8(v25, v26, v27, v28, v491, v485, &qword_1F5D54AF8, v29);
  OUTLINED_FUNCTION_23_83();
  OUTLINED_FUNCTION_2_33();
  v31 = v30 + 1600;
  v32 = *(v30 + 1600);
  OUTLINED_FUNCTION_11_139(v33, v34, v35, v36, v37, v38, v39, v40, v352, v371, v389, v406, v425, v445, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  OUTLINED_FUNCTION_21_91();
  v32();
  *__dst = 0;
  __dst[8] = 1;
  v500[0] = 0;
  LOBYTE(v500[1]) = 1;
  v497[0] = 0;
  LOBYTE(v497[1]) = 1;
  OUTLINED_FUNCTION_24_87(0x4033000000000000uLL);
  v41 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_1_226();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_253();
  sub_1E3C2FCB8(v42, v43, v44, v45, v46, v47, v41, v48);
  OUTLINED_FUNCTION_13_138(v49, v50, v51, v52, v53, v54, v55, v56, v353, v32, v31, v407, v426, v446, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst);
  v57 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_178(v57, v58, v59, v60, v61, v62, v63, v64, v354, v372, v390, v408, v427, v447, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  OUTLINED_FUNCTION_21_91();
  v32();
  v65 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  OUTLINED_FUNCTION_11_12();
  v66 = sub_1E4206F24();
  v67 = [v66 colorWithAlphaComponent_];

  *__dst = v67;
  v500[0] = 0;
  v497[0] = 0;
  OUTLINED_FUNCTION_11_12();
  v494[0] = sub_1E4206F24();
  OUTLINED_FUNCTION_11_12();
  v491[0] = sub_1E4206F24();
  v68 = sub_1E3C3DE00();
  v485[0] = v488[0];
  v76 = OUTLINED_FUNCTION_2_194(v68, v69, v70, v71, v72, v73, v74, v75, v355, v373, v391, v409, v428, v448, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  sub_1E3C2FCB8(v76, v77, v78, v79, v491, v485, v65, v80);
  v81 = __src[0];
  v82 = __src[1];
  v83 = __src[2];
  *__dst = __src[0];
  *&__dst[16] = __src[1];
  *&__dst[32] = __src[2];
  v84 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_178(v84, v85, v86, v87, v88, v89, v90, v91, v356, v374, v392, v410, v429, v449, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  OUTLINED_FUNCTION_21_91();
  v375();

  __dst[0] = 15;
  sub_1E3C3DE00();
  LOBYTE(v497[0]) = v500[0];
  sub_1E3C2FC98();
  LOBYTE(v491[0]) = v494[0];
  sub_1E3C3DE00();
  LOBYTE(v485[0]) = v488[0];
  sub_1E3C3DE00();
  LOBYTE(v480[0]) = v483[0];
  sub_1E3C3DE00();
  LOBYTE(v469) = v476[0];
  sub_1E3C2FCB8(v497, v491, v485, v480, __dst, &v469, &qword_1F5D549D8, __src);
  v92 = OUTLINED_FUNCTION_23_83();
  OUTLINED_FUNCTION_5_178(v92, v93, v94, v95, v96, v97, v98, v99, v357, v375, v393, v411, v430, v450, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  OUTLINED_FUNCTION_21_91();
  v370();
LABEL_6:
  v11 = v14;
LABEL_7:
  OUTLINED_FUNCTION_3_0((v6 + 15), &v469);
  v6[15] = v11;

  v132 = sub_1E3BD61D8();
  OUTLINED_FUNCTION_9_2();
  switch((*(v133 + 1840))())
  {
    case 0x9Au:
    case 0x9Cu:
      OUTLINED_FUNCTION_26();
      v135 = *(v134 + 656);

      v135(1);
      OUTLINED_FUNCTION_2_33();
      (*(v136 + 312))(0x4032000000000000, 0);
      OUTLINED_FUNCTION_2_33();
      (*(v137 + 1784))(0x3F847AE147AE147BLL, 0);
      goto LABEL_10;
    case 0x9Bu:
      OUTLINED_FUNCTION_26();
      v195 = *(v194 + 312);

      v195(0x4032000000000000, 0);

      OUTLINED_FUNCTION_2_33();
      (*(v196 + 1808))(1);
      break;
    case 0xA3u:
      OUTLINED_FUNCTION_26();
      v139 = *(v138 + 656);

      v139(0);
      *__dst = 0x4032000000000000;
      __dst[8] = 0;
      v500[0] = 0;
      OUTLINED_FUNCTION_19_113();
      OUTLINED_FUNCTION_24_87(0x4038000000000000uLL);
      v140 = MEMORY[0x1E69E7DE0];
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_226();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_0_253();
      sub_1E3C2FCB8(v141, v142, v143, v144, v145, v146, v140, v147);
      OUTLINED_FUNCTION_13_138(v148, v149, v150, v151, v152, v153, v154, v155, v351, v370, v388, v405, v424, v444, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      v157 = *(v156 + 1600);
      v166 = OUTLINED_FUNCTION_11_139(v158, v159, v160, v161, v162, v163, v164, v165, v359, v377, v395, v413, v432, v452, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
      v157(v166, 8);
      *__dst = 0x4054000000000000;
      __dst[8] = 0;
      v500[0] = 0;
      OUTLINED_FUNCTION_19_113();
      OUTLINED_FUNCTION_24_87(0x4050C00000000000uLL);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_226();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_0_253();
      sub_1E3C2FCB8(v167, v168, v169, v170, v171, v172, v140, v173);
      OUTLINED_FUNCTION_13_138(v174, v175, v176, v177, v178, v179, v180, v181, v360, v378, v396, v414, v433, v453, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst);
      v182 = OUTLINED_FUNCTION_18();
      v190 = OUTLINED_FUNCTION_5_178(v182, v183, v184, v185, v186, v187, v188, v189, v361, v379, v397, v415, v434, v454, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
      v157(v190, 4);
LABEL_10:
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      OUTLINED_FUNCTION_11_12();
      sub_1E4206F24();
      OUTLINED_FUNCTION_2_33();
      (*(v191 + 680))();

      OUTLINED_FUNCTION_2_33();
      (*(v192 + 1808))(1);
      OUTLINED_FUNCTION_2_33();
      (*(v193 + 1736))(0x3FF0000000000000, 0);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_3_0((v6 + 18), &v466);
  v6[18] = v132;

  v197 = sub_1E3BD61D8();
  OUTLINED_FUNCTION_9_2();
  v199 = (*(v198 + 1840))() - 154;
  if (v199 <= 9 && ((1 << v199) & 0x205) != 0)
  {
    OUTLINED_FUNCTION_26();
    v201 = *(v200 + 208);

    v201(0x4046000000000000, 0);
    OUTLINED_FUNCTION_2_33();
    (*(v202 + 312))(0x4046000000000000, 0);
    sub_1E39537A8();
    *&__src[0] = v203;
    *(&__src[0] + 1) = v204;
    *&__src[1] = v205;
    *(&__src[1] + 1) = v206;
    LOBYTE(__src[2]) = 0;
    (*(*v197 + 560))(__src);

    v207.n128_u64[0] = 1.0;
    *__dst = j__OUTLINED_FUNCTION_7_78(v207);
    *&__dst[8] = v208;
    *&__dst[16] = v209;
    *&__dst[24] = v210;
    __dst[32] = 0;
    (*(*v197 + 1856))(__dst);
    v211 = *sub_1E3E6097C();
    v212 = *(*v197 + 1832);
    v213 = v211;
    v212(v211);
  }

  OUTLINED_FUNCTION_3_0((v6 + 17), &v463);
  v6[17] = v197;

  v214 = sub_1E3BD61D8();
  *__dst = 0x403E000000000000;
  __dst[8] = 0;
  v500[0] = 0x4034000000000000;
  LOBYTE(v500[1]) = 0;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_20_98();
  OUTLINED_FUNCTION_1_226();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_3_189();
  v215 = OUTLINED_FUNCTION_28_71();
  LOBYTE(v476[1]) = v480[1];
  OUTLINED_FUNCTION_6_166(v215, v216, v217, v218, v219, v220, v221, v222, v351, v370, v388, v405, v424, v444, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v480[0], v476[1], v477, *(&v477 + 1), v478, v479, v480[0]);
  OUTLINED_FUNCTION_13_138(v223, v224, v225, v226, v227, v228, v229, v230, v362, v380, v398, v416, v435, v455, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst);
  v231 = OUTLINED_FUNCTION_18();
  v232 = (*v214 + 1600);
  v233 = *v232;
  v241 = OUTLINED_FUNCTION_11_139(v231, v234, v235, v236, v237, v238, v239, v240, v363, v381, v399, v417, v436, v456, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  v233(v241, 6);
  *__dst = 0x403E000000000000;
  __dst[8] = 0;
  v500[0] = 0x4034000000000000;
  LOBYTE(v500[1]) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_20_98();
  OUTLINED_FUNCTION_1_226();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_3_189();
  v242 = OUTLINED_FUNCTION_28_71();
  LOBYTE(v476[1]) = v480[1];
  OUTLINED_FUNCTION_6_166(v242, v243, v244, v245, v246, v247, v248, v249, v364, v382, v400, v418, v437, v457, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v480[0], v476[1], v477, *(&v477 + 1), v478, v479, v480[0]);
  OUTLINED_FUNCTION_13_138(v250, v251, v252, v253, v254, v255, v256, v257, v365, v383, v401, v419, v438, v458, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst);
  v258 = OUTLINED_FUNCTION_18();
  v266 = OUTLINED_FUNCTION_5_178(v258, v259, v260, v261, v262, v263, v264, v265, v366, v384, v402, v420, v439, v459, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  v233(v266, 2);
  memset(__dst, 0, 32);
  __dst[32] = 1;
  *v500 = xmmword_1E42D1200;
  v501 = xmmword_1E42D4360;
  v502 = 0;
  type metadata accessor for UIEdgeInsets();
  v268 = v267;
  sub_1E3C2FC98();
  *v494 = *v497;
  v495 = v498;
  v496 = v499;
  sub_1E3C3DE00();
  *v488 = *v491;
  v489 = v492;
  v490 = v493;
  sub_1E3C3DE00();
  v483[0] = *v485;
  v483[1] = v486;
  v484 = v487;
  OUTLINED_FUNCTION_28_71();
  *v476 = *v480;
  v477 = v481;
  LOBYTE(v478) = v482;
  sub_1E3C2FCB8(__dst, v494, v488, v500, v483, v476, v268, __src);
  memcpy(__dst, __src, 0xE9uLL);
  v269 = OUTLINED_FUNCTION_18();
  v277 = OUTLINED_FUNCTION_5_178(v269, v270, v271, v272, v273, v274, v275, v276, v367, v385, v232, v421, v440, v460, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  v233(v277, 0);
  v278 = objc_opt_self();
  *__dst = [v278 configurationWithPointSize_];
  v500[0] = [v278 configurationWithPointSize_];
  sub_1E3280A90(0, &qword_1EE23AFA8, 0x1E69DCAD8);
  sub_1E3C2FC98();
  v494[0] = v497[0];
  sub_1E3C3DE00();
  v488[0] = v491[0];
  sub_1E3C3DE00();
  *&v483[0] = v485[0];
  v279 = OUTLINED_FUNCTION_28_71();
  OUTLINED_FUNCTION_6_166(v279, v280, v281, v282, v283, v284, v285, v286, v368, v386, v403, v422, v441, v461, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v480[0], v476[1], v477, *(&v477 + 1), v478, v479, v480[0]);
  v287 = __src[0];
  v288 = __src[1];
  v289 = __src[2];
  *__dst = __src[0];
  *&__dst[16] = __src[1];
  *&__dst[32] = __src[2];
  v290 = OUTLINED_FUNCTION_18();
  v298 = OUTLINED_FUNCTION_5_178(v290, v291, v292, v293, v294, v295, v296, v297, v369, v387, v404, v423, v442, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, __dst[0]);
  v233(v298, 88);

  v299 = [objc_opt_self() whiteColor];
  (*(*v214 + 680))(v299);

  OUTLINED_FUNCTION_3_0((v6 + 21), __dst);
  v6[21] = v214;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_1E429DCC0;
  v301 = objc_opt_self();
  *(v300 + 32) = [v301 blackColor];
  *(v300 + 40) = [v301 clearColor];
  v302 = sub_1E40C2E40();

  v303.n128_u64[0] = 10.0;
  *&__src[0] = j__OUTLINED_FUNCTION_7_78(v303);
  *(&__src[0] + 1) = v304;
  *&__src[1] = v305;
  *(&__src[1] + 1) = v306;
  LOBYTE(__src[2]) = 0;
  (*(*v302 + 560))(__src);

  OUTLINED_FUNCTION_3_0((v6 + 22), __src);
  v6[22] = v302;

  v308 = (v443)(v307);
  if (sub_1E373F6E0(v308, 154, v309, v310, v311, v312) & 1) != 0 || (v313 = v443(), (sub_1E373F6E0(v313, 156, v314, v315, v316, v317)) || (v318 = v443(), v323 = sub_1E373F6E0(v318, 163, v319, v320, v321, v322), (v323))
  {
    OUTLINED_FUNCTION_111();
    v325 = (*(v324 + 2056))();
    (*(*v325 + 656))(1);
  }

  v326 = (v443)(v323);
  if (sub_1E373F6E0(v326, 155, v327, v328, v329, v330))
  {
    v331 = [objc_opt_self() blackColor];
    v332 = [v331 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_9_2();
    (*(v333 + 1400))(v332);
  }

  sub_1E3DFE2B4();
  OUTLINED_FUNCTION_111();
  v335 = (*(v334 + 1864))();
  if (v335)
  {
    sub_1E3C37CBC(v335, 23);
  }

  OUTLINED_FUNCTION_111();
  v337 = (*(v336 + 1888))();
  if (v337)
  {
    sub_1E3C37CBC(v337, 15);
  }

  OUTLINED_FUNCTION_111();
  v339 = (*(v338 + 1912))();
  if (v339)
  {
    sub_1E3C37CBC(v339, 32);
  }

  OUTLINED_FUNCTION_111();
  v341 = (*(v340 + 1936))();
  if (v341)
  {
    sub_1E3C37CBC(v341, 40);
  }

  OUTLINED_FUNCTION_111();
  v343 = (*(v342 + 1984))();
  sub_1E3C37CBC(v343, 36);

  OUTLINED_FUNCTION_9_2();
  v345 = (*(v344 + 2008))();
  sub_1E3C37CBC(v345, 44);

  OUTLINED_FUNCTION_9_2();
  v347 = (*(v346 + 2056))();
  sub_1E3C37CBC(v347, 115);

  OUTLINED_FUNCTION_9_2();
  v349 = (*(v348 + 1816))();
  sub_1E3C37CBC(v349, 234);

  return v6;
}

void sub_1E3E00140()
{
  OUTLINED_FUNCTION_27_75();
  v0[21] = OUTLINED_FUNCTION_22_76();
  type metadata accessor for ViewGradientLayout(0);
  v0[22] = sub_1E40C3088();
  v1 = type metadata accessor for ProgressLayout();
  v0[23] = sub_1E3FB3220(v1);
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3E001D8(uint64_t a1)
{
  nullsub_1();
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = result;
      OUTLINED_FUNCTION_14_0(v1 + 152, v3);
      *(v1 + 152) = v4;
      swift_retain_n();

      v5 = *sub_1E3810A0C();

      sub_1E3C37EC8(v4, v5);
    }
  }

  return result;
}

double sub_1E3E00288()
{

  return result;
}

uint64_t sub_1E3E002F8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3E00370()
{
  v0 = sub_1E3E002F8();

  return MEMORY[0x1EEE6BDC0](v0, 193, 7);
}

double sub_1E3E003C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E3E0043C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 96))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1E3E004D8(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E3E00568(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E3E005F8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3E0066C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188, &qword_1E42AB710);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3E00798(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188, &qword_1E42AB710);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3E008BC;
}

void sub_1E3E008BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3E0066C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3E0066C(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3E00970(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3E009C0(a1, a2);
  return v4;
}

uint64_t sub_1E3E009C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  v11 = OBJC_IVAR____TtC8VideosUI39EnclosingOrthogonalScrollViewProperties__bounds;
  type metadata accessor for CGRect(0);
  memset(v13, 0, sizeof(v13));
  sub_1E4200634();
  (*(v7 + 32))(v2 + v11, v10, v5);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1E3E00AC4()
{

  v1 = OBJC_IVAR____TtC8VideosUI39EnclosingOrthogonalScrollViewProperties__bounds;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3E00B68()
{
  v1 = *(*v0 + 16);

  return v1;
}

void (*sub_1E3E00C14(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 112))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3E00C8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnclosingOrthogonalScrollViewProperties(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for EnclosingOrthogonalScrollViewProperties(uint64_t a1)
{
  result = qword_1ECF640B0;
  if (!qword_1ECF640B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E00D20(uint64_t a1)
{
  sub_1E3E00DBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3E00DBC(uint64_t a1)
{
  if (!qword_1EE289F20)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289F20);
    }
  }
}

void *sub_1E3E00E14(__int16 *a1, void *a2, void *a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_27;
  }

  v10 = *(*a1 + 464);
  v11 = a2;
  v12 = v10();
  if (v12)
  {
    v13 = v12;
    if (sub_1E32AE9B0(v12))
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v14 = *(v13 + 32);
      }

      type metadata accessor for ImageViewModel();
      v63 = swift_dynamicCastClass();
      if (v63)
      {
        v62 = a2;
        v15 = (*(*a1 + 392))();
        if (v15)
        {
          v16 = v15;
          v64 = v14;
          type metadata accessor for BrandLockupCellLayout();
          v61[2] = v16;
          v17 = swift_dynamicCastClass();
          if (v17)
          {
            v18 = v17;
            v19 = (*a3 == 2) | ~*a3;
            v20 = (*v17 + 1696);
            v21 = *v20;
            v22 = (*v20)();
            [v11 vuiBounds];
            v61[1] = v22;
            sub_1E3E01568(v22, v23);
            v25 = v24;
            v27 = v26;
            sub_1E3DF9E68(v69);
            LOBYTE(v22) = v73;
            v68 = 0;
            type metadata accessor for UIFactory();
            v61[0] = OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView;
            v28 = *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
            v29 = v68;
            v66 = &unk_1F5D869A0;
            v67 = &off_1F5D868A0;
            v30 = swift_allocObject();
            v65[0] = v30;
            *(v30 + 16) = v25;
            *(v30 + 24) = v27;
            *(v30 + 32) = v29;
            *(v30 + 33) = v70;
            *(v30 + 49) = v71;
            *(v30 + 65) = v72[0];
            *(v30 + 80) = *(v72 + 15);
            *(v30 + 96) = v19 & 1;
            *(v30 + 97) = v22;
            v31 = v28;

            v33 = (v21)(v32);
            v34 = sub_1E3D09CE8();
            v35 = sub_1E393D92C(v63, v28, v65, v33, v34);

            sub_1E373C624(v65);
            v36 = *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
            *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView] = v35;
            v37 = v35;
            v38 = [v11 vuiContentView];
            [v38 vui:*&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView] addSubview:v36 oldView:?];

            v39 = *v21();
            (*(v39 + 552))(v65);
            v40 = *v65;
            v41 = *&v65[1];
            v42 = *&v65[2];
            v43 = *&v66;

            v44 = 0.0;
            if ((v67 & 1) == 0)
            {
              v44 = sub_1E3952BE8(v40, v41, v42, v43);
            }

            v45 = *&v11[v61[0]];
            if (v45)
            {
              v46 = [v45 vuiLayer];
              [v46 setCornerRadius_];
            }

            *&v11[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_viewLayout] = v18;

            if (v35)
            {
              [v37 setVuiUserInteractionEnabled_];
            }

            v47 = [v11 vui:1 isAccessibilityElement:?];
            (*(*v63 + 904))(v47);
            v48 = v62;
            if (v49)
            {
              v50 = sub_1E4205ED4();
            }

            else
            {
              v50 = 0;
            }

            [v11 vui:v50 setAccessibilityText:?];

            return v48;
          }

          goto LABEL_26;
        }
      }

LABEL_22:

LABEL_26:

      goto LABEL_27;
    }
  }

  else
  {
  }

LABEL_27:
  v52 = sub_1E324FBDC();
  v53 = v6;
  (*(v7 + 16))(v9, v52, v6);

  v54 = sub_1E41FFC94();
  v55 = sub_1E4206814();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v69[0] = v57;
    *v56 = 136315138;
    sub_1E384EE08(a1[49]);
    v60 = sub_1E3270FC8(v58, v59, v69);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_1E323F000, v54, v55, "BrandLockupCell: Failed to get correct cell for [%s]", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x1E69143B0](v57, -1, -1);
    MEMORY[0x1E69143B0](v56, -1, -1);
  }

  (*(v7 + 8))(v9, v53);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E3E01568(uint64_t a1, double a2)
{
  (*(*a1 + 208))(*&a2, 0);
  v3 = (*(*a1 + 312))(0, 0);
  return (*(*a1 + 2288))(v3);
}

double sub_1E3E0162C(char a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_viewLayout];
  if (v6)
  {
    v7 = *(*v6 + 1696);

    v9 = v7(v8);

    if (a1)
    {
      sub_1E3E01568(v9, a2);

      return a2;
    }
  }

  else if (a1)
  {
    return a2;
  }

  v10 = *&v3[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
  if (v10)
  {
    v11 = v10;
    [v3 vuiBounds];
    [v11 setFrame_];
  }

  return a2;
}

id sub_1E3E01790(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vui_setHighlighted_, a1 & 1);
  result = *&v1[OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView];
  if (result)
  {
    return [result vui:a1 & 1 setHighlighted:?];
  }

  return result;
}

id sub_1E3E01850()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_254(&OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView);
  v0 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v1, v2, v0);
}

id sub_1E3E018CC(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_254(&OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView);
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

void *sub_1E3E019B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15BrandLockupCell_brandImageView);
  v2 = v1;
  return v1;
}

uint64_t _s5ClockVMa(uint64_t a1)
{
  result = qword_1EE299860;
  if (!qword_1EE299860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E01A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = _s5ClockVMa(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  *(v16 - v15) = a1;
  v19 = *(v18 + 32);
  v20 = sub_1E4205BF4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v17 + v19, a7, v20);
  *(v17 + 24) = a5;
  *(v17 + 32) = a6 & 1;
  if (a4)
  {
    v22 = sub_1E42052A4();
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    *(v17 + 8) = v24;
    a3 = sub_1E42052B4();
    v26 = v25;
    (*(v21 + 8))(a7, v20);
    if (v26)
    {
      a3 = 0;
    }
  }

  else
  {
    (*(v21 + 8))(a7, v20);
    *(v17 + 8) = a2;
  }

  *(v17 + 16) = a3;
  sub_1E38E97F0(v17, a8);
  return __swift_storeEnumTagSinglePayload(a8, 0, 1, v13);
}

uint64_t sub_1E3E01C24()
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393B8, &qword_1E42D4520);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v81 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v81 - v7;
  v8 = *(v0 + 8);
  v9 = *(v0 + 16);
  v87 = v0;
  v10 = type metadata accessor for SportsVoiceOverUtility(0);
  v11 = sub_1E38BAE70();
  v88 = sub_1E38BA560(14, v9, v11);
  v13 = v12;

  if (!v13)
  {
    v92[0] = v8;
    v90 = sub_1E4207944();
    v91 = v17;
    MEMORY[0x1E69109E0](58, 0xE100000000000000);
    v92[0] = v9;
    v18 = sub_1E4207944();
    MEMORY[0x1E69109E0](v18);

    v13 = v91;
    v88 = v90;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1E38BAE70();
  v8 = sub_1E38BA560(13, v8, v14);
  v16 = v15;

LABEL_6:
  v89 = v13;
  if (v9)
  {
    v19 = sub_1E38BAE70();
    v9 = sub_1E38BA560(14, v9, v19);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
  inited = swift_initStackObject();
  v23 = 0;
  v83 = xmmword_1E4299720;
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = v8;
  *(inited + 40) = v16;
  v24 = inited + 40;
  *(inited + 48) = v9;
  *(inited + 56) = v21;
  v25 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v26 = (v24 + 16 * v23);
  while (++v23 != 3)
  {
    v27 = v26 + 2;
    v28 = *v26;
    v26 += 2;
    if (v28)
    {
      v84 = v10;
      v29 = *(v27 - 3);

      v30 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1E3740F88(0, *(v25 + 2) + 1, 1, v25);
      }

      v32 = *(v25 + 2);
      v31 = *(v25 + 3);
      if (v32 >= v31 >> 1)
      {
        v25 = sub_1E3740F88((v31 > 1), v32 + 1, 1, v25);
      }

      *(v25 + 2) = v32 + 1;
      v33 = &v25[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v28;
      v3 = v30;
      v10 = v84;
      goto LABEL_10;
    }
  }

  swift_setDeallocating();
  sub_1E3740994();
  v34 = *(v25 + 2);
  if (v34 != 1)
  {
    if (v34 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
      v35 = swift_initStackObject();
      v35[1] = v83;
      v35[2].n128_u8[0] = 18;
      v36 = *(v25 + 5);
      v35[2].n128_u64[1] = *(v25 + 4);
      v35[3].n128_u64[0] = v36;
      v35[3].n128_u8[8] = 19;
      v37 = *(v25 + 7);
      v35[4].n128_u64[0] = *(v25 + 6);
      v35[4].n128_u64[1] = v37;
      sub_1E38EA7FC(v35, v38, v39);

      v40 = sub_1E4205CB4();
      v41 = sub_1E38BAE70();
      sub_1E38BA3C8(15, v40, v41);
      v43 = v42;
      v45 = v44;

      if (v45)
      {

        v88 = v43;
        v89 = v45;
LABEL_25:
        v48 = *(_s5ClockVMa(0) + 32);
        v49 = v87;
        v50 = sub_1E4205294();
        v51 = v85;
        sub_1E4205514();

        v52 = *(v86 + 48);
        v53 = sub_1E4205BF4();
        v54 = *(v53 - 8);
        (*(v54 + 16))(v3, v49 + v48, v53);
        sub_1E3E02410(v51, &v3[v52]);
        if ((*(v54 + 88))(v3, v53) != *MEMORY[0x1E69D3D78])
        {
          goto LABEL_27;
        }

        v55 = sub_1E4205784();
        if (__swift_getEnumTagSinglePayload(&v3[v52], 1, v55) == 1)
        {
          goto LABEL_27;
        }

        v57 = v82;
        sub_1E3E02480(&v3[v52], v82);
        OUTLINED_FUNCTION_1_2();
        v59 = v58;
        v61 = (*(v60 + 88))(v57, v55);
        if (v61 == *MEMORY[0x1E69D3BD0])
        {
          if ((*(v87 + 32) & 1) != 0 || (v62 = *(v87 + 24), v62 < 1))
          {
            sub_1E325F6F0(&v3[v52], &qword_1ECF2BD98, &qword_1E42E3AB0);
            (*(v54 + 8))(v3, v53);
            return v88;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
          v63 = swift_initStackObject();
          OUTLINED_FUNCTION_0_255(v63, v83)[3].n128_u8[8] = 20;
          v90 = v62;
          v64 = sub_1E4207944();
          v63[4].n128_u64[0] = v64;
          v63[4].n128_u64[1] = v65;
          sub_1E38EA7FC(v64, v65, v66);
          v67 = sub_1E4205CB4();
          v68 = sub_1E38BAE70();
          v69 = 16;
        }

        else
        {
          if (v61 != *MEMORY[0x1E69D3BF0])
          {
            (*(v59 + 8))(v57, v55);
LABEL_27:
            sub_1E325F6F0(v3, &qword_1ECF393B8, &qword_1E42D4520);
            return v88;
          }

          v70 = *(v87 + 24);
          v71 = *(v87 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
          if ((v71 & 1) != 0 || v70 < 1)
          {
            v76 = swift_initStackObject();
            v77 = OUTLINED_FUNCTION_0_255(v76, xmmword_1E4297BE0);
            sub_1E38EA7FC(v77, v78, v79);
            v67 = sub_1E4205CB4();
            v68 = sub_1E38BAE70();
            v69 = 17;
          }

          else
          {
            v72 = swift_initStackObject();
            OUTLINED_FUNCTION_0_255(v72, v83)[3].n128_u8[8] = 20;
            v90 = v70;
            v73 = sub_1E4207944();
            v72[4].n128_u64[0] = v73;
            v72[4].n128_u64[1] = v74;
            sub_1E38EA7FC(v73, v74, v75);
            v67 = sub_1E4205CB4();
            v68 = sub_1E38BAE70();
            v69 = 18;
          }
        }

        sub_1E38BA3C8(v69, v67, v68);
        v56 = v80;

        sub_1E325F6F0(&v3[v52], &qword_1ECF2BD98, &qword_1E42E3AB0);
        (*(v54 + 8))(v3, v53);
        return v56;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (*(v25 + 2))
  {
    v47 = *(v25 + 5);
    v88 = *(v25 + 4);
    v89 = v47;

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E02410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E02480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E024F0()
{
  v1 = sub_1E4205BF4();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488, &unk_1E42A0630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  sub_1E4205294();
  v11 = _s5ClockVMa(0);
  (*(v3 + 16))(v7, v0 + *(v11 + 32), v1);
  sub_1E385BAA0();
  v12 = type metadata accessor for SportsPlayPeriod(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF2B488, &unk_1E42A0630);
    return 0;
  }

  else
  {
    sub_1E385CD18();
    v13 = v14;
    sub_1E383B454(v10);
  }

  return v13;
}

uint64_t sub_1E3E02680(uint64_t a1)
{
  v2 = sub_1E4205BF4();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, a1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E69D3D88])
  {
    v10 = sub_1E38BA38C();
    v11 = 26;
  }

  else if (v9 == *MEMORY[0x1E69D3D70])
  {
    v10 = sub_1E38BA38C();
    v11 = 27;
  }

  else
  {
    if (v9 != *MEMORY[0x1E69D3D78])
    {
      (*(v4 + 8))(v8, v2);
      return 0;
    }

    v10 = sub_1E38BA38C();
    v11 = 28;
  }

  v12 = sub_1E38BA390(v11, v10);

  return v12;
}

uint64_t sub_1E3E02810(uint64_t a1, char a2)
{
  v4 = sub_1E3E02680(a1);
  if (v3)
  {
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = 10;
    *(inited + 40) = v4;
    *(inited + 48) = v5;
    sub_1E38EA7FC(inited, v7, v8);
    v9 = sub_1E4205CB4();
    v10 = sub_1E38BAE70();
    sub_1E38BA3C8(a2, v9, v10);
    v4 = v11;
  }

  return v4;
}

void sub_1E3E02918(uint64_t a1)
{
  sub_1E42052C4();
  if (v1 <= 0x3F)
  {
    sub_1E3E029C4();
    if (v2 <= 0x3F)
    {
      sub_1E4205BF4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3E029C4()
{
  if (!qword_1EE23B418)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B418);
    }
  }
}

void sub_1E3E02A14(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0(&v1[v5], v7);
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

id sub_1E3E02AA8(int64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView], v8);
  v5 = *&v2[v4];
  if (v5)
  {
    v6 = v5;
    sub_1E3B8C6DC(a1);
  }

  return [v2 vui_setNeedsLayout];
}

uint64_t sub_1E3E02B74(uint64_t a1, uint64_t a2)
{
  v12[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393C8, &unk_1E42D4530);
  v4 = sub_1E4148C68(sub_1E3E02C94, v3, v12);
  v5 = v12[0];
  *(v5 + OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout) = (*(*a1 + 392))(v4);

  type metadata accessor for SeasonPickerButton();
  v6 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  OUTLINED_FUNCTION_5_0(v5 + OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView, v12);
  v7 = *(v5 + v6);
  v8 = v7;
  sub_1E3B8BEE0(a1, v7);
  v10 = v9;

  sub_1E3E02A14(v10);
  return v5;
}

id sub_1E3E02C94@<X0>(void *a2@<X8>)
{
  type metadata accessor for EpisodeSectionHeaderView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

double sub_1E3E02CD8(char a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout];
  if (!v6 || (v7 = *(*v6 + 176), v8 = , v7(v21, v8), v9 = v21[0], , (v22 & 1) != 0))
  {
    v9 = *MEMORY[0x1E69DDCE0];
  }

  v10 = OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView], &v20);
  v11 = *&v3[v10];
  if (v11)
  {
    v12 = v11;
    [v12 vui:a2 sizeThatFits:0.0];
    v14 = v13;
    v16 = v15;
    v23.origin.x = 0.0;
    v23.origin.y = v9;
    v23.size.width = v14;
    v23.size.height = v16;
    CGRectGetMaxY(v23);

    if (a1)
    {
      return a2;
    }
  }

  else if (a1)
  {
    return a2;
  }

  [v3 vuiIsRTL];
  v17 = *&v3[v10];
  if (v17)
  {
    v18 = v17;
    [v3 bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v18 setFrame_];
  }

  return a2;
}

double sub_1E3E02EEC()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3E02CD8(0, v1);
}

id sub_1E3E02FDC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3E03068(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_buttonView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI24EpisodeSectionHeaderView_viewLayout] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1E3E03180()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v1;
  v52 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_13_139();
  v50 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v49 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  sub_1E4202624();
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  OUTLINED_FUNCTION_8_154();
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v54 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12_127(v30, v49);
  if (v7)
  {
    sub_1E4202EA4();
    v31 = sub_1E3806164();
    v55 = v3;
    v56 = v31;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v32 = v3;
    v33 = v9;
    v34 = *(v19 + 16);
    v34(v26, v23, v17);
    v52 = v27;
    v35 = *(v19 + 8);
    v35(v23, v17);
    v34(v23, v26, v17);
    v9 = v33;
    v3 = v32;
    v36 = v53;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8D98(v37, v38);
    v35(v23, v17);
    v35(v26, v17);
    v27 = v52;
  }

  else
  {
    v39 = v50;
    v40 = *(v50 + 16);
    v40(v16, v52, v5);
    v41 = v49;
    v40(v49, v16, v5);
    v42 = sub_1E3806164();
    v61 = v3;
    v62 = v42;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v36 = v53;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8E90(v43, v44, v45);
    v46 = *(v39 + 8);
    v46(v41, v5);
    v46(v16, v5);
  }

  v47 = sub_1E3806164();
  v59 = v3;
  v60 = v47;
  OUTLINED_FUNCTION_4_1();
  v57 = swift_getWitnessTable();
  v58 = v3;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v48 = v54;
  (*(v54 + 16))(v9, v36, v27);
  (*(v48 + 8))(v36, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E03528()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v1;
  v52 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v53 = v8;
  OUTLINED_FUNCTION_13_139();
  v50 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  sub_1E4202624();
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  OUTLINED_FUNCTION_8_154();
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v55 = v28;
  OUTLINED_FUNCTION_5_7();
  v33 = MEMORY[0x1EEE9AC00](v29);
  v54 = &v50 - v34;
  if (v7)
  {
    v58 = WitnessTable;
    v59 = v7;
    sub_1E32822E0(v30, v31, v32);
    sub_1E4203114();
    v35 = sub_1E3806164();
    v56 = v3;
    v57 = v35;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v36 = *(v19 + 16);
    v36(v26, v23, v17);
    v52 = v27;
    v37 = *(v19 + 8);
    v37(v23, v17);
    v36(v23, v26, v17);
    v38 = v54;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8D98(v39, v40);
    v37(v23, v17);
    v37(v26, v17);
    v27 = v52;
  }

  else
  {
    v41 = v50;
    v42 = *(v50 + 16);
    v42(v16, v52, v5, v33);
    (v42)(v13, v16, v5);
    v43 = sub_1E3806164();
    v64 = v3;
    v65 = v43;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v38 = v54;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8E90(v44, v45, v46);
    v47 = *(v41 + 8);
    v47(v13, v5);
    v47(v16, v5);
  }

  v48 = sub_1E3806164();
  v62 = v3;
  v63 = v48;
  OUTLINED_FUNCTION_4_1();
  v60 = swift_getWitnessTable();
  v61 = v3;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v49 = v55;
  (*(v55 + 16))(v53, v38, v27);
  (*(v49 + 8))(v38, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E038E0()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v33 = v7;
  v34 = v8;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for VoiceOverTextAccessibility(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v32 - v25;
  sub_1E3E03B24(v10, v16 + *(v13 + 20));
  v27 = v34;
  *v16 = v33;
  v16[1] = v12;
  v28 = v16 + *(v13 + 24);
  *v28 = v27;
  v28[8] = v35 & 1;

  MEMORY[0x1E690DE70](v16, v5, v13, v3);
  sub_1E3E03B94(v16);
  v29 = sub_1E3E03BF0();
  v38 = v3;
  v39 = v29;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v30 = *(v19 + 16);
  v30(v26, v23, v17);
  v31 = *(v19 + 8);
  v31(v23, v17);
  v30(v37, v26, v17);
  v31(v26, v17);
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for VoiceOverTextAccessibility(uint64_t a1)
{
  result = qword_1EE294E38;
  if (!qword_1EE294E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E03B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E03B94(uint64_t a1)
{
  v2 = type metadata accessor for VoiceOverTextAccessibility(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3E03BF0()
{
  result = qword_1EE294E50[0];
  if (!qword_1EE294E50[0])
  {
    type metadata accessor for VoiceOverTextAccessibility(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE294E50);
  }

  return result;
}

void sub_1E3E03C70(uint64_t a1)
{
  sub_1E3B1C340(319, &qword_1EE23B5F8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1E3E03D2C(319);
    if (v2 <= 0x3F)
    {
      sub_1E3B1C340(319, &qword_1EE23B420, MEMORY[0x1E69E63B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3E03D2C(uint64_t a1)
{
  if (!qword_1ECF393D8)
  {
    sub_1E4202494();
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF393D8);
    }
  }
}

void sub_1E3E03DA0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E0, &qword_1E42D45D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v51 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E8, &qword_1E42D45D8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v51 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393F0, &qword_1E42D45E0);
  OUTLINED_FUNCTION_0_10();
  v63 = v16;
  v64 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_127(v18, v51[0]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393F8, &qword_1E42D45E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  if (v0[1])
  {
    v60 = v19;
    v53 = *v0;
    MEMORY[0x1EEE9AC00](v21);
    v59 = v6;
    v51[-2] = v0;
    v56 = v22;
    v52 = v23;

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400, &qword_1E42D45F0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39418, &qword_1E42D4600);
    v57 = v9;
    v26 = v25;
    v27 = v11;
    v28 = sub_1E3E049B0();
    v29 = sub_1E3E04A14();
    v58 = v5;
    v30 = v29;
    v54 = v28;
    v55 = v24;
    v31 = sub_1E3E35D1C(v26, v14);
    v51[1] = v51;
    MEMORY[0x1EEE9AC00](v31);
    v51[-2] = v1;
    v32 = v14;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39410, &qword_1E42D45F8);
    v65 = v24;
    v66 = v26;
    v67 = v28;
    v68 = v30;
    OUTLINED_FUNCTION_3_190();
    v51[2] = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = sub_1E3E04AE0();
    v37 = v61;
    v38 = v62;
    v39 = v33;
    sub_1E3E35D1C(v33, v61);
    v40 = (*(v27 + 8))(v32, v38);
    v65 = v53;
    v66 = v52;
    sub_1E32822E0(v40, v41, v42);
    v43 = sub_1E4202C44();
    v45 = v44;
    LOBYTE(v28) = v46;
    v65 = v38;
    v66 = v39;
    v67 = OpaqueTypeConformance2;
    v68 = v36;
    swift_getOpaqueTypeConformance2();
    v47 = v56;
    v48 = v64;
    sub_1E4202EC4();
    sub_1E37434B8(v43, v45, v28 & 1);

    (*(v63 + 8))(v37, v48);
    sub_1E37E93E8(v47, v57, &qword_1ECF393F8, &qword_1E42D45E8);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04860();
    sub_1E4201F44();
    sub_1E325F6F0(v47, &qword_1ECF393F8, &qword_1E42D45E8);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400, &qword_1E42D45F0);
    OUTLINED_FUNCTION_2();
    (*(v50 + 16))(v9, v3, v49);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04860();
    sub_1E3E049B0();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E04278()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v1;
  v30 = v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39450, &qword_1E42D4618);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39458, &qword_1E42D4620);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for VoiceOverTextAccessibility(0);
  sub_1E3E03B24(v0 + *(v21 + 20), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E3E04CFC(v14);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400, &qword_1E42D45F0);
    OUTLINED_FUNCTION_2();
    (*(v23 + 16))(v5, v28, v22);
    swift_storeEnumTagMultiPayload();
    v24 = sub_1E3E049B0();
    v31 = v22;
    v32 = v24;
    OUTLINED_FUNCTION_7_177();
    OUTLINED_FUNCTION_11_140();
    sub_1E4201F44();
  }

  else
  {
    (*(v17 + 32))(v20, v14, v15);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39400, &qword_1E42D45F0);
    v26 = sub_1E3E049B0();
    sub_1E4203224();
    (*(v8 + 16))(v5, v11, v6);
    swift_storeEnumTagMultiPayload();
    v31 = v25;
    v32 = v26;
    OUTLINED_FUNCTION_7_177();
    OUTLINED_FUNCTION_11_140();
    sub_1E4201F44();
    (*(v8 + 8))(v11, v6);
    (*(v17 + 8))(v20, v15);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E045A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39448, &qword_1E42D4610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39440, &qword_1E42D4608);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  if (*(a2 + *(type metadata accessor for VoiceOverTextAccessibility(0) + 24) + 8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E8, &qword_1E42D45D8);
    OUTLINED_FUNCTION_2();
    (*(v11 + 16))(v6, a1, v10);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04BDC();
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400, &qword_1E42D45F0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418, &qword_1E42D4600);
    v14 = sub_1E3E049B0();
    v15 = sub_1E3E04A14();
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    OUTLINED_FUNCTION_3_190();
    swift_getOpaqueTypeConformance2();
    return sub_1E4201F44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF393E8, &qword_1E42D45D8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400, &qword_1E42D45F0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418, &qword_1E42D4600);
    v19 = sub_1E3E049B0();
    v20 = sub_1E3E04A14();
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    OUTLINED_FUNCTION_3_190();
    swift_getOpaqueTypeConformance2();
    sub_1E4203374();
    sub_1E37E93E8(v9, v6, &qword_1ECF39440, &qword_1E42D4608);
    swift_storeEnumTagMultiPayload();
    sub_1E3E04BDC();
    sub_1E4201F44();
    return sub_1E325F6F0(v9, &qword_1ECF39440, &qword_1E42D4608);
  }
}

unint64_t sub_1E3E04860()
{
  result = qword_1ECF39408;
  if (!qword_1ECF39408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF393F8, &qword_1E42D45E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF393E8, &qword_1E42D45D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39410, &qword_1E42D45F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400, &qword_1E42D45F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418, &qword_1E42D4600);
    sub_1E3E049B0();
    sub_1E3E04A14();
    swift_getOpaqueTypeConformance2();
    sub_1E3E04AE0();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39408);
  }

  return result;
}

unint64_t sub_1E3E049B0()
{
  result = qword_1ECF39420;
  if (!qword_1ECF39420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400, &qword_1E42D45F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39420);
  }

  return result;
}

unint64_t sub_1E3E04A14()
{
  result = qword_1ECF39428;
  if (!qword_1ECF39428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418, &qword_1E42D4600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400, &qword_1E42D45F0);
    sub_1E3E049B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39428);
  }

  return result;
}

unint64_t sub_1E3E04AE0()
{
  result = qword_1ECF39430;
  if (!qword_1ECF39430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39410, &qword_1E42D45F8);
    sub_1E3E04BDC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400, &qword_1E42D45F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418, &qword_1E42D4600);
    sub_1E3E049B0();
    sub_1E3E04A14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39430);
  }

  return result;
}

unint64_t sub_1E3E04BDC()
{
  result = qword_1ECF39438;
  if (!qword_1ECF39438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39440, &qword_1E42D4608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39400, &qword_1E42D45F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39418, &qword_1E42D4600);
    sub_1E3E049B0();
    sub_1E3E04A14();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39438);
  }

  return result;
}

uint64_t sub_1E3E04CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3E04D64()
{
  result = qword_1ECF39460;
  if (!qword_1ECF39460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39468, &qword_1E42D4628);
    sub_1E3E04860();
    sub_1E3E049B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39460);
  }

  return result;
}

uint64_t sub_1E3E04DF0()
{
  result = sub_1E3E04EE0();
  if (result)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v2 + 464))();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t sub_1E3E04E4C()
{
  result = sub_1E3E04EE0();
  if (result)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v2 + 488))();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t sub_1E3E04EA8()
{
  result = sub_1E3E04EE0();
  if (result)
  {
    sub_1E39BE4D0();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

uint64_t sub_1E3E04EE0()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  return swift_weakLoadStrong();
}

uint64_t sub_1E3E04F60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E04EE0();
  *a1 = result;
  return result;
}

double sub_1E3E04FB8(uint64_t a1)
{
  v2 = v1;
  if (swift_weakLoadStrong())
  {
    if (!a1)
    {

      goto LABEL_8;
    }

    type metadata accessor for ViewModel();
    sub_1E3E08944(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

    v4 = sub_1E4205E84();
  }

  else
  {
    v4 = a1 == 0;
  }

  if (v4)
  {
    swift_weakAssign();

    return result;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v2 + 392))(v7);

  return result;
}

unint64_t sub_1E3E05160()
{
  v1 = v0;
  if (*(v0 + 80))
  {
    v2 = *(v0 + 72);
  }

  else
  {
    sub_1E42074B4();

    if (swift_weakLoadStrong())
    {
    }

    MEMORY[0x1E69109E0]();

    v2 = 0xD00000000000001ALL;
    *(v1 + 72) = 0xD00000000000001ALL;
    *(v1 + 80) = 0x80000001E4284970;
  }

  return v2;
}

uint64_t sub_1E3E05254(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3E05294(a1);
  return v2;
}

uint64_t sub_1E3E05294(uint64_t a1)
{
  swift_weakInit();
  swift_weakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 2;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  sub_1E41FE924();
  swift_weakAssign();
  sub_1E3E05310();

  return v1;
}

void sub_1E3E05310()
{
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = *(v0 + 40);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    return;
  }

  if (!swift_weakLoadStrong())
  {
    aBlock = 0u;
    v37 = 0u;
    goto LABEL_11;
  }

  LOBYTE(v40) = 10;
  OUTLINED_FUNCTION_26_0();
  (*(v18 + 776))(&aBlock, &v40, &unk_1F5D5D528, &off_1F5D5C858);

  if (!*(&v37 + 1))
  {
LABEL_11:
    sub_1E325F7A8(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
    return;
  }

  if (swift_dynamicCast())
  {
    v19 = v40;
    sub_1E41FE5C4();
    sub_1E41FE574();
    v21 = v20;
    v23 = *(v12 + 8);
    v22 = v12 + 8;
    v23(v16, v10);
    v24 = v19 - v21;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v25(v9);

    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_100();
      v28 = OUTLINED_FUNCTION_10_11();
      *&aBlock = v28;
      *v22 = 136315650;
      v29 = sub_1E3E05160();
      sub_1E3270FC8(v29, v30, &aBlock);
      OUTLINED_FUNCTION_34_3();
      *(v22 + 4) = v1;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v19;
      *(v22 + 22) = 2048;
      *(v22 + 24) = v24;
      _os_log_impl(&dword_1E323F000, v26, v27, "%s registerGameEventUpdatingIfNeeded gameStartTime: %f, durationFromNow: %f", v22, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    (*(v5 + 8))(v9, v3);
    if (v24 <= 0.0)
    {
      sub_1E3E063FC();
    }

    else
    {
      v31 = objc_opt_self();
      v32 = swift_allocObject();
      swift_weakInit();
      v38 = sub_1E3E0898C;
      v39 = v32;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v37 = sub_1E377674C;
      *(&v37 + 1) = &block_descriptor_119;
      v33 = _Block_copy(&aBlock);

      v34 = [v31 scheduledTimerWithTimeInterval:0 repeats:v33 block:v24];
      _Block_release(v33);
      v35 = *(v2 + 64);
      *(v2 + 64) = v34;
    }
  }
}

void sub_1E3E056FC(uint64_t a1)
{
  v5 = v1;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *(v5 + 40);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    return;
  }

  sub_1E3294F34(a1, v65);
  if (!v65[3])
  {
    sub_1E325F7A8(v65, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    sub_1E41FE5C4();
    sub_1E41FE574();
    v20 = v21;
    (*(v14 + 8))(v18, v12);
    goto LABEL_8;
  }

  v20 = v65[16];
LABEL_8:
  Strong = swift_weakLoadStrong();
  v23 = sub_1E3E06254(Strong);

  v64 = v11;
  if (v23)
  {
    v24 = 0;
    v2 = *(v23 + 2);
    v3 = v23 + 40;
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!v2)
      {

        OUTLINED_FUNCTION_24_88();

        sub_1E3E07E64(v65);

        v33 = sub_1E3E063BC(v65[0]);

        goto LABEL_21;
      }

      if (!*(v23 + 2))
      {
        break;
      }

      OUTLINED_FUNCTION_26_89();
      if (v27 == v28 && v4 <= *&v20)
      {
        v29 = *(v26 - 24);

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_24_88();
        if ((v30 & 1) == 0)
        {
          OUTLINED_FUNCTION_19_114();
          OUTLINED_FUNCTION_23_84();
        }

        v7 = v25[2];
        v31 = v25[3];
        if (v7 >= v31 >> 1)
        {
          v25 = v65;
          sub_1E3E087E8((v31 > 1), v7 + 1, 1);
          OUTLINED_FUNCTION_23_84();
        }

        v25[2] = (v7 + 1);
        v32 = &v25[2 * v7];
        v32[4] = v29;
        *(v32 + 5) = v4;
        v11 = v64;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v33 = 0;
LABEL_21:
  sub_1E3E04FB8(v33);
  v34 = swift_weakLoadStrong();
  v35 = sub_1E3E06254(v34);

  if (v35)
  {
    v7 = 0;
    v3 = *(v35 + 2);
    v24 = v35 + 40;
    v36 = MEMORY[0x1E69E7CC0];
    while (v3)
    {
      if (!*(v35 + 2))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_26_89();
      if (v27 == v28 && v4 > *&v20)
      {
        v38 = *(v37 - 24);

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_24_88();
        if ((v39 & 1) == 0)
        {
          OUTLINED_FUNCTION_19_114();
          OUTLINED_FUNCTION_23_84();
        }

        v41 = v36[2];
        v40 = v36[3];
        v2 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          v36 = v65;
          sub_1E3E087E8((v40 > 1), v41 + 1, 1);
          OUTLINED_FUNCTION_23_84();
        }

        v36[2] = v2;
        v42 = &v36[2 * v41];
        v42[4] = v38;
        *(v42 + 5) = v4;
        v11 = v64;
      }
    }

    OUTLINED_FUNCTION_24_88();

    sub_1E3E07E64(v65);

    v43 = *(v65[0] + 2);
    OUTLINED_FUNCTION_28_72();
    if (v43)
    {
      v45 = *(v44 + 40);
    }

    else
    {
      v45 = 0.0;
    }

    if (v43 && (v47 = ceil(v45 - *&v20), v47 >= 0.0))
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = sub_1E4205F14();
      *(inited + 40) = v49;
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_1E4299720;
      *(v50 + 32) = 0x65756C6176;
      *(v50 + 40) = 0xE500000000000000;
      if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v47 <= -1.0)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v47 >= 1.84467441e19)
      {
LABEL_56:
        __break(1u);

        __break(1u);
        return;
      }

      v51 = MEMORY[0x1E69E6810];
      *(v50 + 48) = v47;
      *(v50 + 72) = v51;
      *(v50 + 80) = 0x646574616D696E61;
      *(v50 + 88) = 0xE800000000000000;
      *(v50 + 120) = MEMORY[0x1E69E6370];
      *(v50 + 96) = 1;
      v52 = sub_1E4205CB4();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *(inited + 48) = v52;
      v46 = sub_1E4205CB4();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_72();
  }

  *(v5 + 32) = v46;

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v53(v11);

  v54 = sub_1E41FFC94();
  v55 = sub_1E4206814();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_100();
    v65[0] = OUTLINED_FUNCTION_72_0();
    *v56 = 136315650;
    v57 = sub_1E3E05160();
    sub_1E3270FC8(v57, v58, v65);
    OUTLINED_FUNCTION_34_3();
    *(v56 + 4) = v2;
    *(v56 + 12) = 2048;
    if (sub_1E3E04EE0())
    {
      v59 = sub_1E3E05EA4();
    }

    else
    {
      v59 = 0xBFF0000000000000;
    }

    *(v56 + 14) = v59;
    *(v56 + 22) = 2080;
    if (!*(v5 + 32))
    {
      sub_1E4205CB4();
    }

    v60 = sub_1E4205C74();
    v62 = v61;

    v63 = sub_1E3270FC8(v60, v62, v65);

    *(v56 + 24) = v63;
    _os_log_impl(&dword_1E323F000, v54, v55, "%s resolveChildren: timestamp = %f, eventMonitorDescriptors = %s", v56, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 1))(v64, v7);
  }

  else
  {

    (*(v3 + 1))(v11, v7);
  }
}

unint64_t sub_1E3E05EA4()
{
  LOBYTE(v2) = 53;
  (*(*v0 + 776))(v3, &v2, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v3[3])
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1E325F7A8(v3, &unk_1ECF296E0, &unk_1E4298030);
  }

  return 0xBFF0000000000000;
}

uint64_t sub_1E3E05F60(uint64_t a1)
{
  OUTLINED_FUNCTION_1_227();
  sub_1E3E08944(v1, v2, &unk_1E42D465C);
  return sub_1E41FE8F4();
}

uint64_t sub_1E3E05FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_227();
  sub_1E3E08944(v4, v5, &unk_1E42D465C);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3E06080()
{
  swift_weakDestroy();
  swift_weakDestroy();

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC8VideosUI24TimeBasedVariantResolver___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3E06104()
{
  sub_1E3E06080();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1E3E06254(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 440))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1E32AE9B0(v2);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1E3E087E8(0, v4 & ~(v4 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v14;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](v7, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = sub_1E3E05EA4();
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E3E087E8((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E063BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

void sub_1E3E063FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (!swift_weakLoadStrong())
  {
    v23 = 0u;
    v24 = 0u;
    goto LABEL_7;
  }

  LOBYTE(v21) = 4;
  OUTLINED_FUNCTION_26_0();
  (*(v8 + 776))(&v23, &v21, &unk_1F5D5D0A8, &off_1F5D5C758);

  if (!*(&v24 + 1))
  {
LABEL_7:
    sub_1E325F7A8(&v23, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_14;
    }

    v10 = *(Strong + 16);
    v9 = *(Strong + 24);

    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v10 = v21;
  v9 = v22;
  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_10:
  v12 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v12, v1);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_49_0();
    *&v23 = OUTLINED_FUNCTION_72_0();
    *v15 = 136315394;
    v16 = sub_1E3E05160();
    v20 = v1;
    v18 = v3;
    v19 = sub_1E3270FC8(v16, v17, &v23);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1E3270FC8(v10, v9, &v23);
    _os_log_impl(&dword_1E323F000, v13, v14, "%s registerGameEventUpdating canonicalId: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v18 + 8))(v7, v20);
  }

  else
  {

    (*(v3 + 8))(v7, v1);
  }

  type metadata accessor for Tier1LiveUpdateProvider();
  j__OUTLINED_FUNCTION_18();
  swift_unknownObjectRetain();
  *(v0 + 48) = sub_1E3C05A88();
  *(v0 + 56) = &off_1F5D780A8;

  swift_unknownObjectRelease();
  sub_1E3C07F70();

LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E06758()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v103 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v104 = v21;
  v105 = v22;
  v106 = v23;
  (v22)(v20);

  v24 = sub_1E41FFC94();
  v25 = sub_1E4206814();

  v26 = os_log_type_enabled(v24, v25);
  v99 = v9;
  v100 = v12;
  v102 = v15;
  if (v26)
  {
    v27 = v4;
    v28 = v2;
    v29 = OUTLINED_FUNCTION_6_21();
    v110[0] = OUTLINED_FUNCTION_100();
    *v29 = 136315138;
    v30 = sub_1E3E05160();
    OUTLINED_FUNCTION_14_64(v30, v31);
    OUTLINED_FUNCTION_34_3();
    *(v29 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v24, v25, "%s didUpdatePostgameVariant", v29, 0xCu);
    OUTLINED_FUNCTION_3_191();
    v2 = v28;
    v4 = v27;
    OUTLINED_FUNCTION_6_0();

    v32 = v27;
  }

  else
  {

    v32 = v4;
  }

  v33 = *(v32 + 1);
  (v33)(v20, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v39 = v103;
    v105(v103, v104, v2);

    v40 = sub_1E41FFC94();
    v41 = sub_1E4206814();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_6_21();
      v110[0] = OUTLINED_FUNCTION_10_11();
      v42 = OUTLINED_FUNCTION_31_62(4.8149e-34);
      v44 = OUTLINED_FUNCTION_14_64(v42, v43);

      *(v33 + 4) = v44;
      OUTLINED_FUNCTION_18_101(&dword_1E323F000, v45, v41, "%s didUpdatePostgameVariant: viewModel is nil, ignore");
      OUTLINED_FUNCTION_3_191();
      OUTLINED_FUNCTION_55();

      v46 = OUTLINED_FUNCTION_99_0();
      (v33)(v46);
      goto LABEL_37;
    }

    v69 = v39;
LABEL_33:
    (v33)(v69, v2);
    goto LABEL_37;
  }

  v35 = Strong;
  OUTLINED_FUNCTION_26_0();
  v37 = (*(v36 + 624))();
  v103 = v35;
  while (1)
  {
    if (!v37)
    {
      v47 = v102;
      OUTLINED_FUNCTION_5_179();
      v48();

      v49 = sub_1E41FFC94();
      v50 = sub_1E4206814();

      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_6_21();
        v98 = v33;
        v101 = OUTLINED_FUNCTION_10_11();
        v110[0] = v101;
        v51 = OUTLINED_FUNCTION_31_62(4.8149e-34);
        v53 = v2;
        v54 = OUTLINED_FUNCTION_14_64(v51, v52);

        *(v33 + 4) = v54;
        v2 = v53;
        OUTLINED_FUNCTION_18_101(&dword_1E323F000, v55, v50, "%s didUpdateVariant: unable to find collectionViewModel");
        OUTLINED_FUNCTION_3_191();
        v33 = v98;
        OUTLINED_FUNCTION_6_0();

        v56 = v102;
      }

      else
      {

        v56 = v47;
      }

      (v33)(v56, v2);
      v72 = v103;
      goto LABEL_23;
    }

    type metadata accessor for CollectionViewModel();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      break;
    }

    (*(*v37 + 624))();
    OUTLINED_FUNCTION_12_1();

    v37 = v35;
  }

  v57 = v38;
  v102 = v4;
  v58 = v101;
  OUTLINED_FUNCTION_5_179();
  v59();

  v60 = sub_1E41FFC94();
  v61 = sub_1E4206814();

  if (os_log_type_enabled(v60, v61))
  {
    v97 = v2;
    v98 = v33;
    v62 = OUTLINED_FUNCTION_49_0();
    v96 = OUTLINED_FUNCTION_72_0();
    v110[0] = v96;
    v63 = OUTLINED_FUNCTION_31_62(4.8151e-34);
    v65 = v64;
    v66 = sub_1E3270FC8(v63, v64, v110);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    if (v57[3])
    {
      v67 = v57[2];
      v68 = v57[3];
    }

    else
    {
      v67 = 0;
      v68 = 0xE000000000000000;
    }

    sub_1E3270FC8(v67, v68, v110);
    OUTLINED_FUNCTION_12_1();

    *(v62 + 14) = v65;
    _os_log_impl(&dword_1E323F000, v60, v61, "%s didUpdatePostgameVariant notify collectionViewModel: %s", v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v73 = v101;
    v2 = v97;
    v33 = v98;
  }

  else
  {

    v73 = v58;
  }

  (v33)(v73, v2);
  v72 = v103;
  (*(*v57 + 1480))(v103);

LABEL_23:
  if (TVAppFeature.isEnabled.getter(10, v70, v71))
  {

    goto LABEL_37;
  }

  v109 = v72;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39470, &qword_1E42D4770);
  if (!swift_dynamicCast())
  {
    v108 = 0;
    memset(v107, 0, sizeof(v107));
    sub_1E325F7A8(v107, &qword_1ECF39478, &qword_1E42D4778);
    v84 = v99;
    OUTLINED_FUNCTION_5_179();
    v85();

    v86 = sub_1E41FFC94();
    v87 = sub_1E42067F4();

    if (os_log_type_enabled(v86, v87))
    {
      OUTLINED_FUNCTION_6_21();
      v110[0] = OUTLINED_FUNCTION_10_11();
      v88 = OUTLINED_FUNCTION_31_62(4.8149e-34);
      v90 = OUTLINED_FUNCTION_14_64(v88, v89);

      *(v33 + 4) = v90;
      OUTLINED_FUNCTION_18_101(&dword_1E323F000, v91, v87, "%s didUpdatePostgameVariant listener is missing");
      OUTLINED_FUNCTION_3_191();
      OUTLINED_FUNCTION_55();

      v92 = OUTLINED_FUNCTION_99_0();
      (v33)(v92);
      goto LABEL_37;
    }

    v69 = v84;
    goto LABEL_33;
  }

  v98 = v33;
  sub_1E3251BE8(v107, v110);
  v74 = v100;
  OUTLINED_FUNCTION_5_179();
  v75();

  v76 = sub_1E41FFC94();
  v77 = sub_1E4206814();

  if (os_log_type_enabled(v76, v77))
  {
    v97 = v2;
    v78 = OUTLINED_FUNCTION_49_0();
    *&v107[0] = OUTLINED_FUNCTION_72_0();
    *v78 = 136315394;
    v79 = sub_1E3E05160();
    v81 = sub_1E3270FC8(v79, v80, v107);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    if (*(v72 + 24))
    {
      v82 = *(v72 + 16);
      v83 = *(v72 + 24);
    }

    else
    {
      v82 = 0;
      v83 = 0xE000000000000000;
    }

    sub_1E3270FC8(v82, v83, v107);
    OUTLINED_FUNCTION_12_1();

    *(v78 + 14) = v82;
    _os_log_impl(&dword_1E323F000, v76, v77, "%s didUpdatePostgameVariant notify listener: %s", v78, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (v98)(v100, v97);
  }

  else
  {

    (v98)(v74, v2);
  }

  v93 = v111;
  v94 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  (*(v94 + 8))(v1, v93, v94);

  __swift_destroy_boxed_opaque_existential_1(v110);
LABEL_37:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E070C4()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (!swift_weakLoadStrong())
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_7;
  }

  LOBYTE(v21) = 12;
  OUTLINED_FUNCTION_26_0();
  (*(v7 + 776))(&v22, &v21, &unk_1F5D5D528, &off_1F5D5C858);

  if (!*(&v23 + 1))
  {
LABEL_7:
    sub_1E325F7A8(&v22, &unk_1ECF296E0, &unk_1E4298030);
    v8 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v8 = v21;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  v9 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v9, v0);

  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();

  if (os_log_type_enabled(v10, v11))
  {
    v20 = v0;
    v12 = OUTLINED_FUNCTION_49_0();
    *&v22 = OUTLINED_FUNCTION_72_0();
    *v12 = 136315394;
    v13 = sub_1E3E05160();
    v15 = sub_1E3270FC8(v13, v14, &v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (!v8)
    {
      sub_1E4205CB4();
    }

    v16 = sub_1E4205C74();
    v18 = v17;

    v19 = sub_1E3270FC8(v16, v18, &v22);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1E323F000, v10, v11, "%s gameScoreContext = %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v2 + 8))(v6, v20);
  }

  else
  {

    (*(v2 + 8))(v6, v0);
  }

  if (!v8)
  {
    v8 = sub_1E4205CB4();
  }

  sub_1E3744600(v8);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E07420()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v1;
  v35 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v33 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E324FBDC();
  (*(v11 + 16))(v15, v16, v9);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  v19 = os_log_type_enabled(v17, v18);
  v36 = v0;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_100();
    v32 = v9;
    v37 = v21;
    *v20 = 136315138;
    v22 = sub_1E3E05160();
    v24 = sub_1E3270FC8(v22, v23, &v37);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1E323F000, v17, v18, "%s update sportingEvent", v20, 0xCu);
    OUTLINED_FUNCTION_3_191();
    OUTLINED_FUNCTION_6_0();

    (*(v11 + 8))(v15, v32);
  }

  else
  {

    (*(v11 + 8))(v15, v9);
  }

  sub_1E4205044();
  v25 = *(v3 + 104);
  v26 = v33;
  v27 = v35;
  v25(v33, *MEMORY[0x1E69D3B78], v35);
  v28 = sub_1E3823168();
  v29 = *(v3 + 8);
  v30 = OUTLINED_FUNCTION_99_0();
  v29(v30);
  (v29)(v8, v27);
  if ((v28 & 1) == 0)
  {
    sub_1E4205044();
    v25(v26, *MEMORY[0x1E69D3B88], v27);
    sub_1E3823168();
    v31 = OUTLINED_FUNCTION_99_0();
    v29(v31);
    (v29)(v8, v27);
  }

  sub_1E3E07734();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E07734()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(v3 + 40);
  if (v13 != 2 && (v13 & 1) != 0 || (v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v14(v12);

  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_10_11();
    v36[0] = v17;
    *v1 = 136315138;
    v18 = sub_1E3E05160();
    OUTLINED_FUNCTION_14_64(v18, v19);
    OUTLINED_FUNCTION_34_3();
    *(v1 + 4) = v2;
    _os_log_impl(&dword_1E323F000, v15, v16, "%s game is final", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();
  }

  (*(v8 + 8))(v12, v6);
  v20 = *(v3 + 40);
  if (v20 != 2 && (v20 & 1) != 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  *(v3 + 40) = 1;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v22 = (*(*Strong + 440))(Strong)) == 0)
  {
    v26 = 0;
LABEL_23:

    sub_1E3E04FB8(v26);
    *(v3 + 32) = 0;

    if (*(v3 + 48))
    {
      v33 = *(v3 + 56);
      ObjectType = swift_getObjectType();
      v35 = *(v33 + 16);
      swift_unknownObjectRetain();
      v35(0, ObjectType, v33);
      swift_unknownObjectRelease();
    }

    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    swift_unknownObjectRelease();
    sub_1E3E06758();
    goto LABEL_26;
  }

  v23 = v22;
  v24 = sub_1E32AE9B0(v22);
  for (i = 0; ; ++i)
  {
    if (v24 == i)
    {

      v26 = 0;
      goto LABEL_23;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](i, v23);
      v26 = v27;
    }

    else
    {
      if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v26 = *(v23 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v36[3] = &unk_1F5D5D528;
    v36[4] = &off_1F5D5C858;
    LOBYTE(v36[0]) = 11;
    sub_1E3E07E10(v27, v28, v29);
    sub_1E39C2B80();
    v30 = __swift_destroy_boxed_opaque_existential_1(v36);
    if (v37 != 3)
    {
      LOBYTE(v36[0]) = v37;
      sub_1E3858078(v30, v31, v32);
      if (sub_1E4205E84())
      {

        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1E3E07ABC()
{
  OUTLINED_FUNCTION_31_1();
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
    v17 = v1;
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = OUTLINED_FUNCTION_100();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_1E3E05160();
    v16 = sub_1E3270FC8(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v10, v11, "%s update scoreboardViewModel", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    v1 = v17;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  [v1 hasEventEnded];
  sub_1E3E07734();
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for TimeBasedVariantResolver(uint64_t a1)
{
  result = qword_1EE296D40;
  if (!qword_1EE296D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E07D00(uint64_t a1)
{
  OUTLINED_FUNCTION_1_227();
  result = sub_1E3E08944(v2, v3, &unk_1E42D465C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E3E07D50(uint64_t a1)
{
  result = sub_1E41FE934();
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

unint64_t sub_1E3E07E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF39480;
  if (!qword_1ECF39480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39480);
  }

  return result;
}

uint64_t sub_1E3E07E64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3E08910(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E3E07ED0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3E07ED0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3E08034(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E3E07FC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3E07FC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 > *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3E08034(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v81 = result;
  v85 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v10 <= v13) ^ (v18 > v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 <= v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (v31 > *(v33 - 1))
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v82 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v37 = *(v8 + 16);
      v36 = *(v8 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        result = sub_1E37FFF70((v36 > 1), v37 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v38;
      v39 = v8 + 32;
      v40 = (v8 + 32 + 16 * v37);
      *v40 = v7;
      v40[1] = v9;
      v83 = *v81;
      if (!*v81)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = (v39 + 16 * (v38 - 1));
          v43 = (v8 + 16 * v38);
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = *(v8 + 32);
            v45 = *(v8 + 40);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = (v39 + 16 * (v41 - 1));
          v74 = *v73;
          v75 = (v39 + 16 * v41);
          v76 = v75[1];
          result = sub_1E3E08644((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v83);
          if (v5)
          {
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = *(v8 + 16);
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          result = memmove((v39 + 16 * v41), v75 + 2, 16 * (v78 - 1 - v41));
          *(v77 + 16) = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = v39 + 16 * v38;
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*v81)
  {
    goto LABEL_115;
  }

  sub_1E3E08518(&v85, *v81, a3);
}

uint64_t sub_1E3E08518(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3E08644((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3E08644(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[2 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (v6[1] <= v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 2;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 2;
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 2;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[2 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[2 * v9];
LABEL_25:
  for (v5 -= 2; v11 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v11 - 1) <= *(v6 - 1))
    {
      v17 = v6 - 2;
      v14 = v5 + 2 == v6;
      v6 -= 2;
      if (!v14)
      {
        *v5 = *v17;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 2)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 2;
  }

LABEL_38:
  v18 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

char *sub_1E3E087E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E08808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3E08808(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39488, &qword_1E42D4780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3E08944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3E0898C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3E063FC();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 64);
    *(Strong + 64) = 0;
  }
}

uint64_t sub_1E3E08A64()
{
  v0[152] = 0;
  OUTLINED_FUNCTION_4_197();
  v0[154] = v1;
  v0[153] = v2;
  v3 = sub_1E3C2F9A0();

  sub_1E3E08AAC(v4);

  return v3;
}

double sub_1E3E08AAC(__n128 a1)
{
  v2 = v1;
  a1.n128_u64[0] = 16.0;
  v138 = j__OUTLINED_FUNCTION_7_78(a1);
  v139 = v3;
  v140 = v4;
  v141 = v5;
  v142 = 0;
  sub_1E3C2CC78();
  v6 = 0x4010000000000000;
  sub_1E3C2EBC8();
  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1696))(14);

  v8 = *(v1 + 154);
  if (v8 == 1)
  {
    v136[0] = 0x403A000000000000;
    v6 = 0x4033000000000000;
  }

  else
  {
    v136[0] = 0x4010000000000000;
  }

  v136[1] = 0x4030000000000000;
  v136[2] = v6;
  v136[3] = 0x4030000000000000;
  v137 = 0;
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 160);

  v10(v136);

  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 2056);

  v12(3, 0);

  OUTLINED_FUNCTION_36();
  v14 = *(v13 + 2080);

  v14(3, 0);

  OUTLINED_FUNCTION_36();
  v16 = *(v15 + 2104);

  v16(1, 0);

  OUTLINED_FUNCTION_36();
  v18 = *(v17 + 2128);

  v18(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_36();
  v20 = *(v19 + 1720);

  v20(7);

  v21 = *(v1 + 112);

  v22 = *sub_1E3E5FD88();
  v23 = *(*v21 + 680);
  v24 = v22;
  v23(v22);

  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  (*(v25 + 1696))(14);

  if (v8)
  {
    v134[0] = 0x4036000000000000;
    v26 = 0x4033000000000000;
  }

  else
  {
    v26 = 0x4010000000000000;
    v134[0] = 0x4010000000000000;
  }

  v134[1] = 0x4030000000000000;
  v134[2] = v26;
  v134[3] = 0x4030000000000000;
  v135 = 0;
  OUTLINED_FUNCTION_8();
  v28 = *(v27 + 160);

  v28(v134);

  OUTLINED_FUNCTION_36();
  v30 = *(v29 + 2056);

  v30(2, 0);

  OUTLINED_FUNCTION_36();
  v32 = *(v31 + 2080);

  v32(2, 0);

  OUTLINED_FUNCTION_36();
  v34 = *(v33 + 2104);

  v34(1, 0);

  OUTLINED_FUNCTION_36();
  v36 = *(v35 + 2128);

  v36(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_36();
  v38 = *(v37 + 1720);

  v38(7);

  v39 = v2[15];

  v40 = sub_1E3E5FDEC();
  v41 = *v40;
  v42 = *(*v39 + 680);
  v43 = *v40;
  v42(v41);

  sub_1E374E9C4();
  OUTLINED_FUNCTION_2_1();
  (*(v44 + 1808))(3);

  OUTLINED_FUNCTION_12_13();
  v45 = *sub_1E3E5F90C();
  v46 = *(*v2 + 1976);
  v47 = v45;
  v46(v45);

  OUTLINED_FUNCTION_12_13();
  sub_1E39537A8();
  v132[0] = v48;
  v132[1] = v49;
  v132[2] = v50;
  v132[3] = v51;
  v133 = 0;
  (*(*v2 + 560))(v132);

  __asm { FMOV            V0.2D, #16.0 }

  v126[0] = _Q0;
  v126[1] = _Q0;
  v127 = 0;
  OUTLINED_FUNCTION_8();
  v58 = *(v57 + 160);

  v58(v126);

  if (*(v2 + 153) == 1)
  {
    OUTLINED_FUNCTION_12_13();
    sub_1E418A500();
    OUTLINED_FUNCTION_8();
    (*(v59 + 440))();
  }

  if (*(v2 + 152) == 1)
  {
    OUTLINED_FUNCTION_12_13();
    sub_1E418A4F4();
    OUTLINED_FUNCTION_8();
    (*(v60 + 440))();
  }

  sub_1E3D4839C();
  if ((v8 & 1) == 0)
  {
    v128 = xmmword_1E42C07A0;
    v129 = 0x4010000000000000;
    v130 = 0x4030000000000000;
    v131 = 0;
  }

  OUTLINED_FUNCTION_8();
  (*(v61 + 160))();

  sub_1E3D4839C();
  v62.n128_u64[0] = 16.0;
  v124[0] = j__OUTLINED_FUNCTION_7_78(v62);
  v124[1] = v63;
  v124[2] = v64;
  v124[3] = v65;
  v125 = 0;
  OUTLINED_FUNCTION_8();
  (*(v66 + 184))(v124);

  v67 = v2[18];

  sub_1E39537A8();
  v122[0] = v68;
  v122[1] = v69;
  v122[2] = v70;
  v122[3] = v71;
  v123 = 0;
  (*(*v67 + 560))(v122);

  v72 = v2[18];

  v73 = *sub_1E418A500();
  (*(*v72 + 440))(v73, 0);

  if ((TVAppFeature.isEnabled.getter(10, v74, v75) & 1) == 0)
  {
    sub_1E374EAFC();
    OUTLINED_FUNCTION_26_0();
    (*(v76 + 1936))(2);

    OUTLINED_FUNCTION_36();
    v78 = *(v77 + 1864);

    v78(1);
  }

  sub_1E374EAFC();
  OUTLINED_FUNCTION_26_0();
  (*(v79 + 2056))(1, 0);

  OUTLINED_FUNCTION_36();
  v81 = *(v80 + 2080);

  v81(0, 0);

  OUTLINED_FUNCTION_36();
  v83 = *(v82 + 2104);

  v83(0, 0);

  v84 = *v40;
  OUTLINED_FUNCTION_8();
  v86 = *(v85 + 680);

  v87 = v84;
  v86(v84);

  LOBYTE(v116) = 22;
  v115 = 17;

  sub_1E3C2FC98();
  v114[0] = v114[1];
  sub_1E3C3DE00();
  v113[0] = v113[1];
  sub_1E3C3DE00();
  v112[0] = v112[1];
  sub_1E3C3DE00();
  v111[0] = v111[1];
  sub_1E3C2FCB8(&v116, v114, v113, v112, &v115, v111, &qword_1F5D549D8, v120);
  LODWORD(v116) = v120[0];
  WORD2(v116) = WORD2(v120[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v88 + 1600))(&v116, 48, v89 & 1, &qword_1F5D549D8);

  OUTLINED_FUNCTION_36();
  v91 = *(v90 + 1792);

  v91(10);

  if (v8)
  {
    v120[0] = 0x4030000000000000;
    v92 = 0x4034000000000000;
  }

  else
  {
    v92 = 0x4010000000000000;
    v120[0] = 0x4010000000000000;
  }

  v120[1] = 0x4030000000000000;
  v120[2] = v92;
  v120[3] = 0x4030000000000000;
  v121 = 0;
  OUTLINED_FUNCTION_8();
  v94 = *(v93 + 160);

  v94(v120);

  sub_1E3B910AC();
  __asm { FMOV            V0.2D, #24.0 }

  v116 = _Q0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v96 + 160))(&v116);

  v97 = objc_opt_self();

  v98 = [v97 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v99 + 680))();

  OUTLINED_FUNCTION_36();
  v101 = *(v100 + 2072);

  v101(14);

  OUTLINED_FUNCTION_36();
  v103 = *(v102 + 2096);

  v103(7);

  sub_1E3C37CBC(v104, 39);

  sub_1E3C37CBC(v105, 23);

  sub_1E3C37CBC(v106, 15);

  sub_1E3C37CBC(v107, 17);

  sub_1E3C37CBC(v108, 31);

  sub_1E3C37CBC(v109, 1);

  return result;
}

uint64_t sub_1E3E09950()
{
  OUTLINED_FUNCTION_4_197();
  *(v0 + 152) = v1;
  *(v0 + 153) = 256;
  v2 = sub_1E3C2F9A0();

  sub_1E3E08AAC(v3);

  return v2;
}

uint64_t sub_1E3E099C0()
{
  *(v0 + 152) = 0;
  OUTLINED_FUNCTION_4_197();
  *(v0 + 154) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3E08AAC(v2);

  return v1;
}

double sub_1E3E09A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    if (a1)
    {
      sub_1E39C2CD0();
      if (v5)
      {

        sub_1E374EA2C();
        OUTLINED_FUNCTION_26_0();
        (*(v6 + 1984))(1);

        sub_1E374EA94();
        OUTLINED_FUNCTION_2_1();
        (*(v7 + 1984))(1);

        sub_1E374EAFC();
        OUTLINED_FUNCTION_2_1();
        (*(v8 + 1984))(1);

        sub_1E374E9C4();
        OUTLINED_FUNCTION_2_1();
        (*(v9 + 2000))(3);

        sub_1E3D4839C();
        __asm { FMOV            V1.2D, #16.0 }

        v16[0] = xmmword_1E42B5EA0;
        v16[1] = _Q1;
        v17 = 0;
        OUTLINED_FUNCTION_26_0();
        (*(v15 + 184))(v16);
      }
    }
  }

  return result;
}

void sub_1E3E09BDC(uint64_t a1)
{
  [objc_opt_self() isPad];
  v18[5] = a1;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490, &qword_1E42D4868);
  if (!swift_dynamicCast())
  {
    sub_1E418A524();
    return;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1E39C1F18();
  v3 = v2;
  v4 = sub_1E32AE9B0(v2);
  v5 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v5, v3);
      v6 = v7;
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    if ((*(*v6 + 392))(v7))
    {
      OUTLINED_FUNCTION_26_0();
      v10 = (*(v9 + 432))();
      v12 = v11;

      if (v12)
      {
        goto LABEL_16;
      }

      v13 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1E39ABC54(0, *(v17 + 2) + 1, 1, v17);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      v17 = v13;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_1E39ABC54((v14 > 1), v15 + 1, 1, v13);
      }

      *(v17 + 2) = v15 + 1;
      *&v17[8 * v15 + 32] = v10;
      v5 = v8;
    }

    else
    {

LABEL_16:
      ++v5;
    }
  }

  if (*(v17 + 2))
  {
    v16 = *(v17 + 4);
  }

  else
  {

    v16 = *sub_1E418A524();
  }

  if (v16 != *sub_1E418A500())
  {
    sub_1E418A4F4();
  }
}

double sub_1E3E09EB8(uint64_t a1)
{
  sub_1E374E9C4();
  OUTLINED_FUNCTION_26_0();
  v3 = COERCE_DOUBLE((*(v2 + 432))());
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    return v3;
  }

  sub_1E3E09BDC(a1);
  return v6;
}

uint64_t sub_1E3E09F3C()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 155, 7);
}

double sub_1E3E09F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    v5 = objc_opt_self();
    *__dst = [v5 clearColor];
    *&v474 = [v5 clearColor];
    v6 = sub_1E3E5FB0C();
    *&v471 = *v6;
    v7 = v471;
    *&v468 = [v5 systemFillColor];
    *&v465 = *v6;
    v8 = sub_1E3755B54();
    v9 = v465;
    v10 = sub_1E3C3DE00();
    v18 = OUTLINED_FUNCTION_0_256(v10, v11, v12, v13, v14, v15, v16, v17, v384, v395, v406, v417, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v462);
    sub_1E3C2FCB8(v18, v19, v20, v21, v22, v23, v8, v24);
    *&__dst[32] = *&__src[2];
    v25 = OUTLINED_FUNCTION_18();
    v33 = OUTLINED_FUNCTION_11_141(v25, v26, v27, v28, v29, v30, v31, v32, v385, v396, v407, v418, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, __src[0]);
    sub_1E3C2FDFC(v33, 24, v34, v8);

    __dst[32] = 1;
    v474 = 0u;
    v475 = 0u;
    LOBYTE(v476) = 1;
    sub_1E39537A8();
    OUTLINED_FUNCTION_11_19(v35, v36, v37, v38);
    sub_1E39537A8();
    OUTLINED_FUNCTION_8_155(v39, v40, v41, v42);
    sub_1E39537A8();
    OUTLINED_FUNCTION_10_12(v43, v44, v45, v46);
    type metadata accessor for UIEdgeInsets();
    v48 = v47;
    v49 = sub_1E3C3DE00();
    *(&v459 + 1) = *(&v462 + 1);
    v460 = v463;
    LOBYTE(v461) = v464;
    v57 = OUTLINED_FUNCTION_0_256(v49, v50, v51, v52, v53, v54, v55, v56, v386, v397, v408, v419, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, 0, 0, 0, 0, *&__dst[32], *(&__src[2] + 1), *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v462);
    sub_1E3C2FCB8(v57, v58, v59, v60, v61, v62, v48, v63);
    OUTLINED_FUNCTION_12_128(v64, v65, v66, v67, v68, v69, v70, v71, v387, v398, v409, v420, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst);
    v72 = OUTLINED_FUNCTION_18();
    v80 = OUTLINED_FUNCTION_11_141(v72, v73, v74, v75, v76, v77, v78, v79, v388, v399, v410, v421, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, __dst[0]);
    sub_1E3C2FDFC(v80, 17, v81, v48);
    *__dst = 0;
    *&v474 = *sub_1E3E5FB88();
    *&v471 = v474;
    *&v468 = v474;
    *&v465 = v474;
    v82 = v474;
    sub_1E3C3DE00();
    *&v459 = v462;
    sub_1E3C2FCB8(__dst, &v474, &v471, &v468, &v465, &v459, v8, __src);
    v83 = __src[0];
    v84 = __src[1];
    v85 = __src[2];
    *__dst = __src[0];
    *&__dst[16] = __src[1];
    *&__dst[32] = __src[2];
    v86 = OUTLINED_FUNCTION_18();
    v94 = OUTLINED_FUNCTION_11_141(v86, v87, v88, v89, v90, v91, v92, v93, v389, v400, v411, v422, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, __dst[0]);
    sub_1E3C2FDFC(v94, 29, v95, v8);

    OUTLINED_FUNCTION_15_0(v4 + 128, v96);
    if (*(v4 + 128) == 1)
    {
      v97 = [objc_opt_self() isPad];
      type metadata accessor for LayoutGrid();
      sub_1E3C2F814();
      sub_1E3A25914();
      v100 = 0x4024000000000000;
      if (v97)
      {
        v100 = 0x4028000000000000;
      }

      v478 = *&v100;
      v479 = v98;
      v480 = v100;
      v481 = v99;
      v482 = 0;
      sub_1E3C2CC78();
    }

    else
    {
      sub_1E3952C28(20.0);
      OUTLINED_FUNCTION_106_0();
      v106 = sub_1E3952C28(24.0);
      OUTLINED_FUNCTION_12_10(v106, v107, v108, v109);
      v110.n128_u64[0] = 20.0;
      v111 = j__OUTLINED_FUNCTION_7_78(v110);
      OUTLINED_FUNCTION_11_19(v111, v112, v113, v114);
      v115.n128_u64[0] = 12.0;
      v116 = j__OUTLINED_FUNCTION_7_78(v115);
      OUTLINED_FUNCTION_8_155(v116, v117, v118, v119);
      v120.n128_u64[0] = 12.0;
      v121 = j__OUTLINED_FUNCTION_7_78(v120);
      OUTLINED_FUNCTION_10_12(v121, v122, v123, v124);
      v125 = sub_1E3C3DE00();
      *(&v459 + 1) = *(&v462 + 1);
      v460 = v463;
      LOBYTE(v461) = v464;
      v133 = OUTLINED_FUNCTION_0_256(v125, v126, v127, v128, v129, v130, v131, v132, v384, v395, v406, v417, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v462);
      sub_1E3C2FCB8(v133, v134, v135, v136, v137, v138, v48, v139);
      OUTLINED_FUNCTION_12_128(v140, v141, v142, v143, v144, v145, v146, v147, v390, v401, v412, v423, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst);
      v148 = OUTLINED_FUNCTION_18();
      v156 = OUTLINED_FUNCTION_11_141(v148, v149, v150, v151, v152, v153, v154, v155, v391, v402, v413, v424, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, __dst[0]);
      sub_1E3C2FDFC(v156, 1, v157, v48);
    }
  }

  else
  {
    v103 = objc_opt_self();
    v104 = [v103 clearColor];
    sub_1E3C2DE50();
    v105 = [v103 clearColor];
    sub_1E3C2E258();
  }

  v158 = TVAppFeature.isEnabled.getter(10, v101, v102);
  sub_1E37BD068();
  if (v158)
  {
    v159 = *sub_1E3E5FD88();
    OUTLINED_FUNCTION_8();
    v161 = *(v160 + 680);
    v162 = v159;
    v161(v159);

    OUTLINED_FUNCTION_0_36();
    v164 = *(v163 + 2008);

    v164(1);

    OUTLINED_FUNCTION_8();
    v166 = *(v165 + 232);

    v166(0, 0);

    OUTLINED_FUNCTION_0_36();
    v168 = *(v167 + 256);

    v168(0x7FF0000000000000, 0);

    OUTLINED_FUNCTION_0_36();
    v170 = *(v169 + 1984);

    v170(5);

    OUTLINED_FUNCTION_0_36();
    v172 = *(v171 + 1696);

    v172(14);

    OUTLINED_FUNCTION_0_36();
    v174 = *(v173 + 2128);

    v174(0x3FE6666666666666, 0);

    OUTLINED_FUNCTION_0_36();
    v176 = *(v175 + 2056);

    v177 = OUTLINED_FUNCTION_8_5();
    v176(v177);

    OUTLINED_FUNCTION_0_36();
    v179 = *(v178 + 2080);

    v180 = OUTLINED_FUNCTION_8_5();
    v179(v180);

    OUTLINED_FUNCTION_0_36();
    v182 = *(v181 + 2104);

    v182(0, 0);

    OUTLINED_FUNCTION_0_36();
    v184 = *(v183 + 1720);

    v184(10);

    sub_1E3952C88();
    OUTLINED_FUNCTION_4_198(v185, v186, v187, v188);
    (*(v189 + 160))(__src);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v190 + 1696))(19);

    v191 = *(v4 + 104);

    v192 = *sub_1E3E5FD88();
    v193 = *(*v191 + 680);
    v194 = v192;
    v193(v192);

    OUTLINED_FUNCTION_0_36();
    v196 = *(v195 + 2056);

    v197 = OUTLINED_FUNCTION_15_8();
    v196(v197);

    OUTLINED_FUNCTION_0_36();
    v199 = *(v198 + 2080);

    v200 = OUTLINED_FUNCTION_15_8();
    v199(v200);

    OUTLINED_FUNCTION_0_36();
    v202 = *(v201 + 1984);

    v202(5);
  }

  v205 = TVAppFeature.isEnabled.getter(10, v203, v204);
  sub_1E374EA2C();
  if (v205)
  {
    OUTLINED_FUNCTION_8();
    (*(v206 + 2008))(1);

    v207 = *(v4 + 112);

    v208 = *sub_1E3E5FDEC();
    v209 = *(*v207 + 680);
    v210 = v208;
    v209(v208);

    OUTLINED_FUNCTION_8();
    v212 = *(v211 + 232);

    v212(0, 0);

    OUTLINED_FUNCTION_3_1();
    v214 = *(v213 + 256);

    v214(0x7FF0000000000000, 0);

    OUTLINED_FUNCTION_3_1();
    v216 = *(v215 + 1984);

    v216(5);

    OUTLINED_FUNCTION_3_1();
    v218 = *(v217 + 1720);

    v218(10);

    sub_1E3952C88();
    OUTLINED_FUNCTION_4_198(v219, v220, v221, v222);
    (*(v223 + 160))(__src);

    OUTLINED_FUNCTION_3_1();
    v225 = *(v224 + 1696);

    v225(19);

    OUTLINED_FUNCTION_3_1();
    v227 = *(v226 + 2056);

    v228 = OUTLINED_FUNCTION_8_5();
    v227(v228);

    OUTLINED_FUNCTION_3_1();
    v230 = *(v229 + 2080);

    v231 = OUTLINED_FUNCTION_8_5();
    v230(v231);

    OUTLINED_FUNCTION_3_1();
    v233 = *(v232 + 2104);

    v234 = OUTLINED_FUNCTION_8_5();
    v233(v234);
  }

  else
  {
    sub_1E3952C88();
    OUTLINED_FUNCTION_4_198(v235, v236, v237, v238);
    (*(v239 + 160))(__src);

    OUTLINED_FUNCTION_3_1();
    v241 = *(v240 + 1696);

    v241(21);

    v242 = *(v4 + 112);

    v243 = *sub_1E3E5FDEC();
    v244 = *(*v242 + 680);
    v245 = v243;
    v244(v243);

    OUTLINED_FUNCTION_3_1();
    v247 = *(v246 + 2056);

    v248 = OUTLINED_FUNCTION_15_8();
    v247(v248);

    OUTLINED_FUNCTION_3_1();
    v250 = *(v249 + 2080);

    v251 = OUTLINED_FUNCTION_15_8();
    v250(v251);

    OUTLINED_FUNCTION_3_1();
    v253 = *(v252 + 1984);

    v253(5);
  }

  if (TVAppFeature.isEnabled.getter(10, v254, v255))
  {
    v256 = sub_1E37DAE10();
    (*(*v256 + 1808))(3);

    v257 = *(v4 + 120);
    OUTLINED_FUNCTION_36();
    v259 = *(v258 + 1880);

    v259(1);

    OUTLINED_FUNCTION_16_117();
    v260.n128_u64[0] = 0.5;
    v478 = j__OUTLINED_FUNCTION_7_78(v260);
    v479 = v261;
    v480 = v262;
    v481 = v263;
    v482 = 0;
    (*(*v257 + 1856))(&v478);

    v264 = *(v4 + 120);
    sub_1E3755B54();
    v265 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    v266 = [v265 initWithWhite:0.0 alpha:0.08];
    v267 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
    v268 = sub_1E3E5F2F8(v266, v267);

    (*(*v264 + 1832))(v268);

    v269 = *(v4 + 120);
    OUTLINED_FUNCTION_36();
    v271 = *(v270 + 2216);

    v271(1);

    OUTLINED_FUNCTION_16_117();
    v272 = *sub_1E418A500();
    (*(*v269 + 440))(v272, 0);

    OUTLINED_FUNCTION_36();
    v274 = *(v273 + 2000);

    v274(2);

    *__dst = 0x4050800000000000;
    __dst[8] = 0;
    *&v474 = 0x4050800000000000;
    BYTE8(v474) = 0;
    *&v471 = 0x4054000000000000;
    BYTE8(v471) = 0;
    *&v468 = 0x4050800000000000;
    BYTE8(v468) = 0;
    *&v465 = 0x4050800000000000;
    BYTE8(v465) = 0;

    v275 = MEMORY[0x1E69E7DE0];
    v276 = sub_1E3C3DE00();
    BYTE8(v459) = BYTE8(v462);
    v284 = OUTLINED_FUNCTION_0_256(v276, v277, v278, v279, v280, v281, v282, v283, v384, v395, v406, v417, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v462);
    sub_1E3C2FCB8(v284, v285, v286, v287, v288, v289, v275, v290);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v291 + 1600))(__dst, 2, v292 & 1, v275);

    OUTLINED_FUNCTION_16_117();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_106_0();
    v293 = sub_1E3952CA4();
    OUTLINED_FUNCTION_12_10(v293, v294, v295, v296);
    v297 = sub_1E3952CA4();
    OUTLINED_FUNCTION_11_19(v297, v298, v299, v300);
    v301 = sub_1E3952CA4();
    OUTLINED_FUNCTION_8_155(v301, v302, v303, v304);
    v305 = sub_1E3952CA4();
    OUTLINED_FUNCTION_10_12(v305, v306, v307, v308);
    type metadata accessor for UIEdgeInsets();
    v310 = v309;
    v311 = sub_1E3C3DE00();
    *(&v459 + 1) = *(&v462 + 1);
    v460 = v463;
    LOBYTE(v461) = v464;
    v319 = OUTLINED_FUNCTION_0_256(v311, v312, v313, v314, v315, v316, v317, v318, v392, v403, v414, v425, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v462);
    sub_1E3C2FCB8(v319, v320, v321, v322, v323, v324, v310, v325);
    OUTLINED_FUNCTION_12_128(v326, v327, v328, v329, v330, v331, v332, v333, v393, v404, v415, v426, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v334 + 1600))(__dst, 0, v335 & 1, v310);

    OUTLINED_FUNCTION_16_117();
    v336.n128_u64[0] = 8.0;
    j__OUTLINED_FUNCTION_7_78(v336);
    OUTLINED_FUNCTION_106_0();
    sub_1E39537A8();
    OUTLINED_FUNCTION_12_10(v337, v338, v339, v340);
    sub_1E3C2FC98();
    v468 = v471;
    v469 = v472;
    LOBYTE(v470) = v473;
    sub_1E3C3DE00();
    v462 = v465;
    v463 = v466;
    LOBYTE(v464) = v467;
    sub_1E3C3DE00();
    *v436 = v459;
    v437 = v460;
    LOBYTE(v438) = v461;
    sub_1E3C3DE00();
    *v428 = v432;
    v429 = v433;
    LOBYTE(v430) = v434;
    sub_1E3C2FCB8(__dst, &v468, &v462, v436, &v474, v428, v310, __src);
    OUTLINED_FUNCTION_12_128(v341, v342, v343, v344, v345, v346, v347, v348, v394, v405, v416, v427, v428[0], v428[1], v429, *(&v429 + 1), v430, v431, v432, *(&v432 + 1), v433, *(&v433 + 1), v434, v435, v436[0], v436[1], v437, *(&v437 + 1), v438, v439, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v349 + 1600))(__dst, 17, v350 & 1, v310);
  }

  else
  {
    v351 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    sub_1E3755B54();
    v352 = sub_1E4206F24();
    [v351 setShadowColor_];
    [v351 setShadowBlurRadius_];
    [v351 setShadowOffset_];
    v353 = *(*sub_1E37DAE10() + 608);
    v354 = v351;
    v353(v351);

    OUTLINED_FUNCTION_36();
    v356 = *(v355 + 312);

    v356(0x4050800000000000, 0);

    v357 = *(v4 + 120);
    __src[0] = xmmword_1E4296C50;
    __src[1] = xmmword_1E4298700;
    LOBYTE(__src[2]) = 0;
    OUTLINED_FUNCTION_8();
    v359 = *(v358 + 160);

    v359(__src);

    OUTLINED_FUNCTION_16_117();
    sub_1E39537A8();
    *__dst = v360;
    *&__dst[8] = v361;
    *&__dst[16] = v362;
    *&__dst[24] = v363;
    __dst[32] = 0;
    (*(*v357 + 560))(__dst);

    OUTLINED_FUNCTION_16_117();
    v364 = *sub_1E3E6097C();
    v365 = *(*v357 + 1832);
    v366 = v364;
    v365(v364);

    OUTLINED_FUNCTION_16_117();
    v367.n128_u64[0] = 1.0;
    v478 = j__OUTLINED_FUNCTION_7_78(v367);
    v479 = v368;
    v480 = v369;
    v481 = v370;
    v482 = 0;
    (*(*v357 + 1856))(&v478);

    OUTLINED_FUNCTION_36();
    v372 = *(v371 + 1880);

    v372(1);
  }

  v373 = sub_1E3E0B6CC();
  __asm { FMOV            V0.2D, #6.0 }

  __src[0] = _Q0;
  memset(&__src[1], 0, 17);
  (*(*v373 + 160))(__src);

  v379 = sub_1E37BD068();
  sub_1E3C37CBC(v379, 23);

  v380 = sub_1E374EA2C();
  sub_1E3C37CBC(v380, 15);

  v381 = sub_1E37DAE10();
  sub_1E3C37CBC(v381, 39);

  v382 = sub_1E3E0B6CC();
  sub_1E3C37CBC(v382, 53);

  return result;
}

double sub_1E3E0B61C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
  v4 = swift_beginAccess();
  if (v3 != *(v1 + 128))
  {
    return sub_1E3E09F98(v4, v5, v6);
  }

  return result;
}

double sub_1E3E0B68C()
{
  if ((*(v0 + 168) & 1) == 0)
  {
    return *(v0 + 136);
  }

  sub_1E3952C58();
  *(v0 + 136) = result;
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  *(v0 + 168) = 0;
  return result;
}

uint64_t sub_1E3E0B6CC()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout(0);
    v3 = OUTLINED_FUNCTION_51_1();
    v1 = sub_1E382F55C(3, 1, v3 & 1);
    *(v2 + 176) = v1;
  }

  return v1;
}

uint64_t sub_1E3E0B778()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 128) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3E09F98(v2, v3, v4);

  return v1;
}

double sub_1E3E0B7D4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  v6 = sub_1E3890920(a1, a3, v5);

  return sub_1E3E0B61C(v6);
}

double sub_1E3E0B824()
{

  return result;
}

uint64_t sub_1E3E0B864()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3E0B8AC()
{
  v0 = sub_1E3E0B864();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1E3E0B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3890920(a1, a3, a3);
  OUTLINED_FUNCTION_15_0(v3 + 128, v5);
  return (v4 ^ *(v3 + 128)) & 1;
}

id sub_1E3E0B96C(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v9, sel_initWithAppContext_, a1);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:sel_handleHighlightsUpdatedNotification_ name:*sub_1E3FC5094() object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v5 selector:sel_handleRestrictionsDidChange_ name:*sub_1E3FC54A0() object:0];

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  sub_1E3B79200(sub_1E3E0BABC, 0);

  return v5;
}

void sub_1E3E0BABC()
{
  v0 = sub_1E3285D14();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xF8);
  v2 = *v0;
  v1();
}

uint64_t sub_1E3E0BB74(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v47 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v46 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1E3277E60(0xD000000000000015, 0x80000001E4284AE0, a1, &aBlock);
  if (!v50)
  {
LABEL_12:
    sub_1E329505C(&aBlock);
    goto LABEL_13;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  if (OUTLINED_FUNCTION_3_192(v21, v22, v23, v21))
  {
    v24 = v53;
    sub_1E3277E60(0x6449646573726170, 0xEE004C5255794273, a1, &aBlock);
    if (v50)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
      if ((OUTLINED_FUNCTION_3_192(v25, v26, v27, v25) & 1) == 0)
      {
LABEL_17:

        goto LABEL_13;
      }

      v45 = v24;
      v28 = v53;
      sub_1E3277E60(0xD000000000000011, 0x80000001E4261580, a1, &aBlock);
      if (v50)
      {
        if (OUTLINED_FUNCTION_3_192(v29, v30, v31, MEMORY[0x1E69E6530]))
        {
          v32 = v53;
          sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
          v33 = sub_1E4206A04();
          v34 = swift_allocObject();
          v34[2] = v45;
          v34[3] = v28;
          v34[4] = v32;
          v51 = sub_1E3E0C874;
          v52 = v34;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v49 = sub_1E378AEA4;
          v50 = &block_descriptor_120;
          v35 = _Block_copy(&aBlock);

          sub_1E4203FE4();
          *&aBlock = MEMORY[0x1E69E7CC0];
          sub_1E37E7A8C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
          sub_1E378AD28();
          sub_1E42072E4();
          MEMORY[0x1E6911380](0, v20, v14, v35);
          _Block_release(v35);

          (*(v47 + 8))(v14, v9);
          return (*(v46 + 8))(v20, v15);
        }

        goto LABEL_17;
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  v37 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v37, v2);

  v38 = sub_1E41FFC94();
  v39 = sub_1E42067F4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&aBlock = v41;
    *v40 = 136315138;
    v42 = sub_1E4205C74();
    v44 = sub_1E3270FC8(v42, v43, &aBlock);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1E323F000, v38, v39, "Syndication::Unable to use parsing results: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E69143B0](v41, -1, -1);
    MEMORY[0x1E69143B0](v40, -1, -1);
  }

  return (*(v4 + 8))(v8, v2);
}

void sub_1E3E0C0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E3285D14();
  v14 = *((*MEMORY[0x1E69E7D40] & **v13) + 0x100);
  v15 = *v13;
  v14(a1, a2, a3);

  v16 = [objc_opt_self() defaultCenter];
  v17 = *sub_1E3FC541C();
  sub_1E41FDEF4();
  v18 = sub_1E41FDED4();
  (*(v8 + 8))(v12, v6);
  [v16 postNotification_];
}

id sub_1E3E0C2C8()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = v0;
  [v3 removeObserver:v4 name:*sub_1E3FC5094() object:0];

  v5 = [v2 defaultCenter];
  v6 = v4;
  [v5 removeObserver:v6 name:*sub_1E3FC54A0() object:0];

  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_1E3E0C424(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = sub_1E41FDF24();
  if (!v4)
  {
    v26 = 0u;
    v27 = 0u;
    return sub_1E329505C(&v26);
  }

  v5 = v4;
  v6 = sub_1E3FC2F14();
  v24 = *v6;
  v25 = v6[1];

  sub_1E4207414();
  sub_1E375D7E8(v5, &v26, &aBlock);

  v7 = sub_1E375D84C(&aBlock);
  if (!*(&v27 + 1))
  {
    return sub_1E329505C(&v26);
  }

  OUTLINED_FUNCTION_6_167(v7, v8, v9, &type metadata for SyndicationInfo, v10, v11, v12, v13, v24, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), aBlock);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = aBlock;
    v16 = v29;
    v17 = v30;
    v18 = [v3 appContext];
    if (v18)
    {
      v19 = v18;
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = v15;
      v21[3] = v16;
      v21[4] = v17;
      v21[5] = v20;
      v32 = sub_1E3E0C9BC;
      v33 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      OUTLINED_FUNCTION_7_6();
      v30 = v22;
      v31 = &block_descriptor_14_0;
      v23 = _Block_copy(&aBlock);

      [v19 evaluate_];
      _Block_release(v23);
    }
  }

  return result;
}

void sub_1E3E0C6C8()
{
  v1 = [v0 appContext];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_1E3E0C8A4;
    v13 = v3;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    OUTLINED_FUNCTION_7_6();
    v10 = v4;
    v11 = &block_descriptor_7_1;
    v5 = _Block_copy(&v8);

    v6 = OUTLINED_FUNCTION_4_199();
    [v6 v7];
    _Block_release(v5);
  }
}

void sub_1E3E0C8A4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSHighlightsManager();
  }

  else
  {
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v3;
  v15[3] = Strong;
  sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
  v4 = a1;
  v5 = sub_1E3A243F8(v15, a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E4205ED4();
    v8 = OUTLINED_FUNCTION_4_199();
    v10 = [v8 v9];

    if (v10)
    {
      v11 = sub_1E4205ED4();
      v12 = OUTLINED_FUNCTION_4_199();
      v14 = [v12 v13];
    }
  }
}

void sub_1E3E0C9BC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v11 = v8[2];
  v10 = v8[3];
  v12 = v8[4];
  v13 = MEMORY[0x1E69E7CC8];
  if (v11)
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    v21 = OUTLINED_FUNCTION_6_167(v60, v14, v15, v16, v17, v18, v19, v20, v54, v55, v56, *(&v56 + 1), v57, v58, v11);
    sub_1E329504C(v21, v22);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_5_180();
    a1 = sub_1E32A87C0(v23, v24, 0x80000001E4284BB0, v25);
    v13 = v55;
  }

  if (v10)
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    v33 = OUTLINED_FUNCTION_6_167(v60, v26, v27, v28, v29, v30, v31, v32, v54, v55, v56, *(&v56 + 1), v57, v58, v10);
    sub_1E329504C(v33, v34);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_5_180();
    a1 = sub_1E32A87C0(v35, v36, 0x80000001E4284B90, v37);
    v13 = v55;
  }

  v60 = MEMORY[0x1E69E6530];
  v38 = OUTLINED_FUNCTION_6_167(a1, a2, a3, a4, a5, a6, a7, a8, v54, v55, v56, *(&v56 + 1), v57, v58, v12);
  sub_1E329504C(v38, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E32A87C0(&v56, 0xD000000000000011, 0x80000001E4261580, isUniquelyReferenced_nonNull_native);
  v41 = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v43 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSHighlightsManager();
  }

  else
  {
    v59[1] = 0;
    v59[2] = 0;
  }

  v59[0] = v43;
  v60 = Strong;
  sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
  v44 = v9;
  v45 = sub_1E3A243F8(v59, v9);
  if (v45)
  {
    v46 = v45;
    v47 = sub_1E4205ED4();
    v48 = OUTLINED_FUNCTION_4_199();
    v50 = [v48 v49];

    if (v50)
    {
      v51 = sub_1E4205ED4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1E4297BE0;
      *(v52 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *(v52 + 32) = v41;
      v53 = sub_1E3A49FB0(v51, v52, v46);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1E3E0CC64()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    v24[32] = 0;
    v30[0] = xmmword_1E42D4920;
    v30[1] = vdupq_n_s64(0x4044000000000000uLL);
    v31 = 0;
    type metadata accessor for UIEdgeInsets();
    v4 = v3;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_3_193();
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_107(v5, v6, v7, v8, v9, v10, v11, v12, 0x4034000000000000, 0x404B000000000000, 0x4040800000000000, 0x404B000000000000, *&v24[32], *&v24[40], *&v24[48], *&v24[56], *&v24[64], *&v24[72], *&v24[80], *&v24[88], *&v24[96], *&v24[104], *&v24[112], *&v24[120], *&v24[128], *&v24[136], *&v24[144], *&v24[152], *&v24[160], *&v24[168], *&v24[176], *&v24[184], *&v24[192], *&v24[200], *&v24[208], *&v24[216], *&v24[224], *&v24[232], v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v26);
    sub_1E3C2FCB8(v29, v28, v24, v30, v27, v25, v4, __src);
    memcpy(v24, __src, 0xE9uLL);
    v13 = OUTLINED_FUNCTION_18();
    v21 = OUTLINED_FUNCTION_6_168(v13, v14, v15, v16, v17, v18, v19, v20, *v24);
    v22(v21);
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3E0CDA8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    v3 = *(MEMORY[0x1E69DDCE0] + 16);
    *v29 = *MEMORY[0x1E69DDCE0];
    *&v29[16] = v3;
    v29[32] = 0;
    sub_1E3952C94();
    v35[0] = v4;
    v35[1] = v5;
    v35[2] = v6;
    v35[3] = v7;
    v36 = 0;
    type metadata accessor for UIEdgeInsets();
    v9 = v8;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_3_193();
    OUTLINED_FUNCTION_6_7();
    v10 = OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_107(v10, v11, v12, v13, v14, v15, v16, v17, *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], *&v29[40], *&v29[48], *&v29[56], *&v29[64], *&v29[72], *&v29[80], *&v29[88], *&v29[96], *&v29[104], *&v29[112], *&v29[120], *&v29[128], *&v29[136], *&v29[144], *&v29[152], *&v29[160], *&v29[168], *&v29[176], *&v29[184], *&v29[192], *&v29[200], *&v29[208], *&v29[216], *&v29[224], *&v29[232], v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v31);
    sub_1E3C2FCB8(v34, v33, v29, v35, v32, v30, v9, __src);
    memcpy(v29, __src, 0xE9uLL);
    v18 = OUTLINED_FUNCTION_18();
    v26 = OUTLINED_FUNCTION_6_168(v18, v19, v20, v21, v22, v23, v24, v25, *v29);
    v27(v26);
    *(v2 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E3E0CF20()
{
  __asm { FMOV            V0.2D, #20.0 }

  *(v0 + 104) = _Q0;
  *(v0 + 120) = xmmword_1E42D4930;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return sub_1E3C2F9A0();
}

double sub_1E3E0CF3C()
{

  return result;
}

uint64_t sub_1E3E0CF6C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3E0CFA4()
{
  v0 = sub_1E3E0CF6C();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1E3E0CFF8@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3E0D030(v2, a1);
}

uint64_t sub_1E3E0D030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OrdinalNumber.OrdinalNumberContent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v7 + 24);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  v11 = sub_1E3C27528(v9, v10);

  if (!v11)
  {
LABEL_4:
    v13 = type metadata accessor for OrdinalNumberLayout();
    sub_1E3EA5EE8(v13);
  }

  type metadata accessor for OrdinalNumberLayout();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_4;
  }

  v6[1] = v12;
  sub_1E3E0D1B0(v6, a2);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t type metadata accessor for OrdinalNumber.OrdinalNumberContent(uint64_t a1)
{
  result = qword_1EE2A6930;
  if (!qword_1EE2A6930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E0D1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrdinalNumber.OrdinalNumberContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E0D214@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1E4203D44();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39498, &qword_1E42D49B8);
  return sub_1E3E0D260(v2, a2 + *(v5 + 44));
}

uint64_t sub_1E3E0D260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818, &qword_1E42D4AD0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27[-v17];
  (*(*a1[1] + 2440))(v16);
  sub_1E3A9D424();

  v19 = *(v12 + 44);
  v20 = *MEMORY[0x1E6981E10];
  v21 = sub_1E4203E94();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  v22 = v28;
  *v18 = *&v27[8];
  *(v18 + 1) = v22;
  *(v18 + 4) = v29;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  sub_1E3E0D78C(v18, v14);
  v23 = *(v5 + 16);
  v23(v7, v10, v4);
  sub_1E3E0D78C(v14, a2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF394B0, &unk_1E42D4AD8);
  v23((a2 + *(v24 + 48)), v7, v4);
  v25 = *(v5 + 8);
  v25(v10, v4);
  sub_1E3E0D7FC(v18);
  v25(v7, v4);
  return sub_1E3E0D7FC(v14);
}

void sub_1E3E0D5B0(uint64_t a1)
{
  type metadata accessor for TextViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OrdinalNumberLayout();
    if (v2 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3E0D64C()
{
  result = qword_1EE284200;
  if (!qword_1EE284200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF394A0, &qword_1E42D4AB8);
    sub_1E3E0D6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284200);
  }

  return result;
}

unint64_t sub_1E3E0D6D0()
{
  result = qword_1EE284238[0];
  if (!qword_1EE284238[0])
  {
    type metadata accessor for OrdinalNumber.OrdinalNumberContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE284238);
  }

  return result;
}

unint64_t sub_1E3E0D728()
{
  result = qword_1EE288430;
  if (!qword_1EE288430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF394A8, &unk_1E42D4AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288430);
  }

  return result;
}

uint64_t sub_1E3E0D78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818, &qword_1E42D4AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E0D7FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818, &qword_1E42D4AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t VUILocationServiceProxyObjCAuthorizationStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3E0D878@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUILocationServiceProxyObjCAuthorizationStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static VUILocationServiceProxyObjC.authorizationStatus.getter()
{
  v0 = sub_1E41FF214();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E41FEDE4();
  sub_1E41FEDD4();
  sub_1E41FED94();

  v7 = sub_1E3E0D99C();
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1E3E0D99C()
{
  v0 = sub_1E41FF214();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_9_140();
  v8(v7);
  v9 = (*(v2 + 88))(v6, v0);
  if (v9 == *MEMORY[0x1E69D5900])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x1E69D5908])
  {
    return 0;
  }

  (*(v2 + 8))(v6, v0);
  return 2;
}

void static VUILocationServiceProxyObjC.requestUserAuthorization()()
{
  v1 = sub_1E41FEF74();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E41FEDE4();
  sub_1E41FEDD4();
  sub_1E41FEDC4();
  if (v0)
  {

    v8 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    if (swift_dynamicCast())
    {
      if ((*(v3 + 88))(v7, v1) == *MEMORY[0x1E69D5830])
      {

        sub_1E39E0BC8(v9, v10, v11);
        swift_allocError();
        *v12 = 0;
        swift_willThrow();
      }

      else
      {
        (*(v3 + 8))(v7, v1);
      }
    }
  }

  else
  {
  }
}

uint64_t static VUILocationServiceProxyObjC.retrieveLocation()()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FEF84();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3E0DD6C, 0, 0);
}

uint64_t sub_1E3E0DD6C()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEDE4();
  *(v0 + 48) = sub_1E41FEDD4();
  v3 = (*MEMORY[0x1E69D57E8] + MEMORY[0x1E69D57E8]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1E3E0DE20;

  return v3();
}

uint64_t sub_1E3E0DE20()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3E0DF6C, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_1E3E0DF6C()
{
  v1 = *(v0 + 64);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 32) + 88))(*(v0 + 40), *(v0 + 24));
    if (v3 == *MEMORY[0x1E69D5840])
    {

      sub_1E39E0D84(v4, v5, v6);
      swift_allocError();
      *v7 = 0;
LABEL_6:
      swift_willThrow();
      goto LABEL_8;
    }

    if (v3 == *MEMORY[0x1E69D5838])
    {

      sub_1E39E0D84(v8, v9, v10);
      swift_allocError();
      *v11 = 1;
      goto LABEL_6;
    }

    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  }

LABEL_8:

  OUTLINED_FUNCTION_54();

  return v12();
}

uint64_t sub_1E3E0E168(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E3E0E1FC;

  return static VUILocationServiceProxyObjC.retrieveLocation()();
}

uint64_t sub_1E3E0E1FC()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v2)
  {
    v9 = sub_1E41FE264();

    v10 = v9;
  }

  else if (v4)
  {
    v11 = sub_1E4205C44();

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v6 + 16);
  v13 = OUTLINED_FUNCTION_9_140();
  v14(v13);

  _Block_release(v12);
  OUTLINED_FUNCTION_54();

  return v15();
}

id VUILocationServiceProxyObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUILocationServiceProxyObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUILocationServiceProxyObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3E0E440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF394B8;
  if (!qword_1ECF394B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF394B8);
  }

  return result;
}

uint64_t sub_1E3E0E4C8()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E3286A7C;

  return sub_1E3E0E168(v2);
}

uint64_t sub_1E3E0E684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3E0E6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

void type metadata accessor for CATransform3D()
{
  if (!qword_1ECF394C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF394C0);
    }
  }
}

id sub_1E3E0E740(uint64_t a1, void *a2, char a3)
{
  v5 = sub_1E41FFBF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = VUISignpostLogObject(v9);
  sub_1E41FFBC4();
  v11 = sub_1E4206BA4();
  v12 = VUISignpostLogObject(v11);
  sub_1E41FFBA4();

  if (a3)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  }

  else
  {
    v13 = a2;
  }

  v14 = v13;
  v15 = sub_1E4206B94();
  v16 = VUISignpostLogObject(v15);
  sub_1E41FFBA4();

  (*(v6 + 8))(v8, v5);
  return v14;
}

unint64_t sub_1E3E0E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24D460;
  if (!qword_1EE24D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24D460);
  }

  return result;
}

uint64_t sub_1E3E0E97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_228(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDB778](v3);
}

uint64_t sub_1E3E0E9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_228(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDB740](v3);
}

void sub_1E3E0EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3E0EA3C(a1, a2, a3);
  sub_1E42025D4();
  __break(1u);
}

unint64_t sub_1E3E0EA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF394C8;
  if (!qword_1ECF394C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF394C8);
  }

  return result;
}

uint64_t sub_1E3E0EAD4()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 352))();
}

uint64_t sub_1E3E0EB74()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 360))();
}

BOOL sub_1E3E0EBD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager);
  OUTLINED_FUNCTION_12_5();
  v2 += 86;
  v3 = *v2;
  if ((*v2)())
  {
    OUTLINED_FUNCTION_85();
    v5 = (*(v4 + 376))();
    sub_1E32AE9B0(v5);
    OUTLINED_FUNCTION_11_5();

    if (v0)
    {
      return 1;
    }
  }

  if (v3())
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_5();
  v8 = *((*(v7 + 632))() + 16);

  if (!v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_5();
  v10 = (*(v9 + 736))();
  sub_1E32AE9B0(v10);
  OUTLINED_FUNCTION_50();

  return v1 != 0;
}

uint64_t sub_1E3E0ED44(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3E0ED78(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3E0EE04(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3E0EE38(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3E0EEC4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3E0EEF8(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3E0EF84(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3E0EFB8(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1E3E0F0A8()
{
  v1 = objc_opt_self();
  if ([v1 allowsAccountModification] && (v2 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v3 = objc_msgSend(v2, sel_accountConfig), v2, LODWORD(v2) = objc_msgSend(v3, sel_showAccountSettingOnSidebar), v3, v2) && (!objc_msgSend(v1, sel_isLibraryOnlyCountry) || (objc_msgSend(v1, sel_isLibraryOnlyCountryResolved) & 1) == 0))
  {
    OUTLINED_FUNCTION_21();
    v4 = (*(v7 + 400))() ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [v0 sidebar];
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_profileView];
  }

  v8 = v6;
  [v5 setBottomBarView_];
}

void sub_1E3E0F224()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  OUTLINED_FUNCTION_120_1();
  v14 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v16 = (*(v15 + 440))();
  v17 = sub_1E374E8E4(v16, 1);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v57 = v19;
  v58 = v6;
  v56 = v18;
  if (v17)
  {
    v54 = v8;
    v18(v13);
    v20 = v3;
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_42_9();
      v53 = v3;
      v24 = v23;
      v25 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_144_6(v25);
      *v24 = 136315394;
      *(v24 + 4) = OUTLINED_FUNCTION_183_4((v20 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix));
      *(v24 + 12) = 1024;
      *(v24 + 14) = (*((*v14 & *v20) + 0x1D8))() & 1;

      _os_log_impl(&dword_1E323F000, v21, v22, "%s updateNavigationVisibility tabbar: tabBarModeNavigationHidden:%{BOOL}d", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v1);
      v1 = v6;
      v6 = v58;
      OUTLINED_FUNCTION_6_0();
      v3 = v53;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v26 = OUTLINED_FUNCTION_133_7();
    v27(v26);
    OUTLINED_FUNCTION_16_89();
    [v20 setTabBarHidden_];
  }

  else
  {
    HIDWORD(v52) = v5;
    v28 = OUTLINED_FUNCTION_297();
    v29(v28);
    v53 = v3;
    v30 = v3;
    v31 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_42_9();
      v54 = v8;
      v34 = v33;
      v35 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_144_6(v35);
      *v34 = 136315394;
      *(v34 + 4) = OUTLINED_FUNCTION_183_4((v30 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix));
      *(v34 + 12) = 1024;
      *(v34 + 14) = (*((*v14 & *v30) + 0x1C0))() & 1;

      _os_log_impl(&dword_1E323F000, v31, v2, "%s updateNavigationVisibility sidbar: sideBarModeNavHidden:%{BOOL}d", v34, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v1);
      v1 = v6;
      v6 = v58;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v36 = OUTLINED_FUNCTION_163_6();
    v37(v36);
    OUTLINED_FUNCTION_4_154();
    v40 = (*(v39 + 448))();
    v41 = BYTE4(v52);
    if (v40)
    {
      [v30 setTabBarHidden:1 animated:BYTE4(v52) & 1];
    }

    else
    {
      OUTLINED_FUNCTION_4_154();
      [v30 setTabBarHidden:((*(v42 + 400))() & 1) == 0 animated:v41 & 1];
    }

    v3 = v53;
  }

  sub_1E324FBDC();
  v43 = OUTLINED_FUNCTION_40_3();
  v56(v43);
  v44 = v3;
  v45 = sub_1E41FFC94();
  v46 = sub_1E4206814();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_42_9();
    v48 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_144_6(v48);
    *v47 = 136315394;
    *(v47 + 4) = OUTLINED_FUNCTION_183_4((v44 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix));
    *(v47 + 12) = 1024;
    *(v47 + 14) = (*((*MEMORY[0x1E69E7D40] & *v44) + 0x1C0))() & 1;

    _os_log_impl(&dword_1E323F000, v45, v46, "%s updateNavigationVisibility sideBarModeNavHidden:%{BOOL}d", v47, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_55();

    v55(v6, v58);
  }

  else
  {

    v49 = OUTLINED_FUNCTION_13_8();
    (v55)(v49);
  }

  OUTLINED_FUNCTION_4_154();
  if ((*(v50 + 448))())
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  [v44 setMode_];
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E0F8B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void sub_1E3E0F8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_234(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  v11 = *(v8 + v10);
  *(v8 + v10) = v9;
  v12 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v11 != *(v8 + v12))
  {
    sub_1E3E0F0A8();
    sub_1E3E0F224();
  }
}

void (*sub_1E3E0F95C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_1E3E0F9D0;
}

void sub_1E3E0F9E8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v5 = [v0 hasRemoteBarItems];
  v6 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation;
  v7 = v0[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation] & (v5 ^ 1);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v8(v0);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v23 = v7;
    v12 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_100();
    *v12 = 136315906;
    *(v12 + 4) = OUTLINED_FUNCTION_183_4(&v9[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix]);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v0[v6];

    *(v12 + 18) = 1024;
    *(v12 + 20) = v5 & 1;
    *(v12 + 24) = 1024;
    *(v12 + 26) = v23 & 1;
    _os_log_impl(&dword_1E323F000, v10, v11, "%s updateSidebarNavigationHidden: libraryHideSidebarNavigation: %{BOOL}d, hasRemoteBarItems:%{BOOL}d, sidebarHideNavigation:%{BOOL}d", v12, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 8))(v0, v1);
    v20 = v23;
  }

  else
  {

    v21 = OUTLINED_FUNCTION_97_1();
    v22(v21);
    v20 = v7;
  }

  sub_1E3E0FC4C(v20 & 1, v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E0FBF0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation);
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation) = a1;
  if (v2 != *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation))
  {
    sub_1E3E0F9E8();
  }
}

uint64_t sub_1E3E0FC18(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarModeNavigationHidden;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3E0FC58(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void (*sub_1E3E0FC98())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_1E3E0FD0C;
}

void sub_1E3E0FD24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

uint64_t sub_1E3E0FD68(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void sub_1E3E0FDA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v11 = *a2;
  OUTLINED_FUNCTION_234(a1, a2, a3, a4, a5, a6, a7, a8, v14);
  v12 = *(v8 + v11);
  *(v8 + v11) = v10;
  v13 = *a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v12 != *(v8 + v13))
  {
    sub_1E3E0F224();
  }
}

void (*sub_1E3E0FE1C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return sub_1E3E0FE90;
}

void *sub_1E3E0FEA8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3E0FEE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3E0FF78(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3E0FFAC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3E10038(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3E1006C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1E3E1015C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v70 = v3;
  v71 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager;
  type metadata accessor for LibrarySideBarManager();
  *(v0 + v5) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *(v0 + v6) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v7 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_rootControllerConfig;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 rootControllerConfig];

  *(v2 + v7) = v9;
  v10 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_profileView;
  type metadata accessor for PadRootSideBarProfileView();
  *(v2 + v10) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarModeNavigationHidden) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarItemConfigs) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_wasSidebarVisibilityUpdatedForMetrics) = 0;
  v11 = (v2 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix);
  *v11 = 0xD00000000000001CLL;
  v11[1] = 0x80000001E4284D40;
  type metadata accessor for PadRootSplitViewController();
  OUTLINED_FUNCTION_25();
  v14 = objc_msgSendSuper2(v12, v13);
  v15 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager;
  v16 = *&v14[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
  v17 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager;
  v18 = *&v14[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager];
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x300);
  v21 = v14;
  v22 = v16;
  v23 = v18;
  v20(v18);

  v24 = *&v14[v15];
  OUTLINED_FUNCTION_4_0();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_26_3();
  v27 = *((*v19 & v26) + 0x1A8);
  v28 = v21;
  v29 = v24;
  OUTLINED_FUNCTION_35_0();

  v27(sub_1E3E242DC, v25);

  v30 = *&v14[v17];
  OUTLINED_FUNCTION_12_5();
  v32 = *(v31 + 248);
  v33 = v28;
  v34 = v30;
  v32(v21, &off_1F5D87320);

  [v33 setDelegate_];
  v35 = v33;
  v36 = [v35 sidebar];
  [v36 setDelegate_];

  v37 = sub_1E324FBDC();
  (*(v71 + 16))(v1, v37, v70);
  v38 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_84_1())
  {
    v39 = OUTLINED_FUNCTION_6_21();
    v72 = OUTLINED_FUNCTION_100();
    *v39 = 136315138;

    v40 = OUTLINED_FUNCTION_39_9();
    v43 = sub_1E3270FC8(v40, v41, v42);

    *(v39 + 4) = v43;
    OUTLINED_FUNCTION_35_8();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v71 + 8))(v1, v70);
  v49 = [v35 sidebar];
  [v49 setPreferredLayout_];

  if (sub_1E39DFFC8())
  {
    [objc_opt_self() vuiSetShouldCollapseTabBarOnScroll:1 on:v35];
  }

  [v35 setMode_];
  [v35 setTabBarHidden_];
  v50 = [v35 view];

  if (v50)
  {
    [v50 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E4297BE0;
    v52 = sub_1E41FFF64();
    v53 = MEMORY[0x1E69DC130];
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
    sub_1E4206944();
    swift_unknownObjectRelease();

    v55 = objc_opt_self();
    v56 = [v55 defaultCenter];
    OUTLINED_FUNCTION_34_59(v56, v57, v58, sel_willEnterForeground_, *MEMORY[0x1E69DF7E8]);

    v59 = [v55 defaultCenter];
    OUTLINED_FUNCTION_34_59(v59, v60, v61, sel_didEnterBackground_, *MEMORY[0x1E69DF7E0]);

    v62 = [v55 defaultCenter];
    v63 = v54;
    [v62 addObserver:v63 selector:sel_accountStoreDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

    v64 = [v55 defaultCenter];
    OUTLINED_FUNCTION_34_59(v64, v65, v66, sel_isLibraryOnlyCountryChanged_, @"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification");

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1E4297BE0;
    v68 = sub_1E41FFDE4();
    v69 = MEMORY[0x1E69DC0A0];
    *(v67 + 32) = v68;
    *(v67 + 40) = v69;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1E4206944();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3E10978()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v28 = v4;
  v27 = v2;
  sub_1E397C3E4(v9, v10, v11);
  if ((sub_1E4205E84() & 1) == 0)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_1E3E1C958();
      }

      else
      {
        sub_1E3E1B42C();
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v12(v8);
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v15 = 136315394;
      v25[1] = v4;
      sub_1E3E25614(v24, v16, v17);
      v18 = sub_1E4207944();
      sub_1E3270FC8(v18, v19, &v26);
      OUTLINED_FUNCTION_12_1();

      *(v15 + 4) = v0;
      *(v15 + 12) = 2080;
      v25[0] = v2;
      v20 = sub_1E4207944();
      sub_1E3270FC8(v20, v21, &v26);
      OUTLINED_FUNCTION_50();

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1E323F000, v13, v14, "RootSplitViewController:: updating from %s mode to %s mode", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v22 = OUTLINED_FUNCTION_74();
    v23(v22);
    sub_1E3E0F224();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E10BC8(uint64_t a1)
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_16_89();
  v3 = (*(v2 + 440))();
  if (sub_1E374E8E4(v3, 0) && (OUTLINED_FUNCTION_85(), ((*(v4 + 272))() & 1) == 0))
  {
    OUTLINED_FUNCTION_85();
    v8 = *(v7 + 288);

    return v8(a1);
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    return (*(v5 + 448))(a1);
  }
}

void sub_1E3E10D08(void *a1, void *a2, char a3)
{
  v8 = a1[3];
  OUTLINED_FUNCTION_0_257(a1, v8);
  v9(v8);
  OUTLINED_FUNCTION_206_1();
  OUTLINED_FUNCTION_39();
  (*((*MEMORY[0x1E69E7D40] & v10) + 0x250))();
  v11 = OUTLINED_FUNCTION_16_5();
  v65 = sub_1E378A81C(v11, v4, v3);

  if (!v65)
  {
    goto LABEL_20;
  }

  if ((v65[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader] & 1) == 0)
  {
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = OUTLINED_FUNCTION_39_0();
    v15 = v14(v13);
    v23 = v15;
    if (v15 && (v15 = , IsBoldTextEnabled))
    {
      OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v59, v61, v65);
      if ((*(v24 + 296))())
      {
        goto LABEL_22;
      }

      LODWORD(v62) = IsBoldTextEnabled;
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v59, v61, v65);
      if ((*(v26 + 272))())
      {
        goto LABEL_22;
      }

      LODWORD(v62) = IsBoldTextEnabled;
      v25 = 0;
    }

    OUTLINED_FUNCTION_4_154();
    v28 = (*(v27 + 200))();
    if (v28)
    {
      v36 = v28;
      OUTLINED_FUNCTION_39_51(v28, v29, v30, v31, v32, v33, v34, v35, v60, v62, v66);
      v38 = (*(v37 + 320))();
      if (v25)
      {
        if ((v38 & 1) == 0)
        {

LABEL_15:
          OUTLINED_FUNCTION_4_154();
          v40 = (*(v39 + 304))(1);
LABEL_19:
          OUTLINED_FUNCTION_39_51(v40, v41, v42, v43, v44, v45, v46, v47, v60, v62, v66);
          (*(v49 + 184))(a2);
          v50 = *sub_1E3CE4D98();
          OUTLINED_FUNCTION_4_0();
          v51 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1E38C6028(a1, v68);
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          *(v52 + 24) = v67;
          *(v52 + 32) = v23 != 0;
          sub_1E3251BE8(v68, v52 + 40);
          *(v52 + 80) = a3 & 1;
          OUTLINED_FUNCTION_21();
          v54 = *(v53 + 224);
          v55 = v50;
          OUTLINED_FUNCTION_35_0();

          v56 = v67;
          v54(a1, v63, 0, 1, sub_1E3E24938, v52);

LABEL_20:
          OUTLINED_FUNCTION_229_0();
          return;
        }

        goto LABEL_21;
      }

      if ((v38 & 1) == 0)
      {
LABEL_21:
        v64 = v36;
        sub_1E3E23C48();

        goto LABEL_22;
      }
    }

    else if (v25)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_154();
    v40 = (*(v48 + 280))(1);
    goto LABEL_19;
  }

LABEL_22:
  OUTLINED_FUNCTION_229_0();
}

void sub_1E3E11148()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedMode) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_viewIsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnDidAppear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_needsModeEvaluationOnForeground) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager;
  type metadata accessor for LibrarySideBarManager();
  *(v0 + v2) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *(v0 + v3) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v4 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_rootControllerConfig;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 rootControllerConfig];

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_profileView;
  type metadata accessor for PadRootSideBarProfileView();
  *(v1 + v7) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_contentDisplayed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryHideSidebarNavigation) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarModeNavigationHidden) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabBarModeNavigationHidden) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_floatingTabBarHiddenForLandscape) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_accountMessageViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sidebarOpeningInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_waitingForPresentationDismissal) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_sideBarItemConfigs) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_wasSidebarVisibilityUpdatedForMetrics) = 0;
  v8 = (v1 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_logPrefix);
  *v8 = 0xD00000000000001CLL;
  v8[1] = 0x80000001E4284D40;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3E11370(uint64_t a1)
{
  v2 = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PadRootSplitViewController();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, v2 & 1);
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v4) + 0x148))())
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    sub_1E3E10BC8(v7);
    OUTLINED_FUNCTION_26_3();
    (*((*v3 & v8) + 0x150))(0);
  }

  OUTLINED_FUNCTION_21();
  return (*(v9 + 312))(1);
}

uint64_t sub_1E3E11508(uint64_t a1)
{
  v2 = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PadRootSplitViewController();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, v2 & 1);
  OUTLINED_FUNCTION_26_3();
  return (*((*MEMORY[0x1E69E7D40] & v3) + 0x138))(0);
}

void sub_1E3E115E4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PadRootSplitViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 440))();
  if (sub_1E374E8E4(v3, 2))
  {
    v4 = [v1 sidebar];
    v5 = [v4 isHidden];

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics;
    if (v6 != v1[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics])
    {
      OUTLINED_FUNCTION_8_9();
      if (v5)
      {
        (*(v8 + 1176))();
        type metadata accessor for Metrics(0);
        OUTLINED_FUNCTION_38();

        sub_1E3BA769C(v9);
      }

      else
      {
        (*(v8 + 1160))();
      }
    }

    v1[v7] = v6;
  }
}

void sub_1E3E117BC()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v3) + 0x160))())
  {
    v4 = [v0 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    sub_1E3E10BC8(v6);
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v7) + 0x168))(0);
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_8_9();
  v8 += 116;
  v9 = *v8;
  v10 = (*v8)();
  if (v10)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v11 = OUTLINED_FUNCTION_33_14();
    v12(v11);
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v14))
    {
      v15 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v15);
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v21 = OUTLINED_FUNCTION_13_8();
    v10 = v22(v21);
  }

  if ((v9)(v10))
  {
    OUTLINED_FUNCTION_30();
    (*(v23 + 1000))();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E11A2C()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1176))();
}

uint64_t sub_1E3E11AA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_118();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v7 = v4;
  a4();

  v8 = OUTLINED_FUNCTION_53();
  return v9(v8);
}

id sub_1E3E11B6C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PadRootSplitViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3E11D90()
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_8_9();
  v3 = (*(v2 + 440))();
  sub_1E397C3E4(v3, v4, v5);
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_8_9();
    result = (*(v7 + 1096))();
    if (v8)
    {
      OUTLINED_FUNCTION_159_3();
      v9 = sub_1E396B0E4();
      if (v1 == *v9 && v0 == v9[1])
      {
      }

      else
      {
        v11 = OUTLINED_FUNCTION_176_5();

        if ((v11 & 1) == 0)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_8_9();
      v13 = *(v12 + 544);

      v14 = OUTLINED_FUNCTION_13_8();
      return v13(v14);
    }
  }

  return result;
}

void sub_1E3E11EEC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_56_20();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v150 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager);
  OUTLINED_FUNCTION_7_20();
  v15 = (*(v14 + 440))();
  v173[0] = v15;
  LOBYTE(v170) = 1;
  sub_1E397C3E4(v15, v16, v17);
  v18 = &type metadata for RootSplitViewManager.Mode;
  if (sub_1E4205E84())
  {
    v19 = sub_1E324FBDC();
    (*(v8 + 16))(v1, v19, v6);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v21))
    {
      v22 = OUTLINED_FUNCTION_125_0();
      *v22 = 0;
      _os_log_impl(&dword_1E323F000, v20, v1, "RootSplitViewController:: Pad:: receive library updates in tabbarMode", v22, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    v23 = OUTLINED_FUNCTION_35_5();
    v24(v23);
    goto LABEL_92;
  }

  v161 = v2;
  v151 = v12;
  v163 = v13;
  v152 = v8;
  v154 = v6;
  v153 = v3;
  v25 = sub_1E32AE9B0(v5);
  if (v25)
  {
    v26 = v25;
    if (v25 < 1)
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_196_1();
    v28 = *((*MEMORY[0x1E69E7D40] & v27) + 0x2A0);
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E6911E60](v6, v5);
      }

      else
      {
        v29 = *(v5 + 8 * v6 + 32);
      }

      v30 = v29;
      ++v6;
      v32 = *&v29[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
      v31 = *&v29[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
      v166[0] = 0;
      *&v170 = v32;
      *(&v170 + 1) = v31;

      OUTLINED_FUNCTION_117_11();
      v33 = v28();
      v18 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
      OUTLINED_FUNCTION_157_7();
      sub_1E3CA4D10();
      v33(v173, 0);
    }

    while (v26 != v6);
  }

  OUTLINED_FUNCTION_68_5();
  v35 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  v159 = (*(v36 + 1088))();
  v160 = v37;
  v38 = MEMORY[0x1E69E7CC0];
  v175 = MEMORY[0x1E69E7CC0];
  v39 = (*((*v35 & v18->Kind) + 0x278))();
  v40 = 0;
  v41 = *(v39 + 16);
  v42 = (v39 + 32);
  v43 = &qword_1ECF2F0F0;
  while (1)
  {
    if (v41 == v40)
    {

      v174 = 0;
      memset(v173, 0, sizeof(v173));
      goto LABEL_19;
    }

    if (v40 >= *(v39 + 16))
    {
      goto LABEL_96;
    }

    sub_1E38C6028(v42, &v170);
    sub_1E38C6028(&v170, v173);
    v44 = OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v40;
    __swift_destroy_boxed_opaque_existential_1(&v170);
    v42 = (v42 + 40);
  }

  sub_1E3251BE8(&v170, v173);
LABEL_19:
  v46 = v161;
  sub_1E3E2597C(v173, &v170, &qword_1ECF2EC80, &qword_1E42AD1C0);
  AssociatedTypeWitness = *(&v171 + 1);
  if (*(&v171 + 1))
  {
    v48 = OUTLINED_FUNCTION_9_141(&v170);
    v42 = v49(v48);
    OUTLINED_FUNCTION_59_1();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_156_1();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v43 = AssociatedTypeWitness[2];
    if (v43)
    {
      *&v164 = v38;
      sub_1E377FD30(0, v43, 0);
      v50 = v164;
      v51 = (AssociatedTypeWitness + 4);
      do
      {
        sub_1E38C6028(v51, v166);
        v52 = v167;
        v42 = v168;
        OUTLINED_FUNCTION_0_257(v166, v167);
        v54 = v53(v52);
        v56 = v55;
        __swift_destroy_boxed_opaque_existential_1(v166);
        *&v164 = v50;
        v58 = *(v50 + 16);
        v57 = *(v50 + 24);
        if (v58 >= v57 >> 1)
        {
          v60 = OUTLINED_FUNCTION_35(v57);
          v42 = &v164;
          sub_1E377FD30(v60, v58 + 1, 1);
          v50 = v164;
        }

        *(v50 + 16) = v58 + 1;
        v59 = v50 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
        v51 += 40;
        v43 = (v43 - 1);
      }

      while (v43);

      v46 = v161;
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(&v170);
  }

  else
  {
    sub_1E325F7FC(&v170, &qword_1ECF2EC80, &qword_1E42AD1C0);
    v50 = MEMORY[0x1E69E7CC0];
  }

  v61 = sub_1E32772D8(v50);
  v169 = v61;
  if (!sub_1E32AE9B0(v46))
  {
    OUTLINED_FUNCTION_114_2();

    v162 = MEMORY[0x1E69E7CC0];
    goto LABEL_72;
  }

  v162 = type metadata accessor for LibrarySidebarItem();
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_27_29();
  v62 += 82;
  v157 = *v62;
  v156 = v62;
  OUTLINED_FUNCTION_189_3(v46 & 0xC000000000000001);
  v155 = v46 + 32;
  do
  {
    OUTLINED_FUNCTION_153_6();
    sub_1E34AF4E4(v50, AssociatedTypeWitness == 0, v46);
    if (AssociatedTypeWitness)
    {
      v63 = OUTLINED_FUNCTION_53();
      v64 = MEMORY[0x1E6911E60](v63);
    }

    else
    {
      v64 = *(v155 + 8 * v50);
    }

    v65 = v64;
    if (__OFADD__(v50++, 1))
    {
      goto LABEL_95;
    }

    v67 = &v64[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
    v69 = *&v64[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
    v68 = *&v64[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

    OUTLINED_FUNCTION_117_11();
    OUTLINED_FUNCTION_132_2();
    v70();
    OUTLINED_FUNCTION_145();
    *&v170 = v69;
    *(&v170 + 1) = v68;
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v71 = OUTLINED_FUNCTION_89_13();
    sub_1E3CA4D00(v71, v72, v43, MEMORY[0x1E69E6158], v73, MEMORY[0x1E69E6168]);

    if (!v166[0])
    {
      v85 = 0;
      v86 = 1;
      goto LABEL_56;
    }

    sub_1E3E2597C(v173, v166, &qword_1ECF2EC80, &qword_1E42AD1C0);
    if (!v167)
    {
      OUTLINED_FUNCTION_82();
      sub_1E325F7FC(v87, v88, v89);
      v170 = 0u;
      v171 = 0u;
      v172 = 0;
LABEL_54:
      sub_1E325F7FC(&v170, &qword_1ECF2EC80, &qword_1E42AD1C0);
      goto LABEL_55;
    }

    v74 = OUTLINED_FUNCTION_9_141(v166);
    v75(v74);
    OUTLINED_FUNCTION_26_90();
    v76 = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_11_5();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v77 = 0;
    v78 = *(v76 + 16);
    for (i = v76 + 32; ; i += 40)
    {
      if (v78 == v77)
      {

        v172 = 0;
        v170 = 0u;
        v171 = 0u;
        goto LABEL_51;
      }

      if (v77 >= *(v76 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        return;
      }

      sub_1E38C6028(i, &v164);
      v80 = v165;
      OUTLINED_FUNCTION_0_257(&v164, v165);
      if (v81(v80) == *v67 && v82 == *(v67 + 1))
      {
        break;
      }

      v84 = sub_1E42079A4();

      if (v84)
      {
        goto LABEL_50;
      }

      __swift_destroy_boxed_opaque_existential_1(&v164);
      ++v77;
    }

LABEL_50:

    sub_1E3251BE8(&v164, &v170);
LABEL_51:
    v90 = MEMORY[0x1E69E7D40];
    __swift_destroy_boxed_opaque_existential_1(v166);
    if (!*(&v171 + 1))
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_157_7();
    if (swift_dynamicCast())
    {
      v91 = *((*v90 & *v166[0]) + 0xA8);
      v92 = v166[0];
      LODWORD(v91) = v91();

      OUTLINED_FUNCTION_27_29();
      v94 = (*(v93 + 168))();

      v85 = v91 ^ v94;
      v86 = v91 ^ v94;
      goto LABEL_56;
    }

LABEL_55:
    v85 = 0;
    v86 = 0;
LABEL_56:
    if (!v160)
    {
      if ((v85 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (v159 != *v67 || v160 != *(v67 + 1))
    {
      if (((v86 & sub_1E42079A4() | v85) & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_64:
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();

      goto LABEL_65;
    }

    if ((v86 | v85))
    {
      goto LABEL_64;
    }

LABEL_65:

    v98 = OUTLINED_FUNCTION_27_0();
    sub_1E397B708(v98, v99);

    AssociatedTypeWitness = v65;
    OUTLINED_FUNCTION_90_2();
    v43 = sub_1E37EE4E8(v100);
    v42 = &v175;
    MEMORY[0x1E6910BF0]();
    v101 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v101 >> 1)
    {
      OUTLINED_FUNCTION_35(v101);
      sub_1E42062F4();
    }

    sub_1E4206324();

    OUTLINED_FUNCTION_89_0();
    v46 = v161;
  }

  while (v50 != v102);
  v162 = v175;
  OUTLINED_FUNCTION_114_2();

  v61 = v169;
LABEL_72:
  OUTLINED_FUNCTION_4_4();
  v105 = v104 & v103;
  v107 = (v106 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v108 = 0;
  if (v105)
  {
    goto LABEL_77;
  }

  while (2)
  {
    v109 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      goto LABEL_94;
    }

    if (v109 < v107)
    {
      v105 = *(v61 + 56 + 8 * v109);
      ++v108;
      if (!v105)
      {
        continue;
      }

      v108 = v109;
LABEL_77:
      OUTLINED_FUNCTION_172_0();
      v112 = *v110;
      v111 = *(v110 + 8);
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();
      v113 += 82;
      v114 = *v113;
      v115 = v113;
      v116 = swift_bridgeObjectRetain_n();
      v114(v116);
      OUTLINED_FUNCTION_134_2();
      *&v170 = v112;
      *(&v170 + 1) = v111;
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      v117 = OUTLINED_FUNCTION_89_13();
      sub_1E3CA4D00(v117, v118, v115, MEMORY[0x1E69E6158], v119, MEMORY[0x1E69E6168]);

      v120 = v166[0];
      if (v166[0])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_117_11();
          [v121 v122];

          goto LABEL_82;
        }
      }

      OUTLINED_FUNCTION_117_11();
LABEL_82:
      v105 &= v105 - 1;
      *&v164 = 0;
      v166[0] = v112;
      v166[1] = v111;
      v123 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x2A0);

      v123(&v170);
      OUTLINED_FUNCTION_159_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
      sub_1E3CA4D10();
      v124 = OUTLINED_FUNCTION_192_2();
      v123(v124);

      if (!v105)
      {
        continue;
      }

      goto LABEL_77;
    }

    break;
  }

  v125 = sub_1E324FBDC();
  v126 = v152;
  v127 = v151;
  v128 = v154;
  (*(v152 + 16))(v151, v125, v154);
  v129 = sub_1E41FFC94();
  v130 = sub_1E4206814();
  if (OUTLINED_FUNCTION_262(v130))
  {
    v131 = OUTLINED_FUNCTION_6_21();
    v132 = OUTLINED_FUNCTION_100();
    *&v170 = v132;
    *v131 = 136315138;
    v133 = type metadata accessor for LibrarySidebarItem();
    OUTLINED_FUNCTION_190_2();

    MEMORY[0x1E6910C30](v134, v133);

    v135 = OUTLINED_FUNCTION_39_0();
    v138 = sub_1E3270FC8(v135, v136, v137);

    *(v131 + 4) = v138;
    _os_log_impl(&dword_1E323F000, v129, v130, "RootSplitViewController:: Pad:: new library sidebar items %s", v131, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v132);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();

    (*(v126 + 8))(v127, v154);
    v139 = MEMORY[0x1E69E7D40];
  }

  else
  {

    (*(v126 + 8))(v127, v128);
    v139 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_190_2();
  }

  OUTLINED_FUNCTION_25_5();
  v141 = *(v140 + 384);

  v141(v142);
  sub_1E3E13168();

  OUTLINED_FUNCTION_39();
  v144 = (*((*v139 & v143) + 0x118))();
  if (v144 != 3)
  {
    v145 = v144;
    OUTLINED_FUNCTION_25_5();
    if ((*(v146 + 272))())
    {
      OUTLINED_FUNCTION_25_5();
      if ((*(v147 + 304))())
      {
        OUTLINED_FUNCTION_16_89();
        (*(v148 + 448))(v145);
        OUTLINED_FUNCTION_39();
        (*((*v139 & v149) + 0x120))(3);
      }
    }
  }

  sub_1E325F7FC(v173, &qword_1ECF2EC80, &qword_1E42AD1C0);

LABEL_92:
  OUTLINED_FUNCTION_25_2();
}