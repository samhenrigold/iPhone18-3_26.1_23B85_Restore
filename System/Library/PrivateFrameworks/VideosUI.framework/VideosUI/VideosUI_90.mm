void sub_1E3D8889C(uint64_t a1)
{
  sub_1E3D88AF4(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_5_166();
    sub_1E3D88AF4(319, v2, v3, MEMORY[0x1E697DCC0]);
    if (v4 <= 0x3F)
    {
      type metadata accessor for ScoreboardViewModel(319);
      if (v5 <= 0x3F)
      {
        sub_1E374A270();
        if (v6 <= 0x3F)
        {
          sub_1E374A2C0(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3D889E8(uint64_t a1)
{
  OUTLINED_FUNCTION_5_166();
  sub_1E3D88AF4(319, v1, v2, MEMORY[0x1E697DCC0]);
  if (v3 <= 0x3F)
  {
    type metadata accessor for ScoreboardViewModel(319);
    if (v4 <= 0x3F)
    {
      sub_1E374A2C0(319);
      if (v5 <= 0x3F)
      {
        sub_1E3D88AF4(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3D88AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3D88B58()
{
  result = qword_1EE2897D0;
  if (!qword_1EE2897D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF382B8, &unk_1E42CFDA8);
    sub_1E3D88BFC(&qword_1EE2885B8, &qword_1ECF382A8, &qword_1E42CFD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897D0);
  }

  return result;
}

uint64_t sub_1E3D88BFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

double sub_1E3D88C60(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 1;
  *(a1 + 128) = xmmword_1E42C0270;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_1E3D88C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3D88CD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3D88D2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3D88D84(uint64_t a1)
{
  v1 = a1;
  switch(a1)
  {
    case 4:
      goto LABEL_8;
    default:
      v2 = sub_1E42079A4();

      if (v2)
      {
        return 1;
      }

      if (sub_1E3D88F04(v1) == 0x7974536B63697262 && v3 == 0xEB0000000033656CLL)
      {
LABEL_8:

        return 1;
      }

      else
      {
        v5 = sub_1E42079A4();

        return v5 & 1;
      }
  }
}

unint64_t sub_1E3D88EB8()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D88F04(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6964726FLL;
      break;
    case 2:
      result = 0x7972617262696CLL;
      break;
    case 3:
      result = 0x7974536B63697262;
      break;
    case 4:
      result = 0x7974536B63697262;
      break;
    case 5:
      result = 0x7974536B63697262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3D88FE4(char a1)
{
  sub_1E4207B44();
  sub_1E3D88F04(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D89050(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D89158(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D88F04(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3D891B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D88EB8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D891E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D88F04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1E3D89214(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 160, a2);
  *(v2 + 160) = a1;

  return result;
}

double sub_1E3D8927C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 168, a2);
  *(v2 + 168) = a1;

  return result;
}

uint64_t sub_1E3D892B8()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 176) = v1;
  }

  return v1;
}

double sub_1E3D8934C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 184, a2);
  *(v2 + 184) = a1;

  return result;
}

double sub_1E3D893B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 192, a2);
  *(v2 + 192) = a1;

  return result;
}

uint64_t sub_1E3D893F0()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    type metadata accessor for ViewGradientLayout(0);
    v1 = sub_1E40C3088();
    *(v0 + 208) = v1;
  }

  return v1;
}

uint64_t sub_1E3D89464()
{
  if (!*(v0 + 216))
  {
    v2 = v0;
    type metadata accessor for ViewGradientLayout(0);
    v1 = sub_1E40C3088();
    (*(*v1 + 1776))(1);
    OUTLINED_FUNCTION_13();
    v4 = *(v3 + 1864);
    v5 = v4();
    v6 = OUTLINED_FUNCTION_36_53(v5);
    if (v6 == 0x746C7561666564 && v7 == 0xE700000000000000)
    {
    }

    else
    {
      v9 = OUTLINED_FUNCTION_38_23(v6, v0, 0x746C7561666564);

      if ((v9 & 1) == 0)
      {
        OUTLINED_FUNCTION_34_60();
        v10 = v4();
        v11 = OUTLINED_FUNCTION_36_53(v10);
        if (v11 == v9 && v12 == 0xE700000000000000)
        {
        }

        else
        {
          v14 = OUTLINED_FUNCTION_38_23(v11, v0, v9);

          if ((v14 & 1) == 0)
          {
LABEL_17:
            OUTLINED_FUNCTION_111();
            (*(v29 + 1728))(0, 0, 0);
            OUTLINED_FUNCTION_9_2();
            (*(v30 + 1752))(0, 0x3FF0000000000000, 0);
            *(v2 + 216) = v1;

            goto LABEL_18;
          }
        }

        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v33 = OUTLINED_FUNCTION_26_11(v32);
        *(v33 + 16) = xmmword_1E42A76D0;
        v34 = [objc_opt_self() blackColor];
        v35 = OUTLINED_FUNCTION_30_65(v34);

        *(v33 + 32) = v35;
        v36 = OUTLINED_FUNCTION_22_65();
        OUTLINED_FUNCTION_18_74();
        v39 = [v37 v38];

        *(v33 + 40) = v39;
        v40 = OUTLINED_FUNCTION_22_65();
        OUTLINED_FUNCTION_18_74();
        v43 = [v41 v42];

        *(v33 + 48) = v43;
        v44 = OUTLINED_FUNCTION_22_65();
        OUTLINED_FUNCTION_18_74();
        v47 = [v45 v46];

        *(v33 + 56) = v47;
        v48 = OUTLINED_FUNCTION_22_65();
        v49 = [v48 colorWithAlphaComponent_];

        *(v33 + 64) = v49;
        (*(*v1 + 1800))(v33);
LABEL_16:
        OUTLINED_FUNCTION_111();
        (*(v28 + 1824))();
        goto LABEL_17;
      }
    }

    v15 = objc_opt_self();
    v16 = [v15 blackColor];
    v51 = [v16 colorWithAlphaComponent_];

    v17 = [v15 blackColor];
    v50 = [v17 colorWithAlphaComponent_];

    v18 = OUTLINED_FUNCTION_33_62();
    v19 = [v18 colorWithAlphaComponent_];

    v20 = OUTLINED_FUNCTION_33_62();
    v21 = [v20 colorWithAlphaComponent_];

    v22 = OUTLINED_FUNCTION_33_62();
    v23 = [v22 colorWithAlphaComponent_];

    v24 = OUTLINED_FUNCTION_33_62();
    v25 = [v24 colorWithAlphaComponent_];

    v26 = OUTLINED_FUNCTION_33_62();
    v27 = [v26 colorWithAlphaComponent_];

    goto LABEL_16;
  }

  v1 = *(v0 + 216);
LABEL_18:

  return v1;
}

uint64_t (*sub_1E3D899BC(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E3D89464();
  return sub_1E3D89A04;
}

double sub_1E3D89A04(void *a1)
{
  *(a1[1] + 216) = *a1;

  return result;
}

double sub_1E3D89A40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 224, a2);
  *(v2 + 224) = a1;

  return result;
}

double sub_1E3D89AA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 232, a2);
  *(v2 + 232) = a1;

  return result;
}

uint64_t sub_1E3D89AE4()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 240) = v1;
  }

  return v1;
}

double sub_1E3D89B4C()
{
  if ((*(v0 + 280) & 1) == 0)
  {
    return *(v0 + 248);
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1560))();
  v3 = sub_1E3A24FDC(v2);
  v4 = 8.0;
  *(v0 + 248) = 0x4026000000000000;
  if ((v3 & 1) == 0)
  {
    v4 = 12.0;
  }

  *(v0 + 256) = v4;
  *(v0 + 264) = 0x4026000000000000;
  *(v0 + 272) = v4;
  *(v0 + 280) = 0;
  return 11.0;
}

void sub_1E3D89BD4(double a1, double a2, double a3, double a4)
{
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;
  *(v4 + 264) = a3;
  *(v4 + 272) = a4;
  *(v4 + 280) = 0;
}

uint64_t sub_1E3D89C10(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_14_0((v6 + 36), a6);
  v6[36] = a1;
  v6[37] = a2;
  v6[38] = a3;
  v6[39] = a4;
  return result;
}

void sub_1E3D89C5C()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 2224))();
  OUTLINED_FUNCTION_8();
  if (v4)
  {
    (*(v3 + 752))(0);
    OUTLINED_FUNCTION_111();
    (*(v5 + 872))(0);
    v483 = 0u;
    v484 = 0u;
    LOBYTE(v485) = 1;
    (*(*v0 + 560))(&v483);
    v6 = sub_1E3C6DC70();
    v7 = v6[1];
    v479 = *v6;
    v480 = v7;
    LOBYTE(v481) = 0;
    OUTLINED_FUNCTION_111();
    (*(v8 + 184))(&v479);
    v9 = *sub_1E3C6DC7C();
    (*(*v0 + 1160))(v9, 0);
    OUTLINED_FUNCTION_9_2();
    v11 = (*(v10 + 1936))();
    sub_1E3C6DC94(v11);

    OUTLINED_FUNCTION_9_2();
    (*(v12 + 1984))();
    sub_1E3C6DE18();

    OUTLINED_FUNCTION_9_2();
    v14 = (*(v13 + 2008))();
    sub_1E3C6E604(v14);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_10_7();
    v16(v15);
    OUTLINED_FUNCTION_9_2();
    (*(v17 + 256))(0x7FF0000000000000, 0);
    OUTLINED_FUNCTION_9_2();
    v18 = OUTLINED_FUNCTION_10_7();
    v19(v18);
    OUTLINED_FUNCTION_9_2();
    (*(v20 + 360))(0x7FF0000000000000, 0);
    v21 = *sub_1E3E5FB0C();
    v22 = *(*v1 + 752);
    v23 = v21;
    v22(v21);
    v24 = *sub_1E3E5FB88();
    v25 = *(*v1 + 872);
    v26 = v24;
    v25(v24);
    OUTLINED_FUNCTION_9_2();
    v28 = (*(v27 + 2008))();
    v29 = *sub_1E3E5FDEC();
    v30 = *(*v28 + 680);
    v31 = v29;
    v30(v29);
  }

  type metadata accessor for StandardLockupCellLayout();
  sub_1E3D8D0C0(v1[13]);
  OUTLINED_FUNCTION_9_2();
  (*(v32 + 2256))(2);

  v33 = [objc_opt_self() blackColor];
  v34 = v1[18];
  OUTLINED_FUNCTION_36();
  (*(v35 + 1776))(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E42A1E20;
  *(v36 + 32) = [v33 colorWithAlphaComponent_];
  *(v36 + 40) = [v33 colorWithAlphaComponent_];
  *(v36 + 48) = [v33 colorWithAlphaComponent_];
  *(v36 + 56) = [v33 colorWithAlphaComponent_];
  (*(*v34 + 1728))(0x3FF0000000000000, 0, 0);
  OUTLINED_FUNCTION_36();
  (*(v37 + 1848))(0x4034000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v38 + 1872))(0x404E000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v39 + 1800))(v36);
  OUTLINED_FUNCTION_36();
  (*(v40 + 1824))(&unk_1F5D844A8);

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v42 = OUTLINED_FUNCTION_26_11(v41);
  *(v42 + 16) = xmmword_1E42A76D0;
  v43 = [objc_opt_self() blackColor];
  OUTLINED_FUNCTION_44_46();
  v46 = [v44 v45];

  *(v42 + 32) = v46;
  v47 = OUTLINED_FUNCTION_48_36();
  OUTLINED_FUNCTION_44_46();
  v50 = [v48 v49];

  *(v42 + 40) = v50;
  v51 = OUTLINED_FUNCTION_48_36();
  OUTLINED_FUNCTION_44_46();
  v54 = [v52 v53];

  *(v42 + 48) = v54;
  v55 = OUTLINED_FUNCTION_48_36();
  OUTLINED_FUNCTION_44_46();
  v58 = [v56 v57];

  *(v42 + 56) = v58;
  *(v42 + 64) = OUTLINED_FUNCTION_48_36();
  v59 = *(*v1 + 2056);
  v59();
  OUTLINED_FUNCTION_2_1();
  (*(v60 + 1728))(0, 0, 0);

  (v59)(v61);
  OUTLINED_FUNCTION_2_1();
  (*(v62 + 1752))(0, 0x3FF0000000000000, 0);

  (v59)(v63);
  OUTLINED_FUNCTION_2_1();
  (*(v64 + 1776))(1);

  (v59)(v65);
  OUTLINED_FUNCTION_2_1();
  (*(v66 + 1800))(v42);

  (v59)(v67);
  OUTLINED_FUNCTION_2_1();
  (*(v68 + 1824))(&unk_1F5D844E8);

  OUTLINED_FUNCTION_9_2();
  v70 = (*(v69 + 2224))();
  v71 = v1[14];
  OUTLINED_FUNCTION_3_11();
  v73 = (*(v72 + 432))();
  if ((v70 & 1) == 0)
  {
    if (v74)
    {
      v73 = *sub_1E418A500();
    }

    (*(*v71 + 440))(v73, 0);
    OUTLINED_FUNCTION_3_11();
    (*(v76 + 1352))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v77 + 1328))(1);
    OUTLINED_FUNCTION_9_2();
    v84 = (*(v78 + 1864))(v79, v80, v81, v82, v83);
    v85 = OUTLINED_FUNCTION_36_53(v84);
    if (v85 == 0x746C7561666564 && v86 == 0xE700000000000000)
    {
    }

    else
    {
      v88 = OUTLINED_FUNCTION_38_23(v85, v1, 0x746C7561666564);

      if ((v88 & 1) == 0)
      {
        v89 = *sub_1E3BD2884();
LABEL_20:
        (*(*v71 + 1280))(v89, 0);
        sub_1E39537A8();
        __src[0] = v111;
        __src[1] = v112;
        __src[2] = v113;
        __src[3] = v114;
        LOBYTE(__src[4]) = 0;
        (*(*v71 + 560))(__src);
        OUTLINED_FUNCTION_3_11();
        (*(v115 + 512))(2);
        v116 = *sub_1E3E5FB0C();
        v117 = *(*v71 + 776);
        v118 = v116;
        v117(v116);
        OUTLINED_FUNCTION_3_11();
        v120 = (*(v119 + 1808))(3);
        v120.n128_u64[0] = 1.0;
        __dst[0] = j__OUTLINED_FUNCTION_7_78(v120);
        __dst[1] = v121;
        __dst[2] = v122;
        __dst[3] = v123;
        LOBYTE(__dst[4]) = 0;
        (*(*v71 + 1856))(__dst);
        sub_1E3755B54();
        v124 = [objc_allocWithZone(OUTLINED_FUNCTION_43_48()) initWithWhite:0.0 alpha:0.08];
        v125 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
        v126 = sub_1E3E5F2F8(v124, v125);

        OUTLINED_FUNCTION_3_11();
        (*(v127 + 1832))(v126);
        goto LABEL_23;
      }
    }

    v89 = 0x4043000000000000;
    goto LABEL_20;
  }

  if (v74)
  {
    v75 = *sub_1E418A500();
  }

  else
  {
    v75 = *&v73;
  }

  sub_1E3C6DFCC(v75);
  OUTLINED_FUNCTION_111();
  v90 += 239;
  v91 = *v90;
  v97 = (*v90)(v92, v93, v94, v95, v96);
  v102 = v91(v97, v98, v99, v100, v101);
  v107 = (*(*v102 + 432))(v102, v103, v104, v105, v106);
  v109 = v108;

  if (v109)
  {
    v110 = *sub_1E418A500();
  }

  else
  {
    v110 = *&v107;
  }

  sub_1E3C6DFCC(v110);

LABEL_23:
  OUTLINED_FUNCTION_111();
  v128 += 233;
  v129 = *v128;
  v130 = (*v128)();
  v131 = sub_1E3D88F04(v130);
  v133 = v131 == 0x746C7561666564 && v132 == 0xE700000000000000;
  if (v133 || ((OUTLINED_FUNCTION_38_23(v131, v132, 0x746C7561666564), OUTLINED_FUNCTION_11_5(), v134 = , v135 = (v129)(v134), v136 = sub_1E3D88F04(v135), v136 == 0x6C616E6964726FLL) ? (v138 = v137 == 0xE700000000000000) : (v138 = 0), v138 || ((OUTLINED_FUNCTION_38_23(v136, v137, 0x6C616E6964726FLL), OUTLINED_FUNCTION_11_5(), v139 = , v140 = (v129)(v139), sub_1E3D88F04(v140) == 0x7974536B63697262) ? (v142 = v141 == 0xEB0000000031656CLL) : (v142 = 0), v142)))
  {

    goto LABEL_47;
  }

  v143 = sub_1E42079A4();

  if (v143)
  {
LABEL_47:
    v166 = v1[16];
    v167 = sub_1E3C8BE74();
    sub_1E3DEFBE8(1, v167);
    OUTLINED_FUNCTION_13();
    (*(v168 + 1696))(22);
    OUTLINED_FUNCTION_9_2();
    v170 = (*(v169 + 1864))();
    v171 = OUTLINED_FUNCTION_36_53(v170);
    if (v171 == 0x6C616E6964726FLL && v172 == 0xE700000000000000)
    {

      v175 = 1;
    }

    else
    {
      v174 = OUTLINED_FUNCTION_21_85(v171);

      if (v174)
      {
        v175 = 1;
      }

      else
      {
        v175 = 2;
      }
    }

    (*(*v166 + 2056))(v175, 0);
    OUTLINED_FUNCTION_13();
    v177 = *(v176 + 2080);
    v178 = OUTLINED_FUNCTION_10_7();
    v177(v178);
    v179 = OUTLINED_FUNCTION_10_7();
    v177(v179);
    OUTLINED_FUNCTION_13();
    (*(v180 + 1720))(11);
    OUTLINED_FUNCTION_13();
    (*(v181 + 1984))(1);
    OUTLINED_FUNCTION_9_2();
    v183 = *(v182 + 1960);
    v183();
    OUTLINED_FUNCTION_2_1();
    (*(v184 + 1984))(1);

    (v183)(v185);
    OUTLINED_FUNCTION_2_1();
    v186 = OUTLINED_FUNCTION_8_5();
    v187(v186);

    (v183)(v188);
    OUTLINED_FUNCTION_2_1();
    (*(v189 + 2128))(0x3FF0000000000000, 0);

    (v183)(v190);
    OUTLINED_FUNCTION_2_1();
    (*(v191 + 656))(0);

    (v183)(v192);
    OUTLINED_FUNCTION_43_48();
    v193 = [objc_opt_self() whiteColor];
    OUTLINED_FUNCTION_36();
    (*(v194 + 680))();

    (v183)(v195);
    OUTLINED_FUNCTION_2_1();
    v196 = OUTLINED_FUNCTION_10_7();
    v197(v196);

    (v183)(v198);
    OUTLINED_FUNCTION_42_56();
    OUTLINED_FUNCTION_41_51();
    v515 = 0x4040000000000000;
    LOBYTE(v516) = 0;
    OUTLINED_FUNCTION_40_52(0x403D000000000000uLL);
    OUTLINED_FUNCTION_29_75();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_168();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_14_126();
    OUTLINED_FUNCTION_6_157(v199, v200, v201, v202, v203, v204, v205, v206, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_22_74(v207, v208, v209, v210, v211, v212, v213, v214, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v223 = OUTLINED_FUNCTION_13_127(v215, v216, v217, v218, v219, v220, v221, v222, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    v224(v223, 8);

    (v183)(v225);
    LOBYTE(__dst[0]) = 7;
    v487[0] = 9;
    LOBYTE(v515) = 7;
    LOBYTE(v510) = 7;
    OUTLINED_FUNCTION_29_75();
    sub_1E3C2FC98();
    v226 = OUTLINED_FUNCTION_46_46();
    LOBYTE(v496) = v499[0];
    OUTLINED_FUNCTION_6_157(v226, v227, v228, v229, v230, v231, v232, v233, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v242 = OUTLINED_FUNCTION_13_127(v234, v235, v236, v237, v238, v239, v240, v241, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    v243(v242, 48);

    (v183)(v244);
    LOBYTE(__dst[0]) = 10;
    v487[0] = 6;
    LOBYTE(v515) = 11;
    LOBYTE(v510) = 6;
    OUTLINED_FUNCTION_29_75();
    sub_1E3C2FC98();
    v245 = OUTLINED_FUNCTION_46_46();
    LOBYTE(v496) = v499[0];
    OUTLINED_FUNCTION_6_157(v245, v246, v247, v248, v249, v250, v251, v252, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v261 = OUTLINED_FUNCTION_13_127(v253, v254, v255, v256, v257, v258, v259, v260, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    v263 = 54;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_111();
  v144 += 242;
  v145 = *v144;
  (*v144)();
  OUTLINED_FUNCTION_30();
  (*(v146 + 1864))(3);

  (v145)(v147);
  OUTLINED_FUNCTION_2_1();
  v148 = OUTLINED_FUNCTION_10_7();
  v149(v148);

  (v145)(v150);
  OUTLINED_FUNCTION_2_1();
  v151 = OUTLINED_FUNCTION_10_7();
  v152(v151);

  (v145)(v153);
  OUTLINED_FUNCTION_2_1();
  v154 = OUTLINED_FUNCTION_10_7();
  v155(v154);

  OUTLINED_FUNCTION_9_2();
  v157 = *(v156 + 1864);
  v158 = v157();
  if (OUTLINED_FUNCTION_36_53(v158) == 0x7974536B63697262 && v159 == 0xEB0000000032656CLL)
  {

    goto LABEL_59;
  }

  v161 = sub_1E42079A4();

  if (v161)
  {
LABEL_59:
    (v145)(v162);
    OUTLINED_FUNCTION_30();
    (*(v366 + 1984))(5);

    (v145)(v367);
    OUTLINED_FUNCTION_2_1();
    (*(v368 + 2056))(1, 0);

    (v145)(v369);
    OUTLINED_FUNCTION_2_1();
    v370 = OUTLINED_FUNCTION_8_5();
    v371(v370);

    (v145)(v372);
    OUTLINED_FUNCTION_2_1();
    v373 = OUTLINED_FUNCTION_8_5();
    v374(v373);

    (v145)(v375);
    OUTLINED_FUNCTION_2_1();
    (*(v376 + 2128))(0x3FECCCCCCCCCCCCDLL, 0);

    (v145)(v377);
    OUTLINED_FUNCTION_43_48();
    v378 = [objc_opt_self() whiteColor];
    OUTLINED_FUNCTION_36();
    (*(v379 + 680))();

    (v145)(v380);
    LOBYTE(__dst[0]) = 2;
    v487[0] = 1;
    LOBYTE(v515) = 2;
    LOBYTE(v510) = 6;
    LOBYTE(v505) = 6;
    OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_38_47();
    OUTLINED_FUNCTION_1_212(v381, v382, v383, v384, v385, v386, v387, v388, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v397 = OUTLINED_FUNCTION_13_127(v389, v390, v391, v392, v393, v394, v395, v396, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    v398(v397, 48);

    (v145)(v399);
    LOBYTE(__dst[0]) = 10;
    v487[0] = 10;
    LOBYTE(v515) = 6;
    LOBYTE(v510) = 6;
    LOBYTE(v505) = 6;
    OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_38_47();
    OUTLINED_FUNCTION_1_212(v400, v401, v402, v403, v404, v405, v406, v407, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v416 = OUTLINED_FUNCTION_13_127(v408, v409, v410, v411, v412, v413, v414, v415, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    v417(v416, 54);

    (v145)(v418);
    LOBYTE(__dst[0]) = 5;
    v487[0] = 3;
    LOBYTE(v515) = 3;
    sub_1E3C3DE00();
    LOBYTE(v505) = v510;
    OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_38_47();
    OUTLINED_FUNCTION_37_57();
    sub_1E3C3DE00();
    LOBYTE(v494) = v496;
    sub_1E3C2FCB8(__dst, v487, &v515, &v505, v499, &v494, &unk_1F5D54B88, __src);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v262 = *(v419 + 1600);
    v261 = __dst;
LABEL_60:
    v263 = 55;
LABEL_56:
    v262(v261, v263);

    goto LABEL_57;
  }

  v163 = (v157)(v162);
  if (OUTLINED_FUNCTION_36_53(v163) == 0x7974536B63697262 && v164 == 0xEB0000000033656CLL)
  {

    (v145)(v420);
    OUTLINED_FUNCTION_30();
    (*(v421 + 1984))(5);

    (v145)(v422);
    v515 = 3;
    LOBYTE(v516) = 0;
    OUTLINED_FUNCTION_42_56();
    v423 = MEMORY[0x1E69E6810];
    sub_1E3C3DE00();
    v510 = *v487;
    LOBYTE(v511) = v487[8];
    OUTLINED_FUNCTION_29_75();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_168();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_14_126();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_35_55();
    sub_1E3C2FCB8(&v515, __dst, &v510, v502, &v496, &v492, v423, __src);
    OUTLINED_FUNCTION_22_74(v424, v425, v426, v427, v428, v429, v430, v431, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v440 = OUTLINED_FUNCTION_13_127(v432, v433, v434, v435, v436, v437, v438, v439, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    v441(v440, 62);

    (v145)(v442);
    OUTLINED_FUNCTION_2_1();
    v443 = OUTLINED_FUNCTION_10_7();
    v444(v443);

    (v145)(v445);
    OUTLINED_FUNCTION_2_1();
    v446 = OUTLINED_FUNCTION_10_7();
    v447(v446);

    (v145)(v448);
    OUTLINED_FUNCTION_43_48();
    v449 = [objc_opt_self() whiteColor];
    OUTLINED_FUNCTION_36();
    (*(v450 + 680))();

    (v145)(v451);
    OUTLINED_FUNCTION_41_51();
    OUTLINED_FUNCTION_40_52(0x3FE3333333333333uLL);
    v452 = MEMORY[0x1E69E7DE0];
    OUTLINED_FUNCTION_29_75();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_168();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_14_126();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_35_55();
    sub_1E3C3DE00();
    v488 = v490;
    LOBYTE(v489) = v491;
    sub_1E3C2FCB8(v487, &v510, v502, &v496, &v492, &v488, v452, __dst);
    memcpy(v487, __dst, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v453 + 1600))(v487, 65, v454 & 1, v452);

    (v145)(v455);
    v487[0] = 15;
    LOBYTE(v510) = 14;
    LOBYTE(v505) = 14;
    LOBYTE(v502[0]) = 3;
    LOBYTE(v499[0]) = 14;
    OUTLINED_FUNCTION_37_57();
    v456 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_111(v456, v457, v458, v459, v460, v461, v462, v463, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_15_118();
    OUTLINED_FUNCTION_14();
    (*(v464 + 1600))(v487, 48, v465 & 1, &qword_1F5D549D8);

    (v145)(v466);
    v487[0] = 10;
    LOBYTE(v510) = 10;
    LOBYTE(v505) = 6;
    LOBYTE(v502[0]) = 6;
    LOBYTE(v499[0]) = 6;
    OUTLINED_FUNCTION_37_57();
    v467 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_111(v467, v468, v469, v470, v471, v472, v473, v474, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
    OUTLINED_FUNCTION_15_118();
    OUTLINED_FUNCTION_14();
    (*(v475 + 1600))(v487, 54, v476 & 1, &qword_1F5D54AF8);

    (v145)(v477);
    v487[0] = 5;
    LOBYTE(v510) = 3;
    LOBYTE(v505) = 3;
    OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_38_47();
    OUTLINED_FUNCTION_37_57();
    sub_1E3C3DE00();
    LOBYTE(v494) = v496;
    sub_1E3C3DE00();
    LOBYTE(v490) = v492;
    sub_1E3C2FCB8(v487, &v510, &v505, v499, &v494, &v490, &unk_1F5D54B88, __dst);
    OUTLINED_FUNCTION_15_118();
    OUTLINED_FUNCTION_14();
    v262 = *(v478 + 1600);
    v261 = v487;
    goto LABEL_60;
  }

  sub_1E42079A4();
  OUTLINED_FUNCTION_11_5();

LABEL_57:
  v264 = v1[17];
  OUTLINED_FUNCTION_8();
  (*(v265 + 2072))(22);
  OUTLINED_FUNCTION_36();
  (*(v266 + 2024))(1, 0);
  v267 = *sub_1E3E5FD88();
  v268 = *(*v264 + 680);
  v269 = v267;
  v268(v267);
  OUTLINED_FUNCTION_42_56();
  OUTLINED_FUNCTION_41_51();
  v515 = 0x4065800000000000;
  LOBYTE(v516) = 0;
  OUTLINED_FUNCTION_40_52(0x4059000000000000uLL);
  v505 = 0x4057C00000000000;
  LOBYTE(v506) = 0;
  OUTLINED_FUNCTION_23_79();
  v270 = sub_1E3C3DE00();
  v499[0] = v502[0];
  LOBYTE(v499[1]) = v502[1];
  OUTLINED_FUNCTION_1_212(v270, v271, v272, v273, v274, v275, v276, v277, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  OUTLINED_FUNCTION_22_74(v278, v279, v280, v281, v282, v283, v284, v285, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v287 = *(v286 + 1600);
  v296 = OUTLINED_FUNCTION_13_127(v288, v289, v290, v291, v292, v293, v294, v295, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  v287(v296, 4);
  OUTLINED_FUNCTION_42_56();
  OUTLINED_FUNCTION_41_51();
  v515 = 0x404E000000000000;
  LOBYTE(v516) = 0;
  OUTLINED_FUNCTION_40_52(v297);
  v505 = 0x403C000000000000;
  LOBYTE(v506) = 0;
  OUTLINED_FUNCTION_23_79();
  v298 = sub_1E3C3DE00();
  v499[0] = v502[0];
  LOBYTE(v499[1]) = v502[1];
  OUTLINED_FUNCTION_1_212(v298, v299, v300, v301, v302, v303, v304, v305, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  OUTLINED_FUNCTION_22_74(v306, v307, v308, v309, v310, v311, v312, v313, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  v314 = OUTLINED_FUNCTION_18();
  v322 = OUTLINED_FUNCTION_13_127(v314, v315, v316, v317, v318, v319, v320, v321, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  v287(v322, 8);
  sub_1E3952C94();
  __dst[0] = v323;
  __dst[1] = v324;
  __dst[2] = v325;
  __dst[3] = v326;
  LOBYTE(__dst[4]) = 0;
  sub_1E3952C94();
  *v487 = v327;
  *&v487[8] = v328;
  *&v487[16] = v329;
  *&v487[24] = v330;
  v487[32] = 0;
  sub_1E3952C94();
  v515 = v331;
  v516 = v332;
  v517 = v333;
  v518 = v334;
  v519 = 0;
  sub_1E3952C94();
  v510 = v335;
  v511 = v336;
  v512 = v337;
  v513 = v338;
  v514 = 0;
  sub_1E3952C94();
  v505 = v339;
  v506 = v340;
  v507 = v341;
  v508 = v342;
  v509 = 0;
  type metadata accessor for UIEdgeInsets();
  v343 = sub_1E3C3DE00();
  *v499 = *v502;
  v500 = v503;
  v501 = v504;
  OUTLINED_FUNCTION_1_212(v343, v344, v345, v346, v347, v348, v349, v350, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  memcpy(__dst, __src, 0xE9uLL);
  v351 = OUTLINED_FUNCTION_18();
  v359 = OUTLINED_FUNCTION_13_127(v351, v352, v353, v354, v355, v356, v357, v358, v479, *(&v479 + 1), v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, *(&v484 + 1), v485, v486, *v487, *&v487[8], *&v487[16], *&v487[24], *&v487[32], *&v487[40], *&v487[48], *&v487[56], *&v487[64], *&v487[72], *&v487[80], *&v487[88], v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, __dst[0]);
  v287(v359, 0);
  OUTLINED_FUNCTION_9_2();
  (*(v360 + 2104))();
  sub_1E3C6E74C();

  OUTLINED_FUNCTION_9_2();
  (*(v361 + 2128))();
  sub_1E3C6E74C();

  OUTLINED_FUNCTION_9_2();
  v363 = (*(v362 + 2152))();
  OUTLINED_FUNCTION_9_2();
  v365 = (*(v364 + 2224))();
  sub_1E375DA98(v363, v365 & 1);
}

void sub_1E3D8C094(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 320);
  *(v1 + 320) = a1 & 1;
  swift_beginAccess();
  if (v3 != *(v1 + 320))
  {
    sub_1E3D89C5C();
  }
}

uint64_t *sub_1E3D8C108(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_11_5();
  swift_allocObject();
  return sub_1E3D8C150(v2, v3);
}

uint64_t *sub_1E3D8C150(char a1, char a2)
{
  type metadata accessor for TextLayout();
  *(v2 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v2 + 112) = sub_1E3BD61D8();
  *(v2 + 120) = sub_1E3BD61D8();
  *(v2 + 128) = sub_1E383BCC0();
  *(v2 + 136) = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout(0);
  *(v2 + 144) = sub_1E40C3088();
  *(v2 + 152) = 0;
  *(v2 + 160) = sub_1E3BD61D8();
  *(v2 + 168) = sub_1E383BCC0();
  *(v2 + 176) = 0;
  *(v2 + 184) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v2 + 192) = sub_1E3BBB724();
  type metadata accessor for TextBadgeLayout(0);
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 200) = 0;
  v5 = OUTLINED_FUNCTION_51_1();
  *(v2 + 224) = sub_1E382F55C(3, 1, v5 & 1);
  v6 = OUTLINED_FUNCTION_51_1();
  *(v2 + 232) = sub_1E382F55C(4, 1, v6 & 1);
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0;
  *(v2 + 280) = 1;
  *(v2 + 288) = 0x4020000000000000;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0x4020000000000000;
  *(v2 + 320) = 0;
  *(v2 + 98) = a1;
  *(v2 + 152) = a2;
  v7 = sub_1E3C2F9A0();

  sub_1E3D89C5C();
  sub_1E3C37CBC(v7[14], 39);
  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1912))();
  sub_1E3C37CBC(v9, 48);

  sub_1E3C37CBC(v7[15], 40);
  sub_1E3C37CBC(v7[16], 13);
  sub_1E3C37CBC(v7[17], 47);
  sub_1E3C37EC8(v7[13], &unk_1F5D84530);
  OUTLINED_FUNCTION_36();
  v11 = (*(v10 + 1936))();
  sub_1E3C37CBC(v11, 23);

  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 1960))();
  sub_1E3C37CBC(v13, 24);

  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 1984))();
  sub_1E3C37CBC(v15, 15);

  OUTLINED_FUNCTION_36();
  v17 = (*(v16 + 2008))();
  sub_1E3C37CBC(v17, 67);

  OUTLINED_FUNCTION_36();
  v19 = (*(v18 + 2104))();
  sub_1E3C37CBC(v19, 53);

  OUTLINED_FUNCTION_36();
  v21 = (*(v20 + 2128))();
  sub_1E3C37CBC(v21, 54);

  OUTLINED_FUNCTION_36();
  v23 = (*(v22 + 2152))();
  sub_1E3C37CBC(v23, 31);

  return v7;
}

void sub_1E3D8C560()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  *(v0 + 120) = sub_1E3BD61D8();
  *(v0 + 128) = sub_1E383BCC0();
  *(v0 + 136) = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout(0);
  *(v0 + 144) = sub_1E40C3088();
  *(v0 + 152) = 0;
  *(v0 + 160) = sub_1E3BD61D8();
  *(v0 + 168) = sub_1E383BCC0();
  *(v0 + 176) = 0;
  *(v0 + 184) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v0 + 192) = sub_1E3BBB724();
  type metadata accessor for TextBadgeLayout(0);
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 200) = 0;
  v1 = OUTLINED_FUNCTION_51_1();
  *(v0 + 224) = sub_1E382F55C(3, 1, v1 & 1);
  v2 = OUTLINED_FUNCTION_51_1();
  *(v0 + 232) = sub_1E382F55C(4, 1, v2 & 1);
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = 0x4020000000000000;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0x4020000000000000;
  *(v0 + 320) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3D8C6D0(uint64_t a1)
{
  nullsub_1();
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1864))();
  v4 = OUTLINED_FUNCTION_36_53(v3);
  if (v4 == 0x7972617262696CLL && v5 == 0xE700000000000000)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_21_85(v4);

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v10 = result;
      OUTLINED_FUNCTION_14_0((v1 + 25), v9);
      v1[25] = v10;
      swift_retain_n();

      OUTLINED_FUNCTION_13();
      v12 = (*(v11 + 1864))();
      v13 = OUTLINED_FUNCTION_36_53(v12);
      if (v13 == 0x7972617262696CLL && v14 == 0xE700000000000000)
      {
      }

      else
      {
        v16 = OUTLINED_FUNCTION_21_85(v13);

        if ((v16 & 1) == 0)
        {
LABEL_19:
          v27 = *sub_1E3810A0C();

          sub_1E3C37EC8(v10, v27);
        }
      }

      if ((*(*v1 + 2032))(v17))
      {
        __dst[0] = xmmword_1E42B29E0;
        memset(&__dst[1], 0, 17);
        __asm { FMOV            V0.2D, #12.0 }

        v37[0] = _Q0;
        v37[1] = xmmword_1E4298720;
        v38 = 0;
        __asm { FMOV            V1.2D, #14.0 }

        v35[0] = _Q1;
        v35[1] = xmmword_1E429D550;
        v36 = 0;
        v33[0] = _Q1;
        v33[1] = _Q1;
        v34 = 0;
        v31[0] = xmmword_1E4298700;
        v31[1] = xmmword_1E4298700;
        v32 = 0;
        v29[0] = _Q0;
        v29[1] = _Q0;
        v30 = 0;
        type metadata accessor for UIEdgeInsets();
        v24 = v23;
        sub_1E3C2FCB8(__dst, v37, v35, v33, v31, v29, v23, __src);
        memcpy(__dst, __src, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        (*(v25 + 1600))(__dst, 0, v26 & 1, v24);
      }

      goto LABEL_19;
    }
  }

  return result;
}

void sub_1E3D8C99C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  sub_1E3C35CF4(a1, a2);
  v6 = sub_1E3D8C9E8(a1, v5, v3);

  sub_1E3D8C094(v6);
}

uint64_t sub_1E3D8C9E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1E3A24FDC(a1);
  }

  return v3 & 1;
}

uint64_t sub_1E3D8CA20()
{
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x3D656C797473, 0xE600000000000000);
  OUTLINED_FUNCTION_9_2();
  v1 = (*(v0 + 1864))();
  OUTLINED_FUNCTION_47_43(v1, v2, &type metadata for StandardLockupCellLayout.Style, v3, v4, v5, v6, v7, v24, *v26, *&v26[4], v26[6], v1, 0);
  MEMORY[0x1E69109E0](0x5474756F79616C20, 0xEC0000003D657079);
  OUTLINED_FUNCTION_9_2();
  v9 = (*(v8 + 2224))();
  OUTLINED_FUNCTION_47_43(v9, v10, &type metadata for StandardLockupCellLayoutType, v11, v12, v13, v14, v15, v25, v27, v28, v29, v9 & 1, v30);
  v16 = MEMORY[0x1E69109E0](32, 0xE100000000000000);
  sub_1E3C3684C(v16, v17, v18);
  v20 = v19;
  v22 = v21;

  MEMORY[0x1E69109E0](v20, v22);

  return v31;
}

uint64_t sub_1E3D8CBA8(uint64_t a1)
{
  OUTLINED_FUNCTION_34_60();
  OUTLINED_FUNCTION_8();
  v3 += 233;
  v4 = *v3;
  v5 = (*v3)();
  v6 = sub_1E3D88F04(v5);
  if (v6 != v1 || v7 != 0xE700000000000000)
  {
    v9 = OUTLINED_FUNCTION_38_23(v6, v7, v1);

    if (v9)
    {
      goto LABEL_13;
    }

    v11 = (v4)(v10);
    if (sub_1E3D88F04(v11) != 0x7974536B63697262 || v12 != 0xEB0000000031656CLL)
    {
      v14 = sub_1E42079A4();

      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v16 = OUTLINED_FUNCTION_26_11(v15);
  *(v16 + 16) = xmmword_1E42A76D0;
  v17 = [objc_opt_self() blackColor];
  v18 = OUTLINED_FUNCTION_30_65(v17);

  *(v16 + 32) = v18;
  v19 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v22 = [v20 v21];

  *(v16 + 40) = v22;
  v23 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v26 = [v24 v25];

  *(v16 + 48) = v26;
  v27 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v30 = [v28 v29];

  *(v16 + 56) = v30;
  v31 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v34 = [v32 v33];

  *(v16 + 64) = v34;
  if (a1 == 1)
  {

    v35 = OUTLINED_FUNCTION_26_11(v15);
    *(v35 + 16) = xmmword_1E42A76D0;
    v36 = OUTLINED_FUNCTION_27_66();
    v37 = OUTLINED_FUNCTION_30_65(v36);

    *(v35 + 32) = v37;
    v38 = OUTLINED_FUNCTION_27_66();
    v39 = OUTLINED_FUNCTION_30_65(v38);

    *(v35 + 40) = v39;
    v40 = OUTLINED_FUNCTION_27_66();
    v41 = [v40 colorWithAlphaComponent_];

    *(v35 + 48) = v41;
    v42 = OUTLINED_FUNCTION_27_66();
    v43 = [v42 colorWithAlphaComponent_];

    *(v35 + 56) = v43;
    v44 = OUTLINED_FUNCTION_27_66();
    v45 = [v44 colorWithAlphaComponent_];

    *(v35 + 64) = v45;
  }

LABEL_15:
  type metadata accessor for ViewGradientLayout(0);
  return sub_1E40C2E40();
}

double sub_1E3D8CF38()
{

  return result;
}

uint64_t sub_1E3D8CFE0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3D8D090()
{
  v0 = sub_1E3D8CFE0();

  return MEMORY[0x1EEE6BDC0](v0, 321, 7);
}

uint64_t sub_1E3D8D0C0(uint64_t a1)
{
  LOBYTE(v40[0]) = 22;
  LOBYTE(v34[0]) = 25;
  LOBYTE(v29) = 21;
  LOBYTE(v38[0]) = 27;
  LOBYTE(v36[0]) = 27;
  LOBYTE(v27[0]) = 27;
  v2 = *(*a1 + 1608);
  OUTLINED_FUNCTION_8_139();
  v2(48, 0);
  LOBYTE(v40[0]) = 11;
  LOBYTE(v29) = 5;
  OUTLINED_FUNCTION_8_139();
  v2(54, 0);
  LOBYTE(v38[0]) = 5;
  LOBYTE(v36[0]) = 4;
  LOBYTE(v34[0]) = 4;
  sub_1E3C3DE00();
  LOBYTE(v27[0]) = 5;
  sub_1E3C3DE00();
  v43[0] = v43[1];
  sub_1E3C3DE00();
  v42[0] = v42[1];
  sub_1E3C2FCB8(v38, v36, v34, v27, v43, v42, &unk_1F5D54B88, v40);
  LODWORD(v38[0]) = v40[0];
  WORD2(v38[0]) = WORD2(v40[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v3 + 1600))(v38, 55, v4 & 1, &unk_1F5D54B88);
  memset(v40, 0, sizeof(v40));
  v41 = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 1;
  memset(v36, 0, sizeof(v36));
  v37 = 1;
  sub_1E3952C94();
  v34[0] = v5;
  v34[1] = v6;
  v34[2] = v7;
  v34[3] = v8;
  v35 = 0;
  sub_1E3952C94();
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 1;
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_8_139();
  v2(0, 0);
  OUTLINED_FUNCTION_36();
  (*(v13 + 1984))(5);
  OUTLINED_FUNCTION_36();
  (*(v14 + 656))(0);
  v15 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v15);
  v16 = *sub_1E3E5FDEC();
  v17 = *(*a1 + 680);
  v18 = v16;
  v17(v16);
  OUTLINED_FUNCTION_36();
  v19 = OUTLINED_FUNCTION_8_5();
  v20(v19);
  OUTLINED_FUNCTION_36();
  v21 = OUTLINED_FUNCTION_10_7();
  v22(v21);
  OUTLINED_FUNCTION_36();
  v23 = OUTLINED_FUNCTION_10_7();
  v24(v23);
  OUTLINED_FUNCTION_36();
  return (*(v25 + 256))(0x7FF0000000000000, 0);
}

BOOL sub_1E3D8D4B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = sub_1E3D8C9E8(a1, a2, a3);
  OUTLINED_FUNCTION_8();
  return ((*(v4 + 2224))() & 1) != v3;
}

unint64_t sub_1E3D8D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38300;
  if (!qword_1ECF38300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38300);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StandardLockupCellLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StandardLockupCellLayout.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_48_36()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

uint64_t sub_1E3D8D778()
{
  OUTLINED_FUNCTION_24();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  sub_1E4206434();
  v0[13] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[14] = v6;
  v0[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D8D80C, v6, v5);
}

uint64_t sub_1E3D8D80C()
{
  v1 = [*(v0 + 80) tvpPlaylist];
  v2 = [v1 currentMediaItem];

  if (v2 && (ObjectType = swift_getObjectType(), v4 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), sub_1E4123590(@"VUIMediaItemMetadataPlayablePassThrough", v4, v0 + 56), swift_unknownObjectRelease(), v5 = *(v0 + 64), (*(v0 + 128) = v5) != 0))
  {
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_1E3D8D9A4;

    return sub_1E3D8DC2C();
  }

  else
  {

    sub_1E3D8DBD8(v8, v9, v10);
    OUTLINED_FUNCTION_4_187();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_54();

    return v11();
  }
}

uint64_t sub_1E3D8D9A4()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_31();
  *v7 = v6;
  v4[18] = v0;

  if (v0)
  {
    v8 = v4[14];
    v9 = v4[15];
    v10 = sub_1E3D8DB70;
  }

  else
  {

    v4[19] = v3;
    v8 = v4[14];
    v9 = v4[15];
    v10 = sub_1E3D8DAC8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E3D8DAC8()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 80);

  v4 = v3;
  sub_1E3D8DFE4(v1, 0, v3, (v0 + 16));
  if (!v2)
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    *(v6 + 32) = *(v0 + 48);
    *v6 = v7;
    *(v6 + 16) = v8;
  }

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E3D8DB70()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3D8DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38308;
  if (!qword_1ECF38308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38308);
  }

  return result;
}

uint64_t sub_1E3D8DC2C()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[7] = sub_1E4206434();
  v0[8] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D8DCC4, v6, v5);
}

uint64_t sub_1E3D8DCC4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v10 = *(v1 + 24);
  v4 = sub_1E4206424();
  *(v1 + 88) = v4;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *(v5 + 16) = v10;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_task_alloc();
  *(v1 + 104) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *v6 = v1;
  v6[1] = sub_1E3D8DDF8;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v1 + 16, v4, v8, 0xD00000000000002DLL, 0x80000001E4281D90, sub_1E3D8F694, v5, v7);
}

uint64_t sub_1E3D8DDF8()
{
  OUTLINED_FUNCTION_24();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v2[14] = v0;

  if (v0)
  {
    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_1E3D8DF74;
  }

  else
  {

    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_1E3D8DF10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E3D8DF10()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3D8DF74()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D8DFE4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v65 = a3;
  v59 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40C80, &qword_1E42D0100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for ClipItem(0);
  OUTLINED_FUNCTION_0_10();
  v58 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = &unk_1F5D849B8;
  v64 = &off_1F5D849C8;
  LOBYTE(v62[0]) = 3;
  v15 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(v62, a1, MEMORY[0x1E69E7CA0] + 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v16 = v60;
    __swift_destroy_boxed_opaque_existential_1(v62);
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = __swift_destroy_boxed_opaque_existential_1(v62);
    sub_1E3D8F640(v17, v18, v19);
    OUTLINED_FUNCTION_4_187();
    v20 = swift_allocError();
    swift_willThrow();
    if (v20)
    {
      goto LABEL_9;
    }
  }

  v63 = &unk_1F5D849B8;
  v64 = &off_1F5D849C8;
  LOBYTE(v62[0]) = 0;
  sub_1E3F9F164(v62, v16, v15 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if (swift_dynamicCast())
  {
    v15 = v60;
    __swift_destroy_boxed_opaque_existential_1(v62);
    goto LABEL_11;
  }

  v21 = __swift_destroy_boxed_opaque_existential_1(v62);
  sub_1E3D8F640(v21, v22, v23);
  OUTLINED_FUNCTION_4_187();
  v24 = swift_allocError();
  swift_willThrow();
  if (v24)
  {

LABEL_9:
    v25 = v59;
    v26 = v65;
LABEL_10:

    return;
  }

LABEL_11:
  v27 = sub_1E3D8EC40(1, v16);
  v56 = v15;
  v28 = 0;
  v29 = sub_1E3D8EC40(2, v16);
  v54 = a4;

  v30 = 0;
  v31 = *(v27 + 16);
  v55 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  while (v31 != v30)
  {
    if (v30 >= *(v27 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    sub_1E3B9DB48(v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1E325F7A8(v9, &qword_1ECF40C80, &qword_1E42D0100);
      ++v30;
    }

    else
    {
      sub_1E3ACA34C(v9, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1E3ACA028(0, v57[2] + 1, 1, v57);
      }

      v33 = v57[2];
      v32 = v57[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v52 = v57[2];
        v53 = v33 + 1;
        v37 = sub_1E3ACA028((v32 > 1), v33 + 1, 1, v57);
        v33 = v52;
        v34 = v53;
        v57 = v37;
      }

      ++v30;
      v36 = v57;
      v35 = v58;
      v57[2] = v34;
      sub_1E3ACA34C(v14, v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33);
    }
  }

  v38 = 0;
  v62[0] = MEMORY[0x1E69E7CC0];
  v39 = *(v29 + 16);
  v25 = v59;
LABEL_22:
  v26 = v65;
  while (v39 != v38)
  {
    if (v38 >= *(v29 + 16))
    {
      goto LABEL_36;
    }

    v40 = v38 + 1;
    type metadata accessor for ViewModel();

    v42 = sub_1E3D8ED24(v41, v25, v26);

    v38 = v40;
    if (v42)
    {
      MEMORY[0x1E6910BF0](v43);
      if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v55 = v62[0];
      v38 = v40;
      goto LABEL_22;
    }
  }

  v63 = &unk_1F5D849B8;
  v64 = &off_1F5D849C8;
  LOBYTE(v62[0]) = 4;
  sub_1E3F9F164(v62, a1, MEMORY[0x1E69E7CA0] + 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  if (swift_dynamicCast())
  {
    v44 = v60;
    v39 = v61;
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  else
  {
    v45 = __swift_destroy_boxed_opaque_existential_1(v62);
    sub_1E3D8F640(v45, v46, v47);
    OUTLINED_FUNCTION_4_187();
    v28 = swift_allocError();
    swift_willThrow();
  }

  v48 = v56;
  if (v28)
  {

    goto LABEL_10;
  }

  v49 = v54;
  v50 = v57;
  *v54 = v48;
  v49[1] = v50;
  v49[2] = v55;
  v49[3] = v44;
  v49[4] = v39;
}

uint64_t sub_1E3D8E5C4()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[12] = v6;
  v0[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D8E658, v6, v5);
}

uint64_t sub_1E3D8E658()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E3D8F418(*(v0 + 64));
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1E3D8E768;

    return sub_1E3D8DC2C();
  }

  else
  {

    sub_1E3D8DBD8(v4, v5, v6);
    OUTLINED_FUNCTION_4_187();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_54();

    return v7();
  }
}

uint64_t sub_1E3D8E768()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_31();
  *v7 = v6;
  v4[16] = v0;

  if (v0)
  {
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1E3D8E930;
  }

  else
  {

    v4[17] = v3;
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1E3D8E88C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E3D8E88C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 64);

  v4 = v3;
  sub_1E3D8DFE4(v1, v3, 0, (v0 + 16));
  if (!v2)
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
    v8 = *(v0 + 56);
    *(v8 + 32) = *(v0 + 48);
    *v8 = v6;
    *(v8 + 16) = v7;
  }

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E3D8E930()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D8E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = aBlock - v11;
  v13 = sub_1E4205ED4();
  if (a5)
  {
    a5 = sub_1E4205ED4();
  }

  v14 = objc_opt_self();
  (*(v9 + 16))(v12, a1, v7);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v7);
  aBlock[4] = sub_1E3D8F6A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3D8EB94;
  aBlock[3] = &block_descriptor_107;
  v17 = _Block_copy(aBlock);

  [v14 fetchKeyPlays:v13 nextToken:a5 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1E3D8EB94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E4205C64();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E3D8EC40(char a1, uint64_t a2)
{
  v8[3] = &unk_1F5D849B8;
  v8[4] = &off_1F5D849C8;
  LOBYTE(v8[0]) = a1;
  sub_1E3F9F164(v8, a2, MEMORY[0x1E69E7CA0] + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if (swift_dynamicCast())
  {
    v2 = v7;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v3 = __swift_destroy_boxed_opaque_existential_1(v8);
    sub_1E3D8F640(v3, v4, v5);
    OUTLINED_FUNCTION_4_187();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1E3D8ED24(uint64_t a1, void *a2, void *a3)
{
  sub_1E384EE08(228);
  sub_1E3277E60(v6, v7, a1, &v20);

  if (!v21)
  {
    sub_1E325F7A8(&v20, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ViewModel();
  v8 = sub_1E39BED80(228, v19, 0);
  v9 = v8;
  if (v8)
  {
    v10 = (*(*v8 + 392))(v8);
    if (v10)
    {
      v11 = v10;
      type metadata accessor for LayoutGrid();
      sub_1E3A256EC();
      sub_1E3C2AE10();
      v13 = v12;
      (*(*v11 + 1640))();
    }

    if (!sub_1E39C2DB4())
    {
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1E4298880;
        *(v15 + 32) = a2;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BC0, &qword_1E42C5FB0);
        *&v20 = v15;
        v16 = a2;
        v17 = 12;
      }

      else
      {
        if (!a3)
        {
          return v9;
        }

        v21 = sub_1E3D8F47C();
        *&v20 = a3;
        v18 = a3;
        v17 = 14;
      }

      sub_1E39C306C(v17);
      sub_1E325F7A8(&v20, &unk_1ECF296E0, &unk_1E4298030);
      return v9;
    }
  }

  return v9;
}

unint64_t sub_1E3D8EF70()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3D8EFB8(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 0x6D65744970696C63;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7379616C5079656BLL;
      break;
    case 4:
      result = 0x656B6F547478656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3D8F06C(unsigned __int8 a1, char a2)
{
  v2 = 0x7865646E69;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7865646E69;
  switch(v4)
  {
    case 1:
      v5 = 0x6D65744970696C63;
      v3 = 0xE900000000000073;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x80000001E425E2C0;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x7379616C5079656BLL;
      break;
    case 4:
      v5 = 0x656B6F547478656ELL;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D65744970696C63;
      v6 = 0xE900000000000073;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v6 = 0x80000001E425E2C0;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x7379616C5079656BLL;
      break;
    case 4:
      v2 = 0x656B6F547478656ELL;
      v6 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D8F204(char a1)
{
  sub_1E4207B44();
  sub_1E3D8EFB8(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D8F270(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D8F354(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D8EFB8(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3D8F3B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D8EF70();
  *a1 = result;
  return result;
}

unint64_t sub_1E3D8F3E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3D8EFB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D8F418(void *a1)
{
  v1 = [a1 playablePassThrough];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3D8F47C()
{
  result = qword_1EE23B350;
  if (!qword_1EE23B350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B350);
  }

  return result;
}

unint64_t sub_1E3D8F4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38310;
  if (!qword_1ECF38310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38310);
  }

  return result;
}

unint64_t sub_1E3D8F51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38318;
  if (!qword_1ECF38318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38318);
  }

  return result;
}

_BYTE *sub_1E3D8F598(_BYTE *result, int a2, int a3)
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

unint64_t sub_1E3D8F640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38320;
  if (!qword_1ECF38320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38320);
  }

  return result;
}

uint64_t sub_1E3D8F6A0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
    return sub_1E42063C4();
  }

  else
  {
    if (!a1 || !sub_1E374BD08(a1))
    {
      sub_1E4205CB4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
    return sub_1E42063D4();
  }
}

_BYTE *sub_1E3D8F7C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3D8F8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF62B30[0];
  if (!qword_1ECF62B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF62B30);
  }

  return result;
}

uint64_t sub_1E3D8F904()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_1E329505C(v9);
    goto LABEL_8;
  }

  result = OUTLINED_FUNCTION_1_18(v3);
  if (!result)
  {
LABEL_8:
    v5 = 1.0;
    goto LABEL_9;
  }

  v5 = v6;
LABEL_9:
  qword_1EE2AAD60 = *&v5;
  return result;
}

uint64_t *sub_1E3D8FA04()
{
  if (qword_1EE29AC70 != -1)
  {
    OUTLINED_FUNCTION_0_235(&qword_1EE29AC70);
  }

  return &qword_1EE2AAD60;
}

uint64_t sub_1E3D8FA44()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_1E329505C(v9);
    goto LABEL_8;
  }

  result = OUTLINED_FUNCTION_1_18(v3);
  if (!result)
  {
LABEL_8:
    v5 = 0x3FC999999999999ALL;
    goto LABEL_9;
  }

  v5 = v6;
LABEL_9:
  qword_1ECF71648 = v5;
  return result;
}

uint64_t *sub_1E3D8FB48()
{
  if (qword_1ECF62C40 != -1)
  {
    OUTLINED_FUNCTION_1_213(&qword_1ECF62C40);
  }

  return &qword_1ECF71648;
}

double sub_1E3D8FB94(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  result = 50.0;
  if ((v2 & 1) == 0)
  {
    return 10.0;
  }

  return result;
}

BOOL sub_1E3D8FBD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E39DFFC8() & 1) == 0 || ((*(a4 + 8))(a3, a4) & 1) == 0)
  {
    return 0;
  }

  if (qword_1EE29AC70 != -1)
  {
    OUTLINED_FUNCTION_0_235(&qword_1EE29AC70);
  }

  return *&qword_1EE2AAD60 <= a1;
}

uint64_t sub_1E3D8FC6C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E41FFCB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    return 0;
  }

  if ((*(a5 + 8))(a4, a5))
  {
    if (sub_1E3A24FDC(a1))
    {
      return 2;
    }

    if (qword_1ECF62C40 != -1)
    {
      OUTLINED_FUNCTION_1_213(&qword_1ECF62C40);
    }

    if (*&qword_1ECF71648 <= a2)
    {
      return 2;
    }
  }

  else
  {
    v14 = sub_1E324FBDC();
    (*(v10 + 16))(v12, v14, v9);
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "CellShowcasing:: hideNavBarTitle: uber layout is not active, ignore", v17, 2u);
      MEMORY[0x1E69143B0](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }

  return 1;
}

double sub_1E3D8FE68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  *&v15 = a3;
  *(&v15 + 1) = *v19;
  v16 = *&v19[8];
  *&v17 = a1;
  *(&v17 + 1) = a2;
  LOBYTE(v18) = a4;
  HIBYTE(v18) = a5;
  *v19 = __PAIR128__(*v19, a3);
  *&v19[16] = v16;
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = a5;
  sub_1E3D8FF34(&v15, v14);
  sub_1E3AC0B50(v19);
  v12 = v16;
  *a6 = v15;
  *(a6 + 16) = v12;
  result = *&v17;
  *(a6 + 32) = v17;
  *(a6 + 48) = v18;
  return result;
}

uint64_t sub_1E3D8FF6C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38328, &qword_1E42D0430) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  sub_1E3D901E0(v1, v11, v12, v13, v14, v15, v16, v17, v35, v36[0], v36[1], v36[2], v36[3], v37, v38, v39, v40, v41, v42, v43);
  v18 = sub_1E4203DA4();
  v20 = v19;
  v21 = v2 + *(v9 + 44);
  sub_1E3D90FB4();
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38330, &qword_1E42D0438) + 36));
  *v22 = v18;
  v22[1] = v20;
  OUTLINED_FUNCTION_8();
  v24 = 0.0;
  if ((*(v23 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v25 + 552))(v36);

    if ((v37 & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_24_0();
      v24 = sub_1E3952BE8(v26, v27, v28, v29);
    }
  }

  v30 = *(v4 + 20);
  v31 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v32 + 104))(v8 + v30, v31);
  *v8 = v24;
  v8[1] = v24;
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38338, &unk_1E42D0440) + 36);
  sub_1E3D94954(v8, v33, MEMORY[0x1E697EAF0]);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  return sub_1E3741EA0(v2, a1, &qword_1ECF38328, &qword_1E42D0430);
}

void sub_1E3D901E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38440, &qword_1E42D0700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38568, &qword_1E42D07E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38490, &qword_1E42D0728);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  if (*v24)
  {

    sub_1E3D90448();
    sub_1E3743538(v27, v20, &qword_1ECF38440, &qword_1E42D0700);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_128();
    sub_1E3D94264(v32, &qword_1ECF38440, &qword_1E42D0700, v33);
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v34, v35, v36, v37);
    OUTLINED_FUNCTION_27_67();

    v38 = v27;
    v39 = &qword_1ECF38440;
  }

  else
  {
    *v31 = sub_1E4201D44();
    *(v31 + 1) = 0;
    v31[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38570, &qword_1E42D07F0);
    sub_1E3D90B68();
    sub_1E3743538(v31, v20, &qword_1ECF38490, &qword_1E42D0728);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_128();
    sub_1E3D94264(v40, v41, v42, v43);
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v44, &qword_1ECF38490, &qword_1E42D0728, v45);
    OUTLINED_FUNCTION_27_67();
    v38 = OUTLINED_FUNCTION_98();
  }

  sub_1E325F69C(v38, v39);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D90448()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v41 = v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38480, &qword_1E42D0720);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38578, &qword_1E42D07F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38470, &qword_1E42D0718);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38460, &qword_1E42D0710);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  if ((*(v3 + 48) & 1) != 0 || (v19 = *(*v1 + 128), (v19)(v18), v20 == 0.0))
  {
    sub_1E3D9083C();
    (*(*v1 + 128))();
    sub_1E4203D84();
    OUTLINED_FUNCTION_26_83();
    sub_1E42015C4();
    sub_1E3741EA0(v12, v16, &qword_1ECF38470, &qword_1E42D0718);
    memcpy((v16 + *(v38 + 36)), v42, 0x70uLL);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v21, v22, v23, v24);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v25, v26, v27, v28);
    swift_storeEnumTagMultiPayload();
    sub_1E3D94368();
    sub_1E3D94498();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
  }

  else
  {
    sub_1E3D9083C();
    v19();
    v19();
    sub_1E4203D84();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v31 = &v7[*(v40 + 36)];
    v32 = v42[1];
    *v31 = v42[0];
    *(v31 + 1) = v32;
    *(v31 + 2) = v42[2];
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v33, v34, v35, v36);
    swift_storeEnumTagMultiPayload();
    sub_1E3D94368();
    sub_1E3D94498();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E325F69C(v29, v30);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D9083C()
{
  OUTLINED_FUNCTION_31_1();
  v25[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38340, &qword_1E42D0450);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38348, &qword_1E42D0458);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38350, &unk_1E42D0460);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v25 - v19;
  if (*v0)
  {
    *v7 = sub_1E4201D44();
    *(v7 + 1) = 0;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38368, &unk_1E42D0470);
    sub_1E3D9178C();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_26_83();
    sub_1E42015C4();
    sub_1E3741EA0(v7, v12, &qword_1ECF38340, &qword_1E42D0450);
    memcpy((v12 + *(v8 + 36)), v26, 0x70uLL);
    v21 = OUTLINED_FUNCTION_98();
    sub_1E3741EA0(v21, v22, &qword_1ECF38348, &qword_1E42D0458);
    sub_1E3743538(v2, v1, &qword_1ECF38348, &qword_1E42D0458);
    v23 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_1(v23);
    sub_1E3D913A8();
    OUTLINED_FUNCTION_33_63();
    sub_1E4201F44();
    sub_1E325F69C(v2, &qword_1ECF38348);
  }

  else
  {
    nullsub_1();
    (*(v17 + 16))(v1, v20, v15);
    v24 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_1(v24);
    sub_1E3D913A8();
    OUTLINED_FUNCTION_33_63();
    sub_1E4201F44();
    (*(v17 + 8))(v20, v15);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D90B68()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38340, &qword_1E42D0450);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  sub_1E3D8FF34(v1, &v23);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_26_83();
  sub_1E4200D94();
  v14 = v23;
  v15 = v25;
  v19 = v28;
  v20 = v27;
  v30 = v24;
  v29 = v26;
  v21 = *(v1 + 8);
  v22 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  *v11 = sub_1E4201D44();
  *(v11 + 1) = 0;
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38368, &unk_1E42D0470);
  sub_1E3D91A34();
  v16 = v30;
  LOBYTE(v1) = v29;
  sub_1E3743538(v11, v8, &qword_1ECF38340, &qword_1E42D0450);
  *v3 = sub_1E3D94A08;
  *(v3 + 8) = v12;
  *(v3 + 16) = v14;
  *(v3 + 24) = v16;
  *(v3 + 32) = v15;
  *(v3 + 40) = v1;
  v17 = v19;
  *(v3 + 48) = v20;
  *(v3 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38580, &unk_1E42D0800);
  sub_1E3743538(v8, v3 + *(v18 + 48), &qword_1ECF38340, &qword_1E42D0450);

  sub_1E325F69C(v11, &qword_1ECF38340);
  sub_1E325F69C(v8, &qword_1ECF38340);

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D90D90()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E42036E4();
  (*(v6 + 16))(v10, v3, v4);
  v12 = (*(v6 + 80) + 66) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_19_101(v13);
  (*(v6 + 32))(v15 + v12, v10, v4, v14);
  v20[7] = v11;
  v20[8] = sub_1E3D94A10;
  v20[9] = v13;
  v20[10] = 0;
  v20[11] = 0;
  sub_1E3D8FF34(v1, v20);
  sub_1E4200E64();
  v19[0] = v16;
  v19[1] = v17;
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_19_101(v18);
  sub_1E3D8FF34(v1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362B0, &qword_1E42C7DD8);
  type metadata accessor for CGSize(0);
  sub_1E3C8D91C();
  sub_1E3D94B58(&qword_1EE23AE98, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  sub_1E4203524();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D90FB4()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v40 = v2;
  v3 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38558, &qword_1E42D07E0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = *(**(v1 + 32) + 392);
  v15 = 0.0;
  if (v14(v11))
  {
    OUTLINED_FUNCTION_30();
    (*(v16 + 552))(&v43);

    if ((v44 & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_24_0();
      v15 = sub_1E3952BE8(v17, v18, v19, v20);
    }
  }

  v21 = *(v3 + 20);
  v22 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v24 = (*(v23 + 104))(v7 + v21, v22);
  *v7 = v15;
  v7[1] = v15;
  v25 = (v14)(v24);
  if (v25)
  {
    OUTLINED_FUNCTION_30();
    v27 = (*(v26 + 792))();
  }

  else
  {
    v27 = 11;
  }

  if ((v14)(v25))
  {
    OUTLINED_FUNCTION_30();
    (*(v28 + 552))(v45);
    v38 = v45[0];
    v37 = v45[1];
    v29 = v46;

    v30 = v37;
    v31 = v38;
  }

  else
  {
    v31 = 0uLL;
    v29 = 1;
    v30 = 0uLL;
  }

  v47[0] = v31;
  v47[1] = v30;
  v48 = v29;
  v32 = sub_1E3D94B58(&qword_1ECF38560, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
  sub_1E3A6929C(v27, 0, 0, 1, v47, v3, v32);
  v33 = sub_1E3D949B0(v7, MEMORY[0x1E697EAF0]);
  if ((v14)(v33))
  {
    OUTLINED_FUNCTION_30();
    v35 = (*(v34 + 744))();
  }

  else
  {
    v35 = 0;
  }

  v41 = v3;
  v42 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v39;
  sub_1E39BA034();

  (*(v9 + 8))(v13, v36);
  OUTLINED_FUNCTION_20_0();
}

unint64_t sub_1E3D913A8()
{
  result = qword_1ECF38358;
  if (!qword_1ECF38358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38348, &qword_1E42D0458);
    sub_1E374AD40(&qword_1ECF38360, &qword_1ECF38340, &qword_1E42D0450, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38358);
  }

  return result;
}

void sub_1E3D91460()
{
  OUTLINED_FUNCTION_21_5();
  __dst = v1;
  sub_1E3EBA478(v32);
  v29 = v32[0];
  v30 = v32[1];
  v31 = v32[2];
  v2 = v33;
  v3 = v34;
  v4 = v35;
  type metadata accessor for FlexibleGridLayoutHelper();
  OUTLINED_FUNCTION_42_7();
  (*(v5 + 872))();
  OUTLINED_FUNCTION_42_7();
  (*(v6 + 1080))();
  OUTLINED_FUNCTION_42_7();
  (*(v7 + 904))();
  v8 = sub_1E39D9354();
  OUTLINED_FUNCTION_42_7();
  v10 = 0.0;
  if ((*(v9 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v11 + 176))(v36);

    if ((v37 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_24_0();
      v10 = sub_1E3952BE0(v12, v13, v14, v15);
    }
  }

  v16 = *v0;
  if (*v0)
  {
    v2 = *(*v16 + 128);
    v3 = *v16 + 128;

    v18 = v2(v17);
    (*(*v8 + 200))(v18 - v10);
    OUTLINED_FUNCTION_41_52();
  }

  else
  {
    v23 = *(v0 + 1);
    *&v24 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
    sub_1E42038F4();
    if (*__src == 0.0)
    {

      goto LABEL_9;
    }

    v23 = *(v0 + 1);
    *&v24 = v0[3];
    v19 = sub_1E42038F4();
    (*(*v8 + 200))(v19, *__src - v10);
    OUTLINED_FUNCTION_41_52();
  }

  sub_1E3A28718(v32);
LABEL_9:
  __src[0] = v29;
  __src[1] = v30;
  __src[2] = v31;
  *&__src[3] = v2;
  *(&__src[3] + 1) = v3;
  LOBYTE(__src[4]) = v4;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v2;
  v27 = v3;
  v28 = v4;
  sub_1E3741F40(__src, v21);
  sub_1E3A28718(&v23);
  memcpy(__dst, __src, 0x41uLL);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D9178C()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for FlexibleGridSubsetViewHeader(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34[-v11 - 8];
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_7();
  v41[0] = v2[5];
  v14 = *v2;
  if (*v2)
  {
    OUTLINED_FUNCTION_8();
    v16 = *(v15 + 128);
    v17 = sub_1E3743538(v41, &v36, &qword_1ECF2BB28, &qword_1E42A2A60);
    v18 = v16(v17);
  }

  else
  {
    sub_1E3743538(v41, &v36, &qword_1ECF2BB28, &qword_1E42A2A60);
    v18 = 0.0;
  }

  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v5 + 20)) = v41[0];
  *(v12 + *(v5 + 24)) = v18;
  v19 = OUTLINED_FUNCTION_98();
  sub_1E3D94954(v19, v20, v21);
  v22 = v2[4];
  if (v14)
  {
    OUTLINED_FUNCTION_8();
    v24 = *(v23 + 128);

    v26 = v24(v25);
  }

  else
  {

    v26 = 0.0;
  }

  sub_1E3D91460();
  v35[0] = 0;
  sub_1E42038E4();
  v27 = v36;
  v28 = v37;
  sub_1E3D948C0(v0, v9);
  v29 = OUTLINED_FUNCTION_34();
  sub_1E3D948C0(v29, v30);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38550, &qword_1E42D07D8) + 48);
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v22;
  *&v35[3] = v26;
  memcpy(&v35[4], v34, 0x41uLL);
  memcpy((v4 + v31), v35, 0x61uLL);
  sub_1E3D9478C(v35, &v36);
  OUTLINED_FUNCTION_10_120();
  sub_1E3D949B0(v0, v32);
  v36 = v27;
  v37 = v28;
  v38 = v22;
  v39 = v26;
  memcpy(v40, v34, sizeof(v40));
  sub_1E3D94924(&v36);
  sub_1E3D949B0(v9, v35);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D91A34()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for FlexibleGridSubsetViewHeader(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_7();
  v22 = *(v4 + 40);
  v13 = v22;
  *v0 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(v0 + *(v8 + 28)) = v13;
  *(v0 + *(v8 + 32)) = v2;
  v14 = *(v4 + 32);
  sub_1E3743538(&v22, &v24, &qword_1ECF2BB28, &qword_1E42A2A60);

  sub_1E3D91460();
  v23[0] = 0;
  sub_1E42038E4();
  v15 = v24;
  v16 = v25;
  sub_1E3D948C0(v0, v11);
  v17 = OUTLINED_FUNCTION_34();
  sub_1E3D948C0(v17, v18);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38550, &qword_1E42D07D8) + 48);
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v14;
  v23[3] = v2;
  memcpy(&v23[4], v21, 0x41uLL);
  memcpy((v6 + v19), v23, 0x61uLL);
  sub_1E3D9478C(v23, &v24);
  OUTLINED_FUNCTION_10_120();
  sub_1E3D949B0(v0, v20);
  v24 = v15;
  v25 = v16;
  v26 = v14;
  v27 = v2;
  memcpy(v28, v21, sizeof(v28));
  sub_1E3D94924(&v24);
  sub_1E3D949B0(v11, v23);
  OUTLINED_FUNCTION_54_0();
}

uint64_t type metadata accessor for FlexibleGridSubsetViewHeader(uint64_t a1)
{
  result = qword_1ECF62DE0;
  if (!qword_1ECF62DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D91CA8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38370, &qword_1E42D04B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38378, &qword_1E42D04C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v52 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v51 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38380, &qword_1E42D04C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v51 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38388, &qword_1E42D04D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v54 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = (v24 - v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38390, &qword_1E42D04D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v56 = &v51 - v27;
  v28 = *(v1 + *(type metadata accessor for FlexibleGridSubsetViewHeader(0) + 20));
  if (v28)
  {
    v51 = v5;

    sub_1E3746E10(v25);
    v29 = sub_1E3B0352C();
    (*(v21 + 8))(v25, v19);
    if (v29)
    {
      sub_1E3D9220C();
      sub_1E3743538(v18, v58, &qword_1ECF38388, &qword_1E42D04D0);
      swift_storeEnumTagMultiPayload();
      sub_1E3D92A34();
      sub_1E3D92B78();
      sub_1E4201F44();
      sub_1E325F69C(v18, &qword_1ECF38388);
    }

    else
    {
      v30 = sub_1E3D9220C();
      v31 = (*(*v28 + 392))(v30);
      if (v31)
      {
        (*(*v31 + 304))();
      }

      sub_1E4203DB4();
      OUTLINED_FUNCTION_59();
      sub_1E4200D94();
      v32 = v52;
      sub_1E3741EA0(v54, v52, &qword_1ECF38388, &qword_1E42D04D0);
      v33 = (v32 + *(v59 + 36));
      v34 = v62;
      *v33 = v61;
      v33[1] = v34;
      v33[2] = v63;
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v35, v36, v37, v38);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v39, v40, v41, v42);
      swift_storeEnumTagMultiPayload();
      sub_1E3D92A34();
      sub_1E3D92B78();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v43, v44);
    }

    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v45, v46, v47, v48);
    swift_storeEnumTagMultiPayload();
    sub_1E3D929A8();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v49, v50);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3D929A8();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D9220C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383D0, &unk_1E42D04F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383C0, &qword_1E42D04E8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383B0, &qword_1E42D04E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v51 - v16;
  v18 = *(v0 + *(type metadata accessor for FlexibleGridSubsetViewHeader(0) + 20));
  if (!v18)
  {
    goto LABEL_11;
  }

  v52 = v14;
  v53 = v17;
  v19 = *(*v18 + 488);

  v21 = v19(v20);
  if (!v21 || (v56[0] = v21, v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240, &unk_1E4297E90), sub_1E374AD40(&qword_1ECF289A8, &qword_1ECF34240, &unk_1E4297E90, MEMORY[0x1E69E5E60]), sub_1E38D2480(v22, v54), , (v24 = v54[0]) == 0))
  {

LABEL_11:
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    sub_1E3D92AC0();
    return sub_1E4201F44();
  }

  v25 = sub_1E373E010(39, v54[0], v23);
  if (!v25)
  {

    goto LABEL_11;
  }

  v27 = v25;
  v28 = sub_1E373E010(23, v24, v26);

  if (!v28)
  {

    goto LABEL_11;
  }

  v51[0] = sub_1E4201B84();
  if ((*(*v27 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v29 + 176))(v54);

    v30 = v54[3];
    if (v55)
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = v52;
  *v9 = v51[0];
  *(v9 + 1) = v30;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383D8, &qword_1E42D0500);
  sub_1E3D926D8();
  v33 = (*(*v18 + 392))();
  v51[1] = v28;
  if (v33 && (OUTLINED_FUNCTION_30(), (*(v34 + 176))(v56), v1 = v56[0], v2 = v56[1], v3 = v56[2], v4 = v56[3], , (v57 & 1) == 0))
  {
    v35.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v35, v36, v37, v38);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  v39 = OUTLINED_FUNCTION_41_8();
  sub_1E3741EA0(v9, v32, &qword_1ECF383C0, &qword_1E42D04E8);
  v40 = v32 + *(v10 + 36);
  *v40 = v39;
  *(v40 + 8) = v1;
  *(v40 + 16) = v2;
  *(v40 + 24) = v3;
  *(v40 + 32) = v4;
  *(v40 + 40) = 0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v41, v42, v43, v44);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v45, v46, v47, v48);
  OUTLINED_FUNCTION_34();
  swift_storeEnumTagMultiPayload();
  sub_1E3D92AC0();
  sub_1E4201F44();

  OUTLINED_FUNCTION_21_1();
  return sub_1E325F69C(v49, v50);
}

void sub_1E3D926D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v31 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38530, &qword_1E42D07B8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38538, &unk_1E42D07C0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  memset(v32, 0, sizeof(v32));
  v33 = 1;
  v18 = (*(*v3 + 392))();
  sub_1E382A9B4(v3, v32, v18, v17);

  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38540, &qword_1E42ED390) + 36)] = 1;
  *&v17[*(v11 + 44)] = 0;
  v19 = (*(*v1 + 392))();
  sub_1E382A9B4(v1, v32, v19, v9);

  *&v9[*(v6 + 44)] = 0x3FF0000000000000;
  sub_1E3743538(v17, v14, &qword_1ECF38538, &unk_1E42D07C0);
  v20 = OUTLINED_FUNCTION_98();
  sub_1E3743538(v20, v21, &qword_1ECF38530, &qword_1E42D07B8);
  sub_1E3743538(v14, v31, &qword_1ECF38538, &unk_1E42D07C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38548, &qword_1E42D07D0);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v22, v23, v24, v25);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v26, v27);
  sub_1E325F69C(v17, &qword_1ECF38538);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v28, v29);
  sub_1E325F69C(v14, &qword_1ECF38538);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3D929A8()
{
  result = qword_1ECF38398;
  if (!qword_1ECF38398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38390, &qword_1E42D04D8);
    sub_1E3D92A34();
    sub_1E3D92B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38398);
  }

  return result;
}

unint64_t sub_1E3D92A34()
{
  result = qword_1ECF383A0;
  if (!qword_1ECF383A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38388, &qword_1E42D04D0);
    sub_1E3D92AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF383A0);
  }

  return result;
}

unint64_t sub_1E3D92AC0()
{
  result = qword_1ECF383A8;
  if (!qword_1ECF383A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF383B0, &qword_1E42D04E0);
    sub_1E374AD40(&qword_1ECF383B8, &qword_1ECF383C0, &qword_1E42D04E8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF383A8);
  }

  return result;
}

unint64_t sub_1E3D92B78()
{
  result = qword_1ECF383C8;
  if (!qword_1ECF383C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38378, &qword_1E42D04C0);
    sub_1E3D92A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF383C8);
  }

  return result;
}

void sub_1E3D92C04()
{
  OUTLINED_FUNCTION_21_5();
  v33 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383E0, &qword_1E42D0508);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383E8, &qword_1E42D0510);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383F0, &qword_1E42D0518);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  *v3 = sub_1E4201D44();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383F8, &qword_1E42D0520);
  sub_1E3D92FB8();
  v10 = *(**(v0 + 16) + 392);
  if (v10())
  {
    type metadata accessor for FlexibleGridLayout();
    if (swift_dynamicCastClass())
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for FlexibleGridLayout();
  sub_1E3B8B8C0();
LABEL_5:
  OUTLINED_FUNCTION_8();
  (*(v11 + 176))(&v34);

  if ((v35 & 1) == 0)
  {
    v12 = OUTLINED_FUNCTION_6();
    sub_1E3952BE0(v12, v13, v14, v15);
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112_2();
  v16 = sub_1E3741EA0(v3, v2, &qword_1ECF383E0, &qword_1E42D0508);
  v17 = (v2 + *(v7 + 36));
  v18 = v37;
  *v17 = v36;
  v17[1] = v18;
  v17[2] = v38;
  if ((v10)(v16))
  {
    type metadata accessor for FlexibleGridLayout();
    if (swift_dynamicCastClass())
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for FlexibleGridLayout();
  sub_1E3B8B8C0();
LABEL_11:
  OUTLINED_FUNCTION_8();
  (*(v19 + 176))(v39);
  v20 = v39[0];
  v21 = v39[1];
  v22 = v39[2];
  v23 = v39[3];

  if (v40)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v24.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v24, v25, v26, v27);
  }

  v28 = OUTLINED_FUNCTION_41_8();
  sub_1E3741EA0(v2, v1, &qword_1ECF383E8, &qword_1E42D0510);
  v29 = v1 + *(v32 + 36);
  *v29 = v28;
  *(v29 + 8) = v20;
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  *(v29 + 32) = v23;
  *(v29 + 40) = 0;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112_2();
  sub_1E3741EA0(v1, v33, &qword_1ECF383F0, &qword_1E42D0518);
  v30 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38400, &qword_1E42D0528) + 36));
  v31 = v42;
  *v30 = v41;
  v30[1] = v31;
  v30[2] = v43;
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D92FB8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v60 = v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384D0, &qword_1E42D0740);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v56 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384D8, &qword_1E42D0748);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v65 = v56 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384E0, &qword_1E42D0750);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v56 - v19;
  v21 = (*(*v2[2] + 904))(v18);
  if (v21)
  {
    memcpy(v79, v2 + 4, 0x41uLL);
    if (v79[6])
    {
      if ((v79[8] & 1) == 0)
      {
        sub_1E3741F40(v79, v78);
        v22 = OUTLINED_FUNCTION_18();
        sub_1E3E321AC(v21, v79, 0, v22 & 1, v78);
        v21 = v78[0];
        v63 = v78[2];
        v64 = v78[1];
        v61 = v78[3];
        v59 = v78[5];
        v74 = v78[6];
        v75 = v78[4];
        v72 = v78[8];
        v73 = v78[7];
        v70 = v78[10];
        v71 = v78[9];
        v68 = v78[12];
        v69 = v78[11];
        goto LABEL_8;
      }
    }

    else
    {
      sub_1E3A28718(v79);
    }

    v21 = 0;
  }

  v63 = 0;
  v64 = 0;
  v61 = 0;
  v74 = 0;
  v75 = 0;
  v59 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
LABEL_8:
  OUTLINED_FUNCTION_8();
  v24 = (*(v23 + 872))();
  if (v24)
  {
    v25 = v24;
    *v6 = sub_1E4201D44();
    *(v6 + 1) = 0;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38500, &qword_1E42D0768);
    v76[0] = sub_1E3741880(v25);
    v56[1] = swift_getKeyPath();
    v26 = swift_allocObject();
    v58 = v16;
    v27 = v26;
    memcpy((v26 + 16), v2, 0x61uLL);
    v28 = swift_allocObject();
    v57 = v21;
    *(v28 + 16) = sub_1E3D94780;
    *(v28 + 24) = v27;
    sub_1E3D9478C(v2, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A38, &unk_1E429FEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38508, &qword_1E42D0798);
    sub_1E374AD40(&qword_1ECF28A48, &qword_1ECF28A38, &unk_1E429FEB0, MEMORY[0x1E69E6338]);
    sub_1E3D94B58(qword_1EE23BA70, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    sub_1E3D947C4();
    v21 = v57;
    v16 = v58;
    sub_1E4203B34();

    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v29, v30, v31, v32);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_82();
    v37 = sub_1E374AD40(v33, v34, v35, v36);
    OUTLINED_FUNCTION_5_1(v37);
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v38, v39);
  }

  else
  {
    nullsub_1();
    v40 = v66;
    (*(v10 + 16))(v65, v0, v66);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    v45 = sub_1E374AD40(v41, v42, v43, v44);
    OUTLINED_FUNCTION_5_1(v45);
    sub_1E4201F44();
    (*(v10 + 8))(v0, v40);
  }

  v46 = v16;
  sub_1E3743538(v20, v16, &qword_1ECF384E0, &qword_1E42D0750);
  v47 = v21;
  v49 = v63;
  v48 = v64;
  v76[0] = v21;
  v76[1] = v64;
  v50 = v61;
  v76[2] = v63;
  v76[3] = v61;
  v51 = v59;
  v52 = v60;
  v76[4] = v75;
  v76[5] = v59;
  v76[6] = v74;
  v76[7] = v73;
  v76[8] = v72;
  v76[9] = v71;
  v76[10] = v70;
  v76[11] = v69;
  v76[12] = v68;
  memcpy(v60, v76, 0x68uLL);
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384F0, &qword_1E42D0758) + 48);
  sub_1E3743538(v46, v53, &qword_1ECF384E0, &qword_1E42D0750);
  sub_1E3743538(v76, v77, &qword_1ECF384F8, &qword_1E42D0760);
  v54 = OUTLINED_FUNCTION_98();
  sub_1E325F69C(v54, v55);
  sub_1E325F69C(v46, &qword_1ECF384E0);
  v77[0] = v47;
  v77[1] = v48;
  v77[2] = v49;
  v77[3] = v50;
  v77[4] = v75;
  v77[5] = v51;
  v77[6] = v74;
  v77[7] = v73;
  v77[8] = v72;
  v77[9] = v71;
  v77[10] = v70;
  v77[11] = v69;
  v77[12] = v68;
  sub_1E325F69C(v77, &qword_1ECF384F8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D93674@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38518, &qword_1E42D07A0);
  OUTLINED_FUNCTION_0_10();
  v82 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38520, &qword_1E42D07A8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38528, &qword_1E42D07B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  v17 = *(a1 + 98);
  if (sub_1E373F6E0(v17, 113, v18, v19, v20, v21) & 1) != 0 || (sub_1E373F6E0(v17, 114, v22, v23, v24, v25))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v26 + 392))())
    {
      type metadata accessor for FlexibleGridLayout();
      if (swift_dynamicCastClass())
      {
LABEL_7:
        OUTLINED_FUNCTION_8();
        (*(v27 + 176))(v87);

        v32 = 0.0;
        if ((v87[4] & 1) == 0)
        {
          v33 = OUTLINED_FUNCTION_6();
          v32 = sub_1E3952BE0(v33, v34, v35, v36);
        }

        *&v37 = a2[3] - v32;
        v38 = sub_1E373F6E0(v17, 114, v28, v29, v30, v31);
        sub_1E383A2D0(v37, 0, v38 & 1, v88, 5.0, 6.0, 1.0, 4.0);
        v39 = *&v88[16];
        *v4 = *v88;
        *(v4 + 16) = v39;
        *(v4 + 32) = *&v88[32];
        *(v4 + 48) = v88[48];
        v40 = swift_storeEnumTagMultiPayload();
        v43 = sub_1E3741C5C(v40, v41, v42);
        v46 = sub_1E3741E4C(v43, v44, v45);
        __dst[0] = &type metadata for FlexibleGridRow;
        __dst[1] = v46;
        OUTLINED_FUNCTION_12_115();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __dst[0] = v84;
        __dst[1] = OpaqueTypeConformance2;
        OUTLINED_FUNCTION_12_18();
        swift_getOpaqueTypeConformance2();
        return sub_1E4201F44();
      }
    }

    type metadata accessor for FlexibleGridLayout();
    sub_1E3B8B8C0();
    goto LABEL_7;
  }

  v79 = v12;
  v80 = v10;
  v81 = a3;
  memcpy(__dst, a2 + 4, 0x41uLL);
  v49 = *(a2 + 2);
  v50 = *(*v49 + 904);

  v51 = sub_1E3741F40(__dst, v88);
  v52 = v50(v51);
  v53 = OUTLINED_FUNCTION_18();
  sub_1E3E321AC(a1, __dst, v52, v53 & 1, v87);
  v89 = *a2;
  v86 = *a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  v54 = sub_1E4203914();
  v55 = *v88;
  v56 = *&v88[8];
  v57 = *&v88[16];
  v77 = sub_1E3741E4C(v54, v58, v59);
  sub_1E3CEB108(v55, v56, &type metadata for FlexibleGridRow, v57);

  memcpy(v88, v87, sizeof(v88));
  v60 = sub_1E3741F9C(v88);
  if (!(*(*v49 + 392))(v60))
  {
    goto LABEL_13;
  }

  type metadata accessor for FlexibleGridLayout();
  if (!swift_dynamicCastClass())
  {

LABEL_13:
    type metadata accessor for FlexibleGridLayout();
    sub_1E3B8B8C0();
  }

  OUTLINED_FUNCTION_8();
  (*(v61 + 176))(v87);

  v62 = 0.0;
  if ((v87[4] & 1) == 0)
  {
    v63 = OUTLINED_FUNCTION_6();
    v62 = sub_1E3952BE0(v63, v64, v65, v66);
  }

  v67 = a2[3] - v62;
  v86 = v89;
  sub_1E42038F4();
  v68 = v85;
  *&v86 = &type metadata for FlexibleGridRow;
  *(&v86 + 1) = v77;
  OUTLINED_FUNCTION_12_115();
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v84;
  sub_1E3AEEBF8(a1, v84, v69, v67, v68);
  (*(v82 + 8))(v3, v70);
  v72 = v79;
  v71 = v80;
  (*(v79 + 16))(v4, v15, v80);
  v73 = swift_storeEnumTagMultiPayload();
  sub_1E3741C5C(v73, v74, v75);
  *&v86 = v70;
  *(&v86 + 1) = v69;
  OUTLINED_FUNCTION_12_18();
  swift_getOpaqueTypeConformance2();
  sub_1E4201F44();
  return (*(v72 + 8))(v15, v71);
}

uint64_t sub_1E3D93D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1E3D93D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3D93DE0(uint64_t a1)
{
  sub_1E3D93ECC(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E3D93ECC(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3D93ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3D93F38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E3D93F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3D93FE4()
{
  result = qword_1ECF38408;
  if (!qword_1ECF38408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38338, &unk_1E42D0440);
    sub_1E3D9409C();
    sub_1E374AD40(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38408);
  }

  return result;
}

unint64_t sub_1E3D9409C()
{
  result = qword_1ECF38410;
  if (!qword_1ECF38410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38328, &qword_1E42D0430);
    sub_1E3D94264(&qword_1ECF38418, &unk_1ECF38420, &unk_1E42D06F0, sub_1E3D94180);
    sub_1E374AD40(&qword_1ECF38498, &qword_1ECF38330, &qword_1E42D0438, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38410);
  }

  return result;
}

unint64_t sub_1E3D94180()
{
  result = qword_1ECF38428;
  if (!qword_1ECF38428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38430, &qword_1E42D06F8);
    sub_1E3D94264(&qword_1ECF38438, &qword_1ECF38440, &qword_1E42D0700, sub_1E3D942DC);
    sub_1E374AD40(&qword_1ECF38488, &qword_1ECF38490, &qword_1E42D0728, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38428);
  }

  return result;
}

uint64_t sub_1E3D94264(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_1E3D942DC()
{
  result = qword_1ECF38448;
  if (!qword_1ECF38448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38450, &qword_1E42D0708);
    sub_1E3D94368();
    sub_1E3D94498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38448);
  }

  return result;
}

unint64_t sub_1E3D94368()
{
  result = qword_1ECF38458;
  if (!qword_1ECF38458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38460, &qword_1E42D0710);
    sub_1E3D943F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38458);
  }

  return result;
}

unint64_t sub_1E3D943F4()
{
  result = qword_1ECF38468;
  if (!qword_1ECF38468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38470, &qword_1E42D0718);
    swift_getOpaqueTypeConformance2();
    sub_1E3D913A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38468);
  }

  return result;
}

unint64_t sub_1E3D94498()
{
  result = qword_1ECF38478;
  if (!qword_1ECF38478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38480, &qword_1E42D0720);
    sub_1E3D943F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38478);
  }

  return result;
}

unint64_t sub_1E3D94524()
{
  result = qword_1ECF384A0;
  if (!qword_1ECF384A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF384A8, &unk_1E42D0730);
    sub_1E3D929A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384A0);
  }

  return result;
}

unint64_t sub_1E3D945B0()
{
  result = qword_1ECF384B0;
  if (!qword_1ECF384B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38400, &qword_1E42D0528);
    sub_1E3D9463C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384B0);
  }

  return result;
}

unint64_t sub_1E3D9463C()
{
  result = qword_1ECF384B8;
  if (!qword_1ECF384B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF383F0, &qword_1E42D0518);
    sub_1E3D946C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384B8);
  }

  return result;
}

unint64_t sub_1E3D946C8()
{
  result = qword_1ECF384C0;
  if (!qword_1ECF384C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF383E8, &qword_1E42D0510);
    sub_1E374AD40(&qword_1ECF384C8, &qword_1ECF383E0, &qword_1E42D0508, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384C0);
  }

  return result;
}

unint64_t sub_1E3D947C4()
{
  result = qword_1ECF38510;
  if (!qword_1ECF38510)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38508, &qword_1E42D0798);
    sub_1E3741C5C(v1, v2, v3);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38518, &qword_1E42D07A0);
    sub_1E3741E4C(v4, v5, v6);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38510);
  }

  return result;
}

uint64_t sub_1E3D948C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexibleGridSubsetViewHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D94954(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3D949B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1E3D94A10()
{
  v0 = sub_1E4200EA4();
  OUTLINED_FUNCTION_17_2(v0);
  sub_1E4200E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E4203904();
  return result;
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

double sub_1E3D94AFC(uint64_t a1, _OWORD *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E4203904();
  return result;
}

uint64_t sub_1E3D94B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3D94BA0()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = sub_1E3D21824();
    v1 = *v2;
    *(v0 + 112) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E3D94C04()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = sub_1E3D21A0C();
    v1 = *v2;
    *(v0 + 120) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E3D94C9C()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v1 = sub_1E3C2F9A0();

  v2.n128_f64[0] = sub_1E3D94D68();
  v3 = (*(*v1 + 1160))(0x4010000000000000, 0, v2);
  v4 = (*(*v1 + 1712))(v3);
  sub_1E3C37CBC(v4, 17);

  return v1;
}

double sub_1E3D94D68()
{
  v1 = (*v0 + 1712);
  v2 = *v1;
  v3 = (*v1)();
  (*(*v3 + 2056))(1, 0);

  (v2)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 2080))(0, 0);

  (v2)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2104))(0, 0);

  v9 = (v2)(v8);
  v10 = *sub_1E3E5FDEC();
  v11 = *(*v9 + 680);
  v12 = v10;
  v11(v10);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(22);

  (v2)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(10);

  return result;
}

uint64_t sub_1E3D94FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FrameModifier(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4203DA4();
  v12 = v10;
  v13 = v11;
  v14 = (v2 + *(v6 + 28));
  v15 = *v14;
  if (*v14)
  {
    v29 = v11;
    v16 = v10;
    v17 = a1;
    v18 = v14[1];

    v19 = sub_1E42036E4();
    sub_1E3D9555C(v2, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v21 = swift_allocObject();
    sub_1E3D955C0(v9, v21 + v20);
    v22 = swift_allocObject();
    *(v22 + 16) = v15;
    *(v22 + 24) = v18;
    a1 = v17;
    v12 = v16;
    v13 = v29;
    v23 = sub_1E3D9569C;
    v24 = sub_1E3D95624;
  }

  else
  {
    v19 = 0;
    v24 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38588, &qword_1E42D08B0);
  OUTLINED_FUNCTION_2();
  (*(v25 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38590, &qword_1E42D08B8);
  v27 = (a2 + *(result + 36));
  *v27 = v19;
  v27[1] = v24;
  v27[2] = v21;
  v27[3] = v23;
  v27[4] = v22;
  v27[5] = v12;
  v27[6] = v13;
  return result;
}

uint64_t sub_1E3D951F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v22 = a3;
  v23 = a5;
  v9 = sub_1E4201274();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FrameModifier(0);
  OUTLINED_FUNCTION_2();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v15);
  v18 = 0;
  v19 = 0;
  if (a2)
  {

    v18 = v22;
    v19 = a4;
  }

  (*(v10 + 32))(v17, v12, v9);
  v20 = &v17[*(v13 + 20)];
  *v20 = v18;
  *(v20 + 1) = v19;
  MEMORY[0x1E690DE70](v17, v23, v13, v24);
  return sub_1E3D953E0(v17);
}

uint64_t type metadata accessor for FrameModifier(uint64_t a1)
{
  result = qword_1EE2A6CA8;
  if (!qword_1EE2A6CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3D953E0(uint64_t a1)
{
  v2 = type metadata accessor for FrameModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3D9543C()
{
  result = qword_1EE2A6CC0[0];
  if (!qword_1EE2A6CC0[0])
  {
    type metadata accessor for FrameModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A6CC0);
  }

  return result;
}

void sub_1E3D954BC(uint64_t a1)
{
  sub_1E4201274();
  if (v1 <= 0x3F)
  {
    sub_1E381ECE4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E3D9555C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrameModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D955C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrameModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3D95624(void *a1@<X8>)
{
  type metadata accessor for FrameModifier(0);
  sub_1E4200E74();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

unint64_t sub_1E3D956CC()
{
  result = qword_1ECF38598;
  if (!qword_1ECF38598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38590, &qword_1E42D08B8);
    sub_1E32752B0(&qword_1EE288908, &qword_1ECF38588, &qword_1E42D08B0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF385A0, &qword_1ECF385A8, qword_1E42D08C0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38598);
  }

  return result;
}

double sub_1E3D957B0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return result;
}

uint64_t sub_1E3D957E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 248) = a1;
}

uint64_t sub_1E3D9587C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E3D958B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 256) = a1;

  return result;
}

uint64_t sub_1E3D95948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E3D965D4(&unk_1EE28A130, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

void *sub_1E3D959C4()
{
  (*(*v0 + 1104))();
  v1 = v0[47];
  v2 = v1;
  return v1;
}

uint64_t sub_1E3D95A18@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_18_93();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (*(v1 + 280) != 1)
  {
    goto LABEL_7;
  }

  v13 = *(v1 + 312);
  v14 = *(v1 + 320);
  __swift_project_boxed_opaque_existential_1((v1 + 288), v13);
  (*(*(v14 + 8) + 88))(v13);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_1E325F7FC(v2, &unk_1ECF28E20, &unk_1E42986D0);
LABEL_7:
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v18, 1, v6);
  }

  v15 = *(v8 + 32);
  v15(v12, v2, v6);
  v16 = objc_opt_self();
  v17 = sub_1E41FE514();
  LODWORD(v16) = [v16 shouldShowLabelForDownloadExpirationDate_];

  if (!v16)
  {
    (*(v8 + 8))(v12, v6);
    goto LABEL_7;
  }

  v15(a1, v12, v6);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v6);
}

uint64_t sub_1E3D95C0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_allocObject();
  return sub_1E3D95C60(a1, v4, a3);
}

uint64_t sub_1E3D95C60(void *a1, char a2, uint64_t a3)
{
  *(v3 + 368) = 0;
  *(v3 + 376) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
  v8 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel_childrenUpdatedSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *(v3 + v9) = sub_1E4200544();
  sub_1E327F454(a1, v3 + 288);
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_3_178();
  *(v3 + 264) = (*(v11 + 16))(v10);
  *(v3 + 272) = v12;
  *(v3 + 280) = a2;
  sub_1E3D96570(a3, v3 + 328, &qword_1ECF2D640, &qword_1E42A9BA0);

  sub_1E39C0300();
  v13 = OUTLINED_FUNCTION_38();
  sub_1E325F7FC(v13, &qword_1ECF2D640, &qword_1E42A9BA0);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1E3D95DB0()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 36, v0[39]);
  v2 = OUTLINED_FUNCTION_38();
  if ((v3(v2) & 1) == 0)
  {
    return 0;
  }

  v4 = v0[3];
  if (v4)
  {
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  type metadata accessor for LibViewModel();

  MEMORY[0x1E69109E0](v5, v6);

  MEMORY[0x1E69109E0](0x79616C7265766F2DLL, 0xE800000000000000);

  v7 = sub_1E3B76C80(164, 0, 0xE000000000000000, v1, 0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x80000001E4266270;
  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v12;
  *(inited + 120) = v11;
  *(inited + 96) = 0xD00000000000001ELL;
  *(inited + 104) = 0x80000001E4266290;
  v13 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();

  v14 = sub_1E3F5321C(39, v13, v7);
  if (v14)
  {
    v15 = v14;
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E4298880;
      *(v16 + 32) = v15;
      v17 = *(*v7 + 472);

      v17(v16);
    }
  }

  return v7;
}

void sub_1E3D96028()
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE90, &unk_1E42A8970);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v49 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  sub_1E3D95A18(v17);
  OUTLINED_FUNCTION_63(v17);
  if (v36)
  {
    sub_1E325F7FC(v17, &unk_1ECF28E20, &unk_1E42986D0);
    v27 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3D96570(&v0[v27], v8, &unk_1ECF28E20, &unk_1E42986D0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v18);
    v29 = sub_1E325F7FC(v8, &unk_1ECF28E20, &unk_1E42986D0);
    if (EnumTagSinglePayload == 1)
    {
      return;
    }

LABEL_14:
    v0[368] = 0;
    (*(*v0 + 1096))(v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    sub_1E3D965D4(&qword_1EE28A140, MEMORY[0x1E695BF80]);
    sub_1E4200624();

    return;
  }

  v46 = *(v20 + 32);
  v47 = v11;
  v46(v26, v17, v18);
  (*(v20 + 16))(v14, v26, v18);
  OUTLINED_FUNCTION_20_87();
  v30 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v48 = v26;
  v31 = v20;
  v32 = *(v50 + 48);
  sub_1E3D96570(v14, v3, &unk_1ECF28E20, &unk_1E42986D0);
  v50 = v0;
  v33 = &v0[v30];
  v34 = v3;
  v35 = v32;
  sub_1E3D96570(v33, v34 + v32, &unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_63(v34);
  if (v36)
  {
    sub_1E325F7FC(v14, &unk_1ECF28E20, &unk_1E42986D0);
    (*(v31 + 8))(v48, v18);
    OUTLINED_FUNCTION_63(v34 + v32);
    if (v36)
    {
      sub_1E325F7FC(v34, &unk_1ECF28E20, &unk_1E42986D0);
      return;
    }

    goto LABEL_13;
  }

  v37 = v47;
  v38 = v48;
  v39 = v31;
  sub_1E3D96570(v34, v47, &unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_63(v34 + v35);
  if (v40)
  {
    sub_1E325F7FC(v14, &unk_1ECF28E20, &unk_1E42986D0);
    v41 = *(v31 + 8);
    v41(v38, v18);
    v41(v37, v18);
LABEL_13:
    v29 = sub_1E325F7FC(v34, &qword_1ECF2CE90, &unk_1E42A8970);
    v0 = v50;
    goto LABEL_14;
  }

  v42 = (v34 + v35);
  v43 = v49;
  v46(v49, v42, v18);
  sub_1E3D96624();
  v44 = sub_1E4205E84();
  v45 = *(v39 + 8);
  v45(v43, v18);
  sub_1E325F7FC(v14, &unk_1ECF28E20, &unk_1E42986D0);
  v45(v38, v18);
  v45(v37, v18);
  v29 = sub_1E325F7FC(v34, &unk_1ECF28E20, &unk_1E42986D0);
  v0 = v50;
  if ((v44 & 1) == 0)
  {
    goto LABEL_14;
  }
}

uint64_t sub_1E3D96570(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_37_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E3D965D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF326C0, &qword_1E429D160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3D96624()
{
  result = qword_1EE28A458;
  if (!qword_1EE28A458)
  {
    sub_1E41FE5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A458);
  }

  return result;
}

void sub_1E3D9667C()
{
  if ((*(v0 + 368) & 1) == 0)
  {
    v1 = v0;
    v2 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    type metadata accessor for LibViewModel();
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1(v1 + 36, v1[39]);
    OUTLINED_FUNCTION_14_127(*(v4 + 8), v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v3, v47);
    OUTLINED_FUNCTION_37_1();
    (*(v5 + 16))();
    v6 = sub_1E3B76F00(&v43, v0);
    v7 = __swift_destroy_boxed_opaque_existential_1(&v43);
    if (v6)
    {
      MEMORY[0x1E6910BF0](v7);
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    type metadata accessor for TextViewModel();
    v9 = *(v0 + 312);
    OUTLINED_FUNCTION_21_86();
    OUTLINED_FUNCTION_3_178();
    OUTLINED_FUNCTION_33_24();
    v11 = v10(v9);
    v12 = MEMORY[0x1E69E6158];
    v46 = MEMORY[0x1E69E6158];
    v43 = v11;
    v44 = v13;

    if (OUTLINED_FUNCTION_17_109(23, &v43))
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    if (sub_1E3D96AA8((v0 + 288)) || (type metadata accessor for LibEpisodeViewModel(0), v14 = sub_1E3D97284((v0 + 288)), v46 = v12, v43 = v14, v44 = v15, , OUTLINED_FUNCTION_17_109(15, &v43)))
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    v16 = *(v0 + 312);
    OUTLINED_FUNCTION_21_86();
    OUTLINED_FUNCTION_3_178();
    v18 = (*(v17 + 72))(v16);
    if (v19)
    {
      v40 = v12;
      v37 = v18;
      v38 = v19;
      sub_1E3751C10();
      v20 = *(v0 + 312);
      v21 = *(v0 + 320);
      OUTLINED_FUNCTION_21_86();
      OUTLINED_FUNCTION_14_127(*(v21 + 8), v36, v37, v38, v39, v12, v41, v42, v43, v44, v45, v20, v47);
      OUTLINED_FUNCTION_37_1();
      (*(v22 + 16))();
      v23 = sub_1E37FAFF8();

      if (sub_1E3C27638(9, &v37, v1, v23, 0))
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_1_214();
        if (v8)
        {
          OUTLINED_FUNCTION_2_180();
        }

        OUTLINED_FUNCTION_13_128();
        sub_1E4206324();
        v2 = v42;
      }
    }

    type metadata accessor for LibDownloadButtonViewModel();
    v24 = v1[39];
    v25 = v1[40];
    __swift_project_boxed_opaque_existential_1(v1 + 36, v24);
    OUTLINED_FUNCTION_14_127(*(v25 + 8), v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v24, v47);
    OUTLINED_FUNCTION_37_1();
    (*(v26 + 16))();
    v27 = v1[39];
    OUTLINED_FUNCTION_21_86();
    OUTLINED_FUNCTION_3_178();
    v29 = (*(v28 + 16))(v27);
    v31 = v30;
    sub_1E3D96570((v1 + 41), &v37, &qword_1ECF2D640, &qword_1E42A9BA0);

    if (sub_1E38F5DAC(&v43, v29, v31, v1, &v37))
    {
      v32 = *(*v1 + 944);

      v34 = v32(v33);
      MEMORY[0x1E6910BF0](v34);
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    (*(*v1 + 472))(v2);
    *(v1 + 368) = 1;
  }
}

uint64_t sub_1E3D96AA8(void *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v66 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v68 = v1;
  sub_1E3D95A18(v16);
  OUTLINED_FUNCTION_63(v16);
  if (v24)
  {
    sub_1E325F7FC(v16, &unk_1ECF28E20, &unk_1E42986D0);
    return 0;
  }

  else
  {
    v65 = v19;
    v26 = *(v19 + 32);
    v67 = v23;
    v26(v23, v16, v17);
    v28 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    v29 = (*(*(v27 + 8) + 80))(v28);
    v30 = v29;
    if ((v29 & 0x100000000) != 0)
    {
      v31 = sub_1E41A3110();
      v32 = v66;
      (*(v66 + 16))(v8, v31, v3);
      sub_1E327F454(a1, v70);
      v33 = sub_1E41FFC94();
      v34 = sub_1E42067F4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v69[0] = v64;
        *v35 = 136315138;
        v63 = v34;
        __swift_project_boxed_opaque_existential_1(v70, v71);
        v36 = sub_1E4207944();
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1(v70);
        v39 = sub_1E3270FC8(v36, v38, v69);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1E323F000, v33, v63, "Downloaded episode %s should have adam ID", v35, 0xCu);
        v40 = v64;
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x1E69143B0](v40, -1, -1);
        MEMORY[0x1E69143B0](v35, -1, -1);

        (*(v32 + 8))(v8, v3);
      }

      else
      {

        (*(v32 + 8))(v8, v3);
        __swift_destroy_boxed_opaque_existential_1(v70);
      }

      v30 = 0;
    }

    v41 = v65;
    (*(v65 + 16))(v13);
    OUTLINED_FUNCTION_20_87();
    v42 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
    v43 = v68;
    swift_beginAccess();
    sub_1E32ABDC0(v13, v43 + v42);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    ViewModelKeys.rawValue.getter(7);
    *(inited + 32) = v45;
    *(inited + 40) = v46;
    *(inited + 72) = MEMORY[0x1E69E72F0];
    *(inited + 48) = v30;
    ViewModelKeys.rawValue.getter(11);
    *(inited + 80) = v47;
    *(inited + 88) = v48;
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_1E4297BD0;
    sub_1E3854630(1);
    *(v49 + 32) = v50;
    *(v49 + 40) = v51;
    sub_1E41FE574();
    *(v49 + 72) = MEMORY[0x1E69E63B0];
    *(v49 + 48) = v52;
    sub_1E3854630(0);
    *(v49 + 80) = v53;
    *(v49 + 88) = v54;
    v55 = MEMORY[0x1E69E6370];
    *(v49 + 120) = MEMORY[0x1E69E6370];
    *(v49 + 96) = 1;
    sub_1E3854630(2);
    *(v49 + 128) = v56;
    *(v49 + 136) = v57;
    *(v49 + 168) = v55;
    *(v49 + 144) = 1;
    v58 = sub_1E4205CB4();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *(inited + 120) = v59;
    *(inited + 96) = v58;
    v60 = sub_1E4205CB4();
    type metadata accessor for TextViewModel();
    v71 = v59;
    v70[0] = v60;

    v25 = sub_1E3C27638(15, v70, v43, 0, 0);
    (*(v41 + 8))(v67, v17);
  }

  return v25;
}

void sub_1E3D97020()
{
  if (!v0[47])
  {
    v1 = v0;
    sub_1E3751C10();
    v2 = v0[39];
    v3 = v0[40];
    __swift_project_boxed_opaque_existential_1(v1 + 36, v1[39]);
    v21[3] = v2;
    v21[4] = *(*(v3 + 8) + 8);
    __swift_allocate_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_37_1();
    (*(v4 + 16))();
    v5 = sub_1E37FAFF8();
    v6 = v0[47];
    v1[47] = v5;
    v7 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v9;
    *(inited + 48) = sub_1E4205F14();
    *(inited + 56) = v10;
    *(inited + 64) = sub_1E4205F14();
    *(inited + 72) = v11;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v12;
    *(inited + 96) = sub_1E4205F14();
    *(inited + 104) = v13;
    *(inited + 112) = sub_1E4205F14();
    *(inited + 120) = v14;
    v15 = sub_1E4205CB4();
    type metadata accessor for Metrics(0);
    v16 = sub_1E3BA54D0();
    v17 = (*(*v1 + 584))(v16);
    v18 = (*(*v1 + 576))(v17);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1E3797720(v15);

      (*(*v19 + 184))(v20);
    }

    else
    {
    }
  }
}

id sub_1E3D97284(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_18_93();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v54 = 0;
  v55 = 0xE000000000000000;
  if ([objc_opt_self() isTV] && (TVAppFeature.isEnabled.getter(10, v12, v13) & 1) != 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_3_178();
    v14 = OUTLINED_FUNCTION_38();
    return v15(v14);
  }

  v53 = v11;
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8_140(result);
  v18 = v17;

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 24))(v19, v20);
  v21 = v7;
  if (v22)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v23 = sub_1E4207944();
    v24 = v25;
  }

  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  OUTLINED_FUNCTION_33_24();
  v29 = v28(v27, v26);
  if ((v30 & 1) == 0)
  {

    v29 = sub_1E4206584();
    v23 = v29;
    v24 = v30;
  }

  v32 = v21;
  v33 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v33 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  if (!v33)
  {

    v18 = 0;
LABEL_17:
    v37 = 0xE000000000000000;
    goto LABEL_18;
  }

  if (!v18)
  {

    goto LABEL_17;
  }

  sub_1E32822E0(v29, v30, v31);
  OUTLINED_FUNCTION_25();
  v35 = sub_1E42071F4();
  v37 = v36;

  v54 = v35;
  v55 = v37;
  v18 = v35 & 0xFFFFFFFFFFFFLL;
LABEL_18:
  v39 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  (*(*(*(v38 + 8) + 8) + 120))(v39);
  if (__swift_getEnumTagSinglePayload(v1, 1, v34) == 1)
  {
    sub_1E325F7FC(v1, &unk_1ECF28E20, &unk_1E42986D0);
  }

  else
  {
    (*(v32 + 32))(v53, v1, v34);
    v40 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v40 = v18;
    }

    if (v40)
    {
      OUTLINED_FUNCTION_19_102();
    }

    v41 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v41 setTimeStyle_];
    [v41 setDateStyle_];
    v42 = sub_1E41FE514();
    v43 = [v41 stringFromDate_];

    v44 = sub_1E4205F14();
    v46 = v45;

    MEMORY[0x1E69109E0](v44, v46);

    (*(v32 + 8))(v53, v34);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v47 = OUTLINED_FUNCTION_38();
  v49 = v48(v47);
  v51 = v50;
  v52 = v54 & 0xFFFFFFFFFFFFLL;
  if ((v55 & 0x2000000000000000) != 0)
  {
    v52 = HIBYTE(v55) & 0xF;
  }

  if (v52)
  {
    OUTLINED_FUNCTION_19_102();
  }

  MEMORY[0x1E69109E0](v49, v51);

  return v54;
}

double sub_1E3D97798()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  sub_1E325F7FC(v0 + 328, &qword_1ECF2D640, &qword_1E42A9BA0);

  sub_1E325F7FC(v0 + OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate, &unk_1ECF28E20, &unk_1E42986D0);

  return result;
}

uint64_t sub_1E3D97830()
{
  v0 = ViewModel.deinit();

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  sub_1E325F7FC(v0 + 328, &qword_1ECF2D640, &qword_1E42A9BA0);

  sub_1E325F7FC(v0 + OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate, &unk_1ECF28E20, &unk_1E42986D0);

  return v0;
}

uint64_t sub_1E3D978C8()
{
  v0 = sub_1E3D97830();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for LibEpisodeViewModel(uint64_t a1)
{
  result = qword_1EE29EE50;
  if (!qword_1EE29EE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D97A80(uint64_t a1)
{
  sub_1E3273C28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3D97B54()
{
  OUTLINED_FUNCTION_15_1();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void sub_1E3D97B98(uint64_t a1, uint64_t a2, double a3)
{
  v6 = fabs(a3) < sub_1E3D97C6C(&selRef_focusVelocityThreshold);
  v7 = *(v3 + 16);
  v8 = sub_1E3D97C6C(&selRef_focusDebounceInterval);
  sub_1E32ADE38();
  v9 = sub_1E4206A04();
  (*(*v7 + 112))(v6, v9, a1, a2, v8);
}

double sub_1E3D97C6C(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 libConfig];

  [v3 *a1];
  v5 = v4;

  return v5;
}

uint64_t sub_1E3D97CF4()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  sub_1E3D97D24();
  return v0;
}

uint64_t sub_1E3D97D24()
{
  type metadata accessor for Debouncer();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

void sub_1E3D97D54(char a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, double a5)
{
  v23[1] = a2;
  v10 = sub_1E4204014();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = sub_1E4203FC4();
  v19 = MEMORY[0x1EEE9AC00](v17);
  v24 = v5;
  if (*(v5 + 16))
  {

    sub_1E4204034();
  }

  if (a1)
  {
    a3(v18, v19);
  }

  else
  {
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_108;
    _Block_copy(aBlock);
    v25 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    sub_1E4204054();
    swift_allocObject();
    v20 = sub_1E4204024();

    sub_1E4204004();
    v21.n128_f64[0] = a5;
    sub_1E4204074(v21);
    v22 = *(v11 + 8);
    v22(v13, v10);
    sub_1E4206994();
    v22(v16, v10);
    *(v24 + 16) = v20;
  }
}

char *sub_1E3D98030()
{
  type metadata accessor for VerticalStackView();
  v1 = *v0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v12 = 2;
  v14 = 0;
  v13 = 0;
  v5 = sub_1E3DA6C4C(v1, 0, v10, v2, v3, v4);
  if (!v5)
  {
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v6 = v5;
  v7 = *(v0 + 24);
  v8 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded;
  swift_beginAccess();
  v6[v8] = v7;
  return v6;
}

uint64_t sub_1E3D980E4(void *a1)
{
  v2 = v1;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 vui:*(v2 + 8) sizeThatFits:*(v2 + 16)];
  v16 = v15;
  v18 = v17;
  v19.n128_u64[0] = 0;
  v25 = sub_1E3DA6ACC(v19);
  if (*(v2 + 32))
  {
    v26 = v25;
    sub_1E3DAF3BC(v16, v18, 0, v20, v21, v22, v23, v24);
    sub_1E3DAF30C(*&v26 & 0x7FFFFFFFFFFFFFFFLL, 0, v27, v28, v29, v30, v31, v32);
  }

  sub_1E32ADE38();
  v33 = sub_1E4206A04();
  v34 = swift_allocObject();
  v35 = *(v2 + 16);
  *(v34 + 16) = *v2;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(v2 + 32);
  aBlock[4] = sub_1E3D983C8;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_109;
  v36 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v14, v9, v36);
  _Block_release(v36);

  (*(v6 + 8))(v9, v4);
  return (*(v11 + 8))(v14, v39);
}

double sub_1E3D983C8()
{
  if (*(v0 + 48))
  {
    return sub_1E3DAF470();
  }

  return result;
}

uint64_t sub_1E3D983F0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

unint64_t sub_1E3D9840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3D98434(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3D98434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF385B0;
  if (!qword_1ECF385B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF385B0);
  }

  return result;
}

unint64_t sub_1E3D9848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF385B8;
  if (!qword_1ECF385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF385B8);
  }

  return result;
}

uint64_t sub_1E3D984E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3D98728(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3D9852C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3D98728(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3D98600()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3D98434(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3D98654()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3D98434(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3D986A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3D98434(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3D986D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3D98728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF385C0;
  if (!qword_1ECF385C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF385C0);
  }

  return result;
}

uint64_t sub_1E3D9877C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3D9D2CC(a1, a2, a3);

  return sub_1E3E36CBC(a1, a2, v5);
}

uint64_t sub_1E3D987C8()
{
  OUTLINED_FUNCTION_31_58();
  sub_1E3D9D2CC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36CD0(v3, v4, v5, v6);
}

uint64_t sub_1E3D988B4()
{
  OUTLINED_FUNCTION_31_58();
  sub_1E3D9CFF0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB778](v3);
}

uint64_t sub_1E3D9890C()
{
  OUTLINED_FUNCTION_31_58();
  sub_1E3D9CFF0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB740](v3);
}

void sub_1E3D98964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3D9CFF0(a1, a2, a3);
  sub_1E42025D4();
  __break(1u);
}

uint64_t sub_1E3D9898C()
{
  if ([objc_opt_self() isSUIEnabled])
  {
    return 1;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t sub_1E3D989C8(void *a1)
{
  v2 = sub_1E3827728([a1 uiConfiguration], &selRef_viewControllerIdentifier);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_1E39A4DDC(a1, &selRef_controllerRef);
  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
  }

  else
  {
    v9 = v6;
    v10 = v7;

    if (v10)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1E3D98A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  OUTLINED_FUNCTION_31_58();
  v6 = swift_allocObject();
  sub_1E3D98AD8(v4, v3, v5);
  return v6;
}

uint64_t sub_1E3D98AD8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_31_58();
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v4;
  *(v3 + 40) = a3;
  return v3;
}

uint64_t sub_1E3D98B64()
{

  MEMORY[0x1E69144A0](v0 + 32);

  return v0;
}

uint64_t sub_1E3D98B9C()
{
  sub_1E3D98B64();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1E3D98BF4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  OUTLINED_FUNCTION_31_58();
  v9 = v8;
  type metadata accessor for InternalDocumentModel();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *v9 = v10;
  *(v9 + 8) = a3;
  *(v9 + 9) = a4;
}

uint64_t sub_1E3D98C6C(uint64_t a1, uint64_t a2)
{
  sub_1E3D9C464();
  v4 = *(*(a2 + 16) + 16);
  v5 = *(*(a1 + 16) + 16);
  v6 = v4;
  OUTLINED_FUNCTION_75();
  v7 = sub_1E4206F64();

  v8 = *(a1 + 24);
  if (v8)
  {
    sub_1E3D98D3C(v8);
    if (v9)
    {
      v10 = v9;
      if ((v7 & 1) != 0 && (v11 = *(a2 + 24)) != 0 && (sub_1E3D98D3C(v11), v12))
      {
        v7 = sub_1E3D9C074(v10, v12);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7 & 1;
}

void sub_1E3D98D3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385C8, &unk_1E42D0CB0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1E374E74C(*(a1 + 48) + 40 * v10, __src);
    sub_1E328438C(*(a1 + 56) + 32 * v10, &__src[2] + 8);
    memcpy(__dst, __src, sizeof(__dst));
    v28 = __src[0];
    v29 = __src[1];
    v30 = *&__src[2];
    sub_1E329504C(&__dst[5], &v27);
    if (!swift_dynamicCast())
    {
      sub_1E375D84C(&v28);

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1E325F6F0(&v24, &qword_1ECF40720, &qword_1E429D878);

      return;
    }

    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v31 = v28;
    v32 = v29;
    v33 = v30;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v11 = sub_1E42073F4();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_22;
        }
      }

      goto LABEL_27;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = 5 * v15;
    v21 = *(v2 + 48) + 8 * v20;
    v22 = v32;
    *v21 = v31;
    *(v21 + 16) = v22;
    *(v21 + 32) = v33;
    v23 = *(v2 + 56) + 8 * v20;
    *v23 = v28;
    *(v23 + 16) = v29;
    *(v23 + 32) = v30;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1E3D99078()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3D990C4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v438 = a2;
  v458 = a3;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385D0, &qword_1E42D0CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v457 = v5;
  v443 = type metadata accessor for AccountSettings(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v439 = v7;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385D8, &qword_1E42D0CC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v442 = v9;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385E0, &qword_1E42D0CD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v444 = v11;
  type metadata accessor for LibShowDetailsView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_3();
  v445 = v13;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385E8, &qword_1E42D0CD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v453 = v15;
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385F0, &qword_1E42D0CE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v448 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385F8, &qword_1E42D0CE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v437[-v19];
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38600, &qword_1E42D0CF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v437[-v22];
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38608, &qword_1E42D0CF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v450 = v25;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38610, &qword_1E42D0D00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v454 = v27;
  v28 = *(a1 + 16);
  v29 = *(v28 + 16);
  OUTLINED_FUNCTION_5_0(v28 + 32, &v472);
  Strong = swift_unknownObjectWeakLoadStrong();
  v440 = a1;
  v460 = *(a1 + 24);

  v30 = v29;
  v31 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v32 = *v31;
  v461 = v30;
  v35 = sub_1E3D510B4(v30, v33, v34);

  if ((sub_1E3D9898C() & 1) == 0 && (v35 & 1) == 0)
  {
    type metadata accessor for UIFactory();
    v36 = v461;
    v37 = [v461 documentRef];
    sub_1E4205F14();

    v38 = OUTLINED_FUNCTION_75();
    v40 = sub_1E3D50E3C(v38, v39);

    if ((v40 & 1) == 0)
    {
      v115 = *v31;
      v44 = Strong;
      sub_1E3D50594();
      v117 = v116;

      if (!v117)
      {
        sub_1E3D9C574(v470);
        memcpy(v469, v470, 0xDDuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38618, &qword_1E42D0D08);
        sub_1E3D9C580();
        sub_1E4201F44();
LABEL_87:
        memcpy(v457, v471, 0xDDuLL);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_129();
        sub_1E379D7E4(v227, v228, v229, &qword_1E42D0D48);
        OUTLINED_FUNCTION_13_129();
        sub_1E379D7E4(v230, v231, v232, &qword_1E42D0D48);
        v233 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v233, v234);
        sub_1E3D9C8B0();
        OUTLINED_FUNCTION_6_158();
        OUTLINED_FUNCTION_82();
        sub_1E3D9CCC8(v235, v236, v237, v238);
        sub_1E4201F44();

        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v239, v240, v241);
        goto LABEL_88;
      }

      v118 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];
      *&v463[0] = v118;
      sub_1E3D9CD4C(v463);
      memcpy(v471, v463, 0xDCuLL);
      v119 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38630, &qword_1E42D0D10);
      v120 = sub_1E3D9C60C();
      sub_1E3D9C85C(v120, v121, v122);
      OUTLINED_FUNCTION_27_68();
      sub_1E4201F44();
      v123 = OUTLINED_FUNCTION_35_56();
      memcpy(v123, v124, 0xDCuLL);
      memcpy(v470, v462, 0xDCuLL);
      sub_1E3D9CD58(v470);
      v125 = OUTLINED_FUNCTION_20_88();
      memcpy(v125, v126, 0xDDuLL);
      sub_1E379D7E4(v464, v469, &qword_1ECF38618, &qword_1E42D0D08);
      v127 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v127, v128);
      sub_1E3D9C580();
      sub_1E4201F44();

      sub_1E325F6F0(v464, &qword_1ECF38618, &qword_1E42D0D08);
LABEL_86:
      memcpy(v471, v469, 0xDDuLL);
      goto LABEL_87;
    }

    v41 = [v36 &selRef_excludedCanonicals + 5];
    sub_1E4205F14();
    OUTLINED_FUNCTION_152();

    sub_1E4205F14();
    OUTLINED_FUNCTION_41_53();
    v43 = v43 && v40 == v42;
    v44 = Strong;
    if (v43)
    {
    }

    else
    {
      v45 = OUTLINED_FUNCTION_3_179();
      OUTLINED_FUNCTION_48_37(v45);
      OUTLINED_FUNCTION_47_44();

      if ((v37 & 1) == 0)
      {
        v46 = [v36 &selRef_excludedCanonicals + 5];
        sub_1E4205F14();
        OUTLINED_FUNCTION_152();

        sub_1E4205F14();
        OUTLINED_FUNCTION_41_53();
        if (v43 && v40 == v47)
        {
        }

        else
        {
          v49 = OUTLINED_FUNCTION_3_179();
          OUTLINED_FUNCTION_48_37(v49);
          OUTLINED_FUNCTION_47_44();

          if ((v37 & 1) == 0)
          {
            v50 = [v36 &selRef_excludedCanonicals + 5];
            sub_1E4205F14();
            OUTLINED_FUNCTION_152();

            sub_1E4205F14();
            OUTLINED_FUNCTION_41_53();
            if (v43 && v40 == v51)
            {
            }

            else
            {
              v53 = OUTLINED_FUNCTION_3_179();
              OUTLINED_FUNCTION_48_37(v53);
              OUTLINED_FUNCTION_47_44();

              if ((v37 & 1) == 0)
              {
                sub_1E3D9CE84(v464);
                v54 = OUTLINED_FUNCTION_19_103();
                memcpy(v54, v55, 0x9AuLL);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38690, &qword_1E42D0D40);
                sub_1E3D9C82C();
                sub_1E4201F44();
                v56 = OUTLINED_FUNCTION_40_53();
                memcpy(v56, v57, 0x9AuLL);
                sub_1E3D9CE90(v470);
                memcpy(v469, v470, 0xDBuLL);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38640, &qword_1E42D0D18);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38680, &qword_1E42D0D38);
                sub_1E3D9C6C4();
                OUTLINED_FUNCTION_4_188();
                OUTLINED_FUNCTION_55_0();
                sub_1E3D9CCC8(v58, v59, v60, v61);
                OUTLINED_FUNCTION_52_0();
                sub_1E4201F44();
LABEL_85:
                memcpy(v462, v471, 0xDBuLL);
                v211 = OUTLINED_FUNCTION_35_56();
                memcpy(v211, v212, 0xDBuLL);
                sub_1E3D9CD60(v464);
                v213 = OUTLINED_FUNCTION_19_103();
                memcpy(v213, v214, 0xDCuLL);
                OUTLINED_FUNCTION_10_121();
                v215 = OUTLINED_FUNCTION_57();
                __swift_instantiateConcreteTypeFromMangledNameV2(v215, v216);
                v217 = sub_1E3D9C60C();
                sub_1E3D9C85C(v217, v218, v219);
                OUTLINED_FUNCTION_27_68();
                sub_1E4201F44();
                v220 = OUTLINED_FUNCTION_40_53();
                memcpy(v220, v221, 0xDCuLL);
                sub_1E3D9CD58(v470);
                v222 = OUTLINED_FUNCTION_20_88();
                memcpy(v222, v223, 0xDDuLL);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38618, &qword_1E42D0D08);
                sub_1E3D9C580();
                OUTLINED_FUNCTION_27_68();
                sub_1E4201F44();
                OUTLINED_FUNCTION_82();
                sub_1E325F6F0(v224, v225, v226);
                goto LABEL_86;
              }
            }

            v246 = [v36 contextData];
            if (!v246)
            {
              goto LABEL_171;
            }

            v247 = sub_1E3751A20(v246);
            if (!v247)
            {
              goto LABEL_171;
            }

            sub_1E374BD08(v247);
            OUTLINED_FUNCTION_38();

            if (!v40)
            {
              goto LABEL_171;
            }

            sub_1E37FAF8C();

            OUTLINED_FUNCTION_24_79();

            if (*(&v471[1] + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
              v248 = OUTLINED_FUNCTION_26_84();
              if (OUTLINED_FUNCTION_49_46(v248, v249, v250, v251))
              {
                v252 = *&v470[0];
                sub_1E37FAFC8();

                v253 = OUTLINED_FUNCTION_57();
                sub_1E3277E60(v253, v254, v252, v255);

                if (*(&v471[1] + 1))
                {
                  v256 = OUTLINED_FUNCTION_26_84();
                  if (OUTLINED_FUNCTION_49_46(v256, v257, v258, v259))
                  {
                    v260 = v470[0];
                    v261 = sub_1E3B7B1C8();
                    v262 = *(**v261 + 408);

                    v264 = v262(v263);

                    if (v264)
                    {
                      v265 = sub_1E37FAF98();
                      v266 = *v265;
                      v267 = v265[1];

                      sub_1E3277E60(v266, v267, v252, v470);

                      if (*(&v470[1] + 1))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
                        v268 = OUTLINED_FUNCTION_20_88();
                        if (OUTLINED_FUNCTION_49_46(v268, v269, v270, v271))
                        {
                          if (*(&v471[1] + 1))
                          {
                            v272 = OUTLINED_FUNCTION_19_103();
                            sub_1E3251BE8(v272, v273);
                            v274 = sub_1E37FAFA4();
                            v275 = *v274;
                            v276 = v274[1];

                            sub_1E3277E60(v275, v276, v252, v463);

                            if (*(&v463[1] + 1))
                            {
                              if (OUTLINED_FUNCTION_49_46(v474, v463, v277, MEMORY[0x1E69E6370]))
                              {
                                v278 = v474[0];
                                v279 = *v261;
                                sub_1E327F454(v464, v471);
                                v280 = *(*(v440 + 16) + 24);

                                sub_1E3B23ED0(v279, v260, *(&v260 + 1), v264, v471, v278, v280, v473);
                                type metadata accessor for Router(0);
                                v281 = OUTLINED_FUNCTION_38();
                                sub_1E38D1D7C(v281);
                                v283 = v282;
                                OUTLINED_FUNCTION_2_181();
                                sub_1E3D9D0B0(v284, v285);
                                OUTLINED_FUNCTION_20_2();
                                v286 = sub_1E4200504();
                                v287 = *sub_1E3CD9D88();
                                type metadata accessor for AppEnvironment(0);
                                OUTLINED_FUNCTION_1_215();
                                sub_1E3D9D0B0(v288, v289);

                                v290 = sub_1E4200504();
                                memcpy(v471, v473, 0x78uLL);
                                *(&v471[7] + 1) = v286;
                                *&v471[8] = v283;
                                *(&v471[8] + 1) = v290;
                                *&v471[9] = v287;
                                sub_1E3D9CEB0(v471);
                                memcpy(v469, v471, 0x99uLL);
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7F0, &qword_1E429E4B8);
                                sub_1E37DA968();
                                sub_1E4201F44();

                                __swift_destroy_boxed_opaque_existential_1(v464);
                                memcpy(v462, v470, 0x99uLL);
                                v44 = Strong;
                                v36 = v461;
LABEL_172:
                                v429 = OUTLINED_FUNCTION_35_56();
                                memcpy(v429, v430, 0x99uLL);
                                sub_1E3D9CEA8(v464);
                                v431 = OUTLINED_FUNCTION_19_103();
                                memcpy(v431, v432, 0x9AuLL);
                                OUTLINED_FUNCTION_10_121();
                                v433 = OUTLINED_FUNCTION_57();
                                __swift_instantiateConcreteTypeFromMangledNameV2(v433, v434);
                                sub_1E3D9C82C();
                                OUTLINED_FUNCTION_27_68();
                                sub_1E4201F44();
                                v435 = OUTLINED_FUNCTION_40_53();
                                memcpy(v435, v436, 0x9AuLL);
                                sub_1E3D9CE90(v470);
                                goto LABEL_84;
                              }

                              __swift_destroy_boxed_opaque_existential_1(v464);

                              goto LABEL_180;
                            }

LABEL_178:
                            __swift_destroy_boxed_opaque_existential_1(v464);

                            sub_1E325F6F0(v463, &unk_1ECF296E0, &unk_1E4298030);
LABEL_180:
                            v44 = Strong;
                            goto LABEL_170;
                          }
                        }

                        else
                        {
                          *&v471[2] = 0;
                          OUTLINED_FUNCTION_14_128();
                        }

                        v44 = Strong;
                      }

                      else
                      {

                        sub_1E325F6F0(v470, &unk_1ECF296E0, &unk_1E4298030);
                        memset(v471, 0, 40);
                      }

                      v36 = v461;
                      v425 = &qword_1ECF2A778;
                      v426 = &unk_1E429E340;
LABEL_163:
                      sub_1E325F6F0(v471, v425, v426);
LABEL_171:
                      sub_1E3D9CE9C(v471);
                      v427 = OUTLINED_FUNCTION_26_84();
                      memcpy(v427, v428, 0x99uLL);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7F0, &qword_1E429E4B8);
                      sub_1E37DA968();
                      sub_1E4201F44();
                      goto LABEL_172;
                    }
                  }
                }

                else
                {

                  sub_1E325F6F0(v471, &unk_1ECF296E0, &unk_1E4298030);
                }
              }

LABEL_170:
              v36 = v461;
              goto LABEL_171;
            }

            v425 = &unk_1ECF296E0;
            v426 = &unk_1E4298030;
            goto LABEL_163;
          }
        }

        v156 = [v36 contextData];
        if (v156)
        {
          v157 = sub_1E3751A20(v156);
          if (v157)
          {
            sub_1E374BD08(v157);
            OUTLINED_FUNCTION_38();

            if (v40)
            {
              sub_1E37FAFC8();

              OUTLINED_FUNCTION_24_79();

              if (*(&v471[1] + 1))
              {
                OUTLINED_FUNCTION_26_84();
                if (swift_dynamicCast())
                {
                  v158 = v470[0];
                  v460 = sub_1E3B7B1C8();
                  v159 = *(**v460 + 672);

                  v161 = v159(v160);

                  v162 = 0;
                  v163 = *(v161 + 16);
                  for (i = v161 + 32; ; i += 40)
                  {
                    if (v163 == v162)
                    {

                      goto LABEL_165;
                    }

                    if (v162 >= *(v161 + 16))
                    {
                      break;
                    }

                    sub_1E327F454(i, v470);
                    v165 = *(&v470[1] + 1);
                    v166 = *&v470[2];
                    __swift_project_boxed_opaque_existential_1(v470, *(&v470[1] + 1));
                    if ((*(v166 + 16))(v165, v166) == v158 && v167 == *(&v158 + 1))
                    {

                      v36 = v461;
LABEL_160:

                      sub_1E3251BE8(v470, v474);
                      sub_1E3251BE8(v474, v463);
                      v403 = *(**v460 + 408);

                      v405 = v403(v404);

                      if (v405)
                      {
                        sub_1E327F454(v463, v470);

                        v406 = OUTLINED_FUNCTION_18();
                        sub_1E41E2FB4(v470, 0, v406 & 1, v473);
                        type metadata accessor for Router(0);
                        v407 = OUTLINED_FUNCTION_38();
                        sub_1E38D1D7C(v407);
                        v409 = v408;
                        OUTLINED_FUNCTION_2_181();
                        sub_1E3D9D0B0(v410, v411);
                        OUTLINED_FUNCTION_20_2();
                        v412 = sub_1E4200504();
                        v413 = *sub_1E3CD9D88();
                        type metadata accessor for AppEnvironment(0);
                        OUTLINED_FUNCTION_1_215();
                        sub_1E3D9D0B0(v414, v415);

                        v416 = sub_1E4200504();
                        memcpy(v464, v473, 0x48uLL);
                        *&v464[72] = v412;
                        *&v464[80] = v409;
                        *&v464[88] = v416;
                        *&v464[96] = v413;
                        memcpy(v469, v464, 0x68uLL);
                        v462[0] = 0;
                        LOBYTE(v469[13]) = 0;
                        OUTLINED_FUNCTION_13_129();
                        sub_1E379D7E4(v417, v418, v419, &qword_1E429E4A8);
                        OUTLINED_FUNCTION_13_129();
                        sub_1E379D7E4(v420, v421, v422, &qword_1E429E4A8);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7C8, &qword_1E429E4A8);
                        sub_1E37DA7A4();
                        sub_1E4201F44();

                        OUTLINED_FUNCTION_36_54();
                        OUTLINED_FUNCTION_36_54();
                        __swift_destroy_boxed_opaque_existential_1(v463);
                        v423 = OUTLINED_FUNCTION_20_88();
                        memcpy(v423, v424, 0x69uLL);
                        v44 = Strong;
LABEL_166:
                        memcpy(v462, v471, 0x69uLL);
                        goto LABEL_118;
                      }

                      __swift_destroy_boxed_opaque_existential_1(v463);
LABEL_165:
                      v44 = Strong;
                      LOBYTE(v469[0]) = 1;
                      BYTE8(v470[6]) = 1;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7C8, &qword_1E429E4A8);
                      sub_1E37DA7A4();
                      sub_1E4201F44();
                      goto LABEL_166;
                    }

                    v169 = sub_1E42079A4();

                    v36 = v461;
                    if (v169)
                    {
                      goto LABEL_160;
                    }

                    __swift_destroy_boxed_opaque_existential_1(v470);
                    ++v162;
                  }

                  __break(1u);
                  goto LABEL_178;
                }
              }

              else
              {
                sub_1E325F6F0(v471, &unk_1ECF296E0, &unk_1E4298030);
              }
            }
          }
        }

        memset(v462, 0, 104);
        v462[104] = -1;
LABEL_118:
        v331 = OUTLINED_FUNCTION_35_56();
        memcpy(v331, v332, 0x69uLL);
        sub_1E3D9CEB8(v464);
        v333 = OUTLINED_FUNCTION_19_103();
        memcpy(v333, v334, 0xDAuLL);
        OUTLINED_FUNCTION_10_121();
        v335 = OUTLINED_FUNCTION_75();
        __swift_instantiateConcreteTypeFromMangledNameV2(v335, v336);
        v337 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v337, v338);
        OUTLINED_FUNCTION_5_167();
        sub_1E3D9CCC8(v339, &qword_1ECF38650, &qword_1E42D0D20, v340);
        sub_1E3D9C77C();
LABEL_83:
        sub_1E4201F44();
        v202 = OUTLINED_FUNCTION_40_53();
        memcpy(v202, v203, 0xDAuLL);
        sub_1E3D9CEC4(v470);
LABEL_84:
        v204 = OUTLINED_FUNCTION_20_88();
        memcpy(v204, v205, 0xDBuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38640, &qword_1E42D0D18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38680, &qword_1E42D0D38);
        sub_1E3D9C6C4();
        OUTLINED_FUNCTION_4_188();
        sub_1E3D9CCC8(v206, &qword_1ECF38680, &qword_1E42D0D38, v207);
        OUTLINED_FUNCTION_27_68();
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v208, v209, v210);
        memcpy(v471, v469, 0xDBuLL);
        goto LABEL_85;
      }
    }

    v129 = [v36 contextData];
    if (v129)
    {
      v130 = sub_1E3751A20(v129);
      if (v130)
      {
        sub_1E374BD08(v130);
        OUTLINED_FUNCTION_38();

        if (v40)
        {
          sub_1E37FAFB0();

          OUTLINED_FUNCTION_24_79();

          if (*(&v471[1] + 1))
          {
            type metadata accessor for LibMenuItem(0);
            OUTLINED_FUNCTION_26_84();
            if (swift_dynamicCast())
            {
              sub_1E37FAFE0();

              v131 = OUTLINED_FUNCTION_75();
              sub_1E3277E60(v131, v132, v40, v133);

              if (*(&v463[1] + 1))
              {
                swift_dynamicCast();
              }

              else
              {
                sub_1E325F6F0(v463, &unk_1ECF296E0, &unk_1E4298030);
              }

              sub_1E3B7B1C8();

              OUTLINED_FUNCTION_51_1();
              OUTLINED_FUNCTION_18();
              sub_1E3A71D24();
              type metadata accessor for Router(0);
              v295 = OUTLINED_FUNCTION_38();
              sub_1E38D1D7C(v295);
              v297 = v296;
              OUTLINED_FUNCTION_2_181();
              sub_1E3D9D0B0(v298, v299);
              OUTLINED_FUNCTION_20_2();
              v300 = sub_1E4200504();
              memcpy(v473, v474, 0xB1uLL);
              v301 = *sub_1E3CD9D88();
              type metadata accessor for AppEnvironment(0);
              OUTLINED_FUNCTION_1_215();
              sub_1E3D9D0B0(v302, v303);

              v304 = sub_1E4200504();
              memcpy(v464, v473, sizeof(v464));
              v465 = v300;
              v466 = v297;
              v467 = v304;
              v468 = v301;
              v305 = OUTLINED_FUNCTION_19_103();
              memcpy(v305, v306, 0xD8uLL);
              sub_1E3D9CEE0(v471);
              memcpy(v469, v471, 0xD9uLL);
              OUTLINED_FUNCTION_13_129();
              sub_1E379D7E4(v307, v308, v309, &qword_1E429E538);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A818, &qword_1E429E538);
              sub_1E37DAC1C();
              sub_1E4201F44();

              OUTLINED_FUNCTION_36_54();
              memcpy(v462, v470, 0xD9uLL);
              goto LABEL_82;
            }
          }

          else
          {

            sub_1E325F6F0(v471, &unk_1ECF296E0, &unk_1E4298030);
          }
        }
      }
    }

    sub_1E3D9CECC(v471);
    v190 = OUTLINED_FUNCTION_26_84();
    memcpy(v190, v191, 0xD9uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A818, &qword_1E429E538);
    sub_1E37DAC1C();
    sub_1E4201F44();
LABEL_82:
    v192 = OUTLINED_FUNCTION_35_56();
    memcpy(v192, v193, 0xD9uLL);
    sub_1E3D9CED8(v464);
    v194 = OUTLINED_FUNCTION_19_103();
    memcpy(v194, v195, 0xDAuLL);
    OUTLINED_FUNCTION_10_121();
    v196 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v196, v197);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38660, &qword_1E42D0D28);
    OUTLINED_FUNCTION_5_167();
    OUTLINED_FUNCTION_82();
    sub_1E3D9CCC8(v198, v199, v200, v201);
    sub_1E3D9C77C();
    OUTLINED_FUNCTION_27_68();
    OUTLINED_FUNCTION_52_0();
    goto LABEL_83;
  }

  v62 = [v461 documentRef];
  v63 = sub_1E4205F14();
  v65 = v64;

  v66 = sub_1E4205F14();
  if (v63 == v66 && v65 == v67)
  {

    goto LABEL_37;
  }

  v69 = OUTLINED_FUNCTION_37_58(v66);

  if (v69)
  {
LABEL_37:

    sub_1E3B7B1C8();

    *v20 = sub_1E3B4F454(v87);
    v20[1] = v88;
    v20[2] = v89;
    v90 = swift_storeEnumTagMultiPayload();
    sub_1E3D9CA84(v90, v91, v92);
    OUTLINED_FUNCTION_8_141();
    sub_1E3D9D0B0(v93, v94);

    OUTLINED_FUNCTION_43_49();
    sub_1E4201F44();
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v95, v96, v97, v98);
    swift_storeEnumTagMultiPayload();
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v99, v100, v101);
    v102 = v453;
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v103, v104, v105, v106);
    OUTLINED_FUNCTION_50_40(v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8, &qword_1E42D0D50);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    OUTLINED_FUNCTION_11_128();
    sub_1E4201F44();

    OUTLINED_FUNCTION_55_0();
LABEL_38:
    sub_1E325F6F0(v107, v108, v109);
    goto LABEL_39;
  }

  v70 = [v461 documentRef];
  v71 = sub_1E4205F14();
  v73 = v72;

  v74 = sub_1E4205F14();
  if (v71 == v74 && v73 == v75)
  {

    goto LABEL_53;
  }

  v77 = OUTLINED_FUNCTION_37_58(v74);

  v78 = v460;
  if (v77)
  {
LABEL_53:

    v134 = *(v28 + 24);
    v135 = v461;

    v136 = v445;
    sub_1E3898E04(v135, v134, v445);
    v460 = type metadata accessor for LibShowDetailsView;
    sub_1E3D9CDD0(v136, v20, type metadata accessor for LibShowDetailsView);
    v137 = swift_storeEnumTagMultiPayload();
    sub_1E3D9CA84(v137, v138, v139);
    OUTLINED_FUNCTION_8_141();
    sub_1E3D9D0B0(v140, v141);
    OUTLINED_FUNCTION_43_49();
    sub_1E4201F44();
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v142, v143, v144, v145);
    swift_storeEnumTagMultiPayload();
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v146, v147, v148);
    v149 = v453;
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v150, v151, v152, v153);
    OUTLINED_FUNCTION_50_40(v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8, &qword_1E42D0D50);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    OUTLINED_FUNCTION_11_128();
    OUTLINED_FUNCTION_52_0();
    sub_1E4201F44();
    v154 = OUTLINED_FUNCTION_57();
    sub_1E325F6F0(v154, v155, &qword_1E42D0CF8);
    sub_1E3D9CE2C(v136, v460);
    goto LABEL_39;
  }

  v79 = v461;
  v80 = [v461 documentRef];
  v81 = sub_1E4205F14();
  v83 = v82;

  if (v81 == sub_1E4205F14() && v83 == v84)
  {
  }

  else
  {
    v86 = sub_1E42079A4();

    if ((v86 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  type metadata accessor for LibDescriptiveAlertViewModel(0);
  if (sub_1E3750C3C(v79))
  {

    sub_1E3EA1BCC(v170, v471);
    v470[0] = *(v471 + 8);
    LOBYTE(v470[1]) = BYTE8(v471[1]);
    v171 = v471[2];
    *v464 = v471[2];
    v172 = v471[1];
    v173 = v442;
    *v442 = v471[0];
    v173[1] = v172;
    v173[2] = v171;
    swift_storeEnumTagMultiPayload();

    sub_1E379D7E4(v470, v469, &qword_1ECF386F8, &qword_1E42D0D58);
    v174 = sub_1E379D7E4(v464, v469, &qword_1ECF38700, &qword_1E42D0D60);
    sub_1E3D9CB94(v174, v175, v176);
    OUTLINED_FUNCTION_7_169();
    sub_1E3D9D0B0(v177, v178);
    v179 = v444;
    sub_1E4201F44();
    v23 = &qword_1E42D0CD0;
    sub_1E379D7E4(v179, v448, &qword_1ECF385E0, &qword_1E42D0CD0);
    swift_storeEnumTagMultiPayload();
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    v180 = v450;
    sub_1E4201F44();
    sub_1E325F6F0(v179, &qword_1ECF385E0, &qword_1E42D0CD0);
    v181 = v453;
    sub_1E379D7E4(v180, v453, &qword_1ECF38608, &qword_1E42D0CF8);
    OUTLINED_FUNCTION_50_40(v181);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8, &qword_1E42D0D50);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    OUTLINED_FUNCTION_11_128();
    sub_1E4201F44();

    sub_1E325F6F0(v470, &qword_1ECF386F8, &qword_1E42D0D58);
    sub_1E325F6F0(v464, &qword_1ECF38700, &qword_1E42D0D60);

    v107 = v180;
    v108 = &qword_1ECF38608;
    v109 = &qword_1E42D0CF8;
    goto LABEL_38;
  }

LABEL_73:
  v182 = sub_1E39A4DDC(v79, &selRef_controllerRef);
  v184 = v183;
  v185 = sub_1E4205F14();
  v187 = v186;
  if (v184)
  {
    v188 = v182 == v185 && v184 == v186;
    v110 = Strong;
    v23 = v454;
    if (v188)
    {

LABEL_115:

      v310 = v439;
      sub_1E3FC8A7C(v439);
      v460 = type metadata accessor for AccountSettings;
      sub_1E3D9CDD0(v310, v442, type metadata accessor for AccountSettings);
      v311 = swift_storeEnumTagMultiPayload();
      sub_1E3D9CB94(v311, v312, v313);
      OUTLINED_FUNCTION_7_169();
      sub_1E3D9D0B0(v314, v315);
      sub_1E4201F44();
      OUTLINED_FUNCTION_96_2();
      sub_1E379D7E4(v316, v317, v318, v319);
      swift_storeEnumTagMultiPayload();
      sub_1E3D9C9C8();
      sub_1E3D9CAD8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v320, v321, v322);
      v323 = v453;
      OUTLINED_FUNCTION_96_2();
      sub_1E379D7E4(v324, v325, v326, v327);
      OUTLINED_FUNCTION_50_40(v323);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8, &qword_1E42D0D50);
      sub_1E3D9C93C();
      sub_1E3D9CBE8();
      OUTLINED_FUNCTION_52_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v328, v329, v330);
      sub_1E3D9CE2C(v310, v460);
      goto LABEL_40;
    }

    v189 = sub_1E42079A4();

    v187 = v78;
    if (v189)
    {
      goto LABEL_115;
    }
  }

  else
  {

    v110 = Strong;
    v23 = v454;
  }

  sub_1E39A4DDC(v461, &selRef_controllerRef);
  if (v291)
  {
    OUTLINED_FUNCTION_152();
    if (v184 == sub_1E4205F14() && v187 == v292)
    {
      goto LABEL_139;
    }

    OUTLINED_FUNCTION_3_179();
    v294 = sub_1E42079A4();

    if (v294)
    {
      goto LABEL_140;
    }

    if (v184 == sub_1E4205F14() && v187 == v341)
    {
LABEL_139:

      goto LABEL_140;
    }

    OUTLINED_FUNCTION_3_179();
    v343 = sub_1E42079A4();

    if (v343)
    {
LABEL_140:

      sub_1E4205F14();
      OUTLINED_FUNCTION_41_53();
      if (v43 && v187 == v365)
      {
      }

      else
      {
        v367 = OUTLINED_FUNCTION_3_179();
        OUTLINED_FUNCTION_48_37(v367);
        OUTLINED_FUNCTION_47_44();

        if ((v184 & 1) == 0)
        {
          type metadata accessor for MetricsRenderSessionListViewController();
          v368 = *MetricsDiskManager.shared.unsafeMutableAddressor();
          v369 = MetricsRenderSessionListViewController.__allocating_init(storageDataSource:)(v368);
LABEL_148:
          v372 = v369;
          LOBYTE(v469[0]) = 0;
          *&v470[0] = v369;
          BYTE1(v470[5]) = 0;
          v373 = sub_1E3D9C85C(v369, v370, v371);
          sub_1E3D9CC74(v373, v374, v375);
          v376 = v372;
          sub_1E4201F44();
          memcpy(v453, v471, 0x52uLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8, &qword_1E42D0D50);
          sub_1E3D9C93C();
          sub_1E3D9CBE8();
          OUTLINED_FUNCTION_96_2();
          sub_1E4201F44();

          goto LABEL_40;
        }
      }

      v369 = [objc_allocWithZone(VUIDebugViewController) init];
      goto LABEL_148;
    }
  }

  v344 = *(v28 + 16);
  v345 = sub_1E39A4DDC(v344, &selRef_documentType);
  if (!v346)
  {
    v345 = 0x746C7561666564;
    v346 = 0xE700000000000000;
  }

  LOBYTE(v347) = DocumentType.init(rawValue:)(*&v345);
  if (v347 == 8)
  {
    v348 = 0;
  }

  else
  {
    v348 = v347;
  }

  v349 = sub_1E39A4DDC(v344, &selRef_controllerRef);
  if (v350)
  {
    v351 = v349;
  }

  else
  {
    v351 = 0;
  }

  if (v350)
  {
    v23 = v350;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  type metadata accessor for DocumentContext();
  v352 = *(v28 + 16);

  v353 = sub_1E3D989C8(v352);
  v447 = v354;
  v448 = v353;
  OUTLINED_FUNCTION_5_0(v28 + 32, v464);
  v355 = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for DocumentServiceRequestContext(0);
  *&v356 = OUTLINED_FUNCTION_14_128();
  v470[1] = v356;
  v470[0] = v356;
  v357 = v355;

  v358 = OUTLINED_FUNCTION_18();
  v449 = v351;
  v359 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v348, 0, v351, v23, v355, v471, v470, v358 & 1);
  v360 = [v344 contextData];
  if (v360 && (v361 = v360, v362 = [v360 jsonData], v361, v362))
  {
    OUTLINED_FUNCTION_146_1();
    v363 = sub_1E4205C64();

    *(&v471[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *&v471[0] = v363;
  }

  else
  {
    v364.n128_f64[0] = OUTLINED_FUNCTION_14_128();
  }

  (*(*v359 + 224))(v471, v364);
  v377 = [v344 prefetchData];
  if (v377 && (v378 = v377, v379 = [v377 jsonData], v378, v379))
  {
    OUTLINED_FUNCTION_146_1();
    v380 = sub_1E4205C64();

    *(&v471[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *&v471[0] = v380;
  }

  else
  {
    v381.n128_f64[0] = OUTLINED_FUNCTION_14_128();
  }

  (*(*v359 + 248))(v471, v381);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  v382 = v460;
  LODWORD(v450) = v348;
  if (v460)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v384 = sub_1E3DDBFA8();
    v386 = *v384;
    v385 = v384[1];
    *&v470[0] = v386;
    *(&v470[0] + 1) = v385;

    sub_1E4207414();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    OUTLINED_FUNCTION_146_1();
    v387 = sub_1E4205CB4();
    v388 = sub_1E3D9BA8C(v387, v382);
  }

  else
  {
    v389 = swift_initStackObject();
    *(v389 + 16) = xmmword_1E4297BE0;
    v390 = sub_1E3DDBFA8();
    v392 = *v390;
    v391 = v390[1];
    *&v470[0] = v392;
    *(&v470[0] + 1) = v391;

    sub_1E4207414();
    *(v389 + 96) = MEMORY[0x1E69E6370];
    *(v389 + 72) = 1;
    OUTLINED_FUNCTION_146_1();
    v388 = sub_1E4205CB4();
  }

  v393 = v388;
  v394 = (v438 >> 8) & 1;
  v395 = v438 & 1;
  type metadata accessor for DocumentInteractor(0);
  type metadata accessor for PagePerformanceReporter();
  OUTLINED_FUNCTION_38();

  sub_1E3C678AC();
  OUTLINED_FUNCTION_58_4();
  v396 = sub_1E3DDCD04();
  (*(*v396 + 808))(v28);

  LOBYTE(v469[0]) = v450;
  v469[1] = v448;
  v469[2] = v447;
  v469[3] = v449;
  v469[4] = v23;
  LOBYTE(v469[5]) = v395;
  BYTE1(v469[5]) = v394;
  v469[6] = v393;
  v469[7] = v28;
  v469[8] = sub_1E38074D0;
  v469[9] = v396;
  LOBYTE(v469[10]) = 0;
  memcpy(v470, v469, 0x51uLL);
  LOBYTE(v463[0]) = 1;
  BYTE1(v470[5]) = 1;
  v397 = sub_1E3D9CD68(v469, v471);
  v400 = sub_1E3D9C85C(v397, v398, v399);
  sub_1E3D9CC74(v400, v401, v402);
  sub_1E4201F44();
  memcpy(v453, v471, 0x52uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8, &qword_1E42D0D50);
  sub_1E3D9C93C();
  sub_1E3D9CBE8();
  OUTLINED_FUNCTION_11_128();
  sub_1E4201F44();
  sub_1E3D9CDA0(v469);
LABEL_39:
  v110 = Strong;
LABEL_40:
  sub_1E379D7E4(v23, v457, &qword_1ECF38610, &qword_1E42D0D00);
  swift_storeEnumTagMultiPayload();
  v111 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v111, v112);
  sub_1E3D9C8B0();
  OUTLINED_FUNCTION_6_158();
  sub_1E3D9CCC8(v113, &qword_1ECF38698, &qword_1E42D0D48, v114);
  sub_1E4201F44();

LABEL_88:
  OUTLINED_FUNCTION_82();
  return sub_1E325F6F0(v242, v243, v244);
}

uint64_t sub_1E3D9BA6C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1E3D990C4(*v1, v2 | *(v1 + 8), a1);
}

uint64_t sub_1E3D9BA8C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E3D9C21C(a1, sub_1E397BCA4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void *sub_1E3D9BB10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1 + 48;
  v3 = *(v1 + 6);
  v5 = *(*(v4 + 1) + 16);
  v71 = *(v4 + 1);

  if (v3)
  {
    v67 = sub_1E374BD08(v3);
  }

  else
  {
    v67 = 0;
  }

  v6 = *v2;
  HIDWORD(v70) = v6;
  LODWORD(v66) = v2[40];
  HIDWORD(v66) = v2[41];
  v65 = j__OUTLINED_FUNCTION_1_135();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  HIDWORD(v64) = v6 != 1;
  v68 = v11;

  v69 = v8;

  LOBYTE(v6) = j__OUTLINED_FUNCTION_18();
  v13 = j__OUTLINED_FUNCTION_18();
  v14 = OUTLINED_FUNCTION_51_1();
  v15 = j__OUTLINED_FUNCTION_3_24();
  sub_1E3AC59C0();
  sub_1E3AC5A74(v6 & 1, v13 & 1, v14 & 1, v15, v65, v8, v10 & 1, v12, __src, v80);
  BYTE2(__src[0]) = BYTE4(v64);
  sub_1E3AC582C(v66);

  __src[1] = v67;
  BYTE1(__src[0]) = BYTE4(v66);
  LOBYTE(v12) = [v5 shouldLoadPageImmediately];
  v16 = sub_1E3827728([v5 uiConfiguration], &selRef_loadingViewText);
  v18 = v17;
  v19 = [v5 uiConfiguration];
  v20 = [v19 prefersLargeTitle];

  v21 = sub_1E3827728([v5 uiConfiguration], &selRef_navigationTitle);
  v23 = v22;
  v24 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v15) = j__OUTLINED_FUNCTION_18();
  v25 = j__OUTLINED_FUNCTION_18();
  v26 = j__OUTLINED_FUNCTION_18();
  v27.value._countAndFlagsBits = v16;
  v27.value._object = v18;
  v28.value._countAndFlagsBits = v21;
  v28.value._object = v23;
  DocumentLoadingConfiguration.init(loadImmediately:labelTextOverride:withZoomTransition:prefersLargeTitle:navigationTitle:isComingFromExtras:isComingFromRoot:isRootViewController:)(&v81, v12, v27, v24 & 1, v20, v28, v15 & 1, v25 & 1, v26 & 1);
  sub_1E3AC5838(&v81);

  memcpy(__dst, __src, 0x64uLL);
  memcpy(v79, __src, 0x64uLL);
  sub_1E3AB6E28(__dst, v77);
  sub_1E3D9D05C(v79);
  if (HIDWORD(v70) == 1)
  {
    type metadata accessor for DocumentInteractor(0);
    OUTLINED_FUNCTION_9_129();
    sub_1E3D9D0B0(v44, v45);

    OUTLINED_FUNCTION_12_116();
    v46 = sub_1E4200BC4();
    sub_1E3AB6E28(__dst, __src);
    v47 = OUTLINED_FUNCTION_32_0();
    sub_1E3AB6618(v47, v48, v46, v49, v71, v50);
    OUTLINED_FUNCTION_12_116();
    sub_1E4200BC4();
    v51 = OUTLINED_FUNCTION_51_1();
    sub_1E379DF10(v51 & 1, &__src[23]);
    memcpy(__src, v75, 0xB8uLL);
    memcpy(v76, __src, 0xE0uLL);
    memcpy(v77, v76, 0xE0uLL);
    sub_1E3D9D2C4(v77);
    v52 = memcpy(__src, v77, 0x149uLL);
    v33 = &qword_1ECF38720;
    v34 = &qword_1E42D0FB0;
    OUTLINED_FUNCTION_45_51(v52, v53, v54, v55, v56, v57, v58, v59, isComingFromRoot, v64, v65, v66, v67, v68, v69, v70, v71, a1);
    v60 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
    v42 = &qword_1ECF38718;
    v43 = &qword_1E42D0FA8;
  }

  else
  {

    type metadata accessor for DocumentInteractor(0);
    OUTLINED_FUNCTION_9_129();
    sub_1E3D9D0B0(v29, v30);

    OUTLINED_FUNCTION_12_116();
    sub_1E4200BC4();
    sub_1E3AB6E28(__dst, __src);

    OUTLINED_FUNCTION_3_24();
    sub_1E40D9BF4();
    OUTLINED_FUNCTION_12_116();
    sub_1E4200BC4();
    v31 = OUTLINED_FUNCTION_51_1();
    sub_1E379DF10(v31 & 1, &__src[36]);
    memcpy(__src, v75, 0x120uLL);
    memcpy(v76, __src, sizeof(v76));
    memcpy(v77, v76, 0x148uLL);
    sub_1E3D9D0F4(v77);
    v32 = memcpy(__src, v77, 0x149uLL);
    v33 = &qword_1ECF38718;
    v34 = &qword_1E42D0FA8;
    OUTLINED_FUNCTION_45_51(v32, v35, v36, v37, v38, v39, v40, v41, isComingFromRoot, v64, v65, v66, v67, v68, v69, v70, v71, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38720, &qword_1E42D0FB0);
    v42 = OUTLINED_FUNCTION_32_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  sub_1E3D9D100();
  sub_1E3D9D20C();
  OUTLINED_FUNCTION_55_0();
  sub_1E4201F44();
  sub_1E3D9D05C(__dst);
  sub_1E325F6F0(v76, v33, v34);
  memcpy(__src, v74, 0x149uLL);
  return memcpy(v73, __src, 0x149uLL);
}

uint64_t sub_1E3D9C074(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = 5 * v12;
    sub_1E374E74C(*(v3 + 48) + 40 * v12, &v20);
    sub_1E374E74C(*(v3 + 56) + 8 * v13, &v19);
    if (!v21)
    {
      return 1;
    }

    v14 = sub_1E375D924(&v20);
    v16 = v15;
    sub_1E375D84C(&v20);
    if ((v16 & 1) == 0)
    {
      sub_1E375D84C(&v19);
      return 0;
    }

    sub_1E374E74C(*(a2 + 56) + 40 * v14, v18);
    v17 = MEMORY[0x1E6911D60](v18, &v19);
    sub_1E375D84C(v18);
    result = sub_1E375D84C(&v19);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3D9C21C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v38);
  v34 = v38[0];
  v35 = v38[1];
  v36 = v38[2];
  v37 = v39;

  while (1)
  {
    sub_1E397C154(&v30);
    if (!*(&v31 + 1))
    {
      sub_1E397C6C4(v34);

      return;
    }

    v27 = v30;
    v28 = v31;
    v29 = v32;
    sub_1E329504C(&v33, v26);
    v7 = *a5;
    v9 = sub_1E375D924(&v27);
    v10 = *(v7 + 16);
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (*(v7 + 24) >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0, &qword_1E42A7D40);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E397A924(v12, a4 & 1);
      v14 = sub_1E375D924(&v27);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v9, v25);
        __swift_destroy_boxed_opaque_existential_1(v26);
        sub_1E375D84C(&v27);
        v17 = (*(v16 + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v25, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v27;
    v21 = v28;
    *(v19 + 32) = v29;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1E329504C(v26, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1E4207A74();
  __break(1u);
}

unint64_t sub_1E3D9C464()
{
  result = qword_1EE23AD70;
  if (!qword_1EE23AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AD70);
  }

  return result;
}

unint64_t sub_1E3D9C4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29D860[0];
  if (!qword_1EE29D860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29D860);
  }

  return result;
}

unint64_t sub_1E3D9C580()
{
  result = qword_1ECF38620;
  if (!qword_1ECF38620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38618, &qword_1E42D0D08);
    v3 = sub_1E3D9C60C();
    sub_1E3D9C85C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38620);
  }

  return result;
}

unint64_t sub_1E3D9C60C()
{
  result = qword_1ECF38628;
  if (!qword_1ECF38628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38630, &qword_1E42D0D10);
    sub_1E3D9C6C4();
    sub_1E3D9CCC8(&qword_1ECF38678, &qword_1ECF38680, &qword_1E42D0D38, sub_1E3D9C82C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38628);
  }

  return result;
}

unint64_t sub_1E3D9C6C4()
{
  result = qword_1ECF38638;
  if (!qword_1ECF38638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38640, &qword_1E42D0D18);
    sub_1E3D9CCC8(&qword_1ECF38648, &qword_1ECF38650, &qword_1E42D0D20, sub_1E37DAC1C);
    sub_1E3D9C77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38638);
  }

  return result;
}

unint64_t sub_1E3D9C77C()
{
  result = qword_1ECF38658;
  if (!qword_1ECF38658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38660, &qword_1E42D0D28);
    sub_1E3D9CCC8(&qword_1ECF38668, &qword_1ECF38670, &qword_1E42D0D30, sub_1E37DA7A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38658);
  }

  return result;
}

unint64_t sub_1E3D9C85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF63080;
  if (!qword_1ECF63080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF63080);
  }

  return result;
}

unint64_t sub_1E3D9C8B0()
{
  result = qword_1ECF386A0;
  if (!qword_1ECF386A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38610, &qword_1E42D0D00);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386A0);
  }

  return result;
}

unint64_t sub_1E3D9C93C()
{
  result = qword_1ECF386A8;
  if (!qword_1ECF386A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38608, &qword_1E42D0CF8);
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386A8);
  }

  return result;
}

unint64_t sub_1E3D9C9C8()
{
  result = qword_1ECF386B0;
  if (!qword_1ECF386B0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38600, &qword_1E42D0CF0);
    sub_1E3D9CA84(v1, v2, v3);
    sub_1E3D9D0B0(&qword_1ECF386C0, type metadata accessor for LibShowDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386B0);
  }

  return result;
}

unint64_t sub_1E3D9CA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF386B8;
  if (!qword_1ECF386B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386B8);
  }

  return result;
}

unint64_t sub_1E3D9CAD8()
{
  result = qword_1ECF386C8;
  if (!qword_1ECF386C8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF385E0, &qword_1E42D0CD0);
    sub_1E3D9CB94(v1, v2, v3);
    sub_1E3D9D0B0(&qword_1ECF386D8, type metadata accessor for AccountSettings);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386C8);
  }

  return result;
}

unint64_t sub_1E3D9CB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF386D0;
  if (!qword_1ECF386D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386D0);
  }

  return result;
}

unint64_t sub_1E3D9CBE8()
{
  result = qword_1ECF386E0;
  if (!qword_1ECF386E0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF386E8, &qword_1E42D0D50);
    v6 = sub_1E3D9C85C(v1, v2, v3);
    sub_1E3D9CC74(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386E0);
  }

  return result;
}

unint64_t sub_1E3D9CC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF63088[0];
  if (!qword_1ECF63088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF63088);
  }

  return result;
}

uint64_t sub_1E3D9CCC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t sub_1E3D9CDD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3D9CE2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3D9CF0C()
{
  result = qword_1ECF38708;
  if (!qword_1ECF38708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38710, &qword_1E42D0E68);
    sub_1E3D9C8B0();
    sub_1E3D9CCC8(&qword_1ECF386F0, &qword_1ECF38698, &qword_1E42D0D48, sub_1E3D9C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38708);
  }

  return result;
}

unint64_t sub_1E3D9CFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3D9CFF0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3D9CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF63110[0];
  if (!qword_1ECF63110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF63110);
  }

  return result;
}

uint64_t sub_1E3D9D0B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3D9D100()
{
  result = qword_1ECF38728;
  if (!qword_1ECF38728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38720, &qword_1E42D0FB0);
    v3 = sub_1E328FCF4(&qword_1ECF38730, &qword_1ECF38738, &qword_1E42D0FB8);
    sub_1E3D9D1B8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38728);
  }

  return result;
}

unint64_t sub_1E3D9D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38740;
  if (!qword_1ECF38740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38740);
  }

  return result;
}

unint64_t sub_1E3D9D20C()
{
  result = qword_1ECF38748;
  if (!qword_1ECF38748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38718, &qword_1E42D0FA8);
    v3 = sub_1E328FCF4(&qword_1ECF38750, &qword_1ECF38758, &qword_1E42D0FC0);
    sub_1E3D9D1B8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38748);
  }

  return result;
}

unint64_t sub_1E3D9D2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF632A0[0];
  if (!qword_1ECF632A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF632A0);
  }

  return result;
}

unint64_t sub_1E3D9D320()
{
  result = qword_1ECF38760;
  if (!qword_1ECF38760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38768, &qword_1E42D0FC8);
    sub_1E3D9D100();
    sub_1E3D9D20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_37(uint64_t a1)
{

  return sub_1E42079A4();
}

id sub_1E3D9D3C4(uint64_t a1)
{
  v1 = (*(*a1 + 488))();
  if (!v1)
  {
    return 0;
  }

  v3 = sub_1E373E010(2, v1, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = sub_1E393D9C4(v3, 0, &v10, 0);

  sub_1E373C624(&v10);
  if (!v6)
  {

    return 0;
  }

  type metadata accessor for ErrorTemplateController();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = [v7 init];
  [v8 setVuiView_];

  return v8;
}

id sub_1E3D9D4FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4205ED4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ErrorTemplateController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_1E3D9D5DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ErrorTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3D9D668()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ErrorTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3D9D69C()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_2_0();
  return sub_1E3D9D6E8();
}

id sub_1E3D9D6E8()
{
  OUTLINED_FUNCTION_0_8();
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI18PaletteContentView_trailingView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedView] = v6;
  v8 = &v0[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedViewMargin];
  *v8 = v4;
  *(v8 + 1) = v3;
  *(v8 + 2) = v2;
  *(v8 + 3) = v1;
  v9 = v6;
  [v9 vui:0.0 sizeThatFits:0.0];
  v11 = v10;
  v12 = OUTLINED_FUNCTION_2_0();
  v15 = sub_1E3952BD8(v12, v13, v14);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, v11 + v15);
  [v16 addSubview_];

  return v16;
}

void sub_1E3D9D7DC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18PaletteContentView_trailingView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3D9D85C(char a1, double a2, double a3)
{
  v27.receiver = v3;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedViewMargin];
  v8 = *&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedViewMargin + 8];
  v9 = OUTLINED_FUNCTION_2_182();
  v13 = a2 - sub_1E3952BE0(v9, v10, v11, v12);
  v14 = *&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedView];
  [v14 vui:v13 sizeThatFits:0.0];
  v16 = v15;
  v18 = v17;
  v19 = OUTLINED_FUNCTION_2_182();
  sub_1E3952BD8(v19, v20, v21);
  if ((a1 & 1) == 0)
  {
    v22 = [v3 vuiContentMode];
    if (v22)
    {
      if (v22 == 8)
      {
        v8 = v8 + v13 - v16;
      }

      else if (v22 == 4)
      {
        v8 = v8 + (v13 - v16) * 0.5;
      }
    }

    else
    {
      v16 = v13;
    }

    [v14 setFrame_];
  }

  v23 = OBJC_IVAR____TtC8VideosUI18PaletteContentView_trailingView;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_trailingView], v28);
  v24 = *&v3[v23];
  if (v24 && (a1 & 1) == 0)
  {
    v25 = v24;
    [v25 vui:a2 sizeThatFits:0.0];
    [*&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedView] frame];
    CGRectGetMidY(v29);
    [v3 bounds];
    [v3 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v25 setFrame_];
  }

  return a2;
}

void *sub_1E3D9DBC0(uint64_t a1)
{
  v1 = 0;
  switch(*(a1 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType))
  {
    case 1:
    case 3:
    case 4:
    case 7:
    case 8:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1D:
    case 0x1E:
      goto LABEL_40;
    case 2:
      type metadata accessor for CanonicalTemplateController(0);
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_51_1();
      v13 = OUTLINED_FUNCTION_2_183();
      sub_1E3FEF058(v13, v14);
      goto LABEL_39;
    case 5:
      type metadata accessor for ConfirmationDialogTemplateController();
      v25 = OUTLINED_FUNCTION_0_236();
      v4 = sub_1E3B4A4D8(v25, v26);
      goto LABEL_39;
    case 6:
      type metadata accessor for MediaShowcasingTemplateController(0);
      OUTLINED_FUNCTION_50();

      v4 = sub_1E3B39C2C(v35);
      goto LABEL_39;
    case 9:
      type metadata accessor for DescriptionTemplateController();
      v16 = OUTLINED_FUNCTION_0_236();
      v4 = sub_1E373BF50(v16, v17);
      goto LABEL_39;
    case 0xA:
      type metadata accessor for ErrorTemplateController();
      v37 = OUTLINED_FUNCTION_50();
      v4 = sub_1E3D9D3C4(v37);
      goto LABEL_39;
    case 0xB:
      OUTLINED_FUNCTION_111();
      (*(v27 + 416))(v55);
      v28 = v56;
      sub_1E325F748(v55, &qword_1ECF2FFF0, &unk_1E42AFDA0);
      if (v28)
      {
        v29 = &unk_1ECF38798;
        v30 = &unk_1E42D1018;
        goto LABEL_38;
      }

      type metadata accessor for OfferSelectionTemplateController(0);
      OUTLINED_FUNCTION_50();

      v4 = sub_1E413F918(v44);
      goto LABEL_39;
    case 0xC:
      type metadata accessor for SplitOfferTemplateController();
      v34 = OUTLINED_FUNCTION_50();
      v4 = sub_1E4066D38(v34);
      goto LABEL_39;
    case 0xD:
      type metadata accessor for SportsCanonicalTemplateController(0);
      OUTLINED_FUNCTION_50();

      v4 = sub_1E40917B8(v36);
      goto LABEL_39;
    case 0xE:
      type metadata accessor for SportsFavoritesTemplateController(0);
      OUTLINED_FUNCTION_50();

      v4 = sub_1E3DB6C4C(v31);
      goto LABEL_39;
    case 0xF:
      type metadata accessor for StackTemplateController(0);
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_51_1();
      v32 = OUTLINED_FUNCTION_2_183();
      sub_1E3ED156C(v32, v33);
      goto LABEL_39;
    case 0x10:
      type metadata accessor for SearchTemplateController();
      OUTLINED_FUNCTION_0_236();
      sub_1E3944AF4();
      goto LABEL_39;
    case 0x11:
      goto LABEL_34;
    case 0x12:
      LOBYTE(v57) = 0;
      OUTLINED_FUNCTION_111();
      v19 = (*(v18 + 776))(v55, &v57, &unk_1F5D5E578, &off_1F5D5CBF8);
      if (v56)
      {
        if (OUTLINED_FUNCTION_4_189(v19, v20, v21, MEMORY[0x1E69E6370], v22) && (v57 & 1) != 0)
        {
          type metadata accessor for MultiViewPlayerHUDTemplateController(0);
          OUTLINED_FUNCTION_50();

          OUTLINED_FUNCTION_51_1();
          v23 = OUTLINED_FUNCTION_2_183();
          v4 = sub_1E3FFA344(v23, v24);
          goto LABEL_39;
        }
      }

      else
      {
        sub_1E325F748(v55, &unk_1ECF296E0, &unk_1E4298030);
      }

LABEL_34:
      type metadata accessor for PlayerHUDTemplateController(0);
      OUTLINED_FUNCTION_50();

      j__OUTLINED_FUNCTION_18();
      v42 = OUTLINED_FUNCTION_2_183();
      sub_1E378C374(v42, v43);
      goto LABEL_39;
    case 0x13:
      type metadata accessor for PostPlayTemplateController();
      OUTLINED_FUNCTION_50();

      sub_1E394E98C(v15, 0);
      goto LABEL_39;
    case 0x14:
      type metadata accessor for LivePostPlayTemplateViewController(0);
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_2_183();
      sub_1E3A5A950();
      goto LABEL_39;
    case 0x15:
      OUTLINED_FUNCTION_111();
      v6 = (*(v5 + 1000))();
      v8 = v7;
      v9 = sub_1E4205F14();
      if (!v8)
      {

        goto LABEL_32;
      }

      if (v6 == v9 && v8 == v10)
      {

        goto LABEL_37;
      }

      v12 = sub_1E42079A4();

      if ((v12 & 1) == 0)
      {
LABEL_32:
        type metadata accessor for UpsellOfferTemplateViewController();
        v40 = OUTLINED_FUNCTION_0_236();
        v4 = sub_1E38DD35C(v40, v41);
        goto LABEL_39;
      }

LABEL_37:
      v29 = &unk_1ECF38790;
      v30 = &unk_1E42D1010;
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
      OUTLINED_FUNCTION_50();

      v4 = sub_1E4175058(v45);
LABEL_39:
      v1 = v4;
LABEL_40:
      LOBYTE(v57) = 27;
      OUTLINED_FUNCTION_111();
      v47 = (*(v46 + 776))(v55, &v57, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (v56)
      {
        if (OUTLINED_FUNCTION_4_189(v47, v48, v49, MEMORY[0x1E69E6158], v50))
        {
          if (v1)
          {
            v51 = v57;
            v52 = v1;
            sub_1E4205ED4();
            OUTLINED_FUNCTION_50();

            v53 = VUIUserInterfaceStyleFromTheme();

            [v52 vui:v53 setOverrideUserInterfaceStyle:?];
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1E325F748(v55, &unk_1ECF296E0, &unk_1E4298030);
      }

      return v1;
    case 0x16:
      type metadata accessor for ExternalAppInstallTemplateController();
      v38 = OUTLINED_FUNCTION_0_236();
      v4 = sub_1E41E2114(v38);
      goto LABEL_39;
    case 0x1B:
      type metadata accessor for TimedMetadataTemplateController(0);
      OUTLINED_FUNCTION_50();

      v4 = sub_1E4180C50(v39, 0);
      goto LABEL_39;
    case 0x1C:
      v29 = &unk_1ECF38788;
      v30 = &unk_1E42D1008;
      goto LABEL_38;
    default:
      type metadata accessor for AlertTemplateController(0);
      v2 = OUTLINED_FUNCTION_0_236();
      sub_1E3E74434(v2, v3);
      goto LABEL_39;
  }
}

void sub_1E3D9E0B4(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for OfferLockup(0);
  v7 = v6[7];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  v8 = swift_storeEnumTagMultiPayload();
  v9 = (a3 + v6[8]);
  OUTLINED_FUNCTION_42_10(v8, MEMORY[0x1E69E7DE0], v10, v11, v12, v13, v14, v15, v28, 0);
  sub_1E42038E4();
  *v9 = v30;
  v9[1] = v31;
  v16 = (a3 + v6[9]);
  type metadata accessor for ViewInteractionStates(0);
  v17 = sub_1E3B1E0A8(0);
  OUTLINED_FUNCTION_42_10(v17, v18, v19, v20, v21, v22, v23, v24, v29, v17);
  sub_1E42038E4();
  *v16 = v30;
  v16[1] = v31;
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  v25 = *(*a1 + 392);

  v27 = v25(v26);

  if (!v27)
  {
    goto LABEL_4;
  }

  if (*v27 != _TtC8VideosUI21OfferCardLegacyLayout)
  {

LABEL_4:
    type metadata accessor for OfferCardLegacyLayout();
    v27 = sub_1E3DAFF08();
  }

  a3[26] = v27;
}

uint64_t type metadata accessor for OfferLockup(uint64_t a1)
{
  result = qword_1EE2A7FC0;
  if (!qword_1EE2A7FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3D9E2A0@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v53 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OfferLockup(0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387A0, &qword_1E42D1050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387A8, &qword_1E42D1058);
  OUTLINED_FUNCTION_0_10();
  v46 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387B0, &qword_1E42D1060);
  OUTLINED_FUNCTION_0_10();
  v47 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387B8, &qword_1E42D1068);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31_2();
  sub_1E3D9E7B8();
  OUTLINED_FUNCTION_12_117();
  v21 = v1;
  sub_1E3DA1E8C(v1, v10, v22);
  v23 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v24 = swift_allocObject();
  sub_1E3D9E96C(v10, v24 + v23);
  v25 = sub_1E3D9EA74();
  v26 = j__OUTLINED_FUNCTION_18();
  sub_1E383F5C4(v26 & 1, sub_1E3D9E9D0, v24, 0, 0, v11, v25);

  sub_1E325F6F0(v3, &qword_1ECF387A0, &qword_1E42D1050);
  v27 = v21[26];
  v54 = v11;
  v55 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_53_3();
  LOBYTE(v25) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_3();
  v29 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_3();
  LOBYTE(v24) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_3();
  v30 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v27, v25 & 1, v29 & 1, v24 & 1, v30 & 1, v13, OpaqueTypeConformance2);
  v31 = (*(v46 + 8))(v2, v13);
  if ((*(**v21 + 392))(v31) && (OUTLINED_FUNCTION_30(), (*(v32 + 152))(&v54), v33 = v54, v34 = v55, v35 = v56, v36 = v57, , (v58 & 1) == 0))
  {
    v37.n128_u64[0] = v33;
    v38.n128_u64[0] = v34;
    v39.n128_u64[0] = v35;
    v40.n128_u64[0] = v36;
    j_nullsub_1(v37, v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v41 = sub_1E4202734();
  (*(v47 + 32))(v4, v19, v49);
  v42 = (v4 + *(v48 + 36));
  *v42 = v41;
  OUTLINED_FUNCTION_11_4(v42);
  v43 = v50;
  sub_1E4202474();
  sub_1E3D9EBB8();
  OUTLINED_FUNCTION_32_0();
  sub_1E4203224();
  (*(v51 + 8))(v43, v53);
  return sub_1E325F6F0(v4, &qword_1ECF387B8, &qword_1E42D1068);
}

void sub_1E3D9E7B8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387E0, &qword_1E42D1078);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387D0, &qword_1E42D1070) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387F0, &qword_1E42D10E0);
  sub_1E3D9ECE0(v0, v9, v10, v11, v12, v13, v14, v15, v18, v19, v21, v22, v24, v25, v27, v28[0], v28[1], v28[2], v28[3], v28[4]);
  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E3741EA0(v2, v1, &qword_1ECF387E0, &qword_1E42D1078);
  v16 = (v1 + *(v7 + 44));
  *v16 = v20;
  v16[1] = v23;
  v16[2] = v26;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_10_122();
  OUTLINED_FUNCTION_5_168();
  sub_1E3741EA0(v1, v4, &qword_1ECF387D0, &qword_1E42D1070);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387A0, &qword_1E42D1050);
  memcpy((v4 + *(v17 + 36)), v28, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D9E96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferLockup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3D9E9D0(uint64_t a1)
{
  v2 = type metadata accessor for OfferLockup(0);
  OUTLINED_FUNCTION_17_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD0, &qword_1E429FA70);
  sub_1E42038F4();
  sub_1E3B1E260(a1);

  return result;
}

unint64_t sub_1E3D9EA74()
{
  result = qword_1ECF387C0;
  if (!qword_1ECF387C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387A0, &qword_1E42D1050);
    sub_1E3D9EB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF387C0);
  }

  return result;
}

unint64_t sub_1E3D9EB00()
{
  result = qword_1ECF387C8;
  if (!qword_1ECF387C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387D0, &qword_1E42D1070);
    sub_1E32752B0(&qword_1ECF387D8, &qword_1ECF387E0, &qword_1E42D1078, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF387C8);
  }

  return result;
}

unint64_t sub_1E3D9EBB8()
{
  result = qword_1ECF387E8;
  if (!qword_1ECF387E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387B8, &qword_1E42D1068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387A8, &qword_1E42D1058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387A0, &qword_1E42D1050);
    sub_1E3D9EA74();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF387E8);
  }

  return result;
}

void sub_1E3D9ECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387F8, &qword_1E42D10E8);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38800, &qword_1E42D10F0);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  sub_1E3D9EEA8();
  sub_1E3D9F378();
  sub_1E3743538(v39, v36, &qword_1ECF38800, &qword_1E42D10F0);
  sub_1E3743538(v31, v28, &qword_1ECF387F8, &qword_1E42D10E8);
  sub_1E3743538(v36, v23, &qword_1ECF38800, &qword_1E42D10F0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38808, &qword_1E42D10F8);
  sub_1E3743538(v28, v23 + *(v40 + 48), &qword_1ECF387F8, &qword_1E42D10E8);
  sub_1E325F6F0(v31, &qword_1ECF387F8, &qword_1E42D10E8);
  sub_1E325F6F0(v39, &qword_1ECF38800, &qword_1E42D10F0);
  sub_1E325F6F0(v28, &qword_1ECF387F8, &qword_1E42D10E8);
  sub_1E325F6F0(v36, &qword_1ECF38800, &qword_1E42D10F0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D9EEA8()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388A0, &qword_1E42D1150);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388A8, &qword_1E42D1158);
  OUTLINED_FUNCTION_0_10();
  v28 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388B0, &qword_1E42D1160);
  OUTLINED_FUNCTION_0_10();
  v30 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388B8, &qword_1E42D1168);
  OUTLINED_FUNCTION_0_10();
  v32 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_69(v16, v28);
  *v6 = sub_1E4201D44();
  *(v6 + 1) = 0;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388C0, &qword_1E42D1170);
  sub_1E3D9FC4C();
  v17 = *(v0 + 208);
  v18 = (*(*v17 + 792))();
  memset(v38, 0, sizeof(v38));
  v39 = 1;
  v19 = sub_1E32752B0(&qword_1ECF388C8, &qword_1ECF388A0, &qword_1E42D1150, MEMORY[0x1E6981870]);
  sub_1E3A6929C(v18, 0, 0, 1, v38, v3, v19);
  v20 = sub_1E325F6F0(v6, &qword_1ECF388A0, &qword_1E42D1150);
  v21 = (*(*v17 + 744))(v20);
  v37[0] = v3;
  v37[1] = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E39B87A4(v21, v7, OpaqueTypeConformance2);

  v23 = (*(v28 + 8))(v11, v7);
  (*(*v17 + 552))(v35, v23);
  if ((v36 & 1) == 0)
  {
    sub_1E3952BE8(v35[0], v35[1], v35[2], v35[3]);
  }

  v37[0] = v7;
  v37[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v31;
  sub_1E3E361E8();
  (*(v30 + 8))(v1, v25);
  sub_1E4203D44();
  OUTLINED_FUNCTION_10_122();
  LOBYTE(v29) = 1;
  OUTLINED_FUNCTION_5_168();
  v26 = v34;
  (*(v32 + 32))(v34, v24, v33);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38800, &qword_1E42D10F0);
  memcpy((v26 + *(v27 + 36)), v37, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D9F378()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v0;
  v9 = v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38810, &qword_1E42D1100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  v11 = type metadata accessor for OfferLockup(0);
  OUTLINED_FUNCTION_0_10();
  v80 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v81 = v14;
  v82 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38818, &qword_1E42D1108);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v73 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38820, &qword_1E42D1110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_26_2();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38828, &qword_1E42D1118);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_27_69(v22, v73[0]);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38830, &qword_1E42D1120);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v83 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v84 = v73 - v27;
  OUTLINED_FUNCTION_14_18();
  v29 = (*(v28 + 488))();
  if (!v29)
  {
    goto LABEL_21;
  }

  v31 = sub_1E373E010(14, v29, v30);

  if (!v31)
  {
    goto LABEL_21;
  }

  if (*v31 != _TtC8VideosUI13TextViewModel)
  {

LABEL_21:
    sub_1E3DA0F68();
    sub_1E3743538(v3, v1, &qword_1ECF38818, &qword_1E42D1108);
    swift_storeEnumTagMultiPayload();
    sub_1E3DA18F0();
    sub_1E3DA1A60();
    sub_1E4201F44();
    v65 = v3;
    v66 = &qword_1ECF38818;
    v67 = &qword_1E42D1108;
    goto LABEL_22;
  }

  v77 = v31;
  v76 = v9;
  v32 = *(v0 + 192);
  v33 = *(v0 + 208);
  sub_1E374EBCC();
  OUTLINED_FUNCTION_30();
  (*(v34 + 152))(&v90);

  (*(*v33 + 176))(v91, v35);
  if ((v92 & 1) == 0)
  {
    sub_1E3952BE0(v91[0], v91[1], v91[2], v91[3]);
  }

  v36 = (v0 + *(v11 + 32));
  v37 = *v36;
  v38 = v36[1];
  *&v93 = v37;
  v74 = v38;
  *(&v93 + 1) = v38;
  v73[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  v39 = v89 == 0.0 || v32 == 0;
  v40 = v39;
  v75 = v40;
  v41 = sub_1E4201D44();
  v42 = v85;
  *v85 = v41;
  v42[1] = 0;
  *(v42 + 16) = 0;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  *&v19[*(v16 + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v44 = sub_1E4202764();
  *(inited + 32) = v44;
  v45 = sub_1E4202784();
  *(inited + 33) = v45;
  v46 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v44)
  {
    v46 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v45)
  {
    v46 = sub_1E4202774();
  }

  sub_1E4200A54();
  v48 = v47;
  OUTLINED_FUNCTION_20_89();
  sub_1E3741EA0(v19, v2, &qword_1ECF29D98, &qword_1E429CA30);
  v49 = v2 + *(v78 + 36);
  *v49 = v46;
  *(v49 + 8) = v48;
  *(v49 + 16) = v4;
  *(v49 + 24) = v5;
  *(v49 + 32) = v6;
  *(v49 + 40) = 0;
  sub_1E4202744();
  v50 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v39)
  {
    v50 = sub_1E4202774();
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38898, &qword_1E42D1148);
  v52 = v85;
  v53 = v85 + *(v51 + 44);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v53, &qword_1ECF38820, &qword_1E42D1110);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38888, &qword_1E42D1140) + 36));
  *v54 = v50;
  OUTLINED_FUNCTION_11_4(v54);
  sub_1E3DA0F68();
  OUTLINED_FUNCTION_12_117();
  v55 = v82;
  sub_1E3DA1E8C(v7, v82, v56);
  v57 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v58 = swift_allocObject();
  sub_1E3D9E96C(v55, v58 + v57);
  sub_1E3DA1A60();
  v59 = OUTLINED_FUNCTION_51_1();
  v60 = v52 + *(v79 + 36);
  sub_1E40AB6EC(v59 & 1);

  sub_1E325F6F0(v3, &qword_1ECF38818, &qword_1E42D1108);
  v61 = sub_1E4203DA4();
  v63 = v62;
  v64 = &v60[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38860, &qword_1E42D1130) + 36)];
  *v64 = v61;
  v64[1] = v63;
  if ((v75 & 1) == 0)
  {
    *&v93 = v37;
    *(&v93 + 1) = v74;
    sub_1E42038F4();
  }

  sub_1E4203D84();
  sub_1E4200D94();
  v68 = v83;
  sub_1E3741EA0(v85, v83, &qword_1ECF38828, &qword_1E42D1118);
  v69 = (v68 + *(v86 + 36));
  v70 = v94;
  *v69 = v93;
  v69[1] = v70;
  v69[2] = v95;
  v71 = v68;
  v72 = v84;
  sub_1E3741EA0(v71, v84, &qword_1ECF38830, &qword_1E42D1120);
  sub_1E3743538(v72, v1, &qword_1ECF38830, &qword_1E42D1120);
  swift_storeEnumTagMultiPayload();
  sub_1E3DA18F0();
  sub_1E4201F44();

  v65 = v72;
  v66 = &qword_1ECF38830;
  v67 = &qword_1E42D1120;
LABEL_22:
  sub_1E325F6F0(v65, v66, v67);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D9FC4C()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388D0, &qword_1E42D1178);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388D8, &qword_1E42D1180);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388E0, &qword_1E42D1188);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  sub_1E3D9FF14(&v26 - v21);
  sub_1E3DA00F4(v17);
  sub_1E3DA0328(v9);
  sub_1E3743538(v22, v0, &qword_1ECF388E0, &qword_1E42D1188);
  sub_1E3743538(v17, v14, &qword_1ECF388D8, &qword_1E42D1180);
  v23 = v6;
  sub_1E3743538(v9, v6, &qword_1ECF388D0, &qword_1E42D1178);
  v24 = v27;
  sub_1E3743538(v0, v27, &qword_1ECF388E0, &qword_1E42D1188);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388E8, &qword_1E42D1190);
  sub_1E3743538(v14, v24 + *(v25 + 48), &qword_1ECF388D8, &qword_1E42D1180);
  sub_1E3743538(v23, v24 + *(v25 + 64), &qword_1ECF388D0, &qword_1E42D1178);
  sub_1E325F6F0(v9, &qword_1ECF388D0, &qword_1E42D1178);
  sub_1E325F6F0(v17, &qword_1ECF388D8, &qword_1E42D1180);
  sub_1E325F6F0(v22, &qword_1ECF388E0, &qword_1E42D1188);
  sub_1E325F6F0(v23, &qword_1ECF388D0, &qword_1E42D1178);
  sub_1E325F6F0(v14, &qword_1ECF388D8, &qword_1E42D1180);
  sub_1E325F6F0(v0, &qword_1ECF388E0, &qword_1E42D1188);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D9FF14(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38948, &unk_1E42D11F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_14_18();
  v6 = (*(v5 + 488))();
  if (v6)
  {
    v8 = sub_1E373E010(39, v6, v7);

    if (v8)
    {
      type metadata accessor for ImageViewModel();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v14 = v9;
        sub_1E3DA1498(39, v10, v11, v12, v13, v26);
        OUTLINED_FUNCTION_29_76();
        sub_1E418A524();
        v15 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v14, v26, 0, v15 & 1, 0, 0, v1);
        sub_1E4203DA4();
        OUTLINED_FUNCTION_19_104();
        sub_1E375C31C(v26);

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8, &qword_1E42C9810);
        OUTLINED_FUNCTION_18_94(v16);
        *(v1 + *(v3 + 36)) = 0;
        sub_1E3741EA0(v1, a1, &qword_1ECF38948, &unk_1E42D11F0);
        OUTLINED_FUNCTION_8_11();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
        OUTLINED_FUNCTION_32_66();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_32_66();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

void sub_1E3DA00F4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38928, &qword_1E42D11D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_14_18();
  v6 = (*(v5 + 488))();
  if (v6)
  {
    v8 = sub_1E373E010(32, v6, v7);

    if (v8)
    {
      type metadata accessor for ImageViewModel();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v14 = v9;
        sub_1E3DA1498(32, v10, v11, v12, v13, v34);
        OUTLINED_FUNCTION_29_76();
        sub_1E418A524();
        *v1 = sub_1E4201B84();
        *(v1 + 8) = 0;
        *(v1 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38930, &qword_1E42D11D8);
        sub_1E3DA160C(v14, v34, v15, v16, v17, v18, v19, v20, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11]);
        sub_1E4203DA4();
        OUTLINED_FUNCTION_19_104();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38938, &qword_1E42D11E0);
        OUTLINED_FUNCTION_18_94(v21);
        v22 = [objc_opt_self() lightGrayColor];
        v23 = sub_1E38F08C4(v22);

        LOBYTE(v22) = sub_1E4202734();

        sub_1E375C31C(v34);
        v24 = v1 + *(v3 + 36);
        *v24 = v23;
        *(v24 + 8) = v22;
        sub_1E3741EA0(v1, a1, &qword_1ECF38928, &qword_1E42D11D0);
        OUTLINED_FUNCTION_8_11();
        __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
        OUTLINED_FUNCTION_32_66();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_32_66();

  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}