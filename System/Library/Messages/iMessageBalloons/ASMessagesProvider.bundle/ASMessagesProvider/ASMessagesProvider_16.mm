void sub_1CEAB8()
{
  sub_281340();
  v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView]) != 0)
  {
    v3 = v2;
    v4 = [v0 contentView];
    sub_366D68();
    if (v5)
    {
      v7 = sub_769210();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }

  else
  {
    v4 = [v0 contentView];
    sub_366D68();
    if (v6)
    {
      v7 = sub_769210();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }
}

void sub_1CEC14(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = &off_949000;
  v57 = a3;
  if ((a3 & 1) == 0)
  {
    v19 = swift_getObjectType();
    (*(a2 + 112))(v19, a2);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    v56 = ObjectType;
    sub_B33C8(v17, &v4[v20], &unk_955AA0, &qword_783ED0);
    swift_endAccess();
    v21 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
    sub_1ED18(&v4[v20], v14, &unk_955AA0, &qword_783ED0);
    v22 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    v23 = v21;
    v24 = v21 + v22;
    v18 = &off_949000;
    sub_B33C8(v14, v24, &unk_955AA0, &qword_783ED0);
    swift_endAccess();

    v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(v19, a2);
    sub_1D2E24();
    v25 = (*(a2 + 136))(v19, a2);
    sub_28026C(v25);
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard] = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard);
    v56 = a1;

    v28 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
    v29 = v18[234];
    v55 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
    v30 = *(v29 + v55);
    v31 = *(v29 + *&v27[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView]);
    v32 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1ED18(&v4[v32], v11, &unk_955AA0, &qword_783ED0);
    v33 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v33 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    v34 = v4[*v33];
    v35 = v30;
    v36 = v31;
    v37 = v57;
    sub_501450(v36, v57 & 1, v11, v34);

    sub_10A2C(v11, &unk_955AA0, &qword_783ED0);
    if (v37)
    {
      sub_1CF178(v27);
    }

    else
    {
      v38 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView];
      if (v38)
      {
        v39 = v38;
        sub_765990();
      }

      swift_unknownObjectWeakAssign();
      v40 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
      sub_369B90(v40);

      v41 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
      sub_6FAE1C(v41);

      [*&v27[v28] frame];
      v42 = v55;
      [v55 setFrame:?];
      [v42 setHidden:{objc_msgSend(*&v27[v28], "isHidden")}];
      v43 = *(*&v27[v28] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_gradientBlurView);
      v44 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style];
      v45 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style + 8];
      v46 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle] == 2;

      sub_1D278C(v44, v45, v46, [v43 isHidden] ^ 1);

      [v42 setNeedsLayout];
      v47 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
      if (v47)
      {
        v48 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
        if (v48)
        {
          v49 = v47;
          v50 = v48;
          sub_369B90(v49);
        }
      }

      v51 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
      if (v51)
      {
        v52 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          sub_6FAE1C(v53);
        }
      }

      sub_1CEAB8();
    }

    [v4 setNeedsLayout];
  }
}

char *sub_1CF178(char *result)
{
  if ((*(*(*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) & 1) == 0)
  {
    v2 = v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v1[*v2] == 6)
    {
      v3 = result;
      v4 = [v1 contentView];
      v5 = [v3 contentView];
      v6 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView;
      v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
      v8 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView;
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView;
      }

      v9 = *&v1[v8];
      if (v9)
      {
        [v9 removeFromSuperview];
      }

      if (v7)
      {
        v10 = *&v1[v8];
        *&v1[v8] = v7;
        v11 = v7;

        if (v4)
        {
          [v4 addSubview:v11];
        }
      }

      if (v9)
      {
        v12 = *&v3[v6];
        *&v3[v6] = v9;
        v13 = v9;

        if (!v5)
        {
          v5 = v4;
LABEL_19:

          v15 = [v1 contentView];
          v64 = v3;
          v65 = [v3 contentView];
          v16 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
          v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView];
          v18 = v15;
          v19 = v17;
          [v19 removeFromSuperview];
          v20 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
          v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView];
          v22 = v21;
          [v22 removeFromSuperview];
          if (v17)
          {
            v23 = *&v1[v20];
            *&v1[v20] = v17;
            v24 = v1;
            v25 = v16;
            v26 = v19;

            v27 = v26;
            v16 = v25;
            [v18 addSubview:v27];
          }

          if (v21)
          {
            v28 = *&v64[v16];
            *&v64[v16] = v21;
            v29 = v64;
            v30 = v22;

            [v65 addSubview:v30];
          }

          v31 = *&v1[v20];
          v66 = v16;
          v32 = *&v64[v16];
          v33 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
          v34 = *&v64[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView];
          if (v34)
          {
            v35 = v31;
            v36 = v34;
            v37 = v32;
            [v36 removeFromSuperview];
            v38 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
            v39 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView];
            if (!v39)
            {
LABEL_26:
              if (v34)
              {
                v40 = *&v1[v38];
                *&v1[v38] = v34;
                v41 = v1;
                v42 = v34;

                if (v31)
                {
                  [v31 addSubview:v42];
                }
              }

              if (v39)
              {
                v43 = *&v64[v33];
                *&v64[v33] = v39;
                v44 = v64;
                v45 = v39;

                if (!v32)
                {
                  goto LABEL_33;
                }

                v46 = v45;
                [v32 addSubview:v46];
              }

              v45 = v32;
LABEL_33:

              v47 = [v1 contentView];
              v48 = *&v64[v66];
              v49 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
              v50 = *&v64[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
              if (v50)
              {
                v51 = v48;
                [v50 removeFromSuperview];
                v52 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
                v53 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
                if (!v53)
                {
LABEL_36:
                  if (v50)
                  {
                    v54 = *&v1[v52];
                    *&v1[v52] = v50;
                    v55 = v1;
                    v56 = v50;

                    if (v47)
                    {
                      [v47 addSubview:v56];
                    }
                  }

                  if (v53)
                  {
                    v57 = *&v64[v49];
                    *&v64[v49] = v53;
                    v58 = v64;
                    v59 = v53;

                    if (!v48)
                    {

                      goto LABEL_48;
                    }

                    v60 = v59;
                    [v48 addSubview:v60];
                  }

                  v47 = v48;
LABEL_48:

                  [v64 setNeedsLayout];

                  return [v1 setNeedsLayout];
                }
              }

              else
              {
                v63 = v48;
                v52 = v49;
                v53 = *&v1[v49];
                if (!v53)
                {
                  goto LABEL_36;
                }
              }

              [v53 removeFromSuperview];
              goto LABEL_36;
            }
          }

          else
          {
            v61 = v31;
            v62 = v32;
            v38 = v33;
            v39 = *&v1[v33];
            if (!v39)
            {
              goto LABEL_26;
            }
          }

          [v39 removeFromSuperview];
          goto LABEL_26;
        }

        v14 = v13;
        [v5 addSubview:v14];
      }

      v13 = v4;
      goto LABEL_19;
    }
  }

  return result;
}

void sub_1CF770(void (*a1)(void), int a2, char a3, void *a4, void *a5, void (*a6)(char *, char *, uint64_t), __n128 a7)
{
  v177 = a6;
  v187 = a5;
  v185 = a4;
  LODWORD(v186) = a2;
  v9 = sub_766AF0();
  v184 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v160 - v13);
  __chkstk_darwin(v15);
  v183 = &v160 - v16;
  __chkstk_darwin(v17);
  v180 = &v160 - v18;
  __chkstk_darwin(v19);
  v179 = (&v160 - v20);
  __chkstk_darwin(v21);
  v174 = &v160 - v22;
  __chkstk_darwin(v23);
  v182 = &v160 - v24;
  v25 = sub_760260();
  v175 = *(v25 - 8);
  v176 = v25;
  __chkstk_darwin(v25);
  v181 = &v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_7656C0();
  v178 = *(v27 - 8);
  __chkstk_darwin(v27);
  v171 = (&v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v29 - 8);
  v172 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v173 = &v160 - v32;
  v33 = sub_BD88(&unk_9435D0, qword_782630);
  __chkstk_darwin(v33 - 8);
  v35 = &v160 - v34;
  v36 = sub_769ED0();
  __chkstk_darwin(v36);
  v39 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v168 = v37;
    v169 = a1;
    v40 = sub_765B20();
    v41 = sub_75DB40();
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v160 = v27;
      v162 = v14;
      v164 = v11;
      v170 = v9;
      v167 = v40;
      v189[0] = v42;
      v43 = v42;
      v44 = sub_7618A0();
      v163 = v43;
      v189[0] = v43;
      v161 = v41;
      v165 = sub_7618B0();
      v166 = v44;
      v45 = (v44 | v165) != 0;
      if (v177)
      {
        v46 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v47 = sub_769EB0();
        v48 = *(v47 - 8);
        (*(v48 + 104))(v35, v46, v47);
        (*(v48 + 56))(v35, 0, 1, v47);
        sub_769EC0();
        sub_10A2C(v35, &unk_9435D0, qword_782630);
        sub_769E90();
        v50 = v49;
        (*(v168 + 8))(v39, v36);
        v51 = v186;
        v52 = v185;
      }

      else
      {
        v52 = v185;
        sub_765590();
        v50 = v56;
        v51 = v186;
      }

      v57 = v178;
      if (v45)
      {
        v58 = v187;
      }

      else
      {
        if (v51 == 6)
        {
          sub_1D2C0C(v52, v187, v50);
          left = v59;
          right = v61;
        }

        else
        {
          v63 = v173;
          v64 = v160;
          v178[2](v173, v52, v160);
          (v57[7])(v63, 0, 1, v64);
          v65 = v63;
          v66 = v172;
          sub_1ED18(v65, v172, &unk_955AA0, &qword_783ED0);
          if ((v57[6])(v66, 1, v64) == 1)
          {
            sub_10A2C(v66, &unk_955AA0, &qword_783ED0);
            left = UIEdgeInsetsZero.left;
            right = UIEdgeInsetsZero.right;
            v67 = v187;
          }

          else
          {
            v68 = v171;
            (v57)[4](v171, v66, v64);
            sub_765650();
            sub_765650();
            v67 = v187;
            [v187 layoutDirection];
            sub_769BB0();
            left = v69;
            right = v70;
            (v57[1])(v68, v64);
          }

          sub_10A2C(v173, &unk_955AA0, &qword_783ED0);
          if ((sub_7699D0() & 1) == 0)
          {
            if (qword_93DD10 != -1)
            {
              swift_once();
            }

            v71 = sub_766CA0();
            sub_BE38(v71, qword_99FE78);
            sub_7671D0();
            sub_BD88(&unk_93F5C0, &unk_77C600);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_77D9F0;
            *(v72 + 32) = v67;
            v73 = v67;
            v74 = sub_7671E0();
            sub_7666E0();

            v51 = v186;
          }
        }

        sub_765560();
        v76 = v75;
        sub_765B50();
        v78 = v77;
        v79 = sub_765B40();
        v185 = v80;
        sub_765B20();
        if (swift_dynamicCastClass())
        {
          v81 = sub_75DB10();
          v83 = v82;
        }

        else
        {

          v81 = 0;
          v83 = 0;
        }

        v84 = sub_234F64;
        v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v87 = sub_756A94;
        v161 = v81;
        v168 = v79;
        if (v51 != 6)
        {
          if (v51 == 4)
          {
            v84 = sub_234F64;
            v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v87 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
          }

          else
          {
            v84 = sub_756724;
            v85 = sub_7568E0;
            v86 = sub_7568B4;
            v87 = sub_7566F8;
          }
        }

        v201[0] = sub_64A6C;
        v201[1] = 0;
        v201[2] = v87;
        v201[3] = 0;
        v201[4] = v86;
        v201[5] = 0;
        v171 = v85;
        v201[6] = v85;
        v201[7] = 0;
        v201[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v201[9] = 0;
        v169 = v84;
        v201[10] = v84;
        v201[11] = 0;
        v88 = sub_765AA0();
        __chkstk_darwin(v88);
        *(&v160 - 2) = v201;
        v89 = v187;
        v90 = sub_769A20();
        v91 = [v89 preferredContentSizeCategory];
        sub_64A6C();

        sub_766AE0();
        if (qword_93CDD8 != -1)
        {
          swift_once();
        }

        v92 = qword_950C18;
        v178 = objc_opt_self();
        v172 = v90;
        v93 = [v178 preferredFontDescriptorWithTextStyle:v92 compatibleWithTraitCollection:v90];
        v94 = [v93 fontDescriptorWithSymbolicTraits:2];
        v95 = objc_opt_self();
        if (v94)
        {
          v96 = [v95 fontWithDescriptor:v94 size:0.0];

          v93 = v94;
        }

        else
        {
          v96 = [v95 fontWithDescriptor:v93 size:0.0];
        }

        v186 = v83;

        v97 = v174;
        v98 = v179;
        sub_766AD0();

        v99 = *(v184 + 8);
        v100 = v170;
        v99(v98, v170);
        sub_766AA0();
        v99(v97, v100);
        v101 = sub_10D278(_swiftEmptyArrayStorage);
        if (qword_93CDE0 != -1)
        {
          swift_once();
        }

        v102 = qword_950C20;
        v179 = type metadata accessor for TodayTransitioningLabelView();
        objc_allocWithZone(v179);
        v103 = sub_726C3C(v101, v102);
        v104 = *&v103[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
        v105 = v180;
        v173 = v78;
        v106 = v104;
        if (v78)
        {
          v107 = sub_769210();
        }

        else
        {
          v107 = 0;
        }

        [v104 setText:v107];

        v174 = v103;
        v108 = *(v184 + 16);
        v109 = v170;
        v184 += 16;
        v177 = v108;
        v108(v105, v182, v170);
        sub_76A160();
        if (qword_93CDE8 != -1)
        {
          swift_once();
        }

        v110 = qword_950C28;
        v111 = [v187 preferredContentSizeCategory];
        v169();

        __chkstk_darwin(v112);
        *(&v160 - 2) = v201;
        v113 = sub_769A20();
        v114 = v162;
        sub_766AE0();
        v169 = v113;
        v115 = [v178 preferredFontDescriptorWithTextStyle:v110 compatibleWithTraitCollection:v113];
        v116 = objc_opt_self();
        v117 = [v116 fontWithDescriptor:v115 size:0.0];

        sub_766AD0();
        v99(v114, v109);
        sub_766AA0();
        v99(v105, v109);
        v118 = sub_10D278(_swiftEmptyArrayStorage);
        if (qword_93CDF0 != -1)
        {
          swift_once();
        }

        v119 = qword_950C30;
        v120 = objc_allocWithZone(v179);
        v121 = sub_726C3C(v118, v119);
        v122 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
        v123 = *&v121[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
        v124 = v185;
        if (v185)
        {
          v125 = v123;
          v124 = sub_769210();
        }

        else
        {
          v126 = v123;
        }

        [v123 setText:v124];

        v168 = v122;
        v127 = v180;
        v128 = v170;
        v177(v180, v183, v170);
        v129 = sub_76A160();
        __chkstk_darwin(v129);
        *(&v160 - 2) = v201;
        v130 = v187;
        v131 = sub_769A20();
        v132 = v162;
        sub_766AE0();
        if (qword_93CE00 != -1)
        {
          swift_once();
        }

        v133 = v76 - left;
        v134 = v178;
        v178 = v131;
        v135 = [v134 preferredFontDescriptorWithTextStyle:qword_950C40 compatibleWithTraitCollection:v131];
        v136 = [v116 fontWithDescriptor:v135 size:0.0];

        sub_766AD0();
        v99(v132, v128);
        v137 = [v130 preferredContentSizeCategory];
        v171();

        sub_766AA0();
        v99(v127, v128);
        v138 = sub_10D278(_swiftEmptyArrayStorage);
        if (qword_93CE08 != -1)
        {
          swift_once();
        }

        v139 = v133 - right;
        v140 = qword_950C48;
        v141 = objc_allocWithZone(v179);
        v142 = sub_726C3C(v138, v140);
        v143 = *&v142[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
        v144 = sub_760230();
        v145 = 0;
        v146 = v168;
        if ((v144 & 1) == 0 && v186)
        {
          v145 = sub_769210();
        }

        [v143 setText:v145];

        v147 = v164;
        v148 = v170;
        v177(v180, v164, v170);
        sub_76A160();
        v149 = *&v121[v146];
        v194 = sub_75BB20();
        v195 = &protocol witness table for UILabel;
        v192 = v121;
        v193 = v149;
        v196 = 0u;
        v197 = 0u;
        v198 = 0;
        v199 = v142;
        v189[0] = 0x4000000000000000;
        v189[1] = 0;
        v189[2] = 0;
        v189[3] = 0x4018000000000000;
        v189[4] = 0;
        v190 = 1;
        v191 = v174;
        v200 = 0;
        v150 = v149;
        v151.n128_f64[0] = v139;
        v58 = v187;
        sub_746B44(v187, v188, v151, 1.79769313e308);
        sub_B170(v188, v188[3]);
        sub_7673F0();

        v99(v147, v148);
        v99(v183, v148);
        v99(v182, v148);
        (*(v175 + 8))(v181, v176);
        sub_1D61B0(v189);
        sub_BEB8(v188);
      }

      v152 = sub_75DB30();
      if (v152 >> 62)
      {
        v153 = sub_76A860();
      }

      else
      {
        v153 = *(&dword_10 + (v152 & 0xFFFFFFFFFFFFFF8));
      }

      type metadata accessor for TodayListCardLockupContainer();
      sub_6F74F4(v153, v58);
      if ((sub_7699D0() & 1) == 0)
      {
        if (qword_93DD10 != -1)
        {
          swift_once();
        }

        v154 = sub_766CA0();
        sub_BE38(v154, qword_99FE78);
        sub_7671D0();
        sub_BD88(&unk_93F5C0, &unk_77C600);
        v155 = swift_allocObject();
        *(v155 + 16) = xmmword_77D9F0;
        *(v155 + 32) = v58;
        v156 = v58;
        v157 = sub_7671E0();
        sub_7666E0();
      }

      v158 = [v58 preferredContentSizeCategory];
      sub_769B30();

      sub_7697D0();
      v159 = [v58 preferredContentSizeCategory];
      sub_769B30();

      sub_7697D0();
    }

    else
    {
    }
  }

  else
  {
    v53 = v186;
    v54 = v185;
    v55 = v187;

    sub_7ED24(v53, v54, v55);
  }
}

void sub_1D0C8C()
{
  sub_366A60();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
  if (v1)
  {
    v2 = v1;
    sub_366A60();
  }
}

void sub_1D0D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v4 = sub_765300();
  __chkstk_darwin(v4 - 8);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_765120();
  __chkstk_darwin(v7 - 8);
  v77 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_765360();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v76 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_947B58, &qword_789008);
  __chkstk_darwin(v11 - 8);
  v72 = v59 - v12;
  v80 = sub_765240();
  v75 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = v59 - v15;
  v16 = sub_76A920();
  v69 = *(v16 - 8);
  __chkstk_darwin(v16);
  v67 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_7600F0();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_763B00();
  v65 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v59 - v24;
  v26 = sub_7656C0();
  v70 = *(v26 - 8);
  v71 = v26;
  __chkstk_darwin(v26);
  v79 = v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765B70();
  sub_1D6524(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_75C750();
  if (v83)
  {
    v62 = v9;
    v63 = v6;
    v28 = sub_765B20();

    sub_75DB40();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v29;
      v60 = v16;
      v64 = v28;
      v31 = sub_75DB30();
      v61 = a2;
      sub_6FBAFC(v31);

      type metadata accessor for TodayCardGridTracker();
      sub_768900();
      sub_768ED0();
      v32 = v83;
      sub_352874();
      LODWORD(v81) = v33;
      v83 = v30;
      swift_getKeyPath();
      sub_75C7B0();

      v34 = v82;
      v35 = sub_761890();

      if (v35)
      {
        v59[2] = v32;
        if (sub_75DB20())
        {
          v59[1] = v35;
          swift_getKeyPath();
          sub_75C7B0();

          swift_getKeyPath();
          sub_75C7B0();

          v59[0] = v83;
          v36 = v81;
          v37.n128_f64[0] = sub_2A6324(v81);
          v38 = v65;
          v39 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v40 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v36 != 6)
          {
            v40 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v36 != 4)
          {
            v39 = v40;
          }

          (*(v65 + 104))(v22, *v39, v20, v37);
          (*(v38 + 32))(v25, v22, v20);
          v41 = sub_769470();

          (*(v38 + 8))(v25, v20);
          sub_763AE0();
          if (v42)
          {
            sub_765260();
          }

          v43 = v80;
          v44 = v74;
          v45 = v75;
          v46 = v72;
          sub_763AF0();
          sub_7600C0();
          sub_769DA0();
          sub_769D60();
          v47 = v69;
          v48 = v67;
          v49 = v60;
          (*(v69 + 104))(v67, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v60);
          sub_769D80();
          (*(v47 + 8))(v48, v49);
          (*(v66 + 8))(v19, v68);
          sub_763AD0();
          v50 = *(v45 + 48);
          v51 = v50(v46, 1, v43);
          v81 = v41;
          if (v51 == 1)
          {
            sub_765250();
            v52 = v50(v46, 1, v43);
            v53 = v43;
            if (v52 != 1)
            {
              sub_10A2C(v46, &qword_947B58, &qword_789008);
            }
          }

          else
          {
            (*(v45 + 32))(v44, v46, v43);
            v53 = v43;
          }

          v54 = v76;
          sub_765130();
          sub_765380();
          v55 = v59[0];
          [v59[0] displayScale];
          (*(v45 + 16))(v73, v44, v53);
          sub_765340();
          sub_765350();
          sub_75DF50();
          swift_allocObject();
          v56 = sub_75DF30();

          (*(v78 + 8))(v54, v62);
          (*(v45 + 8))(v44, v80);
          (*(v70 + 8))(v79, v71);
          sub_BD88(&unk_93F5C0, &unk_77C600);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_77D9F0;
          *(v57 + 32) = v56;

          v58._rawValue = v57;
          sub_75A070(v58);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D17B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  sub_5017E8(a1, v4);
}

void sub_1D1830(__n128 a1)
{
  v1 = sub_75FC40();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FC80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *&Strong[qword_9405B0];
    if (v10)
    {
      v15 = Strong;
      v11 = v10;
      [v11 setMuted:{objc_msgSend(v11, "isMuted") ^ 1}];
      v12 = [v11 isMuted];
      [v15 updateAudioSessionCategoryWithIsAudioOn:v12 ^ 1];
      (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
      v13 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v12)
      {
        v13 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v2 + 104))(v4, *v13, v1);
      sub_56D2C(v8, v4);

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
    }
  }
}

double *sub_1D1B90()
{
  v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer]) != 0)
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77D9F0;
    v4 = v2;
    *(inited + 32) = [v0 contentView];
    v5 = [v4 subviews];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v6 = sub_769460();

    sub_10A0A0(v6);
    v7 = sub_140CA0(inited);
  }

  else
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_77D9F0;
    *(v8 + 32) = [v0 contentView];
    v9 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer] subviews];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v10 = sub_769460();

    sub_10A0A0(v10);
    v7 = sub_140CA0(v8);
  }

  return v7;
}

void sub_1D1E38()
{

  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle, &qword_9497A8, &unk_78A700);
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
}

uint64_t type metadata accessor for ListTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_949738;
  if (!qword_949738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2078(uint64_t a1)
{
  sub_1D2144(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D2144(uint64_t a1)
{
  if (!qword_949748)
  {
    sub_765B10();
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_949748);
    }
  }
}

void sub_1D219C(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_2487B4(Strong);
}

uint64_t (*sub_1D2244(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1C85E8(v2);
  return sub_21028;
}

uint64_t sub_1D22B8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1D6524(&qword_9497A0, type metadata accessor for ListTodayCardCollectionViewCell, &unk_78A6AC);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1D232C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D6524(&qword_9497A0, type metadata accessor for ListTodayCardCollectionViewCell, &unk_78A6AC);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1D23B8(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D6524(&qword_9497A0, type metadata accessor for ListTodayCardCollectionViewCell, &unk_78A6AC);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

char *sub_1D2478(__n128 a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView(0);
  *&v2[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v2[v4] = sub_30712C(&off_87EAC0);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HeaderView();
  v6 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = *&v6[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  v8 = v6;
  [v8 addSubview:v7];
  [v8 addSubview:*&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_gradientBlurView]];
  [v8 setClipsToBounds:1];

  return v8;
}

void sub_1D2658()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for HeaderView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  [v1 bounds];
  [v2 setFrame:?];
  sub_1D28BC();
  v3 = [v1 traitCollection];
  v4 = sub_7699F0();

  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_gradientBlurView];
  v6 = 0.174532925;
  if (v4)
  {
    v6 = -0.174532925;
  }

  v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle);
  *(v5 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle) = v6;
  if (v6 != v7)
  {
    sub_3079B8();
  }
}

id sub_1D278C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_gradientBlurView);

  sub_3069CC(a1, a2);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView;
  v13 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView];

  sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
  isa = sub_769450().super.isa;

  [v13 setBackgroundEffects:isa];

  [*&v9[v12] setOverrideUserInterfaceStyle:*&v9[v11]];

  return [v9 setHidden:(a4 & 1) == 0];
}

void sub_1D28BC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  [v2 frame];
  v3 = CGRectGetHeight(v9) * 0.5 * 0.176326981;
  [v2 frame];
  v4 = ceil(v3 + CGRectGetHeight(v10));
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_gradientBlurView];
  [v2 frame];
  MinX = CGRectGetMinX(v11);
  [v2 frame];
  v7 = CGRectGetHeight(v12) + -145.0;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  [v1 bounds];
  [v5 setFrame:{MinX, v8, CGRectGetWidth(v13), v4}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientStartY] = v3 / v4;
  sub_3079B8();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientEndY] = (v3 + 145.0) / v4;
  sub_3079B8();
}

id sub_1D2A30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1D2ADC(uint64_t a1)
{
  result = sub_1D6524(&qword_949788, type metadata accessor for ListTodayCardCollectionViewCell, &unk_78FE6C);
  *(a1 + 8) = result;
  return result;
}

double sub_1D2C0C(uint64_t a1, void *a2, double a3)
{
  v6 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_28377C(v8, a2);
  sub_10A2C(v8, &unk_955AA0, &qword_783ED0);
  if ((sub_7699D0() & 1) == 0)
  {
    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v11 = sub_766CA0();
    sub_BE38(v11, qword_99FE78);
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_77D9F0;
    *(v12 + 32) = a2;
    v13 = a2;
    v14 = sub_7671E0();
    sub_7666E0();
    a3 = v15;
  }

  return a3 + 20.0;
}

id sub_1D2E24()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  v5 = v1[v2];
  *(v4 + qword_950C80) = v5;
  if (v5 == 7)
  {
    v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = 7;
    v8 = &qword_950C80;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory;
    *(*(v4 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_950CA0) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v9)
    {
      goto LABEL_9;
    }

    *(v9 + qword_950C80) = v5;
    *(*(v9 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v9 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v6 = *(v9 + qword_950CA0);
    v7 = v5;
  }

  *(v6 + *v8) = v7;
LABEL_9:
  v10 = *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  v10[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory] = v5;
  v11 = v10;
  sub_5020F8();

  return [v1 setNeedsLayout];
}

uint64_t sub_1D2FCC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v190 = a5;
  v223 = a4;
  v224 = a3;
  v226 = a2;
  v6 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v6 - 8);
  v183 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v185 = &v182 - v9;
  v10 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v10 - 8);
  v188 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v187 = &v182 - v13;
  v228 = sub_7570A0();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v184 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_BD88(&qword_940A40, &unk_780300);
  __chkstk_darwin(v217);
  v229 = &v182 - v15;
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v186 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v189 = &v182 - v19;
  __chkstk_darwin(v20);
  v218 = &v182 - v21;
  __chkstk_darwin(v22);
  v225 = &v182 - v23;
  v24 = sub_765300();
  __chkstk_darwin(v24 - 8);
  v216 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_765120();
  __chkstk_darwin(v26 - 8);
  v212 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_765360();
  v214 = *(v215 - 8);
  __chkstk_darwin(v215);
  v213 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_BD88(&qword_947B58, &qword_789008);
  __chkstk_darwin(v29 - 8);
  v209 = &v182 - v30;
  v31 = sub_765240();
  v232 = *(v31 - 1);
  v233 = v31;
  __chkstk_darwin(v31);
  v210 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v211 = &v182 - v34;
  v208 = sub_76A920();
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_7600F0();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = &v182 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_763B00();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v200 = &v182 - v39;
  v40 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v40 - 8);
  v198 = &v182 - v41;
  v195 = sub_75A6E0();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v197 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_75DC30();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v237 = &v182 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_BD88(&qword_947B60, &qword_790BB0);
  __chkstk_darwin(v44 - 8);
  v193 = &v182 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v191 = &v182 - v47;
  v48 = sub_75A6B0();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v196 = &v182 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v231 = &v182 - v52;
  __chkstk_darwin(v53);
  v192 = &v182 - v54;
  __chkstk_darwin(v55);
  v57 = &v182 - v56;
  __chkstk_darwin(v58);
  v236 = &v182 - v59;
  __chkstk_darwin(v60);
  v62 = &v182 - v61;
  __chkstk_darwin(v63);
  v65 = &v182 - v64;
  __chkstk_darwin(v66);
  v68 = &v182 - v67;
  __chkstk_darwin(v69);
  v71 = &v182 - v70;
  v239 = a1;
  sub_764B60();
  sub_75A680();
  v230 = *(v49 + 16);
  v230(v62, v71, v48);
  sub_1D6524(&qword_9406B8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  sub_76A530();
  v72 = sub_76A550();
  v235 = v71;
  if (v72)
  {
    v73 = *(v49 + 8);
    v73(v65, v48);
    v234 = v73;
    v73(v68, v48);
    v74 = 1;
    v75 = v191;
  }

  else
  {
    sub_76A560();
    v234 = *(v49 + 8);
    v234(v68, v48);
    v75 = v191;
    (*(v49 + 32))(v191, v65, v48);
    v74 = 0;
  }

  v76 = *(v49 + 56);
  v76(v75, v74, 1, v48);
  sub_10A2C(v75, &qword_947B60, &qword_790BB0);
  v77 = v236;
  sub_764BA0();
  sub_75A680();
  v230(v62, v77, v48);
  v78 = v192;
  sub_76A530();
  v79 = sub_76A550();
  v219 = v49;
  if (v79)
  {
    v80 = v234;
    v234(v78, v48);
    v80(v57, v48);
    v81 = 1;
    v82 = v233;
    v83 = v193;
  }

  else
  {
    sub_76A560();
    v234(v57, v48);
    v83 = v193;
    (*(v49 + 32))(v193, v78, v48);
    v81 = 0;
    v82 = v233;
  }

  v76(v83, v81, 1, v48);
  sub_10A2C(v83, &qword_947B60, &qword_790BB0);
  (*(v194 + 104))(v197, enum case for VideoFillMode.scaleAspectFill(_:), v195);
  sub_764BC0();
  sub_765260();
  v84 = v198;
  sub_7666A0();

  v85 = sub_766690();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v230;
  v230(v231, v235, v48);
  v86(v196, v77, v48);
  sub_764B70();
  v87 = v238;
  sub_764B50();
  sub_764BB0();
  sub_75DC10();
  sub_764BC0();
  v88 = [v87 traitCollection];
  v89 = v224;
  v90.n128_f64[0] = sub_2A6324(v224);
  v91 = v201;
  v92 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v93 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v89 != 6)
  {
    v93 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v89 != 4)
  {
    v92 = v93;
  }

  v94 = v199;
  v95 = v202;
  (*(v201 + 104))(v199, *v92, v202, v90);
  v96 = v200;
  (*(v91 + 32))(v200, v94, v95);
  v97 = sub_769470();
  (*(v91 + 8))(v96, v95);
  sub_763AE0();
  v222 = v48;
  if (v98)
  {
    sub_765260();
  }

  v99 = v209;
  v100 = v203;
  sub_763AF0();
  sub_7600C0();
  sub_769DA0();
  sub_769D60();
  v101 = v207;
  v102 = v205;
  v103 = v208;
  (*(v207 + 104))(v205, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v208);
  sub_769D80();
  (*(v101 + 8))(v102, v103);
  (*(v204 + 8))(v100, v206);
  sub_763AD0();
  v104 = v232;
  v105 = *(v232 + 48);
  v106 = v105(v99, 1, v82);
  v230 = v97;
  v107 = v88;
  if (v106 == 1)
  {
    v108 = v211;
    sub_765250();
    v109 = v108;
    v110 = v82;
    if (v105(v99, 1, v82) != 1)
    {
      sub_10A2C(v99, &qword_947B58, &qword_789008);
    }
  }

  else
  {
    v109 = v211;
    (*(v104 + 32))(v211, v99, v82);
    v110 = v82;
  }

  v111 = v213;
  sub_765130();
  sub_765380();
  [v107 displayScale];
  v112 = v232;
  (*(v232 + 16))(v210, v109, v110);
  sub_765340();
  sub_765350();
  sub_75DF50();
  swift_allocObject();
  v231 = sub_75DF30();

  (*(v214 + 8))(v111, v215);
  (*(v112 + 8))(v109, v233);
  v113 = *&v238[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v232 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  v230 = v113;
  v114 = *(v113 + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  v115 = v225;
  sub_764BD0();
  v116 = v227;
  v117 = *(v227 + 56);
  v118 = 1;
  v119 = v228;
  v117(v115, 0, 1, v228);
  v233 = v114;
  v216 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v121 = Strong;
    v122 = v218;
    (*(v116 + 16))(v218, Strong + qword_99A1C8, v119);

    v118 = 0;
  }

  else
  {
    v122 = v218;
  }

  v117(v122, v118, 1, v119);
  v123 = *(v217 + 48);
  v124 = v229;
  sub_1ED18(v115, v229, &unk_93FD30, qword_77F240);
  v125 = v124;
  sub_1ED18(v122, v124 + v123, &unk_93FD30, qword_77F240);
  v126 = *(v116 + 48);
  if (v126(v125, 1, v119) == 1)
  {
    sub_10A2C(v122, &unk_93FD30, qword_77F240);
    v127 = v229;
    sub_10A2C(v115, &unk_93FD30, qword_77F240);
    v128 = v126(v127 + v123, 1, v119);
    v129 = v222;
    if (v128 == 1)
    {
      sub_10A2C(v127, &unk_93FD30, qword_77F240);
      v130 = v230;
      goto LABEL_42;
    }
  }

  else
  {
    v131 = v189;
    sub_1ED18(v125, v189, &unk_93FD30, qword_77F240);
    if (v126(v125 + v123, 1, v119) != 1)
    {
      v139 = v227;
      v140 = v125 + v123;
      v141 = v184;
      (*(v227 + 32))(v184, v140, v119);
      sub_1D6524(&qword_947410, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v142 = v125;
      v143 = sub_7691C0();
      v144 = *(v139 + 8);
      v144(v141, v119);
      sub_10A2C(v122, &unk_93FD30, qword_77F240);
      sub_10A2C(v225, &unk_93FD30, qword_77F240);
      v144(v189, v119);
      sub_10A2C(v142, &unk_93FD30, qword_77F240);
      v129 = v222;
      v130 = v230;
      if (v143)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    sub_10A2C(v122, &unk_93FD30, qword_77F240);
    v127 = v229;
    sub_10A2C(v115, &unk_93FD30, qword_77F240);
    (*(v227 + 8))(v131, v119);
    v129 = v222;
  }

  sub_10A2C(v127, &qword_940A40, &unk_780300);
  v130 = v230;
LABEL_26:
  v132 = v130;
  sub_75C360();
  v230 = sub_768900();
  sub_768ED0();
  v133 = v240;
  sub_764B40();
  v134 = v186;
  sub_764BD0();
  v117(v134, 0, 1, v228);
  v135 = v187;
  sub_764B90();
  v136 = v188;
  sub_764B80();
  v137 = type metadata accessor for TodayCardVideoView(0);
  sub_1D6524(&qword_947B40, type metadata accessor for TodayCardVideoView, &unk_77FEB0);
  v229 = v137;
  v138 = sub_75C340();
  sub_10A2C(v136, &unk_948710, &qword_77FF90);
  sub_10A2C(v135, &unk_948710, &qword_77FF90);
  sub_10A2C(v134, &unk_93FD30, qword_77F240);
  sub_10A2C(&v240, &unk_9443A0, &unk_77E240);
  if (!v138)
  {
LABEL_31:

    v130 = v132;
    goto LABEL_42;
  }

  v228 = v133;
  if (*(v138 + qword_99A2C0))
  {

    goto LABEL_31;
  }

  v145 = v233;
  *(v138 + qword_99A2B8) = v233[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory];
  sub_69D6C();
  swift_unknownObjectWeakAssign();
  v146 = v216;
  v147 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v148 = v138;
  sub_2487B4(v147);

  v149 = *&v146[v145];
  sub_764BC0();
  sub_765260();
  v151 = v150;
  v153 = v152;

  v154 = sub_7656C0();
  v155 = *(v154 - 8);
  v156 = v185;
  (*(v155 + 16))(v185, v223, v154);
  (*(v155 + 56))(v156, 0, 1, v154);
  v157 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_videoView;
  v158 = swift_unknownObjectWeakLoadStrong();
  v227 = v157;
  v239 = v148;
  swift_unknownObjectWeakAssign();
  sub_2487B4(v158);

  v159 = &v149[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize];
  *v159 = v151;
  *(v159 + 1) = v153;
  v159[16] = 0;
  v160 = swift_unknownObjectWeakLoadStrong();
  v130 = v132;
  if (v160)
  {
    v161 = v160;
    (*(&stru_B8.offset + (swift_isaMask & *v160)))(v151, v153, 0);
  }

  v162 = v226;
  *&v149[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics] = v226;

  v163 = swift_unknownObjectWeakLoadStrong();
  if (v163)
  {
    v164 = v163;
    v165 = *&stru_B8.segname[(swift_isaMask & *v163) + 8];
    swift_bridgeObjectRetain_n();
    v165(v162);
  }

  else
  {
  }

  v166 = v185;
  v167 = v183;
  sub_1ED18(v185, v183, &unk_955AA0, &qword_783ED0);
  sub_247CC8(v167);
  v168 = v224;
  v149[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory] = v224;
  v169 = swift_unknownObjectWeakLoadStrong();
  if (v169)
  {
    v170 = v169;
    (*&stru_108.segname[swift_isaMask & *v169])(v168);
  }

  v171 = swift_unknownObjectWeakLoadStrong();
  if (v171)
  {
    v172 = v171;
    v173 = swift_unknownObjectWeakLoadStrong();
    (*(&stru_108.reserved2 + (swift_isaMask & *v172)))(v173, *v159, *(v159 + 1), v159[16], v226, v166, v168);
  }

  [v149 setNeedsLayout];
  v174 = v239;

  sub_10A2C(v166, &unk_955AA0, &qword_783ED0);
  sub_75A110();
  sub_768ED0();
  sub_1D6524(&qword_947B68, type metadata accessor for TodayCardVideoView, &unk_7AD180);
  sub_75A050();
  v175 = v233;
  [*&v216[v233] setHidden:0];
  [*&v175[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView] setHidden:1];

  v175[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia] = 1;
  v129 = v222;
LABEL_42:

  v176 = *&v130[v232];
  v176[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory] = v238[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v177 = v176;
  sub_5020F8();

  v178 = swift_unknownObjectWeakLoadStrong();
  if (v178)
  {
    *(v178 + qword_940588 + 8) = &off_887DB8;
    v179 = v178;
    swift_unknownObjectWeakAssign();
  }

  sub_189CD0();

  (*(v220 + 8))(v237, v221);
  v180 = v234;
  v234(v236, v129);
  return v180(v235, v129);
}

void sub_1D4D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v146 = a5;
  v154 = a4;
  v155 = a2;
  v139 = a1;
  LODWORD(v135) = a3;
  v8 = sub_BD88(&qword_944440, qword_783EE0);
  __chkstk_darwin(v8 - 8);
  v122 = &v117 - v9;
  v152 = sub_7656C0();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v120 = v10;
  v128 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_7572E0();
  v130 = *(v149 - 8);
  __chkstk_darwin(v149);
  v127 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v11;
  __chkstk_darwin(v12);
  v129 = &v117 - v13;
  v123 = sub_BD88(&qword_947B70, &unk_789010);
  __chkstk_darwin(v123);
  v124 = &v117 - v14;
  v15 = sub_BD88(&qword_944448, qword_798CC0);
  __chkstk_darwin(v15 - 8);
  v121 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v118 = &v117 - v18;
  __chkstk_darwin(v19);
  v125 = &v117 - v20;
  __chkstk_darwin(v21);
  v126 = &v117 - v22;
  v23 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v23 - 8);
  v145 = &v117 - v24;
  v25 = sub_765300();
  __chkstk_darwin(v25 - 8);
  v144 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_765120();
  v148 = *(v131 - 8);
  __chkstk_darwin(v131);
  v147 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_765360();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_BD88(&qword_947B58, &qword_789008);
  __chkstk_darwin(v29 - 8);
  v134 = &v117 - v30;
  v140 = sub_765240();
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v137 = &v117 - v33;
  v133 = sub_76A920();
  v34 = *(v133 - 8);
  __chkstk_darwin(v133);
  v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_7600F0();
  v37 = *(v132 - 8);
  __chkstk_darwin(v132);
  v39 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_763B00();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = __chkstk_darwin(v44).n128_u64[0];
  v47 = &v117 - v46;
  v153 = v6;
  v48 = [v6 traitCollection];
  v151 = a3;
  v49.n128_f64[0] = sub_2A6324(a3);
  v50 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v51 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v135 != 6)
  {
    v51 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v135 != 4)
  {
    v50 = v51;
  }

  (*(v41 + 104))(v43, *v50, v40, v49);
  (*(v41 + 32))(v47, v43, v40);
  v52 = sub_769470();
  (*(v41 + 8))(v47, v40);
  sub_763AE0();
  if (v53)
  {
    sub_765260();
  }

  sub_763AF0();
  sub_7600C0();
  sub_769DA0();
  sub_769D60();
  v54 = v133;
  (*(v34 + 104))(v36, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v133);
  sub_769D80();
  (*(v34 + 8))(v36, v54);
  (*(v37 + 8))(v39, v132);
  v55 = v134;
  sub_763AD0();
  v56 = v138;
  v57 = *(v138 + 48);
  v58 = v140;
  v59 = v57(v55, 1, v140);
  v135 = v52;
  if (v59 == 1)
  {
    v60 = v137;
    sub_765250();
    if (v57(v55, 1, v58) != 1)
    {
      sub_10A2C(v55, &qword_947B58, &qword_789008);
    }
  }

  else
  {
    v60 = v137;
    (*(v56 + 32))(v137, v55, v58);
  }

  v61 = v141;
  sub_765130();
  sub_765380();
  [v48 displayScale];
  v62 = v48;
  (*(v56 + 16))(v136, v60, v58);
  sub_765340();
  sub_765350();
  sub_75DF50();
  swift_allocObject();
  v63 = sub_75DF30();

  (*(v142 + 8))(v61, v143);
  (*(v56 + 8))(v60, v58);
  v144 = *&v153[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v143 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  v64 = *&v144[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  sub_75A110();
  sub_768900();
  v65 = v64;
  sub_768ED0();
  v66 = v156;
  v142 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(Strong);

  v146 = v65;
  v141 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView;
  v68 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
  sub_75DEF0();
  v70 = v69;
  v72 = v71;
  v73 = [*(v68 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView) image];
  v74 = v150;
  v75 = v145;
  v76 = v152;
  v137 = *(v150 + 16);
  (v137)(v145, v154, v152);
  (*(v74 + 56))(v75, 0, 1, v76);
  sub_DDCF4(v73, v70, v72, 0, v155, v75, v151);

  v77 = v75;
  v78 = v68;
  sub_10A2C(v77, &unk_955AA0, &qword_783ED0);
  v79 = *(v68 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded);
  v139 = v63;
  v140 = v66;
  v138 = v68;
  if (v79)
  {
    v80 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v81 = v126;
    sub_1ED18(v68 + v80, v126, &qword_944448, qword_798CC0);
    v82 = v125;
    sub_75DF40();
    v83 = v148;
    v84 = v131;
    (*(v148 + 56))(v82, 0, 1, v131);
    v85 = *(v123 + 48);
    v86 = v124;
    sub_1ED18(v81, v124, &qword_944448, qword_798CC0);
    sub_1ED18(v82, v86 + v85, &qword_944448, qword_798CC0);
    v87 = v81;
    v88 = *(v83 + 48);
    if (v88(v86, 1, v84) == 1)
    {
      sub_10A2C(v82, &qword_944448, qword_798CC0);
      sub_10A2C(v87, &qword_944448, qword_798CC0);
      if (v88(v86 + v85, 1, v84) == 1)
      {
        sub_10A2C(v86, &qword_944448, qword_798CC0);
        goto LABEL_20;
      }
    }

    else
    {
      v89 = v118;
      sub_1ED18(v86, v118, &qword_944448, qword_798CC0);
      if (v88(v86 + v85, 1, v84) != 1)
      {
        v113 = v147;
        v114 = v148;
        (*(v148 + 32))(v147, v86 + v85, v84);
        sub_1D6524(&qword_947B80, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v115 = sub_7691C0();
        v116 = *(v114 + 8);
        v116(v113, v84);
        sub_10A2C(v125, &qword_944448, qword_798CC0);
        sub_10A2C(v126, &qword_944448, qword_798CC0);
        v116(v89, v84);
        sub_10A2C(v86, &qword_944448, qword_798CC0);
        v78 = v138;
        if (v115)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      sub_10A2C(v125, &qword_944448, qword_798CC0);
      sub_10A2C(v126, &qword_944448, qword_798CC0);
      (*(v148 + 8))(v89, v84);
    }

    sub_10A2C(v86, &qword_947B70, &unk_789010);
    v78 = v138;
  }

LABEL_18:
  if ((*(v78 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v90 = v129;
    sub_7572D0();
    v91 = v130;
    v92 = *(v130 + 16);
    v93 = v127;
    v94 = v149;
    v92(v127, v90, v149);
    sub_1D6524(&qword_947B78, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_76A6E0();
    v147 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92(v93, v90, v94);
    (v137)(v128, v154, v152);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = (v119 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
    v98 = v150;
    v99 = (*(v150 + 80) + v97 + 8) & ~*(v150 + 80);
    v100 = v99 + v120;
    v101 = swift_allocObject();
    *(v101 + 16) = v147;
    v102 = *(v91 + 32);
    v102(v101 + v95, v127, v149);
    v103 = (v101 + v96);
    *v103 = v70;
    v103[1] = v72;
    *(v101 + v97) = v155;
    (*(v98 + 32))(v101 + v99, v128, v152);
    *(v101 + v100) = v151;

    sub_75A040();

    sub_10A2C(&v156, &unk_9443A0, &unk_77E240);

    v104 = v121;
    sub_75DF40();
    (*(v148 + 56))(v104, 0, 1, v131);
    v105 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    v106 = v138;
    swift_beginAccess();
    sub_B33C8(v104, v106 + v105, &qword_944448, qword_798CC0);
    swift_endAccess();
    v107 = v122;
    v108 = v149;
    v102(v122, v129, v149);
    (*(v130 + 56))(v107, 0, 1, v108);
    v109 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_B33C8(v107, v106 + v109, &qword_944440, qword_783EE0);
    swift_endAccess();
  }

LABEL_20:
  v110 = v146;
  [*&v141[v146] setHidden:0];
  [*&v110[v142] setHidden:1];

  v110[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia] = 1;

  v111 = *&v144[v143];
  v111[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory] = v153[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v112 = v111;
  sub_5020F8();
}

uint64_t sub_1D6204()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1D623C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D6254()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1D628C()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_1D6524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1D656C()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v2 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  result = *(v1 + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  if (result[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia] != 1)
  {
    return v0;
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v4] != 6)
  {
    v5 = [v0 traitCollection];
    v6 = v0;
    v7 = sub_769A00();

    result = v6;
    if ((v7 & 1) == 0)
    {
      return *(v1 + v2);
    }
  }

  return result;
}

double sub_1D6644(uint64_t a1, void *a2)
{
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v5 + 16))(&v16 - v13, a1, v4, v12);
  (*(v5 + 56))(v14, 0, 1, v4);
  sub_1ED18(v14, v10, &unk_955AA0, &qword_783ED0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10A2C(v10, &unk_955AA0, &qword_783ED0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_765650();
    sub_765650();
    [a2 layoutDirection];
    sub_769BB0();
    (*(v5 + 8))(v7, v4);
  }

  sub_10A2C(v14, &unk_955AA0, &qword_783ED0);
  return 20.0;
}

double sub_1D6988()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CC50();
  sub_1D6B8C(&qword_9497D0, &type metadata accessor for ProductCapability, &protocol conformance descriptor for ProductCapability);
  sub_75C750();
  if (!v18[1])
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = sub_75CC20();
  v10 = v9;
  v11 = sub_75CC40();
  v12 = sub_75CC30();
  v13 = sub_527DE4();
  swift_getObjectType();
  v14.n128_u64[0] = v5;
  sub_35BEE0(v8, v10, v11, v12, v13, v14, v7);
  v16 = v15;

  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_1D6B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = v6(a3, a4);
  sub_759050();

  v8 = v6(a3, a4);
  sub_759210();
  sub_14FA38();
  sub_75A0C0();
}

void sub_1D6CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_7652D0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_765240();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18[1] = a2;

    sub_765250();
    v13 = (*(a4 + 32))(v12, a3, a4);
    (*(v10 + 8))(v12, v9);
    (*(a4 + 24))(a3, a4);
    v18[0] = v13;
    sub_765330();
    v14 = *(a4 + 16);
    v15 = v14(a3, a4);
    sub_7652E0();
    sub_7591B0();
    [v15 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();

    v16 = v14(a3, a4);
    [v16 setContentMode:v18[0]];

    v17 = v14(a3, a4);
    sub_759210();
    sub_14FA38();
    sub_75A050();
  }
}

char *sub_1D6FD0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = &v0[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapGestureRecognizer] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_glyphView;
  v6 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_glyphView];
  v7 = v4;
  v8 = v6;
  v9 = sub_56E958(0xD000000000000012, 0x80000000007D3D90, 0);
  v10 = [v9 imageWithRenderingMode:2];

  [v8 setImage:v10];
  v11 = qword_93C608;
  v12 = *&v4[v5];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTintColor:qword_9497D8];

  [*&v4[v5] setUserInteractionEnabled:0];
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {
    [*&v7[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_backgroundView] setPrefersLowQualityEffects:1];
  }

  v13 = OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_backgroundView;
  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_backgroundView] addSubview:*&v4[v5] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v7[v13] setUserInteractionEnabled:0];
  [*&v7[v13] setCircular:1];
  [v7 addSubview:*&v7[v13]];
  [v7 addTarget:v7 action:"didTap" forControlEvents:64];

  return v7;
}

id sub_1D729C(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_backgroundView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_glyphView];
  [v1 bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;
  [v1 bounds];
  v10 = CGRectGetMidX(v13) - v7 * 0.5;
  [v1 bounds];
  return [v3 setFrame:{v10, CGRectGetMidY(v14) - v9 * 0.5, v7, v9}];
}

id sub_1D749C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1D7564()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapGestureRecognizer) = 0;
  sub_76A840();
  __break(1u);
}

void sub_1D7628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_7583A0();
    v9 = sub_758780();

    if (v9)
    {
      v10 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_268C8(v6);
      }

      else
      {
        sub_32A6C0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_1D77D8(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, int *a11)
{
  v117 = a3;
  v118 = a11;
  v14 = sub_76A920();
  v113 = *(v14 - 8);
  v114 = v14;
  __chkstk_darwin(v14);
  v112 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_760840();
  v110 = *(v16 - 8);
  v111 = v16;
  __chkstk_darwin(v16);
  v108 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_762D10();
  v106 = *(v123 - 8);
  __chkstk_darwin(v123);
  v105 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_75D850();
  v120 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v87[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v87[-v23];
  v25 = sub_760820();
  v121 = *(v25 - 8);
  __chkstk_darwin(v25);
  v107 = &v87[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v87[-v28];
  sub_769DA0();
  v31 = v30;
  v33 = v32;
  v115 = a1;
  v34 = sub_7583B0();
  v35 = sub_764EF0();
  v95 = v36;
  v96 = v35;
  v37 = sub_764F70();
  v97 = v38;
  v98 = v37;
  if (sub_764E90())
  {
    v39 = sub_75E5C0();

    if (v39)
    {
      v40 = sub_765720();
      v103 = v41;
      v104 = v40;
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }
  }

  else
  {
    v103 = 0;
    v104 = 0;
  }

  sub_75BCD0();
  v42 = [a2 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v43 = sub_BE38(v25, qword_99B150);
  v100 = *(v121 + 16);
  v101 = v121 + 16;
  v100(v29, v43, v25);
  v44 = sub_769A00();
  v116 = a2;
  v109 = v34;
  v122 = v25;
  if (v44)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v45 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v45 = qword_946938;
  }

  v46 = v19;
  v47 = sub_BE38(v19, v45);
  v48 = v120;
  (*(v120 + 16))(v21, v47, v19);
  (*(v48 + 32))(v24, v21, v19);
  v94 = v42;
  v49 = [v42 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  sub_760810();
  sub_760800();
  v50 = sub_7670D0();
  swift_allocObject();
  v93 = sub_7670B0();
  v51 = objc_opt_self();
  v90 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = sub_7653B0();
  v92 = v29;
  v54 = v53;
  v160[3] = v53;
  v119 = sub_1D83FC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v160[4] = v119;
  v55 = sub_B1B4(v160);
  v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v57 = *(v54 - 8);
  v91 = *(v57 + 104);
  v102 = v46;
  v58 = v57 + 104;
  v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v91(v55, enum case for Feature.measurement_with_labelplaceholder(_:), v54);
  v89 = v58;
  sub_765C30();
  v99 = v24;
  sub_BEB8(v160);
  v59 = v105;
  sub_762D00();
  sub_762CE0();
  v60 = *(v106 + 8);
  v60(v59, v123);
  v61 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v159[3] = v54;
  v159[4] = v119;
  v62 = sub_B1B4(v159);
  v63 = v56;
  v64 = v91;
  v91(v62, v63, v54);
  sub_765C30();
  sub_BEB8(v159);
  sub_762D00();
  sub_762CE0();
  v60(v59, v123);
  v65 = [v90 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v158[3] = v54;
  v158[4] = v119;
  v66 = sub_B1B4(v158);
  v64(v66, v88, v54);
  sub_765C30();
  sub_BEB8(v158);
  sub_762D00();
  sub_762CE0();
  v60(v59, v123);
  sub_246DC();
  swift_allocObject();
  v67 = sub_7670B0();

  sub_246DC();
  swift_allocObject();
  v68 = sub_7670B0();
  v69 = v92;
  v100(v107, v92, v122);
  v157 = &protocol witness table for LayoutViewPlaceholder;
  v156 = v50;
  v155 = v93;
  v154 = 0;
  *&v152[40] = 0u;
  v153 = 0u;
  sub_134D8(v160, v152);
  sub_134D8(v159, &v151);
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;

  v70 = sub_7670C0();
  v144 = &protocol witness table for LayoutViewPlaceholder;
  v143 = v50;
  v142 = v70;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v132 = 0;
  v131 = 0u;
  *&v130[40] = 0u;
  sub_134D8(v158, v130);
  v128 = v50;
  v129 = &protocol witness table for LayoutViewPlaceholder;
  v126 = &protocol witness table for LayoutViewPlaceholder;
  v127 = v67;
  v125 = v50;
  v124 = v68;
  v71 = v108;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_77D9F0;
  v73 = v94;
  *(v72 + 32) = v94;
  v74 = v73;
  v75 = sub_7671E0();
  sub_1D83FC(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v76 = v111;
  sub_7665A0();
  v78 = v77;

  (*(v110 + 8))(v71, v76);
  sub_BEB8(v158);
  sub_BEB8(v159);
  sub_BEB8(v160);
  (*(v120 + 8))(v99, v102);
  (*(v121 + 8))(v69, v122);
  if (qword_93DDA8 != -1)
  {
    swift_once();
  }

  v79 = qword_9A00D0;
  sub_B170(qword_9A00B8, qword_9A00D0);
  v80 = v112;
  sub_33964(v79);
  v81 = v116;
  sub_766700();
  v83 = v82;
  (*(v113 + 8))(v80, v114);
  v84 = type metadata accessor for AppEventView(0);
  v85 = sub_7583A0();
  sub_650A20(v31, v33 - (v78 + v83), v85, v81, v117, v84, v118);

  return a4;
}

uint64_t sub_1D83FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8458()
{
  result = qword_949828;
  if (!qword_949828)
  {
    sub_75CCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949828);
  }

  return result;
}

uint64_t sub_1D84B8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v50 = a1;
  v2 = sub_7572A0();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_949830, &unk_78A8F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v49 = sub_768F90();
  sub_7689F0();
  sub_7689E0();
  sub_75CCB0();
  sub_75CC80();
  sub_BD88(&qword_949838, &unk_78A900);
  sub_7686D0();

  v14 = *(v5 + 8);
  v51 = v4;
  v14(v13, v4);
  if (v53)
  {
  }

  else
  {
    sub_7689E0();
    sub_75CC80();
    v53 = _swiftEmptyDictionarySingleton;
    sub_7686E0();
  }

  sub_7689E0();
  sub_75CC80();
  sub_7686D0();

  v46 = v14;
  v14(v9, v51);
  v15 = v53;
  v16 = v48;
  if (!v53)
  {
    goto LABEL_13;
  }

  v17 = sub_75CC90();
  if (!v15[2])
  {

    goto LABEL_12;
  }

  v19 = sub_3DF2F8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_75CCA0();
LABEL_14:
    sub_7689E0();
    sub_75CC80();
    v32 = sub_7686C0();
    if (*v31)
    {
      v33 = v31;
      v34 = sub_75CC90();
      v36 = v35;
      v37 = v43;
      sub_757290();
      sub_757270();
      v39 = v38;
      (*(v44 + 8))(v37, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v33;
      *v33 = 0x8000000000000000;
      sub_45975C(v34, v36, isUniquelyReferenced_nonNull_native, v39);

      *v33 = v52;
    }

    v32(&v53, 0);

    v46(v16, v51);
    v41 = sub_75CC60();
    sub_72D574(v41, 1, v47);

    v30 = v49;
    sub_768F00();
    goto LABEL_17;
  }

  v22 = *(v15[7] + 8 * v19);

  *&v23 = COERCE_DOUBLE(sub_75CCA0());
  if ((v24 & 1) == 0)
  {
    v25 = *&v23;
    v26 = v43;
    sub_757290();
    sub_757270();
    v28 = v27;
    (*(v44 + 8))(v26, v45);
    if (v28 - v22 > v25)
    {
      goto LABEL_14;
    }
  }

  v29 = sub_75CC70();
  if (!v29)
  {
    sub_1D8A44();
    swift_allocError();
    v30 = v49;
    sub_768F50();

    return v30;
  }

  sub_72D574(v29, 1, v47);
  v30 = v49;
  sub_768F00();

LABEL_17:

  return v30;
}

unint64_t sub_1D8A44()
{
  result = qword_949840;
  if (!qword_949840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949840);
  }

  return result;
}

unint64_t sub_1D8AAC()
{
  result = qword_949848;
  if (!qword_949848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949848);
  }

  return result;
}

void sub_1D8B88(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7575D0();
  v36 = a2;
  sub_1D9F18(v10, a2);
  v11 = sub_1DA148(a1);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
  swift_beginAccess();
  if (!*(*(v2 + v12) + 16) || (sub_663D5C(v11), (v13 & 1) == 0))
  {
    v34 = v12;
    sub_1DA1F8(a1);
    v16 = 0.0;
    v17 = 0.0;
    if (v14 == v15)
    {
LABEL_15:
      v31 = sub_1DA148(a1);
      v32 = v34;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v3 + v32);
      *(v3 + v32) = 0x8000000000000000;
      sub_4598B8(v31, isUniquelyReferenced_nonNull_native, v16, v17);
      *(v3 + v32) = v37;
      swift_endAccess();
    }

    else
    {
      v18 = v14;
      v19 = v15;
      if (v15 >= v14)
      {
        v35 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
        v20 = (v7 + 8);
        v21 = 0.0;
        while (v18 < v19)
        {
          sub_7575D0();
          sub_7575B0();
          v22 = sub_760020();
          if (v22)
          {
            v23 = v22;
            v24 = sub_7575C0() == 0;
            [*(v3 + v35) pageContainerSize];
            v27 = sub_1D8FB0(v23, v36, v24, v25, v26);
            v29 = v28;
            LOBYTE(v24) = v30;

            (*v20)(v9, v6);
            if (v24)
            {
              v16 = v27;
              v17 = v29;
              goto LABEL_15;
            }

            if (v21 < v29)
            {
              v16 = v27;
              v17 = v29;
              v21 = v29;
            }
          }

          else
          {
            (*v20)(v9, v6);
          }

          if (v19 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

double sub_1D8FB0(uint64_t a1, void *a2, int a3, double a4, double a5)
{
  LODWORD(v119) = a3;
  v10 = sub_75D850();
  v117 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v116 - v14;
  v16 = sub_757E60();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9BF4(a1, v18);
  v120 = v5;
  v118 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v5 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v23 = v22;
  v25 = v24;
  v28 = a4 - v26 - v27;
  [a2 minimumInteritemSpacing];
  v30 = (v28 - v29) * 0.5;
  sub_75DDB0();
  if (swift_dynamicCastClass())
  {
    if (v21 & 1 | ((v119 & 1) == 0))
    {
      v31 = v120;
      if (*(v120 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        sub_7609E0();

        sub_BD88(&qword_9498C0, &qword_78D270);
        sub_75BD00();
        if (swift_dynamicCast())
        {
          v32 = v121;
          v33 = type metadata accessor for AdvertSearchResultCollectionViewCell();
          v34 = *(v31 + v118);
          ObjectType = swift_getObjectType();
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
          swift_unknownObjectRetain();
          v39 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_3BE390(v32, v34, v39, v30, 1.79769313e308, UIEdgeInsetsZero.top, left, bottom, right, v33, ObjectType);
          v30 = v40;

LABEL_8:
          swift_unknownObjectRelease_n();
          return v30;
        }
      }
    }

    else
    {
      v53 = v120;
      if (*(v120 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        sub_7609E0();

        sub_BD88(&qword_9498C0, &qword_78D270);
        sub_75BD00();
        if (swift_dynamicCast())
        {
          v54 = a5 - v23 - v25;
          v55 = v121;
          v56 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v57 = *(v53 + v118);
          v58 = swift_getObjectType();
          v59 = UIEdgeInsetsZero.left;
          v60 = UIEdgeInsetsZero.bottom;
          v61 = UIEdgeInsetsZero.right;
          swift_unknownObjectRetain();
          v62 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_42C0C4(v55, v57, v62, v28, v54, UIEdgeInsetsZero.top, v59, v60, v61, v56, v58);
          v30 = v63;

          swift_unknownObjectRelease_n();
          return v30;
        }
      }
    }

    return 0.0;
  }

  v41 = v12;
  v42 = v17;
  v43 = v117;
  sub_7581C0();
  if (swift_dynamicCastClass())
  {
    v44 = type metadata accessor for ContentSearchResultCollectionViewCell();
    v45 = sub_7581B0();
    v46 = *(v120 + v118);
    v47 = swift_getObjectType();
    v48 = UIEdgeInsetsZero.left;
    v49 = UIEdgeInsetsZero.bottom;
    v50 = UIEdgeInsetsZero.right;
    swift_unknownObjectRetain();
    v51 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    sub_42C0C4(v45, v46, v51, v30, 1.79769313e308, UIEdgeInsetsZero.top, v48, v49, v50, v44, v47);
    v30 = v52;

    goto LABEL_8;
  }

  sub_75D360();
  if (swift_dynamicCastClass())
  {
    sub_75D350();
    v64 = sub_764EF0();
    v66 = v65;
    v67 = sub_764F70();
    v69 = v68;
    v70 = sub_764F60();
    v30 = sub_6B891C(v64, v66, v67, v69, v70, [*(v120 + v118) snapshotPageTraitEnvironment], v30, 1.79769313e308, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  sub_75F330();
  v71 = swift_dynamicCastClass();
  if (v71)
  {
    v30 = sub_693884(v30, 1.79769313e308, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v71, [*(v120 + v118) snapshotPageTraitEnvironment]);
    swift_unknownObjectRelease();
    return v30;
  }

  sub_757D20();
  if (!swift_dynamicCastClass())
  {
    sub_762810();
    if (!swift_dynamicCastClass())
    {
      sub_7583C0();
      v97 = swift_dynamicCastClass();
      if (v97)
      {
        v98 = v97;
        v99 = v120;
        if (sub_75FFD0())
        {
          v100 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v101 = [*(v99 + v118) snapshotPageTraitEnvironment];
          v102 = swift_getObjectType();
          v103 = UIEdgeInsetsZero.left;
          v104 = UIEdgeInsetsZero.bottom;
          v105 = UIEdgeInsetsZero.right;
          v106 = *(v99 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          v30 = sub_1D77D8(v98, v101, v106, v30, 1.79769313e308, UIEdgeInsetsZero.top, v103, v104, v105, v100, v102);
        }

        else
        {
          v107 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v108 = sub_7583B0();
          v109 = *(v99 + v118);
          v110 = swift_getObjectType();
          v111 = UIEdgeInsetsZero.left;
          v112 = UIEdgeInsetsZero.bottom;
          v113 = UIEdgeInsetsZero.right;
          swift_unknownObjectRetain();
          v114 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_42C0C4(v108, v109, v114, v30, 1.79769313e308, UIEdgeInsetsZero.top, v111, v112, v113, v107, v110);
          v30 = v115;
        }

        goto LABEL_8;
      }

      return 0.0;
    }

    v80 = type metadata accessor for SearchLockupListCollectionViewCell();
    v81 = [*(v120 + v118) snapshotPageTraitEnvironment];
    v82 = UIEdgeInsetsZero.left;
    v83 = UIEdgeInsetsZero.bottom;
    v84 = UIEdgeInsetsZero.right;
    swift_getObjectType();
    LODWORD(v119) = sub_ED2CC(v81);
    v120 = v85;
    v86 = sub_762800();
    v88 = v87;
    v89 = sub_7627F0();
    v91 = v90;
    if (sub_7627C0())
    {
      v92 = sub_764C60();
      v94 = v93;
    }

    else
    {
      v92 = 0;
      v94 = 0;
    }

    v30 = sub_16B770(v86, v88, v89, v91, v92, v94, v119 & 1, v120, v30, 1.79769313e308, UIEdgeInsetsZero.top, v82, v83, v84, v81, v80);
    swift_unknownObjectRelease();

LABEL_15:

    return v30;
  }

  v72 = sub_757D10();
  v119 = [*(v120 + v118) snapshotPageTraitEnvironment];
  v120 = v72;
  sub_757B90();
  v73 = sub_764EF0();
  v75 = v74;

  if (v75)
  {
    v122._object = 0x80000000007D3DD0;
    v122._countAndFlagsBits = 0xD000000000000035;
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    v118 = sub_75B750(v122, v123);
    v116 = v73;
    sub_BD88(&unk_944E30, &unk_784930);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_77B6D0;
    *(v76 + 56) = &type metadata for String;
    *(v76 + 64) = sub_FA4CC();
    *(v76 + 32) = v116;
    *(v76 + 40) = v75;
    sub_769270();
  }

  sub_764EF0();

  sub_769DA0();
  if (qword_93D428 != -1)
  {
    swift_once();
  }

  v77 = sub_BE38(v16, qword_99E450);
  (*(v42 + 16))(v20, v77, v16);
  v78 = [v119 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v79 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v79 = qword_946938;
  }

  v95 = sub_BE38(v10, v79);
  (*(v43 + 16))(v41, v95, v10);

  (*(v43 + 32))(v15, v41, v10);
  sub_75D800();
  sub_75D830();
  sub_757E50();
  sub_757E30();

  swift_unknownObjectRelease();
  (*(v43 + 8))(v15, v10);
  (*(v42 + 8))(v20, v16);
  return v30;
}

uint64_t sub_1D9BF4(uint64_t a1, __n128 a2)
{
  v3 = sub_760770();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7581C0();
  if (swift_dynamicCastClass())
  {
    sub_7581B0();
  }

  else
  {
    sub_7583C0();
    if (swift_dynamicCastClass())
    {
      if (sub_75FFD0())
      {
        return 0;
      }

      sub_7583B0();
    }

    else
    {
      sub_75DDB0();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      if (!*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
      {
        return 0;
      }

      sub_7609E0();

      sub_BD88(&qword_9498C0, &qword_78D270);
      sub_75BD00();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_75BCC0();
  v7 = sub_760760();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_75BC70();
  if (v8 >> 62)
  {
    v11 = sub_76A860();

    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));

    if (v9)
    {
LABEL_6:

      return 1;
    }
  }

  v12 = sub_75BCF0();
  v13 = v12;
  if (v12 >> 62)
  {
    result = sub_76A860();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_18:
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_765750();

  if (v14 >> 62)
  {
    v15 = sub_76A860();
  }

  else
  {
    v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  }

  return v15 != 0;
}

void sub_1D9F18(uint64_t a1, void *a2)
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_isFirstItemFullWidth;
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) == 2)
  {
    sub_7575B0();
    v9 = sub_760020();
    if (v9)
    {
      v10 = v9;
      [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) pageContainerSize];
      v13 = sub_1D8FB0(v10, a2, 1, v11, v12);
      v16 = v15;
      if (v15)
      {
        v17 = v13;
        v18 = v14;
        v19 = sub_1DA148(v7);
        v20 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v2 + v20);
        *(v2 + v20) = 0x8000000000000000;
        sub_4598B8(v19, isUniquelyReferenced_nonNull_native, v17, v18);
        *(v2 + v20) = v22;
        swift_endAccess();

        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*(v5 + 8))(v7, v4, v13);
      }

      *(v2 + v8) = v16 & 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1DA148(uint64_t a1)
{
  result = sub_7575C0();
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v4 = v3 != 2 && (v3 & 1) != 0;
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else
  {
    v6 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
    v7 = [v6 horizontalSizeClass];

    v8 = 1;
    if (v7 != &dword_0 + 1)
    {
      v8 = 2;
    }

    return v5 / v8;
  }

  return result;
}

void sub_1DA1F8(uint64_t a1)
{
  v2 = sub_1DA148(a1);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
  v4 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = v2 * v6;
  if ((v2 * v6) >> 64 != (v2 * v6) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v9 = v8 != 2 && (v8 & 1) != 0;
  v10 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
    goto LABEL_16;
  }

  v11 = [*(v1 + v3) traitCollection];
  v12 = [v11 horizontalSizeClass];

  v13 = 1;
  if (v12 != &dword_0 + 1)
  {
    v13 = 2;
  }

  if (__OFADD__(v10, v13))
  {
    goto LABEL_17;
  }

  if (v10 + v13 < v10)
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1DA314(uint64_t a1)
{
  result = sub_760020();
  if (result)
  {
    sub_75DDB0();
    if (swift_dynamicCastClass())
    {

      return 3;
    }

    else
    {
      sub_762810();
      if (swift_dynamicCastClass() && (sub_75FFC0() & 1) == 0)
      {
        v3 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) "snapshotPageTraitEnvironment")];
        swift_unknownObjectRelease();
        v4 = sub_7699E0();

        if (v4)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

double sub_1DA488(void *a1)
{
  v2 = v1;
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == &dword_0 + 2)
  {
    if (qword_93DCF0 != -1)
    {
      swift_once();
    }

    v11 = sub_766CA0();
    sub_BE38(v11, qword_99FE18);
    v12 = [a1 traitCollection];
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_77D9F0;
    *(v13 + 32) = v12;
    v14 = v12;
    v15 = sub_7671E0();
    sub_7666E0();
    v17 = v16;

    v18 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    [*(v2 + v18) pageMarginInsets];
  }

  else
  {
    if (qword_93C490 != -1)
    {
      swift_once();
    }

    v19 = sub_766CA0();
    sub_BE38(v19, qword_99B308);
    v20 = [a1 traitCollection];
    sub_766470();
    sub_766C70();
    v17 = v21;

    (*(v5 + 8))(v8, v4);
  }

  return v17;
}

double sub_1DA738(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_75D850();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v152 - v13;
  v15 = sub_757E60();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7581C0();
  v159 = a1;
  if (swift_dynamicCastClass())
  {
    v19 = type metadata accessor for ContentSearchResultCollectionViewCell();
    sub_7581B0();
    v20 = sub_65C67C(a2 & 1);

    v21 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits);
    ObjectType = swift_getObjectType();
    [swift_unknownObjectRetain() pageMarginInsets];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    v32 = v20;
    v33 = a3;
    v34 = v21;
    v35 = v24;
    v36 = v26;
    v37 = v28;
    v38 = v30;
    v39 = v31;
    v40 = v19;
    v41 = ObjectType;
LABEL_3:
    sub_42C0C4(v32, v34, v39, v33, 1.79769313e308, v35, v36, v37, v38, v40, v41);
    a3 = v42;

LABEL_4:
    swift_unknownObjectRelease_n();
    return a3;
  }

  v153 = v11;
  v154 = v18;
  v157 = v9;
  v158 = v4;
  v155 = v14;
  v156 = v16;
  sub_75D360();
  if (swift_dynamicCastClass())
  {
    sub_75D350();
    v43 = sub_764EF0();
    v45 = v44;
    v46 = sub_764F70();
    v48 = v47;
    v49 = sub_764F60();
    v50 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    v51 = v158;
    v52 = [*(v158 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v51 + v50) pageMarginInsets];
    a3 = sub_6B891C(v43, v45, v46, v48, v49, v52, a3, 1.79769313e308, v53, v54, v55, v56);
    swift_unknownObjectRelease();

    return a3;
  }

  sub_75DDB0();
  if (swift_dynamicCastClass())
  {
    v57 = v158;
    if (*(v158 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      sub_7609E0();

      sub_BD88(&qword_9498C0, &qword_78D270);
      sub_75BD00();
      if (swift_dynamicCast())
      {
        v58 = type metadata accessor for AdvertSearchResultCollectionViewCell();
        v59 = sub_65C67C(a2 & 1);
        v60 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits);
        v61 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v70 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        sub_3BE390(v59, v60, v70, a3, 1.79769313e308, v63, v65, v67, v69, v58, v61);
        a3 = v71;

        goto LABEL_4;
      }
    }

    return 0.0;
  }

  sub_75F330();
  v72 = swift_dynamicCastClass();
  if (v72)
  {
    v73 = v72;
    v74 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    v75 = v158;
    v76 = [*(v158 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v75 + v74) pageMarginInsets];
    a3 = sub_693884(a3, 1.79769313e308, v77, v78, v79, v80, v73, v76);
    swift_unknownObjectRelease();
    return a3;
  }

  sub_757D20();
  if (swift_dynamicCastClass())
  {
    sub_757D10();
    v81 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    v82 = v158;
    v83 = [*(v158 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v82 + v81) pageMarginInsets];
    sub_757B90();
    v84 = sub_764EF0();
    v86 = v85;

    if (v86)
    {
      v160._object = 0x80000000007D3DD0;
      v160._countAndFlagsBits = 0xD000000000000035;
      v161._countAndFlagsBits = 0;
      v161._object = 0xE000000000000000;
      sub_75B750(v160, v161);
      sub_BD88(&unk_944E30, &unk_784930);
      v87 = v83;
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_77B6D0;
      *(v88 + 56) = &type metadata for String;
      *(v88 + 64) = sub_FA4CC();
      *(v88 + 32) = v84;
      *(v88 + 40) = v86;
      v83 = v87;
      sub_769270();
    }

    sub_764EF0();

    sub_769DA0();
    v89 = v8;
    v91 = v153;
    v90 = v154;
    if (qword_93D428 != -1)
    {
      swift_once();
    }

    v92 = v15;
    v93 = sub_BE38(v15, qword_99E450);
    v94 = v156;
    (*(v156 + 16))(v90, v93, v15);
    v95 = [v83 traitCollection];
    v96 = sub_769A00();
    v97 = v157;
    if (v96)
    {
      v98 = v155;
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v99 = qword_946920;
    }

    else
    {
      v98 = v155;
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v99 = qword_946938;
    }

    v122 = sub_BE38(v89, v99);
    (*(v97 + 16))(v91, v122, v89);

    (*(v97 + 32))(v98, v91, v89);
    sub_75D800();
    sub_75D830();
    sub_757E50();
    sub_757E30();

    swift_unknownObjectRelease();
    (*(v97 + 8))(v98, v89);
    (*(v94 + 8))(v90, v92);
  }

  else
  {
    sub_762810();
    if (!swift_dynamicCastClass())
    {
      sub_7583C0();
      v123 = swift_dynamicCastClass();
      if (v123)
      {
        v124 = v123;
        v125 = v158;
        if (sub_75FFD0())
        {
          v126 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v127 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
          v128 = [*(v125 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
          v129 = swift_getObjectType();
          [*(v125 + v127) pageMarginInsets];
          v131 = v130;
          v133 = v132;
          v135 = v134;
          v137 = v136;
          v138 = *(v125 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          a3 = sub_1D77D8(v124, v128, v138, a3, 1.79769313e308, v131, v133, v135, v137, v126, v129);
          goto LABEL_4;
        }

        v140 = type metadata accessor for ContentSearchResultCollectionViewCell();
        sub_7583B0();
        v141 = sub_65C67C(a2 & 1);

        v142 = *(v125 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits);
        v143 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v145 = v144;
        v147 = v146;
        v149 = v148;
        v151 = v150;
        v31 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        v32 = v141;
        v33 = a3;
        v34 = v142;
        v35 = v145;
        v36 = v147;
        v37 = v149;
        v38 = v151;
        v39 = v31;
        v40 = v140;
        v41 = v143;
        goto LABEL_3;
      }

      return 0.0;
    }

    v100 = type metadata accessor for SearchLockupListCollectionViewCell();
    v101 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    v102 = v158;
    v103 = [*(v158 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v102 + v101) pageMarginInsets];
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    swift_getObjectType();
    LODWORD(v158) = sub_ED2CC(v103);
    v159 = v112;
    v113 = sub_762800();
    v115 = v114;
    v116 = sub_7627F0();
    v118 = v117;
    if (sub_7627C0())
    {
      v119 = sub_764C60();
      v121 = v120;
    }

    else
    {
      v119 = 0;
      v121 = 0;
    }

    a3 = sub_16B770(v113, v115, v116, v118, v119, v121, v158 & 1, v159, a3, 1.79769313e308, v105, v107, v109, v111, v103, v100);
    swift_unknownObjectRelease();
  }

  return a3;
}

double sub_1DB2F4(void *a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = a1;
    v10 = sub_760020();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
      v13 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v14 = [v13 horizontalSizeClass];

      if (v14 == &dword_0 + 1)
      {
        v15 = [*(v2 + v12) traitCollection];
        v16 = sub_760010();

        [*(v3 + v12) pageContainerSize];
        v18 = sub_1DA738(v11, v16 & 1, v17);
      }

      else
      {
        sub_1D8B88(a2, v8);
      }

      v7 = v18;
    }

    else
    {
    }
  }

  return v7;
}

unint64_t sub_1DB464()
{
  sub_BD88(&unk_9498B0, qword_794670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  sub_769240();
  sub_76A6E0();
  *(inited + 96) = &type metadata for UInt32;
  *(inited + 72) = 0;
  sub_769240();
  sub_76A6E0();
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = 0;
  sub_769240();
  sub_76A6E0();
  *(inited + 240) = &type metadata for UInt32;
  *(inited + 216) = 0;
  v1 = sub_10E1F8(inited);
  swift_setDeallocating();
  sub_BD88(&qword_940758, &unk_7851D0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1DB5A8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[18] = &type metadata for Double;
  v26[19] = &protocol witness table for Double;
  v26[14] = &protocol witness table for Double;
  v26[15] = 0x4046000000000000;
  v26[13] = &type metadata for Double;
  v26[10] = 0x4030000000000000;
  v26[8] = &type metadata for Double;
  v26[9] = &protocol witness table for Double;
  v26[5] = 0x4020000000000000;
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v16 = sub_BE38(v5, qword_99E7A0);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v4, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v2[13];
  v13(v4);
  v7 = sub_766CA0();
  v26[3] = v7;
  v26[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v26);
  v24 = v1;
  v25 = &protocol witness table for FontSource;
  v8 = sub_B1B4(v23);
  v9 = v2[2];
  v9(v8, v4, v1);
  sub_766CB0();
  v10 = v2[1];
  v10(v4, v1);
  v25 = &protocol witness table for Double;
  v24 = &type metadata for Double;
  v23[0] = 0;
  v15(v4, v16, v5);
  (v13)(v4, v14, v1);
  v22[3] = v7;
  v22[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v22);
  v20 = v1;
  v21 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v19);
  v9(v11, v4, v1);
  sub_766CB0();
  v10(v4, v1);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_75D2A0();
}

char *sub_1DB8F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_767BD0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_BD88(&qword_9498F8, &qword_78AA20);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-1] - v5;
  v7 = sub_75D2C0();
  __chkstk_darwin(v7 - 8);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v10, qword_99E788);
  (*(v11 + 16))(v13, v14, v10);
  v15 = [objc_opt_self() currentTraitCollection];
  sub_1DB5A8(v9);

  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeFloatingBannerView_lockupView] = sub_5B8B0(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v18 = v17;
  sub_769BA0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v18 setLayoutMargins:{v20, v22, v24, v26}];
  [v18 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  sub_767970();
  v27 = sub_767980();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  sub_769F60();
  sub_767BC0();
  v30[3] = sub_767BE0();
  v30[4] = &protocol witness table for _Glass;
  sub_B1B4(v30);
  sub_767BF0();
  sub_769EA0();

  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeFloatingBannerView_lockupView]];
  return v18;
}

double sub_1DBED0()
{
  v1 = [v0 animationKeys];
  if (v1)
  {
    v3 = v1;
    v4 = sub_769460();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {

        v7 = sub_769210();
        v8 = [v0 animationForKey:v7];

        if (v8)
        {
          if (([v8 isRemovedOnCompletion] & 1) == 0)
          {
            v9 = sub_769210();

            [v0 removeAnimationForKey:v9];

            goto LABEL_6;
          }
        }

LABEL_6:
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void sub_1DC17C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SubviewToAncestorResizingView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v2 bounds];
      [v0 convertRect:v2 fromCoordinateSpace:?];
      [v4 setFrame:?];

      v2 = v4;
    }
  }
}

id sub_1DC27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubviewToAncestorResizingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1DC324(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffect);
  if (v3)
  {
    v10 = v3;
    v4 = [v10 tintColor];
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        sub_396E8();
        v6 = v2;
        v7 = sub_76A1C0();

        if (v7)
        {

LABEL_13:
          a1 = v10;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v2)
    {
      goto LABEL_13;
    }

    [v10 setTintColor:v2];
    v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView);
    if (v8)
    {
      v9 = v8;
      [v9 setEffect:v10];

      a1 = v2;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void (*sub_1DC454(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffect);
  if (v3)
  {
    v3 = [v3 tintColor];
  }

  *a1 = v3;
  return sub_1DC4BC;
}

void sub_1DC4BC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1DC324(v2);
  }

  else
  {
    sub_1DC324(*a1);
  }
}

void sub_1DC524(char a1)
{
  v2 = v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isInstalling];
  v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isInstalling] = a1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v8[4] = sub_1DF694;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_23F0CC;
      v8[3] = &unk_888290;
      v5 = _Block_copy(v8);
      v6 = v1;

      [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:0.3];
      _Block_release(v5);
    }

    else
    {
      v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView];

      [v7 setHidden:0];
    }
  }
}

uint64_t sub_1DC798(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "frame");
  v12 = v11 != a4 || v10 != a3;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(v4 + v13, v17);
  sub_B170(v17, v18);
  if (sub_760DB0())
  {
    sub_BEB8(v17);
    goto LABEL_6;
  }

  if (!v12)
  {
    return sub_BEB8(v17);
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v15 = CGRectEqualToRect(v20, v21);
  result = sub_BEB8(v17);
  if (!v15)
  {
LABEL_6:
    sub_134D8(v5 + v13, v17);
    sub_B170(v17, v18);
    sub_1DF6D4(&qword_949A60, v14, type metadata accessor for OfferButton, &unk_78AA88);
    sub_760E30();
    sub_BEB8(v17);
    sub_134D8(v5 + v13, v17);
    sub_B170(v17, v18);
    sub_760DF0();
    return sub_BEB8(v17);
  }

  return result;
}

void sub_1DC978()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_effectShape];
  [v2 setHidden:0];
  [v2 setFillColor:0];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_outlineShape];
  [v3 setHidden:0];
  [v3 setFillColor:0];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView];
  [v4 setHidden:0];
  v5 = [v1 tintColor];
  [v4 setTintColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label];
  [v6 setHidden:0];
  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:1];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel] setHidden:1];
  [v4 bounds];
  [v4 setBounds:?];
  v7 = sub_7653B0();
  v65[3] = v7;
  v65[4] = sub_1DF6D4(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v8 = sub_B1B4(v65);
  (*(*(v7 - 8) + 104))(v8, enum case for Feature.glass_offer_button_2025A(_:), v7);
  LOBYTE(v7) = sub_765C30();
  sub_BEB8(v65);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView;
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView];
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView];
      v10 = 0;
    }

    v27 = v10;
    [v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v72.origin.x = v29;
    v72.origin.y = v31;
    v72.size.width = v33;
    v72.size.height = v35;
    MidX = CGRectGetMidX(v72);
    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    [v4 setCenter:{MidX, CGRectGetMidY(v73)}];
    v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_shapeLayerView];
    [v37 bounds];
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    v42 = CGRectGetMidX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    [v2 setPosition:{v42, CGRectGetMidY(v75)}];
    [v37 bounds];
    v43 = v76.origin.x;
    v44 = v76.origin.y;
    v45 = v76.size.width;
    v46 = v76.size.height;
    v47 = CGRectGetMidX(v76);
    v77.origin.x = v43;
    v77.origin.y = v44;
    v77.size.width = v45;
    v77.size.height = v46;
    [v3 setPosition:{v47, CGRectGetMidY(v77)}];
    v48 = *&v1[v9];
    if (v48)
    {
      v49 = *&v1[v9];
    }

    else
    {
      v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView];
      v48 = 0;
    }

    v50 = v48;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v78.origin.x = v52;
    v78.origin.y = v54;
    v78.size.width = v56;
    v78.size.height = v58;
    v59 = CGRectGetMidX(v78);
    v79.origin.x = v52;
    v79.origin.y = v54;
    v79.size.width = v56;
    v79.size.height = v58;
    [v6 setCenter:{v59, CGRectGetMidY(v79)}];
    v60 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        v64 = v63;
        [v62 bounds];
        [v60 convertRect:v62 fromCoordinateSpace:?];
        [v64 setFrame:?];
      }

      else
      {
      }
    }
  }

  else
  {
    [v3 position];
    [v4 setCenter:?];
    [v1 bounds];
    v12 = v66.origin.x;
    v13 = v66.origin.y;
    v14 = v66.size.width;
    v15 = v66.size.height;
    v16 = CGRectGetMidX(v66);
    v67.origin.x = v12;
    v67.origin.y = v13;
    v67.size.width = v14;
    v67.size.height = v15;
    [v2 setPosition:{v16, CGRectGetMidY(v67)}];
    [v1 bounds];
    v17 = v68.origin.x;
    v18 = v68.origin.y;
    v19 = v68.size.width;
    v20 = v68.size.height;
    v21 = CGRectGetMidX(v68);
    v69.origin.x = v17;
    v69.origin.y = v18;
    v69.size.width = v19;
    v69.size.height = v20;
    [v3 setPosition:{v21, CGRectGetMidY(v69)}];
    [v1 bounds];
    v22 = v70.origin.x;
    v23 = v70.origin.y;
    v24 = v70.size.width;
    v25 = v70.size.height;
    v26 = CGRectGetMidX(v70);
    v71.origin.x = v22;
    v71.origin.y = v23;
    v71.size.width = v24;
    v71.size.height = v25;
    [v6 setCenter:{v26, CGRectGetMidY(v71)}];
  }

  [v2 setStrokeStart:0.0];
  [v2 setStrokeEnd:0.0];
  [v3 setStrokeStart:0.0];
  [v3 setStrokeEnd:1.0];
  sub_1DBED0();
}

id sub_1DCF48(char *a1, char a2, void *a3)
{
  [a1 setNeedsLayout];
  if (a2)
  {

    return [a1 layoutIfNeeded];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v8, "invalidateIntrinsicContentSize");
    v7 = &a1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v7[16] = 1;
    [a3 setNeedsLayout];
    return [a3 layoutIfNeeded];
  }
}

char *sub_1DD00C(int a1)
{
  v2 = v1;
  v101 = a1;
  ObjectType = swift_getObjectType();
  v96 = sub_768C60();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_75D850();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v93 - v6;
  v103 = v7;
  __chkstk_darwin(v8);
  v105 = &v93 - v9;
  v10 = sub_7676D0();
  __chkstk_darwin(v10 - 8);
  v93 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_760AD0();
  v12 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_effectShape;
  *&v1[v17] = [objc_allocWithZone(CAShapeLayer) init];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_outlineShape;
  *&v1[v18] = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_shapeLayerView;
  *&v1[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView;
  *&v1[v20] = [objc_allocWithZone(UIImageView) init];
  v100 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label;
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F298);
  v23 = *(v21 - 8);
  v99 = *(v23 + 16);
  v99(v16, v22, v21);
  v98 = *(v23 + 56);
  v98(v16, 0, 1, v21);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v97 = *(v12 + 104);
  v97(v109, enum case for DirectionalTextAlignment.none(_:), v110);
  v25 = sub_75BB20();
  v26 = objc_allocWithZone(v25);
  *&v1[v100] = sub_75BB10();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v28 = sub_BE38(v21, qword_99F2E0);
  v99(v16, v28, v21);
  v98(v16, 0, 1, v21);
  sub_75D860();
  v97(v109, v24, v110);
  v29 = objc_allocWithZone(v25);
  *&v1[v27] = sub_75BB10();
  v30 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *&v1[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffect;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffect] = 0;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView] = 0;
  v33 = &v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_displayProperties] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isInstalling] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v34 = &v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isEnabledObserver];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled] = 1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_includeTopPadding] = 2;
  v35 = &v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration];
  v35[3] = sub_75D470();
  v35[4] = &protocol witness table for EmptyConfiguration;
  sub_B1B4(v35);
  sub_75D460();
  v36 = &v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 1;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_traitChangeRegistration] = 0;
  if (v101)
  {
    v37 = sub_7653B0();
    *(&v113 + 1) = v37;
    v114 = sub_1DF6D4(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v38 = sub_B1B4(&aBlock);
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.glass_offer_button_2025A(_:), v37);
    LOBYTE(v37) = sub_765C30();
    sub_BEB8(&aBlock);
    if (v37)
    {
      v40 = [objc_allocWithZone(UIGlassEffect) init];
      v41 = *&v2[v31];
      *&v2[v31] = v40;

      v42 = [objc_allocWithZone(UIVisualEffectView) init];
      goto LABEL_10;
    }
  }

  else
  {
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
  }

  v43 = *&v2[v31];
  *&v2[v31] = 0;

  v42 = 0;
LABEL_10:
  v44 = *&v2[v32];
  *&v2[v32] = v42;

  v116.receiver = v2;
  v116.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v116, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v45 setScalesLargeContentImage:1];
  v46 = [objc_opt_self() mainScreen];
  [v46 scale];
  v48 = v47;

  v49 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_outlineShape;
  [*&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_outlineShape] setContentsScale:v48];
  [*&v45[v49] setFillColor:0];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_effectShape;
  [*&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_effectShape] setContentsScale:v48];
  [*&v45[v50] setFillColor:0];
  v51 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label;
  v52 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label];
  sub_75BAD0();

  v53 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView;
  [*&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView] setContentMode:4];
  v54 = sub_7653B0();
  *(&v113 + 1) = v54;
  v114 = sub_1DF6D4(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v55 = sub_B1B4(&aBlock);
  (*(*(v54 - 8) + 104))(v55, v39, v54);
  v56 = sub_765C30();
  sub_BEB8(&aBlock);
  if (v56)
  {
    v57 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView];
    if (v57 && (v58 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffect]) != 0)
    {
      v59 = v57;
      v60 = v58;
      sub_7676C0();
      sub_769F00();
      [v59 setUserInteractionEnabled:0];
      [v59 setEffect:v60];
      v61 = [v59 contentView];
      [v61 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView]];

      [v45 addSubview:v59];
    }

    else
    {
      [v45 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView]];
    }

    v65 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView;
    swift_unknownObjectWeakAssign();
    v66 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_shapeLayerView;
    swift_unknownObjectWeakAssign();
    v67 = [*&v45[v66] layer];
    [v67 addSublayer:*&v45[v49]];

    v68 = [*&v45[v66] layer];
    [v68 addSublayer:*&v45[v50]];

    [*&v45[v65] addSubview:*&v45[v66]];
    [*&v45[v65] addSubview:*&v45[v51]];
    [*&v45[v65] addSubview:*&v45[v53]];
  }

  else
  {
    v62 = v45;
    v63 = [v62 layer];
    [v63 addSublayer:*&v45[v49]];

    v64 = [v62 layer];
    [v64 addSublayer:*&v45[v50]];

    [v62 addSubview:*&v45[v51]];
    [v62 addSubview:*&v45[v53]];
  }

  v69 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel;
  v70 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel];
  sub_75BAD0();

  [v45 addSubview:*&v45[v69]];
  [*&v45[v69] setShowsLargeContentViewer:1];
  v71 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v45 addInteraction:v71];

  isEscapingClosureAtFileLocation = [v45 traitCollection];
  v73 = sub_769A00();
  v74 = v107;
  v75 = v106;
  v76 = v105;
  if ((v73 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v77 = qword_946938;
    goto LABEL_23;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v77 = qword_946920;
LABEL_23:
    v78 = sub_BE38(v74, v77);
    v79 = *(v75 + 16);
    v80 = v102;
    v79(v102, v78, v74);

    v81 = *(v75 + 32);
    v81(v76, v80, v74);
    v82 = objc_opt_self();
    v83 = v104;
    v79(v104, v76, v74);
    v84 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v45;
    v81((v85 + v84), v83, v74);
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1DFE40;
    *(v86 + 24) = v85;
    v114 = sub_2EC28;
    v115 = v86;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v113 = sub_1EB578;
    *(&v113 + 1) = &unk_888308;
    v87 = _Block_copy(&aBlock);
    v45 = v45;

    [v82 performWithoutAnimation:v87];
    _Block_release(v87);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v88 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(&v45[v88], &aBlock);
  sub_B170(&aBlock, *(&v113 + 1));
  sub_1DF6D4(&qword_949A60, v89, type metadata accessor for OfferButton, &unk_78AA88);
  sub_760DF0();
  sub_BEB8(&aBlock);
  aBlock = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  v90 = v94;
  sub_768BC0();
  sub_10A2C(v111, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  (*(v95 + 8))(v90, v96);
  sub_BD88(&qword_9477F0, qword_780200);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_77B6D0;
  *(v91 + 32) = sub_767B80();
  *(v91 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  (*(v75 + 8))(v76, v74);

  return v45;
}

id sub_1DE05C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label);
  sub_75D800();
  [v2 frame];
  [v2 setFrame:?];
  v3 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_effectShape);
  sub_75D800();
  [v3 frame];
  [v3 setFrame:?];
  v4 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_outlineShape);
  sub_75D800();
  [v4 frame];

  return [v4 setFrame:?];
}

id ArcadeSubscribeViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1DE3E0()
{
  swift_getObjectType();
  v1 = [v0 superview];
  if (v1)
  {

    v3 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_traitChangeRegistration;
    if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_traitChangeRegistration])
    {
      return result;
    }

    sub_BD88(&qword_9477F0, qword_780200);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_782440;
    *(v4 + 32) = sub_767B80();
    *(v4 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v4 + 48) = sub_7676E0();
    *(v4 + 56) = &protocol witness table for UITraitLayoutDirection;
    *(v4 + 64) = sub_7676B0();
    *(v4 + 72) = &protocol witness table for UITraitDisplayScale;
    *(v4 + 80) = sub_7676F0();
    *(v4 + 88) = &protocol witness table for UITraitLegibilityWeight;
    v5 = sub_769F40();

    *&v0[v3] = v5;
  }

  else
  {
    if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_traitChangeRegistration])
    {
      return result;
    }

    swift_unknownObjectRetain();
    sub_769F50();
  }

  swift_unknownObjectRelease();
  return result;
}

void sub_1DE594()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(&v0[v2], v11);
  sub_B170(v11, v12);
  [v0 bounds];
  [objc_opt_self() areAnimationsEnabled];
  sub_1DF6D4(&qword_949A60, v3, type metadata accessor for OfferButton, &unk_78AA88);
  sub_760E00();
  sub_BEB8(v11);
  v4 = sub_7653B0();
  v12 = v4;
  v13 = sub_1DF6D4(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v5 = sub_B1B4(v11);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.glass_offer_button_2025A(_:), v4);
  LOBYTE(v4) = sub_765C30();
  sub_BEB8(v11);
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v8 bounds];
        [v6 convertRect:v8 fromCoordinateSpace:?];
        [v10 setFrame:?];

        v8 = v10;
      }
    }
  }
}

uint64_t sub_1DEC1C(char a1)
{
  swift_getObjectType();
  LODWORD(v3) = 1057971241;
  if (a1)
  {
    *&v3 = 1.0;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.25;
  }

  if (a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.56;
  }

  [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_outlineShape) setOpacity:v3];
  [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView) setAlpha:v4];
  [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label) setAlpha:v5];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(v1 + v6, v9);
  sub_B170(v9, v9[3]);
  sub_1DF6D4(&qword_949A60, v7, type metadata accessor for OfferButton, &unk_78AA88);
  sub_760E20();
  return sub_BEB8(v9);
}

id sub_1DED78()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "invalidateIntrinsicContentSize");
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled;
  v0[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled] = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(&v0[v5], v8);
  sub_B170(v8, v9);
  sub_1DF6D4(&qword_949A60, v6, type metadata accessor for OfferButton, &unk_78AA88);
  sub_760E30();
  sub_BEB8(v8);
  sub_134D8(&v0[v5], v8);
  sub_B170(v8, v9);
  sub_760DF0();
  sub_BEB8(v8);
  [v2 setAnimationsEnabled:v3];
  v0[v4] = 1;
  [v0 setNeedsLayout];
  return [v0 setNeedsDisplay];
}

id sub_1DF000@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label);
  *a1 = v2;
  return v2;
}

id sub_1DF014@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel);
  *a1 = v2;
  return v2;
}

id sub_1DF028@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView);
  *a1 = v2;
  return v2;
}

id sub_1DF03C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_1DF074()
{
  v1 = [v0 tintColor];

  return v1;
}

id sub_1DF0AC()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    return *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled);
  }

  return result;
}

id (*sub_1DF11C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 overrideUserInterfaceStyle];
  return sub_1DF170;
}

id sub_1DF184()
{
  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffect);
  if (result)
  {
    return [result tintColor];
  }

  return result;
}

uint64_t (*sub_1DF1C0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1DC454(v2);
  return sub_21028;
}

void *sub_1DF248()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView);
    v3 = v2;
  }

  v4 = v1;
  return v2;
}

id sub_1DF298()
{
  v1 = [v0 largeContentImage];

  return v1;
}

void sub_1DF2D0(void *a1)
{
  [v1 setLargeContentImage:a1];
}

void (*sub_1DF318(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 largeContentImage];
  return sub_1DF374;
}

void sub_1DF374(id *a1)
{
  v1 = *a1;
  [a1[1] setLargeContentImage:?];
}

uint64_t sub_1DF3BC()
{
  v1 = [v0 largeContentTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_769240();

  return v3;
}

void sub_1DF424(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v3 setLargeContentTitle:v4];
}

uint64_t (*sub_1DF490(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1DF500(v2);
  return sub_246E0;
}

void (*sub_1DF500(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  a1[2] = v1;
  v3 = [v1 largeContentTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1DF588;
}

void sub_1DF588(uint64_t *a1, char a2, double a3)
{
  v4 = a1[1];
  if (a2)
  {
    if (v4)
    {

      v5 = sub_769210();
    }

    else
    {
      v5 = 0;
    }

    [a1[2] setLargeContentTitle:v5];
  }

  else if (v4)
  {
    v5 = sub_769210();

    [a1[2] setLargeContentTitle:v5];
  }

  else
  {
    v5 = 0;
    [a1[2] setLargeContentTitle:0];
  }
}

uint64_t sub_1DF65C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1DF6BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DF6D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DF71C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_134D8(v1, v2);
    sub_B170(v2, v2[3]);
    sub_75EC40();
    sub_BEB8(v2);
  }
}

uint64_t sub_1DF7CC()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v2 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(v0 + v2, v8);
    sub_B170(v8, v8[3]);
    sub_760DE0();
    v4 = v3;
    v6 = v5;
    result = sub_BEB8(v8);
    *v1 = v4;
    *(v1 + 8) = v6;
    *(v1 + 16) = 0;
  }

  return result;
}

void sub_1DF88C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_effectShape;
  *(v1 + v8) = [objc_allocWithZone(CAShapeLayer) init];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_outlineShape;
  *(v1 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_shapeLayerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView;
  *(v1 + v11) = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_label;
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99F298);
  v14 = *(v12 - 8);
  v28 = *(v14 + 16);
  v28(v7, v13, v12);
  v27 = *(v14 + 56);
  v27(v7, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v2;
  v16(v32, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = sub_75BB20();
  v18 = objc_allocWithZone(v17);
  *(v1 + v29) = sub_75BB10();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v12, qword_99F2E0);
  v28(v7, v20, v12);
  v27(v7, 0, 1, v12);
  sub_75D860();
  v16(v32, v15, v31);
  v21 = objc_allocWithZone(v17);
  *(v1 + v19) = sub_75BB10();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffect) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_glassEffectView) = 0;
  v23 = v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_displayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isInstalling) = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isEnabledObserver);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_includeTopPadding) = 2;
  v25 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration);
  v25[3] = sub_75D470();
  v25[4] = &protocol witness table for EmptyConfiguration;
  sub_B1B4(v25);
  sub_75D460();
  v26 = v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_traitChangeRegistration) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_1DFD7C()
{
  v1 = sub_75D850();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_1DFE40()
{
  sub_75D850();
  v1 = *(v0 + 16);

  return sub_1DE05C(v1);
}

id sub_1DFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v91 = a8;
  v92 = a7;
  v97 = a5;
  v98 = a4;
  v89 = a3;
  v88 = sub_BD88(&qword_949A80, qword_78AC90);
  __chkstk_darwin(v88);
  v90 = v78 - v13;
  v14 = sub_765880();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_758FD0();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_9457F0, qword_783FD0);
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  __chkstk_darwin(v19);
  v99 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v96 = v78 - v22;
  v23 = sub_BD88(&unk_948730, &qword_788DD0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  *&v29 = __chkstk_darwin(v26).n128_u64[0];
  if (a1 && a2)
  {
    v81 = v28;
    v85 = v78 - v27;
    v84 = a2;
    v83 = v15;
    v87 = v14;
    *&v9[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_displayProperties] = a1;
    swift_retain_n();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v30 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter;
    swift_beginAccess();
    v80 = v30;
    sub_1E8554(&v108, &v9[v30]);
    swift_endAccess();
    swift_weakAssign();
    sub_761230();
    v78[3] = sub_768900();
    sub_768ED0();
    v31 = v108;
    sub_7611D0();
    v32 = sub_75FE20();
    v93 = a1;
    v86 = v31;
    if (v32)
    {
      v33 = swift_allocObject();
      v82 = v9;
      v79 = v33;
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v78[1] = v34;
      swift_weakInit();
      v78[2] = a6;
      sub_1ED18(v98, v85, &unk_948730, &qword_788DD0);
      v35 = v101;
      v36 = v102;
      v37 = v96;
      (*(v101 + 16))(v96, v97, v102);
      v38 = (*(v24 + 80) + 56) & ~*(v24 + 80);
      v39 = (v25 + *(v35 + 80) + v38) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v79;
      *(v40 + 2) = v34;
      *(v40 + 3) = v41;
      v42 = v84;
      *(v40 + 4) = v93;
      *(v40 + 5) = v42;
      *(v40 + 6) = v89;
      sub_1E8864(v85, &v40[v38]);
      (*(v35 + 32))(&v40[v39], v37, v36);
      v43 = &v40[v39 + v20];
      *v43 = v92 & 1;
      v43[1] = v91 & 1;

      sub_7611A0();
      v9 = v82;
      a1 = v93;

      v31 = v86;
    }

    sub_761210();
    v44 = v31;
    v45 = sub_758FA0();
    (*(v94 + 8))(v18, v95);
    v46 = v100;
    sub_75FE90();
    if (!sub_1E1298(v46, a1, v45 & 1))
    {

      return (*(v83 + 8))(v46, v87);
    }

    v47 = v101 + 16;
    v48 = *(v101 + 16);
    v48(v99, v97, v102);
    sub_1ED18(v98, v81, &unk_948730, &qword_788DD0);
    v49 = *(v88 + 48);
    v50 = v83;
    v51 = v90;
    v52 = v46;
    v53 = v87;
    (*(v83 + 16))(v90, v52, v87);
    *(v51 + v49) = v45 & 1;
    v54 = (*(v50 + 88))(v51, v53);
    if (v54 == enum case for OfferType.app(_:))
    {
LABEL_7:
      (*(v50 + 8))(v51, v53);
      sub_BD88(&unk_944300, &qword_77DEE0);
      sub_768ED0();
      v97 = v104;
      v98 = v103;
      sub_BD88(&qword_93F258, &qword_77DEE8);
      sub_768ED0();
      v106 = sub_759E40();
      v107 = &protocol witness table for Restrictions;
      sub_768ED0();
      v48(v96, v99, v102);
      v55 = v81;
      sub_1ED18(v81, v85, &unk_948730, &qword_788DD0);
      sub_75A920();
      sub_768ED0();
      sub_75A7D0();

      v56 = sub_758480();
      swift_allocObject();

      v57 = sub_758470();
      sub_10A2C(v55, &unk_948730, &qword_788DD0);
      (*(v101 + 8))(v99, v102);
      *(&v109 + 1) = v56;
      v110 = &protocol witness table for AppOfferButtonPresenter;
      *&v108 = v57;
LABEL_20:
      v68 = objc_opt_self();
      v69 = [v68 areAnimationsEnabled];
      [v68 setAnimationsEnabled:0];
      v70 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled;
      v9[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled] = 0;
      [v9 setHidden:0];
      sub_1E85C4(&qword_949A88, type metadata accessor for OfferButton, &unk_78ABD8);
      sub_10974(&v108, *(&v109 + 1));
      swift_unknownObjectRetain();
      sub_75EC30();
      [v68 setAnimationsEnabled:v69];

      (*(v50 + 8))(v100, v87);
      v9[v70] = 1;
      sub_134D8(&v108, v105);
      v71 = v80;
      swift_beginAccess();
      sub_1E8554(v105, &v9[v71]);
      swift_endAccess();
      return sub_BEB8(&v108);
    }

    v94 = v47;
    v95 = v48;
    if (v54 == enum case for OfferType.inAppPurchase(_:))
    {
      v82 = v9;
      sub_10A2C(v81, &unk_948730, &qword_788DD0);
      v59 = v102;
      (*(v101 + 8))(v99, v102);
      if (sub_75FE50())
      {
        sub_BD88(&unk_944300, &qword_77DEE0);
        sub_768ED0();
        sub_759E40();
        sub_768ED0();
        v95(v96, v97, v59);
        sub_1ED18(v98, v85, &unk_948730, &qword_788DD0);
        v60 = sub_7576E0();
        swift_allocObject();

        v61 = sub_7576B0();
        v62 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
      }

      else
      {
        sub_BD88(&unk_944300, &qword_77DEE0);
        sub_768ED0();
        sub_759E40();
        sub_768ED0();
        v95(v96, v97, v59);
        sub_1ED18(v98, v85, &unk_948730, &qword_788DD0);
        v60 = sub_757F00();
        swift_allocObject();

        v61 = sub_757EE0();
        v62 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
      }

      *(&v109 + 1) = v60;
      v110 = v62;
      *&v108 = v61;
      v50 = v83;
      (*(v83 + 8))(v90, v87);
      v9 = v82;
      goto LABEL_20;
    }

    v63 = v101;
    v64 = v102;
    v65 = v99;
    if (v54 == enum case for OfferType.arcade(_:))
    {
      sub_10A2C(v81, &unk_948730, &qword_788DD0);
      (*(v63 + 8))(v65, v64);
      v95(v96, v97, v64);
      sub_1ED18(v98, v85, &unk_948730, &qword_788DD0);
      v66 = sub_763F20();
      swift_allocObject();

      v67 = sub_763F10();
      *(&v109 + 1) = v66;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
      *&v108 = v67;
    }

    else
    {
      if (v54 != enum case for OfferType.arcadeApp(_:))
      {
        sub_BD88(&unk_944300, &qword_77DEE0);
        sub_768ED0();
        v97 = v104;
        v98 = v103;
        sub_BD88(&qword_93F258, &qword_77DEE8);
        sub_768ED0();
        v106 = sub_759E40();
        v107 = &protocol witness table for Restrictions;
        sub_768ED0();
        v72 = v102;
        v95(v96, v65, v102);
        v73 = v81;
        sub_1ED18(v81, v85, &unk_948730, &qword_788DD0);
        sub_75A920();
        sub_768ED0();
        sub_75A7D0();

        v74 = sub_758480();
        swift_allocObject();

        v75 = sub_758470();
        sub_10A2C(v73, &unk_948730, &qword_788DD0);
        (*(v101 + 8))(v99, v72);
        *(&v109 + 1) = v74;
        v110 = &protocol witness table for AppOfferButtonPresenter;
        *&v108 = v75;
        sub_10A2C(v90, &qword_949A80, qword_78AC90);
        v50 = v83;
        goto LABEL_20;
      }

      v50 = v83;
      v48 = v95;
      if (v45)
      {
        goto LABEL_7;
      }

      sub_10A2C(v81, &unk_948730, &qword_788DD0);
      (*(v101 + 8))(v99, v102);
      sub_75BDB0();
      if (swift_dynamicCastClass())
      {
        sub_75BD40();
      }

      v95(v96, v97, v102);
      sub_1ED18(v98, v85, &unk_948730, &qword_788DD0);
      v76 = sub_763F20();
      swift_allocObject();

      v77 = sub_763F10();
      *(&v109 + 1) = v76;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

      *&v108 = v77;
    }

    v50 = v83;
    (*(v83 + 8))(v51, v87);
    goto LABEL_20;
  }

  return [v9 setHidden:{1, v29}];
}

void (*sub_1E113C(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  a1[2] = v1;
  v3 = [v1 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1E11C4;
}

void sub_1E11C4(uint64_t *a1, char a2, double a3)
{
  v4 = a1[1];
  if (a2)
  {
    if (v4)
    {

      v5 = sub_769210();
    }

    else
    {
      v5 = 0;
    }

    [a1[2] setAccessibilityLabel:v5];
  }

  else if (v4)
  {
    v5 = sub_769210();

    [a1[2] setAccessibilityLabel:v5];
  }

  else
  {
    v5 = 0;
    [a1[2] setAccessibilityLabel:0];
  }
}

BOOL sub_1E1298(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_BD88(&qword_949A80, qword_78AC90);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter;
  swift_beginAccess();
  sub_1ED18(v3 + v9, &v19, &qword_949A68, &qword_78AB98);
  if (!v20)
  {
    sub_10A2C(&v19, &qword_949A68, &qword_78AB98);
    return 1;
  }

  sub_10914(&v19, v21);
  v10 = *(v6 + 48);
  v11 = sub_765880();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  v8[v10] = a3 & 1;
  v13 = (*(v12 + 88))(v8, v11);
  if (v13 == enum case for OfferType.app(_:))
  {
    goto LABEL_3;
  }

  if (v13 == enum case for OfferType.inAppPurchase(_:))
  {
    if (sub_75FE50())
    {
      v16 = sub_7576E0();
    }

    else
    {
      v16 = sub_757F00();
    }

    v14 = v16;
    (*(v12 + 8))(v8, v11);
    goto LABEL_12;
  }

  if (v13 == enum case for OfferType.arcade(_:))
  {
    goto LABEL_9;
  }

  if (v13 != enum case for OfferType.arcadeApp(_:))
  {
    v14 = sub_758480();
    sub_10A2C(v8, &qword_949A80, qword_78AC90);
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_3:
    (*(v12 + 8))(v8, v11);
    v14 = sub_758480();
  }

  else
  {
LABEL_9:
    (*(v12 + 8))(v8, v11);
    v14 = sub_763F20();
  }

LABEL_12:
  sub_B170(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  sub_BEB8(v21);
  return DynamicType != v14;
}

void sub_1E155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v77 = a8;
  v78 = a7;
  v71 = a6;
  v73 = a5;
  v83 = a4;
  v10 = sub_BD88(&qword_949A80, qword_78AC90);
  __chkstk_darwin(v10);
  v76 = v65 - v11;
  v12 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v12 - 8);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = v65 - v15;
  v79 = sub_BD88(&unk_9457F0, qword_783FD0);
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v65 - v18;
  v20 = sub_765880();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_758FD0();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v82 = Strong;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (!v28)
    {

      return;
    }

    v29 = v28;
    v72 = v20;
    sub_75C390();
    v30 = sub_758FA0();
    (*(v24 + 8))(v26, v23);
    v31 = v84;
    v32 = v83;
    sub_75FE90();
    if (!sub_1E1298(v31, v32, v30 & 1))
    {

      (*(v21 + 8))(v31, v72);
      return;
    }

    v68 = v29;
    v69 = a10;
    v67 = a9;
    v33 = v81 + 16;
    v34 = *(v81 + 16);
    v66 = v19;
    v35 = v79;
    v34(v19, v77, v79);
    sub_1ED18(v78, v80, &unk_948730, &qword_788DD0);
    v36 = *(v10 + 48);
    v37 = v76;
    v38 = v31;
    v39 = v72;
    (*(v21 + 16))(v76, v38, v72);
    *(v37 + v36) = v30 & 1;
    v70 = v21;
    v40 = (*(v21 + 88))(v37, v39);
    if (v40 != enum case for OfferType.app(_:))
    {
      v65[0] = v34;
      v65[1] = v33;
      if (v40 == enum case for OfferType.inAppPurchase(_:))
      {
        sub_10A2C(v80, &unk_948730, &qword_788DD0);
        (*(v81 + 8))(v19, v35);
        if (sub_75FE50())
        {
          sub_BD88(&unk_944300, &qword_77DEE0);
          sub_768900();
          sub_768ED0();
          sub_759E40();
          sub_768ED0();
          (v65[0])(v74, v77, v35);
          sub_1ED18(v78, v75, &unk_948730, &qword_788DD0);
          v46 = sub_7576E0();
          swift_allocObject();

          v47 = sub_7576B0();
          v48 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
        }

        else
        {
          sub_BD88(&unk_944300, &qword_77DEE0);
          sub_768900();
          sub_768ED0();
          sub_759E40();
          sub_768ED0();
          (v65[0])(v74, v77, v35);
          sub_1ED18(v78, v75, &unk_948730, &qword_788DD0);
          v46 = sub_757F00();
          swift_allocObject();

          v47 = sub_757EE0();
          v48 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
        }

        v91 = v46;
        v92 = v48;
        v90 = v47;
        v45 = v70;
        (*(v70 + 8))(v76, v72);
        goto LABEL_16;
      }

      v49 = v81;
      v50 = v80;
      if (v40 == enum case for OfferType.arcade(_:))
      {
        sub_10A2C(v80, &unk_948730, &qword_788DD0);
        (*(v49 + 8))(v19, v35);
        (v65[0])(v74, v77, v35);
        sub_1ED18(v78, v75, &unk_948730, &qword_788DD0);
        v51 = sub_763F20();
        swift_allocObject();

        v52 = sub_763F10();
        v91 = v51;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
        v90 = v52;
        v45 = v70;
        (*(v70 + 8))(v37, v72);
        goto LABEL_16;
      }

      if (v40 != enum case for OfferType.arcadeApp(_:))
      {
        sub_BD88(&unk_944300, &qword_77DEE0);
        sub_768900();
        sub_768ED0();
        v78 = v85;
        v77 = v86;
        sub_BD88(&qword_93F258, &qword_77DEE8);
        sub_768ED0();
        v88 = sub_759E40();
        v89 = &protocol witness table for Restrictions;
        sub_768ED0();
        (v65[0])(v74, v19, v35);
        sub_1ED18(v50, v75, &unk_948730, &qword_788DD0);
        sub_75A920();
        sub_768ED0();
        sub_75A7D0();

        v61 = sub_758480();
        swift_allocObject();

        v62 = sub_758470();
        sub_10A2C(v50, &unk_948730, &qword_788DD0);
        (*(v81 + 8))(v19, v79);
        v91 = v61;
        v92 = &protocol witness table for AppOfferButtonPresenter;
        v90 = v62;
        sub_10A2C(v37, &qword_949A80, qword_78AC90);
        goto LABEL_6;
      }

      v39 = v72;
      v34 = v65[0];
      if ((v30 & 1) == 0)
      {
        sub_10A2C(v80, &unk_948730, &qword_788DD0);
        (*(v81 + 8))(v66, v35);
        if (v73)
        {
          sub_75BDB0();
          v58 = swift_dynamicCastClass();
          v59 = v72;
          v60 = v65[0];
          if (v58)
          {
            sub_75BD40();
            v35 = v79;
          }

          v60(v74, v77, v35);
        }

        else
        {
          v59 = v72;
          (v65[0])(v74, v77, v35);
        }

        sub_1ED18(v78, v75, &unk_948730, &qword_788DD0);
        v63 = sub_763F20();
        swift_allocObject();

        v64 = sub_763F10();
        v91 = v63;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

        v90 = v64;
        v45 = v70;
        (*(v70 + 8))(v76, v59);
        goto LABEL_16;
      }
    }

    (*(v70 + 8))(v37, v39);
    sub_BD88(&unk_944300, &qword_77DEE0);
    sub_768900();
    sub_768ED0();
    v78 = v86;
    sub_BD88(&qword_93F258, &qword_77DEE8);
    sub_768ED0();
    v88 = sub_759E40();
    v89 = &protocol witness table for Restrictions;
    sub_768ED0();
    v41 = v66;
    v34(v74, v66, v35);
    v42 = v80;
    sub_1ED18(v80, v75, &unk_948730, &qword_788DD0);
    sub_75A920();
    sub_768ED0();
    sub_75A7D0();

    v43 = sub_758480();
    swift_allocObject();

    v44 = sub_758470();
    sub_10A2C(v42, &unk_948730, &qword_788DD0);
    (*(v81 + 8))(v41, v79);
    v91 = v43;
    v92 = &protocol witness table for AppOfferButtonPresenter;
    v90 = v44;
LABEL_6:
    v45 = v70;
LABEL_16:
    v53 = objc_opt_self();
    v54 = [v53 areAnimationsEnabled];
    [v53 setAnimationsEnabled:0];
    v55 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled;
    v56 = v68;
    *(v68 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled) = 0;
    [v56 setHidden:0];
    sub_1E85C4(&qword_949A88, type metadata accessor for OfferButton, &unk_78ABD8);
    sub_10974(&v90, v91);
    swift_unknownObjectRetain();
    sub_75EC30();
    [v53 setAnimationsEnabled:v54];

    (*(v45 + 8))(v84, v72);
    *(v56 + v55) = 1;
    sub_134D8(&v90, v87);
    v57 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter;
    swift_beginAccess();
    sub_1E8554(v87, v56 + v57);
    swift_endAccess();

    sub_BEB8(&v90);
  }
}

uint64_t sub_1E260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v77 = a5;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  v81 = a2;
  v78 = sub_762DE0();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760080();
  __chkstk_darwin(v10 - 8);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v12 - 8);
  v73 = &v63 - v13;
  v14 = sub_75BD30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v21 = sub_75D850();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v64 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v63 = &v63 - v25;
  __chkstk_darwin(v26);
  v65 = &v63 - v27;
  __chkstk_darwin(v28);
  v68 = &v63 - v29;
  __chkstk_darwin(v30);
  v87 = &v63 - v31;
  __chkstk_darwin(v32);
  v69 = &v63 - v33;
  v34 = sub_75CF70();
  v71 = *(v34 - 8);
  v72 = v34;
  __chkstk_darwin(v34);
  v70 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v66 = &v63 - v38;
  [v7 setSelected:{0, v37}];
  v79 = a6;
  sub_762DB0();
  v86 = [v7 traitCollection];
  v84 = v7;
  v67 = v7[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_includeTopPadding];
  v39 = *(v15 + 104);
  v39(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = sub_75BD20();
  v40 = *(v15 + 8);
  v40(v17, v14);
  v85 = v40;
  if (a6)
  {
    if (qword_93C470 != -1)
    {
      swift_once();
    }

    v41 = qword_99B2D8;
LABEL_13:
    v43 = sub_BE38(v21, v41);
    v44 = v68;
    (*(v22 + 16))(v68, v43, v21);
LABEL_14:
    v45 = v87;
    goto LABEL_15;
  }

  v39(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v42 = sub_75BD20();
  v40(v17, v14);
  if (v42)
  {
    if (qword_93C468 != -1)
    {
      swift_once();
    }

    v41 = qword_99B2C0;
    goto LABEL_13;
  }

  if (sub_75BD10())
  {
    if (qword_93C460 != -1)
    {
      swift_once();
    }

    v41 = qword_99B2A8;
    goto LABEL_13;
  }

  v39(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v52 = sub_75BD20();
  v85(v17, v14);
  if (v52)
  {
    if (qword_93C478 != -1)
    {
      swift_once();
    }

    v53 = sub_BE38(v21, qword_946980);
    v44 = v68;
    (*(v22 + 16))(v68, v53, v21);
    goto LABEL_14;
  }

  v54 = sub_769350();
  if ((sub_769A00() & 1) == 0)
  {
    if (v54 < 7)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (sub_769A00())
    {
      v56 = v68;
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v57 = qword_946920;
    }

    else
    {
      v56 = v68;
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v57 = qword_946938;
    }

    v60 = sub_BE38(v21, v57);
    v61 = v63;
    (*(v22 + 16))(v63, v60, v21);
    v62 = v65;
    (*(v22 + 32))(v65, v61, v21);
    v44 = v56;
    sub_765470();
    (*(v22 + 8))(v62, v21);
    goto LABEL_14;
  }

  if (v54 > 8)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (sub_769A00())
  {
    v45 = v87;
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v55 = qword_946920;
  }

  else
  {
    v45 = v87;
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v55 = qword_946938;
  }

  v58 = sub_BE38(v21, v55);
  v59 = v64;
  (*(v22 + 16))(v64, v58, v21);
  v44 = v68;
  (*(v22 + 32))(v68, v59, v21);
LABEL_15:
  v46 = *(v22 + 32);
  v46(v45, v44, v21);
  if (v67 != 2)
  {
    sub_75D840();
    v45 = v87;
  }

  v85(v20, v14);
  v46(v69, v45, v21);
  sub_1ED18(v77, v73, &unk_94AC40, qword_78D7F0);
  (*(v75 + 16))(v76, v79, v78);

  sub_760060();
  v47 = v66;
  sub_75CF60();
  v49 = v70;
  v48 = v71;
  v50 = v72;
  (*(v71 + 16))(v70, v47, v72);
  sub_1E4E5C(v49, v84, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_888488, sub_1E8A2C, &unk_8884A0);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_1E3058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a5;
  v74 = a3;
  v75 = a4;
  v72 = a1;
  v73 = a2;
  v70 = sub_762DE0();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760080();
  __chkstk_darwin(v10 - 8);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v12 - 8);
  v65 = &v55 - v13;
  v14 = sub_75BD30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v21 = sub_75D850();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v55 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v59 = &v55 - v25;
  __chkstk_darwin(v26);
  v60 = &v55 - v27;
  __chkstk_darwin(v28);
  v61 = &v55 - v29;
  v30 = sub_75CF70();
  v63 = *(v30 - 8);
  v64 = v30;
  __chkstk_darwin(v30);
  v62 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v56 = &v55 - v34;
  [v7 setSelected:{0, v33}];
  v71 = a6;
  sub_762DB0();
  v58 = [v7 traitCollection];
  v76 = v7;
  v57 = v7[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_includeTopPadding];
  v35 = *(v15 + 104);
  v35(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = sub_75BD20();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v77 = v36;
  if (a6)
  {
    if (qword_93C470 != -1)
    {
      swift_once();
    }

    v37 = qword_99B2D8;
LABEL_13:
    v39 = sub_BE38(v21, v37);
    v40 = v59;
    (*(v22 + 16))(v59, v39, v21);
    v41 = v60;
    v42 = v58;
    goto LABEL_14;
  }

  v35(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v38 = sub_75BD20();
  v36(v17, v14);
  if (v38)
  {
    if (qword_93C468 != -1)
    {
      swift_once();
    }

    v37 = qword_99B2C0;
    goto LABEL_13;
  }

  if (sub_75BD10())
  {
    if (qword_93C460 != -1)
    {
      swift_once();
    }

    v37 = qword_99B2A8;
    goto LABEL_13;
  }

  v35(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v49 = sub_75BD20();
  v77(v17, v14);
  if (v49)
  {
    v40 = v59;
    v41 = v60;
    v42 = v58;
    if (qword_93C478 != -1)
    {
      swift_once();
    }

    v50 = sub_BE38(v21, qword_946980);
    (*(v22 + 16))(v40, v50, v21);
  }

  else
  {
    v42 = v58;
    v51 = sub_769A00();
    v40 = v59;
    v41 = v60;
    if (v51)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v52 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v52 = qword_946938;
    }

    v53 = sub_BE38(v21, v52);
    v54 = v55;
    (*(v22 + 16))(v55, v53, v21);
    (*(v22 + 32))(v40, v54, v21);
  }

LABEL_14:
  v43 = *(v22 + 32);
  v43(v41, v40, v21);
  if (v57 != 2)
  {
    sub_75D840();
  }

  v77(v20, v14);
  v43(v61, v41, v21);
  sub_1ED18(v69, v65, &unk_94AC40, qword_78D7F0);
  (*(v67 + 16))(v68, v71, v70);

  sub_760060();
  v44 = v56;
  sub_75CF50();
  v46 = v62;
  v45 = v63;
  v47 = v64;
  (*(v63 + 16))(v62, v44, v64);
  sub_1E4E5C(v46, v76, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_888488, sub_1E8A2C, &unk_8884A0);
  return (*(v45 + 8))(v44, v47);
}

uint64_t sub_1E38E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = sub_768430();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_764CF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  v37 = result;
  if (!result)
  {
    return result;
  }

  v35 = v8;
  sub_75BDB0();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v33[0] = v12;
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768880();
  v33[1] = v58;
  sub_1ED18(a2, &v58, &unk_93FBD0, &qword_77DFA0);
  v34 = v7;
  if (*(&v59 + 1))
  {
    sub_BD88(&qword_946488, &unk_786E78);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_10A2C(&v58, &unk_93FBD0, &qword_77DFA0);
  }

  swift_getObjectType();
  sub_75BDA0();
  sub_758330();
  (*(v33[0] + 8))(v14, v11);
LABEL_9:
  sub_75BD80();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v34;
LABEL_10:

  [v3 bounds];
  LOBYTE(v58) = 1;
  *&v40 = v3;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  BYTE8(v42) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v43 = _Q0;
  v44 = _Q0;
  v45 = 15;
  sub_12EA98();
  v25 = v3;
  *v10 = sub_769970();
  v26 = v35;
  (*(v35 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v27 = sub_768460();
  result = (*(v26 + 8))(v10, v7);
  if (v27)
  {
    v48 = xmmword_94DD18;
    v49 = xmmword_94DD28;
    v50 = xmmword_94DD38;
    v46 = xmmword_94DCF8;
    v47 = xmmword_94DD08;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v58 = xmmword_94DCF8;
    v59 = xmmword_94DD08;
    v61 = xmmword_94DD28;
    v62 = xmmword_94DD38;
    v51 = qword_94DD48;
    v57 = v45;
    v63 = qword_94DD48;
    v60 = xmmword_94DD18;
    sub_1ED18(&v46, v38, &unk_93FEF0, &unk_7834B0);
    xmmword_94DD18 = v54;
    xmmword_94DD28 = v55;
    xmmword_94DD38 = v56;
    qword_94DD48 = v57;
    xmmword_94DCF8 = v52;
    xmmword_94DD08 = v53;
    sub_10A2C(&v58, &unk_93FEF0, &unk_7834B0);
    v28 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_45C2C(&v40, v38);
    v29 = v36;
    v30 = v37;
    sub_768860();
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {

      sub_10A2C(v29, &unk_93F980, &qword_77EDA0);
    }

    else
    {

      sub_32A6C0(v32, 1, v30, v29);

      (*(v31 + 8))(v29, v28);
    }

    v38[2] = xmmword_94DD18;
    v38[3] = xmmword_94DD28;
    v38[4] = xmmword_94DD38;
    v39 = qword_94DD48;
    v38[0] = xmmword_94DCF8;
    v38[1] = xmmword_94DD08;
    xmmword_94DCF8 = v46;
    xmmword_94DD08 = v47;
    xmmword_94DD18 = v48;
    xmmword_94DD28 = v49;
    xmmword_94DD38 = v50;
    qword_94DD48 = v51;
    sub_10A2C(v38, &unk_93FEF0, &unk_7834B0);

    return sub_45C88(&v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_768C60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_768BC0();
  sub_10A2C(v13, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v14, &unk_93FBD0, &qword_77DFA0);
  *(&v15 + 1) = &type metadata for String;
  *&v14 = a1;
  *(&v14 + 1) = a2;

  sub_768C40();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10A2C(&v14, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  return (v11)(v10, v4);
}

id sub_1E4094(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isEnabled") != v2)
  {
    sub_1DEC1C(v2);
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "setEnabled:", v2);
}

uint64_t sub_1E410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_BD88(&unk_9457F0, qword_783FD0);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a5, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1E260C(a1, a2, a3, a4, v16, a8);
  return sub_10A2C(v16, &unk_94AC40, qword_78D7F0);
}

void sub_1E4264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v12 = sub_BD88(&unk_9457F0, qword_783FD0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1E260C(a1, a2, 0, 0, v11, a5);
  sub_10A2C(v11, &unk_94AC40, qword_78D7F0);
  v13 = sub_769210();
  [v5 accessibilityShowText:v13];
}

uint64_t sub_1E439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = sub_BD88(&unk_9457F0, qword_783FD0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a5, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_1E3058(a1, a2, a3, a4, v14, a6);
  return sub_10A2C(v14, &unk_94AC40, qword_78D7F0);
}

uint64_t sub_1E44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  v9 = sub_BD88(&unk_9457F0, qword_783FD0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1E3058(a1, a2, 0, 0, v8, a3);
  return sub_10A2C(v8, &unk_94AC40, qword_78D7F0);
}

uint64_t sub_1E466C()
{
  v1 = [v0 accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_769240();

  return v3;
}

void sub_1E46D4(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v3 setAccessibilityLabel:v4];
}

void (*sub_1E4740(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E113C(v2);
  return sub_215A4;
}

uint64_t sub_1E4844(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_763830();
  v44 = v5;
  v45 = &protocol witness table for IndeterminateProgressConfiguration;
  v43[0] = a1;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(&a2[v6], v41);
  sub_B170(v41, v42);
  DynamicType = swift_getDynamicType();
  sub_B170(v43, v5);
  v8 = swift_getDynamicType();
  sub_B170(v43, v44);
  v9 = [a2 traitCollection];
  LOBYTE(a1) = sub_760E10();

  if (a1)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1E82D0(&a2[v6], v43, v10);
  swift_endAccess();
  v40.receiver = a2;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, "frame");
  if (CGRectIsEmpty(v46))
  {
    sub_134D8(&a2[v6], aBlock);
    sub_B170(aBlock, v35);
    v11 = sub_760DB0();
    sub_BEB8(aBlock);
    if (v11)
    {
      if (DynamicType != v8)
      {
        sub_1DC978();
      }

      goto LABEL_28;
    }
  }

  sub_134D8(&a2[v6], aBlock);
  sub_B170(aBlock, v35);
  if (sub_760DD0())
  {
    v12 = a2[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled];
    sub_BEB8(aBlock);
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_BEB8(aBlock);
  }

  sub_134D8(&a2[v6], aBlock);
  sub_B170(aBlock, v35);
  v13 = sub_760DC0();
  sub_BEB8(aBlock);
  if (v13)
  {
LABEL_11:
    v14 = objc_opt_self();
    [v14 begin];
    v33 = 1;
    [v14 setDisableActions:1];
    goto LABEL_13;
  }

  v33 = 0;
LABEL_13:
  sub_B170(v41, v42);
  sub_1E85C4(&qword_949A60, type metadata accessor for OfferButton, &unk_78AA88);
  sub_760E30();
  if (DynamicType != v8)
  {
    sub_1DC978();
  }

  sub_B170(v43, v44);
  sub_760DF0();
  if (a2[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v39.receiver = a2;
    v39.super_class = ObjectType;
    objc_msgSendSuper2(&v39, "invalidateIntrinsicContentSize");
    v28 = &a2[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v33)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_B170(v41, v42);
  sub_760DE0();
  v16 = v15;
  v18 = v17;
  sub_B170(v43, v44);
  sub_760DE0();
  v21 = v18 == v20 && v16 == v19;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    v22 = [a2 superview];
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  v24 = objc_opt_self();
  v25 = a2;
  v26 = v22;
  if ([v24 areAnimationsEnabled])
  {
    v36 = sub_1E8A2C;
    v37 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    v35 = &unk_888400;
    v27 = _Block_copy(aBlock);

    [v24 animateWithDuration:v27 animations:0.3];

    _Block_release(v27);
    if (!v33)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v25 setNeedsLayout];
  if (v21)
  {
    [v25 layoutIfNeeded];
  }

  else
  {
    v38.receiver = v25;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, "invalidateIntrinsicContentSize");
    v32 = &v25[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
    *v32 = 0;
    *(v32 + 1) = 0;
    v32[16] = 1;
    [v26 setNeedsLayout];
    [v26 layoutIfNeeded];
  }

  if (v33)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_BEB8(v41);
  return sub_BEB8(v43);
}

uint64_t sub_1E4E5C(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = a3(0);
  v55 = v13;
  v56 = a4;
  v14 = sub_B1B4(v54);
  (*(*(v13 - 8) + 32))(v14, a1, v13);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(&a2[v15], v52);
  sub_B170(v52, v53);
  DynamicType = swift_getDynamicType();
  sub_B170(v54, v55);
  v17 = swift_getDynamicType();
  sub_B170(v54, v55);
  v18 = [a2 traitCollection];
  LOBYTE(a4) = sub_760E10();

  if (a4)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1E82D0(&a2[v15], v54, v19);
  swift_endAccess();
  v51.receiver = a2;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "frame");
  if (CGRectIsEmpty(v57))
  {
    sub_134D8(&a2[v15], aBlock);
    sub_B170(aBlock, v46);
    v20 = sub_760DB0();
    sub_BEB8(aBlock);
    if (v20)
    {
      if (DynamicType != v17)
      {
        sub_1DC978();
      }

      goto LABEL_28;
    }
  }

  v42 = a7;
  sub_134D8(&a2[v15], aBlock);
  sub_B170(aBlock, v46);
  if (sub_760DD0())
  {
    v21 = a2[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled];
    sub_BEB8(aBlock);
    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_BEB8(aBlock);
  }

  sub_134D8(&a2[v15], aBlock);
  sub_B170(aBlock, v46);
  v22 = sub_760DC0();
  sub_BEB8(aBlock);
  if (v22)
  {
LABEL_11:
    v23 = objc_opt_self();
    [v23 begin];
    v43 = 1;
    [v23 setDisableActions:1];
    goto LABEL_13;
  }

  v43 = 0;
LABEL_13:
  sub_B170(v52, v53);
  sub_1E85C4(&qword_949A60, type metadata accessor for OfferButton, &unk_78AA88);
  sub_760E30();
  if (DynamicType != v17)
  {
    sub_1DC978();
  }

  sub_B170(v54, v55);
  sub_760DF0();
  if (a2[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v50.receiver = a2;
    v50.super_class = ObjectType;
    objc_msgSendSuper2(&v50, "invalidateIntrinsicContentSize");
    v37 = &a2[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_B170(v52, v53);
  sub_760DE0();
  v25 = v24;
  v27 = v26;
  sub_B170(v54, v55);
  sub_760DE0();
  v30 = v27 == v29 && v25 == v28;
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    v31 = [a2 superview];
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  v33 = objc_opt_self();
  v34 = a2;
  v35 = v31;
  if ([v33 areAnimationsEnabled])
  {
    v47 = a6;
    v48 = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    v46 = v42;
    v36 = _Block_copy(aBlock);

    [v33 animateWithDuration:v36 animations:0.3];

    _Block_release(v36);
    if (!v43)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v34 setNeedsLayout];
  if (v30)
  {
    [v34 layoutIfNeeded];
  }

  else
  {
    v49.receiver = v34;
    v49.super_class = ObjectType;
    objc_msgSendSuper2(&v49, "invalidateIntrinsicContentSize");
    v41 = &v34[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
    *v41 = 0;
    *(v41 + 1) = 0;
    v41[16] = 1;
    [v35 setNeedsLayout];
    [v35 layoutIfNeeded];
  }

  if (v43)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_BEB8(v52);
  return sub_BEB8(v54);
}

id sub_1E54F4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v57 = a3;
  v66 = a1;
  v67 = sub_762DE0();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_948740, &unk_784920);
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v64 = &v53 - v8;
  v9 = sub_75BD30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = sub_75D850();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v53 - v20;
  __chkstk_darwin(v21);
  v56 = &v53 - v22;
  __chkstk_darwin(v23);
  v59 = &v53 - v24;
  __chkstk_darwin(v25);
  v60 = &v53 - v26;
  __chkstk_darwin(v27);
  v61 = &v53 - v28;
  v69 = a2;
  sub_762DB0();
  v70 = v4;
  v58 = [v4 traitCollection];
  v29 = *(v10 + 104);
  v29(v12, enum case for OfferEnvironment.arcadeProductPage(_:), v9);
  LOBYTE(a2) = sub_75BD20();
  v30 = *(v10 + 8);
  v30(v12, v9);
  if (a2)
  {
    if (qword_93C470 != -1)
    {
      swift_once();
    }

    v31 = sub_BE38(v16, qword_99B2D8);
    v32 = v59;
    (*(v17 + 16))(v59, v31, v16);

    goto LABEL_14;
  }

  v29(v12, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v9);
  v33 = sub_75BD20();
  v53 = v30;
  v30(v12, v9);
  if (v33)
  {
    if (qword_93C468 != -1)
    {
      swift_once();
    }

    v34 = qword_99B2C0;
LABEL_13:
    v35 = sub_BE38(v16, v34);
    v32 = v59;
    (*(v17 + 16))(v59, v35, v16);

    v30 = v53;
    goto LABEL_14;
  }

  if (sub_75BD10())
  {
    if (qword_93C460 != -1)
    {
      swift_once();
    }

    v34 = qword_99B2A8;
    goto LABEL_13;
  }

  v29(v12, enum case for OfferEnvironment.navigationBar(_:), v9);
  v41 = sub_75BD20();
  v30 = v53;
  v53(v12, v9);
  if (v41)
  {
    v42 = v58;
    v32 = v59;
    if (qword_93C478 != -1)
    {
      swift_once();
    }

    v43 = sub_BE38(v16, qword_946980);
    (*(v17 + 16))(v32, v43, v16);
  }

  else
  {
    v44 = v58;
    v45 = sub_769A00();
    v32 = v59;
    if (v57)
    {
      if (v45)
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v46 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v46 = qword_946938;
      }

      v48 = sub_BE38(v16, v46);
      v49 = v54;
      (*(v17 + 16))(v54, v48, v16);
      v50 = v56;
      (*(v17 + 32))(v56, v49, v16);
      sub_765470();

      (*(v17 + 8))(v50, v16);
    }

    else
    {
      if (v45)
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v47 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v47 = qword_946938;
      }

      v51 = sub_BE38(v16, v47);
      v52 = v55;
      (*(v17 + 16))(v55, v51, v16);

      (*(v17 + 32))(v32, v52, v16);
    }
  }

LABEL_14:
  v36 = *(v17 + 32);
  v37 = v60;
  v36(v60, v32, v16);
  v30(v15, v9);
  v36(v61, v37, v16);
  (*(v62 + 16))(v64, v66, v63);
  (*(v65 + 16))(v68, v69, v67);
  sub_763830();
  swift_allocObject();
  sub_763820();

  v39 = v70;
  sub_1E4844(v38, v70);

  return [v39 accessibilityShowLoading];
}

void sub_1E5D98(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v85 = a3;
  v109 = a2;
  v94 = sub_762DE0();
  v107 = *(v94 - 8);
  __chkstk_darwin(v94);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_948740, &unk_784920);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v11 = sub_75BD30();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin(v11);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v101 = sub_75D850();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v83 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v81 - v18;
  __chkstk_darwin(v19);
  v84 = &v81 - v20;
  __chkstk_darwin(v21);
  v93 = &v81 - v22;
  __chkstk_darwin(v23);
  v95 = &v81 - v24;
  __chkstk_darwin(v25);
  v96 = &v81 - v26;
  v102 = sub_75F5F0();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v98 = &v81 - v29;
  v30 = sub_764CF0();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_BD88(&qword_949A78, &qword_78AC88);
  __chkstk_darwin(v34 - 8);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v108 = &v81 - v38;
  v110 = v4;
  v39 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_displayProperties];
  if (v39)
  {
    v87 = v9;
    v88 = v8;
    v89 = a1;
    Strong = swift_weakLoadStrong();
    v91 = v15;
    v90 = v39;
    if (Strong)
    {
      sub_BD88(&unk_944300, &qword_77DEE0);

      sub_768860();

      if (v111)
      {
        swift_getObjectType();
        sub_75FE80();
        sub_758330();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v33, v30);
        swift_getObjectType();
        v41 = v108;
        sub_758220();
        swift_unknownObjectRelease();
        v42 = sub_7580D0();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v42 = sub_7580D0();
    v41 = v108;
    (*(*(v42 - 8) + 56))(v108, 1, 1, v42);
LABEL_7:
    v43 = v103;
    sub_1ED18(v41, v36, &qword_949A78, &qword_78AC88);
    sub_7580D0();
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v36, 1, v42);
    v46 = v92;
    if (v45 == 1)
    {
      sub_10A2C(v36, &qword_949A78, &qword_78AC88);
    }

    else
    {
      if ((*(v44 + 88))(v36, v42) == enum case for LegacyAppState.installing(_:))
      {
        (*(v44 + 96))(v36, v42);
        v47 = sub_758040();
        (*(*(v47 - 8) + 8))(v36, v47);
        v48 = 1;
        goto LABEL_13;
      }

      (*(v44 + 8))(v36, v42);
    }

    v48 = 0;
LABEL_13:
    v86 = v48;
    v49 = v110;
    sub_1DC524(v48);
    sub_762DB0();
    v103 = [v49 traitCollection];
    v50 = v43[13];
    v51 = v104;
    v50(v46, enum case for OfferEnvironment.arcadeProductPage(_:), v104);
    v52 = sub_75BD20();
    v53 = v43[1];
    v53(v46, v51);
    if (v52)
    {
      if (qword_93C470 != -1)
      {
        swift_once();
      }

      v54 = qword_99B2D8;
      v55 = v101;
    }

    else
    {
      v50(v46, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v51);
      v56 = sub_75BD20();
      v53(v46, v51);
      if (v56)
      {
        v55 = v101;
        if (qword_93C468 != -1)
        {
          swift_once();
        }

        v54 = qword_99B2C0;
      }

      else
      {
        v57 = sub_75BD10();
        v55 = v101;
        if ((v57 & 1) == 0)
        {
          v50(v46, enum case for OfferEnvironment.navigationBar(_:), v51);
          v69 = sub_75BD20();
          v53(v46, v51);
          if (v69)
          {
            v61 = v107;
            v59 = v99;
            if (qword_93C478 != -1)
            {
              swift_once();
            }

            v70 = sub_BE38(v55, qword_946980);
            v60 = v93;
            (*(v59 + 16))(v93, v70, v55);
          }

          else
          {
            v71 = sub_769A00();
            v61 = v107;
            v59 = v99;
            if (v85)
            {
              if (v71)
              {
                v72 = v93;
                if (qword_93C440 != -1)
                {
                  swift_once();
                }

                v73 = qword_946920;
              }

              else
              {
                v72 = v93;
                if (qword_93C448 != -1)
                {
                  swift_once();
                }

                v73 = qword_946938;
              }

              v76 = sub_BE38(v55, v73);
              v77 = v82;
              (*(v59 + 16))(v82, v76, v55);
              v78 = v84;
              (*(v59 + 32))(v84, v77, v55);
              v60 = v72;
              sub_765470();

              (*(v59 + 8))(v78, v55);
            }

            else
            {
              if (v71)
              {
                v74 = v93;
                if (qword_93C440 != -1)
                {
                  swift_once();
                }

                v75 = qword_946920;
              }

              else
              {
                v74 = v93;
                if (qword_93C448 != -1)
                {
                  swift_once();
                }

                v75 = qword_946938;
              }

              v79 = sub_BE38(v55, v75);
              v80 = v83;
              (*(v59 + 16))(v83, v79, v55);

              (*(v59 + 32))(v74, v80, v55);
              v60 = v74;
            }
          }

          goto LABEL_26;
        }

        if (qword_93C460 != -1)
        {
          swift_once();
        }

        v54 = qword_99B2A8;
      }
    }

    v58 = sub_BE38(v55, v54);
    v59 = v99;
    v60 = v93;
    (*(v99 + 16))(v93, v58, v55);

    v61 = v107;
LABEL_26:
    v62 = *(v59 + 32);
    v63 = v95;
    v62(v95, v60, v55);
    v53(v91, v51);
    v62(v96, v63, v55);
    (*(v105 + 16))(v106, v89, v87);
    (*(v61 + 16))(v88, v109, v94);
    v64 = v98;
    sub_75F5E0();
    v65 = v100;
    v66 = v97;
    v67 = v102;
    (*(v100 + 16))(v97, v64, v102);
    v68 = v110;
    sub_1E4E5C(v66, v110, &type metadata accessor for ProgressConfiguration, &protocol witness table for ProgressConfiguration, &unk_888438, sub_1E8A2C, &unk_888450);
    (*(v65 + 8))(v64, v67);
    [v68 setSelected:0];
    [v68 accessibilityShowProgress:a4];

    sub_10A2C(v108, &qword_949A78, &qword_78AC88);
  }
}

void sub_1E6BDC(uint64_t a1, uint64_t a2, int a3)
{
  v147 = a3;
  v182 = a1;
  v5 = sub_7606C0();
  v172 = *(v5 - 8);
  v173 = v5;
  __chkstk_darwin(v5);
  v170 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v143 - v8;
  v9 = sub_762DE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760080();
  __chkstk_darwin(v13 - 8);
  v169 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_758C70();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v143 - v17;
  v18 = sub_BD88(&unk_948740, &unk_784920);
  v179 = *(v18 - 8);
  v180 = v18;
  __chkstk_darwin(v18);
  v181 = &v143 - v19;
  v185 = sub_75BD30();
  v175 = *(v185 - 8);
  __chkstk_darwin(v185);
  v177 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v184 = &v143 - v22;
  __chkstk_darwin(v23);
  v176 = &v143 - v24;
  v178 = sub_75D850();
  v183 = *(v178 - 8);
  __chkstk_darwin(v178);
  v145 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v144 = &v143 - v27;
  __chkstk_darwin(v28);
  v146 = &v143 - v29;
  __chkstk_darwin(v30);
  v162 = &v143 - v31;
  __chkstk_darwin(v32);
  v163 = &v143 - v33;
  __chkstk_darwin(v34);
  v166 = &v143 - v35;
  __chkstk_darwin(v36);
  v148 = &v143 - v37;
  __chkstk_darwin(v38);
  v155 = &v143 - v39;
  __chkstk_darwin(v40);
  v154 = &v143 - v41;
  __chkstk_darwin(v42);
  v156 = &v143 - v43;
  __chkstk_darwin(v44);
  v157 = &v143 - v45;
  v161 = sub_75E380();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v159 = &v143 - v48;
  v49 = sub_764CF0();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_BD88(&qword_949A78, &qword_78AC88);
  __chkstk_darwin(v53 - 8);
  v55 = &v143 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v186 = &v143 - v57;
  v58 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_displayProperties];
  if (v58)
  {
    v151 = v12;
    v152 = v10;
    v153 = v9;
    v174 = a2;
    v59 = v3;
    if (swift_weakLoadStrong())
    {
      sub_BD88(&unk_944300, &qword_77DEE0);

      sub_768880();

      swift_getObjectType();
      sub_75FE80();
      sub_758330();
      swift_unknownObjectRelease();
      (*(v50 + 8))(v52, v49);
      swift_getObjectType();
      v60 = v186;
      sub_758220();
      swift_unknownObjectRelease();
      v61 = sub_7580D0();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    }

    else
    {
      v61 = sub_7580D0();
      v60 = v186;
      (*(*(v61 - 8) + 56))(v186, 1, 1, v61);
    }

    sub_1ED18(v60, v55, &qword_949A78, &qword_78AC88);
    sub_7580D0();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v55, 1, v61) == 1)
    {
      sub_10A2C(v55, &qword_949A78, &qword_78AC88);
      v63 = 0;
    }

    else
    {
      v63 = sub_7580B0();
      (*(v62 + 8))(v55, v61);
    }

    v64 = v59;
    v65 = v184;
    v150 = v58;
    v66 = objc_opt_self();
    [v66 begin];
    v149 = v66;
    [v66 setDisableActions:1];
    v67 = v174;
    v68 = (v175 + 104);
    v69 = (v175 + 8);
    v70 = v176;
    v175 += 8;
    if (v63)
    {
      sub_762DB0();
      v184 = [v64 traitCollection];
      v71 = *v68;
      v72 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v73 = sub_75BD20();
      v74 = *v69;
      v74(v65, v72);
      v143 = v64;
      if (v73)
      {
        v75 = v67;
        if (qword_93C488 != -1)
        {
          swift_once();
        }

        v76 = v178;
        v77 = sub_BE38(v178, qword_99B2F0);
        v78 = v183;
        v79 = v155;
        (*(v183 + 16))(v155, v77, v76);

        v80 = v78;
        v81 = v185;
      }

      else
      {
        v71(v65, enum case for OfferEnvironment.navigationBar(_:), v72);
        v95 = sub_75BD20();
        v74(v65, v72);
        v81 = v72;
        if (v95 & 1) != 0 && (v96 = sub_7653B0(), v187[3] = v96, v187[4] = sub_1E85C4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature), v97 = sub_B1B4(v187), (*(*(v96 - 8) + 104))(v97, enum case for Feature.glass_offer_button_2025A(_:), v96), LOBYTE(v96) = sub_765C30(), sub_BEB8(v187), (v96))
        {
          v75 = v67;
          if (qword_93C480 != -1)
          {
            swift_once();
          }

          v76 = v178;
          v98 = sub_BE38(v178, qword_946998);
          v99 = v183;
          v79 = v155;
          (*(v183 + 16))(v155, v98, v76);

          v80 = v99;
        }

        else
        {
          if (sub_769A00())
          {
            v76 = v178;
            v75 = v67;
            if (qword_93C458 != -1)
            {
              swift_once();
            }

            v102 = qword_946968;
          }

          else
          {
            v76 = v178;
            v75 = v67;
            if (qword_93C450 != -1)
            {
              swift_once();
            }

            v102 = qword_946950;
          }

          v105 = sub_BE38(v76, v102);
          v106 = v183;
          v107 = v148;
          (*(v183 + 16))(v148, v105, v76);

          v80 = v106;
          v79 = v155;
          (*(v106 + 32))(v155, v107, v76);
        }
      }

      v108 = *(v80 + 32);
      v109 = v154;
      v108(v154, v79, v76);
      v110 = v156;
      v108(v156, v109, v76);
      v74(v70, v81);
      v108(v157, v110, v76);
      (*(v179 + 16))(v181, v182, v180);
      v111 = v164;
      v112 = v75;
      sub_762DC0();
      v113 = v167;
      v114 = v165;
      v115 = v168;
      (*(v167 + 104))(v165, enum case for OfferStyle.disabled(_:), v168);
      sub_758C60();
      v116 = *(v113 + 8);
      v116(v114, v115);
      v116(v111, v115);
      (*(v152 + 16))(v151, v112, v153);
      sub_760060();
      v117 = v159;
      sub_75E370();
      v118 = v160;
      v119 = v158;
      v120 = v161;
      (*(v160 + 16))(v158, v117, v161);
      v64 = v143;
      sub_1E4E5C(v119, v143, &type metadata accessor for PausedConfiguration, &protocol witness table for PausedConfiguration, &unk_888348, sub_1E852C, &unk_888360);
      (*(v118 + 8))(v117, v120);
      v121 = &selRef_accessibilityShowPaused;
    }

    else
    {
      sub_762DB0();
      v82 = [v64 traitCollection];
      v83 = *v68;
      v84 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v85 = sub_75BD20();
      v86 = *v69;
      (*v69)(v65, v84);
      if (v85)
      {
        if (qword_93C470 != -1)
        {
          swift_once();
        }

        v87 = v178;
        v88 = sub_BE38(v178, qword_99B2D8);
        v89 = v183;
        v90 = v162;
        (*(v183 + 16))(v162, v88, v87);

        v91 = v153;
        v92 = v185;
        v93 = v86;
        v94 = v174;
      }

      else
      {
        v83(v65, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v84);
        v100 = sub_75BD20();
        (v86)(v65, v84);
        v93 = v86;
        if (v100)
        {
          v90 = v162;
          if (qword_93C468 != -1)
          {
            swift_once();
          }

          v87 = v178;
          v101 = sub_BE38(v178, qword_99B2C0);
          v89 = v183;
          (*(v183 + 16))(v90, v101, v87);

          v91 = v153;
          v92 = v185;
          v94 = v174;
        }

        else
        {
          v103 = v82;
          if (sub_75BD10())
          {
            v90 = v162;
            v94 = v174;
            if (qword_93C460 != -1)
            {
              swift_once();
            }

            v87 = v178;
            v104 = sub_BE38(v178, qword_99B2A8);
            v89 = v183;
            (*(v183 + 16))(v90, v104, v87);

            v91 = v153;
            v92 = v185;
          }

          else
          {
            v176 = v93;
            v123 = v184;
            v122 = v185;
            v83(v184, enum case for OfferEnvironment.navigationBar(_:), v185);
            v124 = sub_75BD20();
            v125 = v123;
            v93 = v176;
            v126 = v122;
            (v176)(v125, v122);
            v94 = v174;
            if (v124)
            {
              v92 = v126;
              v91 = v153;
              v87 = v178;
              if (qword_93C478 != -1)
              {
                swift_once();
              }

              v127 = sub_BE38(v87, qword_946980);
              v89 = v183;
              v90 = v162;
              (*(v183 + 16))(v162, v127, v87);
            }

            else
            {
              v128 = sub_769A00();
              v91 = v153;
              v87 = v178;
              if (v147)
              {
                if (v128)
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_93C440 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_946920;
                }

                else
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_93C448 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_946938;
                }

                v132 = sub_BE38(v87, v130);
                v133 = v144;
                (*(v129 + 16))(v144, v132, v87);
                v134 = v146;
                (*(v129 + 32))(v146, v133, v87);
                v90 = v162;
                sub_765470();
                v89 = v183;

                (*(v89 + 8))(v134, v87);
              }

              else
              {
                if (v128)
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_93C440 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_946920;
                }

                else
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_93C448 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_946938;
                }

                v135 = sub_BE38(v87, v131);
                v136 = v145;
                (*(v89 + 16))(v145, v135, v87);

                v90 = v162;
                (*(v89 + 32))(v162, v136, v87);
              }

              v93 = v176;
            }
          }
        }
      }

      v137 = *(v89 + 32);
      v138 = v163;
      v137(v163, v90, v87);
      (v93)(v177, v92);
      v137(v166, v138, v87);
      (*(v179 + 16))(v181, v182, v180);
      (*(v152 + 16))(v151, v94, v91);
      v139 = v171;
      sub_7606B0();
      v141 = v172;
      v140 = v173;
      v142 = v170;
      (*(v172 + 16))(v170, v139, v173);
      sub_1E4E5C(v142, v64, &type metadata accessor for RedownloadConfiguration, &protocol witness table for RedownloadConfiguration, &unk_888398, sub_1E8A2C, &unk_8883B0);
      (*(v141 + 8))(v139, v140);
      v121 = &selRef_accessibilityShowRedownload;
    }

    [v64 *v121];
    [v149 commit];

    sub_10A2C(v186, &qword_949A78, &qword_78AC88);
  }
}

double sub_1E82D0(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t sub_1E84EC()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1E853C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1E8554(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_949A68, &qword_78AB98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E85C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E860C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E8644()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E867C()
{
  v1 = *(sub_BD88(&unk_948730, &qword_788DD0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_BD88(&unk_9457F0, qword_783FD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = sub_BD88(&unk_948740, &unk_784920);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = v8 + v11;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 2, v2 | v7 | 7);
}

uint64_t sub_1E8864(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948730, &qword_788DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E88D4(uint64_t a1)
{
  v3 = *(sub_BD88(&unk_948730, &qword_788DD0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_BD88(&unk_9457F0, qword_783FD0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  sub_1E155C(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1 + v4, v7, *(v7 + *(v6 + 64)), *(v7 + *(v6 + 64) + 1));
}

uint64_t type metadata accessor for FadeOutDynamicTypeLabel(uint64_t a1)
{
  result = qword_949AA0;
  if (!qword_949AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E8AD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_766D70();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_766AF0();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v16);
  v19 = [v1 text];
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  v59 = sub_769240();
  v22 = v21;

  if (v1[qword_949A98 + 8])
  {

LABEL_4:
    v23 = [v1 layer];
    [v23 setMask:0];

    return;
  }

  v56 = v22;
  v58 = v10;
  v24 = *&v1[qword_949A98];
  sub_75BA30();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    *v18 = UIFontTextStyleBody;
    *(v18 + 2) = 0;
    (*(v15 + 104))(v18, enum case for FontUseCase.preferredFont(_:), v14);
    v26 = v25(v13, 1, v14);
    v27 = UIFontTextStyleBody;
    if (v26 != 1)
    {
      sub_11A38(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_26F08();
  v28 = [v1 traitCollection];
  v29 = sub_769E10();

  (*(v15 + 8))(v18, v14);
  v30 = v29;
  [v1 bounds];
  CGRectGetWidth(v65);
  sub_766AE0();
  v31 = v58;
  sub_766AD0();
  v32 = v60;
  v33 = v63;
  v57 = *(v60 + 8);
  v57(v7, v63);
  (*(v32 + 16))(v7, v31, v33);
  sub_766D50();
  sub_766D80();
  v34 = [v1 traitCollection];
  sub_766D60();
  v36 = v35;
  v38 = v37;

  (*(v61 + 8))(v5, v62);
  [v1 bounds];
  v66.size.width = v36;
  v66.size.height = v38;
  Height = CGRectGetHeight(v66);
  [v1 bounds];
  v40 = CGRectGetHeight(v67);
  v41 = [v1 layer];
  v42 = v41;
  if (v40 <= Height)
  {
    v44 = *&v1[qword_949A90];
    [v41 setMask:v44];

    [v30 lineHeight];
    *&v44[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_lineHeight] = v45;
    *&v44[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientStart] = v24 + 20.0;
    *&v44[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientEnd] = v24 + -5.0;
    v46 = v30;
    v47 = v31;
    v48 = [v1 textAlignment];
    v49 = [v1 traitCollection];
    v50 = sub_7699F0();

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = 2;
    }

    v52 = v48 == v51;
    v53 = [v1 traitCollection];
    v54 = sub_7699F0();

    if ((v54 ^ v52))
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    *&v44[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_textDirection] = v55;
    [v1 bounds];
    [v44 setFrame:?];
    [v44 setNeedsDisplay];

    v43 = v47;
  }

  else
  {
    [v41 setMask:0];

    v43 = v31;
  }

  v57(v43, v63);
}

void sub_1E916C(void *a1)
{
  v1 = a1;
  sub_1E8AD4();
}

uint64_t sub_1E91B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v24 = a3;
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_949A90;
  v20 = objc_allocWithZone(type metadata accessor for InvertedGradientLayer());
  *&v18[v19] = [v20 init];
  v21 = &v18[qword_949A98];
  *v21 = 0;
  v21[8] = 1;
  sub_1E9A94(a1, v17);
  (*(v12 + 16))(v14, a6, v11);
  v22 = sub_75BB10();
  (*(v12 + 8))(a6, v11);
  sub_11A38(a1);
  return v22;
}

void sub_1E93BC(CGContext *a1)
{
  v2 = v1;
  v4 = sub_765BC0();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 CGColor];

  CGContextSetFillColorWithColor(a1, v8);
  [v1 bounds];
  x = v42.origin.x;
  width = v42.size.width;
  v12 = v11 - *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_lineHeight];
  v37 = a1;
  v42.size.height = v12;
  CGContextFillRect(a1, v42);
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_textDirection];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_77B6C0;
  if (v13 == 3)
  {
    v15 = &selRef_blackColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v13 == 3)
  {
    v16 = &selRef_clearColor;
  }

  else
  {
    v16 = &selRef_blackColor;
  }

  if (v13 == 3)
  {
    v17 = &unk_87EB40;
  }

  else
  {
    v17 = &unk_87EB70;
  }

  v18 = [v6 *v15];
  v19 = [v18 CGColor];

  *(v14 + 32) = v19;
  v20 = [v6 *v16];
  v21 = [v20 CGColor];

  *(v14 + 40) = v21;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColor(0);
  v38 = DeviceRGB;
  isa = sub_769450().super.isa;

  v24 = CGGradientCreateWithColors(v38, isa, v17);

  if (v24)
  {
    if (v13 == 3)
    {
      [v2 bounds];
      v25 = CGRectGetMaxX(v43) - *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientStart];
      [v2 bounds];
      v26 = CGRectGetMaxX(v44) - *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientEnd];
      v27 = 1;
    }

    else
    {
      v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientEnd];
      v26 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientStart];
      v27 = 2;
    }

    [v2 bounds];
    v46.size.height = CGRectGetHeight(v45);
    v29 = v37;
    v46.origin.x = x;
    v46.origin.y = v12;
    v46.size.width = width;
    CGContextAddRect(v37, v46);
    v31 = v34;
    v30 = v35;
    v32 = v36;
    (*(v35 + 104))(v34, enum case for CGPathFillRule.winding(_:), v36);
    sub_769740();
    (*(v30 + 8))(v31, v32);
    v40.y = 0.5;
    v41.y = 0.5;
    v40.x = v25;
    v41.x = v26;
    CGContextDrawLinearGradient(v29, v24, v40, v41, v27);
  }

  else
  {
    v28 = v38;
  }
}

id sub_1E9970(void *a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_lineHeight] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientStart] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientEnd] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_textDirection] = 3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InvertedGradientLayer();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E9A38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvertedGradientLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1E9A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93E530, &unk_77C5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E9B04()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E9BCC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  sub_BD88(&qword_9477F0, qword_780200);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_77B6D0;
  *(v5 + 32) = sub_767890();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769900();
  swift_unknownObjectRelease();

  v6 = sub_1E9B04();
  v7 = [v6 searchTextField];

  v8 = objc_allocWithZone(type metadata accessor for SearchTextInputSourceTextField());
  v9 = sub_3B346C(v7);
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_searchTextInput];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_searchTextInput] = v9;

  v11 = OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar] setDelegate:v1];
  v12 = *&v1[v11];
  sub_4C6624();

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton];
  sub_76A3D0();
  v26._countAndFlagsBits = 0x465F484352414553;
  v26._object = 0xEE00535245544C49;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_75B750(v26, v27);
  sub_76A3C0();
  v14 = sub_56E958(0xD000000000000010, 0x80000000007D43F0, 0);
  v15 = [v14 imageWithRenderingMode:2];

  sub_76A390();
  sub_76A290();
  sub_76A2D0();
  v16 = sub_76A3F0();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  sub_76A420();
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v13 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v17 = 0.0;
  [v13 setAlpha:0.0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  v18 = sub_76A1F0();
  [v13 addAction:v18 forControlEvents:64];

  [v13 setPointerInteractionEnabled:1];
  [*&v1[v11] _setSearchFieldContainerLayoutCustomizationDelegate:v1];
  v19 = [v1 searchBar];
  [v19 setShowsCancelButton:1];

  [v1 setActive:1];
  v20 = [v1 traitCollection];
  [v20 horizontalSizeClass];
  LOBYTE(v4) = sub_7699B0();
  [*&v1[v11] _additionalPaddingForSearchFieldAtLeadingEdge];
  v22 = v21;
  if (v4)
  {
    [v13 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v17 = v23 + 15.0;
  }

  if (v17 != v22)
  {
    v24 = *&v1[v11];
    [v24 _setAdditionalPaddingForSearchFieldAtLeadingEdge:v17];
  }
}

void sub_1EA3D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler];
    if (v3)
    {
      v4 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler + 8];
      v5 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton];
      v6 = Strong;
      sub_F714(*&Strong[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler], v4);
      v7 = v5;
      v3();
      sub_F704(v3, v4);

      Strong = v7;
    }
  }
}

double *sub_1EA500(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SearchController();
  v2 = objc_msgSendSuper2(&v9, "keyCommands");
  if (v2)
  {
    v3 = v2;
    sub_BE70(0, &unk_949C60, UIKeyCommand_ptr);
    v4 = sub_769460();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v10 = v4;
  v5 = UIKeyInputEscape;
  v11._object = 0x80000000007D4410;
  v11._countAndFlagsBits = 0xD000000000000035;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_75B750(v11, v12);
  v6 = sub_769210();

  v7 = [objc_opt_self() keyCommandWithInput:v5 modifierFlags:0 action:"handleCancelKeyCommandWithCommand:" discoverabilityTitle:v6];

  sub_769440();
  if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v10 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return v10;
}

id sub_1EA7C0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_searchTextInput] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar] = 0;
  v6 = &v3[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton;
  *&v3[v7] = [objc_opt_self() buttonWithType:1];
  if (a2)
  {
    v8 = sub_769210();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1EA92C(void *a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SearchController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1EAA34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1EAAFC(char *a1, void *a2)
{
  v13 = [a1 traitCollection];
  v4 = [v13 horizontalSizeClass];
  v5 = v4 == [a2 horizontalSizeClass];
  v6 = v13;
  if (!v5)
  {
    v7 = sub_7699B0();
    v8 = sub_1E9B04();
    [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
    v10 = v9;

    v11 = 0.0;
    if (v7)
    {
      [*&a1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v11 = v12 + 15.0;
    }

    v6 = v13;
    if (v11 != v10)
    {
      [*&a1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:?];
      v6 = v13;
    }
  }
}

uint64_t sub_1EAC10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1EAC50()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_searchTextInput];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_3B2A20();

  if (v7)
  {
    v8 = [v1 searchResultsController];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for SearchResultsContainerViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v19 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
        v11 = v19;

        if (v19)
        {
          type metadata accessor for StoreCollectionViewController();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
            v14 = sub_BD88(&unk_93F630, &unk_77E230);

            sub_768860();
            v15 = *(v14 - 8);
            if ((*(v15 + 48))(v4, 1, v14) == 1)
            {
              sub_268C8(v4);
            }

            else
            {

              sub_32AC7C(v17, 1, v13, v4);

              (*(v15 + 8))(v4, v14);
            }

            [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton] setEnabled:1];

            return;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v19 = 0;
LABEL_11:
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton] setEnabled:0];

    v16 = v19;
  }
}

void sub_1EAEEC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  if ([v5 isActive])
  {
    v12 = [v5 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v14 = v13 == &dword_0 + 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton];
  [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v44 = v16;
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  Height = CGRectGetHeight(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  v18 = CGRectGetHeight(v50);
  v19 = [v6 traitCollection];
  v20 = sub_7699F0();

  if (!v14)
  {
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    if (v20)
    {
      MaxX = CGRectGetMaxX(*&v23);
      v28 = 15.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v23) - v44;
      v28 = -15.0;
    }

    v21 = MaxX + v28;
    v22 = 1.0;
    goto LABEL_14;
  }

  if (v20)
  {
    if (!a1)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    [a1 frame];
    v21 = CGRectGetMaxX(v51) + 15.0 + 8.0;
    v22 = 0.0;
LABEL_14:
    v29 = MinY + (v18 - Height) * 0.5;
    if ([v6 isActive])
    {
      v30 = sub_1E9B04();
      v31 = [v30 superview];

      if (v31)
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v32;
          v53.origin.x = a2;
          v53.origin.y = a3;
          v53.size.width = a4;
          v53.size.height = a5;
          CGRectGetHeight(v53);
          v34 = v31;
          [v33 frame];
          [v33 setFrame:?];
        }
      }
    }

    v35 = swift_allocObject();
    *(v35 + 16) = v6;
    *(v35 + 24) = v21;
    *(v35 + 32) = v29;
    *(v35 + 40) = v45;
    *(v35 + 48) = Height;
    *(v35 + 56) = v22;
    v36 = v6;
    v37 = [v15 superview];
    if (v37)
    {

      [v15 setFrame:{v21, v29, v45, Height}];
      [v15 setAlpha:v22];
      v38 = 0;
      v39 = 0;
LABEL_24:
      [v15 setUserInteractionEnabled:v22 > 0.0];
      v43 = sub_1E9B04();
      sub_4C6624();

      sub_F704(v38, v39);
      return;
    }

    if (a1)
    {
      [a1 addSubview:v15];
      v40 = objc_opt_self();
      v41 = swift_allocObject();
      v38 = sub_1EB4B8;
      *(v41 + 16) = sub_1EB4B8;
      *(v41 + 24) = v35;
      aBlock[4] = sub_2EC28;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1EB578;
      aBlock[3] = &unk_8885B8;
      v42 = _Block_copy(aBlock);

      [v40 performWithoutAnimation:v42];
      _Block_release(v42);
      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if ((v40 & 1) == 0)
      {
        v39 = v35;
        goto LABEL_24;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (a1)
  {
    [a1 frame];
    v21 = CGRectGetMinX(v52) - (v44 + 15.0 + 8.0);
    v22 = 0.0;
    goto LABEL_14;
  }

LABEL_28:
  __break(1u);
}

id sub_1EB3BC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v6, "initWithSearchResultsController:", a1);
}

uint64_t sub_1EB480()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_1EB4B8()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton);
  [v2 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];

  return [v2 setAlpha:v1];
}

double sub_1EB538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1EB7A0(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 contentView];
    [v6 addSubview:v5];

    [v1 setNeedsLayout];
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_15E72C;
    *(v9 + 24) = v8;
    aBlock[4] = sub_1EBDCC;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_888640;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    [v7 performWithoutAnimation:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    [isEscapingClosureAtFileLocation removeFromSuperview];
  }
}

void sub_1EB990()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame:{v6, v8, v10, v12}];
  }
}

void sub_1EBAB4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v6 = *&v1[v5];
    if (v6)
    {
      v7 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v6 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = v7;
      if (v7 != v9)
      {
        [v8 setNeedsLayout];
      }
    }
  }
}

uint64_t type metadata accessor for UberCollectionViewCell(uint64_t a1)
{
  result = qword_949CF8;
  if (!qword_949CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1EBC9C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1EBD34()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1EBD84()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1EBDF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1EBE0C()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99B7C0);
  sub_BE38(v0, qword_99B7C0);
  sub_7666A0();
  return result;
}

char *sub_1EBE60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_isCollapsing] = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_93C358 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_99AF10;
  v17[3] = unk_99AF20;
  v18 = qword_99AF30;
  v17[0] = xmmword_99AEF0;
  v17[1] = unk_99AF00;
  v5 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView(0));
  *&v1[v4] = sub_FDB24(v17, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_75CA40();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v9 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView];
  v13 = v10;
  [v12 setContentMode:2];
  [*&v10[v11] setClipsToBounds:1];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [v13 addSubview:*&v10[v11]];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView;
  [*&v13[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView] setContentMode:2];
  [*&v13[v14] setClipsToBounds:1];
  [v13 addSubview:*&v13[v14]];

  return v13;
}

void sub_1EC0F4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView];
    v5 = Strong;
    [v3 setHidden:1];
    v5[qword_99A208] = 1;
    *&v5[qword_940578 + 8] = &off_888668;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_7699E0();

    [v5 _setCornerRadius:20.0];
    [v1 insertSubview:v5 aboveSubview:v3];
    [v1 setNeedsLayout];
  }
}

void (*sub_1EC220(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1EC274;
}

void sub_1EC274(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v23 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1EE2E8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v7 = v23;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v10 = v4;
        v11 = sub_76A1C0();

        v12 = *(a1 + 8);
        if (v11)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }

          [*(v12 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v23;
    }

    swift_unknownObjectWeakAssign();
    sub_1EC0F4();

    v22 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1EE2E8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v15 = [v6 superview];
      if (v15)
      {
        v16 = v15;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v17 = v4;
        v18 = sub_76A1C0();

        v19 = *(a1 + 8);
        if (v18)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }

          [*(v19 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1EC0F4();
    v22 = v23;
  }
}

void sub_1EC618(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v4;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "frame", v8);
  v11 = enum case for FloatingPointRoundingRule.up(_:);
  v12 = *(v7 + 104);
  v12(v10, enum case for FloatingPointRoundingRule.up(_:), v6);
  sub_769D00();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v10, v6);
  v12(v10, v11, v6);
  sub_769D00();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v21(v10, v6);
  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v18;
  v38.size.height = v20;
  v39.origin.x = v23;
  v39.origin.y = v25;
  v39.size.width = v27;
  v39.size.height = v29;
  if (!CGRectEqualToRect(v38, v39) && (v4[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_isCollapsing] & 1) == 0)
  {
    v30 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_refetchArtworkBlock];
    if (v30)
    {
      v31 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_refetchArtworkBlock + 8];

      [v4 bounds];
      v12(v10, v11, v6);
      sub_769D80();
      v33 = v32;
      v35 = v34;
      v21(v10, v6);
      v36 = [v4 traitCollection];
      v30(v33, v35);
      sub_F704(v30, v31);
    }
  }
}

id sub_1EC8E8()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v1 = v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_isCollapsing];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1 == 1)
  {
    if (Strong)
    {
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8 && (v9 = v8, v10 = *(v8 + qword_940590), v9, v11 = [v10 image], v10, v11))
      {
        [v11 size];
        v13 = v12;
        v15 = v14;

        v16 = v15;
        v17 = v13;
      }

      else
      {
        [v0 bounds];
      }

      [v3 setFrame:{v5, v7, v17, v16}];
    }

    v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    v22 = v21;
    v24 = v23;
    v25 = [v20 image];
    if (v25)
    {
      v26 = v25;
      [v25 size];
      v28 = v27;
      v30 = v29;
    }

    else
    {
      [v0 bounds];
      v28 = v31;
      v30 = v32;
    }

    [v20 setFrame:{v22, v24, v28, v30}];
    v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView];
    [v20 frame];
  }

  else
  {
    if (Strong)
    {
      [v0 bounds];
      [v3 setFrame:?];
    }

    v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    [v18 setFrame:?];
    v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView];
    [v0 bounds];
  }

  return [v19 setFrame:?];
}