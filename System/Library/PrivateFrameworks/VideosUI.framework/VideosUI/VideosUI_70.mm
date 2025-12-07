void sub_1E3BCE9C0()
{
  sub_1E3BCEA90(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_4_140();
    sub_1E3BCEA90(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_165();
    }
  }
}

void sub_1E3BCEA90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3BCEB9C()
{
  result = qword_1EE289518;
  if (!qword_1EE289518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34870, &qword_1E42C1470);
    sub_1E3BCEC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289518);
  }

  return result;
}

unint64_t sub_1E3BCEC28()
{
  result = qword_1EE289710;
  if (!qword_1EE289710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34868, &qword_1E42C1468);
    sub_1E3BCECB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289710);
  }

  return result;
}

unint64_t sub_1E3BCECB4()
{
  result = qword_1EE289C60;
  if (!qword_1EE289C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEC0, &unk_1E42C8F40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C60);
  }

  return result;
}

unint64_t sub_1E3BCED58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3BCEDE0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3BCEE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardLockup.ImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BCEE8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3BCEEE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3BCEF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE255BA0;
  if (!qword_1EE255BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE255BA0);
  }

  return result;
}

uint64_t sub_1E3BCEFAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_66_2();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1E3BCF00C()
{
  result = qword_1EE289548;
  if (!qword_1EE289548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34970, &qword_1E42C15E8);
    sub_1E3BCF098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289548);
  }

  return result;
}

unint64_t sub_1E3BCF098()
{
  result = qword_1EE289798;
  if (!qword_1EE289798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34978, &qword_1E42C15F0);
    sub_1E37AE398(&unk_1EE2884D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289798);
  }

  return result;
}

unint64_t sub_1E3BCF150()
{
  result = qword_1EE289460;
  if (!qword_1EE289460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34840, &qword_1E42C1438);
    sub_1E3BCF1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289460);
  }

  return result;
}

unint64_t sub_1E3BCF1DC()
{
  result = qword_1EE289528;
  if (!qword_1EE289528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34838, &qword_1E42C1430);
    sub_1E3B29BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289528);
  }

  return result;
}

unint64_t sub_1E3BCF268()
{
  result = qword_1EE289650;
  if (!qword_1EE289650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34850, &unk_1E42C1448);
    sub_1E3BCF2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289650);
  }

  return result;
}

unint64_t sub_1E3BCF2F4()
{
  result = qword_1EE289A48;
  if (!qword_1EE289A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34848, &qword_1E42C1440);
    sub_1E3BCF51C(&unk_1EE289CF0);
    sub_1E37AE398(&unk_1EE289338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A48);
  }

  return result;
}

unint64_t sub_1E3BCF3D8()
{
  result = qword_1EE288ED0;
  if (!qword_1EE288ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34878, &qword_1E42C1478);
    sub_1E3BCEB9C();
    sub_1E3B29BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288ED0);
  }

  return result;
}

unint64_t sub_1E3BCF464()
{
  result = qword_1EE289A58;
  if (!qword_1EE289A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF349A0, qword_1E42C1620);
    sub_1E3BCF51C(&unk_1EE289D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A58);
  }

  return result;
}

unint64_t sub_1E3BCF51C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3BCF590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE289D80;
  if (!qword_1EE289D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289D80);
  }

  return result;
}

unint64_t sub_1E3BCF614()
{
  result = qword_1EE288718;
  if (!qword_1EE288718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF349B0, &qword_1E42C16E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A140, &qword_1E42B7E30);
    sub_1E3BCED58(&qword_1EE289C98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288718);
  }

  return result;
}

double sub_1E3BCF740(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1E3BCF7F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_cellImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3BCF840()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3BCF8BC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_numberLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3BCF904()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3BCF980(uint64_t a1, char a2, void (*a3)(id))
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

void *sub_1E3BCFA00(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_titleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3BCFA48()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3BCFAC4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_subtitleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3BCFB0C(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = a1;
  v8 = [v2 vuiContentView];
  v9 = *a2;
  swift_beginAccess();
  [v8 vui:*&v2[v9] addSubview:v6 oldView:?];
}

uint64_t sub_1E3BCFBC8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

double sub_1E3BCFC4C(char a1, double a2)
{
  v4 = v2;
  if (!(*((*MEMORY[0x1E69E7D40] & *v2) + 0x78))())
  {
    return a2;
  }

  v7 = [v2 vuiTraitCollection];
  v8 = [v7 isAXEnabled];

  v9 = MEMORY[0x1E69DDCE0];
  if (!v8)
  {
    OUTLINED_FUNCTION_16_1();
    v16 = (*(v15 + 120))();
    if (!v16)
    {
      return a2;
    }

    v17 = v16;
    OUTLINED_FUNCTION_26_0();
    (*(v18 + 176))(&v141);
    OUTLINED_FUNCTION_12_6();
    (*(v19 + 1800))();
    OUTLINED_FUNCTION_15_9();
    (*(v20 + 432))();
    OUTLINED_FUNCTION_18_67();
    if (v3)
    {
      sub_1E418A524();
    }

    OUTLINED_FUNCTION_24_55();
    height = v153.size.height;
    MaxY = CGRectGetMaxY(v153);
    (*(*v17 + 1728))();
    OUTLINED_FUNCTION_30();
    (*(v29 + 152))(v142);
    v30 = *v142;
    v31 = *&v142[3];

    if (v143)
    {
      v30 = *v9;
      v31 = v9[3];
    }

    OUTLINED_FUNCTION_16_1();
    v134 = *(v32 + 168);
    v33 = v134();
    if (v33)
    {
      v34 = v33;
      [v33 sizeThatFits_];
      v36 = v35;
      rect = v37;
    }

    else
    {
      v36 = 0.0;
      rect = 0.0;
    }

    v51 = v31 + v36;
    v52 = a2 - (v31 + v36);
    OUTLINED_FUNCTION_16_1();
    v54 = *(v53 + 192);
    v55 = 0.0;
    v56 = 0.0;
    if (v54())
    {
      OUTLINED_FUNCTION_16_87();
      [v57 v58];
      v55 = v59;
      v56 = v60;
    }

    v137 = v56;
    OUTLINED_FUNCTION_12_5();
    v62 = *(v61 + 216);
    v140 = 0.0;
    if (v62())
    {
      OUTLINED_FUNCTION_16_87();
      [v63 v64];
      v140 = v65;
    }

    OUTLINED_FUNCTION_12_6();
    (*(v66 + 1776))();
    OUTLINED_FUNCTION_30();
    (*(v67 + 152))(v144);

    if (v145)
    {
      v69 = 0.0;
    }

    else
    {
      v69 = v144[0];
    }

    v70 = (v54)(v68);
    v71 = v62;
    v133 = v36;
    if (v70 && (v70, (v72 = v62()) != 0))
    {

      OUTLINED_FUNCTION_12_6();
      (*(v73 + 1752))();
      OUTLINED_FUNCTION_30();
      (*(v74 + 152))(v146);

      v75 = v146[0];
      if (v147)
      {
        v75 = 0.0;
      }

      v76 = v56 + v140 + v69 + v75;
    }

    else
    {
      v77 = v54();
      if (v77)
      {

        v76 = v56;
      }

      else
      {
        v100 = v62();
        if (v100)
        {

          v76 = v140;
        }

        else
        {
          v76 = 0.0;
        }
      }
    }

    v135 = MaxY + v30;
    v101 = 0.0;
    v102 = v51 + 0.0;
    OUTLINED_FUNCTION_12_6();
    v103 += 219;
    v104 = *v103;
    (*v103)();
    OUTLINED_FUNCTION_30();
    (*(v105 + 152))(v148);

    if ((v149 & 1) == 0)
    {
      v101 = v148[0];
    }

    v107 = (v54)(v106);
    if (v107 && (v107, (v108 = v71()) != 0))
    {
      v109 = MaxY + v101;

      if (v52 >= v55)
      {
        v110 = v55;
      }

      else
      {
        v110 = v52;
      }

      v111 = v54();
      if (v111)
      {
        v112 = v111;
        v158.origin.x = v102;
        v158.origin.y = v109;
        v158.size.width = v110;
        v113 = v137;
        v158.size.height = v137;
        v114 = [v111 requiresMoreThanOneLineForTextWidth_];
      }

      else
      {
        v114 = 0;
        v113 = v137;
      }

      v160.origin.x = v102;
      v160.origin.y = v109;
      v160.size.width = v110;
      v160.size.height = v113;
      CGRectGetMaxY(v160);
      if ((v114 & 1) == 0)
      {
        v161.origin.x = 0.0;
        v161.origin.y = v135;
        v161.size.width = v133;
        v161.size.height = rect;
        if (v76 <= CGRectGetHeight(v161))
        {
          v126 = v134();
          if (v126)
          {
            v127 = v126;
            [v126 vuiBaselineHeight];
          }

          v128 = v71();
          if (v128)
          {
            v129 = v128;
            [v128 vuiBaselineHeight];
          }
        }
      }
    }

    else
    {
      v115 = v54();
      if (!v115)
      {
        v124 = v71();
        if (v124)
        {

          v104();
          OUTLINED_FUNCTION_30();
          (*(v125 + 152))(v150);

          if (a1)
          {
            goto LABEL_101;
          }
        }

        else
        {
          OUTLINED_FUNCTION_12_88();
          if (a1)
          {
            goto LABEL_101;
          }
        }

LABEL_93:
        [v4 vuiIsRTL];
        OUTLINED_FUNCTION_12_5();
        if ((*(v130 + 144))())
        {
          OUTLINED_FUNCTION_14_106();
          OUTLINED_FUNCTION_0_167();
          OUTLINED_FUNCTION_24_55();
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          OUTLINED_FUNCTION_30_2();
        }

        if (v134())
        {
          OUTLINED_FUNCTION_14_106();
          OUTLINED_FUNCTION_0_167();
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          OUTLINED_FUNCTION_30_2();
        }

        if (v54())
        {
          OUTLINED_FUNCTION_14_106();
          OUTLINED_FUNCTION_2_6();
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          OUTLINED_FUNCTION_30_2();
        }

        if (v71())
        {
          OUTLINED_FUNCTION_14_106();
          OUTLINED_FUNCTION_2_6();
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          OUTLINED_FUNCTION_30_2();
        }

        goto LABEL_101;
      }

      v104();
      OUTLINED_FUNCTION_30();
      (*(v116 + 152))(v150);

      v118 = *v150;
      if (v151)
      {
        v118 = 0.0;
      }

      v119 = MaxY + v118;
      if (v52 >= v55)
      {
        v120 = v55;
      }

      else
      {
        v120 = v52;
      }

      v121 = (v54)(v117);
      if (v121)
      {
        v122 = v121;
        v159.origin.x = v51 + 0.0;
        v159.origin.y = v119;
        v159.size.width = v120;
        v159.size.height = v137;
        v123 = [v121 requiresMoreThanOneLineForTextWidth_];

        if (v123)
        {
          OUTLINED_FUNCTION_12_88();
          if (a1)
          {
            goto LABEL_101;
          }

          goto LABEL_93;
        }
      }

      OUTLINED_FUNCTION_12_88();
    }

    if (a1)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  OUTLINED_FUNCTION_16_1();
  if ((*(v10 + 120))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v11 + 176))(v150);
    if (v151)
    {
      v12 = *v9;
    }

    else
    {
      v12 = *v150;
    }

    OUTLINED_FUNCTION_12_6();
    (*(v13 + 1800))();
    OUTLINED_FUNCTION_15_9();
    (*(v14 + 432))();
    OUTLINED_FUNCTION_18_67();
    if (v3)
    {
      sub_1E418A524();
    }

    OUTLINED_FUNCTION_24_55();
    v21 = v12 + CGRectGetMaxY(v152);
    OUTLINED_FUNCTION_16_1();
    v138 = *(v22 + 168);
    if (v138())
    {
      OUTLINED_FUNCTION_16_87();
      [v23 v24];
      v26 = v25;
      v28 = v27;
    }

    else
    {
      v26 = 0.0;
      v28 = 0.0;
    }

    v154.origin.x = 0.0;
    v154.origin.y = v21;
    v154.size.width = v26;
    v154.size.height = v28;
    v38 = v12 + CGRectGetMaxY(v154);
    OUTLINED_FUNCTION_16_1();
    v40 = *(v39 + 192);
    v41 = v40();
    if (v41)
    {

      v42 = v40();
      if (v42)
      {
        v43 = v42;
        OUTLINED_FUNCTION_12_6();
        v45 = (*(v44 + 1752))();
        OUTLINED_FUNCTION_29_54(v46, v47, v45);
      }

      v155.origin.x = OUTLINED_FUNCTION_25_64();
      v48 = CGRectGetMaxY(v155);
      v49 = v40();
      if (v49)
      {
        v50 = v49;
        v156.origin.x = OUTLINED_FUNCTION_25_64();
        [v50 requiresMoreThanOneLineForTextWidth_];
      }
    }

    else
    {
      v48 = v38;
    }

    OUTLINED_FUNCTION_16_1();
    v79 = *(v78 + 216);
    v80 = v79();
    if (v80)
    {

      v81 = v79();
      if (v81)
      {
        v82 = v81;
        OUTLINED_FUNCTION_12_6();
        v84 = (*(v83 + 1776))();
        OUTLINED_FUNCTION_29_54(v85, v86, v84);
        v88 = v87;
        v90 = v89;
      }

      else
      {
        v88 = 0.0;
        v90 = 0.0;
      }

      v157.origin.x = 0.0;
      v157.origin.y = v48;
      v157.size.width = v88;
      v157.size.height = v90;
      CGRectGetMaxY(v157);
      if ((a1 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if ((a1 & 1) == 0)
    {
LABEL_48:
      [v4 vuiIsRTL];
      v91 = v138();
      if (v91)
      {
        v92 = v91;
        [v4 vuiBounds];
        OUTLINED_FUNCTION_0_167();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v92 setFrame_];
      }

      v93 = v40();
      if (v93)
      {
        v94 = v93;
        [v4 vuiBounds];
        OUTLINED_FUNCTION_0_167();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v94 setFrame_];
      }

      v95 = v79();
      if (v95)
      {
        v96 = v95;
        [v4 vuiBounds];
        OUTLINED_FUNCTION_0_167();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v96 setFrame_];
      }

      OUTLINED_FUNCTION_12_5();
      v98 = (*(v97 + 144))();
      if (v98)
      {
        v99 = v98;
        [v4 vuiBounds];
        OUTLINED_FUNCTION_0_167();
        OUTLINED_FUNCTION_24_55();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v99 setFrame_];
      }
    }

LABEL_101:
  }

  return a2;
}

void sub_1E3BD0B80(uint64_t a1)
{
  v6 = type metadata accessor for OrdinalCardCell();
  v2 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v3, v4, v2, v1, v6);
  v5 = OUTLINED_FUNCTION_6_12();
  sub_1E3BCFC4C(0, v5);
}

void *sub_1E3BD0C60(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    OUTLINED_FUNCTION_12_6();
    v11 = *(v10 + 392);
    v12 = a2;
    v13 = v11();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for OrdinalCellLayout();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        OUTLINED_FUNCTION_12_6();
        v18 = (*(v17 + 488))();
        if (v18)
        {
          v19 = v18;
          if (*(v18 + 16))
          {
            v97[0] = v14;
            OUTLINED_FUNCTION_12_5();
            v21 = *(v20 + 128);

            v21(v22);
            v23 = (*a3 == 2) | ~*a3;
            sub_1E3DF9E68(v106);
            LODWORD(v99) = v110;
            LODWORD(v98) = v23 & 1;
            v24 = (*v16 + 1800);
            v25 = *v24;
            v26 = (*v24)();
            [v12 vuiBounds];
            Width = CGRectGetWidth(v111);
            (*(*v26 + 208))(*&Width, 0);

            v101 = v24;
            v100 = v25;
            (v25)(v28);
            OUTLINED_FUNCTION_15_9();
            v30 = (*(v29 + 2288))();
            v32 = v31;

            v105 = 0;
            v33 = type metadata accessor for UIFactory();
            v35 = sub_1E373E010(39, v19, v34);
            OUTLINED_FUNCTION_12_5();
            v37 = *(v36 + 144);
            v38 = v36 + 144;
            v39 = v37();
            LOBYTE(v26) = v105;
            *(&v103 + 1) = &unk_1F5D869A0;
            v104 = &off_1F5D868A0;
            v40 = swift_allocObject();
            *&v102 = v40;
            *(v40 + 16) = v30;
            *(v40 + 24) = v32;
            *(v40 + 32) = v26;
            *(v40 + 33) = v107;
            *(v40 + 49) = v108;
            *(v40 + 65) = v109[0];
            *(v40 + 80) = *(v109 + 15);
            *(v40 + 96) = v98;
            *(v40 + 97) = v99;
            v41 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
            v97[1] = v33;
            sub_1E393D92C(v35, v39, &v102, 0, v41);

            sub_1E373C624(&v102);
            OUTLINED_FUNCTION_12_5();
            v42 = OUTLINED_FUNCTION_21_63();
            v44 = v43(v42);
            v99 = v37;
            v98 = v38;
            v45 = (v37)(v44);
            if (v45)
            {
              v47 = v45;
              [v45 setVuiUserInteractionEnabled_];
            }

            sub_1E373E010(17, v19, v46);
            OUTLINED_FUNCTION_12_5();
            v49 = (*(v48 + 168))();
            sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
            v102 = 0u;
            v103 = 0u;
            v104 = 0;
            v50 = OUTLINED_FUNCTION_7_133();
            sub_1E393D92C(v50, v51, v52, v53, v54);

            sub_1E373C624(&v102);
            OUTLINED_FUNCTION_3_136();
            v55 = OUTLINED_FUNCTION_21_63();
            v56(v55);
            sub_1E373E010(23, v19, v57);
            OUTLINED_FUNCTION_3_136();
            v59 = (*(v58 + 192))();
            v104 = 0;
            v103 = 0u;
            v102 = 0u;
            v60 = OUTLINED_FUNCTION_7_133();
            sub_1E393D92C(v60, v61, v62, v63, v64);

            sub_1E373C624(&v102);
            OUTLINED_FUNCTION_3_136();
            v65 = OUTLINED_FUNCTION_21_63();
            v66(v65);
            sub_1E373E010(15, v19, v67);
            OUTLINED_FUNCTION_3_136();
            v69 = (*(v68 + 216))();
            v104 = 0;
            v103 = 0u;
            v102 = 0u;
            v70 = OUTLINED_FUNCTION_7_133();
            sub_1E393D92C(v70, v71, v72, v73, v74);

            sub_1E373C624(&v102);
            OUTLINED_FUNCTION_3_136();
            v75 = OUTLINED_FUNCTION_21_63();
            v77 = v76(v75);
            (v100)(v77);
            OUTLINED_FUNCTION_15_9();
            (*(v78 + 552))(&v102);
            v79 = v102;
            v80 = v103;

            v82 = 0.0;
            if ((v104 & 1) == 0)
            {
              v82 = sub_1E3952BE8(*&v79, *(&v79 + 1), *&v80, *(&v80 + 1));
            }

            v83 = (v99)(v81);
            if (v83)
            {
              v84 = v83;
              v85 = [v83 vuiLayer];

              [v85 setCornerRadius_];
            }

            return a2;
          }
        }

        return a2;
      }
    }

    OUTLINED_FUNCTION_6_102();
  }

  else
  {
    v87 = sub_1E324FBDC();
    (*(v7 + 16))(v9, v87, v6);

    v88 = sub_1E41FFC94();
    v89 = sub_1E4206814();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v106[0] = v91;
      *v90 = 136315138;
      sub_1E384EE08(*(a1 + 98));
      v94 = sub_1E3270FC8(v92, v93, v106);

      *(v90 + 4) = v94;
      _os_log_impl(&dword_1E323F000, v88, v89, "OrdinalCardCell: Failed to get correct cell for [%s]", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x1E69143B0](v91, -1, -1);
      MEMORY[0x1E69143B0](v90, -1, -1);
    }

    v95 = OUTLINED_FUNCTION_27_0();
    v96(v95);
    OUTLINED_FUNCTION_6_102();
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3BD157C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_cellImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_numberLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_subtitleLabel) = 0;
  v5 = type metadata accessor for OrdinalCardCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3BD1628(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_cellImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_numberLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15OrdinalCardCell_subtitleLabel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OrdinalCardCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3BD16F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrdinalCardCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E3BD17A4@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x78))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v14 + 1800))();
    OUTLINED_FUNCTION_26_0();
    (*(v15 + 432))();
    OUTLINED_FUNCTION_18_67();
    if (v7)
    {
      sub_1E418A524();
    }

    [v6 vui:a2 sizeThatFits:0.0];
    v17 = v16;
    v19 = v18;
    sub_1E41A300C(__src);
    sub_1E41A2FE8(v20, v17, v19);
    sub_1E3952C94();
    __src[2] = v21;
    __src[3] = v22;
    __src[4] = v23;
    __src[5] = v24;
    OUTLINED_FUNCTION_40_17();
    v26 = (*(v25 + 192))();
    if (v26 || (OUTLINED_FUNCTION_40_17(), (v26 = (*(v27 + 216))()) != 0))
    {
      v28 = v26;
      [v26 bottomMarginWithBaselineMargin_];
      a5 = v29;
    }

    *&__src[6] = a3;
    *&__src[7] = a4;
    *&__src[8] = a5;
    *&__src[9] = a6;
    return memcpy(a1, __src, 0x50uLL);
  }

  else
  {
    OUTLINED_FUNCTION_6_102();
    result = sub_1E42076B4();
    __break(1u);
  }

  return result;
}

void sub_1E3BD1AA4(void *a1, uint64_t a2)
{
  v4 = (*(*a2 + 488))();
  if (!v4)
  {
LABEL_43:
    OUTLINED_FUNCTION_4_141();
    return;
  }

  v5 = v4;
  if ((*(*a2 + 392))())
  {
    type metadata accessor for CanonicalBannerLayout();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for UIFactory();
      v9 = sub_1E373E010(39, v5, v8);
      OUTLINED_FUNCTION_1_31();
      v10 = MEMORY[0x1E69E7D40];
      v12 = (*((*MEMORY[0x1E69E7D40] & v11) + 0x350))();
      v91 = 0u;
      v92 = 0u;
      v93 = 0;
      v90 = sub_1E373C4DC();
      v13 = sub_1E393D92C(v9, v12, &v91, 0, v90);

      sub_1E373C624(&v91);
      OUTLINED_FUNCTION_1_31();
      (*((*v10 & v14) + 0x358))(v13);
      v16 = sub_1E373E010(35, v5, v15);

      if (v16)
      {
        type metadata accessor for ImageViewModel();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v18 = v17;
          OUTLINED_FUNCTION_5_4();
          v20 = *(v19 + 1336);

          v20(v18);
          v21 = *(*v18 + 392);

          if (v21(v22))
          {
            type metadata accessor for ImageLayout();
            v23 = swift_dynamicCastClass();
            if (v23)
            {
              v24 = *(*v23 + 1560);

              v26 = v24(v25);
            }

            else
            {
              v26 = 7;
            }
          }

          else
          {
            v26 = 7;
          }

          v33 = (*(*v18 + 1032))(v26);
          v36 = 2;
          if ((v34 & 1) == 0)
          {
            v36 = v33;
          }

          v89 = v36;
          if (TVAppFeature.isEnabled.getter(10, v34, v35))
          {
            v37 = v7;

            type metadata accessor for ProductGradientView();
            OUTLINED_FUNCTION_5_8();
            v38 = sub_1E3890DAC();
            OUTLINED_FUNCTION_1_31();
            v40 = *((*v10 & v39) + 0x460);
            v41 = v38;
            v40(v38);
          }

          else
          {
            OUTLINED_FUNCTION_5_4();
            v43 = (*(v42 + 1064))();
            v88 = v26;
            if (!v43)
            {
              v44 = objc_allocWithZone(VUIProductUberBackgroundView);
              v45 = OUTLINED_FUNCTION_5_8();
              v43 = [v46 v47];
            }

            v48 = v43;
            v87 = v7;
            v49 = [v43 imageView];
            v93 = 0;
            v91 = 0u;
            v92 = 0u;
            v41 = sub_1E393D92C(v18, v49, &v91, 0, v90);

            sub_1E373C624(&v91);
            v50 = j__OUTLINED_FUNCTION_18();
            v51 = (*(*v18 + 1048))(v88, v50 & 1);
            if (v51)
            {
              v52 = v51;
              [v48 setBackgroundColor_];
            }

            [v48 setImageView_];
            [v48 configureBlurWithInterfaceStyle_];
            OUTLINED_FUNCTION_1_31();
            v54 = v10;
            v55 = *((*v10 & v53) + 0x430);
            v56 = v48;
            v55(v48);
            v10 = v54;

            v37 = v87;
          }

          if (TVAppFeature.isEnabled.getter(10, v57, v58))
          {

            v7 = v37;
          }

          else
          {
            v7 = v37;
            if (sub_1E3D10EC8())
            {
              [a1 vui:v89 setOverrideUserInterfaceStyle:?];
            }

            else
            {
              [a1 setOverrideUserInterfaceStyle_];
            }
          }

          goto LABEL_35;
        }
      }

      OUTLINED_FUNCTION_5_4();
      (*(v29 + 1072))(0);
      OUTLINED_FUNCTION_1_31();
      (*((*v10 & v30) + 0x538))(0);
LABEL_35:
      if (TVAppFeature.isEnabled.getter(10, v31, v32))
      {
        v59 = *((*v10 & *a1) + 0x2A8);
        v60 = v59();
        if (v60)
        {
          v61 = v60;
          v62 = (*(*v7 + 2368))();
          v63 = v59();
          if (v63)
          {
            v64 = v63;
            v65 = (*((*v10 & *v63) + 0x220))();
          }

          else
          {
            v65 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          *(inited + 32) = sub_1E4205F14();
          *(inited + 40) = v80;
          v81 = *(**sub_1E32ABF64() + 96);

          LOBYTE(v81) = v81(v82);

          *(inited + 72) = MEMORY[0x1E69E6370];
          *(inited + 48) = v81 & 1;
          sub_1E4205CB4();
          v83 = OUTLINED_FUNCTION_3_137();
          v86 = sub_1E412B208(v83, v84, v85, v62, v65, inited);

          (*((*MEMORY[0x1E69E7D40] & *v61) + 0x228))(v86);
        }
      }

      else
      {
        v66 = (*(*v7 + 2416))();
        OUTLINED_FUNCTION_1_31();
        v68 = (*((*v10 & v67) + 0x410))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
        v69 = swift_initStackObject();
        *(v69 + 16) = xmmword_1E4297BE0;
        *(v69 + 32) = sub_1E4205F14();
        *(v69 + 40) = v70;
        v71 = v10;
        v72 = *(**sub_1E32ABF64() + 96);

        LOBYTE(v72) = v72(v73);

        *(v69 + 72) = MEMORY[0x1E69E6370];
        *(v69 + 48) = v72 & 1;
        sub_1E4205CB4();
        v74 = OUTLINED_FUNCTION_3_137();
        v77 = sub_1E412B208(v74, v75, v76, v66, v68, v69);

        OUTLINED_FUNCTION_1_31();
        (*((*v71 & v78) + 0x418))(v77);
      }

      goto LABEL_43;
    }

    OUTLINED_FUNCTION_4_141();
  }

  else
  {
    OUTLINED_FUNCTION_4_141();
  }
}

uint64_t sub_1E3BD2538(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF349E8, &qword_1E42C1720);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - v3);
  *v4 = sub_1E4203DA4();
  v4[1] = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF349F0, &qword_1E42C1728) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF349F8, qword_1E42C1730);
  OUTLINED_FUNCTION_2();
  (*(v7 + 16))(v4 + v6, a1);
  sub_1E4200BA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
  OUTLINED_FUNCTION_17_5();
  sub_1E32752B0(v8, &qword_1ECF349E8, &qword_1E42C1720, v9);
  OUTLINED_FUNCTION_0_168();
  sub_1E32752B0(v10, &qword_1ECF2D3E8, &qword_1E42DC9B0, v11);
  sub_1E4203204();
  return sub_1E3BD26BC(v4);
}

uint64_t sub_1E3BD26BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF349E8, &qword_1E42C1720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DisableSwiftUITouchEventModifier(uint64_t a1)
{
  result = qword_1ECF598D0;
  if (!qword_1ECF598D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BD27B8(uint64_t a1)
{
  sub_1E3BD2824(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E3BD2824(uint64_t a1)
{
  if (!qword_1ECF34A08)
  {
    sub_1E4200AF4();
    v1 = sub_1E4200FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF34A08);
    }
  }
}

uint64_t sub_1E3BD2890()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 200);
  v2 = v1();
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    v2 = (*(v4 + 304))();
    if (v5)
    {
      return 0;
    }
  }

  v7 = (v1)(v2);
  v9 = v8;
  OUTLINED_FUNCTION_8();
  (*(v10 + 304))();
  if (v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1E3BD29D0(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD2A90()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD2B38()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD2BE0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD2CB4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD2D50(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3BD2DC8(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  type metadata accessor for UIEdgeInsets();
  *(v3 + 11) = v4;
  sub_1E3C2C6A0();
  v5 = v3[72];
  v6 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v6;
  v3[32] = v5;
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD2EB8(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD2FA4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD3090(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD3114()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A18, &qword_1E42C17F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  v2 = COERCE_DOUBLE((*(*v0 + 2136))());
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_self() configurationWithPointSize_];
  }

  *(inited + 32) = v4;
  OUTLINED_FUNCTION_111();
  v6 = (*(v5 + 2064))();
  if (v6 != 27)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 uiFontTextStyleFromTextStyle_];
    if (v9)
    {
      v10 = v9;
      OUTLINED_FUNCTION_111();
      v12 = (*(v11 + 2088))();
      if (v12 == 13)
      {
        v13 = 0;
      }

      else
      {
        v15 = v12;
        v16 = objc_opt_self();
        v13 = [v16 uiContentSizeCategoryFor_];
        v17 = [v8 _preferredFontForTextStyle_maximumContentSizeCategory_];

        if (v17)
        {
          v14 = [objc_opt_self() configurationWithFont_];

          v10 = v17;
LABEL_12:

          goto LABEL_13;
        }
      }

      v14 = [objc_opt_self() configurationWithTextStyle_];
      goto LABEL_12;
    }
  }

  v14 = 0;
LABEL_13:
  *(inited + 40) = v14;
  OUTLINED_FUNCTION_111();
  v19 = (*(v18 + 2160))();
  if (v19 == 11)
  {
    v20 = 0;
  }

  else
  {
    v21 = sub_1E376B2B4(v19);
    v20 = [objc_opt_self() configurationWithWeight_];
  }

  *(inited + 48) = v20;
  OUTLINED_FUNCTION_111();
  v23 = (*(v22 + 2016))();
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = [objc_opt_self() configurationWithScale_];
  }

  *(inited + 56) = v25;
  OUTLINED_FUNCTION_111();
  v27 = (*(v26 + 672))();
  if (v27)
  {
    v28 = v27;
    OUTLINED_FUNCTION_111();
    v30 = (*(v29 + 744))();
    if (v30)
    {
      v31 = v30;
      sub_1E3280A90(0, &qword_1EE23AFA8, 0x1E69DCAD8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1E429DCC0;
      *(v32 + 32) = v28;
      *(v32 + 40) = v31;
      v27 = sub_1E3BD62FC(v32);
    }

    else
    {

      v27 = 0;
    }
  }

  v33 = 0;
  *(inited + 64) = v27;
  v34 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  while (v33 != 5)
  {
    if (v33 > 4)
    {
      __break(1u);
      goto LABEL_47;
    }

    v35 = *(inited + 8 * v33++ + 32);
    if (v35)
    {
      v36 = v35;
      MEMORY[0x1E6910BF0]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v34 = v47;
    }
  }

  swift_setDeallocating();
  sub_1E3BD6380();
  v37 = sub_1E32AE9B0(v34);
  if (v37)
  {
    v38 = v37;
    if (v37 < 1)
    {
LABEL_47:
      __break(1u);
      return;
    }

    v39 = 0;
    for (i = 0; i != v38; ++i)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v41 = OUTLINED_FUNCTION_53();
        v42 = MEMORY[0x1E6911E60](v41);
      }

      else
      {
        v42 = *(v34 + 8 * i + 32);
      }

      v43 = v42;
      if (v39)
      {
        v44 = [v39 configurationByApplyingConfiguration_];

        v43 = v44;
      }

      v39 = v43;
    }
  }

  else
  {
    v43 = 0;
  }

  if (v43)
  {
    v45 = sub_1E3280A90(0, &qword_1EE23AFA8, 0x1E69DCAD8);
    OUTLINED_FUNCTION_34_46(v45);
    if (v48)
    {
      [v48 configurationByApplyingConfiguration_];
    }
  }

  else
  {
    v46 = sub_1E3280A90(0, &qword_1EE23AFA8, 0x1E69DCAD8);
    OUTLINED_FUNCTION_34_46(v46);
  }
}

uint64_t sub_1E3BD36BC(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E3BD3114();
  *v1 = v2;
  return OUTLINED_FUNCTION_116();
}

void sub_1E3BD3734(void *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  sub_1E3280A90(0, a2, a3);
  sub_1E3C2CA00();
}

uint64_t sub_1E3BD3788(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_116();
}

void sub_1E3BD3800(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t sub_1E3BD38E8(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD396C()
{
  type metadata accessor for SymbolScale(0);
  sub_1E3C2C6A0();
  return v1;
}

void sub_1E3BD39A8()
{
  OUTLINED_FUNCTION_6_116();
  type metadata accessor for SymbolScale(0);
  sub_1E3C2CA00();
}

uint64_t sub_1E3BD39E0()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_3_9(v1);
  type metadata accessor for SymbolScale(0);
  *(v0 + 40) = v2;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD3A50(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E3BD3B0C(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD3BF8(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BD3CE4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

double sub_1E3BD3D9C(uint64_t a1)
{
  sub_1E3C2CA00();

  return result;
}

uint64_t sub_1E3BD3DE4(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_116();
}

double sub_1E3BD3E30(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3BD3D9C(*a1);
  }

  sub_1E3BD3D9C(v2);

  return result;
}

uint64_t sub_1E3BD3EF8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD3F64(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 8);
  v3 = *a1;
  *(v3 + 2) = **a1;
  v3[24] = v4;
  sub_1E3C2CA00();

  free(v3);
}

uint64_t sub_1E3BD4028(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD40AC()
{
  sub_1E4201DF4();

  sub_1E3C2C6A0();
}

uint64_t sub_1E3BD40F0(uint64_t a1)
{
  sub_1E4201DF4();
  sub_1E3C2CA00();
  return sub_1E325F748(a1, &qword_1ECF2B858, &unk_1E42A1760);
}

uint64_t sub_1E3BD4140(void *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858, &unk_1E42A1760) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  a1[2] = __swift_coroFrameAllocStub(v3);
  a1[3] = sub_1E4201DF4();
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BD41EC(void *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[1];
  if (a2)
  {
    sub_1E3BD4AAC(v2, v3);
    sub_1E3C2CA00();
    sub_1E325F748(v3, &qword_1ECF2B858, &unk_1E42A1760);
  }

  else
  {
    sub_1E3C2CA00();
  }

  sub_1E325F748(v2, &qword_1ECF2B858, &unk_1E42A1760);
  free(v2);

  free(v3);
}

uint64_t sub_1E3BD42FC(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

id sub_1E3BD4380()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D5948]) init];
  OUTLINED_FUNCTION_36();
  v2 = (*(v1 + 1696))();
  v3 = OUTLINED_FUNCTION_19_76(v2);
  if (!v5)
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  [v0 setImageSize_];
  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1728))();
  [v0 setUpscaleFactor_];
  OUTLINED_FUNCTION_36();
  v10 = (*(v9 + 432))();
  [v0 setAspectRatio_];
  OUTLINED_FUNCTION_36();
  (*(v12 + 1800))();
  OUTLINED_FUNCTION_14_17();
  if (v5)
  {
    v14 = 1;
  }

  else
  {
    v14 = j__OUTLINED_FUNCTION_13_30(v13);
  }

  [v0 setScaleMode_];
  OUTLINED_FUNCTION_9_2();
  (*(v15 + 552))(&v54);
  if ((v55 & 1) == 0)
  {
    sub_1E3952BF8();
    [v0 setBorderRadii_];
  }

  OUTLINED_FUNCTION_111();
  v17 = (*(v16 + 1824))();
  OUTLINED_FUNCTION_13_0(v17, sel_setBorderColor_);

  OUTLINED_FUNCTION_9_2();
  (*(v18 + 1848))(v56);
  if (v57)
  {
    OUTLINED_FUNCTION_18_68();
  }

  else
  {
    v19 = v56[1];
    v20 = v56[2];
    v21 = v56[3];
  }

  [v0 setBorderWidth_];
  OUTLINED_FUNCTION_9_2();
  [v0 setContinuousBorder_];
  OUTLINED_FUNCTION_9_2();
  v24 = *(v23 + 672);
  v25 = v0;
  v26 = v24();
  OUTLINED_FUNCTION_13_0(v26, sel_setTintColor_);

  v27 = v24();
  OUTLINED_FUNCTION_13_0(v27, sel_setDarkTintColor_);

  OUTLINED_FUNCTION_9_2();
  v29 = (*(v28 + 864))();
  OUTLINED_FUNCTION_13_0(v29, sel_setHighlightColor_);

  OUTLINED_FUNCTION_111();
  v31 = (*(v30 + 248))();
  [v25 setMaxWidth_];
  OUTLINED_FUNCTION_9_2();
  v34 = (*(v33 + 352))();
  [v25 setMaxHeight_];
  OUTLINED_FUNCTION_9_2();
  v37 = (*(v36 + 1272))();
  [v25 setFocusSizeIncrease_];
  OUTLINED_FUNCTION_9_2();
  LOBYTE(v58[0]) = (*(v39 + 1344))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
  OUTLINED_FUNCTION_23_57();
  [v25 setCenterGrowth_];
  OUTLINED_FUNCTION_9_2();
  LOBYTE(v58[0]) = (*(v40 + 1320))();
  OUTLINED_FUNCTION_23_57();
  [v25 setAcceptsFocus_];
  OUTLINED_FUNCTION_9_2();
  v42 = (*(v41 + 600))();
  OUTLINED_FUNCTION_13_0(v42, sel_setShadow_);

  OUTLINED_FUNCTION_111();
  (*(v43 + 152))(v58);
  if (v59)
  {
    OUTLINED_FUNCTION_18_68();
  }

  else
  {
    v44 = v58[1];
    v45 = v58[2];
    v46 = v58[3];
  }

  [v25 setMargin_];
  OUTLINED_FUNCTION_111();
  (*(v47 + 176))(v60);
  if (v61)
  {
    OUTLINED_FUNCTION_18_68();
  }

  else
  {
    v48 = v60[1];
    v49 = v60[2];
    v50 = v60[3];
  }

  [v25 setPadding_];

  OUTLINED_FUNCTION_9_2();
  v53 = (*(v51 + 1944))();
  MEMORY[0x1EEE9AC00](v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A10, &unk_1E42C17C0);
  sub_1E4148DE0(sub_1E3BD4B1C);

  return v25;
}

uint64_t sub_1E3BD4AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858, &unk_1E42A1760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3BD4B34(uint64_t a1)
{
  sub_1E3C34E14();
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = &v246;

  v8 = 0;
  v210 = a1;
LABEL_4:
  if (v5)
  {
    v9 = v8;
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v5 = 0;
      v247 = 0u;
      v248 = 0u;
      v246 = 0u;
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
LABEL_10:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_1E328438C(*(a1 + 56) + 32 * v11, __src);
      *&v246 = v13;
      *(&v246 + 1) = v14;
      sub_1E329504C(__src, v7 + 1);

LABEL_11:
      v231 = v246;
      v232 = v247;
      v233 = v248;
      if (!*(&v246 + 1))
      {

        return;
      }

      sub_1E329504C(&v232, &v228);
      OUTLINED_FUNCTION_53();
      v15 = sub_1E3D46B48();
      switch(v15)
      {
        case 'O':
        case 'W':
        case '\\':
        case '^':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227);
          v23 = OUTLINED_FUNCTION_28_44();
          sub_1E3C3AB84(v23, v24, v25);
          goto LABEL_30;
        case 'P':
        case 'R':
        case 'S':
        case 'd':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227);
          v26 = OUTLINED_FUNCTION_28_44();
          sub_1E3C3A5D4(v26, v27, v28);
          goto LABEL_30;
        case 'T':
          v64 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          OUTLINED_FUNCTION_16_88(v64, v65, v66, v67, v68, v69, v70, v71, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, __src[0]);
          sub_1E3C3913C();
          if (*(&v246 + 1))
          {

            OUTLINED_FUNCTION_53();
            LODWORD(v203) = sub_1E3B64E18();
          }

          else
          {
            LODWORD(v203) = 5;
          }

          if (*(&v247 + 1))
          {

            HIDWORD(v196) = sub_1E3B64E18();
          }

          else
          {
            HIDWORD(v196) = 5;
          }

          if (*(&v248 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B64E18();
          }

          if (v250)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B64E18();
          }

          if (v252)
          {

            sub_1E3B64E18();
          }

          v7 = v254;
          if (v254)
          {
            OUTLINED_FUNCTION_37_41();
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_169_0();
            sub_1E3B64E18();
          }

          else
          {
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_169();
          sub_1E3C2FCB8(v125, v126, v127, v128, v129, v130, &unk_1F5D72BB8, v131);
          OUTLINED_FUNCTION_12_89();
          LODWORD(v224) = *__dst;
          WORD2(v224) = v132;
          goto LABEL_110;
        case 'U':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227);
          v46 = 85;
          goto LABEL_28;
        case 'V':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227);
          sub_1E3C3A238(&v246, 86, 1);
          goto LABEL_30;
        case 'Y':
          v72 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          OUTLINED_FUNCTION_16_88(v72, v73, v74, v75, v76, v77, v78, v79, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, __src[0]);
          sub_1E3C3913C();
          if (*(&v246 + 1))
          {
            OUTLINED_FUNCTION_36_36();
            OUTLINED_FUNCTION_34();
            LODWORD(v203) = sub_1E3B650E8();
          }

          else
          {
            LODWORD(v203) = 3;
          }

          if (*(&v247 + 1))
          {

            HIDWORD(v196) = sub_1E3B650E8();
          }

          else
          {
            HIDWORD(v196) = 3;
          }

          if (*(&v248 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B650E8();
          }

          if (v250)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B650E8();
          }

          if (v252)
          {
            OUTLINED_FUNCTION_38_33();
            OUTLINED_FUNCTION_9_96();
            sub_1E3B650E8();
          }

          v7 = v254;
          if (v254)
          {
            OUTLINED_FUNCTION_37_41();
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_169_0();
            sub_1E3B650E8();
          }

          else
          {
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_169();
          sub_1E3C2FCB8(v133, v134, v135, v136, v137, v138, &unk_1F5D72C48, v139);
          OUTLINED_FUNCTION_12_89();
          LODWORD(v224) = *__dst;
          WORD2(v224) = v140;
          goto LABEL_110;
        case 'Z':
          OUTLINED_FUNCTION_24_56(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227);
          v46 = 90;
LABEL_28:
          sub_1E3C39D64(&v246, v46, 1);
LABEL_30:
          v63 = &v246;
          goto LABEL_31;
        case '[':
          sub_1E328438C(&v228, &v224);
          sub_1E3C3913C();
          if (!*(&v246 + 1) || (OUTLINED_FUNCTION_36_36(), OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v30))
          {
            v203 = 0;
            HIDWORD(v196) = 1;
          }

          else
          {
            v203 = sub_1E3B651B0(v29);
            HIDWORD(v196) = 0;
          }

          if (!*(&v247 + 1) || (, OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v30))
          {
            v189 = 0;
            LODWORD(v182) = 1;
          }

          else
          {
            v189 = sub_1E3B651B0(v142);
            LODWORD(v182) = 0;
          }

          if (!*(&v248 + 1) || (, OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v30))
          {
            v175 = 0;
            HIDWORD(v168) = 1;
          }

          else
          {
            v175 = sub_1E3B651B0(v143);
            HIDWORD(v168) = 0;
          }

          if (!v250 || (, OUTLINED_FUNCTION_34(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v30))
          {
            v161 = 0;
            v145 = 1;
          }

          else
          {
            v161 = sub_1E3B651B0(v144);
            v145 = 0;
          }

          if (!v252 || (OUTLINED_FUNCTION_38_33(), OUTLINED_FUNCTION_9_96(), sub_1E3B651BC(), OUTLINED_FUNCTION_14_17(), v30))
          {
            v147 = 0;
            v148 = 1;
          }

          else
          {
            v147 = sub_1E3B651B0(v146);
            v148 = 0;
          }

          if (v254)
          {

            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_9_96();
            sub_1E3B651BC();
            OUTLINED_FUNCTION_14_17();
            if (!v30)
            {
              v150 = sub_1E3B651B0(v149);
              v151 = 0;
              goto LABEL_132;
            }
          }

          else
          {
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          v150 = 0;
          v151 = 1;
LABEL_132:
          a1 = v210;
          *__dst = v203;
          __dst[8] = BYTE4(v196);
          v243 = v189;
          LOBYTE(v244) = v182;
          v241 = v175;
          LOBYTE(v242) = BYTE4(v168);
          v239 = v161;
          LOBYTE(v240) = v145;
          v237 = v147;
          LOBYTE(v238) = v148;
          v235 = v150;
          LOBYTE(v236) = v151;
          type metadata accessor for SymbolScale(0);
          sub_1E3C2FCB8(__dst, &v243, &v241, &v239, &v237, &v235, v152, __src);
          memcpy(__dst, __src, 0x59uLL);
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_8_11();
          v153();
          sub_1E325F748(&v224, &unk_1ECF296E0, &unk_1E4298030);
          __swift_destroy_boxed_opaque_existential_1(&v228);
          v7 = &v246;
          goto LABEL_4;
        case ']':
          v31 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          OUTLINED_FUNCTION_16_88(v31, v32, v33, v34, v35, v36, v37, v38, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, __src[0]);
          sub_1E3C3913C();
          v39 = v247;
          v40 = BYTE8(v247);
          v41 = v248;
          v42 = BYTE8(v248);
          v43 = v250;
          v175 = v249;
          v182 = v251;
          v44 = v252;
          v189 = v253;
          HIDWORD(v196) = v254;
          if (BYTE8(v246))
          {
            v45 = 2;
          }

          else
          {
            v45 = sub_1E385EB90(v246);
          }

          LODWORD(v203) = v45;
          if (v40)
          {
            v89 = 2;
            if ((v42 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v89 = sub_1E385EB90(v39);
            if ((v42 & 1) == 0)
            {
LABEL_42:
              v90 = sub_1E385EB90(v41);
              if ((v43 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_47;
            }
          }

          v90 = 2;
          if ((v43 & 1) == 0)
          {
LABEL_43:
            v91 = sub_1E385EB90(v175);
            if ((v44 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_48;
          }

LABEL_47:
          v91 = 2;
          if ((v44 & 1) == 0)
          {
LABEL_44:
            v92 = sub_1E385EB90(v182);
            goto LABEL_49;
          }

LABEL_48:
          v92 = 2;
LABEL_49:
          if ((v196 & 0x100000000) == 0)
          {
            sub_1E385EB90(v189);
          }

          __dst[0] = v203;
          LOBYTE(v224) = v89;
          LOBYTE(v243) = v90;
          LOBYTE(v241) = v91;
          LOBYTE(v239) = v92;
          OUTLINED_FUNCTION_15_93();
          sub_1E3C2FCB8(v93, v94, v95, v96, v97, v98, &unk_1F5D72A98, v99);
          *__dst = v246;
          *&__dst[4] = WORD2(v246);
          OUTLINED_FUNCTION_8_11();
          v100();
          sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
          __swift_destroy_boxed_opaque_existential_1(&v228);
          a1 = v210;
          v7 = &v246;
          break;
          v55 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          OUTLINED_FUNCTION_16_88(v55, v56, v57, v58, v59, v60, v61, v62, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, __src[0]);
          sub_1E3C3913C();
          if (*(&v246 + 1))
          {
            OUTLINED_FUNCTION_36_36();
            OUTLINED_FUNCTION_34();
            LODWORD(v203) = sub_1E376AD24();
          }

          else
          {
            LODWORD(v203) = 27;
          }

          if (*(&v247 + 1))
          {

            HIDWORD(v196) = sub_1E376AD24();
          }

          else
          {
            HIDWORD(v196) = 27;
          }

          if (*(&v248 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E376AD24();
          }

          if (v250)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E376AD24();
          }

          if (v252)
          {
            OUTLINED_FUNCTION_38_33();
            OUTLINED_FUNCTION_9_96();
            sub_1E376AD24();
          }

          v7 = v254;
          if (v254)
          {
            OUTLINED_FUNCTION_37_41();
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_169_0();
            sub_1E376AD24();
          }

          else
          {
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_169();
          sub_1E3C2FCB8(v117, v118, v119, v120, v121, v122, &qword_1F5D549D8, v123);
          OUTLINED_FUNCTION_12_89();
          LODWORD(v224) = *__dst;
          WORD2(v224) = v124;
          goto LABEL_110;
        case 'a':
          v47 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          OUTLINED_FUNCTION_16_88(v47, v48, v49, v50, v51, v52, v53, v54, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, __src[0]);
          sub_1E3C3913C();
          if (*(&v246 + 1))
          {
            OUTLINED_FUNCTION_36_36();
            OUTLINED_FUNCTION_34();
            LODWORD(v203) = sub_1E376B2C8();
          }

          else
          {
            LODWORD(v203) = 11;
          }

          if (*(&v247 + 1))
          {

            HIDWORD(v196) = sub_1E376B2C8();
          }

          else
          {
            HIDWORD(v196) = 11;
          }

          if (*(&v248 + 1))
          {
            OUTLINED_FUNCTION_40_44();
            OUTLINED_FUNCTION_9_96();
            sub_1E376B2C8();
          }

          if (v250)
          {
            OUTLINED_FUNCTION_39_36();
            OUTLINED_FUNCTION_9_96();
            sub_1E376B2C8();
          }

          if (v252)
          {
            OUTLINED_FUNCTION_38_33();
            OUTLINED_FUNCTION_9_96();
            sub_1E376B2C8();
          }

          v7 = v254;
          if (v254)
          {
            OUTLINED_FUNCTION_37_41();
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
            OUTLINED_FUNCTION_169_0();
            sub_1E376B2C8();
          }

          else
          {
            sub_1E325F748(&v246, &qword_1ECF346E8, &unk_1E42C0DD0);
          }

          OUTLINED_FUNCTION_0_169();
          sub_1E3C2FCB8(v109, v110, v111, v112, v113, v114, &qword_1F5D54AF8, v115);
          OUTLINED_FUNCTION_12_89();
          LODWORD(v224) = *__dst;
          WORD2(v224) = v116;
LABEL_110:
          OUTLINED_FUNCTION_8_11();
          v141();
          sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
          __swift_destroy_boxed_opaque_existential_1(&v228);
          a1 = v210;
          goto LABEL_4;
        case 'c':
          v80 = OUTLINED_FUNCTION_22_60(v15, v16, v17, v18, v19, v20, v21, v22, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          OUTLINED_FUNCTION_16_88(v80, v81, v82, v83, v84, v85, v86, v87, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v224, v225, v226, v227, v228, *(&v228 + 1), v229, v230, v231, *(&v231 + 1), v232, *(&v232 + 1), v233, *(&v233 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, __src[0]);
          sub_1E3C3913C();
          if (BYTE8(v246))
          {
            v88 = 2;
          }

          else
          {
            v88 = sub_1E3B65758(v246);
          }

          __dst[0] = v88;
          LOBYTE(v224) = v88;
          LOBYTE(v243) = v88;
          LOBYTE(v241) = v88;
          LOBYTE(v239) = v88;
          OUTLINED_FUNCTION_15_93();
          sub_1E3C2FCB8(v101, v102, v103, v104, v105, v106, &unk_1F5D72B28, v107);
          *__dst = v246;
          *&__dst[4] = WORD2(v246);
          OUTLINED_FUNCTION_8_11();
          v108();
          v63 = __src;
LABEL_31:
          sub_1E325F748(v63, &unk_1ECF296E0, &unk_1E4298030);
          goto LABEL_32;
        default:
LABEL_32:
          __swift_destroy_boxed_opaque_existential_1(&v228);
          goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
}

double sub_1E3BD5844()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1696))();
  v2 = OUTLINED_FUNCTION_19_76(v1);
  if (!v4)
  {
    v2 = 0.0;
    v3 = 0.0;
  }

  return sub_1E3BD58A0(v2, v3);
}

double sub_1E3BD58A0(double a1, double a2)
{
  OUTLINED_FUNCTION_8();
  v5 += 54;
  v6 = *v5;
  v7 = (*v5)();
  OUTLINED_FUNCTION_13_99(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  v12 = sub_1E3A1F10C(v9, v10, v11);
  OUTLINED_FUNCTION_35_40();
  if ((v69 & 1) == 0)
  {
    v13 = v68;
    if (sub_1E3AC5C30(a1, a2) == 0.0 && (OUTLINED_FUNCTION_111(), v15 = (*(v14 + 1752))(), OUTLINED_FUNCTION_13_99(v15, v16), OUTLINED_FUNCTION_35_40(), (v69 & 1) == 0))
    {
      v17 = sqrt(v68 * v68);
      OUTLINED_FUNCTION_111();
      v19 = *(v18 + 224);
      v20 = v19();
      v22 = OUTLINED_FUNCTION_13_99(v20, v21);
      v68 = v17;
      v25 = sub_1E3793CAC(v22, v23, v24);
      if (sub_1E414A658(&v67, &v68, MEMORY[0x1E69E7DE0], v25) & 1) != 0 || (OUTLINED_FUNCTION_111(), v27 = (*(v26 + 328))(), OUTLINED_FUNCTION_13_99(v27, v28), v68 = v17 / v13, (sub_1E414A658(&v67, &v68, MEMORY[0x1E69E7DE0], v25)))
      {
        v29 = v19();
        v31 = OUTLINED_FUNCTION_27_49(v29, v30);
        MEMORY[0x1EEE9AC00](v31);
        v66 = v13;
        type metadata accessor for CGSize(0);
        v33 = v32;
        v34 = sub_1E4149C30(sub_1E3BD6264, v65, v9, v32, v12, &v67);
        v35 = (*(*v2 + 328))(v34);
        v37 = OUTLINED_FUNCTION_27_49(v35, v36);
        MEMORY[0x1EEE9AC00](v37);
        v66 = v13;
        sub_1E4149C30(sub_1E3BD6290, v65, v9, v33, v12, &v67);
      }
    }

    else if (a1 == 0.0 || a2 == 0.0)
    {
      VUIRoundValue();
    }
  }

  VUIRoundValue();
  v39 = v38;
  VUIRoundValue();
  v41 = v40;
  OUTLINED_FUNCTION_111();
  v43 = COERCE_DOUBLE((*(v42 + 248))());
  v45 = 0.0;
  if (v44)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = v43;
  }

  v47 = COERCE_DOUBLE((*(*v2 + 352))());
  if (v48)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = v47;
  }

  if (v46 != 0.0 || v49 != 0.0)
  {
    OUTLINED_FUNCTION_111();
    (*(v51 + 1800))();
    OUTLINED_FUNCTION_14_17();
    if (v53)
    {
      v54 = 1;
    }

    else
    {
      v54 = v52;
    }

    v55 = COERCE_DOUBLE(v6());
    if ((v56 & 1) == 0)
    {
      v45 = v55;
    }

    if (sub_1E3B646EC(v54, 1))
    {
      if (v46 == 0.0 || v49 == 0.0)
      {
        if (v49 == 0.0)
        {
          if (v46 != 0.0 && (v39 == 0.0 && v41 == 0.0 && v45 != 0.0 || v46 < v39 && v41 > 0.0))
          {
            VUIRoundValue();
            return v46;
          }
        }

        else if (v39 == 0.0 && v41 == 0.0 && v45 != 0.0)
        {
          VUIRoundValue();
          return v64;
        }

        else if (v49 < v41)
        {
          return v39 / v41 * v49;
        }
      }

      else
      {
        if (v39 == 0.0 && v41 == 0.0)
        {
          VUIRoundValue();
          v39 = v57;
          v41 = v49;
        }

        v73.origin.x = 0.0;
        v73.origin.y = 0.0;
        v70.width = v39;
        v70.height = v41;
        v73.size.width = v46;
        v73.size.height = v49;
        v71 = AVMakeRectWithAspectRatioInsideRect(v70, v73);
        x = v71.origin.x;
        y = v71.origin.y;
        width = v71.size.width;
        height = v71.size.height;
        CGRectGetWidth(v71);
        VUIRoundValue();
        v39 = v62;
        v72.origin.x = x;
        v72.origin.y = y;
        v72.size.width = width;
        v72.size.height = height;
        CGRectGetHeight(v72);
        VUIRoundValue();
      }
    }

    else if (sub_1E3B646EC(v54, 3))
    {
      v63 = type metadata accessor for ImageLayout();
      return sub_1E3BD6074(v63, v46, v49, v39, v41, v45);
    }
  }

  return v39;
}

void sub_1E3BD5E48(double a1, double a2)
{
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 1696))();
  v7 = OUTLINED_FUNCTION_19_76(v5);
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0.0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0.0;
  }

  if (sub_1E3AC5C30(v9, v10) != 0.0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_111();
  (*(v11 + 1752))();
  OUTLINED_FUNCTION_20_66();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  sub_1E3A1F10C(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_34();
  sub_1E4149AF0(v15, v16);
  if ((v30 & 1) == 0)
  {
    v20 = v29;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_111();
  (*(v17 + 1776))();
  OUTLINED_FUNCTION_20_66();
  v18 = OUTLINED_FUNCTION_34();
  sub_1E4149AF0(v18, v19);
  if ((v28 & 1) != 0 || sub_1E3AC5C30(a1, a2) <= 0.0)
  {
LABEL_12:
    OUTLINED_FUNCTION_111();
    (*(v21 + 2288))();
    return;
  }

  v20 = v27 * sub_1E3AC5C30(a1, a2);
LABEL_14:
  OUTLINED_FUNCTION_111();
  (*(v22 + 432))();
  OUTLINED_FUNCTION_20_66();
  v23 = OUTLINED_FUNCTION_34();
  sub_1E4149AF0(v23, v24);
  if (v28)
  {
    v25 = v20 / v10;
    if (v10 <= 0.0)
    {
      v25 = v9;
    }

    v26 = v20 / v9;
    if (v9 > 0.0)
    {
      v25 = v9;
    }

    else
    {
      v26 = v10;
    }
  }

  else
  {
    v25 = sqrt(v20 * v27);
    v26 = v25 / v27;
  }

  sub_1E3BD58A0(v25, v26);
}

double sub_1E3BD6074(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a2 == 0.0 || a3 == 0.0)
  {
    if (a3 == 0.0)
    {
      if (a2 != 0.0 && (a4 == 0.0 && a5 == 0.0 && a6 != 0.0 || a2 < a4 && a5 > 0.0))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (a4 == 0.0 && a5 == 0.0 && a6 != 0.0)
      {
        VUIRoundValue();
        return v8;
      }

      if (a3 < a5)
      {
        return a4 / a5 * a3;
      }
    }

    return a4;
  }

  if (a2 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  if (a6 != 0.0)
  {
    if (a4 != 0.0)
    {
      if (a5 == 0.0)
      {
        VUIRoundValue();
      }

      return v7;
    }

    if (a5 != 0.0)
    {
      VUIRoundValue();
      if (v11 <= a2)
      {
        return v11;
      }

      else
      {
        return a2;
      }
    }

    VUIRoundValue();
    v7 = v9;
    if (v9 <= a2)
    {
      return v7;
    }

LABEL_29:
    VUIRoundValue();
    return a2;
  }

  return v7;
}

uint64_t sub_1E3BD6210()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 99, 7);
}

void sub_1E3BD62BC(double *a1@<X0>, double (*a2)(double, double)@<X1>, uint64_t a3@<X8>)
{
  *a3 = a2(*a1, *(v3 + 16));
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
}

id sub_1E3BD62FC(uint64_t a1)
{
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v1 = sub_1E42062A4();

  v2 = [swift_getObjCClassFromMetadata() configurationWithPaletteColors_];

  return v2;
}

uint64_t sub_1E3BD6380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A10, &unk_1E42C17C0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1E3BD63E4(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = type metadata accessor for Monogram(0);
  v18 = v17[12];
  *(a9 + v18) = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_10_5(v19);
  v20 = v17[13];
  *(a9 + v20) = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  OUTLINED_FUNCTION_10_5(v21);
  v22 = v17[14];
  *(a9 + v22) = swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  OUTLINED_FUNCTION_10_5(v23);
  v24 = a9 + v17[15];
  sub_1E42038E4();
  *v24 = v47;
  *(v24 + 1) = *(&v47 + 1);
  v25 = a9 + v17[17];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  *v25 = v47;
  *(v25 + 1) = v48;
  *(v25 + 4) = v49;
  *a9 = a1;
  a9[14] = a2;
  memcpy(a9 + 1, a3, 0x5BuLL);
  a9[15] = a4;
  a9[16] = a5;
  a9[17] = a6;
  a9[18] = a7;
  a9[19] = a8;
  v26 = *(*a1 + 488);

  v28 = v26(v27);
  if (v28)
  {
    v30 = sub_1E373E010(39, v28, v29);

    if (v30)
    {
      type metadata accessor for ImageViewModel();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = v31;
        type metadata accessor for LayoutGrid();

        v33 = sub_1E3A256EC();
        v34 = (*(*v32 + 1016))(v33);
        v36 = v35;

        if (v36)
        {
          v37 = v34 & 0xFFFFFFFFFFFFLL;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v30 = 0;
  }

  v37 = 0;
  v36 = 0xE000000000000000;
LABEL_8:

  v39 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v39 = v37;
  }

  if (v39)
  {

    v40 = 0;
  }

  else if (v30)
  {
    type metadata accessor for LibImageViewModel();
    v41 = swift_dynamicCastClass();

    v40 = v41 == 0;
  }

  else
  {
    v40 = 1;
  }

  v42 = a9 + v17[16];
  *v42 = v40;
  *(v42 + 1) = 0;
  v43 = (*(*a1 + 488))(v38);

  if (!v43)
  {
    goto LABEL_19;
  }

  v45 = sub_1E373E010(17, v43, v44);

  if (v45 && *v45 != _TtC8VideosUI13TextViewModel)
  {

LABEL_19:
    v45 = 0;
  }

  a9[13] = v45;
}

uint64_t type metadata accessor for Monogram(uint64_t a1)
{
  result = qword_1EE28F870;
  if (!qword_1EE28F870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3BD67CC@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v3 = type metadata accessor for Monogram(0);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A20, &qword_1E42C1888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A28, &qword_1E42C1890);
  OUTLINED_FUNCTION_0_10();
  v55 = v7;
  v56 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v58 = v9;
  v10 = v1[15];
  if (v10)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v11 + 392))())
  {

LABEL_4:
    OUTLINED_FUNCTION_8();
    v13 = *(v12 + 152);
    v14 = swift_retain_n();
    v13(v65, v14);
  }

  v15.n128_f64[0] = OUTLINED_FUNCTION_6();
  j_nullsub_1(v15, v16, v17, v18);
  sub_1E3BD6E10(v1, v2);
  v19 = *v1;
  v61[0] = *v1;
  sub_1E3BD7C20(v1, &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v21 = swift_allocObject();
  sub_1E38F856C(&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  type metadata accessor for ViewModel();
  sub_1E3BD7EC8();
  sub_1E388C264();

  sub_1E4203524();

  v22 = sub_1E325F6F0(v2, &qword_1ECF34A20, &qword_1E42C1888);
  if (v10)
  {
    v22 = (*(*v10 + 600))(v22);
    if (v22)
    {
      v23 = v22;
      goto LABEL_10;
    }
  }

  v24 = (*(*v19 + 392))(v22);
  if (!v24)
  {
    v23 = 0;
    goto LABEL_20;
  }

  v23 = (*(*v24 + 600))();

  if (!v23)
  {
LABEL_20:
    v36 = 0;
    v46 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
    v45 = 0;
    goto LABEL_21;
  }

LABEL_10:
  v25 = objc_opt_self();
  v23 = v23;
  v26 = [v25 blackColor];
  v27 = [v26 colorWithAlphaComponent_];

  if ([v23 shadowColor])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v59[0] = v66;
  v59[1] = v67;
  if (!*(&v67 + 1))
  {
    sub_1E325F6F0(v59, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_17;
  }

  sub_1E3755B54();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v28 = v27;
    goto LABEL_18;
  }

  v28 = v65[5];
LABEL_18:
  [v23 shadowBlurRadius];
  v30 = v29;
  [v23 shadowOffset];
  v32 = v31;
  [v23 shadowOffset];
  v34 = v33;
  v35 = v28;
  v36 = sub_1E4203644();
  v37 = sub_1E4202734();
  sub_1E4200A54();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = v37;
LABEL_21:

  v47 = sub_1E4203DA4();
  v49 = v48;

  v60[0] = v36;
  v60[1] = v30;
  v60[2] = v32;
  v60[3] = v34;
  v60[4] = v46;
  v60[5] = v39;
  v60[6] = v41;
  v60[7] = v43;
  v60[8] = v45;
  LOBYTE(v60[9]) = 0;
  v60[10] = v47;
  v60[11] = v49;
  v50 = v57;
  (*(v55 + 32))(v57, v58, v56);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AC8, &qword_1E42C18E0);
  memcpy((v50 + *(v51 + 36)), v60, 0x60uLL);
  v61[0] = v36;
  v61[1] = v30;
  v61[2] = v32;
  v61[3] = v34;
  v61[4] = v46;
  v61[5] = v39;
  v61[6] = v41;
  v61[7] = v43;
  v61[8] = v45;
  v62 = 0;
  v63 = v47;
  v64 = v49;
  sub_1E3743538(v60, v59, &qword_1ECF34AD0, &qword_1E42C18E8);
  return sub_1E325F6F0(v61, &qword_1ECF34AD0, &qword_1E42C18E8);
}

uint64_t sub_1E3BD6E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A88, &qword_1E42C18C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A70, &qword_1E42C18B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AE8, &qword_1E42C1950);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A50, &qword_1E42C18A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - v14);
  v16 = type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_7_135(*(v16 + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  if ((v31 & 1) != 0 || (OUTLINED_FUNCTION_7_135(*(v16 + 60)), sub_1E42038F4(), (v31 & 1) == 0))
  {
    *v15 = sub_1E4203DA4();
    v15[1] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AF0, &qword_1E42C1958);
    sub_1E3BD71A4(v15 + *(v25 + 44));
    v26 = sub_1E4202734();
    OUTLINED_FUNCTION_11_97(v26, v15 + *(v12 + 36));
    sub_1E3743538(v15, v11, &qword_1ECF34A50, &qword_1E42C18A0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BD7FD8();
    sub_1E3BD8090();
    sub_1E4201F44();
    v21 = OUTLINED_FUNCTION_32_0();
    v23 = &qword_1E42C18A0;
  }

  else
  {
    sub_1E3BD7A10();
    v17 = *(a1 + 144);
    v18 = sub_1E3BD8210();
    sub_1E39B87A4(v17, v4, v18);
    sub_1E325F6F0(v7, &qword_1ECF34A88, &qword_1E42C18C0);
    sub_1E4200DD4();
    sub_1E4203E14();
    v19 = sub_1E4200E04();

    *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34A80, &qword_1E42C18B8) + 36)) = v19;
    v20 = sub_1E4202734();
    OUTLINED_FUNCTION_11_97(v20, v2 + *(v29 + 36));
    sub_1E3743538(v2, v11, &qword_1ECF34A70, &qword_1E42C18B0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BD7FD8();
    sub_1E3BD8090();
    sub_1E4201F44();
    v21 = v2;
    v22 = &qword_1ECF34A70;
    v23 = &qword_1E42C18B0;
  }

  return sub_1E325F6F0(v21, v22, v23);
}

uint64_t sub_1E3BD71A4@<X0>(uint64_t a2@<X8>)
{
  v21 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B08, &qword_1E42C1968);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B10, &qword_1E42C1970);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1E3BD73FC(&v20 - v14);
  sub_1E4200DD4();
  sub_1E4203E14();
  v16 = sub_1E4200E04();

  *&v15[*(v10 + 44)] = v16;
  sub_1E3BD7A10();
  *&v8[*(v3 + 44)] = 0;
  sub_1E3743538(v15, v12, &qword_1ECF34B10, &qword_1E42C1970);
  sub_1E3743538(v8, v5, &qword_1ECF34B08, &qword_1E42C1968);
  v17 = v21;
  sub_1E3743538(v12, v21, &qword_1ECF34B10, &qword_1E42C1970);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B18, &qword_1E42C1978);
  sub_1E3743538(v5, v17 + *(v18 + 48), &qword_1ECF34B08, &qword_1E42C1968);
  sub_1E325F6F0(v8, &qword_1ECF34B08, &qword_1E42C1968);
  sub_1E325F6F0(v15, &qword_1ECF34B10, &qword_1E42C1970);
  sub_1E325F6F0(v5, &qword_1ECF34B08, &qword_1E42C1968);
  return sub_1E325F6F0(v12, &qword_1ECF34B10, &qword_1E42C1970);
}

void sub_1E3BD73FC(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B20, &qword_1E42C1980);
  OUTLINED_FUNCTION_0_10();
  v48 = v5;
  v49 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v45 = v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B28, &qword_1E42C1988);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v47 = v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B30, &qword_1E42C1990);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v44 = v11;
  v12 = *(v1 + 120);
  v13 = v12;
  if (!v12)
  {
    OUTLINED_FUNCTION_8();
    if ((*(v22 + 392))())
    {
      type metadata accessor for MonogramLayout();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v14 = *(v1 + 49);
  v16 = *(v1 + 8);
  v15 = *(v1 + 16);
  v17 = *(v2 + 24);

  if (v14 == 1 && (v17 & 1) == 0)
  {
    v19 = v16;
    if (v16 > 0.0 || (v19 = v15, v15 > 0.0))
    {
      if (v12)
      {
        (*(*v12 + 1744))(v18);
      }

      else
      {
        v23 = sub_1E3BAE454();
        if (!v23)
        {
          goto LABEL_21;
        }

        v24 = (*(*v23 + 392))(v23);

        if (!v24)
        {
          goto LABEL_21;
        }

        type metadata accessor for ImageLayout();
        if (!swift_dynamicCastClass())
        {
LABEL_14:

          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_8();
      v21 = (*(v20 + 1704))();
      if (v21 != 2 && (v21 & 1) != 0)
      {
        [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:v19];

        goto LABEL_21;
      }

      goto LABEL_14;
    }
  }

LABEL_21:
  if (v14)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x3FF0000000000000;
  }

  if (*(v2 + 104))
  {
    v42 = v25;
    v43 = a1;
    if (v13)
    {
      v26 = *(*v13 + 1768);

      v28 = v26(v27);
    }

    else
    {

      v28 = 0;
    }

    v34 = OUTLINED_FUNCTION_18();

    sub_1E3FAC790(v35, v28, v34, v53);
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E4203DA4();
    sub_1E42015C4();
    memcpy(v54, v53, 0x60uLL);
    v54[208] = v14;
    v36 = memcpy(v52, v54, 0xD0uLL);
    v52[26] = v42;
    LOBYTE(v52[27]) = v14;
    BYTE1(v52[27]) = 1;
    v37 = *(v2 + 152);
    v38 = v37;
    if (v13)
    {
      v38 = *(v2 + 152);
      if (!v37)
      {
        v38 = (*(*v13 + 672))(v36);
      }
    }

    v39 = v37;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B38, &qword_1E42C1998);
    v41 = sub_1E3BD938C();
    sub_1E39B87A4(v38, v40, v41);

    memcpy(v51, v52, 0xDAuLL);
    sub_1E325F6F0(v51, &qword_1ECF34B38, &qword_1E42C1998);
    (*(v48 + 32))(v47, v45, v49);
    *(v47 + *(v46 + 36)) = 256;
    sub_1E3BD9584();
    sub_1E4202ED4();

    sub_1E325F6F0(v47, &qword_1ECF34B28, &qword_1E42C1988);
    sub_1E3741EA0(v44, v43, &qword_1ECF34B30, &qword_1E42C1990);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v50);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {

    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }
}

uint64_t sub_1E3BD7A10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AF8, &qword_1E42C1960);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AA0, &qword_1E42C18C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v6 = sub_1E3BAE454();
  if (v6)
  {
    v7 = v6;
    if (*(v0 + 120))
    {
      OUTLINED_FUNCTION_8();
      v9 = (*(v8 + 1744))();
    }

    else
    {
      v9 = (*(*v6 + 392))(v6);
    }

    sub_1E3BD8440(v7, v9, v1);

    sub_1E3743538(v1, v4, &qword_1ECF34AA0, &qword_1E42C18C8);
    swift_storeEnumTagMultiPayload();
    sub_1E3BD829C();
    sub_1E4201F44();

    return sub_1E325F6F0(v1, &qword_1ECF34AA0, &qword_1E42C18C8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3BD829C();
    return sub_1E4201F44();
  }
}

uint64_t sub_1E3BD7C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Monogram(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BD7C84(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_32_5();
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  v4 = sub_1E4203904();
  v5 = (*(*v3 + 488))(v4);
  if (v5)
  {
    v7 = sub_1E373E010(39, v5, v6);

    if (v7)
    {
      type metadata accessor for ImageViewModel();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        type metadata accessor for LayoutGrid();

        v10 = sub_1E3A256EC();
        v11 = (*(*v9 + 1016))(v10);
        v13 = v12;

        if (v13)
        {
          v14 = v11 & 0xFFFFFFFFFFFFLL;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = 0;
  v13 = 0xE000000000000000;
LABEL_8:

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14;
  }

  if (v15)
  {
  }

  else if (v7)
  {
    type metadata accessor for LibImageViewModel();
    swift_dynamicCastClass();
  }

  return sub_1E4203904();
}

unint64_t sub_1E3BD7EC8()
{
  result = qword_1ECF34A30;
  if (!qword_1ECF34A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A20, &qword_1E42C1888);
    sub_1E3BD7F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A30);
  }

  return result;
}

unint64_t sub_1E3BD7F4C()
{
  result = qword_1ECF34A38;
  if (!qword_1ECF34A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A40, &qword_1E42C1898);
    sub_1E3BD7FD8();
    sub_1E3BD8090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A38);
  }

  return result;
}

unint64_t sub_1E3BD7FD8()
{
  result = qword_1ECF34A48;
  if (!qword_1ECF34A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A50, &qword_1E42C18A0);
    sub_1E32752B0(&qword_1ECF34A58, &qword_1ECF34A60, &qword_1E42C18A8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A48);
  }

  return result;
}

unint64_t sub_1E3BD8090()
{
  result = qword_1ECF34A68;
  if (!qword_1ECF34A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A70, &qword_1E42C18B0);
    sub_1E3BD811C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A68);
  }

  return result;
}

unint64_t sub_1E3BD811C()
{
  result = qword_1ECF34A78;
  if (!qword_1ECF34A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A80, &qword_1E42C18B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A88, &qword_1E42C18C0);
    sub_1E3BD8210();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2889D0, &qword_1ECF2A0C0, &qword_1E429CD30, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A78);
  }

  return result;
}

unint64_t sub_1E3BD8210()
{
  result = qword_1ECF34A90;
  if (!qword_1ECF34A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A88, &qword_1E42C18C0);
    sub_1E3BD829C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A90);
  }

  return result;
}

unint64_t sub_1E3BD829C()
{
  result = qword_1ECF34A98;
  if (!qword_1ECF34A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34AA0, &qword_1E42C18C8);
    sub_1E3BD8354();
    sub_1E32752B0(&qword_1ECF34AB8, &qword_1ECF34AC0, &qword_1E42C18D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34A98);
  }

  return result;
}

unint64_t sub_1E3BD8354()
{
  result = qword_1ECF34AA8;
  if (!qword_1ECF34AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34AB0, &qword_1E42C18D0);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E00, &qword_1ECF2A1B8, &qword_1E42F0320, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34AA8);
  }

  return result;
}

void sub_1E3BD8440(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v48 = a1;
  v52 = a3;
  v4 = type metadata accessor for Monogram(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v45 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38[-v9];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AB0, &qword_1E42C18D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v49 = v12;
  memcpy(__dst, (v3 + 8), 0x5BuLL);
  v13 = LOBYTE(__dst[2]);
  v14 = __dst[0];
  v15 = __dst[1];
  v68[0] = *(v3 + 25);
  *(v68 + 3) = *(v3 + 28);
  v16 = *(v3 + 65);
  v63 = *(v3 + 49);
  v64 = v16;
  v65 = *(v3 + 81);
  v66 = *(v3 + 97);
  v17 = __dst[0];
  if (LOBYTE(__dst[2]))
  {
    v17 = 0.0;
  }

  if (LOBYTE(__dst[2]) & 1 | (__dst[0] != 0.0))
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v67 = (LOBYTE(__dst[2]) & 1 | (__dst[0] != 0.0)) == 0;
  sub_1E375C2C0(__dst, v69);
  sub_1E3AC5824();
  v40 = v20;
  v41 = v19;
  v39 = v21;
  v75 = v63;
  *v69 = v14;
  v50 = v15;
  *&v69[1] = v15;
  v51 = v13;
  v70 = v13;
  *v71 = v68[0];
  *&v71[3] = *(v68 + 3);
  v72 = v18;
  v73 = v18;
  v46 = v67;
  v74 = v67;
  v76 = v64;
  v77 = v65;
  v78 = v66;
  if (v42)
  {
    type metadata accessor for ImageLayout();
    v22 = swift_dynamicCastClass();
  }

  else
  {
    v22 = 0;
  }

  sub_1E3BD7C20(v3, &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v23 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v24 = swift_allocObject();
  sub_1E38F856C(v6, v24 + v23);
  v25 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v48, v69, v22, v25 & 1, sub_1E3BD8FFC, v24, v10);

  v26 = v49;
  v27 = (*(v45 + 32))(v49, v10, v47);
  *(v26 + *(v44 + 36)) = 256;
  v53[0] = *(v3 + 112);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v40;
  *&v38[-32] = v41;
  *&v38[-24] = v28;
  v38[-16] = v39 & 1;
  *&v38[-8] = v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AA0, &qword_1E42C18C8);
  v30 = v52;
  v31 = v52 + *(v29 + 36);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B00, &unk_1E42E2370);
  sub_1E4148F70(sub_1E3BD9150, &v38[-48], v32, v33, v31);

  v34 = sub_1E4203D94();
  v36 = v35;
  v37 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34AC0, &qword_1E42C18D8) + 36));
  *v37 = v34;
  v37[1] = v36;
  sub_1E3741EA0(v26, v30, &qword_1ECF34AB0, &qword_1E42C18D0);
  *v53 = v14;
  v59 = v63;
  *&v53[1] = v50;
  v54 = v51;
  *v55 = v68[0];
  *&v55[3] = *(v68 + 3);
  v56 = v18;
  v57 = v18;
  v58 = v46;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  sub_1E375C31C(v53);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3BD891C(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3BD8C24(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3BD8C24(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E3BD8C24(319, qword_1EE2821E8, type metadata accessor for MonogramLayout, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E381ECE4(319);
          if (v5 <= 0x3F)
          {
            sub_1E3BD8C24(319, &unk_1EE23AE10, sub_1E3755B54, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1E3BD8C24(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1E3BD8C24(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1E3BD8C24(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1E3BD9678(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1E3BD8C24(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_1E3BD8C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3BD8C88()
{
  result = qword_1ECF34AD8;
  if (!qword_1ECF34AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34AC8, &qword_1E42C18E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34A20, &qword_1E42C1888);
    type metadata accessor for ViewModel();
    sub_1E3BD7EC8();
    sub_1E388C264();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF34AE0, &qword_1ECF34AD0, &qword_1E42C18E8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34AD8);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{
  v1 = type metadata accessor for Monogram(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 128))
  {
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3BD8FFC(uint64_t a1, double a2, double a3)
{
  type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_32_5();
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  OUTLINED_FUNCTION_6_117();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  if (!a1)
  {
    OUTLINED_FUNCTION_6_117();
    sub_1E4203904();
  }

  nullsub_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8, &unk_1E42B38C0);
  sub_1E4203904();
  v9 = *(v8 + 128);
  if (v9)
  {
    v9(a1, a2, a3);
  }
}

uint64_t sub_1E3BD9150@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Monogram(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8, &unk_1E42B38C0);
  sub_1E42038F4();
  OUTLINED_FUNCTION_18();
  v2 = sub_1E3BF493C();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_6();
  sub_1E3CCD0F0(v6, v7, v8, v9, v10, v2, v4, v11, v5, v12, v13, v14);

  KeyPath = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B00, &unk_1E42E2370);
  v17 = (a1 + *(v16 + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  type metadata accessor for ImageViewModel();
  v19 = swift_dynamicCastClass();
  if (v19 && (v20 = v19, type metadata accessor for LayoutGrid(), v21 = sub_1E3A256EC(), v22 = (*(*v20 + 1032))(v21), (v23 & 1) == 0))
  {
    v24 = v22;
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    if (v24 == 1)
    {
      v26 = MEMORY[0x1E697DBB8];
    }

    else
    {
      v26 = MEMORY[0x1E697DBA8];
    }

    (*(v25 + 104))(v17 + v18, *v26);
  }

  else
  {
    sub_1E379EBAC((v17 + v18));
  }

  *v17 = KeyPath;
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v16);
}

unint64_t sub_1E3BD938C()
{
  result = qword_1ECF34B40;
  if (!qword_1ECF34B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B38, &qword_1E42C1998);
    sub_1E3BD9418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B40);
  }

  return result;
}

unint64_t sub_1E3BD9418()
{
  result = qword_1ECF34B48;
  if (!qword_1ECF34B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B50, &qword_1E42C19A0);
    sub_1E3BD94A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B48);
  }

  return result;
}

unint64_t sub_1E3BD94A4()
{
  result = qword_1ECF34B58;
  if (!qword_1ECF34B58)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B60, qword_1E42C19A8);
    sub_1E3BD9530(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B58);
  }

  return result;
}

unint64_t sub_1E3BD9530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23BDE0[0];
  if (!qword_1EE23BDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE23BDE0);
  }

  return result;
}

unint64_t sub_1E3BD9584()
{
  result = qword_1ECF34B68;
  if (!qword_1ECF34B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B28, &qword_1E42C1988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B38, &qword_1E42C1998);
    sub_1E3BD938C();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E00, &qword_1ECF2A1B8, &qword_1E42F0320, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34B68);
  }

  return result;
}

void sub_1E3BD9678(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_1E3BD9700(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 248, v4);
  *(v1 + 248) = a1;

  return result;
}

double sub_1E3BD9778(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 256, v4);
  *(v1 + 256) = a1;

  return result;
}

uint64_t sub_1E3BD97B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3BD980C(v5, a2, a3);
}

uint64_t sub_1E3BD980C(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (v7)
  {

    v8 = sub_1E39C408C();
    v9 = v8;
    if (v8 && *v8 != _TtC8VideosUI13TextViewModel)
    {

      v9 = 0;
    }

    OUTLINED_FUNCTION_3_0(v7 + 248, v13);
    *(v7 + 248) = v9;

    v10 = sub_1E3BD9914();

    OUTLINED_FUNCTION_3_0(v7 + 256, &v12);
    *(v7 + 256) = v10;
  }

  return v7;
}

uint64_t sub_1E3BD9914()
{
  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  result = sub_1E39C408C();
  if (result)
  {
    type metadata accessor for ImageViewModel();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

double sub_1E3BD99C8()
{

  return result;
}

uint64_t sub_1E3BD99F8()
{
  v0 = ViewModel.deinit();

  return v0;
}

uint64_t sub_1E3BD9A30()
{
  v0 = sub_1E3BD99F8();

  return MEMORY[0x1EEE6BDC0](v0, 264, 7);
}

void *sub_1E3BD9AF8(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 8))(a1))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_18();
  v3 = sub_1E3C287F4(0, v2 & 1);

  if (v3)
  {
    v4 = [v3 string];

    v3 = sub_1E4205F14();
  }

  return v3;
}

id sub_1E3BD9BA4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = sub_1E3BD9BEC(v2);

  return v3;
}

id sub_1E3BD9BEC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_1_36();
  v3 = (*(*a1 + 1000))(0, v2);
  if (v4 == 255)
  {
    return 0;
  }

  v5 = v3;
  if (v4)
  {
    sub_1E379098C(v3, v4);
    return 0;
  }

  v6 = [v3 type];
  v7 = [v5 name];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      sub_1E4205F14();
      v8 = sub_1E4205ED4();
    }

    v9 = objc_opt_self();
    v10 = [objc_opt_self() vui_videosUIBundle];
    v11 = [v9 vuiImageNamed:v8 inBundle:v10];
    sub_1E379098C(v5, 0);
  }

  else
  {
    if (!v7)
    {
      sub_1E4205F14();
      v8 = sub_1E4205ED4();
    }

    v11 = [objc_opt_self() vuiSystemImageNamed:v8 withConfiguration:0 accessibilityDescription:0];
    sub_1E379098C(v5, 0);
  }

  return v11;
}

uint64_t sub_1E3BD9DCC()
{
  v4[0] = 0x40C9640000000000;
  LOBYTE(v4[1]) = 0;
  v17 = 0x40C9640000000000;
  v18 = 0;
  v15 = 0x40C9640000000000;
  v16 = 0;
  v13 = 0x40C9640000000000;
  v14 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v9 = v11;
  v10 = v12;
  sub_1E3C3DE00();
  v5 = v7;
  v6 = v8;
  sub_1E3C2FCB8(&v9, v4, &v17, &v5, &v15, &v13, v0, __src);
  memcpy(v4, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  return (*(v1 + 1600))(v4, 82, v2 & 1, v0);
}

uint64_t sub_1E3BD9EEC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_1E3BD9F54(uint64_t a1)
{
  *(v1 + 112) = a1;

  return result;
}

uint64_t sub_1E3BD9F64(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3BDA3F4(v1);
}

double sub_1E3BD9FC0()
{
  OUTLINED_FUNCTION_5_0(v0 + 120, v2);

  return result;
}

uint64_t sub_1E3BD9FF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 120, a2);
  *(v2 + 120) = a1;
}

void sub_1E3BDA060()
{
  v1 = v0;
  v2 = type metadata accessor for ImageLayout();
  v19[0] = sub_1E3BD61D8();
  OUTLINED_FUNCTION_0_170();
  sub_1E41E1A64(v19, v3, v2, v20);

  v1[13] = v20[0];
  v1[14] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E42A73A0;
  type metadata accessor for OfferListCardLayout();
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v4 + 32) = sub_1E3BDA3F4(0xCFu);
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v4 + 40) = sub_1E3BDA3F4(0xD0u);
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v4 + 48) = sub_1E3BDA3F4(0xD1u);
  v1[15] = v4;
  v5 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_5_0((v5 + 13), v20);

  sub_1E3C37CBC(v6, 46);

  v8 = (*v5 + 1736);
  v9 = *v8;
  v10 = (*v8)(v7);
  sub_1E3C37CBC(v10, 119);

  v12 = v9(v11);
  sub_1E3C37CBC(v12, 118);

  type metadata accessor for ViewLayout();
  v13 = sub_1E3C2F968();
  OUTLINED_FUNCTION_5_0((v5 + 15), v19);
  v14 = v5[15];
  v15 = sub_1E32AE9B0(v14);

  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      v9(v18);
      sub_1E3C37CBC(v13, 140);

      return;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3C37CBC(v17, *(v17 + 98));
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1E3BDA31C()
{
}

uint64_t sub_1E3BDA354()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3BDA394()
{
  v0 = sub_1E3BDA354();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1E3BDA3F4(unsigned __int16 a1)
{
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for ButtonLayout();
  *(v1 + 112) = sub_1E3BBB724();
  *(v1 + 98) = a1;
  v3 = sub_1E3C2F9A0();
  v4 = v3;
  if (a1 - 207 >= 2)
  {
    if (a1 != 209)
    {

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_0(v3 + 104, v118);
    *__dst = 0x40AF400000000000;
    LOBYTE(v94) = 0;
    v115 = 0x40AF400000000000;
    v116 = 0;
    v113 = 0x40D57C0000000000;
    v114 = 0;
    v111 = 0x40AF400000000000;
    v112 = 0;
    v109 = 0x40AF400000000000;
    v110 = 0;

    v42 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_2_135();
    sub_1E3C2FCB8(v105, __dst, &v115, &v113, &v111, &v109, v42, v117);
    OUTLINED_FUNCTION_9_97(v43, v44, v45, v46, v47, v48, v49, v50, v56, v60, v64, v68, v72, v77, v81, v85, v89);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v51 + 1600))(__dst, 82, v52 & 1, v42);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v3 + 104, v118);
    LOBYTE(v94) = 0;

    v5 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_136();
    OUTLINED_FUNCTION_6_118();
    OUTLINED_FUNCTION_2_135();
    sub_1E3C3DE00();
    v6 = OUTLINED_FUNCTION_8_100();
    OUTLINED_FUNCTION_1_168(v6, v7, v8, v9, v10, v11, v12, v13, v56, v60, v64, v68, v72, SHIDWORD(v72), v77, v81, v85, v89, 0x406F400000000000, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *v105, v106, v107, v108, v109);
    OUTLINED_FUNCTION_9_97(v14, v15, v16, v17, v18, v19, v20, v21, v57, v61, v65, v69, v73, v78, v82, v86, v90);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v22 + 1600))(__dst, 2, v23 & 1, v5);

    *__dst = 0x4066800000000000;
    LOBYTE(v94) = 0;

    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_136();
    OUTLINED_FUNCTION_6_118();
    OUTLINED_FUNCTION_2_135();
    sub_1E3C3DE00();
    v24 = OUTLINED_FUNCTION_8_100();
    OUTLINED_FUNCTION_1_168(v24, v25, v26, v27, v28, v29, v30, v31, v58, v62, v66, v70, v74, v76, v79, v83, v87, v91, *__dst, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *v105, v106, v107, v108, v109);
    OUTLINED_FUNCTION_9_97(v32, v33, v34, v35, v36, v37, v38, v39, v59, v63, v67, v71, v75, v80, v84, v88, v92);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v40 + 1600))(__dst, 6, v41 & 1, v5);
  }

LABEL_7:
  OUTLINED_FUNCTION_5_0(v4 + 104, v117);

  sub_1E3C37CBC(v53, 39);

  OUTLINED_FUNCTION_5_0(v4 + 112, __dst);

  sub_1E3C37CBC(v54, 59);

  return v4;
}

uint64_t sub_1E3BDA718()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3BDA3F4(0xCFu);
}

uint64_t sub_1E3BDA74C()
{
  sub_1E37BD5C4();
  OUTLINED_FUNCTION_3_139();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3BDA79C(unint64_t a1)
{
  v1 = 0x6F697463656C6573;
  if (a1 >> 62 == 1)
  {
    v1 = 0x676E617272616572;
  }

  if (a1 >> 62)
  {
    return v1;
  }

  else
  {
    return 1953064037;
  }
}

uint64_t sub_1E3BDA7FC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 816))();
  v2 = sub_1E32AE9B0(v1);
  if (v2)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = OUTLINED_FUNCTION_11_6();
          MEMORY[0x1E6911E60](v6);
        }

        else
        {
          v7 = *(v1 + 8 * v5 + 32);
        }

        ++v5;
        OUTLINED_FUNCTION_64();
        v9 = *(v8 + 504);
        v11 = v10;
        v9();

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v3 != v5);

      return v12;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E3BDA978@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3BDA9DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 & 0x3FFFFFFFFFFFFFFFLL);
  return sub_1E3BDAA10(v1);
}

uint64_t sub_1E3BDAA40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B78, &qword_1E42C1B00);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_1_8(v2, v9);
  v4(v3);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView__mode, v10);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B70, &qword_1E42C1AF8);
  OUTLINED_FUNCTION_21_15(v5);
  swift_endAccess();
  v6 = OUTLINED_FUNCTION_27_0();
  return v7(v6);
}

uint64_t sub_1E3BDAB34()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3BDAB80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *(v2 + 8) = a2;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3BDABD4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_11_3(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return OUTLINED_FUNCTION_40_1();
}

uint64_t (*sub_1E3BDAC68())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3(v0, v1);
  return j_j__swift_endAccess;
}

void sub_1E3BDACBC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2 & 1;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v15) != v3)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v23 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_1E3BE5E78;
    v24[5] = v16;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v24[2] = v17;
    v24[3] = &block_descriptor_213;
    v18 = _Block_copy(v24);

    sub_1E4203FE4();
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    v19 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v14, v7, v18);
    _Block_release(v18);

    v21 = OUTLINED_FUNCTION_11_6();
    v22(v21);
    (*(v10 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BDAF5C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E3BDAF9C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  sub_1E3BDACBC();
}

uint64_t sub_1E3BDAFE4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BDB05C(uint64_t a1)
{
  v1 = *a1;
  sub_1E3BDAF9C(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E3BDB09C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E3BDB0DC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  sub_1E3BE2938();
}

void (*sub_1E3BDB120(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3(v2, v3);
  return sub_1E3BDB178;
}

void sub_1E3BDB178(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3BE2938();
  }
}

uint64_t sub_1E3BDB1AC()
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_119();
  v3 += 33;
  v4 = *v3;
  v5 = (*v3)();
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_87_0();

  if (v1 == 2 && (OUTLINED_FUNCTION_6_119(), !(*(v6 + 480))()))
  {
    OUTLINED_FUNCTION_6_119();
    (*(v15 + 528))(v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v4();
    [v0 bounds];
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v16) + 0x190))();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v17) + 0x328))();
    v12.n128_f64[0] = OUTLINED_FUNCTION_17_4();
  }

  else
  {
    OUTLINED_FUNCTION_6_119();
    (*(v7 + 528))(v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v4();
    [v0 bounds];
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v8) + 0x1E0))();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v9) + 0x190))();
    OUTLINED_FUNCTION_26_3();
    (*((*v2 & v10) + 0x328))();
    v12.n128_f64[0] = OUTLINED_FUNCTION_17_4();
  }

  v13 = v11(v12);

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13 & 1;
}

uint64_t sub_1E3BDB510()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E34AF604(v0, v1);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E3BDB568(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_1(a1);
  v6 = *v3;
  v7 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_1E34AF594(v6, v7);
}

uint64_t (*sub_1E3BDB5B0())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_11_3(v0, v1);
  return j__swift_endAccess;
}

uint64_t sub_1E3BDB604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3BDB674@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3BDB738(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v32[0] = a1;
  v4 = v1;
  sub_1E4200684();
  OUTLINED_FUNCTION_36_3();
  v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0x108);
  v7 = v6();
  v8 = OUTLINED_FUNCTION_28_45(v7);
  if (KeyPath == 2 || (v9 = (v6)(v8), result = OUTLINED_FUNCTION_28_45(v9), KeyPath == 4))
  {
    if ([objc_opt_self() isFeatureEnabled_])
    {
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
      }

      OUTLINED_FUNCTION_25();
      sub_1E3BDFE50(v28, v29, v30, v31, 0);
    }

    else
    {
      OUTLINED_FUNCTION_12_5();
      v11 += 60;
      v12 = *v11;
      if (!(*v11)())
      {
        sub_1E3BE2938();
      }

      v13 = v6();
      v14 = OUTLINED_FUNCTION_28_45(v13);
      if (KeyPath == 2 && (v12)(v14) == 1)
      {
        OUTLINED_FUNCTION_12_5();
        (*(v15 + 528))(v32);
        __swift_project_boxed_opaque_existential_1(v32, v32[3]);
        v16 = OUTLINED_FUNCTION_34();
        v18 = COERCE_DOUBLE(v17(v16));
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_1(v32);
        if ((v20 & 1) == 0 && v18 <= 0.5)
        {
          v21 = &v4[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine];
          OUTLINED_FUNCTION_11_3(&v4[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine], v32);
          v22 = *(v21 + 3);
          v23 = *(v21 + 4);
          v24 = OUTLINED_FUNCTION_57();
          __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
          (*(v23 + 24))(0x3FF0000000000000, 0, v22, v23);
          swift_endAccess();
        }
      }

      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_4_0();
      v26 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v26);
      OUTLINED_FUNCTION_4_0();
      v27 = swift_allocObject();
      OUTLINED_FUNCTION_45_38(v27);
      swift_unknownObjectWeakInit();

      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();
    }
  }

  return result;
}

uint64_t (*sub_1E3BDBAB8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3BDB604();
  return sub_1E3BDBB00;
}

uint64_t sub_1E3BDBB40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C490, &qword_1E42A6E78);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_1_8(v2, v9);
  v4(v3);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView__distribution, v10);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80, &unk_1E42C1B50);
  OUTLINED_FUNCTION_21_15(v5);
  swift_endAccess();
  v6 = OUTLINED_FUNCTION_27_0();
  return v7(v6);
}

void (*sub_1E3BDBC34(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C490, &qword_1E42A6E78);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView__distribution, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80, &unk_1E42C1B50);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3BDBD50;
}

void sub_1E3BDBD50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    sub_1E3BDBB40();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3BDBB40();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3BDBE00()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_72_3();
  return sub_1E327F454(v0, v1);
}

uint64_t sub_1E3BDBE50(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine, v5);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1E3251BE8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3BDBEC4(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_87_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v2;
}

uint64_t sub_1E3BDBF28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3BDBF8C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1E3BDBFBC(v1);
}

uint64_t sub_1E3BDBFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1E4200684();
}

uint64_t sub_1E3BDC054()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B98, &qword_1E42C1BB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_1_8(v2, v9);
  v4(v3);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView__focusedPlayerViewController, v10);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B90, &qword_1E42C1BB0);
  OUTLINED_FUNCTION_21_15(v5);
  swift_endAccess();
  v6 = OUTLINED_FUNCTION_27_0();
  return v7(v6);
}

BOOL sub_1E3BDC148()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1E4207384();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3 != 0;
}

id sub_1E3BDC1C4()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture];
  }

  else
  {
    v4 = v0;
    v10[3] = type metadata accessor for MultiPlayerView(0);
    v10[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DCD28]);
    v5 = v0;
    v6 = sub_1E3BE2DCC(v10, sel_onPanGesture_);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1E3BDC268()
{
  v1 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for MultiPlayerGrabberView();
    v5 = sub_1E416EA48(1);
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3BDC2DC()
{
  v1 = [v0 window];
  if (v1)
  {
    return v1;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullScreenViewControllerForPresentation];

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  OUTLINED_FUNCTION_50();
  swift_unknownObjectRetain();
  result = [v2 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];
    OUTLINED_FUNCTION_87_0();
    swift_unknownObjectRelease_n();

    return v1;
  }

  __break(1u);
  return result;
}

void *sub_1E3BDC3E0()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 800))();
  if (result)
  {
    v2 = result;
    [result bounds];
    Width = CGRectGetWidth(v5);
    [v2 bounds];
    Height = CGRectGetHeight(v6);

    return (Width < Height);
  }

  return result;
}

double sub_1E3BDC478()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return result;
}

uint64_t sub_1E3BDC4BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

void sub_1E3BDC560()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v94 = v2;
  v93 = v3;
  v5 = v4;
  v95 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v89 = v8;
  sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v82 = v10;
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v80 = v12 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BA8, &qword_1E42C1BD0);
  OUTLINED_FUNCTION_0_10();
  v78 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v77 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BB0, &qword_1E42C1BD8);
  OUTLINED_FUNCTION_0_10();
  v84 = v17;
  v85 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v81 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BB8, &qword_1E42C1BE0);
  OUTLINED_FUNCTION_0_10();
  v87 = v21;
  v88 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v86 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B90, &qword_1E42C1BB0);
  OUTLINED_FUNCTION_0_10();
  v90 = v25;
  v91 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80, &unk_1E42C1B50);
  OUTLINED_FUNCTION_0_10();
  v96 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B70, &qword_1E42C1AF8);
  OUTLINED_FUNCTION_0_10();
  v36 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v76 - v38;
  v40 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout;
  type metadata accessor for ViewLayout();
  *&v0[v40] = sub_1E3C2F968();
  v41 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__mode;
  v99[0] = 0x8000000000000000;
  sub_1E4200634();
  (*(v36 + 32))(&v1[v41], v39, v34);
  v42 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_cancellables] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v43 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didSelectPlayerViewController];
  *v43 = 0;
  v43[1] = 0;
  v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed] = 0;
  v44 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didPinchPlayerViewController];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__distribution;
  v99[0] = 1;
  type metadata accessor for MultiPlayerViewControllerPlayerDistribution(0);
  sub_1E4200634();
  v46 = *(v96 + 32);
  v92 = v29;
  v46(&v1[v45], v33, v29);
  v47 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__focusedPlayerViewController;
  v99[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B88, &qword_1E42C1B60);
  sub_1E4200634();
  (*(v90 + 32))(&v1[v47], v28, v91);
  v48 = MEMORY[0x1E69E7CC0];
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    sub_1E3BE3058();
    v42 = v49;
  }

  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews] = v42;
  v50 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animationDebounceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BA0, &unk_1E42C1BC0);
  swift_allocObject();
  *&v1[v50] = sub_1E4200544();
  v51 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame];
  v52 = *(MEMORY[0x1E695F050] + 16);
  *v51 = *MEMORY[0x1E695F050];
  v51[1] = v52;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_scaleRange] = xmmword_1E42C1AA0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView] = 0;
  v53 = &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation];
  *v53 = 0;
  v53[1] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_maxPanVelocity] = 0x409F400000000000;
  v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView] = 0;
  v54 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_patternGenerator;
  type metadata accessor for MultiPlayerPatternGenerator();
  v55 = sub_1E37BEDD8();
  *&v1[v54] = OUTLINED_FUNCTION_69_18(v55);
  *&v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews] = v48;
  sub_1E327F454(v95, &v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine]);
  OUTLINED_FUNCTION_11_3(&v1[v45], v99);
  (*(v96 + 8))(&v1[v45], v92);
  v98 = v93;
  sub_1E4200634();
  swift_endAccess();
  v1[OBJC_IVAR____TtC8VideosUI15MultiPlayerView_shouldMaximizeScreenUsage] = v94 & 1;
  v56 = type metadata accessor for MultiPlayerView(0);
  v97.receiver = v1;
  v97.super_class = v56;
  v57 = objc_msgSendSuper2(&v97, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1E3BDFCA8();
  v58 = sub_1E32AE9B0(v5);
  v59 = 0;
  v60 = MEMORY[0x1E69E7D40];
  while (1)
  {
    if (v58 == v59)
    {

      v63 = sub_1E3BDC268();
      [v57 insertSubview:v63 atIndex:0];

      [*(v57 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView) setAlpha_];
      sub_1E3BE2938();
      v64 = sub_1E3BDC1C4();
      [v57 addGestureRecognizer_];

      v99[0] = *(v57 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animationDebounceSubject);
      sub_1E32752B0(&qword_1ECF34BC8, &qword_1ECF34BA0, &unk_1E42C1BC0, MEMORY[0x1E695BF88]);

      v65 = v77;
      sub_1E4200734();

      v66 = v80;
      sub_1E42069B4();
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v67 = sub_1E4206A04();
      v99[0] = v67;
      v96 = sub_1E42069A4();
      v68 = v89;
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v96);
      sub_1E32752B0(&qword_1ECF34BD0, &qword_1ECF34BA8, &qword_1E42C1BD0, MEMORY[0x1E695BD38]);
      sub_1E32ADE7C(&qword_1EE23B1E0, &qword_1EE23B1D0, 0x1E69E9610, MEMORY[0x1E69E8028]);
      v69 = v81;
      v70 = v79;
      sub_1E42007F4();
      sub_1E32ADF50(v68);

      (*(v82 + 8))(v66, v83);
      (*(v78 + 8))(v65, v70);
      v71 = sub_1E4206A04();
      v99[0] = v71;
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v96);
      sub_1E32752B0(&qword_1ECF34BD8, &qword_1ECF34BB0, &qword_1E42C1BD8, MEMORY[0x1E695BE50]);
      v73 = v85;
      v72 = v86;
      sub_1E42007D4();
      sub_1E32ADF50(v68);

      (*(v84 + 8))(v69, v73);
      OUTLINED_FUNCTION_4_0();
      v74 = swift_allocObject();
      OUTLINED_FUNCTION_99_4(v74);
      sub_1E32752B0(&qword_1ECF34BE0, &qword_1ECF34BB8, &qword_1E42C1BE0, MEMORY[0x1E695BE98]);
      v75 = v88;
      sub_1E4200844();
      OUTLINED_FUNCTION_50();

      (*(v87 + 8))(v72, v75);
      OUTLINED_FUNCTION_11_3(v57 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_cancellables, v99);
      sub_1E42004C4();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v95);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1E6911E60](v59, v5);
    }

    else
    {
      if (v59 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v61 = *(v5 + 8 * v59 + 32);
    }

    v62 = v61;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    (*((*v60 & *v57) + 0x350))(v61, 0, 1, 0, 0, 0);

    ++v59;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1E3BDD0A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B90, &qword_1E42C1BB0);
  OUTLINED_FUNCTION_0_10();
  v54 = v4;
  v55 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80, &unk_1E42C1B50);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B70, &qword_1E42C1AF8);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout;
  type metadata accessor for ViewLayout();
  v21 = sub_1E3C2F968();
  v48 = v20;
  *(v0 + v20) = v21;
  v22 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__mode;
  v56 = 0x8000000000000000;
  sub_1E4200634();
  v49 = v16;
  v50 = v14;
  v23 = *(v16 + 32);
  v47 = v22;
  v23(v1 + v22, v19, v14);
  v24 = MEMORY[0x1E69E7CD0];
  v46 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_cancellables;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_cancellables) = MEMORY[0x1E69E7CD0];
  v25 = v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_delegate;
  *(v25 + 8) = 0;
  v45 = v25;
  swift_unknownObjectWeakInit();
  v26 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didSelectPlayerViewController);
  *v26 = 0;
  v26[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isDimmed) = 0;
  v27 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_didPinchPlayerViewController);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__distribution;
  v56 = 1;
  type metadata accessor for MultiPlayerViewControllerPlayerDistribution(0);
  sub_1E4200634();
  v52 = v10;
  v53 = v8;
  v29 = *(v10 + 32);
  v44 = v28;
  v29(v1 + v28, v13, v8);
  v30 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView__focusedPlayerViewController;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B88, &qword_1E42C1B60);
  sub_1E4200634();
  v31 = *(v54 + 32);
  v43 = v30;
  v31(v1 + v30, v7, v55);
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    sub_1E3BE3058();
    v24 = v32;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews) = v24;
  v33 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animationDebounceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BA0, &unk_1E42C1BC0);
  swift_allocObject();
  *(v1 + v33) = sub_1E4200544();
  v34 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
  v35 = *(MEMORY[0x1E695F050] + 16);
  *v34 = *MEMORY[0x1E695F050];
  v34[1] = v35;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_scaleRange) = xmmword_1E42C1AA0;
  v36 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView) = 0;
  v37 = (v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___panGesture) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_maxPanVelocity) = 0x409F400000000000;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) = 0;
  v39 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView) = 0;
  v40 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_patternGenerator;
  type metadata accessor for MultiPlayerPatternGenerator();
  v41 = sub_1E37BEDD8();
  v42 = OUTLINED_FUNCTION_69_18(v41);

  *(v1 + v40) = v42;
  *(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews) = MEMORY[0x1E69E7CC0];

  (*(v49 + 8))(v1 + v47, v50);

  sub_1E32AF6F8(v45);
  sub_1E34AF594(*v26, v26[1]);
  sub_1E34AF594(*v27, v27[1]);
  (*(v52 + 8))(v1 + v44, v53);
  (*(v54 + 8))(v1 + v43, v55);

  type metadata accessor for MultiPlayerView(0);
  OUTLINED_FUNCTION_36_3();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BDD5E4()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MultiPlayerView(0);
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  if (!sub_1E3BDC148())
  {
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
    }

    sub_1E3BE0254();
  }

  v1 = sub_1E3BDC268();
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 808))();
  v4 = 1.57079633;
  if ((v3 & 1) == 0)
  {
    v4 = 0.0;
  }

  Rotation = CGAffineTransformMakeRotation(&v12, v4);
  OUTLINED_FUNCTION_95_10(Rotation, sel_setTransform_, v6, v7, v8, v9, v10, v11, *&v12.a, *&v12.c, *&v12.tx, *&v12.a, *&v12.c, *&v12.tx);

  sub_1E3BE2938();
}

void sub_1E3BDD748(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v10 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v12 = (*(v11 + 888))();
  OUTLINED_FUNCTION_26_3();
  v43 = *((*((*v10 & v13) + 0x3A8))() + 16) == 0;

  v14 = v12;
  v15 = OUTLINED_FUNCTION_6();
  [v16 v17];
  v18 = objc_opt_self();
  v19 = [v18 isFeatureEnabled_];
  if (v19)
  {
    v19 = [v14 setAlpha_];
  }

  else if (a4)
  {
    [v14 setAlpha_];
    CGAffineTransformMakeScale(&v42, 0.5, 0.5);
    v19 = [v14 setTransform_];
  }

  (*(**(v6 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout) + 552))(&v42, v19);
  v20 = 0.0;
  if ((LOBYTE(v42.tx) & 1) == 0)
  {
    v20 = sub_1E3952BE8(v42.a, v42.b, v42.c, v42.d);
  }

  v21 = [a1 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 layer];

    [v23 setMasksToBounds_];
    v24 = (*((*v10 & *v7) + 0x228))();
    if (v24)
    {

      if (a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v27 = a1;
      sub_1E3BDBFBC(a1);
      if (a4)
      {
LABEL_10:

        if ([v18 isFeatureEnabled_])
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            sub_1E3BE3058();
            v26 = v25;
          }

          else
          {
            v26 = MEMORY[0x1E69E7CD0];
          }

          sub_1E3BDFE50(v26, 0, 0, a5, v40);
        }

        else
        {
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          OUTLINED_FUNCTION_4_0();
          v32 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_5_10();
          v33 = swift_allocObject();
          *(v33 + 2) = v32;
          *(v33 + 3) = a1;
          v33[4] = v20;
          OUTLINED_FUNCTION_4_0();
          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_5_10();
          v35 = swift_allocObject();
          v35[2] = v34;
          v35[3] = a5;
          v35[4] = v40;
          v36 = a1;

          sub_1E34AF604(a5, v40);
          OUTLINED_FUNCTION_5_11();
          sub_1E3B02648();

          OUTLINED_FUNCTION_2_4();
          v37 = swift_allocObject();
          *(v37 + 16) = v14;
          *(v37 + 24) = v20;
          v38 = v14;
          OUTLINED_FUNCTION_25();
          sub_1E3B02648();
        }

LABEL_22:

        return;
      }
    }

    [v14 setAlpha_];
    v28 = [v14 layer];

    [v28 setCornerRadius_];
    v29 = [a1 view];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 layer];

      [v31 setCornerRadius_];
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
      }

      sub_1E3BE0254();

      sub_1E3BE2938();
      if (a5)
      {
        a5();
      }

      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3BDDD34(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_87_3();
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_119();
  v24[1] = (*(v7 + 816))();
  v22 = a2;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BE8, qword_1E42C1BE8);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v8, v9, qword_1E42C1BE8, v10);
  sub_1E38D2054(&v22, v24);
  v11 = v24[0];

  if (v11)
  {
    OUTLINED_FUNCTION_15_94();
    v15 = (*(v12 + 504))(v13, v14);
    OUTLINED_FUNCTION_39();
    v19 = (*((*v6 & v16) + 0x228))(v17, v18);

    if (v19)
    {

      if (v15 == v19)
      {
        v20 = v3;
        sub_1E3BDBFBC(v3);
      }
    }

    OUTLINED_FUNCTION_15_94();
    (*(v21 + 704))(v3, a3 & 1);
  }
}

void sub_1E3BDDEFC()
{
  OUTLINED_FUNCTION_194();
  v20 = v1;
  v21 = v0;
  v19 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_4_133();
  v6 = (*(v5 + 816))();
  v7 = sub_1E32AE9B0(v6);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      OUTLINED_FUNCTION_16_89();
      v13 = (*(v12 + 504))();

      if (v13 == v4)
      {
        break;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      ++v9;
      if (v14 == v8)
      {
        goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_16_89();
    (*(v16 + 872))(v9, v19 & 1, v21, v20);
    OUTLINED_FUNCTION_192();
  }

  else
  {
LABEL_10:

    if (v21)
    {
      v21(v15);
    }

    OUTLINED_FUNCTION_192();
  }
}

void sub_1E3BDE0A4(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v52 = *(v10 + 816);
  v61[1] = v52();
  aBlock = a1;
  LOBYTE(v56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34BE8, qword_1E42C1BE8);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v11, v12, qword_1E42C1BE8, v13);
  sub_1E38D2054(&aBlock, v61);
  v14 = v61[0];

  if (!v14)
  {
    if (a3)
    {
      a3(v15);
    }

    goto LABEL_26;
  }

  v53 = a4;
  v16 = (*((*v9 & *v14) + 0x1F8))(v15);
  OUTLINED_FUNCTION_11_3(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews, &aBlock);
  v17 = sub_1E37EF010(a1);
  swift_endAccess();

  v18 = *((*v9 & *v5) + 0x228);
  v19 = v16;
  v20 = v18();

  if (v20)
  {

    if (v19 == v20)
    {
      v21 = v52();
      if (sub_1E32AE9B0(v21))
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E6911E60](0, v21);
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_29;
          }

          v22 = *(v21 + 32);
        }

        v23 = v22;

        v25 = (*((*v9 & *v23) + 0x1F8))(v24);
      }

      else
      {

        v25 = 0;
      }

      sub_1E3BDBFBC(v25);
    }
  }

  if (a2)
  {
    if ([objc_opt_self() isFeatureEnabled_])
    {
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
      }

      OUTLINED_FUNCTION_25();
      sub_1E3BDFE50(v40, v41, v42, v43, 0);

      v44 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      v45 = swift_allocObject();
      *(v45 + 16) = v14;
      v59 = sub_1E3BE3670;
      v60 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_1E378AEA4;
      v58 = &block_descriptor_74;
      v46 = _Block_copy(&aBlock);
      v47 = v14;

      OUTLINED_FUNCTION_10_9();
      v48 = swift_allocObject();
      v48[2] = v19;
      v48[3] = v47;
      v48[4] = a3;
      v48[5] = v53;
      v59 = sub_1E3BE35F4;
      v60 = v48;
      aBlock = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_1E37EB82C;
      v58 = &block_descriptor_39_3;
      v49 = _Block_copy(&aBlock);
      v50 = v19;
      v51 = v47;
      sub_1E34AF604(a3, v53);

      [v44 animateWithDuration:v46 animations:v49 completion:0.33];

      _Block_release(v49);
      _Block_release(v46);
      goto LABEL_26;
    }

    [v14 center];
    v27 = v26;
    v29 = v28;
    sub_1E3BE2938();
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    OUTLINED_FUNCTION_4_0();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v14;
    v31[4] = v27;
    v31[5] = v29;
    v31[6] = 0;
    v31[7] = 0;
    OUTLINED_FUNCTION_10_9();
    v32 = swift_allocObject();
    v32[2] = v19;
    v32[3] = v14;
    v32[4] = a3;
    v32[5] = v53;
    v33 = v14;
    v34 = v19;
    v14 = v33;
    v35 = OUTLINED_FUNCTION_13_8();
    sub_1E34AF604(v35, v36);

    OUTLINED_FUNCTION_5_11();
    sub_1E3B02648();

LABEL_24:

LABEL_26:
    OUTLINED_FUNCTION_96_5();
    return;
  }

  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    sub_1E3BE3058();
  }

  sub_1E3BE0254();

  v37 = [v19 view];
  if (v37)
  {
    v38 = v37;
    [v37 removeFromSuperview];

    v39 = [v14 removeFromSuperview];
    if (a3)
    {
      a3(v39);
    }

    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

void sub_1E3BDE714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_194();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  v53 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v38 += 102;
  v39 = *v38;
  v40 = (*v38)();
  v41 = sub_1E32AE9B0(v40);

  if (v41 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v36 < 0 || v41 <= v36)
    {
      goto LABEL_14;
    }

    v43 = (v39)(v42);
    v44 = sub_1E32AE9B0(v43);

    if ((v44 & 0x8000000000000000) == 0)
    {
      if ((v34 & 0x8000000000000000) == 0 && v44 > v34)
      {
        OUTLINED_FUNCTION_11_3(v27 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews, &a10);
        sub_1E3BDE9C0(v36, v34);
        swift_endAccess();
        OUTLINED_FUNCTION_39();
        if ((*((*v37 & v45) + 0x158))())
        {
          v47 = v46;
          ObjectType = swift_getObjectType();
          (*(v47 + 8))(v27, v36, v34, ObjectType, v47);
          swift_unknownObjectRelease();
        }

        if (v32)
        {
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          OUTLINED_FUNCTION_4_0();
          v49 = swift_allocObject();
          OUTLINED_FUNCTION_99_4(v49);
          OUTLINED_FUNCTION_2_4();
          v50 = swift_allocObject();
          *(v50 + 16) = v30;
          *(v50 + 24) = v53;

          v51 = OUTLINED_FUNCTION_27_0();
          sub_1E34AF604(v51, v52);
          OUTLINED_FUNCTION_5_11();
          sub_1E3B02648();

LABEL_16:
          OUTLINED_FUNCTION_192();
          return;
        }

        if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
        {
          sub_1E3BE3058();
        }

        sub_1E3BE0254();
      }

LABEL_14:
      if (v30)
      {
        v30(v42);
      }

      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1E3BDE9C0(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *v2;
    v6 = *v2 & 0xC000000000000001;
    sub_1E34AF4E4(a1, v6 == 0, *v2);
    if (v6)
    {
      v7 = MEMORY[0x1E6911E60](a1, v5);
    }

    else
    {
      v7 = *(v5 + 8 * a1 + 32);
    }

    v8 = v7;
    sub_1E34AF4E4(a2, v6 == 0, v5);
    if (v6)
    {
      v9 = MEMORY[0x1E6911E60](a2, v5);
    }

    else
    {
      v9 = *(v5 + 8 * a2 + 32);
    }

    v10 = v9;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_1E37EFA58(v5);
      v11 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

    if ((v5 & 0x8000000000000000) != 0 || v11)
    {
      v5 = sub_1E37EFA58(v5);
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_15:
        if (*(v12 + 16) > a2)
        {
          v14 = v12 + 8 * a2;
          v15 = *(v14 + 32);
          *(v14 + 32) = v8;

          *v2 = v5;
          return;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1E3BDEAFC()
{
  OUTLINED_FUNCTION_63_18();
  v45 = v1;
  v46 = v2;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v8 removeFromParentViewController];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 didMoveToParentViewController_];
  v12 = [v9 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 setUserInteractionEnabled_];

  OUTLINED_FUNCTION_39();
  v14 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v15) + 0x398))(v9))
  {
    OUTLINED_FUNCTION_64();
    (*(v16 + 688))();
LABEL_10:
    OUTLINED_FUNCTION_63_13();
    return;
  }

  v43 = v5;
  v41 = v7;
  v17 = [v9 view];
  if (v17)
  {
    v18 = v17;
    [v17 frame];
    OUTLINED_FUNCTION_3();

    type metadata accessor for MultiPlayerContainerView();
    v19 = sub_1E3FD87C8(v9, 0, 0);
    v20 = [v19 layer];
    [v20 setMasksToBounds_];

    v21 = OUTLINED_FUNCTION_6();
    [v22 v23];

    v44[3] = type metadata accessor for MultiPlayerView(0);
    v44[0] = v3;
    v24 = objc_allocWithZone(MEMORY[0x1E69DCD80]);
    v25 = v3;
    v42 = sub_1E3BE2DCC(v44, sel_viewPinchedWithGesture_);
    [v19 addGestureRecognizer_];
    OUTLINED_FUNCTION_4_0();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_99_4(v26);
    OUTLINED_FUNCTION_4_0();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v27);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = &selRef_textLayout;
    v29 = *((*v14 & *v19) + 0x1B8);
    v30 = v19;

    v29(sub_1E3BE36D4, v28);

    OUTLINED_FUNCTION_4_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v31);
    swift_unknownObjectWeakInit();
    v32 = *((*v14 & *v30) + 0x1D0);

    v33 = OUTLINED_FUNCTION_40_1();
    v32(v33);

    OUTLINED_FUNCTION_4_0();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_99_4(v34);
    OUTLINED_FUNCTION_4_0();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v35);
    swift_unknownObjectWeakInit();

    OUTLINED_FUNCTION_2_4();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = &selRef_textLayout;
    v37 = *((*v14 & *v30) + 0x1E8);

    v37(sub_1E3BE3AF8, v36);

    v38 = OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews;
    OUTLINED_FUNCTION_11_3(v25 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews, v44);
    if (v43)
    {
      v39 = v30;
      MEMORY[0x1E6910BF0]();
      sub_1E38C5A18(*((*(v25 + v38) & 0xFFFFFFFFFFFFFF8) + 0x10));
      OUTLINED_FUNCTION_13_8();
      sub_1E4206324();
    }

    else
    {
      sub_1E37EFABC(v41, *(v25 + v38));
      sub_1E3BE3C6C(v41, v41, v30);
    }

    swift_endAccess();
    v40 = sub_1E3BDC268();
    [v25 insertSubview:v30 aboveSubview:v40];

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void sub_1E3BDF02C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for MultiPlayerContainerView();
    v7 = sub_1E4206F64();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1E3BDF108()
{
  OUTLINED_FUNCTION_335();
  v3 = v2;
  OUTLINED_FUNCTION_6_119();
  v5 = (*(v4 + 816))();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_81_13();
  while (v0 != v1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = OUTLINED_FUNCTION_39_3();
      v6 = MEMORY[0x1E6911E60](v10);
    }

    else
    {
      if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_94();
    v9 = (*(v8 + 504))();

    if (v3 && v9 == v3)
    {
    }

    else
    {
      sub_1E4207544();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207584();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v1;
  }

  v11 = sub_1E32AE9B0(v18);
  for (i = 0; v11 != i; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v16 = OUTLINED_FUNCTION_11_6();
      v13 = MEMORY[0x1E6911E60](v16);
    }

    else
    {
      if (i >= *(v18 + 16))
      {
        goto LABEL_27;
      }

      v13 = *(v18 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_6_119();
    (*(v15 + 712))();
  }

  OUTLINED_FUNCTION_15_36();
}

void sub_1E3BDF304()
{
  OUTLINED_FUNCTION_335();
  v3 = v2;
  OUTLINED_FUNCTION_6_119();
  v5 = (*(v4 + 816))();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_81_13();
  while (v0 != v1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = OUTLINED_FUNCTION_39_3();
      v6 = MEMORY[0x1E6911E60](v10);
    }

    else
    {
      if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_15_94();
    v9 = (*(v8 + 504))();

    if (v3 && v9 == v3)
    {
    }

    else
    {
      sub_1E4207544();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207584();
      OUTLINED_FUNCTION_86_5();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v1;
  }

  v11 = sub_1E32AE9B0(v18);
  for (i = 0; v11 != i; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v16 = OUTLINED_FUNCTION_11_6();
      v13 = MEMORY[0x1E6911E60](v16);
    }

    else
    {
      if (i >= *(v18 + 16))
      {
        goto LABEL_27;
      }

      v13 = *(v18 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_6_119();
    (*(v15 + 720))(0);
  }

  OUTLINED_FUNCTION_15_36();
}

void sub_1E3BDF504(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_133();
  v5 = (*(v4 + 920))();
  if (!v5)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    return;
  }

  v6 = v5;
  OUTLINED_FUNCTION_16_89();
  (*(v7 + 696))();
  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    v10 = v6;
    [v10 frame];
    [v9 setFrame_];

    [v10 frame];
    OUTLINED_FUNCTION_3();
    v11 = COERCE_DOUBLE((*(**&v10[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout] + 1272))());
    if ((v13 & 1) == 0)
    {
      v12 = v11 + v11;
    }

    if (![v2 isFocused])
    {
      [v10 frame];
      OUTLINED_FUNCTION_3();
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_1E3BDF6BC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 816))();
  sub_1E32AE9B0(v4);
  OUTLINED_FUNCTION_81_13();
  while (1)
  {
    if (v1 == v2)
    {
LABEL_10:

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v2, v4);
    }

    else
    {
      if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v4 + 8 * v2 + 32);
    }

    v6 = v5;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_21();
    v8 = (*(v7 + 504))();

    if (v8 == v0)
    {
      goto LABEL_10;
    }

    ++v2;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1E3BDF7D8()
{
  OUTLINED_FUNCTION_63_18();
  v27 = v1;
  v28 = v2;
  v3 = v0;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_4_133();
  v6 = (*(v5 + 272))();
  if (v6 == 0x8000000000000000)
  {
    OUTLINED_FUNCTION_12_5();
    (*(v7 + 400))();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_5();
  (*(v8 + 528))(v26);
  v25 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  OUTLINED_FUNCTION_36_3();
  v10 = (*((*v4 & v9) + 0x330))();
  v11 = sub_1E32AE9B0(v10);
  if (v11)
  {
    v12 = v11;
    sub_1E4207574();
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ++v13;
      OUTLINED_FUNCTION_16_89();
      v16 = *(v15 + 504);
      v18 = v17;
      v16();

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    while (v12 != v13);
  }

  [v3 bounds];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = 0.0;
  v30.size.height = 0.0;
  if (CGRectEqualToRect(v29, v30))
  {
    v19 = [objc_opt_self() mainScreen];
    [v19 bounds];
    OUTLINED_FUNCTION_3();
  }

  else
  {
    [v3 bounds];
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12_5();
  (*(v20 + 400))();
  OUTLINED_FUNCTION_36_3();
  (*((*v4 & v21) + 0x1E0))();
  OUTLINED_FUNCTION_36_3();
  (*((*v4 & v22) + 0x328))();
  v23 = OUTLINED_FUNCTION_17_4();
  v24(v23);

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_63_13();
}

void sub_1E3BDFB84()
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 816))();
  sub_1E32AE9B0(v3);
  OUTLINED_FUNCTION_81_13();
  while (v0 != v1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = OUTLINED_FUNCTION_39_3();
      v4 = MEMORY[0x1E6911E60](v7);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v3 + 8 * v1 + 32);
    }

    v5 = v4;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_21();
    (*(v6 + 360))(0);

    ++v1;
  }

  sub_1E3BDAA10(0x8000000000000000);
}

uint64_t sub_1E3BDFCA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_playerLayout);
  v41[0] = sub_1E3952C10(20.0, 20.0);
  v41[1] = v2;
  v41[2] = v3;
  v41[3] = v4;
  v42 = 0;
  v5 = (*(*v1 + 184))(v41);
  v5.n128_u64[0] = 18.0;
  v17[0] = j__OUTLINED_FUNCTION_7_78(v5);
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  LOBYTE(v17[4]) = 0;
  v9.n128_u64[0] = 24.0;
  v38[0] = j__OUTLINED_FUNCTION_7_78(v9);
  v38[1] = v10;
  v38[2] = v11;
  v38[3] = v12;
  v39 = 0;
  type metadata accessor for UIEdgeInsets();
  v14 = v13;
  sub_1E3C3DE00();
  v33[0] = v35;
  v33[1] = v36;
  v34 = v37;
  sub_1E3C2FC98();
  v28[0] = v30;
  v28[1] = v31;
  v29 = v32;
  sub_1E3C3DE00();
  v23[0] = v25;
  v23[1] = v26;
  v24 = v27;
  sub_1E3C3DE00();
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  sub_1E3C2FCB8(v33, v28, v17, v38, v23, v18, v14, __src);
  memcpy(v17, __src, 0xE9uLL);
  v15 = OUTLINED_FUNCTION_18();
  return (*(*v1 + 1600))(v17, 17, v15 & 1, v14);
}

void sub_1E3BDFE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 816))();
  aBlock = MEMORY[0x1E69E7CC0];
  v9 = sub_1E32AE9B0(v8);
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v34 = v8;
  v35 = v8 & 0xC000000000000001;
  v38 = (v8 & 0xFFFFFFFFFFFFFF8);
  v37 = v8 + 32;
  v36 = v9;
  while (1)
  {
LABEL_2:
    if (v10 == v9)
    {

      v23 = aBlock;
      v39 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      v24 = swift_allocObject();
      *(v24 + 16) = aBlock;
      v44 = sub_1E3BE5854;
      v45 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      OUTLINED_FUNCTION_23_58();
      v42 = v25;
      v43 = &block_descriptor_168;
      v26 = _Block_copy(&aBlock);

      OUTLINED_FUNCTION_4_0();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_67_6();
      v28 = swift_allocObject();
      v28[2] = a2;
      v28[3] = a3;
      v28[4] = v27;
      v28[5] = a1;
      v28[6] = v23;
      v28[7] = a4;
      v28[8] = a5;
      v44 = sub_1E3BE585C;
      v45 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1E37EB82C;
      v43 = &block_descriptor_175;
      v29 = _Block_copy(&aBlock);
      sub_1E34AF604(a2, a3);

      sub_1E34AF604(a4, a5);

      [v39 animateWithDuration:v26 animations:v29 completion:0.33];
      _Block_release(v29);
      _Block_release(v26);
      return;
    }

    if (v11)
    {
      v12 = MEMORY[0x1E6911E60](v10, v34);
    }

    else
    {
      if (v10 >= v38[2])
      {
        goto LABEL_20;
      }

      v12 = *(v37 + 8 * v10);
    }

    v13 = v12;
    if (__OFADD__(v10++, 1))
    {
      break;
    }

    v15 = (*((*v6 & *v12) + 0x1F8))();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = sub_1E42073D4();

      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(a1 + 16))
      {
        sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
        sub_1E4206F54();
        OUTLINED_FUNCTION_38_28();
        v19 = ~v18;
        while (1)
        {
          v20 = v17 & v19;
          if (((*(a1 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
          {
            break;
          }

          v21 = *(*(a1 + 48) + 8 * v20);
          v22 = sub_1E4206F64();

          v17 = v20 + 1;
          if (v22)
          {

            v6 = MEMORY[0x1E69E7D40];
            v11 = v35;
            v9 = v36;
            goto LABEL_2;
          }
        }
      }

      v6 = MEMORY[0x1E69E7D40];
      v11 = v35;
      v9 = v36;
LABEL_16:
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

double sub_1E3BE0254()
{
  OUTLINED_FUNCTION_87_3();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_4_133();
  v4 = (*(v3 + 816))();
  sub_1E32AE9B0(v4);
  OUTLINED_FUNCTION_50();

  if (v0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_patternGenerator);
    (*(*v7 + 232))(v5);
    OUTLINED_FUNCTION_39();
    v9 = (*((*v2 & v8) + 0x3A8))();
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_99_4(v10);
    OUTLINED_FUNCTION_5_10();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = v1;
    v12 = *(*v7 + 200);

    v14 = v12(v13);
    sub_1E3BE047C(v10, v9, v1, v14, v15);

    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1E3BE5B2C;
    *(v16 + 24) = v11;
    v17 = *(*v7 + 224);

    v18 = OUTLINED_FUNCTION_40_1();
    v17(v18);
  }

  return result;
}

void sub_1E3BE047C(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_64();
  v13 = (*(v12 + 816))();
  v14 = 0;
  v72 = sub_1E32AE9B0(v13);
  v68 = v10;
  v70 = a3 & 0xC000000000000001;
  v69 = a2;
  v74 = a3 + 56;
  v76 = a3;
  while (v14 != v72)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](v14, v13);
    }

    else
    {
      if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v15 = *(v13 + 32 + 8 * v14);
    }

    v16 = v15;
    v17 = *(a2 + 16);
    if (v14 == v17)
    {

      break;
    }

    if (v14 >= v17)
    {
      goto LABEL_33;
    }

    v18 = *((*v11 & *v15) + 0x1F8);
    v19 = v18();
    if (v70)
    {
      v20 = sub_1E42073D4();

      if (v20)
      {
        v19 = v16;
        goto LABEL_22;
      }
    }

    else
    {
      if (*(a3 + 16))
      {
        sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
        sub_1E4206F54();
        OUTLINED_FUNCTION_38_28();
        v23 = ~v22;
        while (1)
        {
          v24 = v21 & v23;
          if (((*(v74 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
          {
            break;
          }

          v25 = *(*(a3 + 48) + 8 * v24);
          v26 = sub_1E4206F64();

          a3 = v76;
          v21 = v24 + 1;
          if (v26)
          {

            v10 = v68;
            v11 = MEMORY[0x1E69E7D40];
            a2 = v69;
            goto LABEL_22;
          }
        }
      }

      v10 = v68;
      v11 = MEMORY[0x1E69E7D40];
    }

    v27 = v18();
    v28 = [v27 view];

    v19 = v16;
    v79.origin.x = OUTLINED_FUNCTION_6_18();
    v80 = CGRectOffset(v79, a4, a5);
    [v19 setFrame_];
    OUTLINED_FUNCTION_39();
    if ((*((*v11 & v29) + 0x158))())
    {
      swift_getObjectType();
      v30 = v18();
      [v19 frame];
      OUTLINED_FUNCTION_24_57();

      v31 = OUTLINED_FUNCTION_6_18();
      v11 = MEMORY[0x1E69E7D40];
      v32(v31);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    a2 = v69;
    a3 = v76;
LABEL_22:
    ++v14;
  }

  if (*(a2 + 16))
  {
    v34 = *(a2 + 56);
    (*((*v11 & *v10) + 0x210))(v78, v33);
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v35 = OUTLINED_FUNCTION_34();
    v10 = v68;
    v73 = v36(v35);
    v75 = v37;
    v77 = v38;
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_39();
    (*((*v11 & v41) + 0x328))();
    v42 = OUTLINED_FUNCTION_49_31();
    v45 = v34;
    if (v46)
    {
      v71 = CGRect.center.getter(v42, v43, v44, v34);
      v47 = sub_1E3BDC268();
      [v47 frame];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v81.origin.x = v49;
      v81.origin.y = v51;
      v81.size.width = v53;
      v81.size.height = v55;
      v56 = v71 - CGRectGetWidth(v81) * 0.5;
      v82.origin.x = OUTLINED_FUNCTION_49_31();
      MaxY = CGRectGetMaxY(v82);
      v58 = MaxY + sub_1E3952BD8(v73, v75, v77) * 0.5 + a4;
    }

    else
    {
      v59 = v34;
      MaxX = CGRectGetMaxX(*&v42);
      v56 = MaxX + sub_1E3952BE0(v73, v75, v77, v40) * 0.5 + a4;
      v61 = OUTLINED_FUNCTION_49_31();
      CGRect.center.getter(v61, v62, v63, v59);
      v65 = v64;
      v66 = sub_1E3BDC268();
      [v66 frame];
      OUTLINED_FUNCTION_24_57();

      v83.origin.x = OUTLINED_FUNCTION_6_18();
      v58 = v65 - CGRectGetHeight(v83) * 0.5 + a5;
    }

    v67 = *(v68 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView____lazy_storage___adjustmentView);
    [v67 frame];
    [v67 setFrame_];
  }
}

void sub_1E3BE0A8C(void *a1)
{
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews, &aBlock);
  v3 = a1;
  sub_1E3BE41D8(&v20, v3, &qword_1EE23AE80, 0x1E69DD250, &qword_1ECF34C08, &qword_1E42C1DB0);
  v4 = v20;
  swift_endAccess();

  v5 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v18 = sub_1E3BE555C;
  v19 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  OUTLINED_FUNCTION_23_58();
  v16 = v7;
  v17 = &block_descriptor_139_0;
  v8 = _Block_copy(&aBlock);
  v9 = v3;

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v18 = sub_1E3BE45C4;
  v19 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E37EB82C;
  v17 = &block_descriptor_146;
  v12 = _Block_copy(&aBlock);
  v13 = v9;

  [v5 animateKeyframesWithDuration:0 delay:v8 options:v12 animations:0.25 completion:0.0];
  _Block_release(v12);
  _Block_release(v8);
}

void sub_1E3BE0C90(void *a1)
{
  v5 = v1;
  v7 = [a1 view];
  if (!v7)
  {
    goto LABEL_27;
  }

  v68 = v7;
  type metadata accessor for MultiPlayerContainerView();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    [a1 scale];
    v11 = v10;
    v12 = [a1 state];
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        OUTLINED_FUNCTION_11_3(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews, &aBlock);
        v13 = v68;
        sub_1E3BE41D8(&v70, v9, &qword_1EE23AE80, 0x1E69DD250, &qword_1ECF34C08, &qword_1E42C1DB0);
        v14 = v70;
        swift_endAccess();

        v15 = OUTLINED_FUNCTION_17_1();
        [v15 v16];
        [v9 frame];
        OUTLINED_FUNCTION_3();

        v17 = v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame;
        *v17 = v11;
        *(v17 + 1) = v2;
        *(v17 + 2) = v3;
        *(v17 + 3) = v4;
        v18 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x158))();
        if (!v18)
        {

          goto LABEL_27;
        }

        OUTLINED_FUNCTION_96_10(v18);
        OUTLINED_FUNCTION_79_1();
        v19 = OUTLINED_FUNCTION_17_1();
        v20(v19);
      }

      else
      {
        if (v11 >= 1.3 && (OUTLINED_FUNCTION_15_94(), v29 += 63, v30 = *v29, v31 = (*v29)(), v32 = [v31 isReadyForDisplay], v31, (v32 & 1) != 0))
        {
          OUTLINED_FUNCTION_12_5();
          v34 = (*(v33 + 264))();
          v35 = v30();
          sub_1E386ABC0(v35, v34);
          v37 = v36;
          v39 = v38;

          if ((v39 & 1) == 0)
          {
            OUTLINED_FUNCTION_12_5();
            v41 = (*(v40 + 456))();
            if (v41)
            {
              v43 = v41;
              v44 = v42;
              v45 = v30();
              v43(v45, v37);
              sub_1E34AF594(v43, v44);
            }

            v46 = v30();
            sub_1E3BDBFBC(v46);
          }

          v47 = (v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
          *v47 = 0u;
          v47[1] = 0u;
          OUTLINED_FUNCTION_11_3(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews, &aBlock);
          v48 = sub_1E3BE4E30(v9);
          swift_endAccess();
        }

        else
        {
          v49 = objc_opt_self();
          OUTLINED_FUNCTION_2_4();
          v50 = swift_allocObject();
          *(v50 + 16) = v9;
          *(v50 + 24) = v5;
          v75 = sub_1E3BE54A0;
          v76 = v50;
          aBlock = MEMORY[0x1E69E9820];
          v72 = 1107296256;
          OUTLINED_FUNCTION_22_61();
          v73 = v51;
          v74 = &block_descriptor_126_0;
          v52 = _Block_copy(&aBlock);
          v53 = v68;
          v5;

          OUTLINED_FUNCTION_4_0();
          v54 = swift_allocObject();
          OUTLINED_FUNCTION_99_4(v54);
          OUTLINED_FUNCTION_2_4();
          v55 = swift_allocObject();
          *(v55 + 16) = v54;
          *(v55 + 24) = v9;
          v75 = sub_1E3BE54C4;
          v76 = v55;
          aBlock = MEMORY[0x1E69E9820];
          v72 = 1107296256;
          v73 = sub_1E37EB82C;
          v74 = &block_descriptor_133;
          v56 = _Block_copy(&aBlock);
          v57 = v53;

          [v49 animateWithDuration:v52 animations:v56 completion:0.25];
          _Block_release(v56);
          _Block_release(v52);
        }

        OUTLINED_FUNCTION_15_94();
        v59 = (*(v58 + 344))();
        if (!v59)
        {

          goto LABEL_27;
        }

        OUTLINED_FUNCTION_96_10(v59);
        OUTLINED_FUNCTION_79_1();
        v60 = OUTLINED_FUNCTION_17_1();
        v61(v60);
      }

      swift_unknownObjectRelease();
LABEL_27:
      OUTLINED_FUNCTION_96_5();
      return;
    }

    if (v11 < 0.8 || v11 > 1.3)
    {
      v62 = OUTLINED_FUNCTION_76_12();
      [v62 v63];
      v64 = OUTLINED_FUNCTION_76_12();
      [v64 v65];
    }

    else
    {
      v21 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame + 16);
      v22 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame + 24);
      v23 = v11 * v21;
      v24 = v11 * v22;
      v25 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame);
      v26 = *(v5 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_initialPinchFrame + 8);
      v27 = v21 - v23;
      v28 = v22 - v24;
      v69 = v68;
      v77.origin.x = v25;
      v77.origin.y = v26;
      v77.size.width = v21;
      v77.size.height = v22;
      v78 = CGRectInset(v77, v27, v28);
      [v9 setFrame_];
    }
  }

  OUTLINED_FUNCTION_96_5();
}

BOOL sub_1E3BE1328()
{
  OUTLINED_FUNCTION_5_16();
  v2 = sub_1E3BDC268();
  [v2 frame];
  OUTLINED_FUNCTION_24_57();

  v3 = OUTLINED_FUNCTION_6_18();
  v7 = CGRect.center.getter(v3, v4, v5, v6);
  return sub_1E3FB31C0(v7, v8, v1, v0) <= 40.0;
}

void sub_1E3BE13A4()
{
  OUTLINED_FUNCTION_63_18();
  v132 = v2;
  v133 = v3;
  v4 = v0;
  OUTLINED_FUNCTION_87_3();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 += 33;
  v7 = *v6;
  v8 = (*v6)();
  v9 = sub_1E32AE9B0(v8);

  if (v9 < 2)
  {
    goto LABEL_29;
  }

  v10 = OUTLINED_FUNCTION_33_14();
  [v10 v11];
  v13 = v12;
  v15 = v14;
  v16 = OUTLINED_FUNCTION_33_14();
  [v16 v17];
  v19 = v18;
  v21 = v20;
  v22 = [v1 state];
  if (v22 != 2)
  {
    if (v22 != 1)
    {
      v83 = *(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
      *(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView) = 0;

      v84 = (v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation);
      *v84 = 0;
      v84[1] = 0;
      *(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) = 0;
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_4_0();
      v85 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v85);
      OUTLINED_FUNCTION_4_0();
      v86 = swift_allocObject();
      OUTLINED_FUNCTION_45_38(v86);
      swift_unknownObjectWeakInit();

      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_53();
    if ((*(v23 + 992))(v13, v15) & 1) != 0 && (sub_1E3BDB1AC())
    {
      *(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) = 1;
      OUTLINED_FUNCTION_10_53();
      (*(v24 + 808))();
      [v4 frame];
      OUTLINED_FUNCTION_55_29();
      OUTLINED_FUNCTION_11_3(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine, v131);
      v25 = OUTLINED_FUNCTION_34();
      __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v27 = OUTLINED_FUNCTION_33_44();
      v28(v27);
      swift_endAccess();
      if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
      {
        sub_1E3BE3058();
        v30 = v29;
      }

      else
      {
        v30 = MEMORY[0x1E69E7CD0];
      }

      sub_1E3BE0254();

      v115 = (v7)(v114);
      OUTLINED_FUNCTION_28_45(v115);
      if (v30 != 2)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_10_53();
      if ((*(v116 + 480))())
      {
        goto LABEL_29;
      }

      goto LABEL_68;
    }

    OUTLINED_FUNCTION_10_53();
    v88 = (*(v87 + 816))();
    v89 = sub_1E32AE9B0(v88);
    for (i = 0; v89 != i; ++i)
    {
      if ((v88 & 0xC000000000000001) != 0)
      {
        v91 = MEMORY[0x1E6911E60](i, v88);
      }

      else
      {
        if (i >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v91 = *(v88 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v92 = v91;
      [v92 frame];
      v136.x = v13;
      v136.y = v15;
      if (CGRectContainsPoint(v139, v136))
      {

        v100 = *(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
        *(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView) = v92;
        v130 = v92;

        [v130 center];
        v102 = v101;
        v104 = v103;

        v105 = (v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureInitialLocation);
        *v105 = v102;
        v105[1] = v104;
        [v4 bringSubviewToFront_];
        OUTLINED_FUNCTION_36_3();
        v107 = (*((*v5 & v106) + 0x158))();
        if (!v107)
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_96_10(v107);
        OUTLINED_FUNCTION_79_1();
        v108 = OUTLINED_FUNCTION_17_1();
        v109(v108);

        OUTLINED_FUNCTION_18_69();

        swift_unknownObjectRelease();
        return;
      }
    }

LABEL_48:
    OUTLINED_FUNCTION_18_69();

    return;
  }

  v31 = *(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
  if (!v31)
  {
    if (*(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_isAdjustingView) != 1)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_53();
    (*(v93 + 808))();
    [v4 frame];
    OUTLINED_FUNCTION_55_29();
    OUTLINED_FUNCTION_11_3(v4 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_layoutEngine, v131);
    v94 = OUTLINED_FUNCTION_34();
    __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
    v96 = OUTLINED_FUNCTION_33_44();
    v97(v96);
    swift_endAccess();
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
      v99 = v98;
    }

    else
    {
      v99 = MEMORY[0x1E69E7CD0];
    }

    sub_1E3BE0254();

    v118 = (v7)(v117);
    OUTLINED_FUNCTION_28_45(v118);
    if (v99 != 2)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_53();
    v119 += 60;
    v120 = *v119;
    if ((*v119)() == 1 && v15 <= 0.5)
    {
      OUTLINED_FUNCTION_10_53();
      v126 = *(v125 + 488);
      v127 = 0;
LABEL_74:
      v126(v127);
      goto LABEL_29;
    }

    if (v120())
    {
LABEL_29:
      OUTLINED_FUNCTION_18_69();
      return;
    }

LABEL_68:
    if (v15 > 0.5)
    {
      OUTLINED_FUNCTION_10_53();
      v126 = *(v122 + 488);
      v127 = 1;
      goto LABEL_74;
    }

    goto LABEL_29;
  }

  v32 = v31;
  v33 = OUTLINED_FUNCTION_33_14();
  [v33 v34];
  v36 = v35;
  v38 = v37;
  v39 = OUTLINED_FUNCTION_33_14();
  [v39 v40];
  v42 = v41;
  v44 = v43;
  v129 = v32;
  if (sub_1E3BE1FBC(v129, v42, v44, v36, v38))
  {
    v45 = v7();
    v46 = *((*v5 & *v129) + 0x1F8);
    v47 = v46();
    sub_1E386ABC0(v47, v45);
    v49 = v48;
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      [v1 setEnabled_];
      [v1 setEnabled_];
      OUTLINED_FUNCTION_36_3();
      v53 = (*((*v5 & v52) + 0x158))();
      if (v53)
      {
        v55 = v54;
        ObjectType = swift_getObjectType();
        v56 = v49;
        v57 = v46();
        (*(v55 + 16))(v4, v57, v56, ObjectType, v55);

        v49 = v56;
        v53 = swift_unknownObjectRelease();
      }

      v58 = (v46)(v53);
      OUTLINED_FUNCTION_4_0();
      v59 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v59);
      OUTLINED_FUNCTION_5_10();
      v60 = swift_allocObject();
      v60[2] = v59;
      v60[3] = v129;
      v60[4] = v49;
      v61 = *((*v5 & *v4) + 0x360);
      v62 = v129;

      v61(v58, 1, sub_1E3BE5378, v60);
    }
  }

  [v129 center];
  v64 = v63;

  v65 = v19 + v64;
  [v129 center];
  v67 = v66;

  v68 = v21 + v67;
  [v129 setCenter_];

  v69 = OUTLINED_FUNCTION_33_14();
  [v69 v70];
  OUTLINED_FUNCTION_36_3();
  v72 = *((*v5 & v71) + 0x330);
  v73 = v72();
  v74 = sub_1E32AE9B0(v73);
  if (!v74)
  {
    v82 = v129;
LABEL_47:

    goto LABEL_48;
  }

  v75 = v74;
  v76 = 0;
  while (1)
  {
    if ((v73 & 0xC000000000000001) != 0)
    {
      v77 = OUTLINED_FUNCTION_67_0();
      v78 = MEMORY[0x1E6911E60](v77);
    }

    else
    {
      if (v76 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v78 = *(v73 + 8 * v76 + 32);
    }

    v79 = v78;
    if (v78 == v129)
    {

      goto LABEL_25;
    }

    [v78 frame];
    v134.x = v65;
    v134.y = v68;
    if (CGRectContainsPoint(v137, v134))
    {
      break;
    }

    [v79 frame];
    v135.x = v42;
    v135.y = v44;
    v80 = CGRectContainsPoint(v138, v135);

    if (v80)
    {
      goto LABEL_52;
    }

LABEL_25:
    v81 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return;
    }

    ++v76;
    v82 = v129;
    if (v81 == v75)
    {
      goto LABEL_47;
    }
  }

LABEL_52:

  v113 = (v72)(v112);
  sub_1E3BDF02C(v129, v113);
  OUTLINED_FUNCTION_68_19();
  if ((v79 & 1) == 0)
  {
    if ([objc_opt_self() isFeatureEnabled_])
    {
      if (!sub_1E3BDC148())
      {
        v131[0] = v76;
        v131[1] = v75;
        *&v131[2] = v42;
        *&v131[3] = v44;

        sub_1E4200524();

        goto LABEL_29;
      }
    }

    else
    {
      OUTLINED_FUNCTION_34();
      sub_1E3BE21C8();
    }
  }

LABEL_71:
  OUTLINED_FUNCTION_18_69();
}

BOOL sub_1E3BE1FBC(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  OUTLINED_FUNCTION_5_16();
  if (sub_1E3BDC148())
  {
    return 0;
  }

  v31 = a4;
  [v5 frame];
  OUTLINED_FUNCTION_24_57();
  v15 = v14;
  [a1 frame];
  v45.origin.x = v16;
  v45.origin.y = v17;
  v45.size.width = v18;
  v45.size.height = v19;
  v33.origin.x = a4;
  v33.origin.y = v8;
  v33.size.width = v9;
  v33.size.height = v15;
  v34 = CGRectIntersection(v33, v45);
  sub_1E3CEEAF4(v34.origin.x, v34.origin.y, v34.size.width, v34.size.height);
  OUTLINED_FUNCTION_42_44();
  v32 = sub_1E3CEEAF4(v20, v21, v22, v23);
  if (floor(v32) == floor(v8))
  {
    goto LABEL_4;
  }

  v35.origin.x = OUTLINED_FUNCTION_13_100();
  CGRectGetMinY(v35);
  OUTLINED_FUNCTION_42_44();
  if (CGRectGetMinY(v36) < v8)
  {
    v25 = a5 < -2000.0;
    goto LABEL_7;
  }

  v37.origin.x = OUTLINED_FUNCTION_13_100();
  CGRectGetMaxY(v37);
  OUTLINED_FUNCTION_42_44();
  if (v8 >= CGRectGetMaxY(v38))
  {
    v41.origin.x = OUTLINED_FUNCTION_13_100();
    CGRectGetMinX(v41);
    OUTLINED_FUNCTION_42_44();
    if (CGRectGetMinX(v42) < v8)
    {
      v25 = a4 < -2000.0;
LABEL_7:
      v24 = v25;
      goto LABEL_12;
    }

    v43.origin.x = OUTLINED_FUNCTION_13_100();
    MaxX = CGRectGetMaxX(v43);
    [a1 frame];
    if (MaxX >= CGRectGetMaxX(v44))
    {
LABEL_4:
      v24 = 0;
      goto LABEL_12;
    }

    v24 = v31 > 2000.0;
  }

  else
  {
    v24 = a5 > 2000.0;
  }

LABEL_12:
  [v5 frame];
  Width = CGRectGetWidth(v39);
  if (v7 <= 0.0 || Width <= v7)
  {
    return 1;
  }

  [v5 frame];
  Height = CGRectGetHeight(v40);
  if (v6 <= 0.0 || Height <= v6)
  {
    return 1;
  }

  if (v8 / v32 <= 0.75)
  {
    return v24;
  }

  return 0;
}

void sub_1E3BE21C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_gestureView);
  if (v1)
  {
    OUTLINED_FUNCTION_5_16();
    v3 = v2;
    v5 = v4;
    OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_containerViews, &v57);
    v6 = v1;
    sub_1E3BDE9C0(v3, v5);
    swift_endAccess();
    OUTLINED_FUNCTION_39();
    v7 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & v8) + 0x158))();
    if (v9)
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v0, v3, v5, ObjectType, v11);
      v9 = swift_unknownObjectRelease();
    }

    v54 = v5;
    v59 = (*((*v7 & *v0) + 0x3A8))(v9);
    v55 = v3;
    v56 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C410, &unk_1E42A6E10);
    OUTLINED_FUNCTION_46();
    sub_1E32752B0(v13, v14, &unk_1E42A6E10, v15);
    sub_1E38D2054(&v55, &v57);
    if (v58)
    {

LABEL_26:

      return;
    }

    OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews, &v57);
    v16 = v6;
    sub_1E3BE41D8(&v55, v16, &qword_1EE23AE80, 0x1E69DD250, &qword_1ECF34C08, &qword_1E42C1DB0);
    v17 = v55;
    swift_endAccess();

    if (![objc_opt_self() isFeatureEnabled_])
    {
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_4_0();
      v36 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v36);
      v37 = swift_allocObject();
      v38 = OUTLINED_FUNCTION_82_9(v37);
      v38[8] = v16;
      v38[9] = v36;
      OUTLINED_FUNCTION_4_0();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v39);
      OUTLINED_FUNCTION_2_4();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v16;
      v6 = v16;

      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();

      goto LABEL_26;
    }

    v52 = v16;
    OUTLINED_FUNCTION_10_53();
    v19 = (*(v18 + 264))();
    v20 = v19 + 32;
    v21 = sub_1E32AE9B0(v19);
    v22 = 0;
    v23 = (v19 & 0xC000000000000001);
    v53 = v19;
    v24 = v19 & 0xFFFFFFFFFFFFFF8;
    v25 = MEMORY[0x1E69E7CC0];
    v26 = v54;
    while (v21 != v22)
    {
      if (v23)
      {
        v27 = MEMORY[0x1E6911E60](v22, v53);
      }

      else
      {
        if (v22 >= *(v24 + 16))
        {
          goto LABEL_35;
        }

        v27 = *(v20 + 8 * v22);
      }

      v28 = v27;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      if (v26 == v22 || v3 == v22)
      {

        ++v22;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E3BE2F08(0, *(v25 + 16) + 1, 1);
          v26 = v54;
          v25 = v57;
        }

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v35 = v32 + 1;
          v51 = v32;
          sub_1E3BE2F08((v31 > 1), v32 + 1, 1);
          v33 = v35;
          v32 = v51;
          v26 = v54;
          v25 = v57;
        }

        *(v25 + 16) = v33;
        v34 = v25 + 16 * v32;
        *(v34 + 32) = v22;
        *(v34 + 40) = v28;
        ++v22;
      }
    }

    v41 = *(v25 + 16);
    if (v41)
    {
      v57 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      v42 = 40;
      v43 = v52;
      do
      {
        v23 = *(v25 + v42);
        sub_1E4207544();
        v3 = *(v57 + 16);
        sub_1E4207584();
        OUTLINED_FUNCTION_39_3();
        sub_1E4207594();
        sub_1E4207554();
        v42 += 16;
        --v41;
      }

      while (v41);

      v44 = v57;
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
      v43 = v52;
    }

    sub_1E3BE27E0(v44);
    v46 = v45;
    OUTLINED_FUNCTION_67_6();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_82_9(v47)[8] = v43;
    OUTLINED_FUNCTION_4_0();
    v48 = swift_allocObject();
    OUTLINED_FUNCTION_45_38(v48);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v49 = swift_allocObject();
    *(v49 + 16) = v23;
    *(v49 + 24) = v43;
    v50 = v43;

    sub_1E3BDFE50(v46, sub_1E3BE4594, v3, sub_1E3BE45C0, v49);
  }
}

void sub_1E3BE27E0(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  v4 = sub_1E32ADE7C(&qword_1ECF34C10, &qword_1ECF2C3E0, 0x1E6958608, MEMORY[0x1E69E81B8]);
  v8[1] = MEMORY[0x1E6910FA0](v2, v3, v4);
  v5 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3BE41D8(v8, v7, &qword_1ECF2C3E0, 0x1E6958608, &unk_1ECF34C18, &unk_1E42C1DB8);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1E3BE2938()
{
  OUTLINED_FUNCTION_4_133();
  if (((*(v0 + 424))() & 1) == 0)
  {
    v7 = sub_1E3BDB1AC();
    OUTLINED_FUNCTION_4_133();
    v8 += 33;
    v9 = *v8;
    v10 = (*v8)();
    v11 = sub_1E32AE9B0(v10);

    if (v7)
    {
      if (v11 == 2 || (v14 = (v9)(v12), sub_1E32AE9B0(v14), OUTLINED_FUNCTION_87_0(), v15 = , v7 >= 2 && (OUTLINED_FUNCTION_4_133(), v15 = (*(v16 + 480))(), v15 == 1)) || (v17 = (v9)(v15), sub_1E32AE9B0(v17), OUTLINED_FUNCTION_87_0(), , v7 == 3) && (OUTLINED_FUNCTION_4_133(), !(*(v18 + 480))()))
      {
        v1 = 1;
        goto LABEL_3;
      }
    }

    else if (v11 == 2)
    {
      OUTLINED_FUNCTION_4_133();
      v1 = (*(v13 + 400))();
      goto LABEL_3;
    }
  }

  v1 = 0;
LABEL_3:
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1 & 1;
  OUTLINED_FUNCTION_0_155();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v19[2] = v5;
  v19[3] = &block_descriptor_209;
  v6 = _Block_copy(v19);

  [v2 animateWithDuration:v6 animations:0.25];
  _Block_release(v6);
}

id sub_1E3BE2BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3BE2DCC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_5();
    v10 = v9 - v8;
    (*(v7 + 16))(v9 - v8);
    v11 = sub_1E4207994();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

void *sub_1E3BE2F08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3BE2F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3BE2F28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C20, &qword_1E42C1DC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34C28, &qword_1E42C1DC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3BE3058()
{
  OUTLINED_FUNCTION_194();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (sub_1E32AE9B0(v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
    v10 = sub_1E4207464();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  v30 = sub_1E32AE9B0(v9);
  if (v30)
  {
    v11 = 0;
    v12 = v10 + 56;
    v28 = v9;
    v29 = v9 & 0xC000000000000001;
    v27 = v9 + 32;
    while (1)
    {
      sub_1E34AF4E4(v11, v29 == 0, v9);
      v13 = v29 ? MEMORY[0x1E6911E60](v11, v9) : *(v27 + 8 * v11);
      v14 = v13;
      v15 = __OFADD__(v11++, 1);
      if (v15)
      {
        break;
      }

      sub_1E4206F54();
      OUTLINED_FUNCTION_38_28();
      v18 = ~v17;
      while (1)
      {
        v19 = v16 & v18;
        v20 = (v16 & v18) >> 6;
        v21 = *(v12 + 8 * v20);
        v22 = 1 << (v16 & v18);
        if ((v22 & v21) == 0)
        {
          break;
        }

        sub_1E3280A90(0, v3, v1);
        v23 = *(*(v10 + 48) + 8 * v19);
        v24 = sub_1E4206F64();

        if (v24)
        {

          goto LABEL_17;
        }

        v16 = v19 + 1;
      }

      *(v12 + 8 * v20) = v22 | v21;
      *(*(v10 + 48) + 8 * v19) = v14;
      v25 = *(v10 + 16);
      v15 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v15)
      {
        goto LABEL_20;
      }

      *(v10 + 16) = v26;
LABEL_17:
      v9 = v28;
      if (v11 == v30)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_192();
  }
}

uint64_t type metadata accessor for MultiPlayerView(uint64_t a1)
{
  result = qword_1ECF599B0;
  if (!qword_1ECF599B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BE3244()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_17_4();
    sub_1E3BE21C8();
  }
}

void sub_1E3BE32B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298880;
    *(inited + 32) = v1;
    if (sub_1E32AE9B0(inited))
    {
      v6 = v1;
      sub_1E3BE3058();
    }

    else
    {
      swift_setDeallocating();
      v7 = v1;
      sub_1E377D458();
    }

    sub_1E3BE0254();
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 layer];

    [v10 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3BE3404()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3BE2938();
  }

  if (v1)
  {
    v1();
  }
}

id sub_1E3BE3470()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setAlpha_];
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  *&v4 = OUTLINED_FUNCTION_61_17(MEMORY[0x1E695EFD0]).n128_u64[0];
  return [v1 v5];
}

void sub_1E3BE3504()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 setAlpha_];
    v4 = OUTLINED_FUNCTION_6();
    [v5 v6];
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      sub_1E3BE3058();
    }

    sub_1E3BE0254();
  }
}

id sub_1E3BE35F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = [*(v0 + 16) view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    result = [v1 removeFromSuperview];
    if (v2)
    {
      return v2(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

void sub_1E3BE36D4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v6 = (*(v5 + 272))();
      v7 = v6;
      if (!(v6 >> 62))
      {

        return;
      }

      if (v6 >> 62 == 1)
      {

        sub_1E3BDFB84();
      }

      else
      {
        OUTLINED_FUNCTION_12_5();
        v9 = (*(v8 + 376))();
        if (v9)
        {
          v11 = v9;
          v12 = v10;
          OUTLINED_FUNCTION_12_5();
          v14 = (*(v13 + 264))();
          v15 = *((*v4 & *v3) + 0x1F8);
          v16 = v15();
          sub_1E386ABC0(v16, v14);
          v18 = v17;
          v20 = v19;

          if ((v20 & 1) == 0)
          {
            v22 = (v15)(v21);
            v11(v22, v18);

            v23 = v15();
            sub_1E3BDBFBC(v23);
            sub_1E3BE0A8C(v3);

            sub_1E34AF594(v11, v12);
            return;
          }

          sub_1E34AF594(v11, v12);
        }
      }
    }
  }
}

void sub_1E3BE3928(void *a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    v5 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    (*(v6 + 264))();
    v7 = OUTLINED_FUNCTION_67_0();
    sub_1E386ABC0(v7, v8);
    OUTLINED_FUNCTION_68_19();
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_5();
      if ((*(v9 + 344))())
      {
        swift_getObjectType();
        v10 = OUTLINED_FUNCTION_27_0();
        v11(v10);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_4_0();
      v12 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v12);
      OUTLINED_FUNCTION_5_10();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = a1;
      v13[4] = v2;
      v14 = *((*v5 & *v1) + 0x360);

      v14(a1, 1, sub_1E3BE577C, v13);
    }
  }
}

void sub_1E3BE3AF8()
{
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_88_10();
    OUTLINED_FUNCTION_64();
    (*(v3 + 264))();
    v4 = OUTLINED_FUNCTION_67_0();
    sub_1E386ABC0(v4, v5);
    OUTLINED_FUNCTION_68_19();
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_5();
      v7 = (*(v6 + 456))();
      if (v7)
      {
        v9 = v7;
        v10 = v8;
        v11 = OUTLINED_FUNCTION_34();
        v9(v11);
        sub_1E34AF594(v9, v10);
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        sub_1E3FD93C0();
        OUTLINED_FUNCTION_21();
        (*(v14 + 680))(1, 1);
      }
    }
  }
}

void sub_1E3BE3C6C(uint64_t result, uint64_t a2, char *a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_1E32AE9B0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1E32AE9B0(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3797CDC(v12, 1);

  sub_1E3BE4094(result, a2, 1, a3);
}

void sub_1E3BE3D24(uint64_t a1)
{
  sub_1E3BE5DEC(319, &qword_1ECF34BF0, &type metadata for MultiPlayerView.Mode, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1E3BE3EE0(319);
    if (v2 <= 0x3F)
    {
      sub_1E3BE3F38(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E3BE3EE0(uint64_t a1)
{
  if (!qword_1ECF34BF8)
  {
    type metadata accessor for MultiPlayerViewControllerPlayerDistribution(255);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF34BF8);
    }
  }
}

void sub_1E3BE3F38(uint64_t a1)
{
  if (!qword_1ECF34C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34B88, &qword_1E42C1B60);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF34C00);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_8VideosUI15MultiPlayerViewC4ModeO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1E3BE3FB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 125);
    }

    v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7D)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

void *sub_1E3BE4008(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_25_9(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void *sub_1E3BE4060(void *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return OUTLINED_FUNCTION_25_9(a1, v2);
}

void sub_1E3BE4094(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for MultiPlayerContainerView();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E3BE41D8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1E4207394();

    if (v17)
    {

      sub_1E3280A90(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v39;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1E3BE4648(v15, result + 1, a5, a6, a3, a4, v25, v26, v33, v34, v35, v36, v38, v39, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
        v28 = v27;
        v40 = v27;
        if (v27[3] <= v27[2])
        {
          sub_1E3BE4810();
          v28 = v40;
        }

        v29 = v16;
        sub_1E3BE49A4(v29, v28);

        *v11 = v28;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1E3280A90(0, a3, a4);
    sub_1E4206F54();
    OUTLINED_FUNCTION_38_28();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v41 = *v11;
        v30 = a2;
        sub_1E3BE4A24();
        *v11 = v41;
        *a1 = v30;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = sub_1E4206F64();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v31 = *(*(v14 + 48) + 8 * v22);
    *a1 = v31;
    v32 = v31;
    return 0;
  }

  return result;
}

void sub_1E3BE4430()
{
  v1 = *(v0 + 64);
  [v1 setFrame_];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298880;
    *(inited + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
    if (sub_1E32AE9B0(inited))
    {
      sub_1E3BE3058();
    }

    else
    {
      swift_setDeallocating();
      sub_1E377D458();
    }

    sub_1E3BE0254();
  }
}

void sub_1E3BE45C4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    OUTLINED_FUNCTION_11_3(Strong + OBJC_IVAR____TtC8VideosUI15MultiPlayerView_animatingViews, &v5);
    v4 = sub_1E3BE4E30(v1);
    swift_endAccess();
  }
}

void sub_1E3BE4648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_194();
  if (v28)
  {
    v29 = v27;
    v30 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v31 = sub_1E4207454();
    v42 = v31;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        goto LABEL_18;
      }

      sub_1E3280A90(0, v30, v29);
      swift_dynamicCast();
      if (*(v31 + 24) <= *(v31 + 16))
      {
        sub_1E3BE4810();
      }

      v31 = v42;
      v32 = sub_1E4206F54();
      v33 = v42 + 56;
      v34 = -1 << *(v42 + 32);
      v35 = v32 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v42 + 56 + 8 * (v35 >> 6))) == 0)
      {
        break;
      }

      v37 = __clz(__rbit64((-1 << v35) & ~*(v42 + 56 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      *(*(v42 + 48) + 8 * v37) = a11;
      ++*(v42 + 16);
    }

    v38 = 0;
    v39 = (63 - v34) >> 6;
    while (++v36 != v39 || (v38 & 1) == 0)
    {
      v40 = v36 == v39;
      if (v36 == v39)
      {
        v36 = 0;
      }

      v38 |= v40;
      v41 = *(v33 + 8 * v36);
      if (v41 != -1)
      {
        v37 = __clz(__rbit64(~v41)) + (v36 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    OUTLINED_FUNCTION_192();
  }
}

void sub_1E3BE4810()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_41_40(v2, v3, v4);
  OUTLINED_FUNCTION_67_0();
  v5 = sub_1E4207444();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v14;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_40_7();
        v11 = v16 & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v1 + 32);
    if (v25 >= 64)
    {
      sub_1E373CBF0(0, (v25 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_38_28();
      *v8 = v26;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93_8();
LABEL_12:
    v17 = sub_1E4206F54() & ~(-1 << *(v6 + 32));
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_91_9();
LABEL_21:
    OUTLINED_FUNCTION_84_12();
    *(v13 + v22) |= v23;
    OUTLINED_FUNCTION_59_18(v24);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_89_7();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v13 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_85_11();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}