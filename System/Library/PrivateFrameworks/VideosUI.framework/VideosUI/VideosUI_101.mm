void sub_1E3E7F41C(unint64_t a1)
{
  v103 = sub_1E41FE624();
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts], v116);
  v112 = v4;
  v113 = v1;
  v5 = *&v1[v4];
  v107 = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CC0];
  v6 = sub_1E32AE9B0(v5);
  v7 = v5 & 0xC000000000000001;
  v108 = v5 + 32;
  v114 = a1 & 0xC000000000000001;
  v109 = a1 + 32;
  v110 = v6;
  v111 = v5;

  v8 = 0;
  v106 = 0;
LABEL_2:
  if (v8 != v110)
  {
    sub_1E34AF4E4(v8, v7 == 0, v111);
    if (v7)
    {
      MEMORY[0x1E6911E60](v8, v111);
    }

    else
    {
    }

    v9 = __OFADD__(v8++, 1);
    if (!v9)
    {
      v10 = sub_1E32AE9B0(a1);
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {
          sub_1E4207544();
          OUTLINED_FUNCTION_7_91();
          sub_1E4207594();
          sub_1E4207554();
          goto LABEL_2;
        }

        if (v114)
        {
          MEMORY[0x1E6911E60](v11, a1);
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }
        }

        if (__OFADD__(v11, 1))
        {
          break;
        }

        v5 = sub_1E41FE604();

        ++v11;
        if (v5)
        {

          goto LABEL_2;
        }
      }

      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v108 = v118;
  v118 = MEMORY[0x1E69E7CC0];
  v110 = sub_1E32AE9B0(a1);
  v12 = 0;
LABEL_18:
  while (v12 != v110)
  {
    OUTLINED_FUNCTION_6_72();
    if (v5)
    {
      MEMORY[0x1E6911E60](v12, a1);
    }

    else
    {
    }

    v9 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (v9)
    {
      goto LABEL_147;
    }

    v111 = v13;
    v14 = *&v113[v112];
    v15 = sub_1E32AE9B0(v14);

    v16 = 0;
    while (v15 != v16)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_142;
      }

      v5 = sub_1E41FE604();

      ++v16;
      if (v5)
      {

        v12 = v111;
        goto LABEL_18;
      }
    }

    sub_1E4207544();
    OUTLINED_FUNCTION_7_91();
    sub_1E4207594();
    sub_1E4207554();
    v12 = v111;
  }

  v17 = 0;
  v104 = v118;
  v18 = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CC0];
  while (v17 != v110)
  {
    OUTLINED_FUNCTION_6_72();
    if (v5)
    {
      MEMORY[0x1E6911E60](v17, a1);
    }

    else
    {
    }

    v9 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v9)
    {
      goto LABEL_148;
    }

    v111 = v19;
    v20 = *&v113[v112];
    v21 = sub_1E32AE9B0(v20);

    v22 = 0;
    while (v21 != v22)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_144;
      }

      v5 = sub_1E41FE604();

      ++v22;
      if (v5)
      {

        sub_1E4207544();
        OUTLINED_FUNCTION_7_91();
        sub_1E4207594();
        sub_1E4207554();
        goto LABEL_48;
      }
    }

LABEL_48:
    v18 = MEMORY[0x1E69E7CC0];
    v17 = v111;
  }

  v101 = v118;
  v115 = v18;
  v23 = v108;
  v24 = 0;
  v110 = sub_1E32AE9B0(v108);
  v111 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientViews;
  v109 = v23 & 0xC000000000000001;
  v100 = (v105 + 16);
  v99 = (v105 + 8);
  v26 = v112;
  v25 = v113;
  while (v110 != v24)
  {
    if (v109)
    {
      v27 = MEMORY[0x1E6911E60](v24, v23);
    }

    else
    {
      if (v24 >= *(v23 + 16))
      {
        goto LABEL_150;
      }

      v27 = *(v23 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_149;
    }

    OUTLINED_FUNCTION_27_11(&v25[v26]);

    v28 = v106;
    sub_1E39E6450(&v25[v26], v27);
    if (v28)
    {
      goto LABEL_162;
    }

    v30 = v29;
    v106 = 0;
    v31 = *&v25[v26];
    v32 = v31 >> 62;
    if (v31 >> 62)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v33 = sub_1E4207384();
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v33 - v30;
    if (v33 < v30)
    {
      goto LABEL_151;
    }

    if (v30 < 0)
    {
      goto LABEL_152;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v35 = sub_1E4207384();
    }

    else
    {
      v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 < v33)
    {
      goto LABEL_153;
    }

    v36 = v30 - v33;
    if (__OFSUB__(0, v34))
    {
      goto LABEL_154;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
      v37 = sub_1E4207384();
    }

    else
    {
      v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v37 - v34;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_155;
    }

    v105 = v24 + 1;
    v114 = v27;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v113[v112] = v31;
    if (v32)
    {
      v40 = 0;
    }

    else
    {
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v40 != 1 || (v41 = v31 & 0xFFFFFFFFFFFFFF8, v38 > *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v32)
      {
        OUTLINED_FUNCTION_11_18(v31 & 0xFFFFFFFFFFFFFF8);
        sub_1E4207384();
      }

      v31 = sub_1E4207514();
      *&v113[v112] = v31;
      v41 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for ViewGradientLayout(0);
    swift_arrayDestroy();
    if (v34)
    {
      if (v31 >> 62)
      {
        v42 = sub_1E4207384();
      }

      else
      {
        v42 = *(v41 + 16);
      }

      v43 = v42 - v33;
      if (__OFSUB__(v42, v33))
      {
        goto LABEL_156;
      }

      v44 = (v41 + 32 + 8 * v33);
      if (v33 != v30 || v41 + 32 + 8 * v30 >= v44 + 8 * v43)
      {
        memmove((v41 + 32 + 8 * v30), v44, 8 * v43);
      }

      if (v31 >> 62)
      {
        v46 = sub_1E4207384();
      }

      else
      {
        v46 = *(v41 + 16);
      }

      if (__OFADD__(v46, v36))
      {
        goto LABEL_157;
      }

      *(v41 + 16) = v46 - v34;
    }

    v26 = v112;
    v25 = v113;
    *&v113[v112] = v31;
    swift_endAccess();
    v47 = v111;
    swift_beginAccess();
    v48 = *&v25[v47];
    v49 = v114;
    if (*(v48 + 16) && (v50 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id, v51 = sub_1E39E6224(v114 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v52 & 1) != 0))
    {
      v53 = *(*(v48 + 56) + 8 * v51);
      swift_endAccess();
      v54 = v49 + v50;
      v55 = v102;
      v56 = v103;
      (*v100)(v102, v54, v103);
      OUTLINED_FUNCTION_27_11(&v25[v111]);
      v57 = v53;
      v58 = sub_1E39E66C8(v55);
      (*v99)(v55, v56);
      swift_endAccess();

      v59 = v57;
      MEMORY[0x1E6910BF0]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v107 = v115;
      v24 = v105;
      v26 = v112;
      v25 = v113;
      v23 = v108;
    }

    else
    {
      swift_endAccess();

      ++v24;
      v23 = v108;
    }
  }

  v60 = sub_1E32AE9B0(v104);
  if (v60)
  {
    v61 = v60;
    if (v60 < 1)
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v62 = 0;
    v114 = v104 & 0xC000000000000001;
    do
    {
      if (v114)
      {
        v63 = MEMORY[0x1E6911E60](v62, v104);
      }

      else
      {
        v63 = *(v104 + 8 * v62 + 32);
      }

      v64 = v107 >> 62;
      if (v107 >> 62)
      {
        if (!sub_1E4207384())
        {
LABEL_118:
          v71 = v113;
LABEL_119:
          type metadata accessor for GradientView();
          [v71 bounds];
          v70 = sub_1E3890DAC();
          v69 = 0;
          goto LABEL_120;
        }
      }

      else if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v65 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v64 || (v65 & 1) == 0)
      {
        v66 = sub_1E37EFA58(v107);
      }

      else
      {
        v66 = v107;
      }

      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_158;
      }

      v107 = v66;
      v68 = v67 - 1;
      v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 8 * (v67 - 1) + 0x20);
      *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) = v68;
      v70 = v69;
      v71 = v113;
      if (!v69)
      {
        goto LABEL_119;
      }

LABEL_120:
      ++v62;
      v72 = v69;
      [v71 addSubview_];
      v73 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts;
      OUTLINED_FUNCTION_27_11(v71 + OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts);

      MEMORY[0x1E6910BF0](v74);
      sub_1E38C5A18(*((*(v71 + v73) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1E4206324();
      swift_endAccess();
      v75 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
      v76 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientViews;
      OUTLINED_FUNCTION_27_11(v71 + OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientViews);
      v77 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v71 + v76);
      sub_1E39E68B0(v77, v63 + v75, isUniquelyReferenced_nonNull_native);
      *(v71 + v76) = v117;
      swift_endAccess();
      [v71 vui_setNeedsLayout];
    }

    while (v61 != v62);
  }

  v79 = v107;
  v80 = sub_1E32AE9B0(v107);
  v81 = v79;
  v82 = v101;
  if (!v80)
  {
LABEL_128:

    v88 = sub_1E32AE9B0(v82);
    if (v88)
    {
      v89 = v88;
      if (v88 < 1)
      {
        goto LABEL_161;
      }

      for (i = 0; i != v89; ++i)
      {
        if ((v82 & 0xC000000000000001) != 0)
        {
          v91 = MEMORY[0x1E6911E60](i, v82);
        }

        else
        {
          v91 = *(v82 + 8 * i + 32);
        }

        v92 = v113;
        v93 = v111;
        swift_beginAccess();
        v94 = *&v92[v93];
        if (*(v94 + 16) && (v95 = sub_1E39E6224(v91 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v96 & 1) != 0))
        {
          v97 = *(*(v94 + 56) + 8 * v95);
          swift_endAccess();
          v98 = v97;
          sub_1E396030C(v91);
        }

        else
        {
          swift_endAccess();
        }
      }
    }

    return;
  }

  v83 = v80;
  if (v80 >= 1)
  {
    v84 = 0;
    v85 = v79 & 0xC000000000000001;
    do
    {
      if (v85)
      {
        v86 = MEMORY[0x1E6911E60](v84, v81);
      }

      else
      {
        v86 = *(v81 + 8 * v84 + 32);
      }

      v87 = v86;
      ++v84;
      [v86 removeFromSuperview];

      v81 = v107;
    }

    while (v83 != v84);
    goto LABEL_128;
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  swift_endAccess();
  __break(1u);
}

double sub_1E3E80074(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_5;
  }

  v4 = *(*a1 + 936);

  v5 = v4();
  if (v5 == 2 || (v5 & 1) == 0)
  {
    *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout] = a1;

    v10 = (*(*a1 + 1888))(v9);
    v11 = v10;
    if (v10)
    {
      v12 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView;
      v32 = *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
      MEMORY[0x1EEE9AC00](v10);
      v14 = v13;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389B0, &unk_1E42D1640);
      sub_1E4148C68(sub_1E39E686C, v15, &v33);

      v16 = v33;
      [v16 setHidden_];
      [v16 setEffect_];
      [v2 vui:v16 addSubview:0 oldView:?];

      v17 = *&v2[v12];
      *&v2[v12] = v16;
    }

    v18 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer;
    v19 = *&v2[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8, &unk_1E42A9680);
    sub_1E4148C68(sub_1E38E2AD0, v20, &v33);

    v21 = v33;
    [v21 setHidden_];
    sub_1E3E805E8(v21);
    [v2 bounds];
    sub_1E3D54B34(v22, v23, v24, v25);
    if (v11)
    {
      v26 = *&v2[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
      if (!v26)
      {
LABEL_20:

        v30 = *&v2[v18];
        *&v2[v18] = v21;
        v31 = v21;

        [v2 vui_setNeedsLayout];

        return result;
      }

      v27 = [v26 vuiLayer];
    }

    else
    {
      v27 = [v2 vuiLayer];
    }

    v28 = v27;
    if (v28)
    {
      v29 = v28;
      [v28 setMask_];
    }

    goto LABEL_20;
  }

LABEL_5:
  v6 = *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
  if (v6)
  {
    [v6 setHidden_];
  }

  v7 = *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
  if (v7)
  {
    [v7 setHidden_];
  }

  *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout] = 0;

  return result;
}

id sub_1E3E803F8()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_270(&OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts);
  *(v0 + OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_imageView) = 0;
  v6 = v1;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3E804A0(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_270(&OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts);
  *&v1[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_imageView] = 0;
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_1E3E805E8(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  OUTLINED_FUNCTION_3_11();
  v6 = (*(v5 + 1792))();
  v7 = v6;
  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = sub_1E32AE9B0(v6);
    if (v9)
    {
      v10 = v9;
      v44 = v8;
      result = sub_1E37EBF70(0, v9 & ~(v9 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v40 = v1;
      v41 = v4;
      v12 = 0;
      v13 = v44;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6911E60](v12, v7);
        }

        else
        {
          v14 = *(v7 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 CGColor];
        type metadata accessor for CGColor();
        v43 = v17;

        *&v42 = v16;
        v44 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1E37EBF70((v18 > 1), v19 + 1, 1);
          v13 = v44;
        }

        ++v12;
        *(v13 + 16) = v19 + 1;
        sub_1E329504C(&v42, (v13 + 32 * v19 + 32));
      }

      while (v10 != v12);

      v2 = v40;
      v4 = v41;
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    v7 = sub_1E42062A4();
  }

  [a1 setColors_];

  OUTLINED_FUNCTION_3_11();
  v21 = (*(v20 + 1816))();
  v22 = v21;
  if (v21)
  {
    v23 = *(v21 + 16);
    if (v23)
    {
      v40 = v2;
      v41 = v4;
      *&v42 = v8;
      sub_1E4207574();
      v24 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v24 += 8;
        --v23;
      }

      while (v23);

      v4 = v41;
      v2 = v40;
    }

    else
    {
    }

    sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v22 = sub_1E42062A4();
  }

  [a1 setLocations_];

  OUTLINED_FUNCTION_3_11();
  v26 = (*(v25 + 1720))();
  v29 = OUTLINED_FUNCTION_5_89(v26, v27, v28);
  MEMORY[0x1EEE9AC00](v29);
  v39[2] = a1;
  v39[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED20, &unk_1E42AD6F0);
  sub_1E4148DE0(sub_1E39E6C34);
  OUTLINED_FUNCTION_3_11();
  v31 = (*(v30 + 1744))();
  v34 = OUTLINED_FUNCTION_5_89(v31, v32, v33);
  MEMORY[0x1EEE9AC00](v34);
  v39[-2] = a1;
  v39[-1] = v2;
  sub_1E4148DE0(sub_1E39E6C40);
  OUTLINED_FUNCTION_3_11();
  v36 = (*(v35 + 1768))();
  if (v36 == 5)
  {
    v37 = *MEMORY[0x1E6979DA0];
  }

  else
  {
    v37 = sub_1E40C2190(v36);
  }

  v38 = v37;
  [a1 setType_];

  return [v4 commit];
}

void sub_1E3E80B0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for StandardExtrasLockup(0);
  sub_1E3929B88(v13, v14, v15);
  sub_1E4200CD4();
  v16 = *(v13 + 36);
  *(v5 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v5 = v3;
  v17 = *(*v3 + 392);

  v19 = v17(v18);
  if (!v19)
  {
    goto LABEL_4;
  }

  if (*v19 != _TtC8VideosUI30StandardExtrasLockupCellLayout)
  {

LABEL_4:
    type metadata accessor for StandardExtrasLockupCellLayout();
    v19 = sub_1E3890648(v3[49]);
  }

  *(v5 + *(v13 + 40)) = v19;
  memcpy((v5 + 8), v1, 0xC3uLL);
  type metadata accessor for ContextMenuModel(0);

  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  v20 = OUTLINED_FUNCTION_35_5();
  v22 = sub_1E4188148(v20, v21);
  *(v5 + 208) = v22;
  v24 = (*(*v3 + 488))(v22, v23);

  if (v24 && (v26 = sub_1E373E010(67, v24, v25), , v26))
  {

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  *(v5 + 216) = v27;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E80DBC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v17[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A9D0, &qword_1E42D8990);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A9D8, &qword_1E42D8998);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  sub_1E3E80F70();
  v9 = *(v1 + 208);
  v10 = sub_1E3E81428();
  sub_1E4187EA8(v9, v3, v10);
  sub_1E325F69C(v6, &qword_1ECF3A9D0);
  v11 = *(v1 + *(type metadata accessor for StandardExtrasLockup(0) + 40));
  v17[2] = v3;
  v17[3] = v10;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v3) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v13 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v14 = OUTLINED_FUNCTION_51_1() & 1;
  sub_1E383F6D4(v11, v3 & 1, v13 & 1, 0, v14, v7, OpaqueTypeConformance2);
  v15 = OUTLINED_FUNCTION_74();
  v16(v15);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E80F70()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = type metadata accessor for LockupCard(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAF0, &unk_1E42D8B98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_3();
  v9 = type metadata accessor for LockupList(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA00, &qword_1E42D89A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v39 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v40 = v18;
  v19 = *(v2 + *(type metadata accessor for StandardExtrasLockup(0) + 40));
  OUTLINED_FUNCTION_5_0(v19 + 172, &v43);
  if (*(v19 + 172) == 1)
  {
    v20 = *v2;
    v21 = v2[26];
    *v13 = v20;
    v13[1] = v19;
    v13[2] = v21;
    v22 = *(v9 + 28);
    *(v13 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;

    LOBYTE(v20) = sub_1E4202764();
    *(inited + 32) = v20;
    v24 = sub_1E4202784();
    *(inited + 33) = v24;
    v25 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v20)
    {
      v25 = sub_1E4202774();
    }

    sub_1E4202774();
    if (sub_1E4202774() != v24)
    {
      v25 = sub_1E4202774();
    }

    OUTLINED_FUNCTION_8();
    (*(v26 + 176))(v42);
    if ((v42[4] & 1) == 0)
    {
      v29.n128_u64[0] = v42[2];
      v30.n128_u64[0] = v42[3];
      v27.n128_u64[0] = v42[0];
      v28.n128_u64[0] = v42[1];
      j_nullsub_1(v27, v28, v29, v30);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3E851DC(v13, v39);
    v31 = (v39 + *(v14 + 36));
    *v31 = v25;
    OUTLINED_FUNCTION_11_4(v31);
    sub_1E3741EA0(v39, v40, &qword_1ECF3AA00, &qword_1E42D89A8);
    sub_1E3743538(v40, v0, &qword_1ECF3AA00, &qword_1E42D89A8);
    swift_storeEnumTagMultiPayload();
    sub_1E3E81568();
    OUTLINED_FUNCTION_15_132();
    sub_1E3E81644(v32);
    OUTLINED_FUNCTION_40_13();
    sub_1E4201F44();
    sub_1E325F69C(v40, &qword_1ECF3AA00);
  }

  else
  {
    v33 = *v2;
    memcpy(v42, v2 + 1, 0xC3uLL);
    v34 = v2[26];
    *v7 = v33;
    v7[1] = v19;
    memcpy(v7 + 2, v2 + 1, 0xC3uLL);
    v7[27] = v34;
    v35 = *(v3 + 32);
    *(v7 + v35) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    sub_1E3E856D4(v7, v0, type metadata accessor for LockupCard);
    swift_storeEnumTagMultiPayload();

    sub_1E375C1CC(v42, &v41);
    sub_1E3E81568();
    OUTLINED_FUNCTION_15_132();
    sub_1E3E81644(v36);

    sub_1E4201F44();
    v37 = OUTLINED_FUNCTION_74();
    sub_1E3E85730(v37, v38);
  }

  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E3E81428()
{
  result = qword_1ECF3A9E0;
  if (!qword_1ECF3A9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9D0, &qword_1E42D8990);
    sub_1E3E814AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9E0);
  }

  return result;
}

unint64_t sub_1E3E814AC()
{
  result = qword_1ECF3A9E8;
  if (!qword_1ECF3A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9F0, &qword_1E42D89A0);
    sub_1E3E81568();
    sub_1E3E81644(&unk_1ECF66690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9E8);
  }

  return result;
}

unint64_t sub_1E3E81568()
{
  result = qword_1ECF3A9F8;
  if (!qword_1ECF3A9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA00, &qword_1E42D89A8);
    sub_1E3E81644(&unk_1ECF66688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9F8);
  }

  return result;
}

unint64_t sub_1E3E81644(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1E3E816EC()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel(319);
    if (v1 <= 0x3F)
    {
      sub_1E3BFC284(319, v1, v2);
      if (v3 <= 0x3F)
      {
        sub_1E38D5D68(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for StandardExtrasLockupCellLayout();
          if (v5 <= 0x3F)
          {
            OUTLINED_FUNCTION_72();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_165();
          }
        }
      }
    }
  }
}

void sub_1E3E817DC()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardExtrasLockupCellLayout();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68(319);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3E818C8()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v0;
  v46 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA08, &qword_1E42D8AD8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA10, &qword_1E42D8AE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v40 = v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA18, &qword_1E42D8AE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v41 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA20, &qword_1E42D8AF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA28, &qword_1E42D8AF8);
  OUTLINED_FUNCTION_0_10();
  v42 = v15;
  v43 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  v17 = *v0;
  memcpy(v50, v4 + 2, 0xC3uLL);

  sub_1E375C1CC(v50, v47);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA30, &qword_1E42D8B00);
  v19 = sub_1E3E84D7C();
  v20.n128_f64[0] = sub_1E390F194(v17, v50, 0, sub_1E3E84D58, v18, v19, v3);
  (*(*v4[1] + 552))(v49, v20);
  OUTLINED_FUNCTION_32_1();
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  v25 = sub_1E3743478(&unk_1ECF3AA60);
  sub_1E391F8C0(v12, v25, v24);
  sub_1E325F69C(v3, &qword_1ECF3AA20);
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA68, &qword_1E42D8B18);
  sub_1E3E82868();
  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 152);

  v27(v47, v28);

  if (v48)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_3(v29, v30, v31, v32);
  }

  OUTLINED_FUNCTION_3();
  v33 = sub_1E4202734();
  sub_1E3741EA0(v1, v40, &qword_1ECF3AA08, &qword_1E42D8AD8);
  v34 = (v40 + *(v45 + 36));
  *v34 = v33;
  OUTLINED_FUNCTION_11_4(v34);
  sub_1E3741EA0(v40, v41, &qword_1ECF3AA10, &qword_1E42D8AE0);
  *(v41 + *(v44 + 36)) = 0;
  v35 = sub_1E4203D44();
  v37 = v36;
  v38 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA70, &qword_1E42D8B20) + 36);
  sub_1E3741EA0(v41, v38, &qword_1ECF3AA18, &qword_1E42D8AE8);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA78, &qword_1E42D8B28) + 36));
  *v39 = v35;
  v39[1] = v37;
  (*(v42 + 32))(v46, v2, v43);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E81D1C()
{
  OUTLINED_FUNCTION_9_4();
  v24 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA50, &qword_1E42D8B10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA88, &qword_1E42D8B38);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA48, &qword_1E42D8B08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  *v3 = sub_1E4201D54();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA90, &qword_1E42D8B40);
  sub_1E3E8200C();
  sub_1E42036A4();
  OUTLINED_FUNCTION_1();
  sub_1E3743478(v12);
  OUTLINED_FUNCTION_32_0();
  sub_1E3D414C8(v13, v14);

  sub_1E325F69C(v3, &qword_1ECF3AA50);
  OUTLINED_FUNCTION_8();
  (*(v15 + 176))(v25);
  if (v26)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v18.n128_u64[0] = v25[2];
    v19.n128_u64[0] = v25[3];
    v16.n128_u64[0] = v25[0];
    v17.n128_u64[0] = v25[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_3();
  v20 = sub_1E4202734();
  (*(v8 + 32))(v1, v2, v6);
  v21 = (v1 + *(v10 + 36));
  *v21 = v20;
  OUTLINED_FUNCTION_11_4(v21);
  if (!*(v0 + 200) || (type metadata accessor for ViewModel(), sub_1E3E85198(&qword_1EE23BA60), , v22 = sub_1E4205E84(), , v23 = 0.0, (v22 & 1) == 0))
  {
    v23 = 1.0;
  }

  sub_1E3741EA0(v1, v24, &qword_1ECF3AA48, &qword_1E42D8B08);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA30, &qword_1E42D8B00) + 36)) = v23;
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E8200C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v75 = v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA98, &qword_1E42D8B48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v70 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAA0, &qword_1E42D8B50);
  OUTLINED_FUNCTION_0_10();
  v73 = v7;
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v80 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v79 = v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAA8, &qword_1E42D8B58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v67 - v12);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAB0, &unk_1E42D8B60);
  OUTLINED_FUNCTION_0_10();
  v69 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v68 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v77 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A0, &unk_1E42BC280);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v23 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = (v28 - v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A8, &unk_1E42D8B70);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v78 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_78();
  type metadata accessor for LockupCard(0);
  sub_1E3746E10(v29);
  v34 = sub_1E3B02B0C();
  (*(v25 + 8))(v29, v23);
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    v81 = 0;
    v82 = 0;
    sub_1E42036F4();
    sub_1E3D414F8(MEMORY[0x1E6981840], v22);

    v36 = OUTLINED_FUNCTION_74();
    v37(v36);
    v35 = 0;
  }

  v76 = v0;
  __swift_storeEnumTagSinglePayload(v0, v35, 1, v19);
  v38 = v2[1];
  *v13 = *v2;
  v13[1] = v38;
  v39 = *(type metadata accessor for SubtitleView(0) + 24);
  *(v13 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v40 = v67;
  *(v13 + *(v67 + 36)) = 0x3FF0000000000000;

  sub_1E4203694();
  sub_1E3E84F24();
  v41 = v77;
  sub_1E3D414C8(v40, v77);

  v42 = sub_1E325F69C(v13, &qword_1ECF3AAA8);
  MEMORY[0x1EEE9AC00](v42);
  *(&v67 - 2) = v2;
  MEMORY[0x1EEE9AC00](v43);
  *(&v67 - 2) = v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAC0, &qword_1E42D8B80);
  v45 = type metadata accessor for ExtrasContextMenuButton(0);
  OUTLINED_FUNCTION_40_13();
  v47 = sub_1E3E859C4(v46);
  v48 = sub_1E3E81644(&unk_1ECF667D8);
  sub_1E3DE5EA0(sub_1E3E8500C, sub_1E3E85014, v44, v45, v47, v48, v70);
  sub_1E4203714();
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v49);
  v50 = v79;
  sub_1E3D414C8(v71, v79);

  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v51, v52);
  v53 = v78;
  sub_1E3743538(v76, v78, &qword_1ECF338A8, &unk_1E42D8B70);
  v54 = v68;
  v55 = v69;
  v71 = *(v69 + 16);
  v56 = v72;
  v71(v68, v41, v72);
  v57 = v73;
  v58 = *(v73 + 16);
  v59 = v50;
  v60 = v74;
  v58(v80, v59, v74);
  v61 = v75;
  sub_1E3743538(v53, v75, &qword_1ECF338A8, &unk_1E42D8B70);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAE8, &qword_1E42D8B90);
  v71(v61 + *(v62 + 48), v54, v56);
  v63 = v61 + *(v62 + 64);
  v64 = v80;
  v58(v63, v80, v60);
  v65 = *(v57 + 8);
  v65(v79, v60);
  v66 = *(v55 + 8);
  v66(v77, v56);
  sub_1E325F69C(v76, &qword_1ECF338A8);
  v65(v64, v60);
  v66(v54, v56);
  sub_1E325F69C(v78, &qword_1ECF338A8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E82778@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AAD8, &qword_1E42D8B88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = sub_1E39C408C();
  if (v5)
  {
    sub_1E413D6F4(v5, v1);
    *(v1 + *(v3 + 36)) = 256;
    sub_1E3741EA0(v1, a1, &qword_1ECF3AAD8, &qword_1E42D8B88);
    OUTLINED_FUNCTION_8_11();
    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_8_11();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

void sub_1E3E82868()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  if (!sub_1E39C408C())
  {
    goto LABEL_5;
  }

  type metadata accessor for ImageViewModel();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

LABEL_5:
    v16 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  sub_1E3EB9BB4(v18);
  v15 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v14, v18, 0, v15 & 1, 0, 0, v1);

  sub_1E375C31C(v18);
  (*(v6 + 32))(v12, v1, v4);
  v16 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v12, v16, 1, v4);
  sub_1E3743538(v12, v0, &qword_1ECF29938, &unk_1E429C3F0);
  *v3 = 0;
  *(v3 + 8) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AA80, &qword_1E42D8B30);
  sub_1E3743538(v0, v3 + *(v17 + 48), &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E325F69C(v12, &qword_1ECF29938);
  sub_1E325F69C(v0, &qword_1ECF29938);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3E82AAC@<D0>(uint64_t a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = (v4 - v3);
  type metadata accessor for LockupList(0);
  sub_1E3746E10(v5);
  sub_1E3B02A04();
  v6 = OUTLINED_FUNCTION_74();
  v8 = v7(v6);
  v11 = sub_1E3E84CB0(v8, v9, v10);
  sub_1E3E84D04(v11, v12, v13);

  sub_1E4201F44();
  result = *&v15;
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  return result;
}

void sub_1E3E82C20()
{
  OUTLINED_FUNCTION_9_4();
  v52 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB20, &qword_1E42D8D78);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB28, &qword_1E42D8D80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB30, &qword_1E42D8D88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB38, &qword_1E42D8D90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v51 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB40, &qword_1E42D8D98);
  sub_1E3E83034();
  v17 = sub_1E4202744();
  v18 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v17)
  {
    v18 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v20 = *(v19 + 176);
  v20(v53);
  OUTLINED_FUNCTION_43_54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v9, &qword_1ECF3AB20, &qword_1E42D8D78);
  v21 = &v9[*(v6 + 36)];
  *v21 = v18;
  OUTLINED_FUNCTION_11_4(v21);
  v22 = sub_1E4202754();
  v23 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v22)
  {
    v23 = sub_1E4202774();
  }

  v20(v54);
  OUTLINED_FUNCTION_43_54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v9, v1, &qword_1ECF3AB28, &qword_1E42D8D80);
  v24 = (v1 + *(v49 + 36));
  *v24 = v23;
  OUTLINED_FUNCTION_11_4(v24);
  sub_1E4203D84();
  v25 = OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7(v25, 1, v26, v27, v28, v29, v30, v31, v47);
  sub_1E3741EA0(v1, v15, &qword_1ECF3AB30, &qword_1E42D8D88);
  memcpy(&v15[*(v50 + 36)], v55, 0x70uLL);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v32, v33, v34, v35);
  v36 = sub_1E3FFE5B8(0, 1);
  v37 = v51;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v38, v39, v40, v41);
  v42 = v52;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v43, v44, v45, v46);
  *(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB48, &qword_1E42D8DA0) + 48)) = v36;
  sub_1E325F69C(v0, &qword_1ECF3AB38);
  sub_1E325F69C(v37, &qword_1ECF3AB38);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E83034()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for ExtrasContextMenuButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  swift_retain_n();
  swift_retain_n();
  sub_1E4202754();
  v19 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v20)
  {
    v19 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v21 + 152))(v43);
  OUTLINED_FUNCTION_32_1();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v41[119] = 0;
  sub_1E4203DB4();
  v22 = OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7(v22, 0, v23, v24, v25, v26, v27, v28, v31);
  memcpy(&v42[7], v44, 0x70uLL);
  *v0 = v10;
  v0[1] = v8;
  v0[2] = v6;
  v29 = *(v13 + 28);
  *(v0 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  sub_1E3E856D4(v0, v17, type metadata accessor for ExtrasContextMenuButton);
  v32[0] = v10;
  v32[1] = v8;
  LOWORD(v32[2]) = 0;
  LOBYTE(v32[3]) = v19;
  v32[4] = v1;
  v32[5] = v2;
  v32[6] = v3;
  v32[7] = v4;
  LOBYTE(v32[8]) = 0;
  memcpy(&v32[8] + 1, v42, 0x77uLL);
  memcpy(v12, v32, 0xB8uLL);
  v12[23] = v10;
  v12[24] = v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB50, &qword_1E42D8DA8);
  sub_1E3E856D4(v17, v12 + *(v30 + 64), type metadata accessor for ExtrasContextMenuButton);

  sub_1E3743538(v32, v33, &qword_1ECF3AB58, &qword_1E42D8DB0);

  sub_1E3E85730(v0, type metadata accessor for ExtrasContextMenuButton);
  sub_1E3E85730(v17, type metadata accessor for ExtrasContextMenuButton);

  v33[0] = v10;
  v33[1] = v8;
  v34 = 0;
  v35 = v19;
  v36 = v1;
  v37 = v2;
  v38 = v3;
  v39 = v4;
  v40 = 0;
  memcpy(v41, v42, 0x77uLL);
  sub_1E325F69C(v33, &qword_1ECF3AB58);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3E8335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  *a8 = a4();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return a7(a1, a2, a3);
}

void sub_1E3E833E4()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  v4 = v3;
  v42 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB68, &qword_1E42D8DC0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v9 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_8();

  sub_1E4202784();
  v11 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v12)
  {
    v11 = sub_1E4202774();
  }

  v41 = v11;
  OUTLINED_FUNCTION_8();
  (*(v13 + 152))(v70);
  OUTLINED_FUNCTION_32_1();
  sub_1E4200A54();
  v39 = v15;
  v40 = v14;
  v37 = v17;
  v38 = v16;
  v67 = 0;
  sub_1E4202744();
  v18 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v12)
  {
    v18 = sub_1E4202774();
  }

  v36 = v18;
  v19 = *(*v2 + 176);
  v19(v71);
  OUTLINED_FUNCTION_43_54();
  v44 = v21;
  v45 = v20;
  v43 = v22;
  v35 = v23;
  v68 = 0;
  sub_1E4202754();
  v24 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v12)
  {
    v24 = sub_1E4202774();
  }

  v19(v72);
  OUTLINED_FUNCTION_43_54();
  v26 = v25;
  v33 = v27;
  v34 = v25;
  v29 = v28;
  v31 = v30;
  v69 = 0;
  *v0 = sub_1E4201D54();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB70, &qword_1E42D8DC8);
  sub_1E3E8378C();
  sub_1E3743538(v0, v9, &qword_1ECF3AB68, &qword_1E42D8DC0);
  v46[0] = v4;
  v46[1] = v2;
  LOWORD(v46[2]) = 0;
  LOBYTE(v46[3]) = v41;
  v46[4] = v40;
  v46[5] = v39;
  v46[6] = v38;
  v46[7] = v37;
  LOBYTE(v46[8]) = 0;
  LOBYTE(v46[9]) = v36;
  v46[10] = v45;
  v46[11] = v44;
  v46[12] = v43;
  v46[13] = v35;
  LOBYTE(v46[14]) = 0;
  LOBYTE(v46[15]) = v24;
  v46[16] = v26;
  v46[17] = v29;
  v46[18] = v33;
  v46[19] = v31;
  LOBYTE(v46[20]) = 0;
  memcpy(v42, v46, 0xA1uLL);
  v32 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB78, &qword_1E42D8DD0) + 48);
  sub_1E3743538(v9, v32, &qword_1ECF3AB68, &qword_1E42D8DC0);
  sub_1E3743538(v46, v47, &qword_1ECF3AB80, &qword_1E42D8DD8);
  sub_1E325F69C(v0, &qword_1ECF3AB68);
  sub_1E325F69C(v9, &qword_1ECF3AB68);
  v47[0] = v4;
  v47[1] = v2;
  v48 = 0;
  v49 = v41;
  v50 = v40;
  v51 = v39;
  v52 = v38;
  v53 = v37;
  v54 = 0;
  v55 = v36;
  v56 = v45;
  v57 = v44;
  v58 = v43;
  v59 = v35;
  v60 = 0;
  v61 = v24;
  v62 = v34;
  v63 = v29;
  v64 = v33;
  v65 = v31;
  v66 = 0;
  sub_1E325F69C(v47, &qword_1ECF3AB80);
  OUTLINED_FUNCTION_42();
}

void sub_1E3E8378C()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB88, &qword_1E42D8DE0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v13 = sub_1E4202744();
  v14 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v13)
  {
    v14 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v16 = *(v15 + 176);
  v16(&v42);
  OUTLINED_FUNCTION_43_54();
  v41 = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB90, &qword_1E42D8DE8);
  sub_1E3E83A44(v7, v5, v3, v1 + *(v24 + 44));
  v25 = sub_1E4202754();
  v26 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    v26 = sub_1E4202774();
  }

  v16(&v43);
  OUTLINED_FUNCTION_43_54();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_1E3FFE5B8(0, 1);
  v36 = OUTLINED_FUNCTION_74();
  sub_1E3743538(v36, v37, v38, &qword_1E42D8DE0);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = v14;
  *(v9 + 24) = v41;
  *(v9 + 32) = v19;
  *(v9 + 40) = v21;
  *(v9 + 48) = v23;
  *(v9 + 56) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AB98, &qword_1E42D8DF0);
  sub_1E3743538(v0, v9 + v39[12], &qword_1ECF3AB88, &qword_1E42D8DE0);
  v40 = v9 + v39[16];
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = v26;
  *(v40 + 24) = v28;
  *(v40 + 32) = v30;
  *(v40 + 40) = v32;
  *(v40 + 48) = v34;
  *(v40 + 56) = 0;
  *(v9 + v39[20]) = v35;
  sub_1E325F69C(v1, &qword_1ECF3AB88);
  sub_1E325F69C(v0, &qword_1ECF3AB88);
  OUTLINED_FUNCTION_42();
}

double sub_1E3E83A44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ExtrasContextMenuButton(0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v20 - v14);
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v17 = *(v16 + 36);
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  sub_1E3E856D4(v15, v12, type metadata accessor for ExtrasContextMenuButton);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABA0, &unk_1E42D8DF8);
  sub_1E3E856D4(v12, a4 + *(v18 + 64), type metadata accessor for ExtrasContextMenuButton);
  swift_retain_n();
  swift_retain_n();

  sub_1E3E85730(v15, type metadata accessor for ExtrasContextMenuButton);
  sub_1E3E85730(v12, type metadata accessor for ExtrasContextMenuButton);

  return result;
}

uint64_t sub_1E3E83C1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      if ((*(*v7 + 392))())
      {
        type metadata accessor for ImageLayout();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          OUTLINED_FUNCTION_5_0(a1 + 172, v27);
          (*(*v9 + 2240))(*(a1 + 172));
        }

        else
        {
        }
      }

      else
      {
        v9 = 0;
      }

      j__OUTLINED_FUNCTION_51_1();
      v15 = j__OUTLINED_FUNCTION_18();
      v26 = j__OUTLINED_FUNCTION_18() & 1;
      v16 = OUTLINED_FUNCTION_17_82();
      sub_1E3EB9C0C(v16, 0, 1, 0, 0, 1, v17, 2, v18, v24, v25, 0, 1, 0, 1, v15 & 1, v26);
      v19 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v8, v28, v9, v19 & 1, 0, 0, v2);

      sub_1E375C31C(v28);
      *(v2 + *(v5 + 36)) = 256;
      sub_1E3741EA0(v2, a2, &qword_1ECF2FEC0, &unk_1E42C8F40);
      OUTLINED_FUNCTION_8_11();
      return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    }
  }

  OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_1E3E83EA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1E4201D54();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABE8, &qword_1E42D8F28);
  return sub_1E3E83F08(a1, a2, (a3 + *(v7 + 44)));
}

double sub_1E3E83F08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for SubtitleView(0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16 - v10);
  *v11 = a1;
  v11[1] = a2;
  v13 = *(v12 + 32);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  sub_1E3E856D4(v11, v3, type metadata accessor for SubtitleView);
  *a3 = a1;
  a3[1] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABF0, &unk_1E42D8F30);
  sub_1E3E856D4(v3, a3 + *(v14 + 48), type metadata accessor for SubtitleView);
  swift_retain_n();
  swift_retain_n();
  sub_1E3E85730(v11, type metadata accessor for SubtitleView);
  sub_1E3E85730(v3, type metadata accessor for SubtitleView);

  return result;
}

void sub_1E3E84068()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v43 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528, &unk_1E42CBD50);
  OUTLINED_FUNCTION_0_10();
  v44 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530, &qword_1E42D5340);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_5_0(v2 + 172, &v46);
  LODWORD(v2) = *(v2 + 172);
  v19 = sub_1E39C408C();
  if (v2 == 1)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    v45 = v4;
    v20 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(0, v20 & 1);
    v21 = OUTLINED_FUNCTION_59_29();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    v45 = v4;
    v23 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(1, v23 & 1);
    v21 = OUTLINED_FUNCTION_59_29();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (*v4 == _TtC8VideosUI13TextViewModel)
  {
    v24 = sub_1E3C27528(v21, v22);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E38838AC(v24, 2u, 2, v5, OpaqueTypeConformance2, v0);
    (*(v43 + 8))(v9, v5);
    sub_1E4202744();
    v26 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v27)
    {
      v26 = sub_1E4202774();
    }

    if (v24)
    {
      v43 = *(*v24 + 152);

      (v43)(&v47, v28);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v44 + 32))(v17, v0, v10);
    v29 = (v17 + *(v13 + 36));
    *v29 = v26;
    OUTLINED_FUNCTION_11_4(v29);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v30, v31, v32, v33);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v34, v35, v36, v37);
  }

  else
  {
  }

LABEL_16:
  OUTLINED_FUNCTION_8_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E8443C()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v70 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528, &unk_1E42CBD50);
  OUTLINED_FUNCTION_0_10();
  v73 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v72 = v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530, &qword_1E42D5340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ABA8, &qword_1E42D8E08);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v76 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v75 = v16;
  v17 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = *(v0 + 8);
  OUTLINED_FUNCTION_5_0(v24 + 172, &v79);
  if (*(v24 + 172) == 1)
  {
    if (!sub_1E39C408C())
    {
      goto LABEL_12;
    }

    v77 = v3;
    v25 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(0, v25 & 1);
    v26 = OUTLINED_FUNCTION_59_29();
    if (!v3)
    {
      goto LABEL_12;
    }

    v69 = v12;
  }

  else
  {
    if (!sub_1E39C408C())
    {
      goto LABEL_12;
    }

    v69 = v12;
    v77 = v3;
    v28 = j__OUTLINED_FUNCTION_18();
    sub_1E39C26D0(1, v28 & 1);
    v26 = OUTLINED_FUNCTION_59_29();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (*v3 == _TtC8VideosUI13TextViewModel)
  {
    v29 = sub_1E3C27528(v26, v27);
    type metadata accessor for SubtitleView(0);
    sub_1E3746E10(v23);
    v30 = sub_1E3B0352C();
    (*(v19 + 8))(v23, v17);
    if (v30)
    {
      v31 = 0;
      v32 = v72;
    }

    else
    {
      v32 = v72;
      if (v29)
      {
        OUTLINED_FUNCTION_71_2();
        v38 = *(v37 + 328);

        v38(v39);
        v41 = v40;

        if (v41)
        {
          OUTLINED_FUNCTION_71_2();
          v43 = *(v42 + 352);

          v43(v44);
          v31 = v45;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 1;
      }
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    if (*(v24 + 172))
    {
      v46 = 2;
    }

    else
    {
      v46 = v31 & 1;
    }

    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E38838AC(v29, 2u, v46, v4, OpaqueTypeConformance2, v32);
    (*(v70 + 8))(v1, v4);
    sub_1E4202744();
    v48 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v49)
    {
      v48 = sub_1E4202774();
    }

    if (v29)
    {
      OUTLINED_FUNCTION_71_2();
      v51 = *(v50 + 152);

      v51(&v80, v52);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v53 = v69;
    (*(v73 + 32))(v69, v32, v74);
    v54 = (v53 + *(v71 + 36));
    *v54 = v48;
    OUTLINED_FUNCTION_11_4(v54);
    sub_1E4202754();
    v55 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v49)
    {
      v55 = sub_1E4202774();
    }

    if (v29)
    {
      OUTLINED_FUNCTION_71_2();
      v57 = *(v56 + 152);

      v57(&v81, v58);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v59 = v76;
    sub_1E3741EA0(v53, v76, &qword_1ECF37530, &qword_1E42D5340);
    v60 = (v59 + *(v78 + 36));
    *v60 = v55;
    OUTLINED_FUNCTION_11_4(v60);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v61, v62, v63, v64);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v65, v66, v67, v68);
  }

  else
  {
  }

LABEL_12:
  OUTLINED_FUNCTION_8_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3E84AD0()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  if (sub_1E39C408C())
  {

    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 152);

    v10(&v35, v11);

    if (v36)
    {
      v16 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_13_3(v12, v13, v14, v15);
    }

    v24 = v16;
    v25 = v17;
    type metadata accessor for ExtrasContextMenuButton(0);
    sub_1E3746E10(v8);
    v26 = sub_1E3B0352C();
    (*(v4 + 8))(v8, v2);

    v27 = OUTLINED_FUNCTION_74();
    sub_1E397F070(v27, v28, v29);
    v33 = v38;
    v34 = v37;
    v30 = v39;
    v31 = (v26 & 1) == 0;
    if (v26)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0.0;
    }

    if (v31)
    {
      v19 = v25;
    }

    else
    {
      v19 = 0;
    }

    v32 = sub_1E4202734();
    v23 = v33;
    v22 = v34;
    v21 = v30;
    v20 = v32;
  }

  else
  {
    v18 = 0.0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *v1 = v22;
  *(v1 + 16) = v23;
  *(v1 + 32) = v21;
  *(v1 + 40) = v20;
  *(v1 + 48) = v18;
  *(v1 + 56) = v19;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E3E84CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF667C0;
  if (!qword_1ECF667C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF667C0);
  }

  return result;
}

unint64_t sub_1E3E84D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF667C8;
  if (!qword_1ECF667C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF667C8);
  }

  return result;
}

unint64_t sub_1E3E84D7C()
{
  result = qword_1ECF3AA38;
  if (!qword_1ECF3AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA30, &qword_1E42D8B00);
    sub_1E3E84E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AA38);
  }

  return result;
}

unint64_t sub_1E3E84E08()
{
  result = qword_1ECF3AA40;
  if (!qword_1ECF3AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA48, &qword_1E42D8B08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA50, &qword_1E42D8B10);
    sub_1E3743478(&unk_1ECF3AA58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AA40);
  }

  return result;
}

unint64_t sub_1E3E84F24()
{
  result = qword_1ECF3AAB8;
  if (!qword_1ECF3AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AAA8, &qword_1E42D8B58);
    sub_1E3E81644(&unk_1ECF667D0);
    sub_1E3743478(&qword_1ECF2E7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AAB8);
  }

  return result;
}

uint64_t sub_1E3E85014@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[1];
  v5 = v3[27];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  v6 = *(type metadata accessor for ExtrasContextMenuButton(0) + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1E3E850DC()
{
  result = qword_1ECF3AAD0;
  if (!qword_1ECF3AAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AAD8, &qword_1E42D8B88);
    sub_1E3E85198(qword_1EE282150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AAD0);
  }

  return result;
}

unint64_t sub_1E3E85198(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3E851DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_22Tm()
{
  OUTLINED_FUNCTION_27_48();
  if (v1)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  v3 = OUTLINED_FUNCTION_60_4(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_23Tm()
{
  OUTLINED_FUNCTION_55_2();
  if (v1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
    v3 = OUTLINED_FUNCTION_20_7(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_1E3E85370()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardExtrasLockupCellLayout();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68(319);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3E85438()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardExtrasLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

unint64_t sub_1E3E854C0()
{
  result = qword_1ECF3AAF8;
  if (!qword_1ECF3AAF8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AB00, &qword_1E42D8C28);
    v6 = sub_1E3E84CB0(v1, v2, v3);
    sub_1E3E84D04(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AAF8);
  }

  return result;
}

unint64_t sub_1E3E8554C()
{
  result = qword_1ECF3AB08;
  if (!qword_1ECF3AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA70, &qword_1E42D8B20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA20, &qword_1E42D8AF0);
    sub_1E3743478(&unk_1ECF3AA60);
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&unk_1ECF3AB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AB08);
  }

  return result;
}

uint64_t sub_1E3E856D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3E85730(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3E857A8()
{
  result = qword_1ECF3ABD0;
  if (!qword_1ECF3ABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ABD8, qword_1E42D8E80);
    sub_1E3E85908(&unk_1ECF3ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ABD0);
  }

  return result;
}

unint64_t sub_1E3E85858()
{
  result = qword_1EE289738;
  if (!qword_1EE289738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32A38, &unk_1E42BC620);
    sub_1E3E85908(&unk_1EE289740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289738);
  }

  return result;
}

unint64_t sub_1E3E85908(uint64_t a1)
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

unint64_t sub_1E3E859C4(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_58_32()
{

  return type metadata accessor for ViewModel();
}

uint64_t sub_1E3E85A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v728 = a7;
  v729 = a8;
  LODWORD(v752) = a4;
  v751 = a3;
  v750 = a2;
  v749 = a9;
  sub_1E4202114();
  OUTLINED_FUNCTION_0_10();
  v690 = v14;
  v691 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v689 = v15;
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC10, &qword_1E42D8FB0);
  OUTLINED_FUNCTION_0_10();
  v692 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v709 = v18;
  v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC18, &qword_1E42D8FB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v726 = v20;
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC20, &qword_1E42D8FC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v707 = v22;
  v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC28, &qword_1E42D8FC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v708 = v24;
  v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC30, &qword_1E42D8FD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v727 = v26;
  v27 = OUTLINED_FUNCTION_138();
  v703 = type metadata accessor for ListTemplateView(v27);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  v706 = v29;
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC38, &qword_1E42D8FD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v722 = v31;
  v698 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC40, &qword_1E42D8FE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v701 = v33;
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC48, &qword_1E42D8FE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v704 = v35;
  *&v736 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC50, &qword_1E42D8FF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v724 = v37;
  v731 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC58, &qword_1E42D8FF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  v734 = v39;
  v743 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC60, &qword_1E42D9000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  *&v739 = v41;
  v42 = OUTLINED_FUNCTION_138();
  v695 = type metadata accessor for ErrorTemplate(v42);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_3();
  v700 = v44;
  v693 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC68, &qword_1E42D9008);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v686 - v46;
  v716 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC70, &qword_1E42D9010);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44();
  v696 = v49;
  v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC78, &qword_1E42D9018);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  v713 = v51;
  v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC80, &qword_1E42D9020);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  v718 = v53;
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC88, &qword_1E42D9028);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  v699 = v55;
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC90, &qword_1E42D9030);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_44();
  v702 = v57;
  v58 = OUTLINED_FUNCTION_138();
  v697 = type metadata accessor for SearchTemplateView(v58);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_9_3();
  v688 = v60;
  v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC98, &qword_1E42D9038);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  v747 = v62;
  v740 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACA0, &qword_1E42D9040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_44();
  v742 = v64;
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACA8, &qword_1E42D9048);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44();
  v735 = v66;
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACB0, &qword_1E42D9050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_44();
  v715 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACB8, &qword_1E42D9058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v686 - v70;
  v714 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACC0, &qword_1E42D9060);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v686 - v73;
  v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACC8, &qword_1E42D9068);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44();
  v719 = v76;
  v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACD0, &qword_1E42D9070);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_44();
  v738 = v78;
  v746 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACD8, &qword_1E42D9078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_44();
  v744 = v80;
  v81 = OUTLINED_FUNCTION_138();
  v730 = type metadata accessor for StackTemplateView(v81);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v686 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v686 - v86;
  v88 = sub_1E3E88C70(v750, v751, v752, a5, a1, a6);
  v752 = v89;
  switch(*(a1 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType))
  {
    case 1:

      sub_1E39B45E0(v92, v758);
      v753 = 1;
      v759[0] = *v758;
      v759[1] = *&v758[16];
      v759[2] = *&v758[32];
      *&v759[3] = *&v758[48];
      BYTE8(v759[3]) = 1;
      v93 = OUTLINED_FUNCTION_55_42();
      v95 = sub_1E3E89F9C(v93, v94);
      v98 = sub_1E3E89870(v95, v96, v97);
      sub_1E3E898C4(v98, v99, v100);
      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v756 = OUTLINED_FUNCTION_8_162();
      *&v756[16] = v101;
      *&v756[32] = OUTLINED_FUNCTION_48_40();
      *&v756[41] = *(&v755[2] + 9);
      v754 = 0;
      v756[58] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20, &qword_1E42D90C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28, &qword_1E42D90C8);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      OUTLINED_FUNCTION_30_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_37_62();
      v102 = v742;
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v103, v104, v105, v106);
      OUTLINED_FUNCTION_45_55(v102);
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_44_48();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v107, v108, v109);
      v110 = v747;
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v111, v112, v113, v114);
      OUTLINED_FUNCTION_36_59(v110);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_16_126(v110);
      sub_1E3E89FF8(v758);
      goto LABEL_32;
    case 2:
    case 0xF:
      OUTLINED_FUNCTION_32_69(v88, v89, v90, v91);
      *&v739 = v523;

      v687 = a6;

      OUTLINED_FUNCTION_64_27();

      OUTLINED_FUNCTION_29_84(v524, v525, v526, v527, v528, v529, v530, v531, v686, v687, v688, v689, v690, v691, v692, v693, v694, v695, v696, v697, v698);
      v532 = OUTLINED_FUNCTION_5_191();
      sub_1E3E8A164(v532, v71, v533);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_271();
      sub_1E3E89B70(v534, v535, &unk_1E42D7A00);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v536, v537, v538, v539);
      swift_storeEnumTagMultiPayload();
      sub_1E3E89154();
      sub_1E3E89208();
      sub_1E4201F44();
      v540 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v540, v541, v542);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v543, v544, v545, v546);
      swift_storeEnumTagMultiPayload();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v547, v548, v549);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v550, v551, v552, v553);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      v554 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v554, v555, v556);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v557, v558, v559, v560);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v561, v562, v563);
      v522 = type metadata accessor for StackTemplateView;
      goto LABEL_28;
    case 6:
      v754 = 0;
      BYTE9(v759[3]) = 0;
      sub_1E3E899A4(v88, v89, v90);
      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v756 = OUTLINED_FUNCTION_8_162();
      *&v756[16] = v333;
      *&v756[32] = OUTLINED_FUNCTION_48_40();
      *&v756[42] = *(&v755[2] + 10);
      v758[0] = 1;
      v756[58] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20, &qword_1E42D90C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28, &qword_1E42D90C8);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      OUTLINED_FUNCTION_30_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_37_62();
      v334 = v742;
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v335, v336, v337, v338);
      OUTLINED_FUNCTION_45_55(v334);
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_44_48();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v339, v340, v341);
      v342 = v747;
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v343, v344, v345, v346);
      OUTLINED_FUNCTION_36_59(v342);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_16_126(v342);
      goto LABEL_32;
    case 9:
      v751 = v91;

      sub_1E392A014(v291, v759);
      v292 = v759[1];
      *v47 = v759[0];
      *(v47 + 1) = v292;
      *(v47 + 2) = v759[2];
      *(v47 + 6) = *&v759[3];
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v293, v294, v295, v296);
      v297 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v297, v298);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v299, v300, v301, v302);
      OUTLINED_FUNCTION_25_83();
      sub_1E3E89B70(v303, v304, &unk_1E42A9590);
      v305 = v696;
      OUTLINED_FUNCTION_109_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v306, v307, v308, v309);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00, &qword_1E42D90A0);
      sub_1E3E8945C();
      sub_1E3E89568();
      sub_1E4201F44();
      sub_1E325F6F0(v305, &qword_1ECF3AC70, &qword_1E42D9010);
      v310 = v735;
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v311, v312, v313, v314);
      OUTLINED_FUNCTION_65_28(v310);
      sub_1E3E890C8();
      sub_1E3E893D0();
      OUTLINED_FUNCTION_52_43();
      sub_1E4201F44();
      v315 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v315, v316, v317);
      v318 = v742;
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v319, v320, v321, v322);
      OUTLINED_FUNCTION_49_50(v318);
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      v323 = OUTLINED_FUNCTION_109_2();
      sub_1E325F6F0(v323, v324, &qword_1E42D9070);
      v325 = v747;
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v326, v327, v328, v329);
      OUTLINED_FUNCTION_36_59(v325);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v330, v331, v332);

      goto LABEL_19;
    case 0xA:
      v751 = v91;

      v192 = v700;
      OUTLINED_FUNCTION_60_29();
      sub_1E38DF3F8();
      sub_1E3E8A164(v192, v47, type metadata accessor for ErrorTemplate);
      swift_storeEnumTagMultiPayload();
      v193 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v193, v194);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v195, v196, v197, v198);
      OUTLINED_FUNCTION_25_83();
      sub_1E3E89B70(v199, v200, &unk_1E42A9590);
      OUTLINED_FUNCTION_109_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v201, v202, v203, v204);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00, &qword_1E42D90A0);
      sub_1E3E8945C();
      sub_1E3E89568();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v205, v206, v207);
      v208 = v735;
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v209, v210, v211, v212);
      OUTLINED_FUNCTION_65_28(v208);
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      v213 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v213, v214, v215);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v216, v217, v218, v219);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      v220 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v220, v221, v222);
      v223 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v223, v224, v225, v226);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v227 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v227, v228, v229);
      v230 = type metadata accessor for ErrorTemplate;
      v231 = v700;
      return sub_1E3E8A1C4(v231, v230);
    case 0xB:

      sub_1E37E1484(v755);
      memcpy(v756, v755, sizeof(v756));
      v758[0] = 0;
      v757 = 0;
      OUTLINED_FUNCTION_46_49();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v248, v249, v250, v251);
      v252 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v252, v253);
      OUTLINED_FUNCTION_23_88();
      OUTLINED_FUNCTION_82();
      v258 = sub_1E3E89650(v254, v255, v256, v257);
      sub_1E3E89514(v258, v259, v260);
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v713, v759, 0x49uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00, &qword_1E42D90A0);
      sub_1E3E8945C();
      sub_1E3E89568();
      sub_1E4201F44();
      v261 = v735;
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v262, v263, v264, v265);
      OUTLINED_FUNCTION_65_28(v261);
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      v266 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v266, v267, v268);
      v269 = v742;
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v270, v271, v272, v273);
      OUTLINED_FUNCTION_49_50(v269);
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      v274 = OUTLINED_FUNCTION_109_2();
      sub_1E325F6F0(v274, v275, &qword_1E42D9070);
      v276 = v747;
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v277, v278, v279, v280);
      OUTLINED_FUNCTION_36_59(v276);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v281, v282, v283);

LABEL_19:

      v245 = OUTLINED_FUNCTION_34_11();
      return sub_1E325F6F0(v245, v246, v247);
    case 0xD:
      OUTLINED_FUNCTION_32_69(v88, v89, v90, v91);
      v348 = v347;

      v349 = v728;

      OUTLINED_FUNCTION_64_27();

      v350 = v752;

      sub_1E3E6CE4C(a1, a6, v349, v84, a10, v750, v350, v348 & 1, v47, v685, v686, v687, v688, v689, v690, v691, v692, v693, v694, v695, v696);
      v351 = OUTLINED_FUNCTION_5_191();
      sub_1E3E8A164(v351, v701, v352);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_271();
      sub_1E3E89B70(v353, v354, &unk_1E42D7A00);
      OUTLINED_FUNCTION_26_95();
      sub_1E3E89B70(v355, v356, &unk_1E42A2BA8);
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v357, v358, v359, v360);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30, &unk_1E42D90D0);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_52_43();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v361, v362, v363);
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v364, v365, v366, v367);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_19_119();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v368, v369, v370);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v371, v372, v373, v374);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v375, v376, v377);
      v378 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v378, v379, v380, v381);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v382 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v382, v383, v384);
      OUTLINED_FUNCTION_28_74();
      v231 = v87;
      return sub_1E3E8A1C4(v231, v230);
    case 0xE:
      v751 = v91;

      v385 = sub_1E3F02FF4();
      LOBYTE(v755[0]) = v386 & 1;
      v758[0] = 1;
      *v756 = v385;
      *&v756[8] = v387;
      v756[16] = v386 & 1;
      v757 = 1;
      sub_1E380E99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD08, &qword_1E42D90A8);
      OUTLINED_FUNCTION_23_88();
      OUTLINED_FUNCTION_40_13();
      v392 = sub_1E3E89650(v388, v389, v390, v391);
      sub_1E3E89514(v392, v393, v394);
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v713, v759, 0x49uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00, &qword_1E42D90A0);
      sub_1E3E8945C();
      sub_1E3E89568();
      OUTLINED_FUNCTION_52_43();
      sub_1E4201F44();
      v395 = v735;
      OUTLINED_FUNCTION_20_104();
      sub_1E3294EE4(v396, v397, v398, v399);
      OUTLINED_FUNCTION_65_28(v395);
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_40_13();
      sub_1E325F6F0(v400, v401, v402);
      v403 = v742;
      OUTLINED_FUNCTION_20_104();
      sub_1E3294EE4(v404, v405, v406, v407);
      OUTLINED_FUNCTION_49_50(v403);
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      OUTLINED_FUNCTION_40_13();
      sub_1E325F6F0(v408, v409, v410);
      v411 = v747;
      OUTLINED_FUNCTION_20_104();
      sub_1E3294EE4(v412, v413, v414, v415);
      OUTLINED_FUNCTION_36_59(v411);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();
      v416 = OUTLINED_FUNCTION_57();
      sub_1E3264CE0(v416, v417);

      OUTLINED_FUNCTION_40_13();
      return sub_1E325F6F0(v245, v246, v247);
    case 0x10:
      v485 = v91;
      v486 = v88;
      v487 = v90;

      v488 = v728;

      OUTLINED_FUNCTION_64_27();
      v489 = v752;

      v490 = v487 & 1;
      v47 = v688;
      sub_1E38F8CB0(a1, v486, v489, v490, v485, a6, v488, v84, v688);
      sub_1E3E8A164(v47, v699, type metadata accessor for SearchTemplateView);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACF0, &qword_1E42D9090);
      OUTLINED_FUNCTION_24_91();
      sub_1E3E89B70(v491, v492, &unk_1E42A9EB0);
      sub_1E3E892C4();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v493, v494, v495, v496);
      swift_storeEnumTagMultiPayload();
      sub_1E3E89154();
      sub_1E3E89208();
      sub_1E4201F44();
      v497 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v497, v498, v499);
      v500 = v735;
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v501, v502, v503, v504);
      swift_storeEnumTagMultiPayload();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v505, v506, v507);
      OUTLINED_FUNCTION_43_55();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v508, v509, v510, v511);
      OUTLINED_FUNCTION_49_50(v500);
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_21_95();
      sub_1E4201F44();
      v512 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v512, v513, v514);
      OUTLINED_FUNCTION_40_56();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v515, v516, v517, v518);
      OUTLINED_FUNCTION_36_59(v500);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v519, v520, v521);
      v522 = type metadata accessor for SearchTemplateView;
LABEL_28:
      v230 = v522;
      v231 = v47;
      return sub_1E3E8A1C4(v231, v230);
    case 0x12:
      v157 = v91;
      v750 = v88;
      v158 = v90;

      v159 = v728;

      v160 = v729;

      v161 = v752;

      v751 = v157;
      sub_1E3E6CE4C(a1, a6, v159, v160, a10, v750, v161, v158 & 1, v157, v685, v686, v687, v688, v689, v690, v691, v692, v693, v694, v695, v696);
      v162 = sub_1E4202764();
      v163 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v162)
      {
        v163 = sub_1E4202774();
      }

      v164 = v689;
      sub_1E4202104();
      OUTLINED_FUNCTION_0_271();
      v167 = sub_1E3E89B70(v165, v166, &unk_1E42D7A00);
      v168 = v709;
      v169 = v730;
      MEMORY[0x1E690D880](v163, 0xC034000000000000, 0, v164, v730, v167);
      (*(v690 + 8))(v164, v691);
      OUTLINED_FUNCTION_28_74();
      sub_1E3E8A1C4(v84, v170);
      v171 = v692;
      v172 = v710;
      (*(v692 + 16))(v707, v168, v710);
      v173 = swift_storeEnumTagMultiPayload();
      sub_1E3E88EA4(v173, v174, v175);
      *&v759[0] = v169;
      *(&v759[0] + 1) = v167;
      OUTLINED_FUNCTION_27_78();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v176, v177, v178, v179);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8, &qword_1E42D9088);
      v180 = sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_42_59();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v181 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v181, v182, v183);
      v184 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v184, v185, v186, v187);
      OUTLINED_FUNCTION_63_27(v180);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v188 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v188, v189, v190);
      return (*(v171 + 8))(v709, v172);
    case 0x15:
      v751 = v91;
      v284 = (*(*a1 + 1000))(v88);
      v286 = v285;
      v287 = sub_1E4205F14();
      if (!v286)
      {

        goto LABEL_39;
      }

      if (v284 != v287 || v286 != v288)
      {
        v290 = sub_1E42079A4();

        if (v290)
        {
          goto LABEL_41;
        }

LABEL_39:

        *v756 = sub_1E3915FEC();
        *&v756[8] = v631;
        *&v756[16] = v632;
        *&v756[24] = v633;
        v756[32] = 1;
        goto LABEL_42;
      }

LABEL_41:

      *v756 = sub_1E3A7E5A4(v634);
      *&v756[8] = v635;
      memset(&v756[16], 0, 17);
LABEL_42:
      v636 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v636, v637);
      OUTLINED_FUNCTION_82();
      v642 = sub_1E3E89650(v638, v639, v640, v641);
      sub_1E3E8937C(v642, v643, v644);
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      v645 = v759[1];
      v646 = v759[2];
      v739 = v759[0];
      v736 = v759[1];
      v647 = v699;
      *v699 = v759[0];
      v647[1] = v645;
      *(v647 + 32) = v646;
      swift_storeEnumTagMultiPayload();
      v750 = v739;
      *&v739 = *(&v739 + 1);
      OUTLINED_FUNCTION_50_41();
      OUTLINED_FUNCTION_50_41();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACF0, &qword_1E42D9090);
      OUTLINED_FUNCTION_24_91();
      sub_1E3E89B70(v648, v649, &unk_1E42A9EB0);
      sub_1E3E892C4();
      OUTLINED_FUNCTION_49_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v650, v651, v652, v653);
      swift_storeEnumTagMultiPayload();
      sub_1E3E89154();
      sub_1E3E89208();
      sub_1E4201F44();
      OUTLINED_FUNCTION_33_4();
      sub_1E325F6F0(v654, v655, v656);
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v657, v658, v659, v660);
      swift_storeEnumTagMultiPayload();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_33_4();
      sub_1E325F6F0(v661, v662, v663);
      v664 = v742;
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v665, v666, v667, v668);
      OUTLINED_FUNCTION_49_50(v664);
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      OUTLINED_FUNCTION_33_4();
      sub_1E325F6F0(v669, v670, v671);
      v672 = v747;
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v673, v674, v675, v676);
      OUTLINED_FUNCTION_36_59(v672);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();
      OUTLINED_FUNCTION_20_104();
      sub_1E3E8A0FC(v677, v678, v679, v680, v646);
      OUTLINED_FUNCTION_20_104();
      sub_1E3E8A0FC(v681, v682, v683, v684, v646);

      OUTLINED_FUNCTION_33_4();
      return sub_1E325F6F0(v245, v246, v247);
    case 0x16:
      OUTLINED_FUNCTION_51_39();

      nullsub_1();
      v754 = 0;
      *&v759[0] = v232;
      BYTE8(v759[3]) = 0;
      v235 = sub_1E3E89870(v232, v233, v234);
      sub_1E3E898C4(v235, v236, v237);

      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v756 = OUTLINED_FUNCTION_8_162();
      *&v756[16] = v238;
      *&v756[32] = OUTLINED_FUNCTION_48_40();
      *&v756[41] = *(&v755[2] + 9);
      v758[0] = 0;
      v756[58] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20, &qword_1E42D90C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28, &qword_1E42D90C8);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v239 = v759[1];
      v240 = v734;
      *v734 = v759[0];
      v240[1] = v239;
      v240[2] = v759[2];
      *(v240 + 43) = *(&v759[2] + 11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_41_57();
      sub_1E4201F44();
      v241 = OUTLINED_FUNCTION_43_55();
      sub_1E3294EE4(v241, v242, &qword_1ECF3AC60, &qword_1E42D9000);
      OUTLINED_FUNCTION_45_55(v758);
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_21_95();
      sub_1E4201F44();
      sub_1E325F6F0(v74, &qword_1ECF3AC60, &qword_1E42D9000);
      v243 = OUTLINED_FUNCTION_40_56();
      sub_1E3294EE4(v243, v244, &qword_1ECF3ACD8, &qword_1E42D9078);
      OUTLINED_FUNCTION_36_59(v758);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();

      v245 = a10;
      v246 = &qword_1ECF3ACD8;
      v247 = &qword_1E42D9078;
      return sub_1E325F6F0(v245, v246, v247);
    case 0x17:
      v134 = v91;
      v135 = v88;
      v136 = v90;

      v137 = v752;

      sub_1E41DA798(a1, v135, v137, v136 & 1, v134, v758);
      v759[0] = *v758;
      v759[1] = *&v758[16];
      v759[2] = *&v758[32];
      *(&v759[2] + 9) = *&v758[41];
      v753 = 1;
      BYTE9(v759[3]) = 1;
      v138 = OUTLINED_FUNCTION_55_42();
      v140 = sub_1E3E89EEC(v138, v139);
      sub_1E3E899A4(v140, v141, v142);
      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v756 = OUTLINED_FUNCTION_8_162();
      *&v756[16] = v143;
      *&v756[32] = OUTLINED_FUNCTION_48_40();
      *&v756[42] = *(&v755[2] + 10);
      v754 = 1;
      v756[58] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20, &qword_1E42D90C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28, &qword_1E42D90C8);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      v144 = v759[1];
      v145 = v734;
      *v734 = v759[0];
      v145[1] = v144;
      v145[2] = v759[2];
      *(v145 + 43) = *(&v759[2] + 11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_41_57();
      OUTLINED_FUNCTION_37_62();
      OUTLINED_FUNCTION_43_55();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v146, v147, v148, v149);
      OUTLINED_FUNCTION_45_55(v758);
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_21_95();
      sub_1E4201F44();
      v150 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v150, v151, v152);
      OUTLINED_FUNCTION_40_56();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v153, v154, v155, v156);
      OUTLINED_FUNCTION_36_59(v758);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();
      sub_1E3E89F48(v758);

      goto LABEL_33;
    case 0x18:
      v418 = v91;

      v419 = v706;
      OUTLINED_FUNCTION_60_29();
      sub_1E3845C70(v420, v421, v422, v418, v423);
      sub_1E3E8A164(v419, v701, type metadata accessor for ListTemplateView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_271();
      sub_1E3E89B70(v424, v425, &unk_1E42D7A00);
      OUTLINED_FUNCTION_26_95();
      sub_1E3E89B70(v426, v427, &unk_1E42A2BA8);
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v428, v429, v430, v431);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30, &unk_1E42D90D0);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_52_43();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v432 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v432, v433, v434);
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v435, v436, v437, v438);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_41_57();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v439, v440, v441);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v442, v443, v444, v445);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      v446 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v446, v447, v448);
      v449 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v449, v450, v451, v452);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v453 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v453, v454, v455);
      v230 = type metadata accessor for ListTemplateView;
      v231 = v706;
      return sub_1E3E8A1C4(v231, v230);
    case 0x19:
      OUTLINED_FUNCTION_51_39();

      sub_1E3758D00(v456, v758);
      memcpy(v759, v758, 0x78uLL);
      sub_1E3E89EE4(v759);
      v457 = OUTLINED_FUNCTION_46_49();
      memcpy(v457, v458, 0x92uLL);
      v459 = OUTLINED_FUNCTION_55_42();
      v461 = sub_1E375B52C(v459, v460);
      v464 = sub_1E3E89C44(v461, v462, v463);
      sub_1E3E89C98(v464, v465, v466);
      sub_1E4201F44();
      OUTLINED_FUNCTION_62_31();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30, &unk_1E42D90D0);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v467, v468, v469, v470);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_19_119();
      v471 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v471, v472, v473);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v474, v475, v476, v477);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v478, v479, v480);
      v481 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v481, v482, v483, v484);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();
      sub_1E375B564(v758);
      goto LABEL_32;
    case 0x1A:
      OUTLINED_FUNCTION_51_39();

      sub_1E403A40C(v591, v758);
      memcpy(v759, v758, 0x91uLL);
      sub_1E3E89E28(v759);
      v592 = OUTLINED_FUNCTION_46_49();
      memcpy(v592, v593, 0x92uLL);
      v594 = OUTLINED_FUNCTION_55_42();
      v596 = sub_1E3E89E34(v594, v595);
      v599 = sub_1E3E89C44(v596, v597, v598);
      sub_1E3E89C98(v599, v600, v601);
      sub_1E4201F44();
      OUTLINED_FUNCTION_62_31();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30, &unk_1E42D90D0);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v602, v603, v604, v605);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18, &qword_1E42D90B8);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_19_119();
      v606 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v606, v607, v608);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v609, v610, v611, v612);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v613, v614, v615);
      v616 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v616, v617, v618, v619);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();
      sub_1E3E89E90(v758);
LABEL_32:

LABEL_33:
      OUTLINED_FUNCTION_82();
      return sub_1E325F6F0(v245, v246, v247);
    case 0x1C:

      sub_1E3A27280(v564, v755);
      *v756 = OUTLINED_FUNCTION_8_162();
      *&v756[16] = v565;
      *&v756[32] = OUTLINED_FUNCTION_48_40();
      *&v756[48] = v755[3];
      v758[0] = 0;
      v756[64] = 0;
      OUTLINED_FUNCTION_46_49();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v566, v567, v568, v569);
      OUTLINED_FUNCTION_46_49();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v570, v571, v572, v573);
      v574 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v574, v575);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v576, v577, v578, v579);
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v726, v759, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8, &qword_1E42D9088);
      sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v580 = v747;
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v581, v582, v583, v584);
      OUTLINED_FUNCTION_63_27(v580);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v585, v586, v587);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v588, v589, v590);
      v245 = OUTLINED_FUNCTION_34_11();
      return sub_1E325F6F0(v245, v246, v247);
    case 0x1D:
      OUTLINED_FUNCTION_51_39();

      sub_1E4190260(v115, v759);
      memcpy(v707, v759, 0x181uLL);
      swift_storeEnumTagMultiPayload();
      v116 = sub_1E3E89D78(v759, v756);
      sub_1E3E88EA4(v116, v117, v118);
      OUTLINED_FUNCTION_0_271();
      v121 = sub_1E3E89B70(v119, v120, &unk_1E42D7A00);
      *v756 = v730;
      *&v756[8] = v121;
      OUTLINED_FUNCTION_27_78();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v122, v123, v124, v125);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8, &qword_1E42D9088);
      v126 = sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_42_59();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v127 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v127, v128, v129);
      v130 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v130, v131, v132, v133);
      OUTLINED_FUNCTION_63_27(v126);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();
      sub_1E3E89DD4(v759);

      goto LABEL_36;
    default:
      LOBYTE(v755[0]) = 1;
      v756[64] = 1;
      v620 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v620, v621);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v622, v623, v624, v625);
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v726, v759, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8, &qword_1E42D9088);
      sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_42_59();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      v626 = v747;
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v627, v628, v629, v630);
      OUTLINED_FUNCTION_63_27(v626);
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_16_126(v626);

LABEL_36:

      v245 = OUTLINED_FUNCTION_10_13();
      return sub_1E325F6F0(v245, v246, v247);
  }
}

uint64_t sub_1E3E88C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType) == 6)
  {
    (*(*a6 + 328))(1);
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mediaShowcaseConfig];

    v10 = [v9 navigationBarTransitionDistance];
    v12.n128_f64[0] = v11;
    (*(*a6 + 352))(v10, v12);
  }

  return a1;
}

unint64_t sub_1E3E88DB0()
{
  result = qword_1EE2890A8;
  if (!qword_1EE2890A8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC28, &qword_1E42D8FC8);
    sub_1E3E88EA4(v1, v2, v3);
    type metadata accessor for StackTemplateView(255);
    sub_1E3E89B70(qword_1EE279920, type metadata accessor for StackTemplateView, &unk_1E42D7A00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890A8);
  }

  return result;
}

unint64_t sub_1E3E88EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE273160;
  if (!qword_1EE273160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE273160);
  }

  return result;
}

unint64_t sub_1E3E88EF8()
{
  result = qword_1EE289008;
  if (!qword_1EE289008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACE8, &qword_1E42D9088);
    sub_1E3E89650(&qword_1EE24DF88, &qword_1ECF3ACE0, &qword_1E42D9080, sub_1E3A28794);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289008);
  }

  return result;
}

unint64_t sub_1E3E88FB0()
{
  result = qword_1EE288AB0;
  if (!qword_1EE288AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACD8, &qword_1E42D9078);
    sub_1E3E8903C();
    sub_1E3E896CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AB0);
  }

  return result;
}

unint64_t sub_1E3E8903C()
{
  result = qword_1EE288B30;
  if (!qword_1EE288B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACD0, &qword_1E42D9070);
    sub_1E3E890C8();
    sub_1E3E893D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B30);
  }

  return result;
}

unint64_t sub_1E3E890C8()
{
  result = qword_1EE288CA8;
  if (!qword_1EE288CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACC8, &qword_1E42D9068);
    sub_1E3E89154();
    sub_1E3E89208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CA8);
  }

  return result;
}

unint64_t sub_1E3E89154()
{
  result = qword_1EE2890E8;
  if (!qword_1EE2890E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACC0, &qword_1E42D9060);
    sub_1E3E89B70(qword_1EE279920, type metadata accessor for StackTemplateView, &unk_1E42D7A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890E8);
  }

  return result;
}

unint64_t sub_1E3E89208()
{
  result = qword_1EE2890D0;
  if (!qword_1EE2890D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC90, &qword_1E42D9030);
    sub_1E3E89B70(qword_1EE276618, type metadata accessor for SearchTemplateView, &unk_1E42A9EB0);
    sub_1E3E892C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890D0);
  }

  return result;
}

unint64_t sub_1E3E892C4()
{
  result = qword_1EE289170;
  if (!qword_1EE289170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACF0, &qword_1E42D9090);
    v3 = sub_1E3E89650(&qword_1EE2846A0, &qword_1ECF3ACF8, &qword_1E42D9098, sub_1E3A89034);
    sub_1E3E8937C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289170);
  }

  return result;
}

unint64_t sub_1E3E8937C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE259C78[0];
  if (!qword_1EE259C78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE259C78);
  }

  return result;
}

unint64_t sub_1E3E893D0()
{
  result = qword_1EE288C28;
  if (!qword_1EE288C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC80, &qword_1E42D9020);
    sub_1E3E8945C();
    sub_1E3E89568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C28);
  }

  return result;
}

unint64_t sub_1E3E8945C()
{
  result = qword_1EE289010;
  if (!qword_1EE289010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD00, &qword_1E42D90A0);
    v3 = sub_1E3E89650(&qword_1EE24EBB8, &qword_1ECF3AD08, &qword_1E42D90A8, sub_1E37E6668);
    sub_1E3E89514(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289010);
  }

  return result;
}

unint64_t sub_1E3E89514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24D468[0];
  if (!qword_1EE24D468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE24D468);
  }

  return result;
}

unint64_t sub_1E3E89568()
{
  result = qword_1EE2890C0;
  if (!qword_1EE2890C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC70, &qword_1E42D9010);
    sub_1E3E89650(&qword_1EE274960, &qword_1ECF3AD10, &qword_1E42D90B0, sub_1E392AC84);
    sub_1E3E89B70(qword_1EE284560, type metadata accessor for ErrorTemplate, &unk_1E42A9590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890C0);
  }

  return result;
}

uint64_t sub_1E3E89650(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1E3E896CC()
{
  result = qword_1EE288AE8;
  if (!qword_1EE288AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC60, &qword_1E42D9000);
    sub_1E3E89758();
    sub_1E3E899F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AE8);
  }

  return result;
}

unint64_t sub_1E3E89758()
{
  result = qword_1EE288BF8;
  if (!qword_1EE288BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD18, &qword_1E42D90B8);
    sub_1E3E897E4();
    sub_1E3E89918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BF8);
  }

  return result;
}

unint64_t sub_1E3E897E4()
{
  result = qword_1EE288FA0;
  if (!qword_1EE288FA0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD20, &qword_1E42D90C0);
    v6 = sub_1E3E89870(v1, v2, v3);
    sub_1E3E898C4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FA0);
  }

  return result;
}

unint64_t sub_1E3E89870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23DDF8;
  if (!qword_1EE23DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23DDF8);
  }

  return result;
}

unint64_t sub_1E3E898C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE25E370;
  if (!qword_1EE25E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25E370);
  }

  return result;
}

unint64_t sub_1E3E89918()
{
  result = qword_1EE288D58;
  if (!qword_1EE288D58)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD28, &qword_1E42D90C8);
    sub_1E3E899A4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D58);
  }

  return result;
}

unint64_t sub_1E3E899A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27E318[0];
  if (!qword_1EE27E318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27E318);
  }

  return result;
}

unint64_t sub_1E3E899F8()
{
  result = qword_1EE288CB0;
  if (!qword_1EE288CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC50, &qword_1E42D8FF0);
    sub_1E3E89A84();
    sub_1E3E89BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CB0);
  }

  return result;
}

unint64_t sub_1E3E89A84()
{
  result = qword_1EE2890F0;
  if (!qword_1EE2890F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC48, &qword_1E42D8FE8);
    sub_1E3E89B70(qword_1EE279920, type metadata accessor for StackTemplateView, &unk_1E42D7A00);
    sub_1E3E89B70(qword_1EE27E3A8, type metadata accessor for ListTemplateView, &unk_1E42A2BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890F0);
  }

  return result;
}

uint64_t sub_1E3E89B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3E89BB8()
{
  result = qword_1EE2890F8;
  if (!qword_1EE2890F8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD30, &unk_1E42D90D0);
    v6 = sub_1E3E89C44(v1, v2, v3);
    sub_1E3E89C98(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890F8);
  }

  return result;
}

unint64_t sub_1E3E89C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27AA90;
  if (!qword_1EE27AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27AA90);
  }

  return result;
}

unint64_t sub_1E3E89C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE269D80;
  if (!qword_1EE269D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269D80);
  }

  return result;
}

unint64_t sub_1E3E89CEC()
{
  result = qword_1EE288C68;
  if (!qword_1EE288C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC30, &qword_1E42D8FD0);
    sub_1E3E88DB0();
    sub_1E3E88EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C68);
  }

  return result;
}

id sub_1E3E8A04C(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_1E3E8A0BC(a1, a2);
  }
}

id sub_1E3E8A0BC(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

void sub_1E3E8A0FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    sub_1E3BBA468(a1, a2);
  }
}

uint64_t sub_1E3E8A164(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E3E8A1C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3E8A22C()
{
  result = qword_1EE288A50;
  if (!qword_1EE288A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD38, &qword_1E42D90F8);
    sub_1E3E88FB0();
    sub_1E3E89CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 528) = a1;
  result = a4;
  *(v4 + 536) = a4;
  return result;
}

void *OUTLINED_FUNCTION_62_31()
{
  v2 = *(v0 + 288);

  return memcpy(v2, (v0 + 720), 0x92uLL);
}

unint64_t sub_1E3E8A2F8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache____lazy_storage___prefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache____lazy_storage___prefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](14906, 0xE200000000000000);
    v2 = 0xD000000000000018;
    *v1 = 0xD000000000000018;
    v1[1] = 0x80000001E4286B30;
  }

  return v2;
}

void sub_1E3E8A3D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  v13 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = VUISignpostLogObject(v19);
  swift_unknownObjectRetain();
  v95 = v2;
  sub_1E41FFBB4();
  v21 = sub_1E4206BA4();
  v22 = VUISignpostLogObject(v21);
  sub_1E41FFBA4();

  v23 = (*(*a1 + 464))();
  v93 = v13;
  if (!v23)
  {
    goto LABEL_38;
  }

  v24 = v23;
  v91 = v15;
  v25 = sub_1E32AE9B0(v23);
  if (!v25)
  {

    v15 = v91;
LABEL_38:
    v75 = sub_1E324FBDC();
    (*(v6 + 16))(v9, v75, v4);
    v76 = v6;

    v77 = sub_1E41FFC94();
    v78 = sub_1E4206814();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v92 = v4;
      v80 = v79;
      v81 = swift_slowAlloc();
      v99 = v81;
      *v80 = 136315138;
      v82 = sub_1E3E8A2F8();
      v84 = v18;
      v85 = sub_1E3270FC8(v82, v83, &v99);

      *(v80 + 4) = v85;
      v18 = v84;
      _os_log_impl(&dword_1E323F000, v77, v78, "%s cleanCacheIfNeeded: template children is empty, ignore it", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v76 + 8))(v9, v92);
    }

    else
    {

      (*(v6 + 8))(v9, v4);
    }

    v74 = v93;
LABEL_42:
    v86 = sub_1E4206B94();
    v87 = VUISignpostLogObject(v86);
    sub_1E41FFBA4();

    (*(v15 + 8))(v18, v74);
    return;
  }

  v26 = v25;
  v89 = v12;
  v90 = v6;
  v92 = v4;
  v88 = v18;
  v98 = v24;
  v27 = OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache_viewControllers;
  swift_beginAccess();
  v94 = v27;
  v28 = v98;

  v30 = sub_1E3E8AC5C(v29);
  v31 = 0;
  v32 = v28 & 0xC000000000000001;
  v101 = MEMORY[0x1E69E7CD0];
  v96 = v28 + 32;
  v97 = v28 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v32)
    {
      v33 = MEMORY[0x1E6911E60](v31, v28);
    }

    else
    {
      if (v31 >= *(v97 + 16))
      {
        goto LABEL_45;
      }

      v33 = *(v96 + 8 * v31);
    }

    if (__OFADD__(v31++, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    v35 = *(v33 + 24);
    if (v35 && *(v30 + 16))
    {
      v36 = *(v33 + 16);
      sub_1E4207B44();

      sub_1E4206014();
      v37 = sub_1E4207BA4();
      v38 = ~(-1 << *(v30 + 32));
      while (1)
      {
        v39 = v37 & v38;
        if (((*(v30 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
        {
          break;
        }

        v40 = (*(v30 + 48) + 16 * v39);
        if (*v40 != v36 || v35 != v40[1])
        {
          v42 = sub_1E42079A4();
          v37 = v39 + 1;
          if ((v42 & 1) == 0)
          {
            continue;
          }
        }

        sub_1E3277398(&v99, v36, v35);

        goto LABEL_21;
      }

LABEL_21:

      v28 = v98;
    }

    else
    {
    }
  }

  while (v31 != v26);

  v43 = sub_1E397015C(v101, v30);

  v44 = sub_1E324FBDC();
  v45 = v90;
  v46 = v89;
  v47 = v92;
  (*(v90 + 16))(v89, v44, v92);

  v48 = sub_1E41FFC94();
  v49 = sub_1E4206814();

  v50 = os_log_type_enabled(v48, v49);
  v97 = v43;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v51 = 136315394;
    v52 = sub_1E3E8A2F8();
    v54 = sub_1E3270FC8(v52, v53, &v99);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    v55 = sub_1E4206634();
    v57 = sub_1E3270FC8(v55, v56, &v99);

    *(v51 + 14) = v57;
    v43 = v97;
    _os_log_impl(&dword_1E323F000, v48, v49, "%s cleanCacheIfNeeded: removedIds=%s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v45 + 8))(v46, v47);
  v58 = 0;
  v59 = v43 + 56;
  v60 = 1 << *(v43 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v43 + 56);
  v63 = (v60 + 63) >> 6;
  if (v62)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v64 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v64 >= v63)
    {

      v74 = v93;
      v15 = v91;
      v18 = v88;
      goto LABEL_42;
    }

    v62 = *(v59 + 8 * v64);
    ++v58;
    if (v62)
    {
      v58 = v64;
      do
      {
LABEL_32:
        v65 = (*(v43 + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v62)))));
        v67 = *v65;
        v66 = v65[1];
        swift_beginAccess();

        v68 = sub_1E327D33C(v67, v66);
        if (v69)
        {
          v70 = v68;
          v71 = v94;
          v72 = v95;
          LODWORD(v98) = swift_isUniquelyReferenced_nonNull_native();
          v100 = *(v72 + v71);
          *(v72 + v71) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD40, &unk_1E42D9100);
          v43 = v97;
          sub_1E4207644();
          v73 = v100;

          sub_1E38DA110();
          sub_1E4207664();
          *(v72 + v71) = v73;
        }

        v62 &= v62 - 1;
        swift_endAccess();
      }

      while (v62);
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1E3E8AC5C(uint64_t a1)
{
  result = MEMORY[0x1E6910FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1E3277398(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E8ADAC()
{
  v1 = OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache_viewControllers;
  sub_1E38DA110();
  *(v0 + v1) = sub_1E4205CB4();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache____lazy_storage___prefix);
  *v2 = 0;
  v2[1] = 0;

  return sub_1E3B500B4();
}

uint64_t sub_1E3E8AE24()
{
}

uint64_t sub_1E3E8AE70()
{
  v0 = sub_1E3B4FF80();

  return v0;
}

uint64_t sub_1E3E8AEBC()
{
  v0 = sub_1E3E8AE70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E8AF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD40, &unk_1E42D9100);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1E38DA110();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

void sub_1E3E8AFEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD40, &unk_1E42D9100);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

uint64_t type metadata accessor for StackTemplateCellCache(uint64_t a1)
{
  result = qword_1EE299840;
  if (!qword_1EE299840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E8B1CC()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, aVuiMetrics);
  swift_endAccess();
  if (v1)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for Metrics(0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(v6);
    return 0;
  }
}

double sub_1E3E8B2A4(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, aVuiMetrics, a1, 1);
  swift_endAccess();

  return result;
}

uint64_t sub_1E3E8B314()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1E3E8B388@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

void sub_1E3E8B420(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_5_192();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_8_90();
    v5();
  }
}

uint64_t (*sub_1E3E8B504())()
{
  v1 = OUTLINED_FUNCTION_33_69();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_31_66(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_70();
  (*(v3 + 528))();

  OUTLINED_FUNCTION_37_63();
  OUTLINED_FUNCTION_0_272();
  v6 = sub_1E3E8C7A8(v4, v5);
  OUTLINED_FUNCTION_22_81(v6);

  *(v0 + 56) = sub_1E385A934();
  return sub_1E3E8B5F4;
}

double sub_1E3E8B620()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 32);
}

void sub_1E3E8B728(double a1)
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_5_192();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_8_90();
    v5();
  }
}

uint64_t sub_1E3E8B814()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t (*sub_1E3E8B864())()
{
  v1 = OUTLINED_FUNCTION_33_69();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_31_66(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_70();
  (*(v3 + 528))();

  OUTLINED_FUNCTION_37_63();
  OUTLINED_FUNCTION_0_272();
  v6 = sub_1E3E8C7A8(v4, v5);
  OUTLINED_FUNCTION_22_81(v6);

  *(v0 + 56) = sub_1E3BA50BC();
  return sub_1E3E8B954;
}

uint64_t sub_1E3E8B960()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_1E3E8B9D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

void sub_1E3E8BA7C(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  if (*(v1 + 40) == v2)
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_5_192();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_8_90();
    v5();
  }
}

uint64_t sub_1E3E8BB60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t (*sub_1E3E8BBB0())()
{
  v1 = OUTLINED_FUNCTION_33_69();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_31_66(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_70();
  (*(v3 + 528))();

  OUTLINED_FUNCTION_37_63();
  OUTLINED_FUNCTION_0_272();
  v6 = sub_1E3E8C7A8(v4, v5);
  OUTLINED_FUNCTION_22_81(v6);

  *(v0 + 56) = sub_1E3A0B5A0();
  return sub_1E3E8BCA0;
}

void sub_1E3E8BCAC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1E41FE904();

  free(v3);
}

uint64_t sub_1E3E8BD40()
{
  sub_1E42074B4();

  strcpy(v7, "Toast=[title: ");
  HIBYTE(v7[1]) = -18;
  if (sub_1E3E8C298())
  {
    sub_1E3C27024();
  }

  MEMORY[0x1E69109E0]();

  MEMORY[0x1E69109E0](0x776F726265796520, 0xEA0000000000203ALL);
  if (sub_1E3E8C0BC())
  {
    sub_1E3C27024();
  }

  MEMORY[0x1E69109E0]();

  v1 = MEMORY[0x1E69109E0](0x6F69746341736920, 0xEF203A656C62616ELL);
  v2 = (*(*v0 + 272))(v1);
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v4, v5);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return v7[0];
}

void *sub_1E3E8BF18()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  v2 = *(v0 + 48);
  sub_1E3E90E80(v2, *(v0 + 56));
  return v2;
}

void *sub_1E3E8BF8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E3E8BF18();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

double sub_1E3E8BFBC(id *a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1E3E90E80(*a1, v3);
  return sub_1E3E8C004(v2, v3);
}

double sub_1E3E8C004(void *a1, uint64_t a2)
{
  v2 = a2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v4 + 536))();
  sub_1E3E8D2B0(a1, v2);

  return result;
}

uint64_t sub_1E3E8C0BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 528))();
}

uint64_t sub_1E3E8C128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E8C0BC();
  *a1 = result;
  return result;
}

double sub_1E3E8C180(uint64_t a1)
{

  v4 = sub_1E3E8D174(v3, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_5_192();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_8_90();
    v7();
  }

  else
  {
    *(v1 + 64) = a1;
  }

  return result;
}

uint64_t sub_1E3E8C298()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 528))();
}

uint64_t sub_1E3E8C304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E8C298();
  *a1 = result;
  return result;
}

double sub_1E3E8C35C(uint64_t a1)
{

  v4 = sub_1E3E8D174(v3, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_5_192();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_8_90();
    v7();
  }

  else
  {
    *(v1 + 72) = a1;
  }

  return result;
}

uint64_t sub_1E3E8C474()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 528))();
}

uint64_t sub_1E3E8C4E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E8C474();
  *a1 = result;
  return result;
}

double sub_1E3E8C538(uint64_t a1)
{
  v2 = v1;
  v4 = v1[10];

  if (v4)
  {
    if (!a1)
    {

      goto LABEL_8;
    }

    type metadata accessor for ImageViewModel();
    sub_1E3E8C7A8(&qword_1EE282FC0, type metadata accessor for ImageViewModel);

    v5 = sub_1E4205E84();
  }

  else
  {
    v5 = a1 == 0;
  }

  if (v5)
  {
    v2[10] = a1;

    return result;
  }

LABEL_8:
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_23();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*v2 + 536))(v8);

  return result;
}

uint64_t sub_1E3E8C6D0()
{
  v0 = sub_1E3E8C298();
  v1 = sub_1E3E8C298();
  if (!v0)
  {
    if (!v1)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (!v1)
  {
LABEL_5:

    v4 = 0;
    return v4 & 1;
  }

  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_18_109();
  sub_1E3E8C7A8(v2, v3);
  v4 = sub_1E4205E84();

  return v4 & 1;
}

uint64_t sub_1E3E8C7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3E8C7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = swift_allocObject();
  sub_1E3E8C894(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t sub_1E3E8C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_44_49();
  v11 = v10;
  v46 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0x4008000000000000;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = -1;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 64) = 0;
  sub_1E41FE924();
  *(v11 + 16) = a10;
  v25 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    type metadata accessor for TextViewModel();
    v26 = a10[14];

    OUTLINED_FUNCTION_25();
    v31 = sub_1E3C27638(v27, v28, v29, v30, v26);
    v32.n128_f64[0] = sub_1E3E8C35C(v31);
  }

  else
  {
  }

  switch(v16)
  {
    case 1:
      v33 = sub_1E3F52F2C();
      goto LABEL_12;
    case 2:
      if (sub_1E3E8CF6C(v20, v18, 39))
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 3:
      v34 = v20;
      sub_1E3E8C004(v20, 1);
      goto LABEL_14;
    default:
      (*(*a10 + 1752))(1, v32);
      v33 = sub_1E3F52F38();
LABEL_12:
      v47 = *v33;
      v49 = v33[1];

      MEMORY[0x1E69109E0](v20, v18);
      v35 = sub_1E3E8CF6C(v47, v49, 39);

      if (v35)
      {
LABEL_13:

        sub_1E3E8C004(v36, 0);
      }

LABEL_14:
      if (v14)
      {
        type metadata accessor for TextViewModel();
        v37 = a10[13];

        OUTLINED_FUNCTION_25();
        v42 = sub_1E3C27638(v38, v39, v40, v41, v37);
        sub_1E3E8C180(v42);
      }

      if (a9)
      {
        v43 = sub_1E3F52F38();
        v48 = *v43;
        v50 = v43[1];

        MEMORY[0x1E69109E0](v46, a9);

        v44 = sub_1E3E8CF6C(v48, v50, 31);

        sub_1E3E8C538(v44);
      }

      sub_1E3E8CB54(v20, v18, v16);

      return v11;
  }
}

void sub_1E3E8CB54(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:

      break;
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_1E3E8CB94(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3E8CBE4(a1, a2);
  return v4;
}

uint64_t sub_1E3E8CBE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0x4008000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = -1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  sub_1E41FE924();
  *(v2 + 16) = a2;

  sub_1E3E8CD8C();
  if (v4 && *v4 != _TtC8VideosUI13TextViewModel)
  {

    v4 = 0;
  }

  sub_1E3E8C35C(v4);
  sub_1E3E8CD8C();
  if (v5 && *v5 != _TtC8VideosUI13TextViewModel)
  {

    v5 = 0;
  }

  sub_1E3E8C180(v5);
  sub_1E3E8CD8C();
  if (v6)
  {
    type metadata accessor for ImageViewModel();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;

      sub_1E3E8C004(v8, 0);
    }
  }

  sub_1E3E8CD8C();
  if (v9)
  {
    type metadata accessor for ImageViewModel();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {

      v9 = 0;
    }
  }

  sub_1E3E8C538(v9);

  return v2;
}

void sub_1E3E8CD8C()
{
  OUTLINED_FUNCTION_44_49();
  v1 = v0;
  OUTLINED_FUNCTION_30();
  v3 = (*(v2 + 488))();
  if (!v3 || (v5 = sub_1E373E010(v1, v3, v4), , !v5))
  {
    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 464))();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E32AE9B0(v7);
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          return;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E6911E60](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1E3742F1C(v11, v12, v13);
        sub_1E4206254();
        sub_1E4206254();
        if (v18 == v16 && v19 == v17)
        {

LABEL_20:

          return;
        }

        v15 = sub_1E42079A4();

        if (v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }
  }
}

uint64_t sub_1E3E8CF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1E38504FC())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E3C7CCAC(0);
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v8 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();
  return sub_1E3F5321C(a3, v8, 0);
}

uint64_t sub_1E3E8D054(uint64_t a1)
{
  OUTLINED_FUNCTION_0_272();
  sub_1E3E8C7A8(v1, v2);
  return sub_1E41FE8F4();
}

uint64_t sub_1E3E8D0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_272();
  sub_1E3E8C7A8(v4, v5);
  return sub_1E41FE8E4();
}

BOOL sub_1E3E8D174(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for TextViewModel();
      OUTLINED_FUNCTION_18_109();
      sub_1E3E8C7A8(v2, v3);

      v4 = sub_1E4205E84();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = a2 == 0;
  }

  return (v4 & 1) == 0;
}

uint64_t sub_1E3E8D22C()
{

  sub_1E3E8D2B0(*(v0 + 48), *(v0 + 56));

  v1 = OBJC_IVAR____TtC8VideosUI10ToastModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

double sub_1E3E8D2B0(void *result, char a2)
{
  if (a2 != -1)
  {
    return sub_1E3E8D2C8(result, a2 & 1);
  }

  return v2;
}

double sub_1E3E8D2C8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E3E8D2D4()
{
  sub_1E3E8D22C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E8D398@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070, &unk_1E42F3AD0);
  v8 = OUTLINED_FUNCTION_6_4(v7, &v97);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v10);
  v87 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v90 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008, &qword_1E42BE5E0);
  OUTLINED_FUNCTION_6_4(v15, &v95);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = type metadata accessor for ToastContent(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD60, &qword_1E42D91B8);
  OUTLINED_FUNCTION_6_4(v23, &v98);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD68, &qword_1E42D91C0);
  OUTLINED_FUNCTION_17_2(v27);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD70, &qword_1E42D91C8);
  OUTLINED_FUNCTION_6_4(v30, &v99);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v81 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD78, &qword_1E42D91D0);
  OUTLINED_FUNCTION_6_4(v34, &v100);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v81 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD80, &qword_1E42D91D8);
  OUTLINED_FUNCTION_6_4(v38, &v101);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  *v22 = a1;
  v22[1] = a2;
  v41 = a3;
  v22[2] = a3;
  v42 = *(v19 + 32);
  *(v22 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v43 = a1[2];
  v44 = *(*v43 + 328);

  v45 = sub_1E37FAED4(a2, v41);
  v44(v45);
  sub_1E4203DA4();
  while (1)
  {
    OUTLINED_FUNCTION_51_3();
    sub_1E42015C4();
    sub_1E3E8F3C4(v22, v26);
    OUTLINED_FUNCTION_141();
    v47 = memcpy(&v26[v46], __src, 0x70uLL);
    v48 = (*(*v43 + 792))(v47);
    v49 = v86;
    sub_1E3E8DC98(v48, v86);
    v50 = sub_1E325F69C(v26, &qword_1ECF3AD60);
    (*(*v43 + 552))(v94, v50);
    v51 = 0.0;
    v52 = 0.0;
    if ((v96 & 1) == 0)
    {
      v52 = sub_1E3952BE8(v94[0], v94[1], v94[2], v95);
    }

    OUTLINED_FUNCTION_141();
    v54 = &v33[v53];
    v55 = *(sub_1E4201534() + 20);
    v56 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v57 + 104))(v54 + v55, v56);
    *v54 = v52;
    v54[1] = v52;
    *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
    v58 = sub_1E329E454(v49, v33, &qword_1ECF3AD68, &qword_1E42D91C0);
    v59 = *(*a1 + 176);
    if ((v59)(v58))
    {
      v51 = 1.0;
    }

    sub_1E329E454(v33, v37, &qword_1ECF3AD70, &qword_1E42D91C8);
    OUTLINED_FUNCTION_141();
    *&v37[v60] = v51;
    v61 = (v59() & 1) != 0 ? 1.0 : 0.75;
    sub_1E4203F64();
    v63 = v62;
    v65 = v64;
    v66 = v91;
    sub_1E329E454(v37, v91, &qword_1ECF3AD78, &qword_1E42D91D0);
    v67 = v66 + *(v92 + 36);
    *v67 = v61;
    *(v67 + 8) = v61;
    *(v67 + 16) = v63;
    *(v67 + 24) = v65;
    v26 = v90;
    a1 = v90 + 104;
    v68 = *(v90 + 13);
    v69 = v88;
    v22 = v87;
    v68(v88, *MEMORY[0x1E697E718], v87);
    v37 = v89;
    v68(v89, *MEMORY[0x1E697E6C8], v22);
    sub_1E3E8C7A8(&qword_1EE289CD0, MEMORY[0x1E697E730]);
    if (sub_1E4205E34())
    {
      break;
    }

    __break(1u);
    sub_1E4206804();
    v80 = sub_1E42026D4();
    sub_1E41FFB84();
  }

  v70 = *(v26 + 4);
  v71 = v82;
  v70(v82, v69, v22);
  v72 = v84;
  v70(v71 + *(v84 + 48), v37, v22);
  v73 = v83;
  sub_1E3E8F428(v71, v83);
  v74 = *(v72 + 48);
  v75 = v81[0];
  v70(v81[0], v73, v22);
  v76 = *(v26 + 1);
  v76(v73 + v74, v22);
  sub_1E3B6C31C(v71, v73);
  v70(v75 + *(v81[1] + 36), v73 + *(v72 + 48), v22);
  v76(v73, v22);
  sub_1E3E8F498();
  OUTLINED_FUNCTION_4_130();
  sub_1E3A1558C(v77, &qword_1ECF34008);
  v78 = v91;
  sub_1E4202FA4();
  sub_1E325F69C(v75, &qword_1ECF34008);
  return sub_1E325F69C(v78, &qword_1ECF3AD80);
}

uint64_t sub_1E3E8DC98@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36[2] = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEC0, &qword_1E42D96C0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v36 - v6;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEC8, &qword_1E42D96C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v11 = sub_1E4203AF4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AED0, &qword_1E42D96D0);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - v20;
  if (sub_1E39DFFC8())
  {
    v22 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v23 + 104))(v15, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD60, &qword_1E42D91B8);
    v25 = sub_1E3E8F7A0();
    OUTLINED_FUNCTION_17_121();
    v28 = sub_1E3E8C7A8(v26, v27);
    OUTLINED_FUNCTION_3_24();
    sub_1E3E36744();
    sub_1E3E90E98(v15);
    (*(v18 + 16))(v10, v21, v16);
    swift_storeEnumTagMultiPayload();
    *&v42 = v24;
    *(&v42 + 1) = v11;
    *&v43 = v25;
    *(&v43 + 1) = v28;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    *&v42 = v24;
    *(&v42 + 1) = v25;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v18 + 8))(v21, v16);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD60, &qword_1E42D91B8);
    v31 = sub_1E3E8F7A0();
    sub_1E3A6929C(a1, 0, 0, 1, &v42, v30, v31);
    v32 = v37;
    (*(v4 + 16))(v10, v7, v37);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17_121();
    v35 = sub_1E3E8C7A8(v33, v34);
    v38 = v30;
    v39 = v11;
    v40 = v31;
    v41 = v35;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    v38 = v30;
    v39 = v31;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v4 + 8))(v7, v32);
  }
}

uint64_t sub_1E3E8E0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToastContent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E3E8FAEC(v1, &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1E3E8F3C4(&v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADB8, &qword_1E42D9568);
  sub_1E3E8FBDC();
  v8 = sub_1E4203964();
  v9 = (*(**v1 + 272))(v8);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (v9 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE08, &qword_1E42D95C0);
  v13 = (a1 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_1E37E09AC;
  v13[2] = v11;
  return result;
}

void sub_1E3E8E2AC()
{
  OUTLINED_FUNCTION_44_49();
  v182 = v1;
  v183 = v2;
  v3 = v0;
  v165 = v4;
  v163 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v161 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v171 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v173 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE10, &qword_1E42D95C8);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v142 - v16;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v143 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE18, &qword_1E42D95D0);
  OUTLINED_FUNCTION_6_4(v25, v175);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v142 - v27);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE20, &qword_1E42D95D8);
  OUTLINED_FUNCTION_0_10();
  v150 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE28, &qword_1E42D95E0);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE30, &qword_1E42D95E8);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADF8, &qword_1E42D9588);
  OUTLINED_FUNCTION_6_4(v40, &v177);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE38, &qword_1E42D95F0);
  OUTLINED_FUNCTION_0_10();
  v157 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADF0, &qword_1E42D9580);
  OUTLINED_FUNCTION_6_4(v46, &v179);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADE0, &qword_1E42D9578);
  OUTLINED_FUNCTION_6_4(v49, &v180);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v142 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADD0, &qword_1E42D9570);
  OUTLINED_FUNCTION_6_4(v53, &v181);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v142 - v55;
  v57 = *v0;
  v170 = sub_1E3E8C0BC();
  v169 = sub_1E3E8C298();
  v168 = sub_1E3E8C474();
  v58 = sub_1E3E8C0BC();
  v59 = sub_1E3E8C298();
  v60 = v59;
  if (v58 && (v61 = , v63 = sub_1E3C27528(v61, v62), v59 = , v63))
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v59 = swift_dynamicCastClass();
    v64 = v59;
    if (!v59)
    {
    }
  }

  else
  {
    v64 = 0;
  }

  v167 = v57;
  v164 = v56;
  v162 = v52;
  if (v60 && (v65 = , v67 = sub_1E3C27528(v65, v66), v59 = , v67))
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v59 = swift_dynamicCastClass();
    v68 = v59;
    if (!v59)
    {
    }

    if (!v64)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v68 = 0;
    if (!v64)
    {
      goto LABEL_14;
    }
  }

  v69 = *(*v64 + 152);

  v69(&v174, v70);

  if ((v175[8] & 1) == 0)
  {
    if (v68)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_14:
  if (v68)
  {
    (*(*v68 + 152))(v176, v59);
LABEL_17:
    v71 = *(*v68 + 152);

    v71(&v178, v72);

    OUTLINED_FUNCTION_39_55();
    goto LABEL_19;
  }

LABEL_18:

LABEL_19:
  v73 = v3;
  if (sub_1E3E8FE7C())
  {
    OUTLINED_FUNCTION_30();
    (*(v74 + 152))(&v178);

    OUTLINED_FUNCTION_39_55();
    if (v76)
    {
      v77 = v75;
    }

    else
    {
      v77 = 0.0;
    }
  }

  else
  {
    v77 = 0.0;
  }

  v78 = v145;
  v79 = sub_1E3E8C0BC();
  v81 = 2.0;
  if (v79)
  {
    if (sub_1E3C27528(v79, v80))
    {
      type metadata accessor for TextLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        v83 = *(v82 + 152);

        v83(&v178, v84);

        OUTLINED_FUNCTION_39_55();
        if (v76)
        {
          v81 = v85;
        }

        else
        {
          v81 = 2.0;
        }

        goto LABEL_32;
      }
    }
  }

LABEL_32:
  v86 = sub_1E4201B84();
  v87 = v172;
  *v172 = v86;
  *(v87 + 1) = v77;
  *(v87 + 16) = 0;
  v88 = sub_1E3E8BF18();
  v90 = v89;
  sub_1E3E8FF88();
  sub_1E3E8D2B0(v88, v90);
  *v28 = sub_1E4201D54();
  v28[1] = v81;
  *(v28 + 16) = 0;
  if (v170)
  {

    OUTLINED_FUNCTION_18();
    v91 = v142;
    sub_1E3F23370();

    v92 = v144;
    (*(v143 + 32))(v78, v91, v144);
    v93 = 0;
  }

  else
  {
    v93 = 1;
    v92 = v144;
  }

  __swift_storeEnumTagSinglePayload(v78, v93, 1, v92);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE40, &qword_1E42D95F8);
  v145 = v172 + *(v94 + 44);
  v95 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE48, &qword_1E42D9600) + 44);
  *v17 = sub_1E4201B84();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE50, &qword_1E42D9608);
  sub_1E3E90748(v73, v169, v168, &v17[*(v96 + 44)]);
  v97 = v146;
  sub_1E3294EE4(v78, v146, &qword_1ECF29210, &qword_1E4299980);
  v98 = v147;
  sub_1E3294EE4(v17, v147, &qword_1ECF3AE10, &qword_1E42D95C8);
  sub_1E3294EE4(v97, v95, &qword_1ECF29210, &qword_1E4299980);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE58, &qword_1E42D9610);
  sub_1E3294EE4(v98, v95 + *(v99 + 48), &qword_1ECF3AE10, &qword_1E42D95C8);
  sub_1E325F69C(v17, &qword_1ECF3AE10);
  sub_1E325F69C(v78, &qword_1ECF29210);
  sub_1E325F69C(v98, &qword_1ECF3AE10);
  sub_1E325F69C(v97, &qword_1ECF29210);
  v100 = v149;
  *(v28 + *(v149 + 36)) = 256;
  v101 = v154;
  sub_1E4202474();
  v102 = sub_1E3E90C3C();
  v103 = v148;
  sub_1E4203224();
  v104 = *(v173 + 8);
  v173 += 8;
  v147 = v104;
  v104(v101, v171);
  sub_1E325F69C(v28, &qword_1ECF3AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270, &unk_1E42C3980);
  v105 = v161;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1E4297BE0;
  sub_1E4201C74();
  v178 = v106;
  sub_1E3E8C7A8(&qword_1EE289298, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278, &qword_1E42C91A0);
  sub_1E3A1558C(&qword_1EE23B5D8, &qword_1ECF35278);
  v107 = v160;
  v108 = v163;
  sub_1E42072E4();
  v178 = v100;
  v179 = v102;
  swift_getOpaqueTypeConformance2();
  v109 = v153;
  v110 = v152;
  sub_1E4203294();
  (*(v105 + 8))(v107, v108);
  (*(v150 + 8))(v103, v110);
  v111 = v166;
  v112 = v151;
  sub_1E3294EE4(v166, v151, &qword_1ECF3AE30, &qword_1E42D95E8);
  v113 = v155;
  sub_1E3294EE4(v109, v155, &qword_1ECF3AE28, &qword_1E42D95E0);
  v114 = v145;
  sub_1E3294EE4(v112, v145, &qword_1ECF3AE30, &qword_1E42D95E8);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE78, &unk_1E42D9620);
  sub_1E3294EE4(v113, v114 + *(v115 + 48), &qword_1ECF3AE28, &qword_1E42D95E0);
  sub_1E325F69C(v109, &qword_1ECF3AE28);
  sub_1E325F69C(v111, &qword_1ECF3AE30);
  sub_1E325F69C(v113, &qword_1ECF3AE28);
  sub_1E325F69C(v112, &qword_1ECF3AE30);
  sub_1E4202474();
  sub_1E3A1558C(&qword_1ECF3AE00, &qword_1ECF3ADF8);
  v116 = v156;
  v117 = v172;
  sub_1E4203224();
  v147(v101, v171);
  sub_1E325F69C(v117, &qword_1ECF3ADF8);
  sub_1E4202744();
  v118 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v76)
  {
    v118 = sub_1E4202774();
  }

  sub_1E4200A54();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = v159;
  (*(v157 + 32))(v159, v116, v158);
  OUTLINED_FUNCTION_141();
  v129 = v127 + v128;
  *v129 = v118;
  *(v129 + 8) = v120;
  *(v129 + 16) = v122;
  *(v129 + 24) = v124;
  *(v129 + 32) = v126;
  *(v129 + 40) = 0;
  sub_1E4202754();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  v130 = v164;
  v131 = v162;
  if (!v76)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E329E454(v127, v131, &qword_1ECF3ADF0, &qword_1E42D9580);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v131 + v132);
  sub_1E4202764();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v76)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v134 = *(v133 + 152);

  v134(v176, v135);

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E329E454(v131, v130, &qword_1ECF3ADE0, &qword_1E42D9578);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v130 + v136);
  sub_1E4202784();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v76)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v138 = *(v137 + 152);

  v138(&v178, v139);

  OUTLINED_FUNCTION_39_55();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v140 = v165;
  sub_1E329E454(v130, v165, &qword_1ECF3ADD0, &qword_1E42D9570);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADB8, &qword_1E42D9568);
  OUTLINED_FUNCTION_32_4(v140 + *(v141 + 36));
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3E8F3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E8F428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070, &unk_1E42F3AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3E8F498()
{
  result = qword_1ECF3AD88;
  if (!qword_1ECF3AD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD80, &qword_1E42D91D8);
    sub_1E3E8F524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AD88);
  }

  return result;
}

unint64_t sub_1E3E8F524()
{
  result = qword_1ECF3AD90;
  if (!qword_1ECF3AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD78, &qword_1E42D91D0);
    sub_1E3E8F5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AD90);
  }

  return result;
}

unint64_t sub_1E3E8F5B0()
{
  result = qword_1ECF3AD98;
  if (!qword_1ECF3AD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD70, &qword_1E42D91C8);
    sub_1E3E8F668();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AD98);
  }

  return result;
}

unint64_t sub_1E3E8F668()
{
  result = qword_1ECF3ADA0;
  if (!qword_1ECF3ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD68, &qword_1E42D91C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD60, &qword_1E42D91B8);
    sub_1E4203AF4();
    sub_1E3E8F7A0();
    sub_1E3E8C7A8(&qword_1ECF3ADB0, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADA0);
  }

  return result;
}

unint64_t sub_1E3E8F7A0()
{
  result = qword_1ECF3ADA8;
  if (!qword_1ECF3ADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD60, &qword_1E42D91B8);
    sub_1E3E8F82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADA8);
  }

  return result;
}

unint64_t sub_1E3E8F82C()
{
  result = qword_1ECF66BA8[0];
  if (!qword_1ECF66BA8[0])
  {
    type metadata accessor for ToastContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66BA8);
  }

  return result;
}

uint64_t sub_1E3E8F8C0(uint64_t a1)
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

uint64_t sub_1E3E8F9AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1E3E8FA34(uint64_t a1)
{
  type metadata accessor for ToastModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E381ECE4(319);
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

uint64_t sub_1E3E8FAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E8FB50()
{
  v1 = type metadata accessor for ToastContent(0);
  result = OUTLINED_FUNCTION_17_2(v1);
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8);
  if (v4)
  {
    return v4(result);
  }

  return result;
}

unint64_t sub_1E3E8FBDC()
{
  result = qword_1ECF3ADC0;
  if (!qword_1ECF3ADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADB8, &qword_1E42D9568);
    sub_1E3E8FC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADC0);
  }

  return result;
}

unint64_t sub_1E3E8FC68()
{
  result = qword_1ECF3ADC8;
  if (!qword_1ECF3ADC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADD0, &qword_1E42D9570);
    sub_1E3E8FCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADC8);
  }

  return result;
}

unint64_t sub_1E3E8FCF4()
{
  result = qword_1ECF3ADD8;
  if (!qword_1ECF3ADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADE0, &qword_1E42D9578);
    sub_1E3E8FD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADD8);
  }

  return result;
}

unint64_t sub_1E3E8FD80()
{
  result = qword_1ECF3ADE8;
  if (!qword_1ECF3ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADF0, &qword_1E42D9580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADF8, &qword_1E42D9588);
    sub_1E3A1558C(&qword_1ECF3AE00, &qword_1ECF3ADF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADE8);
  }

  return result;
}

uint64_t sub_1E3E8FE7C()
{
  v1 = *v0;
  v2 = sub_1E3E8BF18();
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  if ((v3 & 1) != 0 || !(*(*v2 + 392))(v2))
  {
    goto LABEL_6;
  }

  type metadata accessor for ImageLayout();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

LABEL_6:
    v7 = *(**(v1 + 16) + 1776);

    v6 = v7(v8);
  }

  sub_1E3E8D2B0(v4, v5);
  return v6;
}

void sub_1E3E8FF88()
{
  OUTLINED_FUNCTION_44_49();
  v80 = v0;
  v81 = v1;
  v3 = v2;
  v4 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE88, &qword_1E42D9640);
  OUTLINED_FUNCTION_0_10();
  v68 = v12;
  v69 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v67 = v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE90, &qword_1E42D9648);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v66 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v70 = v18;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE98, &qword_1E42D9650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v73 = v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEA0, &qword_1E42D9658);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v72 = v28;
  v29 = sub_1E3E8BF18();
  if (v30 == 0xFF)
  {
    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }

  else
  {
    v31 = v29;
    v65 = v26;
    v32 = v30;
    if (v30)
    {
      v64 = v30;
      sub_1E3E90CF4(v29, 1);
      v63 = v31;
      sub_1E42037B4();
      (*(v6 + 104))(v10, *MEMORY[0x1E6981630], v4);
      v33 = sub_1E4203824();

      (*(v6 + 8))(v10, v4);
      if (sub_1E3E8FE7C())
      {
        OUTLINED_FUNCTION_30();
        (*(v34 + 200))();
      }

      v35 = v67;
      sub_1E4203DA4();
      OUTLINED_FUNCTION_51_3();
      sub_1E42015C4();
      v78[118] = 1;
      memcpy(&v78[6], v79, 0x70uLL);
      v76[0] = v33;
      v76[1] = 0;
      LOWORD(v76[2]) = 1;
      memcpy(&v76[2] + 2, v78, 0x76uLL);
      sub_1E3E8FE7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEA8, &unk_1E42D9660);
      sub_1E3E90D00();
      sub_1E39B8C98();

      memcpy(v77, v76, 0x88uLL);
      sub_1E325F69C(v77, &qword_1ECF3AEA8);
      v49 = 4.0;
      if (sub_1E3E8FE7C())
      {
        OUTLINED_FUNCTION_30();
        (*(v50 + 552))(v76);
        v51 = *v76;
        v52 = *&v76[1];
        v53 = *&v76[2];
        v54 = *&v76[3];

        v48 = v65;
        v46 = v72;
        if ((v76[4] & 1) == 0)
        {
          v49 = sub_1E3952BE8(v51, v52, v53, v54);
        }
      }

      else
      {
        v48 = v65;
        v46 = v72;
      }

      v55 = v66;
      v56 = (v66 + *(v75 + 36));
      v57 = *(sub_1E4201534() + 20);
      v58 = *MEMORY[0x1E697F468];
      sub_1E4201C44();
      OUTLINED_FUNCTION_2();
      (*(v59 + 104))(v56 + v57, v58);
      *v56 = v49;
      v56[1] = v49;
      *(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
      (*(v68 + 32))(v55, v35, v69);
      v60 = v55;
      v61 = v70;
      sub_1E329E454(v60, v70, &qword_1ECF3AE90, &qword_1E42D9648);
      sub_1E3294EE4(v61, v73, &qword_1ECF3AE90, &qword_1E42D9648);
      v62 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_19_0(v62);
      sub_1E3E90D8C();
      sub_1E4201F44();
      sub_1E3E8D2B0(v63, v64);
      sub_1E325F69C(v61, &qword_1ECF3AE90);
    }

    else
    {
      sub_1E3EB9BB4(v77);
      v41 = v31;
      v42 = sub_1E3E8FE7C();
      v43 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v41, v77, v42, v43 & 1, 0, 0, v25);

      sub_1E375C31C(v77);
      v44 = v74;
      (*(v22 + 16))(v73, v25, v74);
      v45 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_19_0(v45);
      sub_1E3E90D8C();
      v46 = v72;
      sub_1E4201F44();
      v47 = sub_1E3E8D2B0(v41, v32);
      (*(v22 + 8))(v25, v44, v47);
      v48 = v65;
    }

    sub_1E329E454(v46, v3, &qword_1ECF3AEA0, &qword_1E42D9658);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v48);
    OUTLINED_FUNCTION_20_0();
  }
}

uint64_t sub_1E3E90748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v32 - v27;
  if (a2)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v15 + 32))(v25, v18, v13);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v29, 1, v13);
  sub_1E329E454(v25, v28, &qword_1ECF29210, &qword_1E4299980);
  sub_1E3E90A4C(v33, v12);
  sub_1E3294EE4(v28, v22, &qword_1ECF29210, &qword_1E4299980);
  sub_1E3294EE4(v12, v9, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E3294EE4(v22, a4, &qword_1ECF29210, &qword_1E4299980);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE80, &unk_1E42D9630);
  sub_1E3294EE4(v9, a4 + *(v30 + 48), &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E325F69C(v12, &qword_1ECF29938);
  sub_1E325F69C(v28, &qword_1ECF29210);
  sub_1E325F69C(v9, &qword_1ECF29938);
  return sub_1E325F69C(v22, &qword_1ECF29210);
}

uint64_t sub_1E3E90A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  if (!a1 || (OUTLINED_FUNCTION_8(), !(*(v10 + 392))()))
  {
  }

  type metadata accessor for ImageLayout();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    if (a1)
    {
LABEL_6:

      sub_1E3EB9BB4(v14);
      v12 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(a1, v14, v11, v12 & 1, 0, 0, v9);

      sub_1E375C31C(v14);
      (*(v6 + 32))(a2, v9, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    }
  }

  else
  {

    if (a1)
    {
      goto LABEL_6;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

unint64_t sub_1E3E90C3C()
{
  result = qword_1ECF3AE60;
  if (!qword_1ECF3AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AE18, &qword_1E42D95D0);
    sub_1E3A1558C(&qword_1ECF3AE68, &unk_1ECF3AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AE60);
  }

  return result;
}

id sub_1E3E90CF4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1E3E90D00()
{
  result = qword_1ECF3AEB0;
  if (!qword_1ECF3AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEA8, &unk_1E42D9660);
    sub_1E37AE314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AEB0);
  }

  return result;
}

unint64_t sub_1E3E90D8C()
{
  result = qword_1ECF3AEB8;
  if (!qword_1ECF3AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AE90, &qword_1E42D9648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEA8, &unk_1E42D9660);
    sub_1E3E90D00();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AEB8);
  }

  return result;
}

id sub_1E3E90E80(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1E3E90CF4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1E3E90E98(uint64_t a1)
{
  v2 = sub_1E4203AF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3E90EF4()
{
  v0 = OUTLINED_FUNCTION_43_56();
  *(v1 + 64) = v0;
}

void sub_1E3E90F2C()
{
  v0 = OUTLINED_FUNCTION_43_56();
  *(v1 + 80) = v0;
}

void sub_1E3E90F64()
{
  v1 = OUTLINED_FUNCTION_43_56();
  v3 = *(v2 + 48);
  v4 = *(v0 + 32);
  *(v2 + 48) = v1;
  v5 = *(v2 + 56);
  *(v2 + 56) = v4;
  sub_1E3E90E80(v1, v4);
  sub_1E3E8D2B0(v3, v5);
}

void sub_1E3E90FB4()
{
  v0 = OUTLINED_FUNCTION_43_56();
  *(v1 + 72) = v0;
}

unint64_t sub_1E3E90FEC()
{
  result = qword_1ECF3AED8;
  if (!qword_1ECF3AED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AE08, &qword_1E42D95C0);
    sub_1E3A1558C(&qword_1ECF3AEE0, &unk_1ECF3AEE8);
    sub_1E3A1558C(&qword_1EE288760, &qword_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AED8);
  }

  return result;
}

unint64_t sub_1E3E910D0()
{
  result = qword_1EE27D1D8[0];
  if (!qword_1EE27D1D8[0])
  {
    type metadata accessor for SearchInteractor(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27D1D8);
  }

  return result;
}

__n128 sub_1E3E91128@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SearchInteractor(0);
  sub_1E3E910D0();
  v9 = sub_1E42010C4();
  v11 = v10;
  memcpy(__dst, a4, sizeof(__dst));
  memcpy(&__src[5], a4, 0xB2uLL);
  *v19 = *(a4 + 179);
  sub_1E375C1CC(a4, &v17);
  *a5 = v9;
  *(a5 + 8) = v11;
  memcpy((a5 + 16), __dst, 0xC3uLL);
  memcpy((a5 + 211), __src, 0xB7uLL);
  *(a5 + 394) = 1;
  *(a5 + 395) = *v19;
  *(a5 + 408) = *&v19[13];
  __asm { FMOV            V0.2D, #16.0 }

  *(a5 + 416) = result;
  *(a5 + 432) = a2;
  *(a5 + 440) = a3;
  return result;
}

uint64_t sub_1E3E91228@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  sub_1E4202434();
  OUTLINED_FUNCTION_0_10();
  v51 = v10;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4201134();
  OUTLINED_FUNCTION_0_10();
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEF0, &qword_1E42D9740);
  OUTLINED_FUNCTION_0_10();
  v43 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEF8, &qword_1E42D9748);
  OUTLINED_FUNCTION_0_10();
  v46 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_26_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF00, &qword_1E42D9750);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31_2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF08, &qword_1E42D9758);
  OUTLINED_FUNCTION_0_10();
  v49 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v48 = &v43 - v28;
  v53 = v2;
  v55 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF10, &qword_1E42D9760);
  sub_1E3E91880();
  sub_1E4202AE4();
  sub_1E4201124();
  v29 = sub_1E32752B0(&qword_1ECF3AF40, &qword_1ECF3AEF0, &qword_1E42D9740, MEMORY[0x1E697CD20]);
  v30 = MEMORY[0x1E697C0D8];
  sub_1E42035B4();
  (*(v44 + 8))(v16, v12);
  (*(v43 + 8))(v21, v17);
  sub_1E4202734();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_3();
  v56 = v17;
  v57 = v12;
  v58 = v29;
  v59 = v30;
  v31 = v47;
  swift_getOpaqueTypeConformance2();
  v32 = v45;
  sub_1E4202E24();
  (*(v46 + 8))(v3, v32);
  KeyPath = swift_getKeyPath();
  v34 = v4 + *(v24 + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  sub_1E4201F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB88, &unk_1E42D97B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v36 = sub_1E4202704();
  *(inited + 32) = v36;
  v37 = sub_1E42026E4();
  *(inited + 33) = v37;
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v36)
  {
    sub_1E42026F4();
  }

  sub_1E42026F4();
  if (sub_1E42026F4() != v37)
  {
    sub_1E42026F4();
  }

  sub_1E3E92718();
  v38 = v48;
  sub_1E4203084();
  (*(v51 + 8))(v31, v52);
  sub_1E325F6F0(v4, &qword_1ECF3AF00, &qword_1E42D9750);
  v39 = sub_1E4202744();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v40 = v54;
  (*(v49 + 32))(v54, v38, v50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF60, &qword_1E42D97C0);
  v42 = v40 + *(result + 36);
  *v42 = v39;
  *(v42 + 8) = v5;
  *(v42 + 16) = v6;
  *(v42 + 24) = v7;
  *(v42 + 32) = v8;
  *(v42 + 40) = 0;
  return result;
}

unint64_t sub_1E3E91880()
{
  result = qword_1ECF3AF18;
  if (!qword_1ECF3AF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF10, &qword_1E42D9760);
    sub_1E3E91938();
    sub_1E32752B0(&qword_1ECF2D7B8, &qword_1ECF2D7C0, &qword_1E42A9FD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF18);
  }

  return result;
}

unint64_t sub_1E3E91938()
{
  result = qword_1ECF3AF20;
  if (!qword_1ECF3AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF28, &qword_1E42D9768);
    sub_1E32752B0(&qword_1ECF3AF30, &qword_1ECF3AF38, &unk_1E42D9770, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF20);
  }

  return result;
}

void sub_1E3E919E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFF0, &unk_1E42D98C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFE8, &qword_1E42D98B8);
  OUTLINED_FUNCTION_0_10();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  sub_1E3E91BE8();
  sub_1E3E91D0C();
  v41 = *(v33 + 16);
  v41(v37, v40, v31);
  sub_1E32D943C(v30, v27);
  v41(v23, v37, v31);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B020, &qword_1E42D9928);
  sub_1E32D943C(v27, &v23[*(v42 + 48)]);
  sub_1E325F6F0(v30, &qword_1ECF3AFF0, &unk_1E42D98C0);
  v43 = *(v33 + 8);
  v43(v40, v31);
  sub_1E325F6F0(v27, &qword_1ECF3AFF0, &unk_1E42D98C0);
  v43(v37, v31);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E91BE8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!sub_1E32AE9B0(v1))
  {
    goto LABEL_5;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v1);
    goto LABEL_5;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:

    MEMORY[0x1EEE9AC00](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF68, &qword_1E42D97C8);
    sub_1E3E92A60();
    sub_1E4203BB4();

    return;
  }

  __break(1u);
}

void sub_1E3E91D0C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF98, &qword_1E42D97E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFA0, &qword_1E42D97E8);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_2();
  v10 = (*(**(v0 + 8) + 600))();

  swift_beginAccess();
  v11 = *(v10 + 96);

  if (!v11)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  v13 = (*(v12 + 1040))();
  if (!v13 || (v14 = sub_1E32AE9B0(v13), v15 = , !v14))
  {

LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v17[0] = v17;
  MEMORY[0x1EEE9AC00](v15);
  v17[-2] = v11;
  v17[-1] = v2;
  sub_1E3E92378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFA8, &qword_1E42D97F0);
  sub_1E3E92E18();
  sub_1E3E92F88();
  sub_1E4203B94();

  (*(v8 + 32))(v4, v1, v6);
  v16 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v4, v16, 1, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E91F90()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF88, &qword_1E42D97D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B010, &qword_1E42D9918);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B018, &qword_1E42D9920) + 44);

  sub_1E404AABC(v10, (v1 + v9));
  sub_1E4200D14();
  sub_1E32752B0(&qword_1ECF3AF90, &qword_1ECF3AF88, &qword_1E42D97D8, MEMORY[0x1E69817F8]);
  sub_1E4203074();
  sub_1E3E93278(v1);
  sub_1E4203DA4();
  sub_1E42015C4();
  (*(v7 + 32))(v3, v0, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF80, &qword_1E42D97D0);
  memcpy((v3 + *(v11 + 36)), v12, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E92198(uint64_t *a1, uint64_t a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB98, &unk_1E429EBD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = *a1;
  if ((*(**a1 + 392))() && (OUTLINED_FUNCTION_8(), (*(v12 + 152))(__dst), (__dst[4] & 1) == 0))
  {
    v16.n128_u64[0] = __dst[3];
    v15.n128_u64[0] = __dst[2];
    v14.n128_u64[0] = __dst[1];
    v13.n128_u64[0] = __dst[0];
    j_nullsub_1(v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  if ((TVAppFeature.isEnabled.getter(10, v17, v18) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_3();
  }

  memcpy(__dst, (a2 + 216), 0xC3uLL);
  sub_1E40EA03C(v11, __dst, 0, 0, v2);
  v19 = sub_1E4202734();
  v20 = v2 + *(v9 + 36);
  *v20 = v19;
  *(v20 + 8) = v3;
  *(v20 + 16) = v4;
  *(v20 + 24) = v5;
  *(v20 + 32) = v6;
  *(v20 + 40) = 0;
  sub_1E4200D14();
  sub_1E37E6E78();
  sub_1E4203074();
  return sub_1E325F6F0(v2, &qword_1ECF2AB98, &unk_1E429EBD0);
}

void sub_1E3E92378()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v37 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CBE0, &unk_1E42A7B80);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFC0, &qword_1E42D97F8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  *v16 = sub_1E4201D44();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFF8, &qword_1E42D98D0) + 44)];
  v18 = *(*v1 + 968);
  v35[1] = *v1 + 968;
  v36 = v18;
  v19 = v18();
  sub_1E39E19A0(v19, 0, v12);

  v20 = *(v5 + 16);
  v20(v9, v12, v3);
  v20(v17, v9, v3);
  v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B000, &qword_1E42D98D8) + 48)];
  *v21 = 0;
  v21[8] = 1;
  v22 = *(v5 + 8);
  v22(v12, v3);
  v22(v9, v3);
  sub_1E4203DA4();
  v23 = sub_1E4200D94();
  v24 = &v16[*(v13 + 44)];
  v25 = v39;
  *v24 = v38;
  *(v24 + 1) = v25;
  *(v24 + 2) = v40;
  v26 = (v36)(v23);
  if (!v26 || (v27 = (*(*v26 + 392))(), , !v27) || (OUTLINED_FUNCTION_8(), v29 = (*(v28 + 744))(), , !v29))
  {
    v30 = *sub_1E3E60480();
  }

  v31 = sub_1E4203644();
  v32 = sub_1E4202734();
  v33 = v37;
  sub_1E32D9378(v16, v37);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF98, &qword_1E42D97E0) + 36);
  *v34 = v31;
  *(v34 + 8) = v32;
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3E92718()
{
  result = qword_1ECF3AF48;
  if (!qword_1ECF3AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF00, &qword_1E42D9750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEF8, &qword_1E42D9748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEF0, &qword_1E42D9740);
    sub_1E4201134();
    sub_1E32752B0(&qword_1ECF3AF40, &qword_1ECF3AEF0, &qword_1E42D9740, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF3AF50, &qword_1ECF3AF58, &qword_1E42EAF50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF48);
  }

  return result;
}

uint64_t sub_1E3E9289C()
{
  if (!*(v0 + 16))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1040))();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    goto LABEL_10;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E6911E60](0, v3);
LABEL_7:

    v7 = (*(*v5 + 872))(v6);

    if (v7)
    {
LABEL_11:
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF80, &qword_1E42D97D0);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v8, &unk_1ECF2C790, &qword_1E42996A0, v9);
      sub_1E375BEF4();
      sub_1E3E92AE4();
      return sub_1E4203B34();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3E92A60()
{
  result = qword_1ECF3AF70;
  if (!qword_1ECF3AF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF68, &qword_1E42D97C8);
    sub_1E3E92AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF70);
  }

  return result;
}

unint64_t sub_1E3E92AE4()
{
  result = qword_1ECF3AF78;
  if (!qword_1ECF3AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF80, &qword_1E42D97D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF88, &qword_1E42D97D8);
    sub_1E32752B0(&qword_1ECF3AF90, &qword_1ECF3AF88, &qword_1E42D97D8, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF78);
  }

  return result;
}

void sub_1E3E92BE0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = *(v0 + 24);
  v2 = (*(**(v0 + 16) + 1040))();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  if (!sub_1E32AE9B0(v2))
  {

    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6911E60](0, v3);
LABEL_6:

    v6 = (*(*v4 + 872))(v5);

    if (v6)
    {
LABEL_10:
      v12[56] = v6;
      swift_getKeyPath();
      v7 = swift_allocObject();
      memcpy((v7 + 16), v1, 0x1C0uLL);
      sub_1E3E93240(v1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B008, &unk_1E42D9908);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v8, &unk_1ECF2C790, &qword_1E42996A0, v9);
      sub_1E375BEF4();
      v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB98, &unk_1E429EBD0);
      v11 = sub_1E37E6E78();
      v12[0] = v10;
      v12[1] = v11;
      swift_getOpaqueTypeConformance2();
      sub_1E4203B34();
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_9:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);

    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1E3E92E18()
{
  result = qword_1ECF3AFB0;
  if (!qword_1ECF3AFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF98, &qword_1E42D97E0);
    sub_1E3E92ED0();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8, &qword_1E42AE9C0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFB0);
  }

  return result;
}

unint64_t sub_1E3E92ED0()
{
  result = qword_1ECF3AFB8;
  if (!qword_1ECF3AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AFC0, &qword_1E42D97F8);
    sub_1E32752B0(&qword_1ECF3AFC8, &qword_1ECF3AFD0, &qword_1E42D9800, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFB8);
  }

  return result;
}

unint64_t sub_1E3E92F88()
{
  result = qword_1ECF3AFD8;
  if (!qword_1ECF3AFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AFA8, &qword_1E42D97F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB98, &unk_1E429EBD0);
    sub_1E37E6E78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFD8);
  }

  return result;
}

uint64_t sub_1E3E9306C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 448))
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

uint64_t sub_1E3E930AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 440) = 0;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 448) = 1;
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

    *(result + 448) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3E93170()
{
  result = qword_1ECF3AFE0;
  if (!qword_1ECF3AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF60, &qword_1E42D97C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF00, &qword_1E42D9750);
    sub_1E3E92718();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFE0);
  }

  return result;
}

uint64_t sub_1E3E93278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF88, &qword_1E42D97D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3E93310(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportStatsViewModel(0);
  OUTLINED_FUNCTION_3_207();
  sub_1E3E95884(v4);

  v5 = sub_1E42010C4();
  if (!a2)
  {
    v6 = (*(*a1 + 392))();
    if (!v6)
    {
LABEL_5:
      type metadata accessor for SportStatsLayout();
      sub_1E3DA3A40();
      goto LABEL_6;
    }

    if (*v6 != _TtC8VideosUI16SportStatsLayout)
    {

      goto LABEL_5;
    }
  }

LABEL_6:
  type metadata accessor for SportStatsLayout();
  OUTLINED_FUNCTION_0_273();
  sub_1E3E95884(v7);
  sub_1E42010C4();

  return v5;
}

uint64_t sub_1E3E93480@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v77 = a2;
  v80 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B030, &unk_1E42D9950);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v70 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v72 = v7;
  v73 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v70 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B038, &qword_1E42D9960);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v70 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B040, &qword_1E42D9968);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v75 = v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B048, &qword_1E42D9970);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B050, &qword_1E42D9978);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B058, &qword_1E42D9980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B060, &qword_1E42D9988);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v70 - v24;
  OUTLINED_FUNCTION_36();
  if ((*(v26 + 888))())
  {
    v82 = 0;
    v27 = sub_1E42038E4();
    sub_1E3E94094(v27, v28, v29);
    View.accessibilityIdentifier(key:location:)();

    v30 = sub_1E4203DA4();
    v32 = v31;
    type metadata accessor for SportStatsLayout();
    OUTLINED_FUNCTION_0_273();
    sub_1E3E95884(v33);
    v34 = sub_1E42010C4();
    v35 = &v25[*(v22 + 36)];
    *v35 = v34;
    v35[1] = v36;
    v35[2] = v30;
    v35[3] = v32;
    v37 = &qword_1ECF3B060;
    OUTLINED_FUNCTION_13_148();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93FDC();
    sub_1E3E9413C();
    sub_1E4201F44();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93F50();
    OUTLINED_FUNCTION_2_206();
    sub_1E3E942CC(v38);
    sub_1E4201F44();
    sub_1E325F69C(v21, &qword_1ECF3B058);
    v39 = v25;
LABEL_9:
    v65 = v37;
    return sub_1E325F69C(v39, v65);
  }

  v70[0] = v17;
  v70[1] = v22;
  v40 = v77;
  v71 = v21;
  OUTLINED_FUNCTION_8();
  if ((*(v41 + 936))())
  {
    OUTLINED_FUNCTION_8();
    v43 = 1;
    if ((*(v42 + 1080))())
    {
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      swift_getOpaqueTypeConformance2();
      v44 = v73;
      View.accessibilityIdentifier(key:location:)();
      (*(v72 + 8))(v10, v44);
      v45 = sub_1E4202734();
      v46 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B098, &qword_1E42D9990) + 36)];
      *v46 = v45;
      *(v46 + 8) = 0u;
      *(v46 + 24) = 0u;
      v46[40] = 1;

      v47 = sub_1E4203DA4();
      v49 = v48;
      type metadata accessor for SportStatsLayout();
      OUTLINED_FUNCTION_0_273();
      sub_1E3E95884(v50);
      v51 = sub_1E42010C4();
      v53 = v52;

      v55 = v74;
      v54 = v75;
      v56 = &v13[*(v74 + 36)];
      *v56 = v51;
      v56[1] = v53;
      v56[2] = v47;
      v56[3] = v49;
      sub_1E32D94A0();
      v43 = 0;
    }

    else
    {
      v55 = v74;
      v54 = v75;
    }

    __swift_storeEnumTagSinglePayload(v54, v43, 1, v55);
    v66 = v54;
    v37 = &qword_1ECF3B040;
    OUTLINED_FUNCTION_13_148();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93FDC();
    sub_1E3E9413C();
    v67 = v71;
    sub_1E4201F44();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93F50();
    OUTLINED_FUNCTION_2_206();
    sub_1E3E942CC(v68);
    sub_1E4201F44();
    sub_1E325F69C(v67, &qword_1ECF3B058);
    v39 = v66;
    goto LABEL_9;
  }

  sub_1E3E93CC0(v40, v5);

  v57 = sub_1E4203D84();
  v59 = v58;
  type metadata accessor for SportStatsLayout();
  OUTLINED_FUNCTION_0_273();
  sub_1E3E95884(v60);
  v61 = sub_1E42010C4();
  v62 = &v5[*(v81 + 36)];
  *v62 = v61;
  v62[1] = v63;
  v62[2] = v57;
  v62[3] = v59;
  sub_1E378249C();
  swift_storeEnumTagMultiPayload();
  sub_1E3E93F50();
  OUTLINED_FUNCTION_2_206();
  sub_1E3E942CC(v64);
  sub_1E4201F44();
  v39 = v5;
  v65 = &qword_1ECF3B030;
  return sub_1E325F69C(v39, v65);
}

uint64_t sub_1E3E93CC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B188, &unk_1E42D9BC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  OUTLINED_FUNCTION_36();
  if ((*(v11 + 1008))())
  {
    OUTLINED_FUNCTION_15_133();
    sub_1E382A9B4(v12, v24, *(a1 + 104), v10);
    v13 = OUTLINED_FUNCTION_18_110();
    v14(v13);
    v15 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_18_2(v15);
    OUTLINED_FUNCTION_14_141();
LABEL_5:

    (*(v7 + 8))(v10, v5);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D0, &qword_1E42D99A8);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v21);
  }

  OUTLINED_FUNCTION_8();
  if ((*(v16 + 984))())
  {
    OUTLINED_FUNCTION_15_133();
    sub_1E382A9B4(v17, v24, *(a1 + 112), v10);
    v18 = OUTLINED_FUNCTION_18_110();
    v19(v18);
    v20 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_18_2(v20);
    OUTLINED_FUNCTION_14_141();
    goto LABEL_5;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D0, &qword_1E42D99A8);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v23);
}

unint64_t sub_1E3E93F50()
{
  result = qword_1ECF3B068;
  if (!qword_1ECF3B068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B058, &qword_1E42D9980);
    sub_1E3E93FDC();
    sub_1E3E9413C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B068);
  }

  return result;
}

unint64_t sub_1E3E93FDC()
{
  result = qword_1ECF3B070;
  if (!qword_1ECF3B070)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B060, &qword_1E42D9988);
    sub_1E3E94094(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3E940E8(OpaqueTypeConformance2, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B070);
  }

  return result;
}

unint64_t sub_1E3E94094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B078;
  if (!qword_1ECF3B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B078);
  }

  return result;
}

unint64_t sub_1E3E940E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF66F20[0];
  if (!qword_1ECF66F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66F20);
  }

  return result;
}

unint64_t sub_1E3E9413C()
{
  result = qword_1ECF3B080;
  if (!qword_1ECF3B080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B040, &qword_1E42D9968);
    sub_1E3E942CC(&unk_1ECF3B088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B080);
  }

  return result;
}

unint64_t sub_1E3E941EC()
{
  result = qword_1ECF3B090;
  if (!qword_1ECF3B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B098, &qword_1E42D9990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B090);
  }

  return result;
}

unint64_t sub_1E3E942CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v8 = v5();
    v18 = sub_1E3E940E8(v8, v9, v10);
    result = OUTLINED_FUNCTION_16_7(v18, v11, v12, v13, v14, v15, v16, v17, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3E9432C()
{
  result = qword_1ECF3B0A8;
  if (!qword_1ECF3B0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0B0, &qword_1E42D9998);
    sub_1E3E943B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B0A8);
  }

  return result;
}

unint64_t sub_1E3E943B0()
{
  result = qword_1ECF3B0B8;
  if (!qword_1ECF3B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0C0, &qword_1E42D99A0);
    sub_1E3E94434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B0B8);
  }

  return result;
}

unint64_t sub_1E3E94434()
{
  result = qword_1ECF3B0C8;
  if (!qword_1ECF3B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0D0, &qword_1E42D99A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B0C8);
  }

  return result;
}

uint64_t sub_1E3E944DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a4;
  v97 = a3;
  v105 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B138, &qword_1E42D9B90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v91 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B140, &qword_1E42D9B98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v91 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B148, &qword_1E42D9BA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17_3(v91 - v26);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B150, &qword_1E42D9BA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B158, &qword_1E42D9BB0);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v91 - v32;
  TVAppFeature.isEnabled.getter(10, v34, v35);
  OUTLINED_FUNCTION_8();
  v37 = *(v36 + 176);
  if (v38)
  {
    v37(&v112);
    v95 = a5;
    v94 = v7;
    v93 = v30;
    v92 = v33;
    if (v116)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v41.n128_u64[0] = v114;
      v42.n128_u64[0] = v115;
      v39.n128_u64[0] = v112;
      v40.n128_u64[0] = v113;
      j_nullsub_1(v39, v40, v41, v42);
    }

    OUTLINED_FUNCTION_41_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B160, &qword_1E42D9BB8);
    OUTLINED_FUNCTION_2();
    v48 = v104;
    (*(v47 + 16))(v104, v105);
    OUTLINED_FUNCTION_11_148(v48 + *(v21 + 36));
    v50 = *(v49 + 200);
    v51 = v50();
    v53 = v52;
    v54 = v50();
    v56 = v55;
    OUTLINED_FUNCTION_36();
    v58 = *(v57 + 304);
    v105 = v58();
    v60 = v59;
    v61 = v58();
    v63 = *&v51;
    if (v53)
    {
      v63 = -INFINITY;
    }

    v64 = *&v54;
    if (v56)
    {
      v64 = v63;
    }

    if (v63 > v64)
    {
      goto LABEL_17;
    }

    v65 = *&v105;
    if (v60)
    {
      v65 = -INFINITY;
    }

    v66 = *&v61;
    if (v62)
    {
      v66 = v65;
    }

    if (v65 > v66)
    {
LABEL_17:
      v91[3] = v60;
      sub_1E4206804();
      v67 = v20;
      v68 = sub_1E42026D4();
      sub_1E41FFB84();

      v20 = v67;
    }

    sub_1E42015C4();
    v69 = v99;
    sub_1E3782004();
    memcpy((v69 + *(v106 + 36)), __src, 0x70uLL);
    swift_beginAccess();
    v70 = *(a2 + 120);
    v71 = v98;
    sub_1E4201304();
    v72 = sub_1E42012F4();
    if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
    {
      (*(*(v72 - 8) + 104))(v20, *MEMORY[0x1E697E6E0], v72);
      if (__swift_getEnumTagSinglePayload(v71, 1, v72) != 1)
      {
        sub_1E325F69C(v71, &qword_1ECF2A250);
      }
    }

    else
    {
      (*(*(v72 - 8) + 32))(v20, v71, v72);
    }

    sub_1E3E95884(&qword_1EE289CC8);
    result = sub_1E4205E84();
    if (result)
    {
      v82 = sub_1E3E95830(&unk_1ECF3B168);
      OUTLINED_FUNCTION_14_2();
      v84 = sub_1E3743478(v83);
      v85 = v92;
      v86 = v106;
      v87 = v101;
      v88 = v99;
      sub_1E4202FA4();
      sub_1E325F69C(v20, &qword_1ECF2A1F8);
      sub_1E325F69C(v88, &qword_1ECF3B150);
      v89 = v93;
      v90 = v100;
      (*(v93 + 16))(v103, v85, v100);
      swift_storeEnumTagMultiPayload();
      v107 = v86;
      v108 = v87;
      v109 = v82;
      v110 = v84;
      OUTLINED_FUNCTION_8_163();
      sub_1E3E95830(&unk_1ECF3B180);
      sub_1E4201F44();
      return (*(v89 + 8))(v85, v90);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v37(&v112);
    if (v116)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v45.n128_u64[0] = v114;
      v46.n128_u64[0] = v115;
      v43.n128_u64[0] = v112;
      v44.n128_u64[0] = v113;
      j_nullsub_1(v43, v44, v45, v46);
    }

    OUTLINED_FUNCTION_41_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B160, &qword_1E42D9BB8);
    OUTLINED_FUNCTION_2();
    (*(v73 + 16))(v24, v105);
    OUTLINED_FUNCTION_11_148(&v24[*(v21 + 36)]);
    (*(v74 + 200))();
    OUTLINED_FUNCTION_36();
    (*(v75 + 304))();
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E3782004();
    v76 = &v10[*(v7 + 36)];
    v77 = __src[1];
    *v76 = __src[0];
    *(v76 + 1) = v77;
    *(v76 + 2) = __src[2];
    OUTLINED_FUNCTION_13_148();
    sub_1E3782004();
    sub_1E3E95708(v13, v103);
    swift_storeEnumTagMultiPayload();
    v78 = sub_1E3E95830(&unk_1ECF3B168);
    OUTLINED_FUNCTION_14_2();
    v80 = sub_1E3743478(v79);
    v107 = v106;
    v108 = v101;
    v109 = v78;
    v110 = v80;
    OUTLINED_FUNCTION_8_163();
    sub_1E3E95830(&unk_1ECF3B180);
    sub_1E4201F44();
    return sub_1E325F69C(v13, &qword_1ECF3B138);
  }

  return result;
}

uint64_t sub_1E3E94FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1E4202404();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1C8, &qword_1E42AB8B8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1E4200CC4();
  sub_1E42023F4();
  sub_1E3743478(&qword_1ECF2E1D0);
  sub_1E3E95884(&unk_1ECF3B0E0);
  sub_1E4202CF4();
  (*(v8 + 8))(v11, v6);
  (*(v14 + 8))(v17, v12);
  v27 = a3;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D8, &unk_1E42D99B0);
  sub_1E42038F4();
  v18 = v26;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0E8, &qword_1E42D99C0) + 36)) = v18;
  sub_1E4203E44();
  v19 = sub_1E4203E04();

  v27 = a3;
  v28 = a1;
  sub_1E42038F4();
  v20 = v26;
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0F0, &qword_1E42D99C8) + 36));
  *v21 = v19;
  v21[1] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a1;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0F8, &qword_1E42D99D0) + 36));
  *v23 = sub_1E3E952E0;
  v23[1] = v22;
  v23[2] = 0;
  v23[3] = 0;
}

double sub_1E3E952E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D8, &unk_1E42D99B0);
  sub_1E4203904();
  return result;
}

unint64_t sub_1E3E95394()
{
  result = qword_1ECF3B100;
  if (!qword_1ECF3B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B108, &qword_1E42D9B00);
    sub_1E3E93F50();
    sub_1E3E942CC(&unk_1ECF3B0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B100);
  }

  return result;
}

unint64_t sub_1E3E9544C()
{
  result = qword_1ECF3B110;
  if (!qword_1ECF3B110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0F8, &qword_1E42D99D0);
    sub_1E3E954D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B110);
  }

  return result;
}

unint64_t sub_1E3E954D8()
{
  result = qword_1ECF3B118;
  if (!qword_1ECF3B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0F0, &qword_1E42D99C8);
    sub_1E3E95590();
    sub_1E3743478(&unk_1ECF3B128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B118);
  }

  return result;
}

unint64_t sub_1E3E95590()
{
  result = qword_1ECF3B120;
  if (!qword_1ECF3B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0E8, &qword_1E42D99C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1C8, &qword_1E42AB8B8);
    sub_1E4202404();
    sub_1E3743478(&qword_1ECF2E1D0);
    sub_1E3E95884(&unk_1ECF3B0E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B120);
  }

  return result;
}

uint64_t sub_1E3E95708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B138, &qword_1E42D9B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3E95778()
{
  result = qword_1ECF3B170;
  if (!qword_1ECF3B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B148, &qword_1E42D9BA0);
    sub_1E3743478(&unk_1ECF3B178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B170);
  }

  return result;
}

unint64_t sub_1E3E95830(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_1E3E95778();
    result = OUTLINED_FUNCTION_16_7(v6, v7, v8, v9, v10, v11, v12, v13, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3E95884(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3E958C8()
{
  result = qword_1ECF3B190;
  if (!qword_1ECF3B190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B198, &qword_1E42D9BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B150, &qword_1E42D9BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    sub_1E3E95830(&unk_1ECF3B168);
    sub_1E3743478(&qword_1EE23ACD8);
    swift_getOpaqueTypeConformance2();
    sub_1E3E95830(&unk_1ECF3B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B190);
  }

  return result;
}

void *sub_1E3E95A6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    OUTLINED_FUNCTION_49_51();
    sub_1E41FDF44();
    v9 = sub_1E39E8924(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1E39E8924((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v3);
    v15 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4297BD0;
  sub_1E41FDF44();
  sub_1E41FDF44();
  v14 = &unk_1F5D8A490;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  sub_1E3924274();
  sub_1E4205DF4();
  sub_1E41FDF44();

  sub_1E3E95CE4(v12);
  return v15;
}

uint64_t sub_1E3E95CE4(uint64_t a1)
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

  sub_1E3E9793C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1E41FDF74();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1E3E95DE4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v39 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_29_85(v7, v8, v9, v10, v11, v12, v13, v14, v39);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v18)
  {
    sub_1E325F748(v1, &qword_1ECF304A8, &unk_1E42B18D0);
    sub_1E41FDDF4();
    v19 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v38 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v22 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v22);
  OUTLINED_FUNCTION_12_139();
  v23 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_44_50(v23, xmmword_1E4299720);
  sub_1E41FDF44();
  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  v24 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v24);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v25)
  {

    sub_1E3E95CE4(v26);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v18)
  {
    v27 = OUTLINED_FUNCTION_3_208();
    v28(v27);
    sub_1E325F748(v0, &unk_1ECF363C0, &unk_1E42A9420);
    sub_1E41FDDF4();
    v19 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v29 = OUTLINED_FUNCTION_1_242();
  v30(v29);
  OUTLINED_FUNCTION_30_71();
  v31 = OUTLINED_FUNCTION_37_4();
  v33.n128_f64[0] = v32(v31);
  OUTLINED_FUNCTION_8_164(v33);
  v34 = OUTLINED_FUNCTION_10_142();
  v35(v34);
  v36 = OUTLINED_FUNCTION_3_208();
  v37(v36);
  sub_1E41FDDF4();
  v19 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v19, v38, 1, v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E96184()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_19_120(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v41 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_29_85(v9, v10, v11, v12, v13, v14, v15, v16, v41);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v20)
  {
    sub_1E325F748(v1, &qword_1ECF304A8, &unk_1E42B18D0);
    sub_1E41FDDF4();
    v21 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v40 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v24 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v24);
  OUTLINED_FUNCTION_12_139();
  v25 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_44_50(v25, xmmword_1E4298AD0);
  sub_1E41FDF44();
  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_18_111();
  OUTLINED_FUNCTION_6_182();
  sub_1E41FDF44();
  v26 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v26);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v27)
  {

    sub_1E3E95CE4(v28);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v20)
  {
    v29 = OUTLINED_FUNCTION_3_208();
    v30(v29);
    sub_1E325F748(v0, &unk_1ECF363C0, &unk_1E42A9420);
    sub_1E41FDDF4();
    v21 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v31 = OUTLINED_FUNCTION_1_242();
  v32(v31);
  OUTLINED_FUNCTION_30_71();
  v33 = OUTLINED_FUNCTION_37_4();
  v35.n128_f64[0] = v34(v33);
  OUTLINED_FUNCTION_8_164(v35);
  v36 = OUTLINED_FUNCTION_10_142();
  v37(v36);
  v38 = OUTLINED_FUNCTION_3_208();
  v39(v38);
  sub_1E41FDDF4();
  v21 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v21, v40, 1, v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E96530()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_19_120(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_29_85(v8, v9, v10, v11, v12, v13, v14, v15, v43);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v19)
  {
    sub_1E325F748(v1, &qword_1ECF304A8, &unk_1E42B18D0);
    sub_1E41FDDF4();
    v20 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v42 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v23 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v23);
  OUTLINED_FUNCTION_12_139();
  v24 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v24, xmmword_1E4297BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  v25 = sub_1E3924274();
  v26 = OUTLINED_FUNCTION_28_75(v25);
  OUTLINED_FUNCTION_7_194(v26, v27);

  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_48_41();
  sub_1E41FDF44();
  v28 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v28);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v29)
  {

    sub_1E3E95CE4(v30);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v19)
  {
    v31 = OUTLINED_FUNCTION_3_208();
    v32(v31);
    sub_1E325F748(v0, &unk_1ECF363C0, &unk_1E42A9420);
    sub_1E41FDDF4();
    v20 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v33 = OUTLINED_FUNCTION_1_242();
  v34(v33);
  OUTLINED_FUNCTION_30_71();
  v35 = OUTLINED_FUNCTION_37_4();
  v37.n128_f64[0] = v36(v35);
  OUTLINED_FUNCTION_8_164(v37);
  v38 = OUTLINED_FUNCTION_10_142();
  v39(v38);
  v40 = OUTLINED_FUNCTION_3_208();
  v41(v40);
  sub_1E41FDDF4();
  v20 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v20, v42, 1, v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E9690C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_19_120(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v11)
  {
    sub_1E325F748(v1, &qword_1ECF304A8, &unk_1E42B18D0);
    sub_1E41FDDF4();
    v12 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v34 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v15 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v15);
  OUTLINED_FUNCTION_12_139();
  v16 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v16, xmmword_1E4298AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  v17 = sub_1E3924274();
  v18 = OUTLINED_FUNCTION_28_75(v17);
  OUTLINED_FUNCTION_7_194(v18, v19);

  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_18_111();
  OUTLINED_FUNCTION_6_182();
  sub_1E41FDF44();
  v20 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v20);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v21)
  {

    sub_1E3E95CE4(v22);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v11)
  {
    v23 = OUTLINED_FUNCTION_3_208();
    v24(v23);
    sub_1E325F748(v0, &unk_1ECF363C0, &unk_1E42A9420);
    sub_1E41FDDF4();
    v12 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v25 = OUTLINED_FUNCTION_1_242();
  v26(v25);
  OUTLINED_FUNCTION_30_71();
  v27 = OUTLINED_FUNCTION_37_4();
  v29.n128_f64[0] = v28(v27);
  OUTLINED_FUNCTION_8_164(v29);
  v30 = OUTLINED_FUNCTION_10_142();
  v31(v30);
  v32 = OUTLINED_FUNCTION_3_208();
  v33(v32);
  sub_1E41FDDF4();
  v12 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v12, v34, 1, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E96CCC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v46 = v5;
  v47 = v6;
  v44[4] = v7;
  v44[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v45 = OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  v44[3] = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v44[1] = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v44[2] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v44 - v18;
  v20 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_9();
  if (v2)
  {
    v22 = v2;
  }

  else
  {
    v4 = 0xD00000000000001CLL;
    v22 = 0x80000001E4286C50;
  }

  v49 = 0xD000000000000020;
  v50 = 0x80000001E4286C00;

  MEMORY[0x1E69109E0](v4, v22);

  sub_1E41FDFF4();

  OUTLINED_FUNCTION_71_3(v19);
  if (v23)
  {
    sub_1E325F748(v19, &qword_1ECF304A8, &unk_1E42B18D0);
    sub_1E41FDDF4();
    v24 = OUTLINED_FUNCTION_32_70();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_14_142();
    v27(v26, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
    v28 = OUTLINED_FUNCTION_41_58();
    OUTLINED_FUNCTION_8_0(v28);
    OUTLINED_FUNCTION_12_139();
    *(OUTLINED_FUNCTION_42_60() + 16) = xmmword_1E4297BD0;
    OUTLINED_FUNCTION_40_57();
    sub_1E41FDF44();
    OUTLINED_FUNCTION_26_96();
    OUTLINED_FUNCTION_38_53();
    v29 = OUTLINED_FUNCTION_47_47();
    sub_1E3E95CE4(v29);
    sub_1E41FDF84();
    OUTLINED_FUNCTION_35_63();
    v48 = MEMORY[0x1E69E7CC0];
    if (v30)
    {

      sub_1E3E95CE4(v31);
    }

    OUTLINED_FUNCTION_46_50();

    OUTLINED_FUNCTION_45_56();
    sub_1E41FDFC4();
    if (__swift_getEnumTagSinglePayload(v0, 1, v45) != 1)
    {
      v35 = OUTLINED_FUNCTION_1_242();
      v36(v35);
      OUTLINED_FUNCTION_30_71();
      v37 = OUTLINED_FUNCTION_37_4();
      v39.n128_f64[0] = v38(v37);
      OUTLINED_FUNCTION_8_164(v39);
      v40 = OUTLINED_FUNCTION_10_142();
      v41(v40);
      v42 = OUTLINED_FUNCTION_3_208();
      v43(v42);
      sub_1E41FDDF4();
      v24 = OUTLINED_FUNCTION_11_149();
      goto LABEL_13;
    }

    v32 = OUTLINED_FUNCTION_3_208();
    v33(v32);
    sub_1E325F748(v0, &unk_1ECF363C0, &unk_1E42A9420);
    sub_1E41FDDF4();
    v24 = OUTLINED_FUNCTION_119_2();
  }

  v34 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v24, v34, 1, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E970EC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_43_57(v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_53_40();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  MEMORY[0x1E69109E0](v0, v3);
  sub_1E41FDFF4();

  OUTLINED_FUNCTION_71_3(v2);
  if (v16)
  {
    sub_1E325F748(v2, &qword_1ECF304A8, &unk_1E42B18D0);
    sub_1E41FDDF4();
    v17 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v40 = 1;
    goto LABEL_10;
  }

  v19 = OUTLINED_FUNCTION_14_142();
  v20(v19, v2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v21 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v21);
  OUTLINED_FUNCTION_12_139();
  v22 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v22, xmmword_1E4298AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  v23 = sub_1E3924274();
  v24 = OUTLINED_FUNCTION_28_75(v23);
  OUTLINED_FUNCTION_7_194(v24, v25);

  OUTLINED_FUNCTION_50_42();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_18_111();
  OUTLINED_FUNCTION_6_182();
  sub_1E41FDF44();
  v26 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v26);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v27)
  {

    sub_1E3E95CE4(v28);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v16)
  {
    v29 = OUTLINED_FUNCTION_3_208();
    v30(v29);
    sub_1E325F748(v1, &unk_1ECF363C0, &unk_1E42A9420);
    sub_1E41FDDF4();
    v17 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v31 = OUTLINED_FUNCTION_1_242();
  v32(v31);
  OUTLINED_FUNCTION_30_71();
  v33 = OUTLINED_FUNCTION_37_4();
  v35.n128_f64[0] = v34(v33);
  OUTLINED_FUNCTION_8_164(v35);
  v36 = OUTLINED_FUNCTION_10_142();
  v37(v36);
  v38 = OUTLINED_FUNCTION_3_208();
  v39(v38);
  sub_1E41FDDF4();
  v17 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v17, v40, 1, v18);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E974C8()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v1;
  v51 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v47 - v18;
  v20 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_40_57();
  sub_1E41FDFF4();
  OUTLINED_FUNCTION_71_3(v19);
  if (v22)
  {
    sub_1E325F748(v19, &qword_1ECF304A8, &unk_1E42B18D0);
    sub_1E41FDDF4();
    v23 = OUTLINED_FUNCTION_119_2();
LABEL_9:
    v46 = 1;
    goto LABEL_10;
  }

  v47[1] = v9;
  v48 = v12;
  v47[0] = v15;
  v49 = v4;
  v25 = OUTLINED_FUNCTION_14_142();
  v26(v25, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v27 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v27);
  OUTLINED_FUNCTION_12_139();
  v28 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v28, xmmword_1E4299720);
  v52 = &unk_1F5D8A5B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  sub_1E3924274();
  v29 = sub_1E4205DF4();
  OUTLINED_FUNCTION_7_194(v29, v30);

  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  v53 = v28;
  v31 = sub_1E3E95A6C(v50, v51);
  sub_1E3E95CE4(v31);
  v32 = sub_1E41FDF84();
  v33 = v53;
  v52 = MEMORY[0x1E69E7CC0];
  if (v32)
  {

    sub_1E3E95CE4(v34);
  }

  sub_1E3E95CE4(v33);

  sub_1E41FDF94();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  v35 = v48;
  if (v22)
  {
    v36 = OUTLINED_FUNCTION_3_208();
    v37(v36);
    sub_1E325F748(v0, &unk_1ECF363C0, &unk_1E42A9420);
    v24 = sub_1E41FDDF4();
    v23 = v49;
    goto LABEL_9;
  }

  v38 = v47[0];
  v39 = OUTLINED_FUNCTION_1_242();
  v40(v39);
  OUTLINED_FUNCTION_30_71();
  v41(v35, v38, v7);
  sub_1E41FDDB4();
  v42 = OUTLINED_FUNCTION_10_142();
  v43(v42);
  v44 = OUTLINED_FUNCTION_3_208();
  v45(v44);
  sub_1E41FDDF4();
  v23 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v23, v46, 1, v24);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3E9793C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E39E8924(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_40()
{

  return sub_1E41FE004();
}

unint64_t sub_1E3E979F4()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3E97A40(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x6269726373627573;
  }

  return 0x7263736275736E75;
}

uint64_t sub_1E3E97AB0(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x7263736275736E75;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xEC00000064656269;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6269726373627573;
    }

    else
    {
      v2 = 0x7263736275736E75;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xEC00000064656269;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3E97BE0(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}