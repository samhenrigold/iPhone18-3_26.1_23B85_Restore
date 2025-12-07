void sub_1E3ED8390()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v3 = v2;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v30.receiver = v0;
  v30.super_class = type metadata accessor for StackTemplateController(0);
  objc_msgSendSuper2(&v30, sel_vuiScrollViewDidScroll_, v3);
  if (*&v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarGradientView])
  {
    sub_1E3ED86DC();
  }

  if (sub_1E39DFFC8())
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_12_5();
  v6 = (*(v5 + 2056))();
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = [v7 vuiView];
  if (!v8)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_3();

  v31.origin.x = OUTLINED_FUNCTION_6();
  Height = CGRectGetHeight(v31);
  [v3 contentOffset];
  if (v11 > 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = -v11;
  }

  v13 = [v1 view];
  if (!v13)
  {
    goto LABEL_21;
  }

  [v13 bounds];
  OUTLINED_FUNCTION_104_14();
  OUTLINED_FUNCTION_1_221();
  CGRectGetWidth(v32);
  if (v12 == 0.0 && Height != 0.0)
  {
    OUTLINED_FUNCTION_12_5();
    (*(v14 + 440))();
    OUTLINED_FUNCTION_133_9();
    v15 = sub_1E41FE7E4();
    v16 = OUTLINED_FUNCTION_53();
    v18 = v17(v16);
    v19 = OUTLINED_FUNCTION_137_8(v18, sel_cellForItemAtIndexPath_);

    if (v19)
    {
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v19, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell))
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_91_17();
        if (v21())
        {
          OUTLINED_FUNCTION_12_5();
          (*(v22 + 776))();
          v23 = v19;
          v24 = OUTLINED_FUNCTION_24_4();
          sub_1E3ED8964(v24, v25, v26);
        }
      }
    }
  }

  v27 = [v7 vuiView];

  if (v27)
  {
    v28 = OUTLINED_FUNCTION_1_36();
    [v27 v29];

    sub_1E3ED922C();
LABEL_19:
    OUTLINED_FUNCTION_20_0();
    return;
  }

LABEL_22:
  __break(1u);
}

id sub_1E3ED86DC()
{
  v1 = v0;
  OUTLINED_FUNCTION_106();
  sub_1E41FE874();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_9();
  [v0 contentOffset];
  v4 = v3;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result window];

  if (!v7 || (v6 = [v7 windowScene], v7, !v6) || (v8 = objc_msgSend(v6, sel_statusBarManager), v6, !v8))
  {
    v10 = 0.0;
    if (v4 <= 0.0)
    {
      goto LABEL_12;
    }

    v9 = v4 + 0.0;
LABEL_9:
    OUTLINED_FUNCTION_12_5();
    (*(v11 + 440))();
    v12 = OUTLINED_FUNCTION_12_143();
    MEMORY[0x1E6909170](v12);
    v13 = sub_1E41FE7E4();
    v14 = OUTLINED_FUNCTION_74();
    v15(v14);
    v16 = [v6 cellForItemAtIndexPath_];

    v10 = 1.0;
    if (v16)
    {
      [v16 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v27.origin.x = v18;
      v27.origin.y = v20;
      v27.size.width = v22;
      v27.size.height = v24;
      Height = CGRectGetHeight(v27);
      if (Height > 0.0)
      {
        v10 = v9 / Height;
      }
    }

    goto LABEL_12;
  }

  [v8 statusBarFrame];
  OUTLINED_FUNCTION_9_10();

  v26.origin.x = OUTLINED_FUNCTION_24_0();
  v9 = v4 + CGRectGetHeight(v26);
  v10 = 0.0;
  if (v9 > 0.0)
  {
    goto LABEL_9;
  }

LABEL_12:
  result = *&v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarGradientView];
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_1E3ED8964(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = a1;
  if (!a1)
  {
    v37 = 1.0;
    v7 = 1.0;
    goto LABEL_43;
  }

  v7 = 1.0;
  v8 = 1.0 - a3;
  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v11 = *(v10 + 896);
  v12 = v6;
  v13 = v8 * v11();
  ObjectType = swift_getObjectType();
  v93 = a2;
  aBlock = v12;
  v15 = *(a2 + 8);
  v16 = (*(v15 + 88))(ObjectType, v15);
  OUTLINED_FUNCTION_36_3();
  v18 = *((*v9 & v17) + 0x1B8);
  v19 = v18();
  [v19 contentInset];
  v21 = v20;

  v22 = -v21 - (*((*v9 & *v4) + 0x338))();
  OUTLINED_FUNCTION_88_17();
  v23 = OUTLINED_FUNCTION_24_93();
  v25 = v24(v23);
  v11();
  if (v16 > 0.0 || v13 <= 0.0)
  {
    v27 = v25 - v16 - v22;
    v7 = 0.0;
    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    v28 = v27 / v26;
    v29 = v28 < 0.0 || v28 > v8;
    if (!v29 && v16 > 0.0)
    {
      v7 = (v13 + v22 - v25) / v16 + 1.0;
    }
  }

  OUTLINED_FUNCTION_88_17();
  v30 = OUTLINED_FUNCTION_24_93();
  v32 = v31(v30);
  OUTLINED_FUNCTION_88_17();
  v33 = OUTLINED_FUNCTION_24_93();
  v35 = v34(v33);
  v11();
  if (v32 <= 0.0 && v13 > 0.0)
  {
    v37 = 1.0;
    goto LABEL_29;
  }

  v38 = v35 - v32 - v22;
  v37 = 0.0;
  if (v38 < 0.0)
  {
    v38 = 0.0;
  }

  v39 = v38 / v36;
  if (v39 < 0.0 || v39 > v8)
  {
    aBlock = v12;
    if (![v4 vuiView])
    {
LABEL_85:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_106();
    type metadata accessor for LayoutGrid();
    [v4 bounds];
    OUTLINED_FUNCTION_9_10();

    v101.origin.x = OUTLINED_FUNCTION_24_0();
    Width = CGRectGetWidth(v101);
    v42 = sub_1E3A2579C(Width);
    if ((*(v15 + 112))(v42, ObjectType, v15))
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.0;
    }

    goto LABEL_29;
  }

  if (v32 <= 0.0)
  {
LABEL_29:
    v91 = 1;
    goto LABEL_30;
  }

  v91 = 0;
  v37 = (v13 + v22 - v35) / v32 + 1.0;
LABEL_30:
  OUTLINED_FUNCTION_12_5();
  v44 = (*(v43 + 2056))();
  if (v44)
  {
    v45 = v44;
    v46 = v4;
    v47 = [v44 vuiView];

    if (!v47)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    [v47 bounds];
    OUTLINED_FUNCTION_104_14();
    OUTLINED_FUNCTION_1_221();
    v48 = CGRectGetHeight(v102) == 0.0;
  }

  else
  {
    v46 = v4;
    v48 = 1;
  }

  OUTLINED_FUNCTION_88_17();
  v49 = OUTLINED_FUNCTION_24_93();
  if ((v50(v49) & 1) != 0 && (v51 = v18(), v52 = [v51 visibleCells], v51, sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8), v53 = sub_1E42062B4(), v52, sub_1E32AE9B0(v53), OUTLINED_FUNCTION_65_31(), , v52))
  {
    OUTLINED_FUNCTION_88_17();
    v54 = OUTLINED_FUNCTION_24_93();
    v56 = v55(v54);

    v57 = v91;
    if (!v48)
    {
      v57 = 0;
    }

    if (v56)
    {
      a1 = 0;
    }

    else
    {
      a1 = v57;
    }
  }

  else
  {

    a1 = 0;
  }

  v4 = v46;
  a2 = v93;
LABEL_43:
  sub_1E3ED121C(a1, 0);
  v58 = [v4 parentViewController];
  if (v58)
  {
    v59 = v58;
    v60 = [v58 navigationItem];

    if (v60)
    {
      v94 = v4;
      v61 = sub_1E3EDF6FC(v60, &selRef_leftBarButtonItems);
      v62 = MEMORY[0x1E69E7CC0];
      if (v61)
      {
        v63 = v61;
      }

      else
      {
        v63 = MEMORY[0x1E69E7CC0];
      }

      v64 = sub_1E3EDF6FC(v60, &selRef_rightBarButtonItems);
      if (!v64)
      {
        v64 = v62;
      }

      aBlock = v63;
      sub_1E3EDF650(v64);
      v65 = v63;
      if (v6)
      {
        v66 = swift_getObjectType();
        aBlock = v6;
        v67 = *(a2 + 8);
        v68 = *(v67 + 8);
        v69 = v6;
        if (v68(v66, v67))
        {
          v70 = v37;
        }

        else
        {
          v70 = 1.0;
        }

        if (sub_1E3EDAFF8())
        {
          aBlock = v69;
          v71 = v68(v66, v67);
        }

        else
        {

          v71 = 0;
        }
      }

      else
      {
        v71 = 0;
        v70 = 1.0;
      }

      v72 = [v60 titleView];
      if (v72)
      {
        v73 = v72;
        type metadata accessor for UberNavigationBarTitleView();
        OUTLINED_FUNCTION_40_3();
        if (swift_dynamicCastClass())
        {
          sub_1E398D804(v71 & 1, v70);
        }
      }

      v92 = v60;
      v74 = sub_1E32AE9B0(v65);
      for (i = 0; ; ++i)
      {
        if (v74 == i)
        {

          v4 = v94;
          goto LABEL_79;
        }

        if ((v65 & 0xC000000000000001) != 0)
        {
          v76 = MEMORY[0x1E6911E60](i, v65);
        }

        else
        {
          if (i >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_83;
          }

          v76 = *(v65 + 8 * i + 32);
        }

        v77 = v76;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v78 = [v76 customView];
        if (v78)
        {
          v79 = v78;
          objc_opt_self();
          OUTLINED_FUNCTION_31_7();
          v80 = swift_dynamicCastObjCClass();
          if (v80)
          {
            v81 = v80;
            if ((sub_1E39DFFC8() & 1) == 0 || [v81 buttonType] == 7)
            {
              [v81 setScrolledNonUberPercentage_];
            }

            v82 = v79;
          }

          else
          {
            v82 = v77;
            v77 = v79;
          }
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

LABEL_79:
  if ([v4 transitionCoordinator])
  {
    v83 = swift_allocObject();
    *(v83 + 16) = v4;
    *(v83 + 24) = v7;
    *(v83 + 32) = v37;
    v99 = sub_1E3EDFA9C;
    v100 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v96 = 1107296256;
    v97 = sub_1E37C7850;
    v98 = &block_descriptor_89_1;
    v84 = _Block_copy(&aBlock);
    v85 = v4;

    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v7;
    *(v86 + 32) = v37;
    v99 = sub_1E3EDFCE4;
    v100 = v86;
    aBlock = MEMORY[0x1E69E9820];
    v96 = 1107296256;
    v97 = sub_1E37C7850;
    v98 = &block_descriptor_95_1;
    v87 = _Block_copy(&aBlock);
    v88 = v85;

    v89 = OUTLINED_FUNCTION_121();
    [v89 v90];
    _Block_release(v87);
    _Block_release(v84);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E3EDC828(v7, v37);
  }
}

void sub_1E3ED922C()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 2056))();
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_didEnqueueImpressionMetrics;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_didEnqueueImpressionMetrics))
    {
    }

    else
    {
      OUTLINED_FUNCTION_12_5();
      v5 += 55;
      v6 = *v5;
      v26 = v7;
      v8 = (*v5)();
      [v8 adjustedContentInset];
      v10 = v9;

      v11 = &v26[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset];
      v12 = OUTLINED_FUNCTION_5_0(&v26[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset], v27);
      v13 = *v11;
      v14 = 0.0;
      if (*(v11 + 8))
      {
        v13 = 0.0;
      }

      v15 = v13 / v10;
      v16 = (v6)(v12);
      [v16 contentOffset];
      v18 = v17;

      if (v18 < 0.0)
      {
        v19 = v6();
        [v19 contentOffset];
        v21 = v20;

        v22 = (v10 + v21) / v10;
        if (v22 > 1.0)
        {
          v22 = 1.0;
        }

        v14 = 1.0 - v22;
      }

      if (v15 + (1.0 - v15) * 0.5 >= v14)
      {
      }

      else
      {
        v23 = sub_1E3A517DC();
        if (v23)
        {
          v24 = v23;
          [v23 enqueueImpressionMetrics];

          v25 = v24;
        }

        else
        {
          v25 = v26;
        }

        *(v1 + v4) = 1;
      }
    }
  }
}

void sub_1E3ED94AC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_9();
  nullsub_1();
  if (sub_1E3ED23E0(v3, 1, v8))
  {
    v9 = MEMORY[0x1E6909190](0, 0);
    v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v9);
    v11 = sub_1E41FE7E4();
    v12 = OUTLINED_FUNCTION_137_8(v11, sel_vui_cellForItemAtIndexPath_);

    if (v12)
    {
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v12, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell))
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_91_17();
        if (v14())
        {
          OUTLINED_FUNCTION_146();
          sub_1E3ED4C54();

LABEL_8:
          (*(v6 + 8))(v1, v4);
          goto LABEL_9;
        }
      }
    }

    OUTLINED_FUNCTION_4_154();
    (*(v15 + 904))(0.0);
    goto LABEL_8;
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3ED96AC@<D0>(uint64_t a1@<X8>)
{
  sub_1E3F28CE8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1E3ED96F0(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  (*(v2 + 440))();
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_64();
  (*(v3 + 184))(a1);
}

void sub_1E3ED97A0()
{
  OUTLINED_FUNCTION_156_0();
  sub_1E41FE874();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x1B8))();
  v3 = OUTLINED_FUNCTION_12_143();
  MEMORY[0x1E6909170](v3);
  v4 = sub_1E41FE7E4();
  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  v7 = [v0 cellForItemAtIndexPath_];

  if (v7)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v7, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_91_17();
      if (v9())
      {
        OUTLINED_FUNCTION_75();
        sub_1E3ED4C54();
      }
    }
  }
}

void sub_1E3ED9924()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  OUTLINED_FUNCTION_96_19();
  sub_1E41FE874();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_9();
  v5 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_lastShowcasePercentage;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_lastShowcasePercentage) != v2)
  {
    if (sub_1E39DFFC8())
    {
      OUTLINED_FUNCTION_12_5();
      (*(v6 + 440))();
      v7 = OUTLINED_FUNCTION_12_143();
      MEMORY[0x1E6909190](v7);
      v8 = sub_1E41FE7E4();
      v9 = OUTLINED_FUNCTION_74();
      v10(v9);
      v11 = [v1 vui:v8 cellForItemAtIndexPath:?];

      if (v11)
      {
        ObjectType = swift_getObjectType();
        v1 = dynamic_cast_existential_1_conditional(v11, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell);
        if (!v1)
        {
        }
      }

      else
      {
        v1 = 0;
      }

      OUTLINED_FUNCTION_24_4();
      sub_1E3ED9C30();
      OUTLINED_FUNCTION_24_4();
      sub_1E3ED9E58();
    }

    OUTLINED_FUNCTION_4_154();
    if ((*(v13 + 896))() > 0.0)
    {
      OUTLINED_FUNCTION_4_154();
      (*(v14 + 440))();
      v15 = OUTLINED_FUNCTION_12_143();
      MEMORY[0x1E6909190](v15);
      v16 = sub_1E41FE7E4();
      v17 = OUTLINED_FUNCTION_74();
      v18(v17);
      v19 = [v1 cellForItemAtIndexPath_];

      if (v19)
      {
        v20 = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v19, v20, &protocol descriptor for ShowcasingCollectionViewCell))
        {
          swift_getObjectType();
          OUTLINED_FUNCTION_91_17();
          if (v21())
          {
            sub_1E3EDA3B0(v2);
            v22 = v19;
            v23 = OUTLINED_FUNCTION_75();
            sub_1E3ED8964(v23, v24, v25);
            OUTLINED_FUNCTION_75();
            sub_1E3EDA560();

LABEL_18:
            *(v3 + v5) = v2;
            goto LABEL_19;
          }
        }
      }
    }

    if (*(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_hasEnabledShowcasing) == 1)
    {
      sub_1E3ED57BC();
    }

    goto LABEL_18;
  }

LABEL_19:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3ED9C30()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_96_19();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!v7)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v16(v11);
    v17 = v3;
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_6_21();
      v30 = OUTLINED_FUNCTION_100();
      *v20 = 136315138;
      v21 = sub_1E3ED148C();
      OUTLINED_FUNCTION_97_4(v21, v22);
      OUTLINED_FUNCTION_34_3();
      *(v20 + 4) = v1;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    v28 = OUTLINED_FUNCTION_13_8();
    v29(v28);
    sub_1E3EDCAC0();
    goto LABEL_8;
  }

  v12 = v7;
  if ([v3 vuiView])
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for LayoutGrid();
    [v7 bounds];
    OUTLINED_FUNCTION_9_10();

    v31.origin.x = OUTLINED_FUNCTION_24_0();
    Width = CGRectGetWidth(v31);
    v14 = sub_1E3A2579C(Width);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 16))(v14, ObjectType, v2);
    sub_1E3EDCAC0();

LABEL_8:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  __break(1u);
}

void sub_1E3ED9E58()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_96_19();
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v73 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v73 - v16;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x7F8))(v2);
  if (v18 != 3)
  {
    v25 = v18;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v26(v17);
    v27 = v0;
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_49_0();
      v31 = OUTLINED_FUNCTION_100();
      v75 = v31;
      *v30 = 136315394;
      v32 = sub_1E3ED148C();
      v34 = OUTLINED_FUNCTION_97_4(v32, v33);
      v74 = v8;
      v35 = v10;
      v36 = v34;

      *(v30 + 4) = v36;
      *(v30 + 12) = 2048;
      *(v30 + 14) = OUTLINED_FUNCTION_13_30(v25);
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();

      (*(v35 + 8))(v17, v74);
    }

    else
    {

      (*(v10 + 8))(v17, v8);
    }

LABEL_13:
    sub_1E3EDCEFC();
LABEL_18:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  if (!v7)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v42(v1);
    v43 = v0;
    v44 = sub_1E41FFC94();
    v45 = sub_1E42067E4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_6_21();
      v47 = OUTLINED_FUNCTION_100();
      v75 = v47;
      *v46 = 136315138;
      v48 = sub_1E3ED148C();
      OUTLINED_FUNCTION_97_4(v48, v49);
      OUTLINED_FUNCTION_34_3();
      *(v46 + 4) = 0;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v1, v8);
    goto LABEL_13;
  }

  v19 = v7;
  if ([v0 vuiView])
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for LayoutGrid();
    [v0 bounds];
    OUTLINED_FUNCTION_9_10();

    v76.origin.x = OUTLINED_FUNCTION_24_0();
    Width = CGRectGetWidth(v76);
    v21 = sub_1E3A2579C(Width);
    v22 = [v0 parentViewController];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 vuiIsNavigationRoot];
    }

    else
    {
      v24 = 0;
    }

    ObjectType = swift_getObjectType();
    v75 = v19;
    v56 = (*(*(v5 + 8) + 24))(v21, v24, ObjectType, v2);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v57(v14);
    v58 = v3;
    v59 = sub_1E41FFC94();
    v60 = sub_1E42067E4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v73[0] = v10;
      v62 = v61;
      v63 = OUTLINED_FUNCTION_100();
      v74 = v19;
      v75 = v63;
      v64 = v63;
      *v62 = 136315650;
      v65 = sub_1E3ED148C();
      v67 = OUTLINED_FUNCTION_97_4(v65, v66);
      v73[1] = v58;
      v68 = v24;
      v69 = v56;
      v70 = v67;

      *(v62 + 4) = v70;
      *(v62 + 12) = 2048;
      *(v62 + 14) = OUTLINED_FUNCTION_13_30(v69);
      *(v62 + 22) = 1024;
      *(v62 + 24) = v68;
      _os_log_impl(&dword_1E323F000, v59, v60, "%s configNavBarTitleVisibility: titleVisibility = %ld, isRootPage:%{BOOL}d", v62, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      v19 = v74;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v71 = OUTLINED_FUNCTION_13_8();
    v72(v71);
    sub_1E3EDCEFC();

    goto LABEL_18;
  }

  __break(1u);
}

void sub_1E3EDA3B0(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_navBarGradientView);
  if (v2)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x380);
    v14 = v2;
    v6 = v5();
    v7 = 1.0;
    if (v6 > 0.0)
    {
      OUTLINED_FUNCTION_21();
      v9 = (*(v8 + 440))();
      [v9 contentInset];
      v11 = v10;

      v12 = -v11 - (*((*v4 & *v1) + 0x338))();
      v13 = v5() - v12;
      v7 = 1.0 - fmin(fmax((1.0 - a1) / (v13 / v5()), 0.0), 1.0);
    }

    [v14 setAlpha_];
  }
}

void sub_1E3EDA560()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_96_19();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  v12 = *sub_1E3E60700();
  if (sub_1E3EDD174())
  {
    if (v8)
    {
      v71 = v12;
      ObjectType = swift_getObjectType();
      v73 = v8;
      v14 = *(v6 + 8);
      v15 = *(v14 + 8);
      v16 = v8;
      if (v15(ObjectType, v14))
      {
        v17 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8);
        v18 = v17();
        [v18 contentInset];
        v20 = v19;

        v21 = -v20 - (*((*MEMORY[0x1E69E7D40] & *v4) + 0x338))();
        v73 = v16;
        v22 = v17();
        [v22 contentOffset];
        v24 = v23;

        v12 = (*(v14 + 56))(ObjectType, v14, v3, v21, v24);
      }

      else
      {

        v12 = v71;
      }
    }

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v72 = v12;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v32(v1);
      v33 = v4;
      v34 = sub_1E41FFC94();
      v35 = sub_1E4206814();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_6_21();
        v37 = OUTLINED_FUNCTION_100();
        v73 = v37;
        *v36 = 136315138;
        v38 = sub_1E3ED148C();
        v40 = sub_1E3270FC8(v38, v39, &v73);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_1E323F000, v34, v35, "%s animateShowcasingCellAndNavBarTintColor: update tint color", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();
      }

      v41 = OUTLINED_FUNCTION_53();
      v42(v41);
      v43 = [v33 parentViewController];
      v12 = v72;
      if (v43)
      {
        v44 = v43;
        v45 = [v43 navigationItem];

        if (v45)
        {
          v46 = sub_1E3EDF6FC(v45, &selRef_leftBarButtonItems);
          v47 = MEMORY[0x1E69E7CC0];
          if (v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = MEMORY[0x1E69E7CC0];
          }

          v49 = sub_1E3EDF6FC(v45, &selRef_rightBarButtonItems);
          if (!v49)
          {
            v49 = v47;
          }

          v73 = v48;
          sub_1E3EDF650(v49);
          v50 = v73;
          v51 = [v45 titleView];
          if (v51)
          {
            v52 = v51;
            v53 = type metadata accessor for UberNavigationBarTitleView();
            if (OUTLINED_FUNCTION_109_8(v53) && ((OUTLINED_FUNCTION_71(), v54 = MEMORY[0x1E69E7D40], OUTLINED_FUNCTION_64(), v56 = (*(v55 + 176))(), [v56 setTintColor_], v56, OUTLINED_FUNCTION_26_3(), v58 = (*((*v54 & v57) + 0x188))(), v58 == 2) || (v58 & 1) == 0))
            {
              v70 = sub_1E39DFFC8();
            }

            else
            {
              v70 = 1;
            }
          }

          else
          {
            v70 = 1;
          }

          v59 = sub_1E32AE9B0(v50);
          for (i = 0; v59 != i; ++i)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v61 = MEMORY[0x1E6911E60](i, v50);
            }

            else
            {
              if (i >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v61 = *(v50 + 8 * i + 32);
            }

            v62 = v61;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_46:
              __break(1u);
              return;
            }

            v63 = [v61 customView];
            if (v63)
            {
              v64 = v63;
              objc_opt_self();
              v65 = swift_dynamicCastObjCClass();
              if (v65)
              {
                v66 = v65;
                if ([v65 allowsUberTinting])
                {
                  [v66 setTintColor_];
                }
              }
            }

            else
            {
              v64 = v62;
            }
          }

          v12 = v72;
          if ((v70 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      v67 = [v33 navigationController];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 navigationBar];

        [v69 setTintColor_];
        v12 = v69;
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v25(v2);
    v26 = sub_1E41FFC94();
    v27 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_161(v27))
    {
      v28 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v28);
      OUTLINED_FUNCTION_66_31(&dword_1E323F000, v29, v4, "Trying to modify the nav bar tint color while the vc is not visible");
      OUTLINED_FUNCTION_65_0();
    }

    v30 = OUTLINED_FUNCTION_110_12();
    v31(v30, v9);
  }

LABEL_44:

  OUTLINED_FUNCTION_10_3();
}

void *sub_1E3EDABBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, v5);
    if (*(v1 + v2) == 1)
    {
      v3 = v1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1E3EDAC24()
{

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_pagePerformanceProvider);
}

id sub_1E3EDACD8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for StackTemplateController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_1E3EDAEE4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 1968))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3EDAFF8()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 560))();
  if (result)
  {
    OUTLINED_FUNCTION_26_0();
    v5 = (*(v4 + 464))();

    if (v5)
    {
      result = sub_1E32AE9B0(v5);
      if (result)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E6911E60](0, v5);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        if (sub_1E385054C(v6[49]))
        {
          v7 = v6[49];
          switch(v7)
          {
            case 82:
            case 135:
              goto LABEL_19;
            case 86:
              v16 = [v1 traitCollection];
              v17 = [v16 isAXEnabled];

              return v17 ^ 1;
            case 123:
LABEL_19:

              return 1;
          }

          if (v7 == 83 && (*(*v6 + 392))())
          {
            type metadata accessor for CanonicalBannerLayout();
            v8 = swift_dynamicCastClass();
            if (v8)
            {
              v9 = v8;
              v10 = (*(*v6 + 488))();
              if (v10)
              {
                v12 = sub_1E373E010(35, v10, v11);

                if (v12)
                {

                  type metadata accessor for CanonicalBannerViewCell();
                  v13 = (*(*v9 + 1912))();
                  v14 = [v1 traitCollection];
                  v15 = sub_1E3D17C34(v13, v14, 1, 1);

                  return v15 & 1;
                }
              }
            }
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E3EDB2EC()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 560))())
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 464))();

  if (!v2)
  {
    goto LABEL_12;
  }

  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6911E60](0, v2);
LABEL_7:

    if (sub_1E385054C(*(v4 + 98)))
    {
      v5 = *(v4 + 98);

      if ((v5 - 82) < 0x36)
      {
        v6 = 0x20020000000003uLL >> (v5 - 82);
        return v6 & 1;
      }
    }

    else
    {
    }

LABEL_12:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1E3EDB428()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v141 = v7;
  v142 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v133 - v14;
  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  OUTLINED_FUNCTION_19_3();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v135 = v4;
    v139 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController;
    v18 = *&v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController];
    v138 = v1;

    if (v18)
    {
      v19 = v18;
      v137 = sub_1E3A517DC();
    }

    else
    {
      v137 = 0;
    }

    v136 = v0;
    v21 = *(*v17 + 896);

    v140 = v21(v22);

    v23 = v138;
    v24 = *&v138[v139];
    if (v24)
    {
      v25 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
      OUTLINED_FUNCTION_5_0(v24 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, &v145);
      v26 = *(v24 + v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = v137;
    if (v140)
    {
      if (v137 && v140 == v137)
      {
        v28 = sub_1E324FBDC();
        v29 = *(v142 + 16);
        v29(v3, v28, v141);
        v30 = sub_1E41FFC94();
        v31 = sub_1E4206814();
        if (OUTLINED_FUNCTION_20_11(v31))
        {
          v32 = OUTLINED_FUNCTION_125_0();
          *v32 = 0;
          _os_log_impl(&dword_1E323F000, v30, v2, "StackTemplateController:: account message: new message same as old message", v32, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        v33 = v141;
        v34 = *(v142 + 8);
        v35 = OUTLINED_FUNCTION_53();
        v34(v35);
        if ((v26 & 1) == 0)
        {
          v29(v5, v28, v33);
          v36 = sub_1E41FFC94();
          v37 = sub_1E4206814();
          if (OUTLINED_FUNCTION_161(v37))
          {
            v38 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_37_7(v38);
            OUTLINED_FUNCTION_82_0();
            _os_log_impl(v39, v40, v41, v42, v43, 2u);
            v33 = v141;
            OUTLINED_FUNCTION_6_0();
          }

          (v34)(v5, v33);
          sub_1E3ED2BC4();
        }

        OUTLINED_FUNCTION_140_1();

        goto LABEL_73;
      }

      [v140 setShouldAutomaticallyReportMetrics_];
      v58 = sub_1E324FBDC();
      v59 = *(v142 + 16);
      v134 = v58;
      v133 = v59;
      (v59)(v15);
      v60 = sub_1E41FFC94();
      v61 = sub_1E4206814();
      if (OUTLINED_FUNCTION_20_11(v61))
      {
        v62 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v62);
        OUTLINED_FUNCTION_66_31(&dword_1E323F000, v63, v2, "StackTemplateController:: account message: new message ready for display");
        OUTLINED_FUNCTION_65_0();
      }

      v64 = v141;
      v65 = *(v142 + 8);
      v142 += 8;
      v65(v15, v141);
      if (v27)
      {
        v133(v6, v134, v64);
        v66 = sub_1E41FFC94();
        v67 = sub_1E4206814();
        if (OUTLINED_FUNCTION_161(v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 67109120;
          v68[1] = v26;
          OUTLINED_FUNCTION_82_0();
          _os_log_impl(v69, v70, v71, v72, v73, 8u);
          v64 = v141;
          OUTLINED_FUNCTION_6_0();
        }

        v65(v6, v64);
        v23[OBJC_IVAR____TtC8VideosUI23StackTemplateController_didEnqueueImpressionMetrics] = 0;
      }

      else
      {
        LOBYTE(v26) = 0;
      }

      v74 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      v75 = *&v23[v139];
      v144 = 0;
      memset(v143, 0, sizeof(v143));
      v76 = v74;
      v77 = v75;
      v78 = sub_1E39C4090(v17, v75, v143);

      sub_1E325F748(v143, &qword_1ECF296C0, &unk_1E429BBE0);
      if (v78)
      {
        type metadata accessor for AccountMessageViewController();
        OUTLINED_FUNCTION_20_2();
        v79 = swift_dynamicCastClass();
        if (v79)
        {
          v80 = *&v23[v139];
          *&v23[v139] = v79;
          v81 = v78;

          if ((v26 & 1) == 0)
          {
            v87 = v141;
            v133(v135, v134, v141);
            v88 = sub_1E41FFC94();
            v89 = sub_1E4206814();
            if (OUTLINED_FUNCTION_161(v89))
            {
              v90 = OUTLINED_FUNCTION_125_0();
              OUTLINED_FUNCTION_37_7(v90);
              OUTLINED_FUNCTION_82_0();
              _os_log_impl(v91, v92, v93, v94, v95, 2u);
              v87 = v141;
              OUTLINED_FUNCTION_6_0();
            }

            v65(v135, v87);
            sub_1E3ED2BC4();
            OUTLINED_FUNCTION_140_1();
            goto LABEL_72;
          }

          if (sub_1E39DFFC8())
          {
            v82 = [v23 vuiParentViewController];
            if (v82)
            {
              v83 = v82;
              v84 = [v82 navigationItem];

              v85 = [v84 _topPalette];
              if (v85)
              {
                type metadata accessor for MessageHeaderView();
                OUTLINED_FUNCTION_20_2();
                v86 = swift_dynamicCastClass();
                if (v86)
                {
                  [v86 setNeedsLayout];
                }
              }
            }

            sub_1E3ED922C();
            goto LABEL_72;
          }

          v96 = *&v23[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController];
          if (!v96 || (v97 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, OUTLINED_FUNCTION_5_0(&v96[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented], v143), v96[v97] != 1))
          {
LABEL_72:

LABEL_73:
            goto LABEL_74;
          }

          v98 = &v96[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset];
          OUTLINED_FUNCTION_5_0(&v96[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset], &v146);
          if (*(v98 + 8))
          {
            v99 = 0.0;
          }

          else
          {
            v99 = *v98;
          }

          v100 = v96;
          v101 = v23;
          v102 = [v23 vuiParentViewController];
          if (!v102)
          {
            v102 = *&v101[OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController];
            v103 = v102;
          }

          v104 = [v101 view];
          if (v104)
          {
            v105 = v104;
            [v104 safeAreaInsets];
            v107 = v106;

            if (v107 <= v99)
            {
              v112 = 44.0;
            }

            else
            {
              v108 = [v138 view];
              if (!v108)
              {
LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

              v109 = v108;
              [v108 safeAreaInsets];
              v111 = v110;

              v112 = v111 - v99;
            }

            v113 = [v138 vuiView];
            if (v113)
            {
              v114 = v113;
              [v113 bounds];
              OUTLINED_FUNCTION_3();

              v147.origin.x = OUTLINED_FUNCTION_6();
              if (CGRectGetWidth(v147) == 0.0)
              {
                if (!v102)
                {
                  v118 = 0.0;
                  v120 = 0.0;
LABEL_70:
                  v121 = [v100 vuiView];
                  if (v121)
                  {
                    v122 = v121;
                    [v121 sizeThatFits_];
                    v124 = v123;

                    v125 = v138;
                    v126 = MEMORY[0x1E69E7D40];
                    v127 = *((*MEMORY[0x1E69E7D40] & *v138) + 0x1B8);
                    v128 = v127();
                    [v128 contentInset];

                    v129 = v127();
                    [v129 contentOffset];

                    v130 = v127();
                    [v130 contentInset];
                    [v130 setContentInset_];

                    v131 = v127();
                    [v131 contentOffset];
                    [v131 setContentOffset_];

                    v132.n128_f64[0] = -(v99 + v124);
                    (*((*v126 & *v125) + 0x340))(v132);
                    sub_1E3ED922C();

                    goto LABEL_72;
                  }

                  goto LABEL_77;
                }

                v115 = [v102 vuiView];
                if (v115)
                {
LABEL_68:
                  v116 = v115;
                  [v115 bounds];
                  v118 = v117;
                  v120 = v119;

                  goto LABEL_70;
                }

                __break(1u);
              }

              v115 = [v138 vuiView];
              if (!v115)
              {
LABEL_79:
                __break(1u);
                return;
              }

              goto LABEL_68;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_140_1();

LABEL_74:
        OUTLINED_FUNCTION_20_0();
        return;
      }

      OUTLINED_FUNCTION_140_1();
    }

    else
    {
      if (!v137)
      {
        OUTLINED_FUNCTION_140_1();

        goto LABEL_74;
      }

      sub_1E324FBDC();
      v44 = OUTLINED_FUNCTION_48_44();
      v45(v44);
      v46 = sub_1E41FFC94();
      v47 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v47))
      {
        v48 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v48);
        OUTLINED_FUNCTION_66_31(&dword_1E323F000, v49, v15, "StackTemplateController:: account message: removed");
        OUTLINED_FUNCTION_65_0();
      }

      v50 = (*(v142 + 8))(v2, v141);
      sub_1E3EDBF64(v50, v51, v52, v53, v54, v55, v56, v57, v133, v134, v135, v136);
      OUTLINED_FUNCTION_140_1();
    }

    goto LABEL_74;
  }

  type metadata accessor for UnifiedMessagingBannerViewModel();
  OUTLINED_FUNCTION_19_3();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_74;
  }

  sub_1E404FB84();
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3EDBF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v14 = v12;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  if (sub_1E39DFFC8())
  {
    v21 = sub_1E324FBDC();
    v22 = *(v16 + 16);
    v22(v20, v21, v13);
    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_125_0();
      v50 = v21;
      *v25 = 0;
      _os_log_impl(&dword_1E323F000, v23, v24, "StackTemplateController:: removeAccountMessage: begin", v25, 2u);
      v21 = v50;
      OUTLINED_FUNCTION_6_0();
    }

    v26 = *(v16 + 8);
    v27 = OUTLINED_FUNCTION_57();
    v26(v27);
    v28 = *&v14[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController];
    if (!v28)
    {
      v40 = OUTLINED_FUNCTION_75();
      (v22)(v40);
      v41 = sub_1E41FFC94();
      v42 = sub_1E4206814();
      if (OUTLINED_FUNCTION_6_33(v42))
      {
        v43 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v43);
        OUTLINED_FUNCTION_66_0();
        _os_log_impl(v44, v45, v46, v47, v21, 2u);
        OUTLINED_FUNCTION_65_0();
      }

      v48 = OUTLINED_FUNCTION_74();
      v26(v48);
      goto LABEL_19;
    }

    v29 = v28;
    v30 = [v14 parentViewController];
    if (!v30)
    {
LABEL_12:
      sub_1E3ED7938();

LABEL_19:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v31 = v30;
    v32 = [v30 navigationItem];

    v33 = [v29 view];
    if (v33)
    {
      v34 = v33;
      v35 = [v32 _topPalette];
      if (v35)
      {
        v36 = v35;
        v37 = type metadata accessor for MessageHeaderView();
        if (OUTLINED_FUNCTION_109_8(v37))
        {
          v38 = OUTLINED_FUNCTION_106();
          sub_1E3EDEE44(v38);
        }
      }

      [v32 _setTopPalette_];

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E3EDEBA0();
  }
}

void sub_1E3EDC240()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v43 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_317();
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_26_3();
  v15 = *((*MEMORY[0x1E69E7D40] & v14) + 0x230);
  v16 = v15();
  if (!v16)
  {
    v45 = 0u;
    v46 = 0u;
    goto LABEL_7;
  }

  v17 = v16;
  LOBYTE(v44[0]) = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v18 + 776))(&v45, v44, &unk_1F5D5E188, &off_1F5D5CB18);

  if (!*(&v46 + 1))
  {
LABEL_7:
    sub_1E325F748(&v45, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v41 = v9;
    v42 = v1;
    v20 = v44[0];
    v19 = v44[1];
    if ([v0 userActivity])
    {
      OUTLINED_FUNCTION_38();

LABEL_19:
      v38 = [v0 userActivity];
      [v38 becomeCurrent];

      goto LABEL_20;
    }

    sub_1E3280A90(0, &qword_1EE23B328, 0x1E696B090);
    v21 = sub_1E3EDC7B4();
    v40 = v20;
    v22 = v20;
    v23 = v21;
    sub_1E3EDF764(v22, v19, v21);
    if (v15())
    {
      LOBYTE(v44[0]) = 1;
      OUTLINED_FUNCTION_26_0();
      (*(v24 + 776))(&v45, v44, &unk_1F5D5E188, &off_1F5D5CB18);

      v25 = v42;
      v26 = v43;
      if (*(&v46 + 1))
      {
        v27 = v19;
        if (swift_dynamicCast())
        {
          sub_1E41FE404();

          v28 = v40;
          if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
          {
            sub_1E325F748(v3, &unk_1ECF363C0, &unk_1E42A9420);
          }

          else
          {
            (*(v41 + 32))(v13, v3, v7);
            v39 = sub_1E41FE364();
            [v23 setWebpageURL_];

            (*(v41 + 8))(v13, v7);
          }

          v25 = v42;
          goto LABEL_16;
        }

LABEL_15:
        v28 = v40;
LABEL_16:
        [v0 setUserActivity_];
        sub_1E324FBDC();
        v29 = OUTLINED_FUNCTION_48_44();
        v30(v29);

        v31 = v25;
        v32 = sub_1E41FFC94();
        v33 = sub_1E42067E4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = OUTLINED_FUNCTION_6_21();
          *&v45 = OUTLINED_FUNCTION_100();
          *v34 = 136315138;
          v35 = sub_1E3270FC8(v28, v27, &v45);
          v36 = v23;
          v37 = v35;

          *(v34 + 4) = v37;
          _os_log_impl(&dword_1E323F000, v32, v33, "StackTemplateController:: userActivity externalMediaContentIdentifier = %s", v34, 0xCu);
          OUTLINED_FUNCTION_136_5();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          (*(v26 + 8))(v2, v42);
        }

        else
        {

          (*(v26 + 8))(v2, v31);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
      v25 = v42;
      v26 = v43;
    }

    sub_1E325F748(&v45, &unk_1ECF296E0, &unk_1E4298030);
    v27 = v19;
    goto LABEL_15;
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3EDC7B4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithActivityType_];

  return v2;
}

void sub_1E3EDC828(double a1, double a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_96_19();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_9();
  if (sub_1E3EDD174())
  {
    if (OUTLINED_FUNCTION_106_17())
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for VUIViewController();
      OUTLINED_FUNCTION_20_2();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
      }
    }

    else
    {
      v8 = 0;
    }

    sub_1E40D8E60(v8, a2);

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v20 = OUTLINED_FUNCTION_106_17();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 navigationItem];

        if (v22)
        {
          v23 = OUTLINED_FUNCTION_106_17();
          if (v23)
          {
            v24 = v23;
            swift_getKeyPath();
            sub_1E41FE2C4();
          }

          sub_1E3B62038(v4);
          v25 = OUTLINED_FUNCTION_106_17();
          if (v25)
          {
            v26 = v25;
            swift_getKeyPath();
            sub_1E41FE2D4();
          }

          else
          {
          }
        }
      }
    }

    if (OUTLINED_FUNCTION_106_17())
    {
      v27 = OUTLINED_FUNCTION_9_5();
      type metadata accessor for DocumentViewController(v27);
      OUTLINED_FUNCTION_19_3();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_64();
        (*(v28 + 1104))();
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    v9 = OUTLINED_FUNCTION_48_44();
    v10(v9);
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_6_33(v12))
    {
      v13 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v13);
      OUTLINED_FUNCTION_66_0();
      _os_log_impl(v14, v15, v16, v17, v3, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v18 = OUTLINED_FUNCTION_74();
    v19(v18);
  }
}

void sub_1E3EDCAC0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  v8 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E39DFFC8();
  if (v15)
  {
    v45 = v10;
    v16 = VUISignpostLogObject(v15);
    sub_1E41FFBC4();
    v17 = sub_1E4206BA4();
    v18 = VUISignpostLogObject(v17);
    sub_1E41FFBA4();

    OUTLINED_FUNCTION_26_3();
    v20 = (*((*MEMORY[0x1E69E7D40] & v19) + 0x5D0))();
    if (v20)
    {
      v21 = v20;
      v22 = (v4 & 1);
      if ([v20 _hiddenPocketEdges] != v22)
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_2_26();
        v23(v1);
        v24 = v0;
        v25 = sub_1E41FFC94();
        v26 = sub_1E4206814();

        if (os_log_type_enabled(v25, v26))
        {
          v44 = v8;
          v27 = swift_slowAlloc();
          v43 = OUTLINED_FUNCTION_100();
          v46 = v43;
          *v27 = 136315650;
          v28 = sub_1E3ED148C();
          sub_1E3270FC8(v28, v29, &v46);
          OUTLINED_FUNCTION_34_3();
          *(v27 + 4) = v24;
          *(v27 + 12) = 1024;
          *(v27 + 14) = v22;
          *(v27 + 18) = 2048;
          *(v27 + 20) = v22;
          _os_log_impl(&dword_1E323F000, v25, v26, "%s updateHiddenPocketEdge: hideTopEdge:%{BOOL}d, hiddenEdges:%lu", v27, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          OUTLINED_FUNCTION_6_0();
          v8 = v44;
          OUTLINED_FUNCTION_6_0();
        }

        v30 = OUTLINED_FUNCTION_53();
        v31(v30);
        [v21 _setHiddenPocketEdges_];
      }
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v32(v2);
      v33 = v0;
      v34 = sub_1E41FFC94();
      v35 = sub_1E4206814();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_6_21();
        v46 = OUTLINED_FUNCTION_100();
        *v36 = 136315138;
        v37 = sub_1E3ED148C();
        sub_1E3270FC8(v37, v38, &v46);
        OUTLINED_FUNCTION_34_3();
        *(v36 + 4) = v33;
        _os_log_impl(&dword_1E323F000, v34, v35, "%s updateHiddenPocketEdge: scrollView is nil, ignore", v36, 0xCu);
        OUTLINED_FUNCTION_136_5();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();
      }

      v39 = OUTLINED_FUNCTION_110_12();
      v40(v39, v5);
    }

    v41 = sub_1E4206B94();
    v42 = VUISignpostLogObject(v41);
    sub_1E41FFBA4();

    (*(v45 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EDCEFC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_9();
  if ((sub_1E39DFFC8() & 1) == 0)
  {
LABEL_12:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v4 = [v0 vuiParentViewController];
  if (!v4)
  {
LABEL_9:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v12 = OUTLINED_FUNCTION_69_2();
    v13(v12);
    v14 = v0;
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_49_0();
      v18 = OUTLINED_FUNCTION_100();
      v34 = v18;
      *v17 = 136315394;
      v19 = sub_1E3ED148C();
      sub_1E3270FC8(v19, v20, &v34);
      OUTLINED_FUNCTION_65_31();

      *(v17 + 4) = v14;
      *(v17 + 12) = 2048;
      *(v17 + 14) = OUTLINED_FUNCTION_13_30(v2);
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v26 = OUTLINED_FUNCTION_74();
    v27(v26);
    goto LABEL_12;
  }

  v5 = v4;
  type metadata accessor for VUIViewController();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    goto LABEL_9;
  }

  v7 = v6;
  v8 = v5;
  for (i = v7; ; i = v11)
  {
    v10 = [i vuiParentViewController];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    objc_opt_self();
    OUTLINED_FUNCTION_40_3();
    if (swift_dynamicCastObjCClass())
    {

      break;
    }
  }

  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v30 = v33;

    v7 = v29;
  }

  sub_1E40D9240(v2);

  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3EDD174()
{
  v1 = [v0 parentViewController];
  v2 = [v0 navigationController];
  if (v2 && (v3 = v2, v4 = [v2 viewControllers], v3, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), OUTLINED_FUNCTION_74(), v5 = sub_1E42062B4(), v4, v6 = sub_1E37CB21C(v5), , v6))
  {
    v7 = [v6 vuiChildViewControllers];
    v8 = sub_1E42062B4();

    v9 = sub_1E37CB21C(v8);

    swift_unknownObjectRelease();
    if (v1)
    {
      if (v1 != v6)
      {
        if (v9)
        {

          return v1 == v9;
        }

        goto LABEL_8;
      }
    }

    else if (v9)
    {

      return 0;
    }
  }

  else if (v1)
  {
LABEL_8:

    return 0;
  }

  return 1;
}

id sub_1E3EDD2D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 vuiNavigationItem];
  *a2 = result;
  return result;
}

void sub_1E3EDD30C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v43 - v8;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v11 = (v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_autohighlightDetails);
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_autohighlightDetails + 8);
  if (!v12)
  {
    goto LABEL_26;
  }

  v47 = *v11;
  v45 = v11[2];
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x230);

  if (!v13(v14))
  {

LABEL_26:
    v40 = 1;
LABEL_29:
    v41 = sub_1E41FE874();
    __swift_storeEnumTagSinglePayload(v4, v40, 1, v41);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v43 = v6;
  v44 = v4;
  OUTLINED_FUNCTION_26_0();
  (*(v15 + 464))();
  OUTLINED_FUNCTION_65_31();

  if (!v6)
  {

    goto LABEL_28;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v16(v1);

  v17 = sub_1E41FFC94();
  v18 = sub_1E42067D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_49_0();
    v20 = OUTLINED_FUNCTION_100();
    v50[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1E3270FC8(v47, v12, v50);
    *(v19 + 12) = 2048;
    *(v19 + 14) = v45;
    _os_log_impl(&dword_1E323F000, v17, v18, "Trying to auto-highlight child with anchor ID: %s, index: %ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v21 = OUTLINED_FUNCTION_110_12();
  v23 = v22(v21, v9);
  v24 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x218))(v23);
  sub_1E4200104();

  v25 = sub_1E32AE9B0(v6);
  v26 = v47;
  if (!v25)
  {
LABEL_24:

    (*(v43 + 8))(v49, v48);
LABEL_28:
    v40 = 1;
    v4 = v44;
    goto LABEL_29;
  }

  v27 = v25;
  v28 = 0;
  v46 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v28, v6);
    }

    else
    {
      if (v28 >= *(v46 + 16))
      {
        goto LABEL_32;
      }
    }

    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    v50[3] = &unk_1F5D5DAC8;
    v50[4] = &off_1F5D5C998;
    LOBYTE(v50[0]) = 3;
    v30 = sub_1E39C29A4(v50);
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (!v32)
    {
      goto LABEL_19;
    }

    if (v30 == v26 && v32 == v12)
    {
    }

    else
    {
      v34 = sub_1E42079A4();

      if ((v34 & 1) == 0)
      {
LABEL_19:

        goto LABEL_23;
      }
    }

    v50[0] = sub_1E40502A4(v35);
    v50[1] = v36;
    v50[2] = v37;
    v38 = sub_1E41FFFD4();
    if ((v39 & 1) == 0)
    {
      v42 = v38;

      v4 = v44;
      MEMORY[0x1E6909190](v45, v42);

      (*(v43 + 8))(v49, v48);
      v40 = 0;
      goto LABEL_29;
    }

    v26 = v47;
LABEL_23:
    ++v28;
    if (v29 == v27)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1E3EDD80C(uint64_t a1, void *a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x1B8);
  v3 = v2();
  sub_1E3F36DE0();

  v4 = sub_1E4205ED4();

  v5 = sub_1E41FE7E4();
  v6 = [v3 layoutAttributesForSupplementaryElementOfKind:v4 atIndexPath:v5];

  if ((v6 || (v7 = v2(), v8 = sub_1E41FE7E4(), v6 = [v7 layoutAttributesForItemAtIndexPath_], v7, v8, v6)) && (objc_msgSend(v6, sel_frame), MinY = CGRectGetMinY(v19), v6, MinY > 0.0))
  {
    v10 = v2();
    [v10 vuiSafeAreaInsets];

    v11 = v2();
    [v11 vuiSize];

    v12 = v2();
    [v12 vuiContentSize];

    v13 = v2();
    [v13 vuiContentOffset];

    v2();
    v14 = OUTLINED_FUNCTION_6_12();
    [v15 v16];
    OUTLINED_FUNCTION_139_10();
  }

  else
  {
    OUTLINED_FUNCTION_139_10();
  }
}

void sub_1E3EDDA74(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0(a1 + 16, v18);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v9(v1);
    v10 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v12);
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v1, v3);
    v8[OBJC_IVAR____TtC8VideosUI23StackTemplateController_waitingForPresentationDismissal] = 0;
    sub_1E3ED2BC4();
  }
}

void sub_1E3EDDBC4()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v0;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController);
  if (!v11)
  {
    goto LABEL_79;
  }

  v121 = v119 - v10;
  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  v122 = v11;
  v12 = sub_1E375D4BC();
  v125 = v4;
  if (!v12)
  {
    v128 = 0u;
    v129 = 0u;
    goto LABEL_7;
  }

  *&v128 = sub_1E4205F14();
  *(&v128 + 1) = v13;
  sub_1E4207414();
  sub_1E375D7E8(v12, &v128, v127);
  sub_1E375D84C(v127);
  if (!*(&v129 + 1))
  {
LABEL_7:
    sub_1E325F748(&v128, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v14 = v127[0];
    goto LABEL_9;
  }

LABEL_8:
  v14 = 1;
LABEL_9:
  v124 = v14;
  v15 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_pastFirstViewDidAppear;
  v16 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_pastFirstViewDidAppear);
  v17 = MEMORY[0x1E69E7D40];
  v126 = v0 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (v16)
  {
    v18 = v1;
    v19 = v6;
    v20 = v12;
    v21 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8);
    v22 = v21();
    [v22 contentOffset];
    v24 = v23;

    v25 = v21();
    v12 = v20;
    v6 = v19;
    v1 = v18;
    v26 = v25;
    [v25 adjustedContentInset];
    v28 = v27;

    v17 = MEMORY[0x1E69E7D40];
    v29 = v24 == -v28;
  }

  else
  {
    v29 = 1;
  }

  v30 = *((*v17 & *v3) + 0x1B8);
  v123 = (*v17 & *v3) + 440;
  v31 = v30();
  v32 = [v31 visibleCells];

  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v33 = sub_1E42062B4();

  v34 = sub_1E32AE9B0(v33);

  if (v34 || *(v3 + v15) == 1)
  {
    if (!v29)
    {
LABEL_26:
      v120 = 0;
      goto LABEL_27;
    }

    if (v124)
    {
      v120 = 0;
      goto LABEL_17;
    }

LABEL_23:
    if (*(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_viewIsVisibleForAccountMessage) == 1)
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v35 = v125;
      v45(v2);
      v46 = sub_1E41FFC94();
      v47 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v47))
      {
        v48 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_37_7(v48);
        OUTLINED_FUNCTION_82_0();
        _os_log_impl(v49, v50, v51, v52, v53, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v118 = *(v6 + 8);
      v117 = v2;
      goto LABEL_78;
    }

    goto LABEL_26;
  }

  v120 = v124;
  if (v29)
  {
    if (v124)
    {
      v120 = 1;
LABEL_17:
      if ((*(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_viewIsVisibleForAccountMessage) & 1) == 0)
      {

        sub_1E324FBDC();
        OUTLINED_FUNCTION_2_26();
        v35 = v125;
        v36(v121);
        v37 = sub_1E41FFC94();
        v38 = sub_1E4206814();
        if (OUTLINED_FUNCTION_161(v38))
        {
          v39 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_37_7(v39);
          OUTLINED_FUNCTION_82_0();
          _os_log_impl(v40, v41, v42, v43, v44, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v117 = OUTLINED_FUNCTION_110_12();
LABEL_78:
        v118(v117, v35);
        goto LABEL_79;
      }

      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_27:
  LODWORD(v121) = v29;
  v54 = [v3 vuiParentViewController];
  if (!v54)
  {
    v54 = *(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController);
    v55 = v54;
  }

  v56 = [v3 vuiView];
  if (!v56)
  {
    __break(1u);
    goto LABEL_81;
  }

  v57 = v56;
  v58 = [v56 window];

  if (v58)
  {
    goto LABEL_31;
  }

  Height = 0.0;
  if (!v54)
  {
    v58 = 0;
    goto LABEL_45;
  }

  v63 = [v54 vuiView];
  if (!v63)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v64 = v63;
  v58 = [v63 window];

  if (v58)
  {
    goto LABEL_31;
  }

  v65 = [v54 navigationController];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 vuiView];

    if (!v67)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v58 = [v67 window];

    if (v58)
    {
LABEL_31:
      v59 = [v58 windowScene];
      Height = 0.0;
      if (v59)
      {
        v61 = v59;
        v62 = [v59 statusBarManager];

        if (v62)
        {
          [v62 statusBarFrame];
          OUTLINED_FUNCTION_3();

          v130.origin.x = OUTLINED_FUNCTION_6();
          Height = CGRectGetHeight(v130);
        }
      }

LABEL_45:
      v119[1] = v12;
      v70 = [v3 view];
      if (v70)
      {
        v71 = v70;
        [v70 safeAreaInsets];
        v73 = v72;

        if (v73 <= Height)
        {
          v78 = 44.0;
        }

        else
        {
          v74 = [v3 view];
          if (!v74)
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v75 = v74;
          [v74 safeAreaInsets];
          v77 = v76;

          v78 = v77 - Height;
        }

        v79 = [v3 vuiView];
        if (v79)
        {
          v80 = v79;
          [v79 bounds];
          OUTLINED_FUNCTION_9_10();

          v131.origin.x = OUTLINED_FUNCTION_24_0();
          if (CGRectGetWidth(v131) == 0.0)
          {
            if (!v54)
            {
              v84 = 0.0;
              v86 = 0.0;
LABEL_58:
              v87 = v122;
              v88 = [v87 vuiView];
              if (v88)
              {
                v89 = v88;
                [v88 sizeThatFits_];
                v91 = v90;

                v92 = v30();
                [v92 contentInset];
                [v92 setContentInset_];

                v93 = -(Height + v91);
                (*((*MEMORY[0x1E69E7D40] & *v3) + 0x340))(v93);
                [v3 vui:v87 addChildViewController:?];
                v94 = [v3 &selRef_viewControllerWithDocumentDataSource_appContext_documentOptions_ + 3];
                if (v94)
                {
                  v95 = v94;
                  v96 = [v87 &selRef_viewControllerWithDocumentDataSource_appContext_documentOptions_ + 3];

                  [v95 vui:v96 addSubview:0 oldView:?];
                  sub_1E3A51640(*&Height, 0);
                  v97 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
                  OUTLINED_FUNCTION_3_0(v87 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, v127);
                  *(v87 + v97) = 1;
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_2_26();
                  v98(v1);
                  v99 = sub_1E41FFC94();
                  v100 = sub_1E4206814();
                  if (os_log_type_enabled(v99, v100))
                  {
                    v101 = swift_slowAlloc();
                    *v101 = 67109632;
                    *(v101 + 4) = v121;
                    *(v101 + 8) = 1024;
                    *(v101 + 10) = v124;
                    *(v101 + 14) = 1024;
                    *(v101 + 16) = v120;
                    _os_log_impl(&dword_1E323F000, v99, v100, "    StackTemplateController:: account message: presenting visibily inserting = %{BOOL}d,\n    animated = %{BOOL}d, deferring animation = %{BOOL}d", v101, 0x14u);
                    OUTLINED_FUNCTION_6_0();
                  }

                  v102 = OUTLINED_FUNCTION_24_4();
                  v104 = v103(v102);
                  if (!v121)
                  {
                    goto LABEL_73;
                  }

                  if (v120)
                  {

                    OUTLINED_FUNCTION_140_1();

                    v105 = (v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset);
                    *v105 = 0.0;
                    v105[1] = v93;
                    *(v105 + 16) = 0;
                    *(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageNeedsDeferredAnimationIn) = 1;
LABEL_79:
                    OUTLINED_FUNCTION_20_0();
                    return;
                  }

                  v106 = (v30)(v104);
                  [v106 contentOffset];
                  v108 = v107;
                  v110 = v109;

                  if (v108 == 0.0 && v110 == v93)
                  {
LABEL_73:

                    OUTLINED_FUNCTION_140_1();

                    goto LABEL_79;
                  }

                  if (v124)
                  {
                    v112 = (v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset);
                    *v112 = 0.0;
                    v112[1] = v93;
                    *(v112 + 16) = 0;
                  }

                  v113 = [v3 vuiView];
                  if (v113)
                  {
                    v114 = v113;
                    OUTLINED_FUNCTION_140_1();

                    v115 = v124;
                    [v114 setVuiUserInteractionEnabled_];

                    v116 = v30();
                    [v116 setContentOffset:v115 animated:{0.0, v93}];

                    goto LABEL_79;
                  }

                  goto LABEL_88;
                }

                goto LABEL_84;
              }

LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v81 = [v54 vuiView];
            if (v81)
            {
LABEL_56:
              v82 = v81;
              [v81 bounds];
              v84 = v83;
              v86 = v85;

              goto LABEL_58;
            }

            __break(1u);
          }

          v81 = [v3 vuiView];
          if (!v81)
          {
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          goto LABEL_56;
        }

LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v68 = [v54 tabBarController];
  v58 = v68;
  if (!v68)
  {
    goto LABEL_45;
  }

  v69 = [v68 vuiView];

  if (v69)
  {
    v58 = [v69 window];

    if (!v58)
    {
      goto LABEL_45;
    }

    goto LABEL_31;
  }

LABEL_90:
  __break(1u);
}

void sub_1E3EDE75C()
{
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  if ((sub_1E39DFFC8() & 1) == 0 || (OUTLINED_FUNCTION_12_5(), (v7 = (*(v6 + 2056))()) == 0))
  {
LABEL_28:
    OUTLINED_FUNCTION_10_3();
    return;
  }

  v8 = v7;
  v9 = [v0 vuiParentViewController];
  if (!v9)
  {
    v9 = *&v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController];
    v10 = v9;
  }

  v11 = [v0 vuiView];
  if (!v11)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11;
  v13 = [v11 window];

  if (v13)
  {
    goto LABEL_7;
  }

  Height = 0.0;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v18 = [v9 vuiView];
  if (!v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  v13 = [v18 window];

  if (v13)
  {
    goto LABEL_7;
  }

  v20 = [v9 navigationController];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 vuiView];

    if (!v22)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = [v22 window];

    if (v13)
    {
LABEL_7:
      v14 = [v13 windowScene];
      Height = 0.0;
      if (v14)
      {
        v16 = v14;
        v17 = [v14 statusBarManager];

        if (v17)
        {
          [v17 statusBarFrame];
          OUTLINED_FUNCTION_3();

          v36.origin.x = OUTLINED_FUNCTION_6();
          Height = CGRectGetHeight(v36);
        }
      }

LABEL_21:
      v25 = [v0 view];
      if (v25)
      {
        v26 = v25;
        [v25 safeAreaInsets];
        v28 = v27;

        if (v28 - Height <= 0.0)
        {
          v29 = 44.0;
        }

        else
        {
          v29 = v28 - Height;
        }

        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v30(v1);
        v31 = sub_1E41FFC94();
        v32 = sub_1E4206814();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_49_0();
          *v33 = 134218240;
          *(v33 + 4) = -v29;
          *(v33 + 12) = 2048;
          *(v33 + 14) = v29;
          _os_log_impl(&dword_1E323F000, v31, v32, "StackTemplateController:: account message: updateContentInset to: %f, navHeight:%f", v33, 0x16u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v4 + 8))(v1, v2);
        OUTLINED_FUNCTION_36_3();
        v35 = (*((*MEMORY[0x1E69E7D40] & v34) + 0x1B8))();
        [v35 contentInset];
        [v35 setContentInset_];

        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  v23 = [v9 tabBarController];
  v13 = v23;
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = [v23 vuiView];

  if (v24)
  {
    v13 = [v24 window];

    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

LABEL_33:
  __break(1u);
}

void sub_1E3EDEBA0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_26_3();
  v9 = (*((*MEMORY[0x1E69E7D40] & v8) + 0x808))();
  if (!v9)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_5();
  v10 += 55;
  v11 = *v10;
  v12 = (*v10)();
  [v12 contentOffset];
  v14 = v13;

  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  if (v14 >= 0.0)
  {
    v27 = OUTLINED_FUNCTION_69_2();
    v28(v27);
    v29 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v31);
      OUTLINED_FUNCTION_51_42(&dword_1E323F000, v32, v3, "StackTemplateController:: account message: initiating non animated removal");
      OUTLINED_FUNCTION_21_0();
    }

    v33 = OUTLINED_FUNCTION_74();
    v34(v33);
    sub_1E3ED7938();
    goto LABEL_10;
  }

  v15(v3);
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v17))
  {
    v18 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v18);
    OUTLINED_FUNCTION_51_42(&dword_1E323F000, v19, v2, "StackTemplateController:: account message: initiating animated removal");
    OUTLINED_FUNCTION_21_0();
  }

  (*(v5 + 8))(v3, v1);
  v20 = &v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageDismissalTargetOffset];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = [v0 vuiView];
  if (v21)
  {
    v22 = v21;
    [v21 setVuiUserInteractionEnabled_];

    v23 = v11();
    v24 = OUTLINED_FUNCTION_1_36();
    [v25 v26];

LABEL_10:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E3EDEE44(void *a1)
{
  v6 = *&v1[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView];
  *&v1[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView] = a1;
  v2 = a1;
  v3 = [v1 contentView];
  v4 = OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView;
  [v3 vui:*&v1[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView] addSubview:v6 oldView:?];

  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    [v1 setNeedsLayout];
  }

LABEL_4:
}

id sub_1E3EDEF0C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = type metadata accessor for MessageHeaderView();
  v8 = OUTLINED_FUNCTION_111_10(v13, sel_initWithContentView_, v2, v3, v4, v5, v6, v7, v0);
  v10 = objc_msgSendSuper2(v8, v9);

  v11 = v10;
  [v11 _setDisplaysWhenSearchActive_];
  [v11 setMinimumHeight_];

  return v11;
}

void sub_1E3EDEFD0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MessageHeaderView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 sizeThatFits_];
    v4 = v3;
    v5 = OUTLINED_FUNCTION_1_36();
    [v2 v6];
    [v0 preferredHeight];
    if (v4 != v7)
    {
      [v0 setPreferredHeight_];
    }
  }

  else
  {
    [v0 setPreferredHeight_];
  }
}

id sub_1E3EDF148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StackTemplateController(uint64_t a1)
{
  result = qword_1EE2985C0;
  if (!qword_1EE2985C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3EDF1D8(double *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v3 + 2048))(v2);
  }
}

void sub_1E3EDF258(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1E3D54BE8();

  v4 = *sub_1E3D54C24();
  type metadata accessor for UnifiedMessagingSignalProvider();
  v5 = v4;
  sub_1E3D595AC(a1);
  v6 = OUTLINED_FUNCTION_75();
  v9 = sub_1E3D595C0(v6, v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v11 = sub_1E3B58240();
  v12 = *(v11 + 1);
  *(inited + 32) = *v11;
  *(inited + 40) = v12;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  *(inited + 48) = v9;

  sub_1E4205CB4();
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x230))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v13 + 576))();
    OUTLINED_FUNCTION_11_5();

    if (v3)
    {
      v15 = v3;
      (*(*v3 + 128))(v14);
      OUTLINED_FUNCTION_38();

      v16 = sub_1E3B5824C();
      v17 = *v16;
      v18 = v16[1];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *&v22 = v15;
      sub_1E329504C(&v22, v21);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1E32A87C0(v21, v17, v18, isUniquelyReferenced_nonNull_native);
    }
  }

  v20 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  sub_1E3B58258();

  sub_1E3B584A8();
}

void sub_1E3EDF4EC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarGradientView;
    if (*&Strong[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarGradientView])
    {
      v4 = [Strong traitCollection];
      v5 = [v4 userInterfaceStyle];

      if (v5 == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      v7 = [objc_opt_self() effectWithStyle_];
      v8 = *&v2[v3];
      if (v8)
      {
        v9 = v8;
        [v9 setEffect_];

        v2 = v9;
      }
    }
  }
}

void sub_1E3EDF5D0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3ED2490();
    v3 = [v2 vuiView];
    if (v3)
    {
      v4 = v3;
      [v3 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3EDF650(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3EDF8B0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E3EDF6FC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
  OUTLINED_FUNCTION_19_3();
  v4 = sub_1E42062B4();

  return v4;
}

void sub_1E3EDF764(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setExternalMediaContentIdentifier_];
}

uint64_t sub_1E3EDF8B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1EE23B4B0, &qword_1ECF3BAF8, qword_1E42DB940);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAF8, qword_1E42DB940);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3EDFA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE249910[0];
  if (!qword_1EE249910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE249910);
  }

  return result;
}

uint64_t objectdestroy_97Tm()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_1E3EDFB9C(uint64_t a1)
{
  sub_1E41FE874();
  v3 = *(v1 + 16);

  sub_1E3EDD80C(a1, v3);
}

void sub_1E3EDFC10(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v3 = (*(v2 + 440))();

    OUTLINED_FUNCTION_12_5();
    (*(v4 + 184))(1);
  }
}

void OUTLINED_FUNCTION_62_33()
{
  *(v1 + *v0) = 0;
  v2 = (v1 + v0[1]);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  *(v1 + v0[2]) = 0;
  *(v1 + v0[3]) = 0;
}

uint64_t OUTLINED_FUNCTION_100_9()
{

  return sub_1E42062F4();
}

id OUTLINED_FUNCTION_106_17()
{

  return [v0 (v1 + 3716)];
}

uint64_t OUTLINED_FUNCTION_109_8(uint64_t a1)
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_132_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42072E4();
}

void OUTLINED_FUNCTION_133_9()
{

  JUMPOUT(0x1E6909170);
}

unint64_t OUTLINED_FUNCTION_135_5(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 160));
}

id OUTLINED_FUNCTION_137_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_138_9()
{

  return [v0 (v1 + 2808)];
}

void sub_1E3EDFEE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView], v10);
  v4 = *&v1[v3];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_6:
    [a1 removeFromSuperview];
    v6 = *&v1[v3];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    MEMORY[0x1EEE9AC00](v7);
    v8 = v6;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0);
    sub_1E4148DE0(sub_1E3EE0DA4);
  }
}

void sub_1E3EE0008(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1E3EDFEE0(v4);
}

char *sub_1E3EE00A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  type metadata accessor for CarouselViewLayout();
  *&v0[v3] = sub_1E3A2BC54();
  *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl] = 0;
  v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView] = 0;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  OUTLINED_FUNCTION_18_3();

  v5 = objc_allocWithZone(MEMORY[0x1E69D6108]);
  v6 = OUTLINED_FUNCTION_17_4();
  v9 = [v7 v8];
  *&v1[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView] = v9;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = *&v10[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];
  v12 = v10;
  [v11 setAutoscrollInterval_];
  [v11 setShouldScaleOnIdleFocus_];
  [v11 setScrollMode_];
  [v11 setShowsPageControl_];
  [v12 addSubview_];

  return v12;
}

void sub_1E3EE0240()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  type metadata accessor for CarouselViewLayout();
  *(v0 + v1) = sub_1E3A2BC54();
  *(v0 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3EE0304(char a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OUTLINED_FUNCTION_170();
  objc_msgSendSuper2(v7, v8, v6, v3, ObjectType);
  if (a1)
  {
    v9 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout], v49);
    v10 = *(**&v3[v9] + 304);

    v12 = COERCE_DOUBLE(v10(v11));
    LOBYTE(v10) = v13;

    v14 = 0.0;
    if ((v10 & 1) == 0)
    {
      v14 = v12;
    }

    if (sub_1E3EE0A1C(a2, v14) != 0.0)
    {
      sub_1E3EE0C1C();
      CGRectGetHeight(v51);
      VUIRoundValue();
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    v15 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl], v48);
    v16 = *&v3[v15];
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_170();
      [v19 v20];
      v22 = v21;
      v24 = v23;
      v25 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
      OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout], v45);
      v26 = *(**&v3[v25] + 1728);

      v26(v49, v27);

      v43[0] = v49[0];
      v43[1] = v49[1];
      v44 = v50;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
      sub_1E4148C68(sub_1E3C2FC84, v28, v46);
      v29 = v47;
      [v3 bounds];
      [v17 setFrame_];
      [v17 center];
      [v17 setCenter_];
    }

    v31 = *&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];
    sub_1E3EE08F0();
    [v31 setFrame_];
    [v3 bounds];
    sub_1E3EE0C1C();
    v36 = v35;
    v38 = v37;
    v39 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView], v43);
    v40 = *&v3[v39];
    if (v40)
    {
      v41 = v40;
      [v41 frame];
      OUTLINED_FUNCTION_2_6();
      v52.origin.x = OUTLINED_FUNCTION_170();
      v52.size.width = v36;
      v52.size.height = v38;
      if (!CGRectEqualToRect(v52, v53))
      {
        [v3 effectiveUserInterfaceLayoutDirection];
        [v3 bounds];
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_170();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v41 setFrame_];
      }
    }
  }

  OUTLINED_FUNCTION_170();
}

void sub_1E3EE0704(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl;
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl], v12);
  if (v2[v4] == 1)
  {
    if (a1 >= 1)
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
      [v5 setNumberOfPages_];
      [v5 setCurrentPage_];
      [v5 addTarget:v2 action:sel_pageChangeEventWithSender_ forControlEvents:4096];
      v6 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
      swift_beginAccess();
      v7 = *&v2[v6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB28, qword_1E42DB990);
      sub_1E4148DE0(sub_1E3EE087C);

      [v2 addSubview_];
      v8 = *&v2[v6];
      *&v2[v6] = v5;
    }
  }

  else
  {
    v9 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
    OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl], v11);
    v10 = *&v2[v9];
    if (v10)
    {
      [v10 removeFromSuperview];
    }
  }
}

id sub_1E3EE088C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView);
  sub_1E3EE08F0();

  return [v2 setFrame_];
}

void sub_1E3EE08F0()
{
  [v0 bounds];
  sub_1E3EE0C1C();
  OUTLINED_FUNCTION_18_3();
  v2 = v1;
  v4 = v3;
  v5 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView], v10);
  if (*&v0[v5])
  {
    v11.origin.x = OUTLINED_FUNCTION_17_4();
    v11.size.width = v2;
    v11.size.height = v4;
    CGRectGetMaxY(v11);
  }

  VUIRoundValue();
  [v0 bounds];
  CGRectGetWidth(v12);
  v6 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout], &v9);
  v7 = *(**&v0[v6] + 304);

  v7(v8);

  OUTLINED_FUNCTION_17_4();
}

double sub_1E3EE0A1C(double a1, double a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout, v18);
  v6 = *(**(v2 + v5) + 432);

  v8 = COERCE_DOUBLE(v6(v7));
  v10 = v9;

  if ((v10 & 1) == 0 && v8 > 0.0)
  {
    v11 = *(**(v3 + v5) + 352);

    v13 = COERCE_DOUBLE(v11(v12));
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      a2 = v13;
      VUIFloorValue();
      if (v16 <= v13)
      {
        return v16;
      }
    }
  }

  return a2;
}

void sub_1E3EE0C1C()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_opt_self();
  v12.origin.x = OUTLINED_FUNCTION_2_0();
  [v1 vui:CGRectGetWidth(v12) paddingForWindowWidth:?];
  OUTLINED_FUNCTION_2_6();
  v2 = OUTLINED_FUNCTION_2_0();
  UIEdgeInsetsInsetRect(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_18_3();
  Width = CGRectGetWidth(v13);
  v9 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_0_12(v10);
  v11 = *(v0 + v9);
  if (v11)
  {
    [v11 sizeThatFits_];
  }

  OUTLINED_FUNCTION_17_4();
}

id sub_1E3EE0CD4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView);
  v3 = [a1 currentPage];

  return [v2 centerItemAtPageIndex_];
}

void sub_1E3EE0DD0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v49 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for LibraryDownloadLockup(0);
  v15 = v14[9];
  *(v7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8, &qword_1E42CA850);
  swift_storeEnumTagMultiPayload();
  v16 = (v7 + v14[10]);
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_3_211();
  sub_1E3EE480C(v17, v18, &unk_1E42A2B70);
  *v16 = sub_1E4201754();
  v16[1] = v19;
  v20 = v14[11];
  *(v7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v21 = v7 + v14[12];
  v52[0] = 1;
  sub_1E42038E4();
  v22 = v50[1];
  *v21 = v50[0];
  *(v21 + 8) = v22;
  *v7 = v5;
  type metadata accessor for ContextMenuModel(0);
  swift_retain_n();
  v23 = sub_1E3E6CDBC();
  v25 = *v23;
  v24 = v23[1];
  v50[0] = v25;
  v50[1] = v24;

  sub_1E4207414();
  (*(v9 + 104))(v13, *MEMORY[0x1E697E660], v49);

  *(v7 + 208) = sub_1E4188148(v26, v13);
  memcpy((v7 + 8), v3, 0xC3uLL);
  type metadata accessor for CardViewInteractor(0);
  sub_1E375C1CC(v3, v50);

  v27 = sub_1E3AB85C4(v5, v3, v1);
  j__OUTLINED_FUNCTION_18();
  sub_1E3AB9000();
  sub_1E3ABC8B4(&v51);
  *(v7 + 224) = sub_1E38074D0;
  *(v7 + 232) = v27;
  *(v7 + 240) = 0;
  v28 = *(*v5 + 392);

  v30 = v28(v29);

  if (!v30)
  {
    goto LABEL_4;
  }

  type metadata accessor for LibraryLockupLayout();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {

LABEL_4:
    type metadata accessor for LibraryLockupLayout();
    v31 = sub_1E3F6D980();
  }

  *(v7 + 216) = v31;
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v32, v33, &unk_1E42BD340);
  v34 = sub_1E4200BC4();
  v35 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v34 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v53);
  memcpy(v50, (v34 + v35), 0x58uLL);
  sub_1E3743538(v50, v52, &qword_1ECF322C8, &qword_1E42B8140);

  if (v50[7])
  {
    v36 = v50[1];

    sub_1E325F69C(v50, &qword_1ECF322C8);
    if (v36)
    {
      type metadata accessor for ImageViewModel();
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v38 = v37;
        OUTLINED_FUNCTION_26_0();
        v40 = *(v39 + 392);

        v42 = v40(v41);

        if (v42)
        {
          v44 = (*(*v42 + 1560))(v43);
        }

        else
        {
          v44 = 7;
        }

        v45 = j__OUTLINED_FUNCTION_18();
        v46 = (*(*v38 + 1048))(v44, v45 & 1);
        if (!v46)
        {
          v46 = [objc_opt_self() blackColor];
        }

        v47 = v46;
        OUTLINED_FUNCTION_8();
        (*(v48 + 1880))();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LibraryDownloadLockup(uint64_t a1)
{
  result = qword_1EE29BC70;
  if (!qword_1EE29BC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3EE1364()
{
  OUTLINED_FUNCTION_9_4();
  v91 = v7;
  v8 = type metadata accessor for LibraryDownloadLockup(0);
  v88 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = v9;
  v90 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v83 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v13 - v12);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB30, &qword_1E42DBA40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB38, &qword_1E42DBA48);
  OUTLINED_FUNCTION_0_10();
  v73 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_50_1();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB40, &qword_1E42DBA50);
  OUTLINED_FUNCTION_0_10();
  v75 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB48, &qword_1E42DBA58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8_4();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB50, &qword_1E42DBA60);
  OUTLINED_FUNCTION_0_10();
  v79 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB58, &qword_1E42DBA68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB60, &unk_1E42DBA70);
  OUTLINED_FUNCTION_0_10();
  v86 = v30;
  v87 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  sub_1E3EE1BE8();
  v33 = v1[26];
  v34 = v1;
  v35 = sub_1E374AD40(&qword_1ECF3BB68, &qword_1ECF3BB30, &qword_1E42DBA40, &unk_1E42E7258);
  v36 = v33;
  v37 = v71;
  sub_1E4187EA8(v36, v71, v35);
  sub_1E325F69C(v16, &qword_1ECF3BB30);
  v38 = *v1;
  v94 = v37;
  v95 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v72;
  sub_1E4035F10(v38, v72, OpaqueTypeConformance2);
  (*(v73 + 8))(v0, v40);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v41, v42, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  v43 = sub_1E4200BC4();
  v44 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0(v43 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout, &v93);
  v45 = *(v43 + v44);

  if (v45 && (OUTLINED_FUNCTION_8(), (*(v46 + 152))(&v94), v3 = v94, v4 = v95, v5 = v96, v6 = v97, , (v98 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v47, v48, v49, v50);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v51 = sub_1E4202734();
  (*(v75 + 32))(v2, v22, v77);
  v52 = v2 + *(v76 + 36);
  *v52 = v51;
  *(v52 + 8) = v3;
  *(v52 + 16) = v4;
  *(v52 + 24) = v5;
  *(v52 + 32) = v6;
  *(v52 + 40) = 0;
  v53 = v81;
  sub_1E4202474();
  sub_1E3EE34D0();
  v54 = v74;
  OUTLINED_FUNCTION_32_0();
  sub_1E4203224();
  (*(v83 + 8))(v53, v85);
  v55 = sub_1E325F69C(v2, &qword_1ECF3BB48);
  v56 = (*(*v38 + 1184))(v55);
  v57 = v90;
  sub_1E3EE3610(v34, v90);
  v58 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v59 = swift_allocObject();
  sub_1E3EE3674(v57, v59 + v58);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1E3EE36D8;
  *(v60 + 24) = v59;
  v61 = v78;
  (*(v79 + 32))(v78, v54, v80);
  v62 = v84;
  *(v61 + *(v84 + 52)) = v56;
  v63 = (v61 + *(v62 + 56));
  *v63 = sub_1E379E500;
  v63[1] = v60;
  v92 = v38;
  sub_1E3EE3610(v34, v57);
  v64 = swift_allocObject();
  sub_1E3EE3674(v57, v64 + v58);
  type metadata accessor for LibLockupViewModel(0);
  sub_1E374AD40(&qword_1ECF3BB78, &qword_1ECF3BB58, &qword_1E42DBA68, MEMORY[0x1E697C278]);
  sub_1E3EE480C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel, &protocol conformance descriptor for ViewModel);
  swift_retain_n();
  v65 = v82;
  sub_1E4203524();

  v66 = OUTLINED_FUNCTION_57();
  sub_1E325F69C(v66, v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB80, &qword_1E42DBA80);
  v69 = v91;
  sub_1E3AB3A44(v38, (v91 + *(v68 + 36)));
  (*(v86 + 32))(v69, v65, v87);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3EE1BE8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0, &qword_1E42B7960);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v28 - v13);
  type metadata accessor for LibraryDownloadLockup(0);
  sub_1E3AB3B98(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F69C(v14, &qword_1ECF31FF0);
    v16 = 1;
  }

  else
  {
    MEMORY[0x1E690E3F0](v15);
    sub_1E325F69C(v14, &qword_1ECF31FC8);
    v17 = sub_1E4203BF4();
    (*(v6 + 8))(v10, v4);
    v16 = v17 ^ 1;
  }

  v18 = *v1;
  v19 = *(*v1 + 24);
  if (v19)
  {
    v20 = *(*v1 + 24);
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v28 - 4) = v1;
  *(&v28 - 3) = v21;
  *(&v28 - 2) = v20;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBD0, &qword_1E42DBC68);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBD8, &qword_1E42DBC70);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBE0, &qword_1E42DBC78);
  v25 = sub_1E3EE4860();
  v28 = v24;
  v29 = v25;
  OUTLINED_FUNCTION_10_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v23;
  v29 = MEMORY[0x1E69E6158];
  v30 = OpaqueTypeConformance2;
  v31 = MEMORY[0x1E69E6168];
  v27 = swift_getOpaqueTypeConformance2();
  sub_1E40424BC(v18, v16 & 1, sub_1E3EE4854, v22, v27, v3, (&v28 - 6));

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EE1EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBD8, &qword_1E42DBC70);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1E3EE1FE8();
  v14[2] = a2;
  v14[3] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBE0, &qword_1E42DBC78);
  v12 = sub_1E3EE4860();
  v14[0] = v11;
  v14[1] = v12;
  OUTLINED_FUNCTION_10_6();
  swift_getOpaqueTypeConformance2();
  sub_1E4203184();
  return (*(v7 + 8))(v10, v5);
}

void sub_1E3EE1FE8()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v0;
  v66 = v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBE0, &qword_1E42DBC78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  *v9 = sub_1E4201D44();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC10, &qword_1E42DBC90);
  v64 = v9;
  sub_1E3EE2590();
  v62 = sub_1E4201B84();
  v70 = 1;
  v61 = sub_1E39C408C();
  type metadata accessor for TextBadgePresenter(0);
  v63 = v5;
  v10 = *(**(v5 + 216) + 1856);
  v11 = v10();
  v60 = sub_1E3789F30(v11);
  v12 = sub_1E39C408C();
  v13 = v12;
  if (v12 && *v12 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {

    v13 = 0;
  }

  v77[0] = 0;
  type metadata accessor for VUIDownloadState(0);
  v14 = sub_1E42038E4();
  v67 = v78;
  v59 = v79;
  if ((v10)(v14) && (OUTLINED_FUNCTION_26_0(), (*(v15 + 152))(v72), v1 = v72[0], v2 = v72[1], v3 = v72[2], v4 = v72[3], , (v72[4] & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v82 = 0;
  v20 = sub_1E4202734();
  v21 = v82;
  v83 = 0;
  if (sub_1E39C408C())
  {

    v22 = 0;
    v23 = 0;
  }

  else
  {

    nullsub_1();
    v22 = v24;
    v23 = v25;
  }

  v26 = v60;
  v68[0] = v61;
  v68[1] = v60;
  v68[2] = v13;
  v68[3] = v67;
  v58 = v13;
  v27 = v59;
  v68[4] = v59;
  v68[5] = sub_1E3B56CA0;
  v68[6] = 0;
  LOBYTE(v68[7]) = v21;
  *(&v68[7] + 1) = v71[0];
  HIDWORD(v68[7]) = *(v71 + 3);
  LOBYTE(v68[8]) = v20;
  HIDWORD(v57) = v20;
  *(&v68[8] + 1) = v84[0];
  HIDWORD(v68[8]) = *(v84 + 3);
  v68[9] = v1;
  v68[10] = v2;
  v68[11] = v3;
  v68[12] = v4;
  LOBYTE(v68[13]) = 0;
  memcpy(v77, v68, 0x69uLL);
  v81 = 0;
  v28 = v61;
  sub_1E3743538(v68, &v78, &qword_1ECF3BC20, &qword_1E42DBCA0);
  v29 = OUTLINED_FUNCTION_57();
  sub_1E3B57E20(v29);
  v30 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v30, v31);
  v32 = v81;
  v33 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v33, v34);
  v78 = v28;
  v79 = v26;
  v80[0] = v58;
  v80[1] = v67;
  v80[2] = v27;
  v80[3] = sub_1E3B56CA0;
  v80[4] = 0;
  LOBYTE(v80[5]) = v21;
  *(&v80[5] + 1) = v71[0];
  HIDWORD(v80[5]) = *(v71 + 3);
  LOBYTE(v80[6]) = BYTE4(v57);
  *(&v80[6] + 1) = v84[0];
  HIDWORD(v80[6]) = *(v84 + 3);
  v80[7] = v1;
  v80[8] = v2;
  v80[9] = v3;
  v80[10] = v4;
  LOBYTE(v80[11]) = 0;
  sub_1E325F69C(&v78, &qword_1ECF3BC20);
  memcpy(v71, v77, 0x70uLL);
  v71[14] = 0;
  LOBYTE(v71[15]) = v32;
  *(&v71[15] + 1) = v68[0];
  HIDWORD(v71[15]) = *(v68 + 3);
  v71[16] = v22;
  v71[17] = v23;
  memcpy(v72, v77, 0x70uLL);
  v72[14] = 0;
  v73 = v32;
  *v74 = v68[0];
  *&v74[3] = *(v68 + 3);
  v75 = v22;
  v76 = v23;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v35, v36, v37, v38);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v39, v40);
  memcpy(&v69[7], v71, 0x90uLL);
  v41 = v70;
  v42 = sub_1E4203D44();
  v44 = v43;
  v45 = v62;
  v77[0] = v62;
  v77[1] = 0;
  LOBYTE(v77[2]) = v41;
  memcpy(&v77[2] + 1, v69, 0x97uLL);
  v77[21] = v42;
  v77[22] = v44;
  v47 = v64;
  v46 = v65;
  memcpy(&v64[*(v65 + 36)], v77, 0xB8uLL);
  v78 = v45;
  v79 = 0;
  LOBYTE(v80[0]) = v41;
  memcpy(v80 + 1, v69, 0x97uLL);
  v80[19] = v42;
  v80[20] = v44;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v48, v49, v50, v51);
  OUTLINED_FUNCTION_82();
  v54 = sub_1E325F69C(v52, v53);
  (*(**(v63 + 216) + 552))(v68, v54);
  if (v68[4])
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *v68;
  }

  v56 = sub_1E3EE4860();
  sub_1E391F8C0(v46, v56, v55);
  sub_1E325F69C(v47, &qword_1ECF3BBE0);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3EE2590()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC28, &qword_1E42DBCA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC30, &qword_1E42DBCB0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC38, &qword_1E42DBCB8);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  sub_1E3EE27D0();
  v22 = *v2;

  sub_1E3EE2BA4();
  v23 = sub_1E3EE4944();
  sub_1E40933F4(v22, v0, v4, v23, v13);
  sub_1E3743538(v21, v18, &qword_1ECF3BC38, &qword_1E42DBCB8);
  sub_1E3743538(v13, v10, &qword_1ECF3BC30, &qword_1E42DBCB0);
  v24 = v27;
  sub_1E3743538(v18, v27, &qword_1ECF3BC38, &qword_1E42DBCB8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC58, &qword_1E42DBCD0);
  sub_1E3743538(v10, v24 + *(v25 + 48), &qword_1ECF3BC30, &qword_1E42DBCB0);
  sub_1E325F69C(v13, &qword_1ECF3BC30);
  sub_1E325F69C(v21, &qword_1ECF3BC38);
  sub_1E325F69C(v10, &qword_1ECF3BC30);
  sub_1E325F69C(v18, &qword_1ECF3BC38);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE27D0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC68, &unk_1E42DBCE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - v12;
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v13, v14, &unk_1E42BD340);
  v15 = sub_1E4200BC4();
  v16 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v15 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v44);
  memcpy(v50, (v15 + v16), 0x58uLL);
  sub_1E3743538(v50, v45, &qword_1ECF322C8, &qword_1E42B8140);

  if (v50[7] && (v17 = v50[1], , sub_1E325F69C(v50, &qword_1ECF322C8), v17))
  {
    memcpy(v39, (v2 + 8), 0x5BuLL);
    v18 = *&v39[89];
    OUTLINED_FUNCTION_8();
    v36 = v4;
    v20 = *(v19 + 1736);
    v21 = sub_1E375C2C0(v39, v45);
    v22 = *v20(v21);
    v23 = (*(v22 + 744))();

    sub_1E375C31C(v39);
    memcpy(v46, (v2 + 8), sizeof(v46));
    v47 = v23;
    v48 = 0;
    v49 = v18;
    memcpy(v40, (v2 + 8), sizeof(v40));
    v41 = v23;
    v42 = 0;
    v43 = v18;
    sub_1E375C2C0(v46, v45);
    sub_1E375C31C(v40);
    v24 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v17, v46, 0, v24 & 1, 0, 0, v1);
    *(v1 + *(v37 + 36)) = 256;
    sub_1E4203DA4();
    sub_1E42015C4();
    sub_1E375C31C(v46);

    sub_1E3741EA0(v1, v10, &qword_1ECF2FEC0, &unk_1E42C8F40);
    memcpy((v10 + *(v6 + 36)), v45, 0x70uLL);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v25, v26, v27, v28);
    v29 = v36;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v30, v31, v32, v33);
    v34 = v29;
    v35 = 0;
  }

  else
  {
    v34 = v4;
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE2BA4()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v0;
  v52[2] = v7;
  v52[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC60, &unk_1E42DBCD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - v9;
  v52[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC50, &unk_1E42DBCC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0, &qword_1E42B7960);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_4();
  v21 = type metadata accessor for LibraryDownloadLockup(0);
  sub_1E3AB3B98(v1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
  if (__swift_getEnumTagSinglePayload(v1, 1, v22) == 1)
  {
    sub_1E325F69C(v1, &qword_1ECF31FF0);
    goto LABEL_5;
  }

  MEMORY[0x1E690E3F0](v22);
  sub_1E325F69C(v1, &qword_1ECF31FC8);
  v23 = sub_1E4203BF4();
  (*(v14 + 8))(v18, v12);
  if ((v23 & 1) == 0)
  {
LABEL_5:
    v34 = sub_1E39C408C();
    if (v34)
    {
      v35 = v34;
      if (*v34 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {
        v36 = v6 + *(v21 + 48);
        v37 = *(v36 + 8);
        LOBYTE(v53[0]) = *v36;
        v53[1] = v37;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
        sub_1E4203914();
        sub_1E3F66914(v35, 0, v57[0], v57[1], v57[2], v54);
        OUTLINED_FUNCTION_11_156();
        OUTLINED_FUNCTION_11_156();
        sub_1E4203DA4();
        sub_1E4200D94();
        OUTLINED_FUNCTION_11_156();
        if (LOBYTE(v53[0]) == 1 && (OUTLINED_FUNCTION_8(), (*(v38 + 1808))(), OUTLINED_FUNCTION_26_0(), (*(v39 + 152))(v55), v2 = v55[0], v3 = v55[1], v4 = v55[2], v5 = v55[3], , (v56 & 1) == 0))
        {
          OUTLINED_FUNCTION_13_3(v40, v41, v42, v43);
        }

        else
        {
          OUTLINED_FUNCTION_5_8();
        }

        OUTLINED_FUNCTION_3();
        v44 = sub_1E4202734();
        v54[88] = 0;
        v45 = sub_1E417311C();
        v47 = v46;

        v54[96] = v47 & 1;
        memcpy(v53, v54, 0x58uLL);
        LOBYTE(v53[11]) = v44;
        v53[12] = v2;
        v53[13] = v3;
        v53[14] = v4;
        v53[15] = v5;
        LOBYTE(v53[16]) = 0;
        v53[17] = v45;
        LOBYTE(v53[18]) = v47 & 1;
        nullsub_1();
        memcpy(v57, v53, 0x91uLL);
        goto LABEL_14;
      }
    }

    sub_1E3B57E18(v57);
LABEL_14:
    memcpy(v53, v57, 0x91uLL);
    memcpy(v10, v53, 0x91uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E28, &qword_1E42BDB60);
    OUTLINED_FUNCTION_8_169();
    sub_1E3EE49FC(v48, v49, v50, v51);
    sub_1E3B57D68();
    OUTLINED_FUNCTION_18_5();
    sub_1E4201F44();
    goto LABEL_15;
  }

  sub_1E3EE30D0();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v24, v25, v26, v27);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E28, &qword_1E42BDB60);
  OUTLINED_FUNCTION_8_169();
  OUTLINED_FUNCTION_82();
  sub_1E3EE49FC(v28, v29, v30, v31);
  sub_1E3B57D68();
  sub_1E4201F44();
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v32, v33);
LABEL_15:
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3EE30D0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v48 = v4;
  v49 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v47 = v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8, &qword_1E42C9810);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  if (*(v0 + *(type metadata accessor for LibraryDownloadLockup(0) + 40)))
  {
    OUTLINED_FUNCTION_8();
    v13 = *(v12 + 408);

    v13(v52, v14);

    v15 = *(*v0 + 16);
    v16 = *(*v0 + 24);
    OUTLINED_FUNCTION_8();
    v18 = *(v17 + 240);

    v20 = v18(v19);

    v21 = sub_1E3AB391C(v15, v16, v20);

    v22 = &v54;
    v23 = v56;
    if (v21)
    {
      v23 = &v55;
    }

    v24 = *v23;
    if (v21)
    {
      v22 = &v53;
    }

    if (v24)
    {
      v25 = *v22;
      memcpy(v59, (v1 + 8), 0x5BuLL);

      v26 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v24, v59, v25, v26 & 1, 0, 0, v47);
      if (v25)
      {
        OUTLINED_FUNCTION_8();
        v28 = *(v27 + 200);

        v28(v29);

        v30 = *(*v25 + 304);

        v30(v31);
      }

      sub_1E4203DA4();
      sub_1E4200D94();

      sub_1E3844FE0(v52);

      (*(v48 + 32))(v10, v47, v49);
      v34 = v50;
      v35 = (v10 + *(v50 + 36));
      v36 = v57;
      *v35 = *&v56[88];
      v35[1] = v36;
      v35[2] = v58;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v37, v38, v39, v40);
      v33 = v51;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v41, v42, v43, v44);
      v32 = 0;
    }

    else
    {
      sub_1E3844FE0(v52);
      v32 = 1;
      v34 = v50;
      v33 = v51;
    }

    __swift_storeEnumTagSinglePayload(v33, v32, 1, v34);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_3_211();
    sub_1E3EE480C(v45, v46, &unk_1E42A2B70);
    OUTLINED_FUNCTION_82();
    sub_1E4201744();
    __break(1u);
  }
}

unint64_t sub_1E3EE34D0()
{
  result = qword_1ECF3BB70;
  if (!qword_1ECF3BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB48, &qword_1E42DBA58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB38, &qword_1E42DBA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB30, &qword_1E42DBA40);
    sub_1E374AD40(&qword_1ECF3BB68, &qword_1ECF3BB30, &qword_1E42DBA40, &unk_1E42E7258);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BB70);
  }

  return result;
}

uint64_t sub_1E3EE3610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryDownloadLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3EE3674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryDownloadLockup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3EE36D8()
{
  v0 = type metadata accessor for LibraryDownloadLockup(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v1, v2, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  sub_1E3AB9E3C();

  return result;
}

uint64_t objectdestroyTm_48()
{
  v1 = type metadata accessor for LibraryDownloadLockup(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1E3264CE0(*(v2 + 224), *(v2 + 232));
  v3 = v2 + *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8, &qword_1E42CA850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
    if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v6 + 8))(v3 + v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1E3EE39BC()
{
  v0 = type metadata accessor for LibraryDownloadLockup(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v1, v2, &unk_1E42BD340);
  OUTLINED_FUNCTION_57();
  sub_1E4200BC4();
  sub_1E3AB9E3C();

  return result;
}

uint64_t sub_1E3EE3AAC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB98, &qword_1E42DBBF8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBA0, &qword_1E42DBC00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_50_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBA8, &qword_1E42DBC08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBB0, &qword_1E42DBC10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v64 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBB8, &qword_1E42DBC18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v25 = *v3;
  if (*v3)
  {
    v60 = v15;
    v61 = &v60 - v24;
    v62 = v23;
    v63 = a1;

    *v8 = sub_1E4201B84();
    *(v8 + 1) = 0;
    v8[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBC0, &qword_1E42DBC20);
    sub_1E3EE4088(v25, v3, v26, v27, v28, v29, v30, v31, v60, v61, v62, v63, v64, *v65, *&v65[8], *&v65[16], v66, *(&v66 + 1), v67, v68);
    v32 = *(v3 + 16);
    if (v32)
    {
      v33 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel;
      OUTLINED_FUNCTION_5_0(&v32[OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel], v65);
      v32 = *&v32[v33];
      v34 = sub_1E40A0988();
    }

    else
    {
      type metadata accessor for VUIDownloadState(0);
      v34 = sub_1E3B4F980(v36, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v37 = swift_allocObject();
    OUTLINED_FUNCTION_17_126(v37);
    sub_1E3741EA0(v8, v1, &qword_1ECF3BB98, &qword_1E42DBBF8);
    *(v1 + *(v9 + 52)) = v34;
    v38 = (v1 + *(v9 + 56));
    *v38 = sub_1E3EE468C;
    v38[1] = v32;
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_17_126(v39);
    sub_1E3741EA0(v1, v14, &qword_1ECF3BBA0, &qword_1E42DBC00);
    v40 = &v14[*(v11 + 36)];
    *v40 = sub_1E3EE4740;
    v40[1] = v32;
    v40[2] = 0;
    v40[3] = 0;
    sub_1E3EE47D4(v3, &v66);
    sub_1E3EE47D4(v3, &v66);
    v66 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF8, &unk_1E42BDB28);
    sub_1E42038F4();
    v41 = 0.0;
    if (v69 == 2 || (v66 = *(v3 + 24), sub_1E42038F4(), v69 == 1))
    {
      v42 = v60;
    }

    else
    {
      type metadata accessor for RentalPresenterWrapper(0);
      OUTLINED_FUNCTION_9_155();
      sub_1E3EE480C(v54, v55, &unk_1E42BD340);
      OUTLINED_FUNCTION_32_0();
      sub_1E4200BC4();
      OUTLINED_FUNCTION_26_0();
      v57 = (*(v56 + 184))();

      v42 = v60;
      if (v57)
      {
        OUTLINED_FUNCTION_8();
        v59 = (*(v58 + 400))();

        if (v59)
        {
          v41 = 1.0;
        }

        else
        {
          v41 = 0.0;
        }
      }
    }

    v43 = v14;
    v44 = v64;
    sub_1E3741EA0(v43, v64, &qword_1ECF3BBA8, &qword_1E42DBC08);
    *(v44 + *(v42 + 36)) = v41;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF0, &qword_1E42BDB20);
    type metadata accessor for RentalPresenterWrapper(0);
    OUTLINED_FUNCTION_9_155();
    sub_1E3EE480C(v46, v47, &unk_1E42BD340);
    sub_1E4200BC4();
    v48 = sub_1E3D7998C();

    sub_1E3741EA0(v44, v21, &qword_1ECF3BBB0, &qword_1E42DBC10);
    v49 = v61;
    v50 = v62;
    v51 = (v21 + *(v62 + 36));
    *v51 = KeyPath;
    v51[1] = v48;
    sub_1E3741EA0(v21, v49, &qword_1ECF3BBB8, &qword_1E42DBC18);
    v52 = v49;
    v53 = v63;
    sub_1E3741EA0(v52, v63, &qword_1ECF3BBB8, &qword_1E42DBC18);
    return __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
  }
}

void sub_1E3EE4088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8, &qword_1E42A6810);
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  v42 = *(v23 + 8);

  OUTLINED_FUNCTION_18();
  sub_1E3FC96D0(v25, v42, v31);
  sub_1E3EE480C(qword_1EE23BBE8, type metadata accessor for TextBadge, &unk_1E42E3350);
  View.accessibilityIdentifier(key:location:)();
  sub_1E3811660(v31);
  v43 = *(v34 + 16);
  v43(v38, v41, v32);
  v43(v27, v38, v32);
  v44 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBC8, &unk_1E42DBC58) + 48)];
  *v44 = 0;
  v44[8] = 1;
  v45 = *(v34 + 8);
  v45(v41, v32);
  v45(v38, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE4318(uint64_t a1)
{
  type metadata accessor for LibLockupViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LibraryLockupLayout();
      if (v3 <= 0x3F)
      {
        sub_1E3ABD168(319);
        if (v4 <= 0x3F)
        {
          sub_1E3AB3F5C(319);
          if (v5 <= 0x3F)
          {
            sub_1E3AB3FC0(319);
            if (v6 <= 0x3F)
            {
              sub_1E38D5D68(319);
              if (v7 <= 0x3F)
              {
                sub_1E3B57AC4(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
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

unint64_t sub_1E3EE4458()
{
  result = qword_1ECF3BB88;
  if (!qword_1ECF3BB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB80, &qword_1E42DBA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB58, &qword_1E42DBA68);
    type metadata accessor for LibLockupViewModel(255);
    sub_1E374AD40(&qword_1ECF3BB78, &qword_1ECF3BB58, &qword_1E42DBA68, MEMORY[0x1E697C278]);
    sub_1E3EE480C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel, &protocol conformance descriptor for ViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E3EE480C(&qword_1ECF3BB90, type metadata accessor for CollectionViewCellEditableModifier, &unk_1E42B79C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BB88);
  }

  return result;
}

uint64_t sub_1E3EE45D4(uint64_t a1, int a2)
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

uint64_t sub_1E3EE4614(uint64_t result, int a2, int a3)
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

double sub_1E3EE468C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF8, &unk_1E42BDB28);
  sub_1E4203904();
  return result;
}

uint64_t objectdestroy_20Tm_0()
{

  sub_1E3264CE0(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

double sub_1E3EE4740()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel;
    OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel, v5);
    v3 = [*(v1 + v2) downloadState];
  }

  else
  {
    v3 = 0;
  }

  v6 = *(v0 + 40);
  v5[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF8, &unk_1E42BDB28);
  sub_1E4203904();
  return result;
}

uint64_t sub_1E3EE480C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3EE4860()
{
  result = qword_1ECF3BBE8;
  if (!qword_1ECF3BBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBE0, &qword_1E42DBC78);
    sub_1E374AD40(&qword_1ECF3BBF0, &unk_1ECF3BBF8, &unk_1E42DBC80, MEMORY[0x1E6981870]);
    sub_1E374AD40(&qword_1ECF3BC00, &unk_1ECF3BC08, &unk_1E42DBC88, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BBE8);
  }

  return result;
}

unint64_t sub_1E3EE4944()
{
  result = qword_1ECF3BC40;
  if (!qword_1ECF3BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BC28, &qword_1E42DBCA8);
    sub_1E3EE49FC(&qword_1ECF3BC48, &qword_1ECF3BC50, &unk_1E42DBCC0, sub_1E3868018);
    sub_1E3B57D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC40);
  }

  return result;
}

uint64_t sub_1E3EE49FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3EE4A74()
{
  result = qword_1ECF3BC80;
  if (!qword_1ECF3BC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBB8, &qword_1E42DBC18);
    sub_1E3EE4B2C();
    sub_1E374AD40(&qword_1EE288800, &unk_1ECF33E70, &unk_1E42BDBB0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC80);
  }

  return result;
}

unint64_t sub_1E3EE4B2C()
{
  result = qword_1ECF3BC88;
  if (!qword_1ECF3BC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBB0, &qword_1E42DBC10);
    sub_1E3EE4BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC88);
  }

  return result;
}

unint64_t sub_1E3EE4BB8()
{
  result = qword_1ECF3BC90;
  if (!qword_1ECF3BC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBA8, &qword_1E42DBC08);
    sub_1E374AD40(&qword_1ECF3BC98, &qword_1ECF3BBA0, &qword_1E42DBC00, MEMORY[0x1E697C278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC90);
  }

  return result;
}

void sub_1E3EE4C70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = sub_1E4200A74() & 1;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10 & 1;
  swift_unknownObjectWeakInit();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 40) = a3;
  swift_unknownObjectWeakAssign();
}

void sub_1E3EE4CFC(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCA0, &qword_1E42DBD00);
  sub_1E3EE4D4C();
}

void sub_1E3EE4D4C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v49 = v3;
  sub_1E4202054();
  OUTLINED_FUNCTION_0_10();
  v45 = v4;
  v46 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD00, &qword_1E42DBF30);
  OUTLINED_FUNCTION_0_10();
  v42 = v9;
  v43 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD08, &qword_1E42DBF38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD10, &qword_1E42DBF40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_2_5();
  v48 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v42 - v18;
  v19 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();

  v20 = sub_1E4200544();
  v21 = *(v2 + 8);
  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  LOBYTE(v50) = *(v2 + 16);
  v51 = v22;
  LOBYTE(v52) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD18, &qword_1E42DBF48);
  sub_1E4200A64();
  v50 = v20;
  v51 = v19;
  v52 = v21;
  v53 = v55;
  v54 = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD20, &qword_1E42DBF50);
  v25 = sub_1E3EE7F58();
  sub_1E40443A0();

  sub_1E4202044();
  v50 = v24;
  v51 = v25;
  v52 = &off_1F5D8C148;
  swift_getOpaqueTypeConformance2();
  sub_1E3EE8878(&qword_1EE2889F0, MEMORY[0x1E697C720]);
  v26 = v42;
  v27 = v45;
  sub_1E4202D94();
  (*(v46 + 8))(v8, v27);
  (*(v43 + 8))(v13, v26);
  v28 = sub_1E3EE5208();
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  v31 = !v28;
  v32 = v44;
  *(v30 + 16) = v31;
  v33 = (v0 + *(v32 + 36));
  *v33 = KeyPath;
  v33[1] = sub_1E37E09AC;
  v33[2] = v30;
  sub_1E3EE5208();
  sub_1E3EE7FBC();
  v34 = v47;
  OUTLINED_FUNCTION_32_0();
  sub_1E4203354();
  sub_1E325F69C(v0, &qword_1ECF3BD08);
  v35 = v48;
  OUTLINED_FUNCTION_68(v34, v48);
  v36 = v49;
  OUTLINED_FUNCTION_68(v35, v49);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD28, &qword_1E42DBF90) + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v38, v39);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v40, v41);
  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3EE5208()
{
  v0 = sub_1E39C408C();
  v1 = v0 != 0;
  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 544))();
  if (v3)
  {

    return 1;
  }

  return v1;
}

uint64_t sub_1E3EE5294(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3EE52D0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
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

      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }
  }

  return result;
}

void *sub_1E3EE5324(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }

    *(result + 17) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }
  }

  return result;
}

void sub_1E3EE536C(uint64_t a1)
{
  sub_1E3BF5F74();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ViewModel();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_DWORD *sub_1E3EE540C(_DWORD *result, unsigned int a2, uint64_t a3)
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

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_27;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        LODWORD(v11) = v8 + (v11 | v16);
        break;
      default:
        goto LABEL_27;
    }

    return OUTLINED_FUNCTION_17_7(v11);
  }

LABEL_27:
  if ((v6 & 0x80000000) == 0)
  {
    v11 = *result;
    if (*result >= 0xFFFFFFFFuLL)
    {
      LODWORD(v11) = -1;
    }

    return OUTLINED_FUNCTION_17_7(v11);
  }

  return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
}

void sub_1E3EE554C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (a1 + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v20 = (a2 - 1);
            }

            *a1 = v20;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_32_0();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3EE573C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (a1)
    {
LABEL_6:
      OUTLINED_FUNCTION_111();
      return (*(v5 + 392))();
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v2 = *(*a2 + 1624);
  v3 = *(a1 + 98);

  v4 = v2(v3, 0);

  if (!v4)
  {
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_1E3EE5808@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v120) = a2;
  v139 = a3;
  v131 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v129 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v7 - v6);
  v144 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v145 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v11 - v10);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCB0, &qword_1E42DBED8);
  OUTLINED_FUNCTION_0_10();
  v124 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCB8, &qword_1E42DBEE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_2_5();
  v126 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(&v118 - v18);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCC0, &qword_1E42DBEE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCC8, &qword_1E42DBEF0);
  OUTLINED_FUNCTION_0_10();
  v133 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v118 - v23;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCD0, &qword_1E42DBEF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v118 - v26;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCD8, &qword_1E42DBF00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v29);
  v30 = sub_1E39C408C();
  if (v30)
  {
    if (*v30 == _TtC8VideosUI13TextViewModel)
    {
      v143 = v30;
      goto LABEL_6;
    }
  }

  v143 = 0;
LABEL_6:
  v31 = sub_1E39C408C();
  if (v31)
  {
    if (*v31 == _TtC8VideosUI13TextViewModel)
    {
      v142 = v31;
      goto LABEL_11;
    }
  }

  v142 = 0;
LABEL_11:
  v32 = sub_1E39C408C();
  if (v32)
  {
    if (*v32 == _TtC8VideosUI13TextViewModel)
    {
      v140 = v32;
      goto LABEL_16;
    }
  }

  v140 = 0;
LABEL_16:
  if (!sub_1E39C408C())
  {
LABEL_19:
    v146 = 0;
    goto LABEL_20;
  }

  type metadata accessor for ImageViewModel();
  v146 = swift_dynamicCastClass();
  if (!v146)
  {

    goto LABEL_19;
  }

LABEL_20:
  v33 = sub_1E39C408C();
  v138 = v27;
  if (v33)
  {
    type metadata accessor for ImageViewModel();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {

      v33 = 0;
    }
  }

  v121 = v33;
  v34 = sub_1E39C408C();
  if (v34 && *v34 != _TtC8VideosUI13TextViewModel)
  {
  }

  v35 = sub_1E39C408C();
  v132 = v24;
  if (v35 && *v35 != _TtC8VideosUI13TextViewModel)
  {
  }

  v36 = sub_1E39C408C();
  if (v36 && *v36 != _TtC8VideosUI13TextViewModel)
  {
  }

  v38 = sub_1E3EE573C(v37, a1);

  if (v38)
  {
    type metadata accessor for TextLayout();
    v39 = swift_dynamicCastClass();
    if (!v39)
    {
    }
  }

  else
  {
    v39 = 0;
  }

  v41 = sub_1E3EE573C(v40, a1);

  if (v41)
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
    }
  }

  else
  {
    v42 = 0;
  }

  v119 = a1;
  v44 = sub_1E3EE573C(v43, a1);

  if (v44)
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
    }

    if (!v39)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v45 = 0;
    if (!v39)
    {
      goto LABEL_47;
    }
  }

  v46 = *(*v39 + 152);

  v46(&v149, v47);

  if ((v150 & 1) == 0)
  {
    if (!v45)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_47:
  if (v42)
  {
    OUTLINED_FUNCTION_111();
    (*(v48 + 152))(&v151);
    if (!v45)
    {
      goto LABEL_54;
    }
  }

  else if (!v45)
  {
    goto LABEL_54;
  }

LABEL_53:
  v49 = *(*v45 + 152);

  v49(__src, v50);

  if ((__src[4] & 1) == 0)
  {
    v54 = *&__src[2];

    goto LABEL_60;
  }

LABEL_54:
  if (v42)
  {
    OUTLINED_FUNCTION_111();
    (*(v51 + 152))(__dst);

    v52 = OUTLINED_FUNCTION_22_85(&v152);
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0.0;
    }
  }

  else
  {

    v54 = 0.0;
  }

LABEL_60:
  v55 = sub_1E39C408C();
  v56 = v119;
  if (!v119)
  {
    if (v55)
    {
      goto LABEL_65;
    }

LABEL_70:
    v63 = 0.0;
    goto LABEL_71;
  }

  if (!v55)
  {
    goto LABEL_70;
  }

  v57 = *(*v119 + 1624);
  v58 = *(v55 + 98);

  v59 = v57(v58, 0);

  if (v59)
  {
    goto LABEL_66;
  }

LABEL_65:
  OUTLINED_FUNCTION_111();
  if (!(*(v60 + 392))())
  {

    goto LABEL_70;
  }

LABEL_66:
  OUTLINED_FUNCTION_8();
  (*(v61 + 152))(__dst);

  v62 = OUTLINED_FUNCTION_22_85(&v153);
  if (v53)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0.0;
  }

LABEL_71:
  v64 = sub_1E39C408C();
  v65 = v64;
  if (v64)
  {
    if (*v64 == _TtC8VideosUI13TextViewModel)
    {
    }

    else
    {

      v65 = 0;
    }
  }

  v66 = sub_1E3EE573C(v65, v56);

  if (!v66)
  {
    goto LABEL_81;
  }

  type metadata accessor for TextLayout();
  if (!swift_dynamicCastClass())
  {

LABEL_81:

    v71 = 2.0;
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_30();
  v68 = *(v67 + 152);

  v68(__dst, v69);

  v70 = OUTLINED_FUNCTION_22_85(&v152);
  if (v53)
  {
    v71 = v70;
  }

  else
  {
    v71 = 2.0;
  }

LABEL_82:
  v119 = sub_1E39C408C();
  v72 = sub_1E4201B84();
  v73 = v141;
  *v141 = v72;
  *(v73 + 1) = v63;
  *(v73 + 16) = 0;
  v118 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCE0, &qword_1E42DBF08) + 44));

  v74 = sub_1E4201D54();
  LOBYTE(v151) = 0;
  v75 = v120 & 1;
  v76 = v143;

  v77 = v140;

  __src[0] = v74;
  *&__src[1] = v71;
  LOBYTE(__src[2]) = v151;
  __src[3] = v76;
  LOBYTE(__src[4]) = v75;
  __src[5] = v78;
  LOBYTE(__src[6]) = v75;
  __src[7] = v77;
  LOBYTE(__src[8]) = v75;
  v79 = v135;
  sub_1E4202474();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCE8, &qword_1E42DBF10);
  v81 = sub_1E3A1558C(&qword_1EE2884E8, &qword_1ECF3BCE8);
  v82 = v122;
  sub_1E4203224();
  v83 = *(v145 + 8);
  v145 += 8;
  v120 = v83;
  v83(v79, v144);
  memcpy(__dst, __src, 0x41uLL);
  sub_1E325F69C(__dst, &qword_1ECF3BCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270, &unk_1E42C3980);
  v84 = v129;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1E4297BE0;
  sub_1E4201CA4();
  __src[0] = v85;
  sub_1E3EE8878(&qword_1EE289298, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278, &qword_1E42C91A0);
  sub_1E3A1558C(&qword_1EE23B5D8, &qword_1ECF35278);
  v86 = v128;
  v87 = v131;
  sub_1E42072E4();
  __src[0] = v80;
  __src[1] = v81;
  swift_getOpaqueTypeConformance2();
  v88 = v123;
  v89 = v125;
  sub_1E4203294();
  (*(v84 + 8))(v86, v87);
  (*(v124 + 8))(v82, v89);
  v90 = v126;
  OUTLINED_FUNCTION_68(v88, v126);
  v91 = v118;
  *v118 = v146;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCF0, &qword_1E42DBF18);
  OUTLINED_FUNCTION_68(v90, v91 + *(v92 + 48));

  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v93, v94);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v95, v96);

  sub_1E4202474();
  OUTLINED_FUNCTION_9_0();
  sub_1E3A1558C(v97, &qword_1ECF3BCC0);
  v98 = v132;
  v99 = v141;
  sub_1E4203224();
  v120(v79, v144);
  sub_1E325F69C(v99, &qword_1ECF3BCC0);
  sub_1E4202744();
  v100 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v53)
  {
    v100 = sub_1E4202774();
  }

  sub_1E4200A54();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v138;
  (*(v133 + 32))(v138, v98, v134);
  OUTLINED_FUNCTION_141();
  v111 = v109 + v110;
  *v111 = v100;
  *(v111 + 8) = v102;
  *(v111 + 16) = v104;
  *(v111 + 24) = v106;
  *(v111 + 32) = v108;
  *(v111 + 40) = 0;
  sub_1E4202754();
  v112 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v53)
  {
    v112 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v113 = v137;
  sub_1E3741EA0(v109, v137, &qword_1ECF3BCD0, &qword_1E42DBEF8);
  OUTLINED_FUNCTION_141();
  v115 = v113 + v114;
  *v115 = v112;
  *(v115 + 8) = v102;
  *(v115 + 16) = v54;
  *(v115 + 24) = v104;
  *(v115 + 32) = v106;
  *(v115 + 40) = 0;
  v116 = v139;
  sub_1E3741EA0(v113, v139, &qword_1ECF3BCD8, &qword_1E42DBF00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCF8, &unk_1E42DBF20);
  *(v116 + *(result + 36)) = 256;
  return result;
}

void sub_1E3EE68D4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v44 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v42 - v4;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE60, &qword_1E42AF990);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD38, &qword_1E42DC1A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD40, &qword_1E42DC1B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD48, &qword_1E42DC1B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v42 - v17;
  sub_1E3EB9BB4(v54);
  v19 = OUTLINED_FUNCTION_18();
  v43 = v5;
  sub_1E37E8BE8(v1, v54, 0, v19 & 1, 0, 0, v5);
  v20 = sub_1E375C31C(v54);
  v21 = *(*v1 + 392);
  v53 = *v1 + 392;
  v52 = v21;
  if (v21(v20))
  {
    OUTLINED_FUNCTION_30();
    v51 = (*(v22 + 248))();
    v50 = v23;
  }

  else
  {
    v51 = 0;
    v50 = 1;
  }

  v49 = v1;
  OUTLINED_FUNCTION_13_151();
  v25 = v24();
  v47 = v8;
  if (v25)
  {
    (*(*v25 + 352))();
  }

  sub_1E4203DA4();
  v26 = 1;
  sub_1E42015C4();
  v27 = v47;
  (*(v44 + 32))(v47, v43, v45);
  OUTLINED_FUNCTION_141();
  memcpy((v27 + v28), v55, 0x70uLL);
  OUTLINED_FUNCTION_13_151();
  if (v29())
  {
    OUTLINED_FUNCTION_30();
    v31 = (*(v30 + 432))();
    v26 = v32;
  }

  else
  {
    v31 = 0;
  }

  sub_1E3741EA0(v27, v11, &qword_1ECF2FE60, &qword_1E42AF990);
  OUTLINED_FUNCTION_141();
  v34 = &v11[v33];
  *v34 = v31;
  v34[8] = v26 & 1;
  v34[9] = 0;
  OUTLINED_FUNCTION_13_151();
  if (!v35() || (OUTLINED_FUNCTION_30(), v37 = (*(v36 + 744))(), , !v37))
  {
    v37 = [objc_opt_self() clearColor];
  }

  v38 = sub_1E38F08C4(v37);

  v39 = sub_1E4202734();
  v40 = v48;
  sub_1E3741EA0(v11, v48, &qword_1ECF3BD38, &qword_1E42DC1A8);
  v41 = v40 + *(v12 + 36);
  *v41 = v38;
  *(v41 + 8) = v39;
  sub_1E3741EA0(v40, v18, &qword_1ECF3BD40, &qword_1E42DC1B0);
  *&v18[*(v15 + 36)] = 256;
  sub_1E3EE8530();
  sub_1E4203594();
  sub_1E325F69C(v18, &qword_1ECF3BD48);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE6F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_35_65();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD30, &qword_1E42DC1A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  if (v21)
  {
    type metadata accessor for ImageViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_31_4();

      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_8();
      v29 = (*(v28 + 1000))(0);
      if (v30 != 0xFF)
      {
        v31 = v29;
        v32 = v30;
        sub_1E3EE68D4();
        OUTLINED_FUNCTION_8();
        v34 = *(v33 + 344);

        v36 = v34(v35);

        sub_1E379098C(v31, v32);

        v27[*(v24 + 36)] = v36 & 1;
        sub_1E3741EA0(v27, v20, &qword_1ECF3BD30, &qword_1E42DC1A0);
        v37 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v24);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
}

void sub_1E3EE70CC(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_35_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v6);
  if (v2)
  {

    sub_1E3F23370();
    sub_1E4202754();
    OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v9)
    {
      v7 = sub_1E4202774();
    }

    if (sub_1E3C27528(v7, v8))
    {
      OUTLINED_FUNCTION_30();
      (*(v10 + 152))(&v24);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v16 = OUTLINED_FUNCTION_31_72();
    v17(v16);
    OUTLINED_FUNCTION_19_123();
    OUTLINED_FUNCTION_38_58();
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v18, v19, v20, &qword_1E4298440);
    v21 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v4);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

void sub_1E3EE7310()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_35_65();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF50, &qword_1E42ADDC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  if (v1)
  {
    v22 = v8;
    type metadata accessor for Accessibility();
    v11 = *(*v1 + 320);
    v21 = v0;

    v11(v12);
    sub_1E40A7DC8();

    sub_1E3F23370();
    swift_getOpaqueTypeConformance2();
    sub_1E4202EA4();

    (*(v5 + 8))(v2, v3);
    sub_1E3741EA0(v10, v21, &qword_1ECF2EF50, &qword_1E42ADDC0);
    v13 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v22);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

void sub_1E3EE7558(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_35_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v6);
  if (v2)
  {

    sub_1E3F23370();
    sub_1E4202744();
    OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v9)
    {
      v7 = sub_1E4202774();
    }

    if (sub_1E3C27528(v7, v8))
    {
      OUTLINED_FUNCTION_30();
      (*(v10 + 152))(v24);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v16 = OUTLINED_FUNCTION_31_72();
    v17(v16);
    OUTLINED_FUNCTION_19_123();
    OUTLINED_FUNCTION_38_58();
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v18, v19, v20, &qword_1E4298440);
    v21 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v4);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1E3EE779C()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_21_1();
  sub_1E3A1558C(v2, v3);
  return sub_1E42006B4();
}

void sub_1E3EE7820()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v28 = v0;
  v4 = v3;
  v30 = v5;
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = sub_1E42039A4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_29();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v29 = &v27 - v21;
  (*(v7 + 16))(v11, v2, v4, v20);
  v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v14;
  (*(v7 + 32))(v23 + v22, v11, v4);
  v31 = v13;
  v32 = v14;
  v33 = v28;
  sub_1E4203964();
  OUTLINED_FUNCTION_6_185();
  swift_getWitnessTable();
  v24 = *(v17 + 16);
  v25 = v29;
  v24(v29, v1, v15);
  v26 = *(v17 + 8);
  v26(v1, v15);
  v24(v30, v25, v15);
  v26(v25, v15);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EE7A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v13 = type metadata accessor for RichHeaderButtonView(0, v10, v11, v12);
  v14 = *(v6 + 16);
  v14(v9, a1 + *(v13 + 36), a2);
  v14(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

double sub_1E3EE7BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RichHeaderButtonView(0, *(v4 + 16), *(v4 + 24), a4);
  memset(v37, 0, sizeof(v37));
  v38 = 1;
  sub_1E40421AC(2, 0, v37, v32);
  v5 = v32[0];
  v6 = v33;
  v26 = v35;
  v27 = v34;
  v7 = v36;
  v8 = sub_1E39C408C();
  if (!v8)
  {
    goto LABEL_16;
  }

  type metadata accessor for SeeAllButton();
  if ((sub_1E3DFBA90(v8) & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = sub_1E39BE4D0();
  if (v9)
  {
    v10 = v9;
    v39 = 9;
    OUTLINED_FUNCTION_111();
    (*(v11 + 776))(v28, &v39, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (*(&v29 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v39)
        {
          OUTLINED_FUNCTION_111();
          v13 = v8;
          v14 = (*(v12 + 624))();
          if (v14)
          {
            while (1)
            {
              type metadata accessor for CollectionViewModel();
              if (swift_dynamicCastClass())
              {
                OUTLINED_FUNCTION_30();
                v16 = v15;
                if (type metadata accessor for SearchCollectionViewModel() != v15)
                {
                  break;
                }
              }

              v13 = v14;
              (*(*v14 + 624))();
              OUTLINED_FUNCTION_31_4();
            }

            v17 = *(v16 + 1440);

            v17(v18);
            OUTLINED_FUNCTION_31_4();

            sub_1E3744600(v10);

            v22 = sub_1E3744600(v13);

            v23 = objc_allocWithZone(VUIRouterDataSource);
            v24 = OUTLINED_FUNCTION_31_4();
            v25 = sub_1E37C07A4(v24, v22);
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      sub_1E325F69C(v28, &unk_1ECF296E0);
    }

    OUTLINED_FUNCTION_111();
    v25 = (*(v19 + 544))();
LABEL_15:
    v6 = v25;
    sub_1E38E5014(v32);

LABEL_16:
    LOBYTE(v28[0]) = v5;
    v28[1] = v6;
    v29 = v27;
    v30 = v26;
    v31 = v7;
    v20 = v6;
    sub_1E4200524();

    goto LABEL_17;
  }

  sub_1E38E5014(v32);
LABEL_17:

  return result;
}

unint64_t sub_1E3EE7F58()
{
  result = qword_1EE29CFC0[0];
  if (!qword_1EE29CFC0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD20, &qword_1E42DBF50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29CFC0);
  }

  return result;
}

unint64_t sub_1E3EE7FBC()
{
  result = qword_1EE289938;
  if (!qword_1EE289938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD08, &qword_1E42DBF38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD00, &qword_1E42DBF30);
    sub_1E4202054();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD20, &qword_1E42DBF50);
    sub_1E3EE7F58();
    swift_getOpaqueTypeConformance2();
    sub_1E3EE8878(&qword_1EE2889F0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE288760, &qword_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289938);
  }

  return result;
}

uint64_t sub_1E3EE8168(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

void *sub_1E3EE81B8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3EE8214(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

void *sub_1E3EE8264(void *result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_25_9(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3EE82BC()
{
  result = qword_1EE2894A0;
  if (!qword_1EE2894A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCF8, &unk_1E42DBF20);
    sub_1E3EE8348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894A0);
  }

  return result;
}

unint64_t sub_1E3EE8348()
{
  result = qword_1EE2895C0;
  if (!qword_1EE2895C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCD8, &qword_1E42DBF00);
    sub_1E3EE83D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895C0);
  }

  return result;
}

unint64_t sub_1E3EE83D4()
{
  result = qword_1EE289908;
  if (!qword_1EE289908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCD0, &qword_1E42DBEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCC0, &qword_1E42DBEE8);
    sub_1E3A1558C(&qword_1EE288600, &qword_1ECF3BCC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289908);
  }

  return result;
}

unint64_t sub_1E3EE8530()
{
  result = qword_1EE289450;
  if (!qword_1EE289450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD48, &qword_1E42DC1B8);
    sub_1E3EE85E8();
    sub_1E3A1558C(&qword_1EE289E00, &unk_1ECF2A1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289450);
  }

  return result;
}

unint64_t sub_1E3EE85E8()
{
  result = qword_1EE289510;
  if (!qword_1EE289510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD40, &qword_1E42DC1B0);
    sub_1E3EE86A0();
    sub_1E3A1558C(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289510);
  }

  return result;
}

unint64_t sub_1E3EE86A0()
{
  result = qword_1EE289708;
  if (!qword_1EE289708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD38, &qword_1E42DC1A8);
    sub_1E39B5D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289708);
  }

  return result;
}

uint64_t sub_1E3EE872C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3EE87A4()
{
  result = qword_1EE289C78;
  if (!qword_1EE289C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EF50, &qword_1E42ADDC0);
    swift_getOpaqueTypeConformance2();
    sub_1E3EE8878(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C78);
  }

  return result;
}

uint64_t sub_1E3EE8878(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3EE88BC()
{
  result = qword_1EE289840;
  if (!qword_1EE289840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD30, &qword_1E42DC1A0);
    v3 = sub_1E3EE8948();
    sub_1E38680BC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289840);
  }

  return result;
}

unint64_t sub_1E3EE8948()
{
  result = qword_1EE2886A0;
  if (!qword_1EE2886A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD58, &qword_1E42DC1C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD48, &qword_1E42DC1B8);
    sub_1E3EE8530();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886A0);
  }

  return result;
}

uint64_t sub_1E3EE8A24()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 24) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE43620](v2);
}

uint64_t sub_1E3EE8AC4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E383612C, 0, 0);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_18_115();

    return v7(v6);
  }
}

uint64_t sub_1E3EE8C20(uint64_t a1, const void *a2)
{
  v4 = sub_1E41FDDF4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  sub_1E41FDDA4();
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1E3EE8D38;

  return static VUIUTSNetworkManagerProxy.execute(request:)(v5);
}

uint64_t sub_1E3EE8D38(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *v2;
  *v7 = *v2;

  v9 = v5[5];
  (*(v5[3] + 8))(v5[4], v5[2]);
  if (v3)
  {
    v10 = sub_1E41FE264();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = v8[1];

  return v11();
}

uint64_t sub_1E3EE8F1C()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 24) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE43610](v2);
}

double sub_1E3EE8FDC(uint64_t a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_53_0();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;

  return sub_1E38364EC(a6, v10);
}

uint64_t sub_1E3EE9054(uint64_t a1, const void *a2)
{
  v4 = sub_1E41FDDF4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  sub_1E41FDDA4();
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1E3EE916C;

  return static VUIUTSNetworkManagerProxy.cancel(request:)(v5);
}

uint64_t sub_1E3EE916C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_27_0();
  v6(v5);
  v2[2](v2);
  _Block_release(v2);

  OUTLINED_FUNCTION_54();

  return v7();
}

uint64_t sub_1E3EE92EC()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 16) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1E3EE9398;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE43608](v2);
}

uint64_t sub_1E3EE9398()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3EE94D4, 0, 0);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_18_115();

    return v7(v6);
  }
}

uint64_t sub_1E3EE94D4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3EE95AC(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E3EE964C;

  return static VUIUTSNetworkManagerProxy.fetchConfiguration(force:)(a1);
}

uint64_t sub_1E3EE964C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  v8 = *(v5 + 16);
  if (v2)
  {
    v9 = sub_1E41FE264();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, v4, 0);
    _Block_release(v8);
  }

  v10 = *(v6 + 8);

  return v10();
}

void static VUIUTSNetworkManagerProxy.createURLRequest(from:urlRequest:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a1;
  v125 = a2;
  v4 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v129 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v121 = v7;
  v122 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v120 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v119 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v104 - v12;
  v14 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v124 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v23 - 8);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v104 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v104 - v32;
  v34 = *(v129 + 16);
  v35 = v125;
  v125 = v4;
  v34(a3, v35, v4, v31);
  sub_1E41FDDC4();
  if (__swift_getEnumTagSinglePayload(v33, 1, v14))
  {
    v36 = sub_1E325F748(v33, &unk_1ECF363C0, &unk_1E42A9420);
    v39 = sub_1E3EEA35C(v36, v37, v38);
    OUTLINED_FUNCTION_206(&type metadata for VUIUTSNetworkManagerProxy.UTSManagerProxyError, v39);
    *v40 = 1;
    swift_willThrow();
    v41 = a3;
LABEL_25:
    (*(v129 + 8))(v41, v125);
    return;
  }

  v115 = v29;
  v110 = v26;
  v114 = v19;
  v111 = v13;
  v116 = a3;
  v42 = v124;
  v43 = *(v124 + 16);
  v108 = v124 + 16;
  v107 = v43;
  v43(v22, v33, v14);
  sub_1E325F748(v33, &unk_1ECF363C0, &unk_1E42A9420);
  v117 = sub_1E41FE314();
  v45 = v44;
  v46 = *(v42 + 8);
  v109 = v22;
  v113 = v46;
  v112 = v42 + 8;
  v46(v22, v14);
  v47 = v123;
  v48 = [v123 httpMethod];
  v106 = sub_1E4205F14();
  v118 = v49;

  v50 = [v47 headers];
  v51 = v14;
  v52 = sub_1E4205C64();

  v53 = [v47 queryParameters];
  v54 = sub_1E4205C64();

  v55 = [v47 timeout];
  v56 = [v47 options];
  v57 = v47;
  v58 = [v47 options];
  v59 = OUTLINED_FUNCTION_305();
  v60 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v60 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {

    OUTLINED_FUNCTION_19_124();

    return;
  }

  v105 = v56;
  v61 = v115;
  sub_1E41FE404();

  if (__swift_getEnumTagSinglePayload(v61, 1, v51) == 1)
  {

    OUTLINED_FUNCTION_19_124();
    v62 = sub_1E325F748(v61, &unk_1ECF363C0, &unk_1E42A9420);
    v65 = sub_1E3EEA35C(v62, v63, v64);
    OUTLINED_FUNCTION_206(&type metadata for VUIUTSNetworkManagerProxy.UTSManagerProxyError, v65);
    *v66 = 1;
    swift_willThrow();

LABEL_24:
    v41 = v116;
    goto LABEL_25;
  }

  v67 = v51;
  v117 = v52;
  v68 = v124 + 32;
  v69 = v114;
  v104 = *(v124 + 32);
  v104(v114, v61, v67);
  v70 = objc_opt_self();
  v71 = sub_1E3EEA608(v54, v70);
  if (!v71)
  {
    OUTLINED_FUNCTION_305();

    v75 = OUTLINED_FUNCTION_19_124();
    v78 = sub_1E3EEA35C(v75, v76, v77);
    OUTLINED_FUNCTION_206(&type metadata for VUIUTSNetworkManagerProxy.UTSManagerProxyError, v78);
    *v79 = 0;
    swift_willThrow();

    v113(v69, v67);
    goto LABEL_24;
  }

  v72 = v71;
  v124 = v68;
  v115 = v55;
  v73 = v111;
  sub_1E41FDFB4();
  if (!*(v72 + 16))
  {

    v80 = v121;
    v81 = v113;
    goto LABEL_27;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v122);
  if ((v58 & 2) != 0)
  {
    if (!EnumTagSinglePayload)
    {
      sub_1E41FDFA4();
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (EnumTagSinglePayload)
  {
LABEL_17:

    goto LABEL_19;
  }

  sub_1E41FDF94();
LABEL_19:
  v82 = v122;
  if (__swift_getEnumTagSinglePayload(v73, 1, v122))
  {
    OUTLINED_FUNCTION_305();

    v83 = v110;
    __swift_storeEnumTagSinglePayload(v110, 1, 1, v67);
    v81 = v113;
LABEL_23:
    v87 = sub_1E325F748(v83, &unk_1ECF363C0, &unk_1E42A9420);
    v90 = sub_1E3EEA35C(v87, v88, v89);
    OUTLINED_FUNCTION_206(&type metadata for VUIUTSNetworkManagerProxy.UTSManagerProxyError, v90);
    *v91 = 1;
    swift_willThrow();

    v92 = OUTLINED_FUNCTION_13_152();
    v81(v92);
    sub_1E325F748(v73, &qword_1ECF304A8, &unk_1E42B18D0);
    goto LABEL_24;
  }

  v84 = v120;
  v85 = v119;
  (*(v120 + 16))(v119, v73, v82);
  v83 = v110;
  sub_1E41FDFC4();
  (*(v84 + 8))(v85, v82);
  v86 = __swift_getEnumTagSinglePayload(v83, 1, v67);
  v81 = v113;
  if (v86 == 1)
  {
    OUTLINED_FUNCTION_305();

    OUTLINED_FUNCTION_19_124();
    goto LABEL_23;
  }

  v69 = v114;
  v93 = OUTLINED_FUNCTION_13_152();
  v81(v93);
  v104(v69, v83, v67);
  v80 = v121;
LABEL_27:
  v107(v109, v69, v67);
  sub_1E41FE944();
  sub_1E41FDDB4();
  (*(v129 + 40))(v116, v80, v125);
  sub_1E41FDD64();
  sub_1E3EEA6B0(v57);
  sub_1E41FDDE4();
  v94 = v117;
  if (*(v117 + 16))
  {
    v95 = v67;
    v96 = v117 + 64;
    v97 = 1 << *(v117 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(v117 + 64);
    v100 = (v97 + 63) >> 6;

    v101 = 0;
    if (v99)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v102 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v102 >= v100)
      {

        v73 = v111;
        v81 = v113;
        v67 = v95;
        goto LABEL_43;
      }

      v99 = *(v96 + 8 * v102);
      ++v101;
      if (v99)
      {
        v101 = v102;
        do
        {
LABEL_35:
          v103 = __clz(__rbit64(v99)) | (v101 << 6);
          sub_1E374E74C(*(v94 + 48) + 40 * v103, v127);
          sub_1E328438C(*(v94 + 56) + 32 * v103, v128);
          sub_1E374E74C(v127, v126);
          if (swift_dynamicCast())
          {
            sub_1E328438C(v128, v126);
            if (swift_dynamicCast())
            {
              sub_1E41FDDD4();
            }

            v94 = v117;
          }

          v99 &= v99 - 1;
          sub_1E325F748(v127, &qword_1ECF28E40, &unk_1E4298920);
        }

        while (v99);
      }
    }

    __break(1u);
  }

  else
  {

LABEL_43:
    if ((v105 & 8) != 0)
    {
      sub_1E41FDD74();

      (v81)(v114, v67);
    }

    else
    {
      (v81)(v114, v67);
    }

    sub_1E325F748(v73, &qword_1ECF304A8, &unk_1E42B18D0);
  }
}

unint64_t sub_1E3EEA35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3BD60;
  if (!qword_1ECF3BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD60);
  }

  return result;
}

id VUIUTSNetworkManagerProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIUTSNetworkManagerProxy.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VUIUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v3, sel_init);
}

id VUIUTSNetworkManagerProxy.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VUIUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3EEA608(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  v4 = [a2 vui:v3 sortedQueryItemsFromDictionary:?];

  if (!v4)
  {
    return 0;
  }

  sub_1E41FDF74();
  v5 = sub_1E42062B4();

  return v5;
}

uint64_t sub_1E3EEA6B0(void *a1)
{
  v1 = [a1 httpBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E41FE464();

  return v3;
}

unint64_t sub_1E3EEA73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3BD68;
  if (!qword_1ECF3BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD68);
  }

  return result;
}

unint64_t sub_1E3EEA794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3BD70;
  if (!qword_1ECF3BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD70);
  }

  return result;
}

unint64_t sub_1E3EEA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3BD78;
  if (!qword_1ECF3BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD78);
  }

  return result;
}

unint64_t sub_1E3EEA844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3BD80;
  if (!qword_1ECF3BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD80);
  }

  return result;
}

unint64_t sub_1E3EEA89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3BD88;
  if (!qword_1ECF3BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUIUTSNetworkManagerProxy.UTSManagerProxyError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3EEA9DC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_186(v5);

  return v7(v1, v3, v2);
}

uint64_t sub_1E3EEAA7C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_186(v1);
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3EEAB18()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_186(v1);
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3EEABB4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(0, v4, v3, v5);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3EEAC3C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(0, v4, v3, v5);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3EEACC4()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(2, v4, v3, v5);
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3EEAD80()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3EEAE30();
  if ((TVAppFeature.isEnabled.getter(20, v2, v3) & 1) == 0)
  {
    v8 = sub_1E3EEABB4();
    sub_1E3C37EC8(v8, &unk_1F5D8C500);

    v6 = sub_1E3EEAC3C();
    v7 = &unk_1F5D8C528;
    goto LABEL_6;
  }

  if ((TVAppFeature.isEnabled.getter(10, v4, v5) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    v6 = sub_1E3EEABB4();
    v7 = &unk_1F5D8C4D8;
LABEL_6:
    sub_1E3C37EC8(v6, v7);
  }

  return v1;
}

void sub_1E3EEAE30()
{
  v672[0] = 16;
  LOBYTE(__src[0]) = 3;
  LOBYTE(v664[0]) = 16;
  sub_1E3C3DE00();
  LOBYTE(v635[0]) = v659[0];
  sub_1E3C3DE00();
  LOBYTE(v683[0]) = v685[0];
  sub_1E3C3DE00();
  LOBYTE(v653[0]) = v678;
  v1 = OUTLINED_FUNCTION_19_125();
  sub_1E3C2FCB8(v1, __src, v635, v664, v683, v653, &unk_1F5D995F0, v2);
  OUTLINED_FUNCTION_37_66();
  v3 = OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC(v3, 14, v4, &unk_1F5D995F0);
  v672[0] = 4;
  LOBYTE(__src[0]) = 1;
  sub_1E3C3DE00();
  v659[0] = v664[0];
  sub_1E3C3DE00();
  LOBYTE(v685[0]) = v635[0];
  sub_1E3C3DE00();
  LOBYTE(v678) = v683[0];
  sub_1E3C3DE00();
  LOBYTE(v649[0]) = v653[0];
  v5 = OUTLINED_FUNCTION_19_125();
  sub_1E3C2FCB8(v5, __src, v659, v685, &v678, v649, &unk_1F5D99680, v6);
  OUTLINED_FUNCTION_37_66();
  v7 = OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC(v7, 12, v8, &unk_1F5D99680);
  v645[0] = 0;
  LOBYTE(v645[1]) = 1;
  if (TVAppFeature.isEnabled.getter(20, v9, v10))
  {
    v11 = 0x4089000000000000;
  }

  else
  {
    v11 = 0x4087200000000000;
  }

  OUTLINED_FUNCTION_33_73(v11);
  *v672 = 0x407E000000000000;
  LOBYTE(v673) = 0;
  v12 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_199();
  v13 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_5_197(v13, v14, v15, v16, v17, v18, v19, v20, v591, v613, v635[0], v635[1]);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_9_156();
  OUTLINED_FUNCTION_45_60();
  sub_1E3C2FCB8(v21, v22, v23, v24, v25, &v678, v12, v26);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v27 = OUTLINED_FUNCTION_36_62();
  sub_1E3C2FDFC(v27, 2, v28, v12);
  v669 = 0;
  LOBYTE(v670) = 1;
  v667 = 0x406FC00000000000;
  LOBYTE(v668) = 0;
  if (TVAppFeature.isEnabled.getter(20, v29, v30))
  {
    v31 = 0x4089000000000000;
  }

  else
  {
    v31 = 0x4087200000000000;
  }

  OUTLINED_FUNCTION_33_73(v31);
  *v672 = 0x407E000000000000;
  LOBYTE(v673) = 0;
  *v659 = 0;
  v659[8] = 1;
  OUTLINED_FUNCTION_26_99();
  v32 = sub_1E3C2FC98();
  OUTLINED_FUNCTION_6_187(v32, v33, v34, v35, v36, v37, v38, v39, v592, v614, v635[0], v635[1]);
  OUTLINED_FUNCTION_45_60();
  sub_1E3C2FCB8(v40, v41, v42, v43, v44, v659, v12, v45);
  memcpy(__dst, v664, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v46 = OUTLINED_FUNCTION_36_62();
  sub_1E3C2FDFC(v46, 4, v47, v12);
  *v672 = 0;
  LOBYTE(v673) = 1;
  *v659 = 0x406B800000000000;
  OUTLINED_FUNCTION_42_63();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_2_212();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_212();
  sub_1E3C3DE00();
  v665 = v649[0];
  LOBYTE(v666) = v649[1];
  v48 = OUTLINED_FUNCTION_19_125();
  sub_1E3C2FCB8(v48, v683, v653, v659, v635, &v665, v12, v49);
  OUTLINED_FUNCTION_17_127();
  OUTLINED_FUNCTION_18();
  v50 = OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC(v50, 3, v51, v12);
  *v672 = 0x4048000000000000;
  LOBYTE(v673) = 0;
  *v659 = 0x4050800000000000;
  v659[8] = 0;
  OUTLINED_FUNCTION_26_99();
  v52 = sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_197(v52, v53, v54, v55, v56, v57, v58, v59, v593, v615, v635[0], v635[1]);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_9_156();
  OUTLINED_FUNCTION_29_87();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_12_144();
  sub_1E3C3DE00();
  v662 = v665;
  LOBYTE(v663) = v666;
  v60 = OUTLINED_FUNCTION_13_153();
  sub_1E3C2FCB8(v60, v61, v62, v659, v649, &v662, v12, v63);
  OUTLINED_FUNCTION_17_127();
  OUTLINED_FUNCTION_18();
  v64 = OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC(v64, 6, v65, v12);
  CTFontHasExuberatedLineHeight();
  memset(v659, 0, 32);
  v659[32] = 1;
  TVAppFeature.isEnabled.getter(20, v66, v67);
  sub_1E3952C58();
  v635[0] = v68;
  v635[1] = v69;
  v636[0] = v70;
  v636[1] = v71;
  LOBYTE(v637) = 0;
  TVAppFeature.isEnabled.getter(20, v72, v73);
  sub_1E3952C58();
  OUTLINED_FUNCTION_4_167(v74, v75, v76, v77);
  sub_1E3952C94();
  OUTLINED_FUNCTION_34_67(v78, v79, v80, v81);
  type metadata accessor for UIEdgeInsets();
  v83 = v82;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_39_59();
  OUTLINED_FUNCTION_29_87();
  sub_1E3C3DE00();
  *v649 = *v653;
  v650 = v654;
  LOBYTE(v651) = v655;
  sub_1E3C2FCB8(v659, &v678, v649, v635, v672, v685, v83, __dst);
  OUTLINED_FUNCTION_38_59();
  OUTLINED_FUNCTION_18();
  v84 = OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC(v84, 0, v85, v83);
  v88 = TVAppFeature.isEnabled.getter(10, v86, v87);
  v91 = MEMORY[0x1E69DDCE0];
  if ((v88 & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    v92 = sub_1E3EEABB4();
    (*(*v92 + 2048))(v92);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_3_11();
    (*(v93 + 872))(0);

    OUTLINED_FUNCTION_36();
    v95 = (v94 + 2096);
    v96 = *(v94 + 2096);

    v96(v97);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_3_11();
    (*(v98 + 872))(0);

    objc_opt_self();
    OUTLINED_FUNCTION_112();

    *v672 = [v95 whiteColor];
    sub_1E3755B54();
    sub_1E3C2FC98();
    v664[0] = *&__src[0];
    OUTLINED_FUNCTION_22_86();
    sub_1E3C3DE00();
    v635[0] = *v659;
    sub_1E3C3DE00();
    v683[0] = v685[0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_40_61();
    sub_1E3C3DE00();
    v645[0] = v649[0];
    v99 = OUTLINED_FUNCTION_19_125();
    OUTLINED_FUNCTION_21_97(v99, v664, v635, v683, v100, v594, v95, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652);
    v101 = __dst[0];
    v102 = __dst[1];
    v103 = __dst[2];
    v104 = __dst[3];
    v105 = __dst[4];
    v106 = __dst[5];
    *v672 = __dst[0];
    v673 = __dst[1];
    v674 = __dst[2];
    v675 = __dst[3];
    v676 = __dst[4];
    v677 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v107 = OUTLINED_FUNCTION_18_116();
    v108(v107, 24);

    v669 = 0x4048000000000000;
    LOBYTE(v670) = 0;
    v667 = 0x4050800000000000;
    LOBYTE(v668) = 0;

    v111 = TVAppFeature.isEnabled.getter(20, v109, v110);
    v112 = 0x4042000000000000;
    if (v111)
    {
      v112 = 0x4048000000000000;
    }

    OUTLINED_FUNCTION_33_73(v112);
    *v672 = 0;
    LOBYTE(v673) = 1;
    v113 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v114 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_6_187(v114, v115, v116, v117, v118, v119, v120, v121, v595, v617, v635[0], v635[1]);
    sub_1E3C2FCB8(&v669, v659, v685, &v667, __dst, v672, v113, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v122 = OUTLINED_FUNCTION_36_62();
    v123(v122, 6);

    OUTLINED_FUNCTION_32_74();
    v664[0] = 0x4050800000000000;
    LOBYTE(v664[1]) = 0;

    sub_1E3C2FC98();
    v635[0] = *v659;
    LOBYTE(v635[1]) = v659[8];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v124, v125, v126, v127, v128, v129, v113, v130);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v131 = OUTLINED_FUNCTION_18_116();
    v132(v131, 8);

    OUTLINED_FUNCTION_32_74();

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v133 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_197(v133, v134, v135, v136, v137, v138, v139, v140, v596, v618, v635[0], v635[1]);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_156();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_12_144();
    sub_1E3C3DE00();
    v665 = v645[0];
    LOBYTE(v666) = v645[1];
    v141 = OUTLINED_FUNCTION_15_137();
    OUTLINED_FUNCTION_47_49(v141, v142, v143, v144, v597, v619, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652, v653[0], v653[1], v654, *(&v654 + 1), v655, v656, v657, v658, *v659, *&v659[8], *&v659[16], *&v659[24], *&v659[32], *&v659[40], *&v659[48], *&v659[56], *&v659[64], *&v659[72], *&v659[80], *&v659[88], v660, v661, v662, v663, v664[0], v664[1], v664[2], v664[3], v664[4], v664[5], v664[6], v664[7], v664[8]);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v145 = OUTLINED_FUNCTION_18_116();
    v146(v145, 7);

    OUTLINED_FUNCTION_32_74();

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v147 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_197(v147, v148, v149, v150, v151, v152, v153, v154, v598, v620, v635[0], v635[1]);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_156();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_12_144();
    sub_1E3C3DE00();
    v665 = v645[0];
    LOBYTE(v666) = v645[1];
    v155 = OUTLINED_FUNCTION_15_137();
    OUTLINED_FUNCTION_47_49(v155, v156, v157, v158, v599, v621, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652, v653[0], v653[1], v654, *(&v654 + 1), v655, v656, v657, v658, *v659, *&v659[8], *&v659[16], *&v659[24], *&v659[32], *&v659[40], *&v659[48], *&v659[56], *&v659[64], *&v659[72], *&v659[80], *&v659[88], v660, v661, v662, v663, v664[0], v664[1], v664[2], v664[3], v664[4], v664[5], v664[6], v664[7], v664[8]);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v159 = OUTLINED_FUNCTION_18_116();
    v160(v159, 2);

    v665 = 0;
    LOBYTE(v666) = 1;
    v662 = 0x4070900000000000;
    LOBYTE(v663) = 0;

    v163 = TVAppFeature.isEnabled.getter(20, v161, v162);
    v166 = 0x406FC00000000000;
    if (v163)
    {
      v166 = 0x4070900000000000;
    }

    v660 = v166;
    LOBYTE(v661) = 0;
    v167 = TVAppFeature.isEnabled.getter(20, v164, v165);
    v168 = 0x407F400000000000;
    if (v167)
    {
      v168 = 0x4078600000000000;
    }

    OUTLINED_FUNCTION_33_73(v168);
    *v672 = 0x406E000000000000;
    LOBYTE(v673) = 0;
    *v659 = 0x4070400000000000;
    v659[8] = 0;
    OUTLINED_FUNCTION_45_60();
    sub_1E3C2FCB8(v169, v170, v171, v172, v173, v659, v113, v174);
    memcpy(__dst, v664, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v175 = OUTLINED_FUNCTION_36_62();
    v176(v175, 4);

    v179 = TVAppFeature.isEnabled.getter(20, v177, v178);
    v182 = 0x4064A00000000000;
    if ((v179 & 1) == 0)
    {
      v182 = 0;
    }

    v657 = v182;
    LOBYTE(v658) = (v179 & 1) == 0;
    v183 = TVAppFeature.isEnabled.getter(20, v180, v181);
    v184 = 0x4071800000000000;
    if (v183)
    {
      v184 = 0x406B800000000000;
    }

    OUTLINED_FUNCTION_33_73(v184);
    *v672 = 0x406B800000000000;
    LOBYTE(v673) = 0;
    v635[0] = 0x4069000000000000;
    LOBYTE(v635[1]) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    v653[0] = v678;
    LOBYTE(v653[1]) = v679;
    OUTLINED_FUNCTION_45_60();
    sub_1E3C2FCB8(v185, v186, v187, v188, v189, v635, v113, v190);
    memcpy(__dst, v659, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v191 = OUTLINED_FUNCTION_36_62();
    v192(v191, 3);

    if (TVAppFeature.isEnabled.getter(20, v193, v194))
    {
      v195 = 12.0;
    }

    else
    {
      v195 = 8.0;
    }

    v196 = sub_1E3952C10(v195, 8.0);
    OUTLINED_FUNCTION_34_67(v196, v197, v198, v199);
    if (TVAppFeature.isEnabled.getter(20, v200, v201))
    {
      v202 = 0.0;
    }

    else
    {
      v202 = 8.0;
    }

    v683[0] = sub_1E3952C10(24.0, v202);
    v683[1] = v203;
    v683[2] = v204;
    v683[3] = v205;
    LOBYTE(v684) = 0;
    if (TVAppFeature.isEnabled.getter(20, v206, v207))
    {
      v208 = 12.0;
    }

    else
    {
      v208 = 8.0;
    }

    v678 = sub_1E3952C10(v208, 8.0);
    v679 = v209;
    v680 = v210;
    v681 = v211;
    LOBYTE(v682) = 0;
    if (TVAppFeature.isEnabled.getter(20, v212, v213))
    {
      v214 = sub_1E3952C10(14.0, 0.0);
    }

    else
    {
      v214 = *MEMORY[0x1E69DDCE0];
      v215 = *(MEMORY[0x1E69DDCE0] + 8);
      v216 = *(MEMORY[0x1E69DDCE0] + 16);
      v217 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    OUTLINED_FUNCTION_4_167(v214, v215, v216, v217);
    OUTLINED_FUNCTION_26_99();
    sub_1E3C2FC98();
    *v653 = *v635;
    v654 = *v636;
    LOBYTE(v655) = v637;
    sub_1E3C3DE00();
    *v645 = *v649;
    v646 = v650;
    LOBYTE(v647) = v651;
    sub_1E3C2FCB8(v685, v653, v645, v683, &v678, v672, v83, __dst);
    OUTLINED_FUNCTION_38_59();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v218 = OUTLINED_FUNCTION_18_116();
    v219(v218, 0);

    if ((TVAppFeature.isEnabled.getter(20, v220, v221) & 1) == 0)
    {
      sub_1E39DFFC8();
    }

    v222 = *(**(v0 + 104) + 2048);

    v222(v223);

    v635[0] = [v622 blackColor];
    if (TVAppFeature.isEnabled.getter(20, v224, v225))
    {
      v226 = *sub_1E3E5FD88();
    }

    else
    {
      v226 = [v622 whiteColor];
    }

    v653[0] = v226;
    v649[0] = [v622 whiteColor];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_48_45();
    v227 = OUTLINED_FUNCTION_46_52();
    OUTLINED_FUNCTION_25_87(v227, v228, v229, v230, v231, v232, v233, v234, v600, v622, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652, v653[0]);
    v235 = *v672;
    v236 = v673;
    v237 = v674;
    v238 = v675;
    v239 = v676;
    v240 = v677;
    v635[0] = *v672;
    v635[1] = v673;
    v636[0] = v674;
    v636[1] = v675;
    v637 = v676;
    v638 = v677;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v249 = OUTLINED_FUNCTION_41_61(v241, v242, v243, v244, v245, v246, v247, v248, v601, v623, v635[0]);
    v250(v249);

    v251 = *(**(v0 + 104) + 2096);

    v251(v252);

    v635[0] = [v624 blackColor];
    if (TVAppFeature.isEnabled.getter(20, v253, v254))
    {
      v255 = *sub_1E3E5FD88();
      v256 = &selRef_vui_disableLocalAsset;
    }

    else
    {
      v255 = [v624 whiteColor];
      v256 = &selRef_vui_disableLocalAsset;
    }

    v653[0] = v255;
    v649[0] = [v624 v256[176]];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_48_45();
    v257 = OUTLINED_FUNCTION_46_52();
    OUTLINED_FUNCTION_25_87(v257, v258, v259, v260, v261, v262, v263, v264, v602, v624, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652, v653[0]);
    v265 = *v672;
    v266 = v673;
    v267 = v674;
    v268 = v675;
    v269 = v676;
    v270 = v677;
    v635[0] = *v672;
    v635[1] = v673;
    v636[0] = v674;
    v636[1] = v675;
    v637 = v676;
    v638 = v677;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v279 = OUTLINED_FUNCTION_41_61(v271, v272, v273, v274, v275, v276, v277, v278, v603, v625, v635[0]);
    v280(v279);

    if (TVAppFeature.isEnabled.getter(20, v281, v282))
    {
      OUTLINED_FUNCTION_8();
      v284 = *(v283 + 2096);

      v286 = v284(v285);

      (*(*v286 + 2072))(7);

      OUTLINED_FUNCTION_36();
      v288 = *(v287 + 2096);

      v290 = v288(v289);

      (*(*v290 + 2168))(10);
    }

    *v672 = *sub_1E3E5FA50();
    v291 = *v672;
    sub_1E3C2CA00();

    OUTLINED_FUNCTION_36();
    v293 = *(v292 + 2048);

    v293(v294);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_3_11();
    (*(v295 + 1720))(7);

    v298 = TVAppFeature.isEnabled.getter(20, v296, v297);
    v91 = MEMORY[0x1E69DDCE0];
    if (v298)
    {
      OUTLINED_FUNCTION_8();
      v300 = *(v299 + 2048);

      v300(v301);
      OUTLINED_FUNCTION_112();

      OUTLINED_FUNCTION_3_11();
      (*(v302 + 1696))(7);
    }
  }

  if ((TVAppFeature.isEnabled.getter(10, v89, v90) & 1) == 0 && (TVAppFeature.isEnabled.getter(20, v303, v304) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    sub_1E3EEAC3C();
    *v672 = 0x4048000000000000;
    LOBYTE(v673) = 0;
    OUTLINED_FUNCTION_43_60();
    v664[0] = 0x4042000000000000;
    LOBYTE(v664[1]) = 0;
    *v659 = 0;
    v659[8] = 1;
    v305 = MEMORY[0x1E69E7DE0];
    v306 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_5_197(v306, v307, v308, v309, v310, v311, v312, v313, v594, v616, v635[0], v635[1]);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_156();
    OUTLINED_FUNCTION_13_153();
    OUTLINED_FUNCTION_31_73();
    sub_1E3C2FCB8(v314, v315, v316, v317, v318, v319, v305, v320);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v321 = OUTLINED_FUNCTION_18_116();
    v322(v321, 6);

    OUTLINED_FUNCTION_23_89();
    OUTLINED_FUNCTION_43_60();

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v323 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_197(v323, v324, v325, v326, v327, v328, v329, v330, v604, v626, v635[0], v635[1]);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_156();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_11_157();
    sub_1E3C2FCB8(v331, v332, v333, v334, v335, v336, v305, v337);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v338 = OUTLINED_FUNCTION_18_116();
    v339(v338, 8);

    OUTLINED_FUNCTION_23_89();

    sub_1E3C2FC98();
    v664[0] = *&__src[0];
    LOBYTE(v664[1]) = BYTE8(__src[0]);
    OUTLINED_FUNCTION_22_86();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_1_249();
    OUTLINED_FUNCTION_21_97(v340, v664, v635, v683, v341, v605, v627, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v342 = OUTLINED_FUNCTION_18_116();
    v343(v342, 7);

    if (TVAppFeature.isEnabled.getter(10, v344, v345))
    {
      *v672 = 0;
      LOBYTE(v673) = 1;
      OUTLINED_FUNCTION_43_60();

      v346 = MEMORY[0x1E69E7DE0];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_7_199();
      v347 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_5_197(v347, v348, v349, v350, v351, v352, v353, v354, v606, v628, v635[0], v635[1]);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_9_156();
      OUTLINED_FUNCTION_29_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_11_157();
      sub_1E3C2FCB8(v355, v356, v357, v358, v359, v360, v346, v361);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v362 = OUTLINED_FUNCTION_18_116();
      v363(v362, 2);

      OUTLINED_FUNCTION_3_11();
      v365 = *(v364 + 2096);

      v365(v366);

      *v672 = 0;
      LOBYTE(v673) = 1;
      OUTLINED_FUNCTION_43_60();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_7_199();
      v367 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_5_197(v367, v368, v369, v370, v371, v372, v373, v374, v607, v629, v635[0], v635[1]);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_9_156();
      OUTLINED_FUNCTION_29_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_11_157();
      sub_1E3C2FCB8(v375, v376, v377, v378, v379, v380, v346, v381);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v382 = OUTLINED_FUNCTION_18_116();
      v383(v382, 2);

      v384 = *(MEMORY[0x1E69DDCE0] + 16);
      __src[0] = *MEMORY[0x1E69DDCE0];
      __src[1] = v384;
      LOBYTE(__src[2]) = 0;
      OUTLINED_FUNCTION_8();
      v386 = *(v385 + 160);

      v386(__src);
    }

    else
    {
      *v672 = 0;
      LOBYTE(v673) = 1;

      sub_1E3C2FC98();
      v664[0] = *&__src[0];
      LOBYTE(v664[1]) = BYTE8(__src[0]);
      OUTLINED_FUNCTION_22_86();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_3_212();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_212();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_4_212();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_1_249();
      OUTLINED_FUNCTION_21_97(v387, v664, v635, v683, v388, v606, v628, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v389 = OUTLINED_FUNCTION_18_116();
      v390(v389, 2);

      OUTLINED_FUNCTION_23_89();
      *&__src[0] = 0x4070900000000000;
      BYTE8(__src[0]) = 0;
      v664[0] = 0x406FC00000000000;
      LOBYTE(v664[1]) = 0;
      *v659 = 0x407F400000000000;
      OUTLINED_FUNCTION_42_63();
      v685[0] = 0x4070400000000000;
      LOBYTE(v685[1]) = 0;

      v391 = OUTLINED_FUNCTION_19_125();
      sub_1E3C2FCB8(v391, __src, v664, v659, v635, v685, v305, v392);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v393 = OUTLINED_FUNCTION_18_116();
      v394(v393, 4);

      OUTLINED_FUNCTION_23_89();
      *&__src[0] = 0x4071800000000000;
      BYTE8(__src[0]) = 0;
      v664[0] = 0x406B800000000000;
      LOBYTE(v664[1]) = 0;
      *v659 = 0x4069000000000000;
      v659[8] = 0;

      v395 = sub_1E3C2FC98();
      OUTLINED_FUNCTION_5_197(v395, v396, v397, v398, v399, v400, v401, v402, v609, v631, v635[0], v635[1]);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_9_156();
      OUTLINED_FUNCTION_13_153();
      OUTLINED_FUNCTION_31_73();
      sub_1E3C2FCB8(v403, v404, v405, v406, v407, v408, v305, v409);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v410 = OUTLINED_FUNCTION_18_116();
      v411(v410, 3);

      v412 = sub_1E3952C10(8.0, 8.0);
      OUTLINED_FUNCTION_4_167(v412, v413, v414, v415);
      *&__src[0] = sub_1E3952C10(24.0, 8.0);
      *(&__src[0] + 1) = v416;
      *&__src[1] = v417;
      *(&__src[1] + 1) = v418;
      LOBYTE(__src[2]) = 0;
      v664[0] = sub_1E3952C10(8.0, 8.0);
      v664[1] = v419;
      v664[2] = v420;
      v664[3] = v421;
      LOBYTE(v664[4]) = 0;
      v422 = v91[1];
      *v659 = *v91;
      *&v659[16] = v422;
      v659[32] = 0;
      OUTLINED_FUNCTION_26_99();
      sub_1E3C2FC98();
      *v685 = *v635;
      v686 = *v636;
      LOBYTE(v687) = v637;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_39_59();
      OUTLINED_FUNCTION_13_153();
      OUTLINED_FUNCTION_31_73();
      sub_1E3C2FCB8(v423, v424, v425, v426, v427, v428, v83, v429);
      OUTLINED_FUNCTION_38_59();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v430 = OUTLINED_FUNCTION_18_116();
      v431(v430, 0);
    }

    v432 = *(v0 + 112);
    v433 = *(*v432 + 2048);
    v434 = (*v432 + 2048);

    v433(v435);

    v436 = objc_opt_self();
    *v672 = [v436 blackColor];
    v664[0] = OUTLINED_FUNCTION_10_144();
    *v659 = OUTLINED_FUNCTION_10_144();
    sub_1E3755B54();
    v437 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_50_45(v437, v438, v439, v440, v441, v442, v443, v444, v608, v630, v635[0]);
    v678 = v683[0];
    OUTLINED_FUNCTION_29_87();
    sub_1E3C3DE00();
    v649[0] = v653[0];
    v445 = OUTLINED_FUNCTION_13_153();
    OUTLINED_FUNCTION_49_54(v445, v446, v447, v448, v610, v632, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652, v653[0], v653[1], v654, *(&v654 + 1), v655, v656, v657, v658, *v659, *&v659[8], *&v659[16], *&v659[24], *&v659[32], *&v659[40], *&v659[48], *&v659[56], *&v659[64], *&v659[72], *&v659[80], *&v659[88], v660, v661, v662, v663);
    v449 = __dst[0];
    v450 = __dst[1];
    v451 = __dst[2];
    OUTLINED_FUNCTION_24_94();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v452 = OUTLINED_FUNCTION_18_116();
    v453(v452, 21);

    v454 = *(**(v0 + 112) + 2096);

    v454(v455);

    *v672 = [v436 blackColor];
    v664[0] = OUTLINED_FUNCTION_10_144();
    *v659 = OUTLINED_FUNCTION_10_144();
    OUTLINED_FUNCTION_26_99();
    v456 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_50_45(v456, v457, v458, v459, v460, v461, v462, v463, v611, v0, v635[0]);
    v678 = v683[0];
    OUTLINED_FUNCTION_29_87();
    sub_1E3C3DE00();
    v649[0] = v653[0];
    v464 = OUTLINED_FUNCTION_13_153();
    OUTLINED_FUNCTION_49_54(v464, v465, v466, v467, v612, v633, v635[0], v635[1], v636[0], v636[1], v637, v638, v639, v640, v641, v642, v643, v644, v645[0], v645[1], v646, *(&v646 + 1), v647, v648, v649[0], v649[1], v650, *(&v650 + 1), v651, v652, v653[0], v653[1], v654, *(&v654 + 1), v655, v656, v657, v658, *v659, *&v659[8], *&v659[16], *&v659[24], *&v659[32], *&v659[40], *&v659[48], *&v659[56], *&v659[64], *&v659[72], *&v659[80], *&v659[88], v660, v661, v662, v663);
    v468 = __dst[0];
    v469 = __dst[1];
    v470 = __dst[2];
    v471 = __dst[3];
    v472 = __dst[4];
    v473 = __dst[5];
    *v672 = __dst[0];
    v673 = __dst[1];
    v674 = __dst[2];
    v675 = __dst[3];
    v676 = __dst[4];
    v677 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v474 = OUTLINED_FUNCTION_18_116();
    v475(v474, 21);

    __dst[0] = *sub_1E3E5FA50();
    v476 = __dst[0];
    sub_1E3C2CA00();

    OUTLINED_FUNCTION_36();
    v478 = *(v477 + 2048);

    v480 = v478(v479);

    (*(*v480 + 1720))(7);

    v91 = MEMORY[0x1E69DDCE0];
  }

  if ((TVAppFeature.isEnabled.getter(20, v303, v304) & 1) != 0 && (TVAppFeature.isEnabled.getter(10, v481, v482) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0 && (TVAppFeature.isEnabled.getter(10, v483, v484) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    v485 = sub_1E3EEACC4();
    v486 = (*(*v485 + 2096))(v485);

    (*(*v486 + 872))(0);

    v487 = *(v0 + 120);
    v488 = objc_opt_self();

    v489 = [v488 whiteColor];
    v490 = [v489 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v491 + 752))(v490);

    OUTLINED_FUNCTION_16_117();
    v492 = [v488 blackColor];
    v493 = [v492 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v494 + 1984))(v493);

    OUTLINED_FUNCTION_16_117();
    v495.n128_u64[0] = 1.0;
    *&__src[0] = j__OUTLINED_FUNCTION_7_78(v495);
    *(&__src[0] + 1) = v496;
    *&__src[1] = v497;
    *(&__src[1] + 1) = v498;
    LOBYTE(__src[2]) = 0;
    (*(*v487 + 1960))(__src);

    OUTLINED_FUNCTION_16_117();
    v499 = *sub_1E3E60E58();
    v500 = *(*v487 + 1936);
    v501 = v499;
    v500(v499);

    *v672 = 0x4048000000000000;
    LOBYTE(v673) = 0;
    v664[0] = 0x4050800000000000;
    LOBYTE(v664[1]) = 0;

    v502 = MEMORY[0x1E69E7DE0];
    OUTLINED_FUNCTION_22_86();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v503, v504, v505, v506, v507, v508, v502, v509);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v510 = OUTLINED_FUNCTION_18_116();
    v511(v510, 6);

    OUTLINED_FUNCTION_14_149();
    OUTLINED_FUNCTION_22_86();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v512, v513, v514, v515, v516, v517, v502, v518);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v519 = OUTLINED_FUNCTION_18_116();
    v520(v519, 8);

    OUTLINED_FUNCTION_14_149();
    OUTLINED_FUNCTION_22_86();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v521, v522, v523, v524, v525, v526, v502, v527);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v528 = OUTLINED_FUNCTION_18_116();
    v529(v528, 7);

    OUTLINED_FUNCTION_14_149();
    OUTLINED_FUNCTION_22_86();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v530, v531, v532, v533, v534, v535, v502, v536);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v537 = OUTLINED_FUNCTION_18_116();
    v538(v537, 2);

    OUTLINED_FUNCTION_14_149();
    OUTLINED_FUNCTION_22_86();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v539, v540, v541, v542, v543, v544, v502, v545);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v546 = OUTLINED_FUNCTION_18_116();
    v547(v546, 4);

    OUTLINED_FUNCTION_14_149();
    OUTLINED_FUNCTION_22_86();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v548, v549, v550, v551, v552, v553, v502, v554);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v555 = OUTLINED_FUNCTION_18_116();
    v556(v555, 3);

    v557 = v91[1];
    *v664 = *v91;
    *&v664[2] = v557;
    LOBYTE(v664[4]) = 0;
    OUTLINED_FUNCTION_8();
    v559 = *(v558 + 160);

    v559(v664);

    OUTLINED_FUNCTION_36();
    v561 = *(v560 + 1888);

    v561(0);

    memset(v659, 0, 32);
    v659[32] = 1;
    OUTLINED_FUNCTION_8();
    v563 = *(v562 + 560);

    v563(v659);

    OUTLINED_FUNCTION_3_11();
    v565 = (v564 + 2096);
    v566 = *(v564 + 2096);

    v566(v567);

    v634 = v488;
    *v672 = [v488 blackColor];
    v635[0] = *sub_1E3E5FD88();
    v568 = v635[0];
    v685[0] = [v488 whiteColor];
    v683[0] = [v488 whiteColor];
    v569 = sub_1E3755B54();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_40_61();
    sub_1E3C3DE00();
    v645[0] = v649[0];
    v570 = OUTLINED_FUNCTION_19_125();
    sub_1E3C2FCB8(v570, v653, v645, v635, v685, v683, v569, v571);
    v572 = __dst[0];
    v573 = __dst[1];
    v574 = __dst[2];
    OUTLINED_FUNCTION_24_94();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v575 = OUTLINED_FUNCTION_18_116();
    v576(v575, 21);

    OUTLINED_FUNCTION_16_117();
    __dst[0] = *sub_1E3E5FA50();
    v577 = __dst[0];
    sub_1E3C2CA00();

    OUTLINED_FUNCTION_36();
    v579 = *(v578 + 2096);

    v579(v580);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_3_11();
    (*(v581 + 2144))(0x4031000000000000, 0);

    OUTLINED_FUNCTION_36();
    v583 = *(v582 + 2096);

    v583(v584);
    OUTLINED_FUNCTION_112();

    v585 = [v634 &selRef_adaptivePresentationStyleForPresentationController_];
    OUTLINED_FUNCTION_3_11();
    (*(v586 + 680))();

    OUTLINED_FUNCTION_36();
    v588 = *(v587 + 2096);

    v590 = v588(v589);

    (*(*v590 + 2024))(3, 0);
  }
}

uint64_t sub_1E3EED6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((TVAppFeature.isEnabled.getter(10, a2, a3) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    if (a2)
    {

      if (TVAppFeature.isEnabled.getter(20, v36, v37))
      {
        LOBYTE(v39[0]) = 18;
        (*(*a2 + 776))(__src, v39, &unk_1F5D5D0A8, &off_1F5D5C758);
        if (!__src[3])
        {

          sub_1E329505C(__src);
          return sub_1E3C35CA4(a1);
        }

        if (swift_dynamicCast())
        {
          if (LOBYTE(v39[0]) == 1)
          {
            v8 = sub_1E3EEACC4();
          }

          else
          {

            v8 = sub_1E3C35CA4(a1);
          }

          return v8;
        }
      }
    }

    return sub_1E3C35CA4(a1);
  }

  type metadata accessor for ButtonLayout();
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = sub_1E3B050E8();
  v7 = j__OUTLINED_FUNCTION_18();
  v8 = sub_1E3BBD964(1, v5 & 1, v6, v7 & 1);
  if (TVAppFeature.isEnabled.getter(10, v9, v10) & 1) != 0 || (sub_1E39DFFC8())
  {
    if (TVAppFeature.isEnabled.getter(20, v11, v12))
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 8.0;
    }

    v54[0] = sub_1E3952C10(v13, 8.0);
    v54[1] = v14;
    v54[2] = v15;
    v54[3] = v16;
    v55 = 0;
    if (TVAppFeature.isEnabled.getter(20, v17, v18))
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 8.0;
    }

    v52[0] = sub_1E3952C10(24.0, v19);
    v52[1] = v20;
    v52[2] = v21;
    v52[3] = v22;
    v53 = 0;
    if (TVAppFeature.isEnabled.getter(20, v23, v24))
    {
      v25 = 12.0;
    }

    else
    {
      v25 = 8.0;
    }

    v39[0] = sub_1E3952C10(v25, 8.0);
    v39[1] = v26;
    v39[2] = v27;
    v39[3] = v28;
    LOBYTE(v39[4]) = 0;
    v50[0] = sub_1E3952C10(14.0, 0.0);
    v50[1] = v29;
    v50[2] = v30;
    v50[3] = v31;
    v51 = 0;
    type metadata accessor for UIEdgeInsets();
    v33 = v32;
    sub_1E3C2FC98();
    v45[0] = v47;
    v45[1] = v48;
    v46 = v49;
    sub_1E3C3DE00();
    v40[0] = v42;
    v40[1] = v43;
    v41 = v44;
    sub_1E3C2FCB8(v54, v45, v40, v52, v39, v50, v33, __src);
    memcpy(v39, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v34 + 1600))(v39, 0, v35 & 1, v33);
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_48_45()
{

  return sub_1E3C3DE00();
}

id sub_1E3EEDA18(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1E3EEDA5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardView;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardView, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1E3EEDAF8()
{
  v1 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel))
  {
    OUTLINED_FUNCTION_8();
    v3 = *(v2 + 392);

    v5 = v3(v4);

    if (v5)
    {
      v6 = type metadata accessor for ImageLayout();
      if (OUTLINED_FUNCTION_4_84(v6))
      {
        OUTLINED_FUNCTION_30();
        v8 = *(v7 + 552);

        v8(&v15, v9);

        if ((v16 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_130();
          v1 = sub_1E3952BE8(v10, v11, v12, v13);
        }
      }
    }
  }

  return v1;
}

void sub_1E3EEDC08()
{
  OUTLINED_FUNCTION_58_34();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 136))();
  OUTLINED_FUNCTION_7_5();
  v13 = (*((*v2 & v4) + 0x120))();

  if (v13)
  {
    ObjectType = swift_getObjectType();
    v6 = dynamic_cast_existential_1_conditional(v13, ObjectType, &protocol descriptor for OverlayViewProtocol);
    if (v6)
    {
      v8 = v6;
      v9 = v7;
      v10 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected;
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected, v14);
      v11 = *(v0 + v10);
      v12 = swift_getObjectType();
      (*(v9 + 72))(v11, v12, v9);
    }

    else
    {
    }
  }
}