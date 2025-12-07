void sub_86C88()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment];
  if (*&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell__thumbnailHorizontalAlignment] != v1)
  {
    *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell__thumbnailHorizontalAlignment] = v1;
    if (v1 >= 4)
    {
      sub_ABAD90(24);
      v12._object = 0x8000000000B4AB80;
      v12._countAndFlagsBits = 0xD000000000000013;
      sub_AB94A0(v12);
      v13._countAndFlagsBits = 0xD000000000000032;
      v13._object = 0x8000000000B4D7C0;
      sub_AB94A0(v13);
      v14._countAndFlagsBits = 32;
      v14._object = 0xE100000000000000;
      sub_AB94A0(v14);
      type metadata accessor for MusicModelFlowcaseItemThumbnailHorizontalAlignment(0);
      sub_ABAF70();
      sub_ABAFD0();
      __break(1u);
    }

    else
    {
      v2 = 0x5040100u >> (8 * v1);
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextComponent];

      sub_8A174(v2, v11);
      swift_beginAccess();
      v5 = v3[3];
      v4 = v3[4];
      v6 = v3[6];
      v10[3] = v3[5];
      v10[4] = v6;
      v10[2] = v4;
      v10[0] = v3[2];
      v10[1] = v5;
      v7 = v11[4];
      v3[5] = v11[3];
      v3[6] = v7;
      v8 = v11[1];
      v3[2] = v11[0];
      v3[3] = v8;
      v3[4] = v11[2];
      sub_2F118(v11, v9);
      sub_2F174(v10);
      sub_2EB2A8();
      sub_2F174(v11);

      [v0 setNeedsLayout];
    }
  }
}

void sub_86E70()
{
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_isDisabled;
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_isDisabled);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  *(v2 + v5) = v4;
  v55 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v4 != *(v2 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
  {
    *(v2 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = v4;
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7 >> 62)
    {
      v8 = sub_ABB060();
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    v9 = v8 - 1;
    if (v8 < 1)
    {
      __break(1u);
      goto LABEL_61;
    }

    v50 = v3;
    v52 = v0;

    v11 = 0;
    if ((v7 & 0xC000000000000001) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v12 = *(sub_36003C(v11, v7, v10) + 256);
    if (v12)
    {
LABEL_7:
      v13 = v12;
      if (([v13 isHidden] & 1) == 0)
      {
        v14 = *(v2 + v55);
        v15 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v16 = v13[v15];
        v13[v15] = v14;
        if (v14 != v16)
        {
          v17 = 1.0;
          if (v14)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v13 setAlpha:v17];
        }
      }

      if (v9 != v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      while (1)
      {

        if (v9 == v11)
        {
          break;
        }

LABEL_16:
        ++v11;
        if ((v7 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

LABEL_14:
        v18 = *(v7 + 8 * v11 + 32);

        v12 = *(v18 + 256);
        if (v12)
        {
          goto LABEL_7;
        }
      }
    }

    v3 = v50;
    v0 = v52;
  }

LABEL_19:
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView);
  if (!v1)
  {
    goto LABEL_38;
  }

  v19 = *(v0 + v3);
  v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v1[v20] = v19;
  v55 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v19 == v1[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    goto LABEL_38;
  }

  v1[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v19;
  v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v7 = *&v1[v21];
  if (!(v7 >> 62))
  {
    v22 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (!v22)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

LABEL_61:
  v22 = sub_ABB060();
  if (!v22)
  {
    goto LABEL_38;
  }

LABEL_23:
  v51 = v3;
  v53 = v0;
  v23 = v22 - 1;
  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_66;
  }

  v49 = v1;

  v25 = 0;
  if ((v7 & 0xC000000000000001) == 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  v26 = *(sub_36003C(v25, v7, v24) + 256);
  if (v26)
  {
LABEL_26:
    v27 = v26;
    if (([v27 isHidden] & 1) == 0)
    {
      v28 = v1[v55];
      v29 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v30 = v27[v29];
      v27[v29] = v28;
      if (v28 != v30)
      {
        v31 = 1.0;
        if (v28)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v27 setAlpha:v31];
      }
    }

    if (v23 != v25)
    {
      goto LABEL_35;
    }
  }

  else
  {
    while (1)
    {

      if (v23 == v25)
      {
        break;
      }

LABEL_35:
      ++v25;
      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

LABEL_33:
      v32 = *(v7 + 8 * v25 + 32);

      v26 = *(v32 + 256);
      if (v26)
      {
        goto LABEL_26;
      }
    }
  }

  v3 = v51;
  v0 = v53;
LABEL_38:
  v33 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView);
  if (!v33)
  {
    return;
  }

  v34 = *(v0 + v3);
  v35 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v33[v35] = v34;
  v56 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v34 == v33[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    return;
  }

  v33[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v34;
  v36 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v37 = *&v33[v36];
  if (v37 >> 62)
  {
    v38 = sub_ABB060();
    if (!v38)
    {
      return;
    }
  }

  else
  {
    v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (!v38)
    {
      return;
    }
  }

  v39 = v38 - 1;
  if (v38 < 1)
  {
LABEL_66:
    __break(1u);
    return;
  }

  v54 = v33;

  v41 = 0;
  if ((v37 & 0xC000000000000001) == 0)
  {
    goto LABEL_52;
  }

LABEL_44:
  v42 = *(sub_36003C(v41, v37, v40) + 256);
  if (v42)
  {
LABEL_45:
    v43 = v42;
    if (([v43 isHidden] & 1) == 0)
    {
      v44 = v33[v56];
      v45 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v46 = v43[v45];
      v43[v45] = v44;
      if (v44 != v46)
      {
        v47 = 1.0;
        if (v44)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v43 setAlpha:{v47, v49}];
      }
    }

    if (v39 != v41)
    {
      goto LABEL_54;
    }
  }

  else
  {
    while (1)
    {

      if (v39 == v41)
      {
        break;
      }

LABEL_54:
      ++v41;
      if ((v37 & 0xC000000000000001) != 0)
      {
        goto LABEL_44;
      }

LABEL_52:
      v48 = *(v37 + 8 * v41 + 32);

      v42 = *(v48 + 256);
      if (v42)
      {
        goto LABEL_45;
      }
    }
  }
}

id sub_873C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  result = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

void sub_87490()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_ABA680();
  v161 = *(v3 - 8);
  __chkstk_darwin();
  v154 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v6 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v157 = &v154 - v8;
  v173.receiver = v1;
  v173.super_class = ObjectType;
  objc_msgSendSuper2(&v173, "layoutSubviews", v7);
  v9 = [v1 contentView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [v1 traitCollection];
  [v18 displayScale];
  v20 = v19;
  v21 = [v1 effectiveUserInterfaceLayoutDirection];
  v22 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent];
  v185.origin.x = v11 + 0.0;
  v185.origin.y = v13;
  v185.size.width = v15;
  v185.size.height = v17;
  Width = CGRectGetWidth(v185);
  if (qword_DE6760 != -1)
  {
    swift_once();
  }

  v186.origin.x = v11 + 0.0;
  v186.origin.y = v13;
  v186.size.width = v15;
  v186.size.height = v17;
  [qword_DEB918 valueForReferenceMetric:CGRectGetWidth(v186)];
  sub_AB3A00();
  v25 = *(v22 + 80);
  v24 = *(v22 + 88);
  *(v22 + 80) = Width;
  *(v22 + 88) = v26;
  sub_75614(v25, v24);
  v27 = sub_76368(0, 0, 1);
  v29 = v28;
  v187.origin.x = v11;
  v187.origin.y = v13;
  v187.size.width = v15;
  v187.size.height = v17;
  CGRectGetMaxY(v187);
  v170 = v17;
  v188.origin.x = 0.0;
  v188.origin.y = 0.0;
  v188.size.width = v27;
  v188.size.height = v29;
  CGRectGetHeight(v188);
  v30 = v170;
  v159 = v20;
  sub_ABA470();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v11;
  v39 = v38;
  sub_ABA490();
  v44 = sub_76B28(v40, v41, v42, v43);
  v45 = v15;
  v166 = v21;
  v168 = v34;
  v169 = v13;
  if (v44)
  {
    v46 = v37;
    v47 = v13;
    v48 = v30;
    MaxY = CGRectGetMaxY(*(&v45 - 2));
    v189.origin.x = v32;
    v189.origin.y = v168;
    v189.size.width = v36;
    v189.size.height = v39;
    v50 = MaxY - CGRectGetMinY(v189);
    v34 = v168;
    v164 = v30 - (v50 + 0.0);
  }

  else
  {
    v164 = v30;
  }

  v167 = v37;
  v163 = v32;
  v190.origin.x = v32;
  v190.origin.y = v34;
  v162 = v36;
  v190.size.width = v36;
  v165 = v39;
  v190.size.height = v39;
  v51 = CGRectGetWidth(v190);
  [*(v22 + 112) bounds];
  v158 = v55;
  v56 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog;
  v57 = 0.0;
  v58 = &off_DEB000;
  if (!*&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog])
  {
    v60 = 0.0;
    v61 = 0.0;
    v62 = 0.0;
    goto LABEL_34;
  }

  v59 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent];
  v60 = 0.0;
  v61 = 0.0;
  v62 = 0.0;
  if (!v59)
  {
    goto LABEL_34;
  }

  v63 = v54;
  v155 = v52;
  v156 = v53;
  v160 = v18;
  v64 = v3;
  v65 = &v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration];
  if (v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration + 8])
  {
    v66 = qword_DE6768;

    if (v66 != -1)
    {
      swift_once();
    }

    [qword_DEB920 valueForReferenceMetric:v51];
    sub_AB3A00();
    v68 = v67;
  }

  else
  {
    v69 = qword_DE6770;

    if (v69 != -1)
    {
      swift_once();
    }

    [qword_DEB928 valueForReferenceMetric:v51];
    sub_AB3A00();
    v68 = v70;
    if (qword_DE6778 != -1)
    {
      swift_once();
    }

    [qword_DEB930 valueForReferenceMetric:v51];
    sub_AB3A00();
  }

  v71 = v158;
  v73 = *(v59 + 80);
  v72 = *(v59 + 88);
  *(v59 + 80) = v68;
  *(v59 + 88) = v67;
  sub_75614(v73, v72);
  v74 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment;
  v75 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment];
  v61 = sub_76368(0, 0, 1);
  v62 = v76;
  v191.origin.x = v155;
  v191.origin.y = v156;
  v191.size.width = v63;
  v191.size.height = v71;
  v77 = CGRectGetHeight(v191) + -11.0;
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = v61;
  v192.size.height = v62;
  v60 = v77 - CGRectGetHeight(v192);
  v78 = *&v1[v74];
  if (v78 <= 1)
  {
    if (v78)
    {
      if (v78 != 1)
      {
        goto LABEL_55;
      }

      goto LABEL_23;
    }

LABEL_25:
    v195.origin.x = v155;
    v195.origin.y = v156;
    v195.size.width = v63;
    v195.size.height = v71;
    v57 = CGRectGetMinX(v195) + 11.0;
    goto LABEL_26;
  }

  if (v78 != 3)
  {
    if (v78 != 2)
    {
LABEL_55:
      *&v174 = 0;
      *(&v174 + 1) = 0xE000000000000000;
      sub_ABAD90(24);
      v182._object = 0x8000000000B4AB80;
      v182._countAndFlagsBits = 0xD000000000000013;
      sub_AB94A0(v182);
      v183._countAndFlagsBits = 0xD000000000000032;
      v183._object = 0x8000000000B4D7C0;
      sub_AB94A0(v183);
      v184._countAndFlagsBits = 32;
      v184._object = 0xE100000000000000;
      sub_AB94A0(v184);
      *&v171 = *&v1[v74];
      type metadata accessor for MusicModelFlowcaseItemThumbnailHorizontalAlignment(0);
      sub_ABAF70();
      goto LABEL_56;
    }

    goto LABEL_25;
  }

LABEL_23:
  v193.origin.x = v155;
  v193.origin.y = v156;
  v193.size.width = v63;
  v193.size.height = v71;
  v79 = CGRectGetMaxX(v193) + -11.0;
  v194.origin.x = 0.0;
  v194.origin.y = v60;
  v194.size.width = v61;
  v194.size.height = v62;
  v57 = v79 - CGRectGetWidth(v194);
LABEL_26:
  v80 = v57;
  v81 = v60;
  v82 = v61;
  v83 = v62;
  if (v75 <= 1)
  {
    sub_ABA490();
  }

  sub_76B28(v80, v81, v82, v83);
  v3 = v64;
  if (v65[8] == 1)
  {

    v18 = v160;
  }

  else
  {
    v196.origin.x = v57;
    v196.origin.y = v60;
    v196.size.width = v61;
    v196.size.height = v62;
    CGRectGetWidth(v196);
    v197.origin.x = 5.0;
    v197.origin.y = 0.0;
    v197.size.width = v61;
    v197.size.height = v62;
    CGRectGetMinX(v197);
    v84 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView];
    v18 = v160;
    if (v84)
    {
      v85 = v84;
      sub_ABA490();
      [v85 setFrame:?];
    }

    else
    {
    }
  }

  v58 = &off_DEB000;
LABEL_34:
  v86 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView];
  if (!v86)
  {
LABEL_53:
    v140 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextStackView];
    sub_ABA490();
    [v140 setFrame:?];
    [*(v22 + 112) frame];
    v142 = v141;
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v149 = [*(v22 + 112) layer];
    [v149 cornerRadius];
    v151 = v150;

    v152 = [objc_opt_self() effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v142 curve:{v144, v146, v148, v151}];
    [v1 setFocusEffect:v152];

    return;
  }

  v87 = v58[303];
  v88 = *(v87 + v1);
  v159 = v15;
  if (v88 <= 1)
  {
    v89 = v163;
    if (v88)
    {
      if (v88 != 1)
      {
        goto LABEL_54;
      }

LABEL_40:
      v90 = v86;
      v198.origin.x = v89;
      v198.origin.y = v168;
      v91 = v162;
      v198.size.width = v162;
      v92 = v165;
      v198.size.height = v165;
      v93 = CGRectGetWidth(v198);
      v199.origin.x = 11.0;
      v199.origin.y = 0.0;
      v199.size.width = v91;
      v199.size.height = v92;
      v94 = v93 - CGRectGetMinX(v199) + -11.0;
      if (!*&v1[v56])
      {
        goto LABEL_45;
      }

LABEL_44:
      v202.origin.x = v57;
      v202.origin.y = v60;
      v202.size.width = v61;
      v202.size.height = v62;
      v94 = v94 - (CGRectGetWidth(v202) + 11.0);
LABEL_45:
      v99 = v161;
      [v86 sizeThatFits:{v94, v165}];
      if (*&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText + 8])
      {
        v161 = v3;
        v160 = v18;
        v100 = [v1 contentView];
        [v100 frame];
        v102 = v101;
        v104 = v103;
        v106 = v105;
        v108 = v107;

        v203.origin.x = v102;
        v203.origin.y = v104;
        v203.size.width = v106;
        v203.size.height = v108;
        CGRectGetHeight(v203);
        v109 = v86;
        sub_ABA490();
        [v109 setFrame:?];
        v110 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView];
        if (v110)
        {
          v111 = v110;
          [v109 frame];
          v113 = v112;
          v115 = v114;
          v117 = v116;
          v119 = v118;

          v204.origin.x = v113;
          v204.origin.y = v115;
          v204.size.width = v117;
          v204.size.height = v119;
          v120 = CGRectGetMinY(v204) + -18.0;
          v121 = v163;
          v205.origin.x = v163;
          v122 = v168;
          v205.origin.y = v168;
          v123 = v162;
          v205.size.width = v162;
          v124 = v165;
          v205.size.height = v165;
          v125 = CGRectGetWidth(v205);
          v206.origin.x = v121;
          v206.origin.y = v122;
          v206.size.width = v123;
          v206.size.height = v124;
          v126 = CGRectGetMaxY(v206) - v120;
          v127 = v111;
          sub_ABA490();
          [v127 setFrame:?];
          v128 = *(v22 + 112);
          sub_ABA690();
          v129 = v161;
          if ((*(v99 + 48))(v6, 1, v161))
          {
            sub_8A08C(v6);

            v130 = 1;
            v131 = v157;
          }

          else
          {
            v132 = v154;
            (*(v99 + 16))(v154, v6, v129);
            sub_8A08C(v6);

            v131 = v157;
            sub_ABA630();
            (*(v99 + 8))(v132, v129);
            v130 = 0;
          }

          (*(v99 + 56))(v131, v130, 1, v129);
          sub_ABA6A0();

          v207.origin.x = 0.0;
          v207.origin.y = v120;
          v207.size.width = v125;
          v207.size.height = v126;
          v133 = CGRectGetHeight(v207) + -11.0;
          v208.origin.x = 0.0;
          v208.origin.y = v120;
          v208.size.width = v125;
          v208.size.height = v126;
          v134 = v133 / CGRectGetHeight(v208);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0, &qword_AF9000);
          v135 = swift_allocObject();
          *(v135 + 16) = xmmword_AF8820;
          *(v135 + 32) = 0;
          *(v135 + 40) = v134;
          *(v135 + 48) = 0x3FF0000000000000;
          v136 = &v127[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
          swift_beginAccess();
          v137 = *(v136 + 2);
          v138 = *v136;
          v139 = *(v136 + 1);
          *&v172[32] = *(v136 + 3);
          *&v172[16] = v137;
          *v172 = v139;
          v171 = v138;
          sub_8A334(&v171, &v174);

          v174 = v171;
          v176 = *&v172[8];
          v177 = *&v172[24];
          v178 = *&v172[40];
          v175 = v135;
          Gradient.View.typedConfiguration.setter(&v174);

          v18 = v160;
        }

        else
        {

          v18 = v160;
        }
      }

      else
      {
      }

      goto LABEL_53;
    }

    goto LABEL_43;
  }

  v89 = v163;
  if (v88 == 3)
  {
    goto LABEL_40;
  }

  if (v88 == 2)
  {
LABEL_43:
    v95 = v86;
    v200.origin.x = v89;
    v200.origin.y = v168;
    v96 = v162;
    v200.size.width = v162;
    v97 = v165;
    v200.size.height = v165;
    v98 = CGRectGetWidth(v200);
    v201.origin.x = 11.0;
    v201.origin.y = 0.0;
    v201.size.width = v96;
    v201.size.height = v97;
    v94 = v98 - CGRectGetMinX(v201) + -11.0;
    if (!*&v1[v56])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_54:
  *&v174 = 0;
  *(&v174 + 1) = 0xE000000000000000;
  v153 = v86;
  sub_ABAD90(24);
  v179._object = 0x8000000000B4AB80;
  v179._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v179);
  v180._countAndFlagsBits = 0xD000000000000032;
  v180._object = 0x8000000000B4D7C0;
  sub_AB94A0(v180);
  v181._countAndFlagsBits = 32;
  v181._object = 0xE100000000000000;
  sub_AB94A0(v181);
  *&v171 = *(v87 + v1);
  type metadata accessor for MusicModelFlowcaseItemThumbnailHorizontalAlignment(0);
  sub_ABAF70();
LABEL_56:
  sub_ABAFD0();
  __break(1u);
}

double sub_88530()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent);
  [*(v1 + 112) clearArtworkCatalogs];
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent);
  if (v3)
  {
    v4 = v3[14];

    [v4 clearArtworkCatalogs];
    *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
    v3[25] = 0;
    v3[26] = 0;
  }

  return result;
}

void sub_88634(void *a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (a1)
  {
    [a1 displayScale];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30, &qword_B016E0);
  v4 = [v1 traitCollection];
  [v4 displayScale];
  v6 = v5;

  v17 = v6;
  LOBYTE(v18) = 0;
  sub_8A2B8();
  if (sub_AB38D0())
  {
    [v1 setNeedsLayout];
  }

  if (a1)
  {
    v7 = [a1 userInterfaceStyle];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 userInterfaceStyle];

  if (!a1 || v7 != v9)
  {
    v10 = [v2 traitCollection];
    v11 = [v10 userInterfaceStyle];

    if (v11 == &dword_0 + 2)
    {
      v12 = UIView.Border.artwork.unsafeMutableAddressor();
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = v12[2];
      v16 = v15;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    sub_75E64(v13, v14, v15);
  }
}

void sub_888AC(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isHighlighted") != v2)
  {
    v4 = *(*&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent] + 112);
    v8.receiver = v1;
    v8.super_class = ObjectType;
    v5 = v4;
    v6 = 2;
    if ((objc_msgSendSuper2(&v8, "isHighlighted") & 1) == 0)
    {
      v7.receiver = v1;
      v7.super_class = ObjectType;
      if (objc_msgSendSuper2(&v7, "isSelected"))
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    [v5 setDrawMode:v6];
  }
}

id sub_88978(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_889E0(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5, void (*a6)(id))
{
  ObjectType = swift_getObjectType();
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v12 = *a4;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, v12);
  v15.receiver = v13;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, *a5, a3);
  a6(v14);
}

void sub_88A78(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isSelected") != v2)
  {
    v4 = *(*&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent] + 112);
    v8.receiver = v1;
    v8.super_class = ObjectType;
    v5 = v4;
    if ((objc_msgSendSuper2(&v8, "isHighlighted") & 1) != 0 || (v7.receiver = v1, v7.super_class = ObjectType, objc_msgSendSuper2(&v7, "isSelected")))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [v5 setDrawMode:v6];

    sub_88B44();
  }
}

void sub_88B44()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v19, "isSelected"))
  {
    v1 = *(*&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent] + 112);
    sub_AB9EA0();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = v1;
    v11[4] = v3;
    v11[5] = v5;
    v11[6] = v7;
    v11[7] = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_8A280;
    *(v12 + 24) = v11;
    v18[4] = sub_2D4D0;
    v18[5] = v12;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1822E0;
    v18[3] = &block_descriptor_10;
    v13 = _Block_copy(v18);
    v14 = v1;
    v15 = v0;

    [v10 performWithoutAnimation:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v17 = sub_88D3C();
  [v17 removeFromSuperview];
}

id sub_88D3C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell____lazy_storage___selectedIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell____lazy_storage___selectedIndicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell____lazy_storage___selectedIndicatorView);
  }

  else
  {
    v4 = [objc_opt_self() systemLightGrayColor];
    v5 = [objc_allocWithZone(UIView) init];
    v6 = [v5 layer];
    [v6 setCornerCurve:kCACornerCurveContinuous];

    [v5 setBackgroundColor:v4];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_88E2C(char *a1, void *a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v8 = sub_88D3C();
  v9 = a2;
  sub_ABA5E0();
  sub_ABA6A0();

  v10 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell____lazy_storage___selectedIndicatorView;
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell____lazy_storage___selectedIndicatorView];
  [v9 frame];
  [v11 setFrame:{UIEdgeInsetsInsetRect(v12, v13, v14, v15, a3, a4)}];

  return [a1 insertSubview:*&a1[v10] atIndex:0];
}

double sub_88F58()
{
  v1 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_artworkCachingReference;
  *(*(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent) + 16) = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_artworkCachingReference);

  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent);
  if (v3)
  {
    *(v3 + 16) = *(v0 + v1);
  }

  return result;
}

double sub_89000()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
  swift_retain_n();
  sub_2E6210(v6);

  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView);
  if (v8)
  {
    v9 = *(v1 + v3);
    v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v11 = *&v8[v10];
    *&v8[v10] = v9;
    swift_retain_n();
    v12 = v8;
    sub_2E6210(v11);
  }

  v13 = *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView);
  if (v13)
  {
    v14 = *(v1 + v3);
    v15 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v16 = *&v13[v15];
    *&v13[v15] = v14;
    swift_retain_n();
    v17 = v13;
    sub_2E6210(v16);
  }

  return result;
}

void sub_89180(char a1)
{
  v2 = v1;
  v3 = v1[1];
  if (a1)
  {
    swift_beginAccess();
    *(v3 + 88) = 1;
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF82E0;
    *(v4 + 32) = *v2;
    *(v4 + 40) = v3;
    *(v4 + 48) = v2[2];
  }

  else
  {
    swift_beginAccess();
    *(v3 + 88) = 2;
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF7C50;
    *(v4 + 32) = *v2;
    *(v4 + 40) = v3;
  }

  v2[3] = v4;
}

id sub_892B0()
{
  v0 = [objc_allocWithZone(MPULayoutInterpolator) init];
  [v0 addValue:187.0 forReferenceMetric:280.0];
  [v0 addValue:224.0 forReferenceMetric:335.0];
  [v0 addValue:259.0 forReferenceMetric:387.333333];
  result = [v0 addValue:323.0 forReferenceMetric:540.0];
  qword_DEB918 = v0;
  return result;
}

id sub_893C0(double a1, double a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MPULayoutInterpolator) init];
  [v7 addValue:a1 forReferenceMetric:280.0];
  [v7 addValue:a1 forReferenceMetric:335.0];
  [v7 addValue:a1 forReferenceMetric:387.333333];
  result = [v7 addValue:a2 forReferenceMetric:540.0];
  *a4 = v7;
  return result;
}

uint64_t sub_89698(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_896E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_89744()
{
  result = qword_DEBA28;
  if (!qword_DEBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBA28);
  }

  return result;
}

double sub_89798(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_artworkCachingReference) = a1;

  sub_88F58();

  return result;
}

double sub_89868(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_89000();

  return result;
}

double (*sub_898D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_8993C;
}

double sub_8993C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_89000();
  }

  return result;
}

double sub_89970(void *a1, double a2)
{
  sub_89B20();
  v5 = v4;
  if (qword_DE6760 != -1)
  {
    swift_once();
  }

  [qword_DEB918 valueForReferenceMetric:a2];
  [a1 displayScale];
  sub_AB3A00();
  sub_2F48A4(v5, a1, 0, 0);

  return a2 + 0.0;
}

double sub_89A78(void *a1, double a2)
{
  if (qword_DE6760 != -1)
  {
    swift_once();
  }

  [qword_DEB918 valueForReferenceMetric:a2];
  [a1 displayScale];
  sub_AB3A00();
  return a2;
}

uint64_t sub_89B20()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v37[0] = v1;
  *(&v37[0] + 1) = v4;
  v37[1] = xmmword_AF7C20;
  v37[2] = xmmword_AF82C0;
  v38 = v0;
  v39 = 1;
  v40 = xmmword_AF9C60;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v37);
  v22 = v3;
  v24 = v4;
  v21 = v4;
  v20 = v0;
  sub_2F118(v37, v55);
  v23 = v5;

  v6 = sub_ABA560();
  v19 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v7 = qword_E718D8;
  v8 = qword_E718D8;
  v9 = [v2 clearColor];
  *&v31[0] = v7;
  *(&v31[0] + 1) = v9;
  v31[1] = xmmword_AF7C20;
  v32 = 0;
  v33 = 0;
  v34 = v6;
  v35 = 2;
  v36 = xmmword_AF9C70;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v31);
  v11 = objc_opt_self();
  v18 = v8;
  v17 = v9;
  v16 = v6;
  sub_2F118(v31, v55);

  v12 = [v11 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v13 = [v2 clearColor];
  *&v25[0] = v1;
  *(&v25[0] + 1) = v13;
  v25[1] = xmmword_AF7C20;
  v26 = 0;
  v27 = 0;
  v28 = v12;
  v29 = 1;
  v30 = xmmword_AF9C70;
  swift_allocObject();
  TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF7C50;
  *(v14 + 32) = v23;
  *(v14 + 40) = v10;
  sub_2F118(v25, v55);

  v41[0] = v1;
  v41[1] = v13;
  v42 = xmmword_AF7C20;
  v43 = 0;
  v44 = 0;
  v45 = v12;
  v46 = 1;
  v47 = xmmword_AF9C70;
  sub_2F174(v41);
  v48[0] = v7;
  v48[1] = v9;
  v49 = xmmword_AF7C20;
  v50 = 0;
  v51 = 0;
  v52 = v6;
  v53 = 2;
  v54 = xmmword_AF9C70;
  sub_2F174(v48);
  v55[0] = v1;
  v55[1] = v24;
  v56 = xmmword_AF7C20;
  v57 = xmmword_AF82C0;
  v58 = v19;
  v59 = 1;
  v60 = xmmword_AF9C60;
  sub_2F174(v55);

  return v23;
}

unint64_t sub_89F60()
{
  result = qword_DE6EE0;
  if (!qword_DE6EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE6EE0);
  }

  return result;
}

uint64_t sub_89FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8A01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_8A08C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8A0F4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

void sub_8A12C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsLayout];
}

double sub_8A174@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v5 clearColor];
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = a1;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 1;
  result = 16.0;
  *(a2 + 64) = xmmword_AF9C80;
  return result;
}

uint64_t sub_8A240()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8A2B8()
{
  result = qword_DEBA38;
  if (!qword_DEBA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEBA30, &qword_B016E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBA38);
  }

  return result;
}

uint64_t sub_8A390()
{
  sub_89F60();
  v0 = sub_ABA580();
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v1 clearColor];
  *&v20[0] = v2;
  *(&v20[0] + 1) = v3;
  v20[1] = xmmword_AF7C20;
  v20[2] = xmmword_AF82C0;
  v21 = v0;
  v22 = 1;
  v23 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000010, 0x8000000000B4D560, v20);
  v13 = v2;
  v12 = v3;
  v11 = v0;
  sub_2F118(v20, v31);

  v5 = sub_ABA560();
  v6 = [v1 whiteColor];
  v7 = [v1 clearColor];
  *&v14[0] = v6;
  *(&v14[0] + 1) = v7;
  v14[1] = xmmword_AF7C20;
  v15 = 0;
  v16 = 0;
  v17 = v5;
  v18 = 2;
  v19 = xmmword_AF9C90;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x7470697263736564, 0xEF747865546E6F69, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF7C50;
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  v24[0] = v6;
  v24[1] = v7;
  v25 = xmmword_AF7C20;
  v26 = 0;
  v27 = 0;
  v28 = v5;
  v29 = 2;
  v30 = xmmword_AF9C90;
  sub_2F118(v14, v31);

  sub_2F174(v24);
  v31[0] = v2;
  v31[1] = v3;
  v32 = xmmword_AF7C20;
  v33 = xmmword_AF82C0;
  v34 = v0;
  v35 = 1;
  v36 = xmmword_AF9C80;
  sub_2F174(v31);

  return v4;
}

void sub_8A64C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTitle);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText);
  *v6 = 0;
  v6[1] = 0;
  v7 = v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_isDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_layoutStyle) = 0;
  v8 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v10 = sub_80104(v9);

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent) = 0;
  v11 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextStackView;
  type metadata accessor for TextStackView();
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell____lazy_storage___selectedIndicatorView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_showDescriptionAndGradient) = 1;
  v12 = (v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextComponents);
  *v12 = sub_89B20();
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v16 = (v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextComponent);
  *v16 = sub_8A390();
  v16[1] = v17;
  v16[2] = v18;
  v19 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextComponent;
  sub_8A174(1u, v20);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  *(v1 + v19) = TextStackView.Component.init(identifier:labelProperties:)(0x6E6F697461727564, 0xE800000000000000, v20);
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell__thumbnailHorizontalAlignment) = 0;
  sub_ABAFD0();
  __break(1u);
}

BOOL static TextColor.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_8A924();
      return sub_ABA790() & 1;
    }

    return 0;
  }

  return !a2;
}

unint64_t sub_8A924()
{
  result = qword_DFA720;
  if (!qword_DFA720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DFA720);
  }

  return result;
}

void TextColor.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_ABB5D0(0);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(1uLL);
  }
}

Swift::Int TextColor.hashValue.getter(uint64_t a1)
{
  sub_ABB5C0();
  if (a1)
  {
    sub_ABB5D0(0);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(1uLL);
  }

  return sub_ABB610();
}

Swift::Int sub_8AA1C()
{
  v1 = *v0;
  sub_ABB5C0();
  if (v1)
  {
    sub_ABB5D0(0);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(1uLL);
  }

  return sub_ABB610();
}

void sub_8AA80(uint64_t a1)
{
  if (*v1)
  {
    sub_ABB5D0(0);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(1uLL);
  }
}

Swift::Int sub_8AAD8(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  if (v2)
  {
    sub_ABB5D0(0);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(1uLL);
  }

  return sub_ABB610();
}

unint64_t sub_8AB3C()
{
  result = qword_DEBA40;
  if (!qword_DEBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBA40);
  }

  return result;
}

BOOL sub_8AB90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_8A924();
    return sub_ABA790() & 1;
  }

  return result;
}

uint64_t sub_8ABEC(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8AC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_8ACB8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_showsViewController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for TVShowsViewController(0)) init];
  v2 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_moviesViewController;
  v3 = [objc_allocWithZone(type metadata accessor for MoviesViewController(0)) init];
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___contentFilteringController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_barButtonItemsBinding] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_contentOffsetObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF7C50;
  v5 = *&v0[v1];
  *(v4 + 32) = v5;
  *(v4 + 40) = v3;
  *&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_viewControllers] = v4;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TVShowsAndMoviesViewController();
  v6 = v5;
  v7 = v3;
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

void sub_8AE20()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVShowsAndMoviesViewController();
  v40.receiver = v0;
  v40.super_class = v6;
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  v37[2] = v3;
  if (qword_DE6C58 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    [v8 setBackgroundColor:qword_E71898];

    v9 = [v1 navigationItem];
    v10 = [v1 traitCollection];
    v11 = sub_2B51D8(v10);
    v13 = v12;

    sub_387430(v11, v13);
    v8 = [v1 navigationItem];
    [v8 _setSupportsTwoLineLargeTitles:1];

    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_viewControllers];
    v39 = v1;
    v37[1] = v5;
    if (v14 >> 62)
    {
      break;
    }

    v5 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_5:
    v15 = 0;
    v38 = v14 & 0xC000000000000001;
    while (1)
    {
      if (v38)
      {
        v17 = sub_35F8D4(v15, v14);
      }

      else
      {
        if (v15 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v17 = *(v14 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v20 = [v17 title];
      if (v20)
      {
        v21 = v20;
        sub_AB92A0();
      }

      v16 = sub_8BF90();
      v1 = *&v16[OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl];

      v8 = sub_AB9260();

      [v1 insertSegmentWithTitle:v8 atIndex:v15 animated:0];

      ++v15;
      if (v19 == v5)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v5 = sub_ABB060();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_18:
  v22 = v39;
  v23 = sub_8BF90();
  v24 = *&v23[OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl];

  [v24 setSelectedSegmentIndex:0];
  v25 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView;
  v26 = *(*&v22[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView] + OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = sub_13C80(0, &qword_DEBAE0, UISegmentedControl_ptr);
  v29 = v26;
  ControlEventHandling<>.on(_:handler:)(4096, sub_8CB4C, v27, v28);

  v30 = [v22 view];
  if (v30)
  {
    v31 = v30;
    [v30 addSubview:*&v22[v25]];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v32 = sub_AB9260();

    [v22 setTitle:v32];

    *(*&v22[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_showsViewController] + qword_DFE278) = 1;
    *(*&v22[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_moviesViewController] + qword_DFE278) = 1;
    sub_8C004();
    v33 = sub_8B7C4();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = *(v33 + 88);
    v36 = *(v33 + 96);
    *(v33 + 88) = sub_8CB54;
    *(v33 + 96) = v34;

    sub_17654(v35, v36);

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_8B378(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_8C004();
  }
}

double sub_8B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_showsViewController);

    sub_B6E78();

    sub_43018C(a1, a2);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v10 = v8;
    v11 = *(v8 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_moviesViewController);

    sub_18F4F0();

    sub_43018C(a1, a2);
  }

  return result;
}

void sub_8B524(uint64_t a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for TVShowsAndMoviesViewController();
  objc_msgSendSuper2(&v20, "viewDidLayoutSubviews");
  sub_8C0F0();
  v2 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController];
  if (v3)
  {
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        [v5 setFrame:?];

        v8 = *&v1[v2];
        if (v8)
        {
          v9 = v8;
          v10 = sub_8BF90();
          [v10 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v21.origin.x = v12;
          v21.origin.y = v14;
          v21.size.width = v16;
          v21.size.height = v18;
          Height = CGRectGetHeight(v21);
          [v9 additionalSafeAreaInsets];
          [v9 setAdditionalSafeAreaInsets:Height];
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_8B7C4()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___contentFilteringController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___contentFilteringController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___contentFilteringController];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v3 = sub_AB9320();
    v5 = v4;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v6 = v0;
    v2 = sub_4309D4(v3, v5);

    *&v0[v1] = v2;
  }

  return v2;
}

void sub_8B950(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

LABEL_6:
    v9 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_contentOffsetObserver;
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_contentOffsetObserver];
    *&v2[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_contentOffsetObserver] = 0;

    v11 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_barButtonItemsBinding;
    *&v2[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_barButtonItemsBinding] = 0;

    if (a1)
    {
      v12 = a1;
      UIViewController.remove(_:)(v12);
    }

    v13 = *&v2[v4];
    if (v13)
    {
      isa = v13;
      UIViewController.add(_:)(isa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF85F0;
      v16 = [(objc_class *)isa navigationItem];
      KeyPath = swift_getKeyPath();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB00, qword_AF9200);
      *(inited + 56) = v18;
      *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
      *(inited + 32) = v16;
      *(inited + 40) = KeyPath;
      v19 = [(objc_class *)isa navigationItem];
      v20 = swift_getKeyPath();
      *(inited + 96) = v18;
      *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
      *(inited + 72) = v19;
      *(inited + 80) = v20;
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for Whitetail.Binding();
      swift_allocObject();

      v22 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_8CB24, v21);

      *&v2[v11] = v22;

      v23 = [(objc_class *)isa contentScrollView];
      if (v23)
      {
        v24 = v23;
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = objc_allocWithZone(ScrollViewContentOffsetObserver);
        aBlock[4] = sub_8CB2C;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2DDCF4;
        aBlock[3] = &block_descriptor_11;
        v27 = _Block_copy(aBlock);

        v28 = [v26 initWithScrollView:v24 changeHandler:v27];
        _Block_release(v27);

        v29 = *&v2[v9];
        *&v2[v9] = v28;

        goto LABEL_13;
      }
    }

    else
    {
      v30 = [v2 navigationItem];
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      isa = sub_AB9740().super.isa;
      [v30 setRightBarButtonItems:isa animated:1];
    }

LABEL_13:
    v31 = [v2 view];
    if (v31)
    {
      v32 = v31;
      [v31 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_ABA790();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_8BD30(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationItem];

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController);
      if (v6)
      {
        v7 = v6;

        v5 = [v7 navigationItem];
        v8 = [v5 leftBarButtonItems];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    [v3 setLeftBarButtonItems:v8 animated:1];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 navigationItem];

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(v12 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController);
      if (v14)
      {
        v15 = v14;

        v13 = [v15 navigationItem];
        v16 = [v13 rightBarButtonItems];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    [v11 setRightBarButtonItems:v16 animated:1];
  }
}

void sub_8BF3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_8C0F0();
  }
}

id sub_8BF90()
{
  v1 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TVShowsAndMoviesViewController.SegmentedControlContainerView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_8C004()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_viewControllers);
  v2 = sub_8BF90();
  v3 = *&v2[OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl];

  v4 = [v3 selectedSegmentIndex];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_35F8D4(v4, v1);
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(v1 + 8 * v4 + 32);
LABEL_5:
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController);
  *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController) = v5;
  v6 = v5;
  sub_8B950(v7);
}

void sub_8C0F0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v60.origin.x = v4;
  v60.origin.y = v6;
  v60.size.width = v8;
  v60.size.height = v10;
  v11 = CGRectGetMinY(v60) + 0.0;
  v12 = sub_8BF90();
  v61.origin.x = v4;
  v61.origin.y = v6;
  v61.size.width = v8;
  v61.size.height = v10;
  [v12 sizeThatFits:{CGRectGetWidth(v61), 0.0}];
  v14 = v13;
  v16 = v15;

  v17 = [v0 contentScrollView];
  if (v17)
  {
    v18 = v17;
    v62.origin.x = 0.0;
    v62.origin.y = v11;
    v62.size.width = v14;
    v62.size.height = v16;
    v19 = v11 - CGRectGetHeight(v62);
    [v18 contentOffset];
    v21 = v20;

    v11 = v19 - v21;
  }

  v22 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView] setFrame:{0.0, v11, v14, v16}];
  v23 = [v0 view];
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = v23;
  [v23 bringSubviewToFront:*&v0[v22]];

  v25 = [v0 navigationController];
  if (!v25)
  {
    return;
  }

  v26 = v25;
  v27 = [v25 navigationBar];

  if (!v27)
  {
    return;
  }

  v28 = [v0 view];
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = v28;
  v58 = v27;
  [v58 frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v58 superview];

  [v29 convertRect:v38 fromView:{v31, v33, v35, v37}];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v58 defaultHeightForMetrics:0];
  v47 = [v0 view];
  if (!v47)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = [*&v0[v22] superview];
  [v48 convertRect:v49 fromView:{0.0, v11, v14, v16}];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v63.origin.x = v51;
  v63.origin.y = v53;
  v63.size.width = v55;
  v63.size.height = v57;
  CGRectGetMinY(v63);
  v64.origin.x = v40;
  v64.origin.y = v42;
  v64.size.width = v44;
  v64.size.height = v46;
  CGRectGetMinY(v64);
}

char *sub_8C468()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl;
  *&v0[v1] = [objc_allocWithZone(UISegmentedControl) init];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TVShowsAndMoviesViewController.SegmentedControlContainerView();
  v2 = objc_msgSendSuper2(&v5, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setInsetsLayoutMarginsFromSafeArea:0];
  [v2 setPreservesSuperviewLayoutMargins:0];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  [v2 addSubview:*&v2[OBJC_IVAR____TtCC16MusicApplication30TVShowsAndMoviesViewControllerP33_0A44ACF94072246E8AD16A61955F73C029SegmentedControlContainerView_segmentedControl]];
  return v2;
}

id sub_8C9B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_8CAEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_8CB5C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_showsViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for TVShowsViewController(0)) init];
  v2 = OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_moviesViewController;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for MoviesViewController(0)) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___contentFilteringController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_selectedViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_barButtonItemsBinding) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController_contentOffsetObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication30TVShowsAndMoviesViewController____lazy_storage___segmentedControlContainerView) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_8CC40()
{
  v1 = v0;
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v58 - v7;
  v9 = [v0 traitCollection];
  v10 = UITraitCollection.isMediaPicker.getter(v9);

  if (v10 || (static ApplicationCapabilities.shared.getter(v62), sub_70C54(v62), (v62[1] & 1) == 0))
  {
    v48 = &v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v51 = *(v48 + 1);
      ObjectType = swift_getObjectType();
      (*(v51 + 8))(0, ObjectType, v51);
    }
  }

  else
  {
    v11 = [v1 traitCollection];
    [v11 displayScale];
    v13 = v12;
    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_accountButton];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v19 = *&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_size];
    v20 = *&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_size + 8];
    [v14 setBounds:?];
    sub_ABA670();
    v21 = sub_ABA680();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
    sub_ABA6A0();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = *&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_loadedArtworkCatalog];
    if (v23)
    {
      v24 = *&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson];
      v25 = v23;
      v59 = v11;
      v26 = v25;
      v27 = v24;
      v60 = v14;
      v28 = v27;
      [v26 setFittingSize:{v19, v20}];
      [v26 setDestinationScale:v13];
      v29 = sub_AB9260();
      [v26 setCacheIdentifier:v29 forCacheReference:*&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_artworkCachingReference]];

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = v30;
      v32[3] = v31;
      v32[4] = v22;
      aBlock[4] = sub_9013C;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_4175C0;
      aBlock[3] = &block_descriptor_19;
      v33 = _Block_copy(aBlock);

      [v26 setDestination:v60 configurationBlock:v33];
      _Block_release(v33);

      v11 = v59;
      v14 = v60;
    }

    swift_beginAccess();
    if ((*(v22 + 16) & 1) == 0)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      *v5 = sub_ABA150();
      (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
      v34 = sub_AB7CF0();
      (*(v3 + 8))(v5, v2);
      if ((v34 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v35 = [objc_opt_self() configurationWithWeight:5];
      v36 = sub_AB9260();
      v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

      [v14 setImage:v37 forState:0];
      v38 = [v14 imageView];
      if (v38)
      {
        v39 = v38;
        UIView.border.setter(0, 0, 0);
      }
    }

    v40 = *&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_notificationBadgeView];
    v41 = *&v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson];
    if (v41)
    {
      v41 = [v41 pendingRequestsCount];
    }

    sub_30D14(v41);
    [v40 sizeThatFits:{0.0, 0.0}];
    v43 = v42;
    v45 = v44;
    if ([v1 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
    {
      v63.origin.x = v16;
      v63.origin.y = v18;
      v63.size.width = v19;
      v63.size.height = v20;
      v64 = CGRectOffset(v63, -4.0, -4.0);
      x = v64.origin.x;
      y = v64.origin.y;
    }

    else
    {
      v65.origin.x = v16;
      v65.origin.y = v18;
      v65.size.width = v19;
      v65.size.height = v20;
      x = CGRectGetMaxX(v65) - v43 + 4.0;
      v66.origin.x = v16;
      v66.origin.y = v18;
      v66.size.width = v19;
      v66.size.height = v20;
      y = CGRectGetMinY(v66) + -4.0;
    }

    [v14 setFrame:{v16, v18, v19, v20}];
    [v40 setFrame:{x, y, v43, v45}];
    v53 = &v1[OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate];
    v54 = swift_unknownObjectWeakLoadStrong();
    if (v54)
    {
      v55 = v54;
      v56 = *(v53 + 1);
      v57 = swift_getObjectType();
      (*(v56 + 8))(v1, v57, v56);
    }

    [v1 accessibilityUpdateProfileHeader];
  }
}

char *sub_8D3C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0, &qword_AF8BD0);
  __chkstk_darwin();
  v81 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA628, &qword_AF8BD8);
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin();
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA630, &qword_AF8BE0);
  v75 = *(v15 - 8);
  v76 = v15;
  __chkstk_darwin();
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA638, &qword_AF8BE8);
  v77 = *(v18 - 8);
  v78 = v18;
  __chkstk_darwin();
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA640, &qword_AF8BF0);
  v79 = *(v21 - 8);
  v80 = v21;
  __chkstk_darwin();
  v23 = &v71 - v22;
  *&v4[OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.2D, #28.0 }

  *&v4[OBJC_IVAR____TtC16MusicApplication13AccountButton_size] = _Q0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13AccountButton_loadedArtworkCatalog] = 0;
  v29 = OBJC_IVAR____TtC16MusicApplication13AccountButton_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v5[v29] = swift_allocObject();
  *&v5[OBJC_IVAR____TtC16MusicApplication13AccountButton_allowedServicesSubscription] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication13AccountButton_networkConnectivityObserver] = 0;
  v30 = OBJC_IVAR____TtC16MusicApplication13AccountButton_accountButton;
  *&v5[v30] = sub_8F584();
  v31 = objc_allocWithZone(type metadata accessor for NotificationBadgeView());
  v32 = sub_308B4(&dword_0 + 1);
  v33 = v32[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled];
  v32[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled] = 1;
  if ((v33 & 1) == 0)
  {
    sub_3137C();
  }

  v34 = OBJC_IVAR____TtC16MusicApplication13AccountButton_notificationBadgeView;
  v32[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically] = 1;
  *&v5[v34] = v32;
  v82.receiver = v5;
  v82.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  v36 = *&v35[OBJC_IVAR____TtC16MusicApplication13AccountButton_accountButton];
  v37 = v35;
  static ApplicationCapabilities.shared.getter(v83);
  v38 = v83[4];

  sub_70C54(v83);
  v39 = sub_472A84(8, v38);

  [v36 setEnabled:v39 & 1];

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_13C80(0, &qword_DF13D0, UIButton_ptr);
  v42 = v37;
  ControlEventHandling<>.on(_:handler:)(64, sub_8FEA8, v40, v41);

  v72 = v36;
  [v42 addSubview:v36];
  [v42 addSubview:*&v42[OBJC_IVAR____TtC16MusicApplication13AccountButton_notificationBadgeView]];
  v43 = ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  ApplicationCapabilities.Controller.$capabilities.getter();

  swift_getKeyPath();
  sub_36A00(&qword_DEA648, &qword_DEA628, &qword_AF8BD8, &protocol conformance descriptor for Published<A>.Publisher);
  v44 = v74;
  sub_AB5560();
  (*(v73 + 8))(v14, v44);

  sub_36A00(&qword_DEA650, &qword_DEA630, &qword_AF8BE0, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_36A00(&qword_DEA658, &unk_DFC570, &qword_B07BA0, &protocol conformance descriptor for Set<A>);
  v45 = v76;
  sub_AB55B0();
  (*(v75 + 8))(v17, v45);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v46 = sub_ABA150();
  v84[0] = v46;
  v47 = sub_ABA130();
  v48 = v81;
  (*(*(v47 - 8) + 56))(v81, 1, 1, v47);
  sub_36A00(&qword_DEA660, &qword_DEA638, &qword_AF8BE8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_60090();
  v49 = v78;
  sub_AB5590();
  sub_12E1C(v48, &unk_DFA9F0, &qword_AF8BD0);
  (*(v77 + 8))(v20, v49);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_36A00(&qword_DEA670, &qword_DEA640, &qword_AF8BF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v50 = v80;
  v51 = sub_AB55C0();
  (*(v79 + 8))(v23, v50);

  *&v42[OBJC_IVAR____TtC16MusicApplication13AccountButton_allowedServicesSubscription] = v51;

  v52 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v53 = *v43;
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v55 = v42;
  v56 = v52;

  *&v55[OBJC_IVAR____TtC16MusicApplication13AccountButton_networkConnectivityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v56, v53, 1, 1, sub_8FEB8, v54);

  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  v57 = qword_E70D38;
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_8F9A8(v55, sub_8FEC0, v58, v57);

  static ApplicationCapabilities.shared.getter(v84);
  sub_70C54(v84);
  if (v85 == 2)
  {
  }

  else
  {
    v59 = sub_ABB3C0();

    if ((v59 & 1) == 0)
    {

LABEL_13:
      v70 = v72;
      goto LABEL_14;
    }
  }

  v60 = [objc_opt_self() standardUserDefaults];
  v61 = sub_8E42C();
  if (!v61)
  {

    goto LABEL_13;
  }

  v62 = v61;

  v63 = objc_opt_self();
  v64 = v62;
  result = [v63 sharedStoreArtworkDataSource];
  if (result)
  {
    v66 = result;
    v67 = objc_allocWithZone(MPArtworkCatalog);
    v68 = v64;
    v69 = [v67 initWithToken:v68 dataSource:v66];

    v70 = *&v55[OBJC_IVAR____TtC16MusicApplication13AccountButton_loadedArtworkCatalog];
    *&v55[OBJC_IVAR____TtC16MusicApplication13AccountButton_loadedArtworkCatalog] = v69;

LABEL_14:
    return v55;
  }

  __break(1u);
  return result;
}

void sub_8DE84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_8DED8();
  }
}

void sub_8DED8()
{
  v4 = [objc_allocWithZone(type metadata accessor for JSSettingsContainerViewController(0)) init];
  v0 = [objc_allocWithZone(type metadata accessor for NavigationController()) initWithRootViewController:v4];
  [v0 setModalPresentationStyle:2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong presentViewController:v0 animated:1 completion:0];

    v3 = v0;
  }

  else
  {
    v3 = v4;
    v4 = v0;
  }
}

void sub_8DFA4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC16MusicApplication13AccountButton_accountButton) setEnabled:{sub_472A84(8, v2) & 1}];
  }
}

void sub_8E02C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_8CC40();
  }
}

void sub_8E080(void *a1, uint64_t a2)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB7C50();
  v8 = *(v16 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v15 = sub_ABA150();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_8FFD0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_12;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  sub_ABABB0();
  v14 = v15;
  sub_ABA160();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
  _Block_release(v12);
}

void sub_8E34C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_8E3AC(a2);
  }
}

void sub_8E3AC(void *a1)
{
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson);
  *(v1 + OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson) = a1;
  v2 = a1;
  if (sub_8FACC(v5))
  {
    v3 = sub_8EFC4();
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication13AccountButton_loadedArtworkCatalog);
    *(v1 + OBJC_IVAR____TtC16MusicApplication13AccountButton_loadedArtworkCatalog) = v3;

    sub_8CC40();
  }
}

uint64_t sub_8E42C()
{
  sub_36A48();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      sub_13C80(0, &qword_DEBB58, NSKeyedUnarchiver_ptr);
      sub_13C80(0, &qword_DEB5E0, MPStoreArtworkRequestToken_ptr);
      v0 = sub_ABA0D0();
      sub_466B8(0xD000000000000023, 0x8000000000B4DBC0);
      return v0;
    }
  }

  else
  {
    sub_12E1C(&v2, &unk_DE8E40, &unk_AF8050);
  }

  return 0;
}

id sub_8E5A8()
{
  ObjectType = swift_getObjectType();
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  v2 = qword_E70D38;
  v6 = xmmword_AF82C0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v3 = v0;
  sub_405000(&v6, v3, v2);

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_8E7CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v7 = sub_AB7C10();
  v47 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB7C50();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin();
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7CC0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v18 = Strong;
  v42 = a5;
  v43 = v14;
  v19 = *(Strong + OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson);
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  v21 = v20;
  if (v19)
  {
    if (!v20 || (sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr), v22 = v19, v23 = sub_ABA790(), v21, v22, (v23 & 1) == 0))
    {
      v21 = v18;
LABEL_8:

LABEL_9:
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v18 = sub_ABA150();
      aBlock[4] = sub_90148;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_22;
      v24 = _Block_copy(aBlock);

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_8FFF0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      sub_ABA160();
      (*(v47 + 8))(v9, v7);
      (*(v45 + 8))(v12, v46);
      _Block_release(v24);
LABEL_19:

      return;
    }
  }

  else if (v20)
  {

    goto LABEL_8;
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v16 = sub_ABA150();
  v25 = v43;
  (*(v43 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v26 = sub_AB7CF0();
  (*(v25 + 8))(v16, v13);
  if (v26)
  {
    v27 = OBJC_IVAR____TtC16MusicApplication13AccountButton_accountButton;
    v28 = *&v18[OBJC_IVAR____TtC16MusicApplication13AccountButton_accountButton];
    v29 = v44;
    v30 = v44;
    if (!v44)
    {
      v31 = [objc_opt_self() configurationWithWeight:5];
      v32 = sub_AB9260();
      v30 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];
    }

    v33 = v29;
    [v28 setImage:v30 forState:0];

    v34 = [*&v18[v27] imageView];
    if (v34)
    {
      v35 = v34;
      if (v29)
      {
        v36 = UIView.Border.artwork.unsafeMutableAddressor();
        v37 = *v36;
        v38 = *(v36 + 8);
        v39 = v36[2];
        v40 = v39;
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
      }

      UIView.border.setter(v37, v38, v39);
    }

    v41 = v42;
    swift_beginAccess();
    *(v41 + 16) = 1;
    goto LABEL_19;
  }

  __break(1u);
}

void sub_8ED5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_8CC40();
  }
}

void sub_8EDB0(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.isMediaPicker.getter(v3);

  if (!a1 || UITraitCollection.isMediaPicker.getter(v5) != v4)
  {
    sub_8CC40();
  }
}

void sub_8EED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E70C38 = v6;
}

id sub_8EFC4()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson];
  if (!v1)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v33 = 0u;
    v34 = 0u;
    v23[0] = 0xD000000000000023;
    v23[1] = 0x8000000000B4DBC0;
    v9 = sub_36A48();
    NSUserDefaults.subscript.setter(&v33, v23, &type metadata for String, v9);

    return 0;
  }

  v2 = v1;
  v3 = [v2 artworkCatalog];
  v4 = v3;
  if (!v3)
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_8;
  }

  v5 = [v3 token];
  sub_ABAB50();
  swift_unknownObjectRelease();
  if (!*(&v34 + 1))
  {
LABEL_8:
    sub_12E1C(&v33, &unk_DE8E40, &unk_AF8050);
    goto LABEL_9;
  }

  sub_13C80(0, &qword_DEB5E0, MPStoreArtworkRequestToken_ptr);
  if (swift_dynamicCast())
  {
    [v23[0] setFormat:ICStoreArtworkInfoImageFormatJPEG];
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = v23[0];
    sub_8F400(v23[0]);

    return v4;
  }

LABEL_9:
  v10 = v2;
  v11 = [v10 name];
  if (v11)
  {
    v12 = v0;
    v13 = v11;
    sub_AB92A0();

    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
    UnfairLock.locked<A>(_:)(sub_90048);
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v33 = *v23;
    v34 = v24;
    if (sub_90064(&v33) == 1)
    {
    }

    else if (BYTE9(v36) == 1)
    {
      v14 = [v12 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1;
      v15 = objc_allocWithZone(MusicMonogramArtworkToken);
      v16 = sub_AB9260();

      v17 = [v15 initWithFullName:v16 rightToLeft:v14];

      if (v17)
      {
        v18 = [objc_opt_self() sharedMonogramArtworkDataSource];
        v19 = objc_allocWithZone(MPArtworkCatalog);
        v20 = v17;
        v21 = [v19 initWithToken:v20 dataSource:v18];

        sub_12E1C(v23, &unk_E05300, &unk_AFA030);
        return v21;
      }

      else
      {

        sub_12E1C(v23, &unk_E05300, &unk_AFA030);
      }
    }

    else
    {

      sub_12E1C(v23, &unk_E05300, &unk_AFA030);
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_8F400(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = objc_opt_self();
  *&v12 = 0;
  v3 = a1;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
  v5 = v12;

  if (!v4)
  {
    sub_AB3050();

    swift_willThrow();

LABEL_6:
    v6 = 0;
    v8 = 0xF000000000000000;
    goto LABEL_7;
  }

  v6 = sub_AB3260();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
LABEL_7:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_8;
  }

  *(&v13 + 1) = &type metadata for Data;
  *&v12 = v6;
  *(&v12 + 1) = v8;
LABEL_8:
  v11[0] = 0xD000000000000023;
  v11[1] = 0x8000000000B4DBC0;
  sub_9007C(v6, v8);
  v9 = sub_36A48();
  NSUserDefaults.subscript.setter(&v12, v11, &type metadata for String, v9);

  return sub_466A4(v6, v8);
}

id sub_8F584()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v0 = [objc_opt_self() buttonWithType:0];
  [v0 setClipsToBounds:1];
  v1 = v0;
  [v1 setContentHorizontalAlignment:3];
  [v1 setContentVerticalAlignment:3];

  [v1 setAccessibilityIgnoresInvertColors:1];
  [v1 setShowsLargeContentViewer:1];
  [v1 setScalesLargeContentImage:1];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = sub_AB9260();

  [v1 setLargeContentTitle:v2];

  v3 = [objc_opt_self() configurationWithWeight:5];
  v4 = sub_AB9260();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  [v1 setLargeContentImage:v5];
  return v1;
}

id sub_8F818()
{
  if (qword_DE6780 != -1)
  {
    swift_once();
  }

  v0 = qword_E70C38;

  return v0;
}

uint64_t sub_8F874(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getObjectType();
  v8 = sub_401870();
  v13 = &off_D10EC0;
  swift_unknownObjectWeakInit();
  v14 = v8;
  v15 = a2;
  v16 = a3;
  sub_8FEC8(v12, v11);

  v9 = a1;
  sub_405000(v11, v9, a4);

  UnfairLock.assertNotOwned()();
  UnfairLock.locked<A>(_:)(sub_90188);
  return sub_8FF3C(v12);
}

uint64_t sub_8F9A8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getObjectType();
  v8 = sub_8F818();
  v13 = &off_CF50A0;
  swift_unknownObjectWeakInit();
  v14 = v8;
  v15 = a2;
  v16 = a3;
  sub_8FEC8(v12, v11);

  v9 = a1;
  sub_405000(v11, v9, a4);

  UnfairLock.assertNotOwned()();
  UnfairLock.locked<A>(_:)(sub_8FF24);
  return sub_8FF3C(v12);
}

BOOL sub_8FACC(void *a1)
{
  v3 = [a1 artworkCatalog];
  v4 = OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson;
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson);
  if (!v5)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v6 = [v5 artworkCatalog];
  v7 = v6;
  if (!v3)
  {
    if (v6)
    {

      return 1;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_7:

    return 1;
  }

  sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
  v8 = sub_ABA790();

  if ((v8 & 1) == 0)
  {
    return 1;
  }

LABEL_10:
  if (a1 && (v10 = [a1 name]) != 0)
  {
    v11 = v10;
    v12 = sub_AB92A0();
    v14 = v13;

    v15 = *(v1 + v4);
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = *(v1 + v4);
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  v16 = v15;
  v17 = [v16 name];
  if (v17)
  {
    v18 = v17;
    v19 = sub_AB92A0();
    v21 = v20;

    if (v14)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (!v21)
    {
      goto LABEL_27;
    }

LABEL_25:

    return 1;
  }

LABEL_20:
  v19 = 0;
  v21 = 0;
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_21:
  if (!v21)
  {
    goto LABEL_25;
  }

  if (v12 == v19 && v14 == v21)
  {
  }

  else
  {
    v22 = sub_ABB3C0();

    if ((v22 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_27:
  if (a1)
  {
    v23 = [a1 pendingRequestsCount];
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v1 + v4);
  if (v24)
  {
    v25 = [v24 pendingRequestsCount];
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v23 == v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  if (!a1)
  {
    v27 = v24 == 0;
  }

  return !v27;
}

uint64_t sub_8FD28()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.2D, #28.0 }

  *(v0 + OBJC_IVAR____TtC16MusicApplication13AccountButton_size) = _Q0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13AccountButton_profilePerson) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13AccountButton_loadedArtworkCatalog) = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication13AccountButton_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v7) = swift_allocObject();
  *(v1 + OBJC_IVAR____TtC16MusicApplication13AccountButton_allowedServicesSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication13AccountButton_networkConnectivityObserver) = 0;
  v8 = OBJC_IVAR____TtC16MusicApplication13AccountButton_accountButton;
  *(v1 + v8) = sub_8F584();
  v9 = objc_allocWithZone(type metadata accessor for NotificationBadgeView());
  v10 = sub_308B4(&dword_0 + 1);
  v11 = v10[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled];
  v10[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled] = 1;
  if ((v11 & 1) == 0)
  {
    sub_3137C();
  }

  v12 = OBJC_IVAR____TtC16MusicApplication13AccountButton_notificationBadgeView;
  v10[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically] = 1;
  *(v1 + v12) = v10;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_8FE70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_8FF90()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8FFF0()
{
  result = qword_DF06C0;
  if (!qword_DF06C0)
  {
    sub_AB7C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF06C0);
  }

  return result;
}

uint64_t sub_90064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_9007C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_90090(a1, a2);
  }

  return a1;
}

uint64_t sub_90090(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_900F4()
{

  return swift_deallocObject();
}

uint64_t TextAttributes.init(font:textColor:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = result;
  return result;
}

id TextAttributes.toDictionary(tintColor:)(void *a1)
{
  v2 = v1;
  v4 = sub_96A34(_swiftEmptyArrayStorage);
  v5 = [objc_opt_self() defaultParagraphStyle];
  [v5 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360, NSMutableParagraphStyle_ptr);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  [v31 setAlignment:_sSo15NSTextAlignmentV16MusicApplicationE012advancedTextB6PolicyAbC0fB0O_tcfC_0(*(v2 + 16))];
  [v31 setLineBreakMode:*(v2 + 24)];
  [v31 setLineBreakStrategy:0xFFFFLL];
  [v31 setLineSpacing:*(v2 + 32)];
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_ABA320();
  v8 = sub_ABA310();
  v9 = sub_ABA330();

  LODWORD(v10) = 0.5;
  if (v6)
  {
    *&v10 = 1.0;
  }

  if ((v9 & 1) == 0)
  {
    *&v10 = 0.0;
  }

  [v31 setHyphenationFactor:v10];
  v11 = NSParagraphStyleAttributeName;
  v12 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v4;
  sub_91C1C(v12, v11, isUniquelyReferenced_nonNull_native);

  v14 = *(v2 + 48);
  v15 = NSFontAttributeName;
  v16 = v14;
  v17 = [v16 _fontAdjustedForCurrentContentSizeCategory];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v4;
  sub_91C1C(v16, v15, v19);

  v20 = *(v2 + 8);
  v30[0] = v20;
  if (!v20)
  {
    v20 = a1;
  }

  sub_9A60C(v30, &v31);
  [v20 alphaComponent];
  if (v21 > 0.0)
  {
    v22 = NSBackgroundColorAttributeName;
    v23 = v20;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v4;
    sub_91C1C(v23, v22, v24);

    v4 = v31;
  }

  v25 = *v2;
  v31 = v25;
  if (!v25)
  {
    v25 = a1;
  }

  v26 = NSForegroundColorAttributeName;
  sub_9A60C(&v31, &v29);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v4;
  sub_91C1C(v25, v26, v27);

  return v29;
}

id TextAttributes.font.getter()
{
  v1 = *(v0 + 48);
  v2 = [v1 _fontAdjustedForCurrentContentSizeCategory];
  if (v2)
  {
    v3 = v2;

    return v3;
  }

  return v1;
}

void (*TextAttributes.font.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 48);
  a1[1] = v1;
  a1[2] = v3;
  v4 = v3;
  v5 = [v4 _fontAdjustedForCurrentContentSizeCategory];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  *a1 = v4;
  return sub_90610;
}

void sub_90610(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 48) = v5;
  }

  else
  {

    *(v2 + 48) = v4;
  }
}

id Search.Configuration.mediaPickerConfiguration.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TextAttributes.backgroundColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TextAttributes.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    sub_ABB5D0(0);
    sub_ABA7A0();
    if (*(v1 + 8))
    {
LABEL_3:
      sub_ABB5D0(0);
      sub_ABA7A0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_ABB5D0(1uLL);
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }
  }

  sub_ABB5D0(1uLL);
LABEL_6:
  sub_ABB5D0(*(v1 + 16));
  sub_ABB5D0(*(v1 + 24));
  v2 = *(v1 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  sub_ABB5D0(*(v1 + 40));
  return sub_ABA7A0();
}

Swift::Int TextAttributes.hashValue.getter()
{
  sub_ABB5C0();
  TextAttributes.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_9094C(uint64_t a1)
{
  sub_ABB5C0();
  TextAttributes.hash(into:)(v2);
  return sub_ABB610();
}

BOOL sub_90988(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v5, v7);
}

unint64_t sub_90A0C@<X0>(Swift::Int *a1@<X0>, MusicApplication::TextAlignment_optional *a2@<X8>)
{
  result = _s16MusicApplication13TextAlignmentO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

MusicApplication::TextCapitalization_optional __swiftcall TextCapitalization.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_90A54@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::String __swiftcall String.applyingCapitalization(_:)(MusicApplication::TextCapitalization a1)
{
  v3 = v2;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40, &qword_AFA040);
  __chkstk_darwin();
  v7 = v14 - v6;
  if (a1)
  {
    v14[0] = v4;
    v14[1] = v3;
    sub_AB3550();
    v8 = sub_AB35C0();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    sub_36A48();
    if (a1 == MusicApplication_TextCapitalization_uppercase)
    {
      v9 = sub_ABAA50();
    }

    else
    {
      v9 = sub_ABAA40();
    }

    v4 = v9;
    v3 = v10;
    sub_72894(v7);
  }

  else
  {
  }

  v11 = v4;
  v12 = v3;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

void TextAttributor.hash(into:)(uint64_t a1)
{
  if ((*(v1 + 40) & 0x8000000000000000) != 0)
  {
    v2 = sub_AB9540();
    sub_ABB5D0(~v2);
  }

  else
  {
    TextAttributes.hash(into:)(a1);
  }
}

uint64_t static TextAttributor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[5];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = a1[6];
    v7 = a1[4];
    v19[0] = v3;
    v19[1] = v4;
    v20 = *(a1 + 1);
    v21 = v7;
    v22 = v5;
    v23 = v6;
    v8 = a2[5];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = a2[6];
      v10 = a2[4];
      v11 = *(a2 + 1);
      v15[0] = *a2;
      v15[1] = v11;
      v16 = v10;
      v17 = v8;
      v18 = v9;
      return _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v19, v15);
    }

    return 0;
  }

  if ((a2[5] & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if (v3 == *a2 && v4 == a2[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

Swift::Int TextAttributor.hashValue.getter()
{
  sub_ABB5C0();
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  if (v2 < 0)
  {
    v5 = sub_AB9540();
    sub_ABB5D0(~v5);
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    v7[9] = *v0;
    v7[10] = v1;
    v8 = *(v0 + 16);
    v9 = v4;
    v10 = v2;
    v11 = v3;
    TextAttributes.hash(into:)(v7);
  }

  return sub_ABB610();
}

Swift::Int sub_90DAC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v7 = v0[5];
  v6 = v0[6];
  sub_ABB5C0();
  if (v7 < 0)
  {
    v8 = sub_AB9540();
    sub_ABB5D0(~v8);
  }

  else
  {
    v10[9] = v2;
    v10[10] = v1;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v7;
    v15 = v6;
    TextAttributes.hash(into:)(v10);
  }

  return sub_ABB610();
}

void sub_90E50(uint64_t a1)
{
  if ((*(v1 + 40) & 0x8000000000000000) != 0)
  {
    v2 = sub_AB9540();
    sub_ABB5D0(~v2);
  }

  else
  {
    TextAttributes.hash(into:)(a1);
  }
}

Swift::Int sub_90EC4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v8 = v1[5];
  v7 = v1[6];
  sub_ABB5C0();
  if (v8 < 0)
  {
    v9 = sub_AB9540();
    sub_ABB5D0(~v9);
  }

  else
  {
    v11[9] = v3;
    v11[10] = v2;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v15 = v8;
    v16 = v7;
    TextAttributes.hash(into:)(v11);
  }

  return sub_ABB610();
}

uint64_t sub_90F64(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[5];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[4];
    v13 = a2[6];
    v14 = a1[6];
    v15 = a1[4];
    v18 = a1 + 2;
    v16 = a1[2];
    v17 = v18[1];
    v22[0] = v4;
    v22[1] = v5;
    v23 = v16;
    v24 = v17;
    v25 = v15;
    v26 = v6;
    v27 = v14;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v28[0] = v7;
      v28[1] = v8;
      v29 = v10;
      v30 = v11;
      v31 = v12;
      v32 = v9;
      v33 = v13;
      return _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v22, v28);
    }

    return 0;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_ABB3C0();
}

void TextAttributedString.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_ABA7A0();
  }

  else
  {
    sub_AB93F0();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;
    sub_ABA7A0();
  }
}

Swift::Int TextAttributedString.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_ABB5C0();
  if (a4)
  {
    sub_ABA7A0();
  }

  else
  {
    sub_AB93F0();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;
    sub_ABA7A0();
  }

  return sub_ABB610();
}

Swift::Int sub_9119C()
{
  v1 = *(v0 + 24);
  sub_ABB5C0();
  if (v1)
  {
    sub_ABA7A0();
  }

  else
  {
    sub_AB93F0();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;
    sub_ABA7A0();
  }

  return sub_ABB610();
}

void sub_91244(uint64_t a1)
{
  if (*(v1 + 24))
  {
    sub_ABA7A0();
  }

  else
  {
    sub_AB93F0();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;
    sub_ABA7A0();
  }
}

Swift::Int sub_912F8(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_ABB5C0();
  if (v2)
  {
    sub_ABA7A0();
  }

  else
  {
    sub_AB93F0();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;
    sub_ABA7A0();
  }

  return sub_ABB610();
}

_OWORD *sub_913C0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2EC004(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_330244();
      goto LABEL_7;
    }

    sub_325C7C(v13, a3 & 1);
    v19 = sub_2EC004(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_9ACA0(a2, v21);
      return sub_957F0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_9ACFC(a1, v17);
}

void sub_91774(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_2EC170(a4, a5, a6 & 1);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_32604C(v22, a7 & 1);
      v17 = sub_2EC170(a4, a5, a6 & 1);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_330500();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 24 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3 & 1;

    sub_9AF20(v29, v30, v31);
    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v32 = v27[6] + 24 * v17;
  *v32 = a4;
  *(v32 + 8) = a5;
  *(v32 + 16) = a6 & 1;
  v33 = v27[7] + 24 * v17;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3 & 1;
  v34 = v27[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v35;

  sub_2BA40(a4, a5, a6 & 1);
}

void sub_91940(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_32636C(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_33069C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    sub_9AE98(v23);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_91ABC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2EC220(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_326614(v14, a3 & 1);
      v9 = sub_2EC220(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_33080C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  v24 = (a2 & 0xFFFFFFFFFFFFFF9);
}

id sub_91C1C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2F5AD8();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_3268B0(v13, a3 & 1);
      v8 = sub_2F5AD8();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for Key(0);
        result = sub_ABB4C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_330980();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_91D88(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2EC31C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_326B78(v14, a3 & 1);
      result = sub_2EC31C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_ABB4C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_330AE4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    v21 = v19[6] + 40 * result;
    v22 = *(a2 + 16);
    *v21 = *a2;
    *(v21 + 16) = v22;
    *(v21 + 32) = *(a2 + 32);
    v23 = (v19[7] + (result << 6));
    v24 = a1[1];
    v25 = a1[2];
    v26 = a1[3];
    *v23 = *a1;
    v23[1] = v24;
    v23[2] = v25;
    v23[3] = v26;
    v27 = v19[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v19[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + (result << 6);

  return sub_9B1AC(a1, v20);
}

void sub_91EF4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2EC3D0(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_326EC4(v15, a4 & 1);
      v10 = sub_2EC3D0(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_13C80(0, &qword_DE7500, UIViewController_ptr);
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_330C8C();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a2;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  v26 = a3;
}

void sub_92078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2EBF88(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_32714C(v18, a5 & 1);
      v13 = sub_2EBF88(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_330E18();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_92200(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2EC420(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_32740C(v13, a3 & 1);
      v8 = sub_2EC420(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for JSBarButtonItem(0);
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_330F90();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_92368(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2F5A90(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_327420(v16, a4 & 1);
      v11 = sub_2F5A90(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_330FA4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

void sub_924C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2EC004(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_3276A4(v13, a3 & 1);
      v19 = sub_2EC004(a2);
      if ((v14 & 1) != (v20 & 1))
      {
LABEL_17:
        sub_ABB4C0();
        __break(1u);
        return;
      }

      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_33110C();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    sub_9ACA0(a2, v27);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v21 = v16[6] + 40 * v10;
    v22 = v28;
    v23 = v27[1];
    *v21 = v27[0];
    *(v21 + 16) = v23;
    *(v21 + 32) = v22;
    *(v16[7] + 8 * v10) = a1;
    v24 = v16[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      v16[2] = v26;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

void sub_92678(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2F5A90(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_327E40(v14, a3 & 1);
      v9 = sub_2F5A90(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_331588();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

uint64_t sub_927C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_AB3820();
  v26 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2EC048(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_33159C();
      goto LABEL_9;
    }

    sub_327E54(v16, a3 & 1);
    v19 = sub_2EC048(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_9586C(v13, v10, a1, v21);
  }
}

void sub_929FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2EBF88(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_2EBF88(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_92B94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2EC514(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_328568(v14, a3 & 1);
      v9 = sub_2EC514(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_3319EC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_92CE0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_328818(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_331B48();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_92E70(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2EC120(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_328D3C(v13, a3 & 1);
      v8 = sub_2EC120(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_331E28();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_92FE8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2EC3D0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_328D50(v13, a3 & 1);
      v8 = sub_2EC3D0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_13C80(0, &qword_DE7500, UIViewController_ptr);
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_331E3C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_93160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2EC668(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_328D64(v20, a6 & 1);
      v15 = sub_2EC668(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_331E50();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 32 * v15);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_9330C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_331FD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_329034(v16, a4 & 1);
    v11 = sub_2EBF88(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_ABB4C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_9ACFC(a1, v22);
  }

  else
  {
    sub_95948(v11, a2, a3, a1, v21);
  }
}

id sub_9345C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2EC708(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_33217C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_3292EC(v13, a3 & 1);
    v8 = sub_2EC708(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for JSStoreFlowSegue(0);
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 16 * v8;

    return sub_9AF84(a1, v19);
  }

  else
  {
    sub_959B4(v8, a2, a1, v18);

    return a2;
  }
}

void sub_93590(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  v9 = sub_2EC5A8(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_329564(v14, a3 & 1);
      v9 = sub_2EC5A8(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_3322FC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = v8;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_936D8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_329840(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_332458();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    sub_160B4(a1, v21[7] + 32 * v11, &unk_DE8E40, &unk_AF8050);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  v23 = (v21[7] + 32 * v11);
  v24 = a1[1];
  *v23 = *a1;
  v23[1] = v24;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v26;
}

void sub_9385C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_329B08(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_33260C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    sub_9AD0C(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + (v11 << 6));
  v25 = *a1;
  v26 = a1[1];
  v27 = a1[3];
  v24[2] = a1[2];
  v24[3] = v27;
  *v24 = v25;
  v24[1] = v26;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_939E4(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2EC75C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_3327AC();
      goto LABEL_7;
    }

    sub_329E30(v15, a4 & 1);
    v26 = sub_2EC75C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for _NSRange(0);
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_AB31C0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:

  return sub_95A1C(v12, a2, a3, a1, v18);
}

id sub_93B5C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2EC7DC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_332A18();
      v8 = v16;
      goto LABEL_8;
    }

    sub_32A1A4(v13, a3 & 1);
    v8 = sub_2EC7DC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for JSUserNotificationAuthorizationSegue();
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 8 * v8;

    return sub_9B0F4(a1, v19);
  }

  else
  {
    sub_95ACC(v8, a2, a1, v18);

    return a2;
  }
}

void sub_93C90(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_32A910(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_332E78();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_9AD68(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

unint64_t sub_93E78(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_2EC908(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_32AC1C(v14, a3 & 1);
      result = sub_2EC908(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_ABB4C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_333054();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    v21 = (v19[7] + 48 * result);
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 25) = *(a1 + 25);
    *v21 = v22;
    v21[1] = v23;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 48 * result;

  return sub_9ADC4(a1, v20);
}

void sub_93FD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EC880(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_32AF38(v16, a4 & 1);
      v11 = sub_2EC880(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_3331D8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_94138(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = *v3;
  v12 = sub_2EC9AC(a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a3 & 1) != 0)
  {
LABEL_7:
    v18 = *v4;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
      return sub_160B4(a1, v19 + *(*(v20 - 8) + 72) * v12, &unk_E00040, &unk_AFA530);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a3 & 1) == 0)
  {
    sub_333354();
    goto LABEL_7;
  }

  sub_32B8D4(v15, a3 & 1);
  v22 = sub_2EC9AC(a2);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v4;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_15F84(a2, v9, &unk_DFEEE0, &qword_AF7AF0);
  return sub_95CA0(v12, v9, a1, v18, &unk_DFEEE0, &qword_AF7AF0);
}

void sub_94300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2EBF88(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_32BFD4(v18, a5 & 1);
      v13 = sub_2EBF88(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_333378();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    sub_466B8(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v23[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

void sub_94488(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2ECAB0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_32C290(v13, a3 & 1);
      v8 = sub_2ECAB0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_13C80(0, &qword_DEBCB0, NSOperation_ptr);
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_3334FC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_9462C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v25 = a4;
  v26 = a5;
  v6 = v5;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_2EC048(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v25();
      goto LABEL_7;
    }

    v26();
    v23 = sub_2EC048(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_95BA4(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_ABB4C0();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

void sub_94810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2F5A90(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_32CBB4(v14, a3 & 1);
      v9 = sub_2F5A90(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_3337DC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_94988(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2EBF88(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_2EBF88(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

id sub_94B20(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2ECB8C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_333B24();
      v8 = v16;
      goto LABEL_8;
    }

    sub_32D49C(v13, a3 & 1);
    v8 = sub_2ECB8C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for JSSubscriptionPurchaseSegue(0);
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * v8;

    return sub_9B03C(a1, v19);
  }

  else
  {
    sub_95B38(v8, a2, a1, v18);

    return a2;
  }
}

void sub_94C58(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2EBF88(a1, a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_32E158(v18, a3 & 1);
      v13 = sub_2EBF88(a1, a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_334310();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a4;
    v24[1] = a5;
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a1;
  v25[1] = a2;
  v26 = (v23[7] + 16 * v13);
  *v26 = a4;
  v26[1] = a5;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

unint64_t sub_94DF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2F5A90(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_334908();
    result = v17;
    goto LABEL_8;
  }

  sub_32E8B0(v14, a3 & 1);
  result = sub_2F5A90(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_94F14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2ECBE0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_32EEF0(v14, a3 & 1);
      v9 = sub_2ECBE0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_334CC8();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_95060(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_32F214(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_334E28();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;
    v23 = *v22;
    v24 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v24;
    *(v22 + 32) = a1[2];

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void sub_95214(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_32F518(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_334FD4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_95378(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2ECCE8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_32F7B8(v13, a3 & 1);
      v8 = sub_2ECCE8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_13C80(0, &qword_DE7580, MPModelKind_ptr);
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_33513C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

uint64_t sub_954F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = *v3;
  v12 = sub_2ECD38(a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a3 & 1) != 0)
  {
LABEL_7:
    v18 = *v4;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
      return sub_160B4(a1, v19 + *(*(v20 - 8) + 72) * v12, &unk_E00040, &unk_AFA530);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a3 & 1) == 0)
  {
    sub_3352A0();
    goto LABEL_7;
  }

  sub_32FA28(v15, a3 & 1);
  v22 = sub_2ECD38(a2);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v4;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_15F84(a2, v9, &unk_DFEF20, &qword_AFA570);
  return sub_95CA0(v12, v9, a1, v18, &unk_DFEF20, &qword_AFA570);
}

void sub_956BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2F5A90(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_3355D0();
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];

      *(v17 + 8 * v10) = a1;
      return;
    }

LABEL_11:
    v16[(v10 >> 6) + 8] |= 1 << v10;
    *(v16[6] + 8 * v10) = a2;
    *(v16[7] + 8 * v10) = a1;
    v20 = v16[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      v16[2] = v22;
      return;
    }

    goto LABEL_14;
  }

  sub_32FFE4(v13, a3 & 1);
  v18 = sub_2F5A90(a2);
  if ((v14 & 1) == (v19 & 1))
  {
    v10 = v18;
    v16 = *v4;
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_15:
  sub_ABB4C0();
  __break(1u);
}

_OWORD *sub_957F0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_9ACFC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_9586C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_95948(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_9ACFC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_959B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_9AFE0(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_95A1C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_AB31C0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_95ACC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_9B150(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_95B38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_9B098(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_95BA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_AB3820();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_95C5C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_95CA0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_36B0C(a2, v12 + *(*(v13 - 8) + 72) * a1, a5, a6);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  result = sub_36B0C(a3, v14 + *(*(v15 - 8) + 72) * a1, &unk_E00040, &unk_AFA530);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

BOOL _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 48);
  v5 = [v4 _fontAdjustedForCurrentContentSizeCategory];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  v7 = a2[6];
  v8 = [v7 _fontAdjustedForCurrentContentSizeCategory];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  v10 = sub_ABA790();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *a2;
  if (*a1)
  {
    if (!v11 || (sub_ABA790() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a2[1];
  if (*(a1 + 8))
  {
    if (!v12 || (sub_ABA790() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == a2[3])
  {
    sub_7FD28();
    if (sub_AB38E0())
    {
      return *(a1 + 40) == *(a2 + 40);
    }
  }

  return 0;
}

void sub_95F1C(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if ((a8 & 1) != 0 && a1 != a5)
    {
      [a1 isEqualToAttributedString:a5];
    }
  }

  else if ((a8 & 1) == 0)
  {
    if (a1 == a5 && a2 == a6 || (v9 = a3, v10 = sub_ABB3C0(), a3 = v9, (v10 & 1) != 0))
    {
      sub_16A080(a3);
      if (v11)
      {
        v12 = v11;
        sub_16A080(a7);
        if (v13)
        {
          sub_474250(v12, v13);
        }
      }
    }
  }
}

unint64_t sub_96068(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_ABB0C0();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_15F84(v16, v12, a2, v27);
      result = sub_2EC048(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_AB3820();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_964B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEE80, &qword_B0A290);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v12 = *i;
      v5 = *(i - 1);
      v6 = v12;
      result = sub_2EC3D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_965E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFC0, &qword_B0A310);
    v3 = sub_ABB0C0();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 24);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      sub_2BA40(v5, v6, v7);
      sub_9AEC0(v8, v9, v10);
      result = sub_2EC170(v5, v6, v7);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 24 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      v14 = v3[7] + 24 * result;
      *v14 = v8;
      *(v14 + 8) = v9;
      *(v14 + 16) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_96724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCE0, &unk_AFA680);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_9AEAC(v7);
      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_96828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCE8, &unk_AFA690);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_96934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF030, &qword_AFA720);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = (v5 & 0xFFFFFFFFFFFFFF9);
      v8 = v6;
      result = sub_2EC220(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v8;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_96A34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF0D0, &unk_AFA850);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_2F5AD8();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_96B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B70, &unk_AFA480);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_96C68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF010, &qword_AFA6E8);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, v13, &qword_DEBD18, &unk_AFA6F0);
      result = sub_2EC004(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_96D90(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD20, &unk_B0A340);
  v3 = sub_ABB0C0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_2F5A90(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2F5A90(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_96EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDE8, &qword_B01A10);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DE6EE8, qword_AF8B50);
      v5 = v11;
      result = sub_2F5AD8();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97008(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC00, &qword_B0A2B0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2EC474(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_971EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD68, &unk_AFA780);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD70, &unk_B0A350);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBD68, &unk_AFA780);
      result = sub_2EC048(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_AB3820();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFE0, &qword_B00F10);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v13, &qword_DF06F0, &qword_AFA4B0);
      v5 = v13;
      v6 = v14;
      result = sub_2EBF88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_9ACFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_97578(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_ABB0C0();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_2F5A90(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 7);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_2F5A90(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_976C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF80, &qword_B0A2F0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_977C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCB8, &qword_AFA648);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBCC0, &qword_AFA650);
      v5 = v11;
      result = sub_2F5AD8();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_978E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF000, &qword_AFA6E0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2EC3D0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_979E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCA8, &unk_AFA638);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v13, &qword_DE9D08, &unk_AF8980);
      v5 = v13;
      v6 = v14;
      result = sub_2EBF88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_70DF8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97B28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2EBF88(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF040, &qword_AFA738);
    v3 = sub_ABB0C0();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2EC668(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF050, &qword_AFA7A8);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBD88, &unk_AFA7B0);
      v5 = v11;
      result = sub_2EC708(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9AFE0(&v12, v3[7] + 16 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 24;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEE90, &unk_B09420);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, v13, &qword_DEBB90, &qword_AFA490);
      result = sub_2EC004(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_9ACFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDF0, &unk_B0A3A0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_2EC5A8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_980A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBCF0, &unk_AFA6A0);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v15, &unk_E27200, &unk_B3BB90);
      v5 = v15;
      v6 = v16;
      result = sub_2EBF88(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_981D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBB0, &qword_AFA4D0);
  v3 = sub_ABB0C0();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_15F84(&v24, v23, &qword_DEBBB8, &qword_AFA4D8);
  result = sub_2EBF88(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_15F84(&v24, v23, &qword_DEBBB8, &qword_AFA4D8);
    result = sub_2EBF88(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_9836C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBA8, &qword_AFA4C8);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_98468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF060, &qword_AFA7C8);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBDA0, &qword_AFA7D0);
      v5 = v11;
      result = sub_2EC7DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9B150(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_98594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD38, &qword_AFA718);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_986B8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_ABB0C0();
  v8 = a1[4];
  v9 = a1[5];
  result = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v9;
    return v7;
  }

  v12 = (a1 + 7);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 8 * result) = v8;
    *(v7[7] + 8 * result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v7[2] = v15;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v8 = *(v12 - 1);
    v17 = *v12;
    v18 = v9;
    result = a4(v8);
    v12 = v16;
    v9 = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_987C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD28, &qword_AFA700);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBD30, &qword_AFA708);
      v5 = v11;
      result = sub_2EC830(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_988FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEED0, &unk_B0A2A0);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v16, &qword_DEBBE8, &qword_AFA540);
      v5 = v16;
      v6 = v17;
      result = sub_2EBF88(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_98A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC10, &unk_B0A2C0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 48);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      sub_9AE20(v6, v7, v8, v9, v10, *i);
      result = sub_2EC908(v5);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v14 = v3[7] + 48 * result;
      *v14 = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}