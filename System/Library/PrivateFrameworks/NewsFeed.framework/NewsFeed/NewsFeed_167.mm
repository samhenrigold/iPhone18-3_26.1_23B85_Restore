id sub_1D6A6F8CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups;
  *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups) = a1;

  v3 = *(v1 + v2);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm + 8);

  sub_1D6A6EF68(v3, v4, v5);
  v7 = v6;

  *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups) = v7;

  v8 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView);

  return [v8 reloadData];
}

id sub_1D6A6F988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize] = 1;
  v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange] = 1;
  *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections] = 4;
  *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D72EC9C0;
  v12 = &v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
  *&v11[v13] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = 0;
  *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor] = a1;
  *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups] = a2;
  *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = a2;
  *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image] = a5;
  v19.receiver = v11;
  v19.super_class = v6;

  v14 = a5;
  v15 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  v16 = v15;
  if (a4)
  {
    v17 = sub_1D726203C();
  }

  else
  {
    v17 = 0;
  }

  [v15 setTitle_];

  return v15;
}

id sub_1D6A6FB78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver;
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver];
  if (v3)
  {
    v4 = v3;
    sub_1D725825C();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for DebugFormatInspectorPaneViewController();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1D6A6FCB4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for DebugFormatInspectorPaneViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 systemBackgroundColor];
  [v5 setBackgroundColor_];

  v8 = *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView];
  v9 = [v6 systemBackgroundColor];
  [v8 setBackgroundColor_];

  [v8 setDataSource_];
  [v8 setDelegate_];
  [v8 setAlwaysBounceVertical_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v8 setTableFooterView_];

  v11 = [v8 topEdgeEffect];
  v12 = objc_opt_self();
  v13 = [v12 hardStyle];
  [v11 setStyle_];

  v14 = [v8 bottomEdgeEffect];
  v15 = [v12 hardStyle];
  [v14 setStyle_];

  sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
  sub_1D7262DAC();
  type metadata accessor for DebugFormatInspectorFrameCell();
  sub_1D7262DAC();
  type metadata accessor for DebugFormatInspectorResizingCell();
  sub_1D7262DAC();
  type metadata accessor for DebugFormatInspectorCursorCell();
  sub_1D7262DAC();
  type metadata accessor for KeyValueTableViewCell();
  sub_1D7262DAC();
  type metadata accessor for SubtitleTableViewCell();
  sub_1D7262DAC();
  sub_1D7262DAC();
  sub_1D7262DAC();
  sub_1D7262DAC();
  sub_1D7262DAC();
  sub_1D6A7DA3C(0, &unk_1EC890C60, &qword_1EDF1A710, 0x1E69DD250, type metadata accessor for DebugFormatInspectorAccessoryCell);
  sub_1D7262DAC();
  sub_1D6A7D8EC(0, &qword_1EC890C78, MEMORY[0x1E69D7648], type metadata accessor for DebugFormatInspectorAccessoryCell);
  sub_1D7262DAC();
  sub_1D6A7D8EC(0, &qword_1EC890C70, MEMORY[0x1E69D7BA8], type metadata accessor for DebugFormatInspectorAccessoryCell);
  sub_1D7262DAC();
  sub_1D6A7D8EC(0, &qword_1EC890C98, MEMORY[0x1E69D8878], type metadata accessor for DebugFormatInspectorAccessoryCell);
  sub_1D7262DAC();
  sub_1D6A7D8EC(0, &qword_1EC890C58, MEMORY[0x1E69D8880], type metadata accessor for DebugFormatInspectorAccessoryCell);
  sub_1D7262DAC();
  sub_1D6A7D8EC(0, &unk_1EC890C80, type metadata accessor for DebugFormatInspectorSplitView, type metadata accessor for DebugFormatInspectorAccessoryCell);
  sub_1D7262DAC();
  sub_1D6A7DA3C(0, &qword_1EC890C38, &unk_1EC890C40, 0x1E69DCAE0, type metadata accessor for DebugFormatInspectorAccessoryCell);
  sub_1D7262DAC();
  v16 = [v3 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 addSubview_];

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v8;
  v19 = sub_1D725833C();

  v20 = *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver];
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = v19;

  if (qword_1EC87D650 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D6A7DCC8();
  sub_1D725965C();
}

void sub_1D6A70328(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize) == 1)
    {
      v5 = Strong;
      [v3 contentSize];
      sub_1D726332C();
      [v5 setPreferredContentSize_];
      v6 = [v5 view];

      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 setNeedsLayout];

      Strong = v6;
    }
  }
}

void sub_1D6A7041C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView);

    [v4 reloadData];
  }
}

id sub_1D6A705B4(uint64_t a1)
{
  if (qword_1EC87D650 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugFormatInspectorPaneViewController();
  sub_1D6A7DCC8();
  sub_1D725964C();
  result = v5;
  if ((v5 - 1) >= 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    return v4;
  }

  return result;
}

void sub_1D6A7067C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = v2;
    type metadata accessor for DebugFormatInspectorPaneViewController();
    v6 = *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor];

    sub_1D6A6ED08(v6, a1, 0, 0);
    v13 = v7;
    [v13 setModalPresentationStyle_];
    v8 = [v13 popoverPresentationController];
    [v8 setSourceView_];

    v9 = [v13 popoverPresentationController];
    if (v9)
    {
      v10 = v9;
      [v9 setPermittedArrowDirections_];
    }

    v11 = [v13 popoverPresentationController];
    if (v11)
    {
      v12 = v11;
      [v11 setCanOverlapSourceViewRect_];
    }

    [v13 setPreferredContentSize_];

    [v3 presentViewController:v13 animated:1 completion:0];
  }
}

char *sub_1D6A708F4(char *a1, uint64_t a2)
{
  v864 = a1;
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v862 = v847 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D6A7D8EC(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v848 = v847 - v10;
  v11 = type metadata accessor for FormatInspectionFeedGroupItem(0);
  v857 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v858 = v13;
  v859 = v847 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v860 = v847 - v16;
  v17 = sub_1D725D00C();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v856 = (v847 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v855 = (v847 - v22);
  sub_1D6A7D8EC(0, &qword_1EDF3B6D0, MEMORY[0x1E69D7830], v7);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v854 = v847 - v25;
  sub_1D6A7D8EC(0, &qword_1EDF3B4E0, MEMORY[0x1E69D8060], v7);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v850 = v847 - v28;
  sub_1D6A7D8EC(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70], v7);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v849 = v847 - v31;
  v32 = sub_1D72585BC();
  v852 = *(v32 - 8);
  v853 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v851 = v847 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A7D8EC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, v7);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v861 = (v847 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v847 - v40;
  v42 = type metadata accessor for FormatInspectionItem(0);
  v43 = v42 - 8;
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = v847 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D7258DAC();
  v863 = v2;
  sub_1D6A6EBD4(v47, *(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups), &v919);
  v48 = v921;

  v922 = v920;
  sub_1D6A7D950(&v922, &qword_1EDF43BE0, MEMORY[0x1E69E6158]);

  v49 = sub_1D7258D9C();
  sub_1D6A6EC48(v49, v48, v46);

  v50 = *(v43 + 32);
  v865 = v46;
  sub_1D6A7DC54(&v46[v50], v41, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, v7, sub_1D6A7D8EC);
  v51 = type metadata accessor for FormatInspectionItem.Value(0);
  v52 = *(*(v51 - 8) + 48);
  if (v52(v41, 1, v51) == 1)
  {
    sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
    v53 = sub_1D7262D8C();
    v54 = [v53 textLabel];
    v55 = v865;
    if (v54)
    {
      v56 = v54;
      if (*(v865 + 1))
      {
        v57 = sub_1D726203C();
      }

      else
      {
        v57 = 0;
      }

      [v56 setText_];
    }

    v62 = [v53 textLabel];
    if (v62)
    {
      v63 = v62;
      v64 = [objc_opt_self() systemFontOfSize_];
      [v63 setFont_];
    }

    v65 = [v53 textLabel];
    if (v65)
    {
      v66 = v65;
      sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      v67 = sub_1D72635DC();
      [v66 setTextColor_];
    }

    [v53 setAccessoryType_];
    [v53 setSelectionStyle_];
LABEL_16:
    v68 = type metadata accessor for FormatInspectionItem;
    v69 = v55;
LABEL_17:
    sub_1D6A7DB0C(v69, v68);
    return v53;
  }

  v847[1] = a2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v117 = [v53 textLabel];
      v118 = v865;
      if (v117)
      {
        v119 = v117;
        if (*(v865 + 1))
        {
          v120 = sub_1D726203C();
        }

        else
        {
          v120 = 0;
        }

        [v119 setText_];
      }

      v553 = [v53 textLabel];
      if (v553)
      {
        v554 = v553;
        v555 = [objc_opt_self() systemFontOfSize_];
        [v554 setFont_];
      }

      v556 = [v53 detailTextLabel];
      if (v556)
      {
        v557 = v556;
        v558 = sub_1D726203C();

        [v557 setText_];
      }

      else
      {
      }

      v559 = [v53 detailTextLabel];
      if (v559)
      {
        v560 = v559;
        v561 = [objc_opt_self() systemFontOfSize_];
        [v560 setFont_];
      }

      v562 = [v53 detailTextLabel];
      if (v562)
      {
        v563 = v562;
        v564 = [objc_opt_self() secondaryLabelColor];
        [v563 setTextColor_];
      }

      goto LABEL_323;
    case 3u:
      v144 = *v41;
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v145 = [v53 textLabel];
      v73 = v865;
      if (v145)
      {
        v146 = v145;
        if (*(v865 + 1))
        {
          v147 = sub_1D726203C();
        }

        else
        {
          v147 = 0;
        }

        [v146 setText_];
      }

      v601 = [v53 textLabel];
      if (v601)
      {
        v602 = v601;
        v603 = [objc_opt_self() systemFontOfSize_];
        [v602 setFont_];
      }

      v604 = [v53 detailTextLabel];
      if (v604)
      {
        v605 = v604;
        v606 = sub_1D5B5A498(0, &qword_1EDF1AA18, 0x1E69DD1B8);
        v607 = sub_1D6A705B4(v606);
        v608 = sub_1D703EBEC(v607);
        v609 = v144();
        v611 = v610;

        sub_1D6C2BAF0(v609, v611);

        v612 = sub_1D726203C();

        [v605 setText_];
      }

      v613 = [v53 detailTextLabel];
      if (v613)
      {
        v614 = v613;
        v615 = [objc_opt_self() systemFontOfSize_];
        [v614 setFont_];
      }

      v616 = [v53 detailTextLabel];
      if (v616)
      {
        v617 = v616;
        v618 = [objc_opt_self() secondaryLabelColor];
        [v617 setTextColor_];
      }

      v619 = [v53 detailTextLabel];
      if (v619)
      {
        v620 = v619;
        [v619 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];
      [v53 setAccessoryType_];

      goto LABEL_366;
    case 4u:
      v125 = *v41;
      sub_1D6A7DA3C(0, &unk_1EC890C60, &qword_1EDF1A710, 0x1E69DD250, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v126 = sub_1D7262D8C();
      v127 = *&v126[qword_1EC8817F8];
      *&v912 = v125;
      v128 = v127;
      v129 = sub_1D6A705B4(v128);
      v131 = sub_1D6E0CD9C(v129, v130);
      [v128 setBackgroundColor_];

      v53 = v126;
      v132 = [v53 textLabel];
      v93 = v865;
      if (v132)
      {
        v133 = v132;
        if (*(v865 + 1))
        {
          v134 = sub_1D726203C();
        }

        else
        {
          v134 = 0;
        }

        [v133 setText_];
      }

      v580 = [v53 textLabel];
      if (v580)
      {
        v581 = v580;
        v582 = [objc_opt_self() systemFontOfSize_];
        [v581 setFont_];
      }

      v583 = [v53 detailTextLabel];
      if (v583)
      {
        v584 = v583;
        if (*(v93 + 24))
        {
          v585 = sub_1D726203C();
        }

        else
        {
          v585 = 0;
        }

        [v584 setText_];
      }

      v586 = [v53 detailTextLabel];
      if (v586)
      {
        v587 = v586;
        v588 = [objc_opt_self() systemFontOfSize_];
        [v587 setFont_];
      }

      v589 = [v53 detailTextLabel];
      if (v589)
      {
        v590 = v589;
        v591 = [objc_opt_self() secondaryLabelColor];
        [v590 setTextColor_];
      }

      [v53 setSelectionStyle_];

      goto LABEL_494;
    case 5u:
      v170 = *v41;
      v171 = *(v41 + 1);
      sub_1D6A7D8EC(0, &unk_1EC890C80, type metadata accessor for DebugFormatInspectorSplitView, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v172 = sub_1D7262D8C();
      v173 = qword_1EC8817F8;
      v174 = *(*&v172[qword_1EC8817F8] + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_left);
      *&v912 = v170;
      v175 = v174;
      v176 = sub_1D6A705B4(v175);
      v178 = sub_1D6E0CD9C(v176, v177);
      [v175 setBackgroundColor_];

      v179 = *(*&v172[v173] + OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_right);
      *&v912 = v171;
      v180 = v179;
      v181 = sub_1D6A705B4(v180);
      v183 = sub_1D6E0CD9C(v181, v182);
      [v180 setBackgroundColor_];

      v53 = v172;
      v184 = [v53 textLabel];
      v118 = v865;
      if (v184)
      {
        v185 = v184;
        if (*(v865 + 1))
        {
          v186 = sub_1D726203C();
        }

        else
        {
          v186 = 0;
        }

        [v185 setText_];
      }

      v649 = [v53 textLabel];
      if (v649)
      {
        v650 = v649;
        v651 = [objc_opt_self() systemFontOfSize_];
        [v650 setFont_];
      }

      v652 = [v53 detailTextLabel];
      if (v652)
      {
        v653 = v652;
        if (*(v118 + 24))
        {
          v654 = sub_1D726203C();
        }

        else
        {
          v654 = 0;
        }

        [v653 setText_];
      }

      v655 = [v53 detailTextLabel];
      if (v655)
      {
        v656 = v655;
        v657 = [objc_opt_self() systemFontOfSize_];
        [v656 setFont_];
      }

      v658 = [v53 detailTextLabel];
      if (v658)
      {
        v659 = v658;
        v660 = [objc_opt_self() secondaryLabelColor];
        [v659 setTextColor_];
      }

      [v53 setSelectionStyle_];

      goto LABEL_465;
    case 6u:
      v135 = *(v41 + 1);
      v912 = *v41;
      v913 = v135;
      v136 = *(v41 + 3);
      v914 = *(v41 + 2);
      v915 = v136;
      sub_1D6A7D8EC(0, &qword_1EC890C78, MEMORY[0x1E69D7648], type metadata accessor for DebugFormatInspectorAccessoryCell);
      v137 = sub_1D7262D8C();
      v885 = v912;
      v886 = v913;
      v887 = v914;
      v888 = v915;
      v138 = sub_1D6A705B4(v137);
      v139 = v849;
      sub_1D6BB76E0(v138, v849);
      sub_1D60866F0(&v912);
      v140 = sub_1D725DD3C();
      (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
      sub_1D725CD5C();
      v53 = v137;
      v141 = [v53 textLabel];
      v55 = v865;
      if (v141)
      {
        v142 = v141;
        if (*(v865 + 1))
        {
          v143 = sub_1D726203C();
        }

        else
        {
          v143 = 0;
        }

        [v142 setText_];
      }

      v592 = [v53 textLabel];
      if (v592)
      {
        v593 = v592;
        v594 = [objc_opt_self() systemFontOfSize_];
        [v593 setFont_];
      }

      v595 = [v53 detailTextLabel];
      if (v595)
      {
        v596 = v595;
        if (*(v55 + 24))
        {
          v597 = sub_1D726203C();
        }

        else
        {
          v597 = 0;
        }

        [v596 setText_];
      }

      v598 = [v53 detailTextLabel];
      if (v598)
      {
        v599 = v598;
        v600 = [objc_opt_self() systemFontOfSize_];
        [v599 setFont_];
      }

      v538 = [v53 detailTextLabel];
      if (v538)
      {
        goto LABEL_286;
      }

      goto LABEL_563;
    case 7u:
      v96 = *(v41 + 5);
      v916[0] = *(v41 + 4);
      v916[1] = v96;
      v97 = *(v41 + 7);
      v917[0] = *(v41 + 6);
      v917[1] = v97;
      v98 = *(v41 + 1);
      v912 = *v41;
      v913 = v98;
      v99 = *(v41 + 3);
      v914 = *(v41 + 2);
      v915 = v99;
      sub_1D6A7D8EC(0, &qword_1EC890C70, MEMORY[0x1E69D7BA8], type metadata accessor for DebugFormatInspectorAccessoryCell);
      v100 = sub_1D7262D8C();
      v889[0] = v916[0];
      v889[1] = v916[1];
      v890 = v917[0];
      v891 = v917[1];
      v885 = v912;
      v886 = v913;
      v887 = v914;
      v888 = v915;
      v101 = sub_1D6A705B4(v100);
      v102 = v850;
      sub_1D6A50ADC(v101, v850);
      sub_1D6086640(&v912);
      v103 = sub_1D725E94C();
      (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
      sub_1D725DD8C();
      v53 = v100;
      v104 = [v53 textLabel];
      v55 = v865;
      if (v104)
      {
        v105 = v104;
        if (*(v865 + 1))
        {
          v106 = sub_1D726203C();
        }

        else
        {
          v106 = 0;
        }

        [v105 setText_];
      }

      v529 = [v53 textLabel];
      if (v529)
      {
        v530 = v529;
        v531 = [objc_opt_self() systemFontOfSize_];
        [v530 setFont_];
      }

      v532 = [v53 detailTextLabel];
      if (v532)
      {
        v533 = v532;
        if (*(v55 + 24))
        {
          v534 = sub_1D726203C();
        }

        else
        {
          v534 = 0;
        }

        [v533 setText_];
      }

      v535 = [v53 detailTextLabel];
      if (v535)
      {
        v536 = v535;
        v537 = [objc_opt_self() systemFontOfSize_];
        [v536 setFont_];
      }

      v538 = [v53 detailTextLabel];
      if (!v538)
      {
        goto LABEL_563;
      }

LABEL_286:
      v539 = v538;
      v540 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_418;
    case 8u:
      v107 = *v41;
      sub_1D6A7DA3C(0, &unk_1EC890C60, &qword_1EDF1A710, 0x1E69DD250, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v108 = sub_1D7262D8C();
      v109 = *&v108[qword_1EC8817F8];
      *&v912 = v107;
      sub_1D7100B78(&v885);
      v110 = v109;
      v111 = sub_1D6A705B4(v110);
      v113 = sub_1D6E0CD9C(v111, v112);

      [v110 setBackgroundColor_];

      v53 = v108;
      v114 = [v53 textLabel];
      v93 = v865;
      if (v114)
      {
        v115 = v114;
        if (*(v865 + 1))
        {
          v116 = sub_1D726203C();
        }

        else
        {
          v116 = 0;
        }

        [v115 setText_];
      }

      v541 = [v53 textLabel];
      if (v541)
      {
        v542 = v541;
        v543 = [objc_opt_self() systemFontOfSize_];
        [v542 setFont_];
      }

      v544 = [v53 detailTextLabel];
      if (v544)
      {
        v545 = v544;
        if (*(v93 + 24))
        {
          v546 = sub_1D726203C();
        }

        else
        {
          v546 = 0;
        }

        [v545 setText_];
      }

      v547 = [v53 detailTextLabel];
      if (v547)
      {
        v548 = v547;
        v549 = [objc_opt_self() systemFontOfSize_];
        [v548 setFont_];
      }

      v550 = [v53 detailTextLabel];
      if (v550)
      {
        v551 = v550;
        v552 = [objc_opt_self() secondaryLabelColor];
        [v551 setTextColor_];
      }

      [v53 setSelectionStyle_];

      sub_1D6086768(v107);
      goto LABEL_494;
    case 9u:
      v154 = *(v41 + 9);
      v917[2] = *(v41 + 8);
      v917[3] = v154;
      *(&v917[3] + 9) = *(v41 + 153);
      v155 = *(v41 + 5);
      v916[0] = *(v41 + 4);
      v916[1] = v155;
      v156 = *(v41 + 6);
      v917[1] = *(v41 + 7);
      v917[0] = v156;
      v157 = *(v41 + 1);
      v912 = *v41;
      v913 = v157;
      v158 = *(v41 + 2);
      v915 = *(v41 + 3);
      v914 = v158;
      sub_1D6A7D8EC(0, &qword_1EC890C58, MEMORY[0x1E69D8880], type metadata accessor for DebugFormatInspectorAccessoryCell);
      v53 = sub_1D7262D8C();
      v159 = [v53 textLabel];
      v55 = v865;
      if (v159)
      {
        v160 = v159;
        if (*(v865 + 1))
        {
          v161 = sub_1D726203C();
        }

        else
        {
          v161 = 0;
        }

        [v160 setText_];
      }

      v635 = [v53 textLabel];
      if (v635)
      {
        v636 = v635;
        v637 = [objc_opt_self() systemFontOfSize_];
        [v636 setFont_];
      }

      v638 = [v53 detailTextLabel];
      if (v638)
      {
        v639 = v638;
        if (*(v55 + 24))
        {
          v640 = sub_1D726203C();
        }

        else
        {
          v640 = 0;
        }

        [v639 setText_];
      }

      v641 = [v53 detailTextLabel];
      if (v641)
      {
        v642 = v641;
        v643 = [objc_opt_self() systemFontOfSize_];
        [v642 setFont_];
      }

      v644 = [v53 detailTextLabel];
      if (v644)
      {
        v645 = v644;
        v646 = [objc_opt_self() secondaryLabelColor];
        [v645 setTextColor_];
      }

      v887 = v916[0];
      v888 = v916[1];
      LOBYTE(v889[0]) = v917[0];
      v885 = v914;
      v886 = v915;
      sub_1D60FB55C(&v914, v883);
      sub_1D6A5A020(&v885, v855);
      v887 = *(&v917[2] + 8);
      v888 = *(&v917[3] + 8);
      LOBYTE(v889[0]) = BYTE8(v917[4]);
      v885 = *(v917 + 8);
      v886 = *(&v917[1] + 8);
      sub_1D60FB55C(v917 + 8, v883);
      sub_1D6A5A020(&v885, v856);
      v647 = v854;
      sub_1D725D23C();
      v648 = sub_1D725D25C();
      (*(*(v648 - 8) + 56))(v647, 0, 1, v648);
      sub_1D725FC4C();
      [v53 setSelectionStyle_];

      sub_1D62B4FB0(&v912);
      goto LABEL_16;
    case 0xAu:
      sub_1D6A7DB0C(v41, type metadata accessor for FormatInspectionItem.Value);
      sub_1D6A7DA3C(0, &qword_1EC890C38, &unk_1EC890C40, 0x1E69DCAE0, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v53 = sub_1D7262D8C();
      v238 = [v53 textLabel];
      v55 = v865;
      if (v238)
      {
        v239 = v238;
        if (*(v865 + 1))
        {
          v240 = sub_1D726203C();
        }

        else
        {
          v240 = 0;
        }

        [v239 setText_];
      }

      v754 = [v53 textLabel];
      if (v754)
      {
        v755 = v754;
        v756 = [objc_opt_self() systemFontOfSize_];
        [v755 setFont_];
      }

      v757 = [v53 detailTextLabel];
      if (v757)
      {
        v758 = v757;
        if (*(v55 + 24))
        {
          v759 = sub_1D726203C();
        }

        else
        {
          v759 = 0;
        }

        [v758 setText_];
      }

      v760 = [v53 detailTextLabel];
      if (v760)
      {
        v761 = v760;
        v762 = [objc_opt_self() systemFontOfSize_];
        [v761 setFont_];
      }

      v763 = [v53 detailTextLabel];
      if (v763)
      {
        goto LABEL_561;
      }

      goto LABEL_562;
    case 0xBu:
      v121 = *v41;
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v122 = [v53 textLabel];
      v118 = v865;
      if (v122)
      {
        v123 = v122;
        if (*(v865 + 1))
        {
          v124 = sub_1D726203C();
        }

        else
        {
          v124 = 0;
        }

        [v123 setText_];
      }

      v565 = [v53 textLabel];
      if (v565)
      {
        v566 = v565;
        v567 = [objc_opt_self() systemFontOfSize_];
        [v566 setFont_];
      }

      v568 = [v53 detailTextLabel];
      if (v568)
      {
        v569 = v568;
        *&v912 = 0;
        *(&v912 + 1) = 0xE000000000000000;
        MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
        v570 = sub_1D609C984(v121);
        MEMORY[0x1DA6FBD10](0, 0xE000000000000000, v570);
        sub_1D6C2BAF0(v912, *(&v912 + 1));

        v571 = sub_1D726203C();

        [v569 setText_];
      }

      v572 = [v53 detailTextLabel];
      if (v572)
      {
        v573 = v572;
        v574 = [objc_opt_self() secondaryLabelColor];
        [v573 setTextColor_];
      }

      v575 = [v53 detailTextLabel];
      if (v575)
      {
        v576 = v575;
        v577 = [objc_opt_self() systemFontOfSize_];
        [v576 setFont_];
      }

      goto LABEL_323;
    case 0xCu:
      v149 = v851;
      v148 = v852;
      v150 = v853;
      (*(v852 + 32))(v851, v41, v853);
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v151 = [v53 textLabel];
      v93 = v865;
      if (v151)
      {
        v152 = v151;
        if (*(v865 + 1))
        {
          v153 = sub_1D726203C();
        }

        else
        {
          v153 = 0;
        }

        [v152 setText_];
      }

      v621 = [v53 textLabel];
      if (v621)
      {
        v622 = v621;
        v623 = [objc_opt_self() systemFontOfSize_];
        [v622 setFont_];
      }

      v624 = [v53 detailTextLabel];
      if (v624)
      {
        v625 = v624;
        sub_1D72583DC();
        v626 = sub_1D726203C();

        [v625 setText_];
      }

      v627 = [v53 detailTextLabel];
      if (v627)
      {
        v628 = v627;
        v629 = [objc_opt_self() systemBlueColor];
        [v628 setTextColor_];
      }

      v630 = [v53 detailTextLabel];
      if (v630)
      {
        v631 = v630;
        v632 = [objc_opt_self() systemFontOfSize_];
        [v631 setFont_];
      }

      v633 = [v53 detailTextLabel];
      if (v633)
      {
        v634 = v633;
        [v633 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];
      [v53 setAccessoryType_];

      (*(v148 + 8))(v149, v150);
      goto LABEL_494;
    case 0xDu:
      v233 = *(v41 + 1);
      v912 = *v41;
      v913 = v233;
      v914 = *(v41 + 2);
      LOBYTE(v915) = v41[48];
      type metadata accessor for DebugFormatInspectorFrameCell();
      v53 = sub_1D7262D8C();
      *&v53[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorFrameCell_delegate + 8] = &off_1F51A9230;
      swift_unknownObjectWeakAssign();
      sub_1D6956B10(&v912);
      [v53 setSelectionStyle_];
      goto LABEL_129;
    case 0xEu:
      sub_1D6A7DB0C(v41, type metadata accessor for FormatInspectionItem.Value);
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v88 = [v53 textLabel];
      v55 = v865;
      if (v88)
      {
        v89 = v88;
        if (*(v865 + 1))
        {
          v90 = sub_1D726203C();
        }

        else
        {
          v90 = 0;
        }

        [v89 setText_];
      }

      v491 = [v53 textLabel];
      if (v491)
      {
        v492 = v491;
        v493 = [objc_opt_self() systemFontOfSize_];
        [v492 setFont_];
      }

      v494 = [v53 textLabel];
      if (v494)
      {
        v495 = v494;
        v496 = [objc_opt_self() labelColor];
        [v495 setTextColor_];
      }

      v497 = [v53 detailTextLabel];
      if (v497)
      {
        v498 = v497;
        if (*(v55 + 24))
        {
          v499 = sub_1D726203C();
        }

        else
        {
          v499 = 0;
        }

        [v498 setText_];
      }

      v500 = [v53 detailTextLabel];
      if (v500)
      {
        v501 = v500;
        v502 = [objc_opt_self() systemFontOfSize_];
        [v501 setFont_];
      }

      v503 = [v53 detailTextLabel];
      if (v503)
      {
        v504 = v503;
        v505 = [objc_opt_self() secondaryLabelColor];
        [v504 setTextColor_];
      }

      goto LABEL_434;
    case 0xFu:
      sub_1D6A7DB0C(v41, type metadata accessor for FormatInspectionItem.Value);
      type metadata accessor for KeyValueTableViewCell();
      v53 = sub_1D7262D8C();
      v187 = [v53 textLabel];
      v55 = v865;
      if (v187)
      {
        v188 = v187;
        if (*(v865 + 1))
        {
          v189 = sub_1D726203C();
        }

        else
        {
          v189 = 0;
        }

        [v188 setText_];
      }

      v661 = [v53 textLabel];
      if (v661)
      {
        v662 = v661;
        v663 = [objc_opt_self() systemFontOfSize_];
        [v662 setFont_];
      }

      v664 = [v53 detailTextLabel];
      if (v664)
      {
        v665 = v664;
        v666 = sub_1D726203C();
        [v665 setText_];
      }

      v667 = [v53 detailTextLabel];
      if (v667)
      {
        v668 = v667;
        v669 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB958]];
        [v668 setFont_];
      }

      v670 = [v53 detailTextLabel];
      if (!v670)
      {
        goto LABEL_563;
      }

      v539 = v670;
      v540 = [objc_opt_self() systemBlueColor];
LABEL_418:
      v671 = v540;
      [v539 setTextColor_];

      goto LABEL_563;
    case 0x10u:
      v76 = *(v41 + 3);
      v914 = *(v41 + 2);
      v915 = v76;
      v916[0] = *(v41 + 4);
      *(v916 + 9) = *(v41 + 73);
      v77 = *(v41 + 1);
      v912 = *v41;
      v913 = v77;
      sub_1D6A7DA3C(0, &qword_1EC890C38, &unk_1EC890C40, 0x1E69DCAE0, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v78 = sub_1D7262D8C();
      sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
      v79 = sub_1D67DBDF8();
      v864 = v79;
      v862 = v78;
      if (v915)
      {
        v80 = v79;
        sub_1D6A7D8EC(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
        v81 = swift_allocObject();
        sub_1D69D7B4C(v81, 2);
        v83 = v82;
        v84 = *MEMORY[0x1E69DB650];
        *v82 = *MEMORY[0x1E69DB650];
        if (BYTE8(v916[1]) == 1)
        {
          v85 = objc_opt_self();
          v86 = v84;
          v87 = [v85 systemBlueColor];
        }

        else
        {
          sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
          v396 = v84;
          v87 = sub_1D72635DC();
        }

        v397 = v87;
        sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
        v398 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        v83[1] = v397;
        v399 = *MEMORY[0x1E69DB648];
        v83[4] = v398;
        v83[5] = v399;
        v400 = objc_opt_self();
        v401 = *MEMORY[0x1E69DB980];
        v402 = v399;
        v403 = [v400 systemFontOfSize:8.0 weight:v401];
        v83[9] = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
        v83[6] = v403;
        nullsub_1();
        sub_1D5C09CEC(v404);

        v405 = sub_1D6A579CC();
        [v80 appendAttributedString_];
      }

      else
      {
        v84 = *MEMORY[0x1E69DB650];
      }

      v406 = *(&v913 + 1);
      v407 = v914;
      __swift_project_boxed_opaque_existential_1(&v912, *(&v913 + 1));
      (*(*(v407 + 8) + 40))(&v885, v406);
      v408 = v885;
      v883[0] = v885;
      v409 = FeedItem.Kind.description.getter();
      v411 = v410;
      sub_1D5BF6680(v408, *(&v408 + 1));
      sub_1D6C2BAF0(v409, v411);

      sub_1D6A7D8EC(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      v412 = swift_allocObject();
      sub_1D69D7B4C(v412, 2);
      v414 = v413;
      *v413 = v84;
      v415 = BYTE8(v916[1]);
      if (BYTE8(v916[1]) == 1)
      {
        v416 = objc_opt_self();
        v417 = v84;
        v418 = [v416 labelColor];
      }

      else
      {
        sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        v419 = v84;
        v418 = sub_1D72635DC();
      }

      v420 = v418;
      sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
      v421 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      v414[1] = v420;
      v422 = *MEMORY[0x1E69DB648];
      v861 = v421;
      v414[4] = v421;
      v414[5] = v422;
      v423 = objc_opt_self();
      v424 = v422;
      v425 = [v423 systemFontOfSize_];
      v414[9] = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
      v414[6] = v425;
      nullsub_1();
      sub_1D5C09CEC(v426);

      v427 = sub_1D6A579CC();
      v428 = v864;
      [v864 appendAttributedString_];

      v429 = v862;
      v430 = [v429 textLabel];
      if (v430)
      {
        v431 = v430;
        [v430 setAttributedText_];
      }

      v432 = [v429 textLabel];
      v433 = v865;
      if (v432)
      {
        v434 = v432;
        [v432 setNumberOfLines_];
      }

      v435 = [v429 detailTextLabel];
      if (v435)
      {
        v436 = v435;
        v437 = *(&v913 + 1);
        v438 = v914;
        __swift_project_boxed_opaque_existential_1(&v912, *(&v913 + 1));
        (*(*(v438 + 8) + 24))(v437);
        if (v439)
        {
          v440 = sub_1D726203C();
        }

        else
        {
          v440 = 0;
        }

        [v436 setText_];
      }

      v471 = [v429 detailTextLabel];
      if (v471)
      {
        v472 = v471;
        v473 = [v423 systemFontOfSize_];
        [v472 setFont_];
      }

      v474 = [v429 detailTextLabel];
      if (v474)
      {
        v475 = v474;
        if (v415)
        {
          v476 = [objc_opt_self() secondaryLabelColor];
        }

        else
        {
          v476 = sub_1D72635DC();
        }

        v477 = v476;
        [v475 setTextColor_];
      }

      v478 = [v429 detailTextLabel];
      if (v478)
      {
        v479 = v478;
        [v478 setNumberOfLines_];
      }

      [v429 setAccessoryType_];
      [v429 setSelectionStyle_];
      v480 = *&v429[qword_1EC8817F8];

      sub_1D6F8CE10(v415 ^ 1);
      v482 = v481;

      [v480 setImage_];

      if ((v415 ^ 1))
      {
        v483 = sub_1D72635DC();
      }

      else
      {
        v483 = [objc_opt_self() lightGrayColor];
      }

      v484 = *&v429[qword_1EC881808];
      *&v429[qword_1EC881808] = v483;

      __swift_project_boxed_opaque_existential_1(&v912, *(&v913 + 1));
      v485 = v429;
      sub_1D725AA4C();
      v486 = sub_1D726203C();

      [v485 setAccessibilityIdentifier_];

      v53 = v485;
      v487 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D6725818(&v912, &v885);
      v488 = swift_allocObject();
      *(v488 + 16) = v487;
      v489 = v888;
      *(v488 + 56) = v887;
      *(v488 + 72) = v489;
      *(v488 + 88) = v889[0];
      *(v488 + 97) = *(v889 + 9);
      v490 = v886;
      *(v488 + 24) = v885;
      *(v488 + 40) = v490;

      sub_1D6F8CE20(&v912, v415 ^ 1, sub_1D6A7DC48, v488);

      sub_1D6725874(&v912);
      sub_1D6A7DB0C(v433, type metadata accessor for FormatInspectionItem);

      return v53;
    case 0x11u:
      v193 = v860;
      sub_1D6A7DAA4(v41, v860, type metadata accessor for FormatInspectionFeedGroupItem);
      sub_1D6A7DA3C(0, &qword_1EC890C38, &unk_1EC890C40, 0x1E69DCAE0, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v194 = sub_1D7262D8C();
      v195 = [v194 textLabel];
      if (v195)
      {
        v196 = v195;
        v864 = sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
        v197 = sub_1D5D50ED0();
        sub_1D6C2BAF0(v197, v198);

        sub_1D6A7D8EC(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
        v199 = swift_allocObject();
        sub_1D69D7B4C(v199, 2);
        v201 = v200;
        v202 = *MEMORY[0x1E69DB650];
        *v200 = *MEMORY[0x1E69DB650];
        v203 = objc_opt_self();
        v204 = v202;
        v205 = [v203 labelColor];
        v206 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        v201[1] = v205;
        v207 = *MEMORY[0x1E69DB648];
        v201[4] = v206;
        v201[5] = v207;
        v208 = objc_opt_self();
        v209 = v207;
        v210 = [v208 systemFontOfSize_];
        v201[9] = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
        v201[6] = v210;
        v193 = v860;
        nullsub_1();
        sub_1D5C09CEC(v211);

        v212 = sub_1D6A579CC();
        [v196 setAttributedText_];
      }

      v213 = [v194 textLabel];
      if (v213)
      {
        v214 = v213;
        [v213 setNumberOfLines_];
      }

      v215 = [v194 detailTextLabel];
      v216 = v865;
      if (v215)
      {
        v217 = v215;
        FeedGroupItem.debugTitle.getter();
        if (v218)
        {
          v219 = sub_1D726203C();
        }

        else
        {
          v219 = 0;
        }

        [v217 setText_];
      }

      v689 = [v194 detailTextLabel];
      if (v689)
      {
        v690 = v689;
        v691 = [objc_opt_self() systemFontOfSize_];
        [v690 setFont_];
      }

      v692 = [v194 detailTextLabel];
      if (v692)
      {
        v693 = v692;
        v694 = [objc_opt_self() secondaryLabelColor];
        [v693 setTextColor_];
      }

      v695 = [v194 detailTextLabel];
      if (v695)
      {
        v696 = v695;
        [v695 setNumberOfLines_];
      }

      [v194 setAccessoryType_];
      [v194 setSelectionStyle_];
      v697 = *&v194[qword_1EC8817F8];

      sub_1D6F8CE10(0);
      v699 = v698;

      [v697 setImage_];

      v700 = [objc_opt_self() lightGrayColor];
      v701 = *&v194[qword_1EC881808];
      *&v194[qword_1EC881808] = v700;

      v53 = v194;
      sub_1D5D50ED0();
      v702 = sub_1D726203C();

      [v53 setAccessibilityIdentifier_];

      v703 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v704 = v859;
      sub_1D6A7D9C0(v193, v859, type metadata accessor for FormatInspectionFeedGroupItem);
      v705 = (*(v857 + 80) + 24) & ~*(v857 + 80);
      v706 = swift_allocObject();
      *(v706 + 16) = v703;
      sub_1D6A7DAA4(v704, v706 + v705, type metadata accessor for FormatInspectionFeedGroupItem);

      sub_1D6F8CFC8(v193, sub_1D6A7DBD4, v706);

      sub_1D6A7DB0C(v193, type metadata accessor for FormatInspectionFeedGroupItem);
      sub_1D6A7DB0C(v216, type metadata accessor for FormatInspectionItem);

      return v53;
    case 0x12u:
      v234 = *(v41 + 1);
      v912 = *v41;
      v913 = v234;
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v235 = [v53 textLabel];
      v93 = v865;
      if (v235)
      {
        v236 = v235;
        if (*(v865 + 1))
        {
          v237 = sub_1D726203C();
        }

        else
        {
          v237 = 0;
        }

        [v236 setText_];
      }

      v737 = [v53 textLabel];
      if (v737)
      {
        v738 = v737;
        v739 = [objc_opt_self() systemFontOfSize_];
        [v738 setFont_];
      }

      v740 = [v53 textLabel];
      if (v740)
      {
        v741 = v740;
        v742 = [objc_opt_self() labelColor];
        [v741 setTextColor_];
      }

      v743 = [v53 detailTextLabel];
      if (v743)
      {
        v744 = v743;
        *&v885 = 0;
        *(&v885 + 1) = 0xE000000000000000;
        MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
        sub_1D5DF5424(&v912);
        MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
        v745 = sub_1D726203C();

        [v744 setText_];
      }

      v746 = [v53 detailTextLabel];
      if (v746)
      {
        v747 = v746;
        v748 = [objc_opt_self() systemFontOfSize_];
        [v747 setFont_];
      }

      v749 = [v53 detailTextLabel];
      if (v749)
      {
        v750 = v749;
        v751 = [objc_opt_self() secondaryLabelColor];
        [v750 setTextColor_];
      }

      v752 = [v53 detailTextLabel];
      if (v752)
      {
        v753 = v752;
        [v752 setNumberOfLines_];
      }

      [v53 setAccessoryType_];
      [v53 setSelectionStyle_];

      sub_1D5EA756C(&v912);
      goto LABEL_494;
    case 0x13u:
      sub_1D6A7DB0C(v41, type metadata accessor for FormatInspectionItem.Value);
      sub_1D6A7DA3C(0, &qword_1EC890C38, &unk_1EC890C40, 0x1E69DCAE0, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v53 = sub_1D7262D8C();
      v265 = [v53 textLabel];
      v55 = v865;
      if (v265)
      {
        v266 = v265;
        if (*(v865 + 1))
        {
          v267 = sub_1D726203C();
        }

        else
        {
          v267 = 0;
        }

        [v266 setText_];
      }

      v821 = [v53 textLabel];
      if (v821)
      {
        v822 = v821;
        v823 = [objc_opt_self() systemFontOfSize_];
        [v822 setFont_];
      }

      v824 = [v53 detailTextLabel];
      if (v824)
      {
        v825 = v824;
        if (*(v55 + 24))
        {
          v826 = sub_1D726203C();
        }

        else
        {
          v826 = 0;
        }

        [v825 setText_];
      }

      v827 = [v53 detailTextLabel];
      if (v827)
      {
        v828 = v827;
        v829 = [objc_opt_self() systemFontOfSize_];
        [v828 setFont_];
      }

      v763 = [v53 detailTextLabel];
      if (v763)
      {
LABEL_561:
        v830 = v763;
        v831 = [objc_opt_self() secondaryLabelColor];
        [v830 setTextColor_];
      }

LABEL_562:
      [*&v53[qword_1EC8817F8] setImage_];
      goto LABEL_563;
    case 0x14u:
      v221 = *v41;
      v220 = *(v41 + 1);
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v222 = [v53 textLabel];
      v118 = v865;
      if (v222)
      {
        v223 = v222;
        if (*(v865 + 1))
        {
          v224 = sub_1D726203C();
        }

        else
        {
          v224 = 0;
        }

        [v223 setText_];
      }

      v707 = [v53 textLabel];
      if (v707)
      {
        v708 = v707;
        v709 = [objc_opt_self() systemFontOfSize_];
        [v708 setFont_];
      }

      v710 = [v53 detailTextLabel];
      if (v710)
      {
        v711 = v710;
        if (*(v118 + 24))
        {
          v712 = sub_1D726203C();
        }

        else
        {
          v712 = 0;
        }

        [v711 setText_];
      }

      v713 = [v53 detailTextLabel];
      if (v713)
      {
        v714 = v713;
        v715 = [objc_opt_self() secondaryLabelColor];
        [v714 setTextColor_];
      }

      v716 = [v53 detailTextLabel];
      if (v716)
      {
        v717 = v716;
        v718 = [objc_opt_self() systemFontOfSize_];
        [v717 setFont_];
      }

      v719 = [v53 detailTextLabel];
      if (v719)
      {
        v720 = v719;
        [v719 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];
      [v53 setTintColor_];
      v721 = [v53 imageView];
      if (v721)
      {
        v722 = v721;
        [v721 setImage_];
      }

      [v53 setAccessoryType_];

      goto LABEL_464;
    case 0x15u:
      v225 = *(v41 + 9);
      v917[2] = *(v41 + 8);
      v917[3] = v225;
      LOWORD(v917[4]) = *(v41 + 80);
      v226 = *(v41 + 5);
      v916[0] = *(v41 + 4);
      v916[1] = v226;
      v227 = *(v41 + 6);
      v917[1] = *(v41 + 7);
      v917[0] = v227;
      v228 = *(v41 + 1);
      v912 = *v41;
      v913 = v228;
      v229 = *(v41 + 2);
      v915 = *(v41 + 3);
      v914 = v229;
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v230 = [v53 textLabel];
      v93 = v865;
      if (v230)
      {
        v231 = v230;
        if (*(v865 + 1))
        {
          v232 = sub_1D726203C();
        }

        else
        {
          v232 = 0;
        }

        [v231 setText_];
      }

      v723 = [v53 textLabel];
      if (v723)
      {
        v724 = v723;
        v725 = [objc_opt_self() systemFontOfSize_];
        [v724 setFont_];
      }

      v726 = [v53 detailTextLabel];
      if (v726)
      {
        v727 = v726;
        v892 = v917[2];
        v893 = v917[3];
        LOWORD(v894) = v917[4];
        v889[0] = v916[0];
        v889[1] = v916[1];
        v890 = v917[0];
        v891 = v917[1];
        v885 = v912;
        v886 = v913;
        v887 = v914;
        v888 = v915;
        sub_1D6F3971C();
        v728 = sub_1D726203C();

        [v727 setText_];
      }

      v729 = [v53 detailTextLabel];
      if (v729)
      {
        v730 = v729;
        v731 = [objc_opt_self() systemFontOfSize_];
        [v730 setFont_];
      }

      v732 = [v53 detailTextLabel];
      if (v732)
      {
        v733 = v732;
        v734 = [objc_opt_self() secondaryLabelColor];
        [v733 setTextColor_];
      }

      v735 = [v53 detailTextLabel];
      if (v735)
      {
        v736 = v735;
        [v735 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];

      sub_1D60113F8(&v912);
      goto LABEL_494;
    case 0x16u:
      v260 = *v41;
      sub_1D6A7DA3C(0, &qword_1EC890C38, &unk_1EC890C40, 0x1E69DCAE0, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v53 = sub_1D7262D8C();
      v261 = [v53 textLabel];
      v262 = v865;
      if (v261)
      {
        v263 = v261;
        if (*(v865 + 1))
        {
          v264 = sub_1D726203C();
        }

        else
        {
          v264 = 0;
        }

        [v263 setText_];
      }

      v784 = [v53 textLabel];
      if (v784)
      {
        v785 = v784;
        v786 = [objc_opt_self() systemFontOfSize_];
        [v785 setFont_];
      }

      v787 = [v53 detailTextLabel];
      if (v787)
      {
        v788 = v787;
        v789 = [objc_opt_self() secondaryLabelColor];
        [v788 setTextColor_];
      }

      v790 = [v53 detailTextLabel];
      if (v790)
      {
        v791 = v790;
        v792 = [objc_opt_self() systemFontOfSize_];
        [v791 setFont_];
      }

      v793 = [v53 detailTextLabel];
      if (v793)
      {
        v794 = v793;
        [v793 setNumberOfLines_];
      }

      v795 = [v53 detailTextLabel];
      if (v795)
      {
        v796 = v795;
        [v795 setText_];
      }

      v53[qword_1EC881800] = 0;
      [v53 setSelectionStyle_];
      [v53 setAccessoryType_];
      v797 = qword_1EC8817F8;
      v798 = *&v53[qword_1EC8817F8];
      sub_1D5B5A498(0, &qword_1EDF1A690, 0x1E69DCAB8);
      v799 = v798;
      v800 = sub_1D67CDDE8();
      [v799 setImage_];

      if (!*(*(v863 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandSource))
      {
        goto LABEL_546;
      }

      v864 = v53;

      swift_unknownObjectRetain();
      v863 = v260;
      v801 = sub_1D68C6294();
      swift_unknownObjectRelease();
      if ((v801 & 1) == 0)
      {

        v53 = v864;
LABEL_546:
        v815 = *&v53[v797];
        sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        v816 = v815;
        v817 = sub_1D72635DC();
        [v816 setTintColor_];

        v818 = [v53 textLabel];
        if (v818)
        {
          v819 = v818;
          v820 = sub_1D72635DC();
          [v819 setTextColor_];
        }

        else
        {
        }

        goto LABEL_576;
      }

      v802 = v864;
      v803 = *&v864[v797];
      v804 = objc_opt_self();
      v805 = v803;
      v806 = [v804 systemBlueColor];
      [v805 setTintColor_];

      v807 = [v802 &selRef_setStrokeColor_];
      if (v807)
      {
        v808 = v807;
        v809 = [v804 labelColor];
        [v808 setTextColor_];
      }

      v262 = v865;
      if (*(v863 + 32) != 1)
      {

        v53 = v864;
LABEL_576:

        v68 = type metadata accessor for FormatInspectionItem;
        v69 = v262;
        goto LABEL_17;
      }

      v810 = [v864 detailTextLabel];
      if (v810)
      {
        v811 = v810;
        swift_unknownObjectRetain();
        v812 = v848;
        sub_1D68C6214();
        swift_unknownObjectRelease();
        v813 = sub_1D725D38C();
        v814 = *(v813 - 8);
        if ((*(v814 + 48))(v812, 1, v813) == 1)
        {
          sub_1D6A7DB74(v812, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D6A7D8EC);
        }

        else
        {
          sub_1D725D37C();
          v262 = v865;
          (*(v814 + 8))(v812, v813);
        }

        v844 = sub_1D726203C();

        [v811 setText_];
      }

      swift_allocObject();
      v53 = v864;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRetain();

      sub_1D68C623C();
      swift_unknownObjectRelease();

      sub_1D6A7DC54(&v912, &v885, &qword_1EDF3BE98, &qword_1EDF3BEA0, MEMORY[0x1E69D6360], sub_1D5BFB8A8);
      if (*(&v886 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v885, *(&v886 + 1));
        v845 = *&v53[qword_1EC881810];
        sub_1D725A72C();

        swift_unknownObjectRelease();

        sub_1D6A7DB74(&v912, &qword_1EDF3BE98, &qword_1EDF3BEA0, MEMORY[0x1E69D6360], sub_1D5BFB8A8);
        sub_1D6A7DB0C(v262, type metadata accessor for FormatInspectionItem);
        __swift_destroy_boxed_opaque_existential_1(&v885);
      }

      else
      {

        v846 = MEMORY[0x1E69D6360];
        sub_1D6A7DB74(&v912, &qword_1EDF3BE98, &qword_1EDF3BEA0, MEMORY[0x1E69D6360], sub_1D5BFB8A8);
        sub_1D6A7DB0C(v262, type metadata accessor for FormatInspectionItem);
        sub_1D6A7DB74(&v885, &qword_1EDF3BE98, &qword_1EDF3BEA0, v846, sub_1D5BFB8A8);
      }

      return v53;
    case 0x17u:
      v268 = *v41;
      LODWORD(v859) = *v41;
      v269 = *(v41 + 1);
      v861 = *(v41 + 2);
      v862 = v269;
      v270 = *(v41 + 4);
      v856 = *(v41 + 3);
      v863 = v270;
      type metadata accessor for SubtitleTableViewCell();
      v864 = sub_1D7262D8C();
      v860 = sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
      sub_1D6CA646C(v268);
      v271 = sub_1D726213C();
      v273 = v272;

      *&v912 = v271;
      *(&v912 + 1) = v273;

      MEMORY[0x1DA6F9910](10, 0xE100000000000000);
      v857 = *(&v912 + 1);
      v858 = v912;

      sub_1D6A7D8EC(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      v274 = swift_allocObject();
      sub_1D69D7B4C(v274, 2);
      v276 = v275;
      v277 = *MEMORY[0x1E69DB648];
      *v275 = *MEMORY[0x1E69DB648];
      v278 = objc_opt_self();
      v279 = *MEMORY[0x1E69DB980];
      v280 = v277;
      v281 = [v278 systemFontOfSize:8.0 weight:v279];
      v282 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
      v276[1] = v281;
      v283 = *MEMORY[0x1E69DB650];
      v276[4] = v282;
      v276[5] = v283;
      v284 = v283;
      v285 = sub_1D6CA64A0(v859);
      v286 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      v276[9] = v286;
      v276[6] = v285;
      nullsub_1();
      sub_1D5C09CEC(v287);

      v288 = sub_1D6A579CC();
      v289 = swift_allocObject();
      sub_1D69D7B4C(v289, 2);
      v291 = v290;
      *v290 = v280;

      v859 = v278;
      v291[1] = [v278 systemFontOfSize_];
      v291[4] = v282;
      v291[5] = v284;
      v292 = objc_opt_self();
      v293 = [v292 labelColor];
      v291[9] = v286;
      v291[6] = v293;
      nullsub_1();
      sub_1D5C09CEC(v294);

      v295 = sub_1D6A579CC();
      [v288 appendAttributedString_];

      v53 = v864;
      v296 = [v53 textLabel];
      if (v296)
      {
        v297 = v296;
        [v296 setAttributedText_];
      }

      v298 = [v53 textLabel];
      if (v298)
      {
        v299 = v298;
        [v298 setNumberOfLines_];
      }

      v300 = [v53 detailTextLabel];
      v118 = v865;
      if (v300)
      {
        v301 = v300;
        v302 = sub_1D726203C();

        [v301 setText_];
      }

      else
      {
      }

      v379 = [v53 detailTextLabel];
      if (v379)
      {
        v380 = v379;
        v381 = [v859 systemFontOfSize_];
        [v380 setFont_];
      }

      v382 = [v53 detailTextLabel];
      if (v382)
      {
        v383 = v382;
        v384 = [v292 secondaryLabelColor];
        [v383 setTextColor_];
      }

      v385 = [v53 detailTextLabel];
      if (v385)
      {
        v386 = v385;
        [v385 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];
      [v53 setAccessoryType_];

      goto LABEL_464;
    case 0x18u:
      sub_1D6A7DAA4(v41, v862, type metadata accessor for FormatPropertyDefinition);
      type metadata accessor for SubtitleTableViewCell();
      v864 = sub_1D7262D8C();
      *&v885 = MEMORY[0x1E69E7CC0];
      if (sub_1D695C4AC())
      {
        sub_1D70E6BD0(0x4445524955514552, 0xE800000000000000);
      }

      if (sub_1D695B3BC())
      {
        sub_1D70E6BD0(0x5441434552504544, 0xEA00000000004445);
      }

      v163 = sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
      v164 = sub_1D67DBDF8();
      v165 = v885;
      v166 = sub_1D5F64C48(v885);
      v863 = v163;
      if (!v166)
      {
        *&v912 = 0;
        *(&v912 + 1) = 0xE000000000000000;
        MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
        *&v883[0] = v165;
        sub_1D5B66F94(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        sub_1D7261F3C();

        sub_1D6985100();
      }

      v167 = *MEMORY[0x1E69DB648];
      v168 = *MEMORY[0x1E69DB650];
      v169 = v164;
      FormatPropertyDefinition.identifier.getter();
      sub_1D6A7D8EC(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      v329 = swift_allocObject();
      sub_1D69D7B4C(v329, 2);
      v331 = v330;
      *v330 = v167;
      v332 = objc_opt_self();
      v333 = v167;
      v861 = v332;
      v334 = [v332 systemFontOfSize_];
      v335 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
      v331[1] = v334;
      v331[4] = v335;
      v331[5] = v168;
      v336 = objc_opt_self();
      v337 = v168;
      v338 = [v336 labelColor];
      v331[9] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      v331[6] = v338;
      nullsub_1();
      sub_1D5C09CEC(v339);

      v340 = sub_1D6A579CC();
      [v169 appendAttributedString_];

      v53 = v864;
      v341 = [v53 textLabel];
      if (v341)
      {
        v342 = v341;
        [v341 setAttributedText_];
      }

      v343 = v169;
      v344 = [v53 textLabel];
      v118 = v865;
      if (v344)
      {
        v345 = v344;
        [v344 setNumberOfLines_];
      }

      v346 = [v53 detailTextLabel];
      v347 = v862;
      if (v346)
      {
        v348 = v346;
        FormatPropertyDefinition.description.getter();
        v349 = sub_1D726203C();

        [v348 setText_];
      }

      v350 = [v53 detailTextLabel];
      if (v350)
      {
        v351 = v350;
        v352 = [v861 systemFontOfSize_];
        [v351 setFont_];
      }

      v353 = [v53 detailTextLabel];
      if (v353)
      {
        v354 = v353;
        v355 = [v336 secondaryLabelColor];
        [v354 setTextColor_];
      }

      v356 = [v53 detailTextLabel];
      if (v356)
      {
        v357 = v356;
        [v356 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];
      [v53 setAccessoryType_];

      sub_1D6A7DB0C(v347, type metadata accessor for FormatPropertyDefinition);
      goto LABEL_465;
    case 0x19u:
      v162 = *v41;
      type metadata accessor for DebugFormatInspectorResizingCell();
      v53 = sub_1D7262D8C();
      *&v912 = v162;

      sub_1D5F4368C(&v912);
      goto LABEL_60;
    case 0x1Au:
      type metadata accessor for KeyValueTableViewCell();
      v324 = sub_1D7262D8C();
      v325 = [v324 textLabel];
      v326 = v865;
      if (v325)
      {
        v327 = v325;
        if (*(v865 + 1))
        {
          v328 = sub_1D726203C();
        }

        else
        {
          v328 = 0;
        }

        [v327 setText_];
      }

      v832 = [v324 textLabel];
      if (v832)
      {
        v833 = v832;
        v834 = [objc_opt_self() systemFontOfSize_];
        [v833 setFont_];
      }

      v835 = [v324 detailTextLabel];
      if (v835)
      {
        v836 = v835;
        v837 = sub_1D726203C();
        [v836 setText_];
      }

      v838 = [v324 detailTextLabel];
      if (v838)
      {
        v839 = v838;
        v840 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB958]];
        [v839 setFont_];
      }

      v841 = [v324 detailTextLabel];
      if (v841)
      {
        v842 = v841;
        v843 = [objc_opt_self() systemBlueColor];
        [v842 setTextColor_];
      }

      [v324 setSelectionStyle_];

      sub_1D6A7DB0C(v326, type metadata accessor for FormatInspectionItem);
      v68 = type metadata accessor for FormatInspectionItem.Value;
      v69 = v41;
      v53 = v324;
      goto LABEL_17;
    case 0x1Bu:
      v71 = *v41;
      type metadata accessor for DebugFormatInspectorCursorCell();
      v53 = sub_1D7262D8C();
      *&v53[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_cursor] = v71;
      swift_retain_n();

      [v53 setNeedsLayout];
      [v53 layoutIfNeeded];

LABEL_60:
      [v53 setSelectionStyle_];

LABEL_129:
      v68 = type metadata accessor for FormatInspectionItem;
      v69 = v865;
      goto LABEL_17;
    case 0x1Cu:
      v304 = *v41;
      v303 = *(v41 + 1);
      v305 = *(v41 + 2);
      v306 = *(v41 + 3);
      sub_1D6A9DB0C();
      v917[4] = v908;
      v917[5] = v909;
      v917[6] = v910;
      v918 = v911;
      v917[0] = v904;
      v917[1] = v905;
      v917[2] = v906;
      v917[3] = v907;
      v914 = v900;
      v915 = v901;
      v916[0] = v902;
      v916[1] = v903;
      v912 = v898;
      v913 = v899;
      if (sub_1D5DEA380(&v912) == 1)
      {
        v895 = v909;
        v896 = v910;
        v897 = v911;
        v890 = v904;
        v891 = v905;
        v892 = v906;
        v893 = v907;
        v894 = v908;
        v887 = v900;
        v888 = v901;
        v889[0] = v902;
        v889[1] = v903;
        v885 = v898;
        v886 = v899;
        sub_1D6A7D950(&v885, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        v307 = 0;
      }

      else
      {
        v883[10] = v908;
        v883[11] = v909;
        v883[12] = v910;
        v883[6] = v904;
        v883[7] = v905;
        v883[8] = v906;
        v883[9] = v907;
        v883[2] = v900;
        v883[3] = v901;
        v883[4] = v902;
        v883[5] = v903;
        v883[0] = v898;
        v883[1] = v899;
        v877 = v908;
        v878 = v909;
        v879 = v910;
        v873 = v904;
        v874 = v905;
        v875 = v906;
        v876 = v907;
        v869 = v900;
        v870 = v901;
        v871 = v902;
        v872 = v903;
        v867 = v898;
        v868 = v899;
        v881[10] = v908;
        v881[11] = v909;
        v881[12] = v910;
        v881[6] = v904;
        v881[7] = v905;
        v881[8] = v906;
        v881[9] = v907;
        v881[2] = v900;
        v881[3] = v901;
        v881[4] = v902;
        v881[5] = v903;
        v884 = v911;
        v880 = v911;
        v882 = v911;
        v881[0] = v898;
        v881[1] = v899;
        sub_1D5F2B0D8(v883, &v885);
        sub_1D6A7D950(v881, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        v866[0] = v304;
        v866[1] = v303;
        v866[2] = v305;
        v866[3] = v306;

        sub_1D6C56E68(v866);
        v307 = v358;

        v895 = v878;
        v896 = v879;
        v897 = v880;
        v890 = v873;
        v891 = v874;
        v892 = v875;
        v893 = v876;
        v894 = v877;
        v887 = v869;
        v888 = v870;
        v889[0] = v871;
        v889[1] = v872;
        v885 = v867;
        v886 = v868;
        sub_1D5F2B134(&v885);
      }

      type metadata accessor for KeyValueTableViewCell();
      v359 = sub_1D7262D8C();
      v360 = [v359 textLabel];
      if (v360)
      {
        v361 = v360;
        *&v885 = v304;
        *(&v885 + 1) = v303;
        *&v886 = v305;
        *(&v886 + 1) = v306;

        sub_1D7084F68();
        v362 = sub_1D726203C();

        [v361 setText_];
      }

      v363 = [v359 textLabel];
      v73 = v865;
      if (v363)
      {
        v364 = v363;
        v365 = [objc_opt_self() systemFontOfSize_];
        [v364 setFont_];
      }

      v366 = [v359 textLabel];
      if (v366)
      {
        v367 = v366;
        if (v307)
        {
          v368 = [objc_opt_self() labelColor];
        }

        else
        {
          sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
          v368 = sub_1D72635DC();
        }

        v441 = v368;
        [v367 setTextColor_];
      }

      v53 = v359;
      v442 = [v359 textLabel];
      if (v442)
      {
        v443 = v442;
        [v442 setNumberOfLines_];
      }

      v444 = [v359 detailTextLabel];
      if (v444)
      {
        v445 = v444;
        *&v885 = 0;
        *(&v885 + 1) = 0xE000000000000000;
        MEMORY[0x1DA6FBD10](0, 0xE000000000000000);

        v446 = sub_1D609C924();
        MEMORY[0x1DA6FBD10](0, 0xE000000000000000, v446);
        v447 = sub_1D726203C();

        [v445 setText_];
      }

      else
      {
      }

      v448 = [v359 detailTextLabel];
      if (v448)
      {
        v449 = v448;
        if (v307)
        {
          v450 = [objc_opt_self() secondaryLabelColor];
        }

        else
        {
          sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
          v450 = sub_1D72635DC();
        }

        v451 = v450;
        [v449 setTextColor_];
      }

      v452 = [v359 detailTextLabel];
      if (v452)
      {
        v453 = v452;
        v454 = [objc_opt_self() systemFontOfSize_];
        [v453 setFont_];
      }

      v455 = [v359 detailTextLabel];
      if (v455)
      {
        v456 = v455;
        [v455 setNumberOfLines_];
      }

      [v359 setAccessoryType_];
      goto LABEL_366;
    case 0x1Du:
      v308 = *v41;
      type metadata accessor for SubtitleTableViewCell();
      v309 = sub_1D7262D8C();
      v310 = [v309 textLabel];
      if (v310)
      {
        v311 = v310;
        [v310 setNumberOfLines_];
      }

      v312 = [v309 textLabel];
      if (v312)
      {
        v313 = v312;
        v314 = [objc_opt_self() systemFontOfSize_];
        [v313 setFont_];
      }

      v315 = [v309 textLabel];
      if (v315)
      {
        v316 = v315;
        v317 = [objc_opt_self() labelColor];
        [v316 setTextColor_];
      }

      v318 = [v309 detailTextLabel];
      if (v318)
      {
        v319 = v318;
        [v318 setText_];
      }

      [v309 setAccessoryType_];
      v320 = objc_opt_self();
      v321 = v309;
      v863 = v320;
      v864 = v321;
      v322 = [v320 secondaryLabelColor];
      [v321 setTintColor_];

      sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
      v859 = sub_1D67DBDF8();
      v858 = sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
      *&v912 = 0;
      *(&v912 + 1) = 0xE000000000000000;
      MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
      v862 = v308;
      *&v885 = *(v308 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame);
      v323 = sub_1D6E7A824();
      sub_1D6E7A844(v323);
      sub_1D726213C();

      sub_1D6985100();
    case 0x1Eu:
      v241 = *v41;
      type metadata accessor for SubtitleTableViewCell();
      v242 = sub_1D7262D8C();
      v243 = [v242 textLabel];
      if (v243)
      {
        v244 = v243;
        [v243 setNumberOfLines_];
      }

      v245 = [v242 textLabel];
      if (v245)
      {
        v246 = v245;
        v247 = [objc_opt_self() systemFontOfSize_];
        [v246 setFont_];
      }

      v248 = [v242 textLabel];
      if (v248)
      {
        v249 = v248;
        v250 = [objc_opt_self() labelColor];
        [v249 setTextColor_];
      }

      [v242 setAccessoryType_];
      v251 = objc_opt_self();
      v252 = v242;
      v863 = v251;
      v864 = v252;
      v253 = [v251 secondaryLabelColor];
      [v252 setTintColor_];

      sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
      v860 = sub_1D67DBDF8();
      v859 = sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
      *&v912 = 0;
      *(&v912 + 1) = 0xE000000000000000;
      MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
      v254 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_workspaceFrame;
      v255 = v241 + v254 + *(type metadata accessor for FormatDebuggerWorkspaceStackFrame(0) + 20);
      v861 = v241;
      v862 = v255;
      LOBYTE(v885) = *(*(*&v255[*(type metadata accessor for DebugFormatEditorWorkspaceGroup(0) + 24)] + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      FormatPackageRole.rawValue.getter();
      sub_1D726213C();

      sub_1D6985100();
    case 0x1Fu:
      sub_1D6A7DB0C(v41, type metadata accessor for FormatInspectionItem.Value);
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v190 = [v53 textLabel];
      v55 = v865;
      if (v190)
      {
        v191 = v190;
        if (*(v865 + 1))
        {
          v192 = sub_1D726203C();
        }

        else
        {
          v192 = 0;
        }

        [v191 setText_];
      }

      v672 = [v53 textLabel];
      if (v672)
      {
        v673 = v672;
        v674 = [objc_opt_self() systemFontOfSize_];
        [v673 setFont_];
      }

      v675 = [v53 textLabel];
      if (v675)
      {
        v676 = v675;
        v677 = [objc_opt_self() labelColor];
        [v676 setTextColor_];
      }

      v678 = [v53 detailTextLabel];
      if (v678)
      {
        v679 = v678;
        if (*(v55 + 24))
        {
          v680 = sub_1D726203C();
        }

        else
        {
          v680 = 0;
        }

        [v679 setText_];
      }

      v681 = [v53 detailTextLabel];
      if (v681)
      {
        v682 = v681;
        v683 = [objc_opt_self() systemFontOfSize_];
        [v682 setFont_];
      }

      v684 = [v53 detailTextLabel];
      if (v684)
      {
        v685 = v684;
        v686 = [objc_opt_self() secondaryLabelColor];
        [v685 setTextColor_];
      }

LABEL_434:
      v687 = [v53 detailTextLabel];
      if (v687)
      {
        v688 = v687;
        [v687 setNumberOfLines_];
      }

      [v53 setAccessoryType_];
LABEL_563:
      [v53 setSelectionStyle_];

      goto LABEL_16;
    case 0x20u:
      v256 = *v41;
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v257 = [v53 textLabel];
      v118 = v865;
      if (v257)
      {
        v258 = v257;
        if (*(v865 + 1))
        {
          v259 = sub_1D726203C();
        }

        else
        {
          v259 = 0;
        }

        [v258 setText_];
      }

      v764 = [v53 textLabel];
      if (v764)
      {
        v765 = v764;
        v766 = [objc_opt_self() systemFontOfSize_];
        [v765 setFont_];
      }

      *&v883[0] = v256;
      v767 = v256;
      sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
      sub_1D5B49474(0, &qword_1EC890C50, &protocol descriptor for FormatError);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v885, &v912);
        v768 = [v53 detailTextLabel];
        if (v768)
        {
          v769 = v768;
          v770 = *(&v913 + 1);
          v771 = v914;
          __swift_project_boxed_opaque_existential_1(&v912, *(&v913 + 1));
          (*(v771 + 16))(v770, v771);
          v772 = sub_1D726203C();

          [v769 setText_];
        }

        __swift_destroy_boxed_opaque_existential_1(&v912);
      }

      else
      {
        *&v887 = 0;
        v885 = 0u;
        v886 = 0u;
        sub_1D6A7DB74(&v885, &qword_1EC89C7A0, &qword_1EC890C50, &protocol descriptor for FormatError, sub_1D5BFB8A8);
        v773 = [v53 detailTextLabel];
        if (v773)
        {
          v774 = v773;
          *&v912 = 0;
          *(&v912 + 1) = 0xE000000000000000;
          MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
          sub_1D5DF5448(v256);
          MEMORY[0x1DA6FBD10](0, 0xE000000000000000);
          v775 = sub_1D726203C();

          [v774 setText_];
        }
      }

      v776 = [v53 detailTextLabel];
      if (v776)
      {
        v777 = v776;
        v778 = [objc_opt_self() secondaryLabelColor];
        [v777 setTextColor_];
      }

      v779 = [v53 detailTextLabel];
      if (v779)
      {
        v780 = v779;
        v781 = [objc_opt_self() systemFontOfSize_];
        [v780 setFont_];
      }

      v782 = [v53 detailTextLabel];
      if (v782)
      {
        v783 = v782;
        [v782 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];
      [v53 setAccessoryType_];

      goto LABEL_465;
    case 0x21u:
      v91 = *v41;
      sub_1D6A7DA3C(0, &qword_1EC890C38, &unk_1EC890C40, 0x1E69DCAE0, type metadata accessor for DebugFormatInspectorAccessoryCell);
      v53 = sub_1D7262D8C();
      v92 = [v53 textLabel];
      v93 = v865;
      if (v92)
      {
        v94 = v92;
        if (*(v865 + 1))
        {
          v95 = sub_1D726203C();
        }

        else
        {
          v95 = 0;
        }

        [v94 setText_];
      }

      v506 = [v53 textLabel];
      if (v506)
      {
        v507 = v506;
        v508 = [objc_opt_self() systemFontOfSize_];
        [v507 setFont_];
      }

      v509 = [v53 textLabel];
      if (v509)
      {
        v510 = v509;
        v511 = [objc_opt_self() labelColor];
        [v510 setTextColor_];
      }

      v512 = [v53 detailTextLabel];
      if (v512)
      {
        v513 = v512;
        v514 = [objc_opt_self() secondaryLabelColor];
        [v513 setTextColor_];
      }

      v515 = [v53 detailTextLabel];
      if (v515)
      {
        v516 = v515;
        v517 = [objc_opt_self() systemFontOfSize_];
        [v516 setFont_];
      }

      v518 = [v53 detailTextLabel];
      if (v518)
      {
        v519 = v518;
        [v518 setNumberOfLines_];
      }

      v520 = [v53 detailTextLabel];
      if (v520)
      {
        v521 = v520;
        if (*(v93 + 24))
        {
          v522 = sub_1D726203C();
        }

        else
        {
          v522 = 0;
        }

        [v521 setText_];
      }

      v53[qword_1EC881800] = 0;
      [v53 setSelectionStyle_];
      [v53 setAccessoryType_];
      v523 = qword_1EC8817F8;
      v524 = *&v53[qword_1EC8817F8];
      sub_1D5B5A498(0, &qword_1EDF1A690, 0x1E69DCAB8);
      v525 = v524;
      v526 = sub_1D67CDDE8();
      [v525 setImage_];

      v527 = *&v53[v523];
      v528 = [objc_opt_self() systemBlueColor];
      [v527 setTintColor_];

LABEL_494:
      v68 = type metadata accessor for FormatInspectionItem;
      v69 = v93;
      goto LABEL_17;
    case 0x22u:
      type metadata accessor for KeyValueTableViewCell();
      v53 = sub_1D7262D8C();
      v72 = [v53 textLabel];
      v73 = v865;
      if (v72)
      {
        v74 = v72;
        if (*(v865 + 1))
        {
          v75 = sub_1D726203C();
        }

        else
        {
          v75 = 0;
        }

        [v74 setText_];
      }

      v457 = [v53 textLabel];
      if (v457)
      {
        v458 = v457;
        v459 = [objc_opt_self() systemFontOfSize_];
        [v458 setFont_];
      }

      v460 = [v53 detailTextLabel];
      if (v460)
      {
        v461 = v460;
        v462 = sub_1D726203C();
        [v461 setText_];
      }

      v463 = [v53 detailTextLabel];
      if (v463)
      {
        v464 = v463;
        v465 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB958]];
        [v464 setFont_];
      }

      v466 = [v53 detailTextLabel];
      if (v466)
      {
        v467 = v466;
        v468 = [objc_opt_self() systemRedColor];
        [v467 setTextColor_];
      }

      v469 = [v53 detailTextLabel];
      if (v469)
      {
        v470 = v469;
        [v469 setNumberOfLines_];
      }

      [v53 setSelectionStyle_];
LABEL_366:

      v68 = type metadata accessor for FormatInspectionItem;
      v69 = v73;
      goto LABEL_17;
    default:
      v58 = *(v41 + 1);
      v863 = *v41;
      type metadata accessor for SubtitleTableViewCell();
      v53 = sub_1D7262D8C();
      v59 = [v53 textLabel];
      if (v59)
      {
        v60 = v59;
        if (*(v865 + 1))
        {
          v61 = sub_1D726203C();
        }

        else
        {
          v61 = 0;
        }

        [v60 setText_];
      }

      v369 = [v53 textLabel];
      if (v369)
      {
        v370 = v369;
        [v369 setNumberOfLines_];
      }

      v371 = [v53 textLabel];
      if (v371)
      {
        v372 = v371;
        v373 = [objc_opt_self() systemFontOfSize_];
        [v372 setFont_];
      }

      v118 = v865;
      v374 = v861;
      sub_1D6A7DC54(&v865[v50], v861, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      if (v52(v374, 1, v51) == 1)
      {
        sub_1D6A7DB74(v374, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_1D6A7DB0C(v374, type metadata accessor for FormatInspectionItem.Value);
        if (!EnumCaseMultiPayload)
        {
          v387 = [v53 detailTextLabel];
          if (v387)
          {
            v388 = v387;
            sub_1D6C2BAF0(v863, v58);

            v389 = sub_1D726203C();

            [v388 setText_];

            goto LABEL_178;
          }

LABEL_177:

LABEL_178:
          v390 = [v53 detailTextLabel];
          if (v390)
          {
            v391 = v390;
            v392 = [objc_opt_self() systemFontOfSize_];
            [v391 setFont_];
          }

          v393 = [v53 detailTextLabel];
          if (v393)
          {
            v394 = v393;
            v395 = [objc_opt_self() secondaryLabelColor];
            [v394 setTextColor_];
          }

LABEL_323:
          v578 = [v53 detailTextLabel];
          if (v578)
          {
            v579 = v578;
            [v578 setNumberOfLines_];
          }

          [v53 setSelectionStyle_];
          [v53 setAccessoryType_];
LABEL_464:

LABEL_465:
          v68 = type metadata accessor for FormatInspectionItem;
          v69 = v118;
          goto LABEL_17;
        }
      }

      v376 = [v53 detailTextLabel];
      if (v376)
      {
        v377 = v376;
        v378 = sub_1D726203C();

        [v377 setText_];

        goto LABEL_178;
      }

      goto LABEL_177;
  }
}

void sub_1D6A787E0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = [Strong accessibilityIdentifier], v6, v7))
  {
    v8 = sub_1D726207C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v11 = sub_1D725AA4C();
  if (!v10)
  {

    return;
  }

  if (v8 == v11 && v10 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + qword_1EC8817F8);

    [v17 setImage_];
  }
}

void sub_1D6A78968(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = Strong, v5 = [Strong accessibilityIdentifier], v4, !v5))
  {
    sub_1D5D50ED0();
    goto LABEL_11;
  }

  v6 = sub_1D726207C();
  v8 = v7;

  v9 = sub_1D5D50ED0();
  if (!v8)
  {
LABEL_11:

    return;
  }

  if (v6 == v9 && v8 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + qword_1EC8817F8);

    [v15 setImage_];
  }
}

void sub_1D6A78AC4(uint64_t a1, uint64_t a2)
{
  sub_1D6A7D8EC(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong detailTextLabel];

    if (v9)
    {
      sub_1D6A7DC54(a1, v6, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      v10 = sub_1D725D38C();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {
        sub_1D6A7DB74(v6, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      }

      else
      {
        sub_1D725D37C();
        (*(v11 + 8))(v6, v10);
      }

      v12 = sub_1D726203C();

      [v9 setText_];
    }
  }
}

unint64_t sub_1D6A79040@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D6A7D8EC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v20 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups);
  if (result >= *(v20 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = *(v20 + 40 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < *(v21 + 16))
  {
    sub_1D6A7D9C0(v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * result, v18, type metadata accessor for FormatInspectionItem);

    sub_1D6A7DC54(&v18[*(v14 + 24)], v13, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    v22 = type metadata accessor for FormatInspectionItem.Value(0);
    if ((*(*(v22 - 8) + 48))(v13, 1, v22) == 1)
    {
      v23 = type metadata accessor for FormatInspectionItem;
      v24 = v18;
    }

    else
    {
      sub_1D6A7DC54(v13, v9, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        v25 = *v9;
        v26 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_workspaceFrame;
        v27 = *(type metadata accessor for FormatDebuggerWorkspaceStackFrame(0) + 20);
        v28 = (v25 + v26 + v27);
        v29 = (v25 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_selectedWorkspaceFrame + v27);
        if (*v28 == *v29 && v28[1] == v29[1])
        {
          sub_1D6A7DB0C(v18, type metadata accessor for FormatInspectionItem);
        }

        else
        {
          v31 = sub_1D72646CC();
          sub_1D6A7DB0C(v18, type metadata accessor for FormatInspectionItem);

          if ((v31 & 1) == 0)
          {
            v32 = sub_1D7258DBC();
            (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
            return sub_1D6A7DB74(v13, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
          }
        }

LABEL_16:
        v33 = sub_1D7258DBC();
        v34 = *(v33 - 8);
        (*(v34 + 16))(a2, a1, v33);
        (*(v34 + 56))(a2, 0, 1, v33);
        return sub_1D6A7DB74(v13, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      }

      sub_1D6A7DB0C(v18, type metadata accessor for FormatInspectionItem);
      v23 = type metadata accessor for FormatInspectionItem.Value;
      v24 = v9;
    }

    sub_1D6A7DB0C(v24, v23);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D6A79710(void *a1)
{
  v228 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1D6A7D8EC(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v220 = &v220 - v5;
  sub_1D6A7D8EC(0, &unk_1EC890C00, type metadata accessor for FormatInspectionFeedGroupItem, v2);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v225 = &v220 - v8;
  v9 = type metadata accessor for FormatInspectionFeedGroupItem(0);
  v221 = *(v9 - 8);
  v222 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v226 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725F88C();
  v223 = *(v12 - 8);
  v224 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v220 - v18;
  sub_1D6A7D8EC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, v2);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v220 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v220 - v26;
  v28 = type metadata accessor for FormatInspectionItem(0);
  v29 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v28, v30);
  v230 = &v220 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor];

  sub_1D6A9DF10(v33, &v279, 0.0, 0.0, 22.0, 22.0);
  v34 = sub_1D7258DAC();
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v227 = v1;
  v36 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups];
  if (v34 >= *(v36 + 16))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v229 = v27;
  v27 = *(v36 + 40 * v34 + 64);

  v37 = sub_1D7258D9C();
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v37 < *(v27 + 2))
  {
    v38 = &v27[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v37];
    v39 = v230;
    sub_1D6A7D9C0(v38, v230, type metadata accessor for FormatInspectionItem);

    v40 = v229;
    sub_1D6A7DC54(v39 + *(v28 + 6), v229, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    v41 = type metadata accessor for FormatInspectionItem.Value(0);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      sub_1D6A7DB0C(v39, type metadata accessor for FormatInspectionItem);
      sub_1D6202060(&v279);
      return sub_1D6A7DB74(v40, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    }

    sub_1D6A7DC54(v40, v23, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v42 = *v23;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1D7273AE0;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        *&v259 = v42;

        v44 = sub_1D6E09E48(&v268, &v259);
        sub_1D5C84FF4(v259);
        *(v43 + 32) = v44;
        v45 = sub_1D7258D4C();
        v46 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v43, v46);

        sub_1D6202060(&v279);
        goto LABEL_55;
      case 5u:
        v160 = *v23;
        v159 = v23[1];
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_1D7270C10;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        *&v259 = v160;

        v162 = sub_1D6E09E48(&v268, &v259);
        sub_1D5C84FF4(v259);
        *(v161 + 32) = v162;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        *&v259 = v159;

        v163 = sub_1D6E09E48(&v268, &v259);
        sub_1D5C84FF4(v259);
        *(v161 + 40) = v163;
        v164 = sub_1D7258D4C();
        v165 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v161, v165);

        goto LABEL_44;
      case 6u:
        v127 = *(v23 + 1);
        v250 = *v23;
        v251 = v127;
        v128 = *(v23 + 3);
        v252 = *(v23 + 2);
        v253 = v128;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_1D7273AE0;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        v130 = sub_1D6BB7CE4(&v268, &v250);
        v259 = v250;
        v260 = v251;
        v261 = v252;
        v262 = v253;
        sub_1D6A7D950(&v259, &qword_1EC890C30, &type metadata for FormatGradient);
        *(v129 + 32) = v130;
        v131 = sub_1D7258D4C();
        v132 = [v228 cellForRowAtIndexPath_];
        goto LABEL_49;
      case 7u:
        v187 = *(v23 + 5);
        v254 = *(v23 + 4);
        v255 = v187;
        v188 = *(v23 + 7);
        v256 = *(v23 + 6);
        v257[0] = v188;
        v189 = *(v23 + 1);
        v250 = *v23;
        v251 = v189;
        v190 = *(v23 + 3);
        v252 = *(v23 + 2);
        v253 = v190;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_1D7273AE0;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        nullsub_1();
        v235 = v254;
        v236 = v255;
        v237 = v256;
        v238[0] = v257[0];
        v231 = v250;
        v232 = v251;
        v233 = v252;
        v234 = v253;
        v191 = sub_1D6A51104(&v268, &v231);
        v263[0] = v235;
        v263[1] = v236;
        v264 = v237;
        v265 = v238[0];
        v259 = v231;
        v260 = v232;
        v261 = v233;
        v262 = v234;
        sub_1D6A7D950(&v259, &qword_1EC890C28, &type metadata for FormatRadialGradient);
        *(v129 + 32) = v191;
        v131 = sub_1D7258D4C();
        v132 = [v228 cellForRowAtIndexPath_];
LABEL_49:
        v192 = v132;

        sub_1D6A7067C(v129, v192);
        sub_1D6202060(&v279);

        swift_setDeallocating();
        goto LABEL_56;
      case 8u:
        v193 = *v23;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v194 = swift_allocObject();
        *(v194 + 16) = xmmword_1D7273AE0;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        *&v259 = v193;
        sub_1D6086744(v193);
        v195 = sub_1D7100E88(&v268, &v259);
        sub_1D6A7DA28(v259);
        *(v194 + 32) = v195;
        v196 = sub_1D7258D4C();
        v197 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v194, v197);
        sub_1D6086768(v193);
        sub_1D6202060(&v279);

        swift_setDeallocating();
        goto LABEL_56;
      case 9u:
        v133 = *(v23 + 9);
        v257[1] = *(v23 + 8);
        v258[0] = v133;
        *(v258 + 9) = *(v23 + 153);
        v134 = *(v23 + 5);
        v254 = *(v23 + 4);
        v255 = v134;
        v135 = *(v23 + 7);
        v256 = *(v23 + 6);
        v257[0] = v135;
        v136 = *(v23 + 1);
        v250 = *v23;
        v251 = v136;
        v137 = *(v23 + 3);
        v252 = *(v23 + 2);
        v253 = v137;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v138 = swift_allocObject();
        *(v138 + 16) = xmmword_1D7273AE0;
        v246 = v285;
        v247 = v286;
        v248 = v287;
        v249 = v288;
        v242 = v281;
        v243 = v282;
        v244 = v283;
        v245 = v284;
        v240 = v279;
        v241 = v280;
        v139 = *(v23 + 8);
        v140 = *(v23 + 9);
        v141 = *(v23 + 6);
        v265 = *(v23 + 7);
        v266 = v139;
        v267[0] = v140;
        *(v267 + 9) = *(v23 + 153);
        v142 = *(v23 + 5);
        v263[0] = *(v23 + 4);
        v263[1] = v142;
        v264 = v141;
        v143 = *(v23 + 1);
        v259 = *v23;
        v260 = v143;
        v144 = *(v23 + 3);
        v261 = *(v23 + 2);
        v262 = v144;
        nullsub_1();
        v238[1] = v266;
        v239[0] = v267[0];
        *(v239 + 9) = *(v267 + 9);
        v235 = v263[0];
        v236 = v263[1];
        v237 = v264;
        v238[0] = v265;
        v231 = v259;
        v232 = v260;
        v233 = v261;
        v234 = v262;
        sub_1D62B4F54(&v250, &v268);
        v145 = sub_1D60FBD8C(&v240, &v231);
        v275 = v238[0];
        v276 = v238[1];
        v277[0] = v239[0];
        *(v277 + 9) = *(v239 + 9);
        v272 = v235;
        v273 = v236;
        v274 = v237;
        v268 = v231;
        v269 = v232;
        v270 = v233;
        v271 = v234;
        sub_1D6A7D950(&v268, &unk_1EC890C10, &type metadata for FormatSplitBackground);
        *(v138 + 32) = v145;
        v146 = sub_1D7258D4C();
        v106 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v138, v106);
        sub_1D62B4FB0(&v250);
        goto LABEL_38;
      case 0xAu:
        v166 = v23[1];
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v167 = swift_allocObject();
        *(v167 + 16) = xmmword_1D7273AE0;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        *(v167 + 32) = sub_1D6FAFFB8(&v268, v166);
        v168 = sub_1D7258D4C();
        v169 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v167, v169);

        sub_1D6202060(&v279);

        goto LABEL_55;
      case 0xEu:
        v170 = *v23;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v171 = swift_allocObject();
        *(v171 + 16) = xmmword_1D7273AE0;

        *(v171 + 32) = v170;
        v172 = sub_1D7258D4C();
        v165 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v171, v165);
LABEL_44:
        sub_1D6202060(&v279);

        swift_setDeallocating();
        goto LABEL_56;
      case 0xFu:
        v204 = *v23;
        v205 = v23[1];
        v206 = objc_allocWithZone(type metadata accessor for DebugFormatCodeViewController(0));

        v207 = sub_1D69DE650(v204, v205);
        v184 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
        [v227 presentViewController:v184 animated:1 completion:0];
        sub_1D6202060(&v279);

        goto LABEL_53;
      case 0x10u:
        v198 = *(v23 + 3);
        v261 = *(v23 + 2);
        v262 = v198;
        v263[0] = *(v23 + 4);
        *(v263 + 9) = *(v23 + 73);
        v199 = *(v23 + 1);
        v259 = *v23;
        v260 = v199;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        sub_1D6725818(&v259, &v250);
        v200 = sub_1D67F5654(&v268, &v250);
        sub_1D6A7D950(&v250, &qword_1EC890C20, &type metadata for FormatInspectionFeedItem);
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v201 = swift_allocObject();
        *(v201 + 16) = xmmword_1D7273AE0;
        *(v201 + 32) = v200;
        v202 = sub_1D7258D4C();
        v203 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v201, v203);
        sub_1D6202060(&v279);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6725874(&v259);
        goto LABEL_57;
      case 0x11u:
        v87 = v226;
        sub_1D6A7DAA4(v23, v226, type metadata accessor for FormatInspectionFeedGroupItem);
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        v88 = v225;
        sub_1D6A7D9C0(v87, v225, type metadata accessor for FormatInspectionFeedGroupItem);
        (*(v221 + 56))(v88, 0, 1, v222);
        v89 = sub_1D5F2D9BC(&v268, v88);
        sub_1D6A7DB74(v88, &unk_1EC890C00, type metadata accessor for FormatInspectionFeedGroupItem, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1D7273AE0;
        *(v90 + 32) = v89;
        v91 = sub_1D7258D4C();
        v92 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v90, v92);
        sub_1D6202060(&v279);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6A7DB0C(v87, type metadata accessor for FormatInspectionFeedGroupItem);
        goto LABEL_57;
      case 0x13u:
        v147 = *(v23 + 7);
        v264 = *(v23 + 6);
        v265 = v147;
        v266 = *(v23 + 8);
        LOBYTE(v267[0]) = *(v23 + 144);
        v148 = *(v23 + 3);
        v261 = *(v23 + 2);
        v262 = v148;
        v149 = *(v23 + 5);
        v263[0] = *(v23 + 4);
        v263[1] = v149;
        v150 = *(v23 + 1);
        v259 = *v23;
        v260 = v150;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v151 = swift_allocObject();
        *(v151 + 16) = xmmword_1D7273AE0;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        v152 = *(v23 + 11);
        v153 = *(v23 + 15);
        v237 = *(v23 + 13);
        v238[0] = v153;
        *(v238 + 9) = *(v23 + 129);
        v154 = *(v23 + 3);
        v155 = *(v23 + 7);
        v233 = *(v23 + 5);
        v234 = v155;
        v235 = *(v23 + 9);
        v236 = v152;
        v231 = *(v23 + 1);
        v232 = v154;
        sub_1D6A7DC54(&v259 + 8, &v250, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5B66F94);
        v156 = sub_1D6814648(&v268, &v231);
        v255 = v236;
        v256 = v237;
        v257[0] = v238[0];
        *(v257 + 9) = *(v238 + 9);
        v252 = v233;
        v253 = v234;
        v254 = v235;
        v250 = v231;
        v251 = v232;
        sub_1D6A7D950(&v250, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
        *(v151 + 32) = v156;
        v157 = sub_1D7258D4C();
        v158 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v151, v158);
        sub_1D62B4F00(&v259);
        sub_1D6202060(&v279);

        swift_setDeallocating();
        goto LABEL_56;
      case 0x15u:
        v93 = *(v23 + 9);
        v257[1] = *(v23 + 8);
        v258[0] = v93;
        LOWORD(v258[1]) = *(v23 + 80);
        v94 = *(v23 + 5);
        v254 = *(v23 + 4);
        v255 = v94;
        v95 = *(v23 + 7);
        v256 = *(v23 + 6);
        v257[0] = v95;
        v96 = *(v23 + 1);
        v250 = *v23;
        v251 = v96;
        v97 = *(v23 + 3);
        v252 = *(v23 + 2);
        v253 = v97;
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_1D7273AE0;
        v246 = v285;
        v247 = v286;
        v248 = v287;
        v249 = v288;
        v242 = v281;
        v243 = v282;
        v244 = v283;
        v245 = v284;
        v240 = v279;
        v241 = v280;
        v99 = *(v23 + 9);
        v266 = *(v23 + 8);
        v267[0] = v99;
        LOWORD(v267[1]) = *(v23 + 80);
        v100 = *(v23 + 5);
        v263[0] = *(v23 + 4);
        v263[1] = v100;
        v101 = *(v23 + 7);
        v264 = *(v23 + 6);
        v265 = v101;
        v102 = *(v23 + 1);
        v259 = *v23;
        v260 = v102;
        v103 = *(v23 + 3);
        v261 = *(v23 + 2);
        v262 = v103;
        nullsub_1();
        v238[1] = v266;
        v239[0] = v267[0];
        LOWORD(v239[1]) = v267[1];
        v235 = v263[0];
        v236 = v263[1];
        v237 = v264;
        v238[0] = v265;
        v231 = v259;
        v232 = v260;
        v233 = v261;
        v234 = v262;
        sub_1D60864C0(&v250, &v268);
        v104 = sub_1D6F3A098(&v240, &v231);
        v276 = v238[1];
        v277[0] = v239[0];
        LOWORD(v277[1]) = v239[1];
        v272 = v235;
        v273 = v236;
        v274 = v237;
        v275 = v238[0];
        v268 = v231;
        v269 = v232;
        v270 = v233;
        v271 = v234;
        sub_1D6A7D950(&v268, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        *(v98 + 32) = v104;
        v105 = sub_1D7258D4C();
        v106 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v98, v106);
        sub_1D60113F8(&v250);
LABEL_38:
        sub_1D6202060(&v279);

        swift_setDeallocating();
        goto LABEL_56;
      case 0x16u:
        v71 = *v23;
        v72 = sub_1D7258D4C();
        [v228 deselectRowAtIndexPath:v72 animated:1];

        v73 = *(v32 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandSource);
        if (v73)
        {
          v74 = v32 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter;
          v75 = *(v32 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter + 8);
          v76 = *(v71 + 5);

          v77 = swift_unknownObjectRetain();
          v78 = v76(v77, v75, v73);
          swift_unknownObjectRelease();
          v79 = v230;
          if (v78)
          {
            *&v268 = 0;
            *(&v268 + 1) = 0xE000000000000000;
            sub_1D7263D4C();

            *&v268 = 0xD000000000000015;
            *(&v268 + 1) = 0x80000001D73E2290;
            v81 = (*(v71 + 19))(v80);
            MEMORY[0x1DA6F9910](v81);

            v83 = *(&v268 + 1);
            v82 = v268;
            if (qword_1EC87D498 != -1)
            {
              v219 = v268;
              swift_once();
              v82 = v219;
            }

            sub_1D5F5EBA0(2, 0, 0, v82, v83);

            v84 = *(v74 + 8);
            v85 = *(v71 + 7);
            v86 = swift_unknownObjectRetain();
            v85(v86, v84, v73);
            swift_unknownObjectRelease();
            *&v268 = 0;
            *(&v268 + 1) = 0xE000000000000000;
            sub_1D7263D4C();

            *&v268 = 0xD00000000000001ELL;
            *(&v268 + 1) = 0x80000001D73E22E0;
            v217 = (*(v71 + 19))(v216);
            MEMORY[0x1DA6F9910](v217);

            sub_1D5F5EBA0(2, 0, 0, v268, *(&v268 + 1));
            sub_1D6202060(&v279);

            goto LABEL_35;
          }

          sub_1D6A7DB0C(v230, type metadata accessor for FormatInspectionItem);
        }

        else
        {
          sub_1D6A7DB0C(v230, type metadata accessor for FormatInspectionItem);
        }

        sub_1D6202060(&v279);
        goto LABEL_59;
      case 0x1Au:
        v174 = v223;
        v173 = v224;
        (*(v223 + 32))(v19, v23, v224);
        (*(v174 + 16))(v15, v19, v173);
        v175 = objc_allocWithZone(sub_1D725E39C());
        v176 = sub_1D725E38C();
        v177 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
        [v227 presentViewController:v177 animated:1 completion:0];
        sub_1D6202060(&v279);

        (*(v174 + 8))(v19, v173);
        goto LABEL_57;
      case 0x1Cu:
        v179 = *v23;
        v178 = v23[1];
        v181 = v23[2];
        v180 = v23[3];
        v182 = sub_1D7258D4C();
        v183 = [v228 cellForRowAtIndexPath_];

        if (!v183)
        {
          sub_1D6A7DB0C(v230, type metadata accessor for FormatInspectionItem);
          sub_1D6202060(&v279);

          goto LABEL_59;
        }

        *&v268 = v179;
        *(&v268 + 1) = v178;
        *&v269 = v181;
        *(&v269 + 1) = v180;
        v184 = v183;

        v185 = v220;
        sub_1D725B31C();

        v186 = sub_1D6F8B384(v185);
        sub_1D6A7DB74(v185, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, MEMORY[0x1E69E6720], sub_1D6A7D8EC);

        [v184 setSelected_];
        sub_1D6202060(&v279);

LABEL_53:
LABEL_57:
        v125 = type metadata accessor for FormatInspectionItem;
        v126 = v230;
        goto LABEL_58;
      case 0x1Du:
        v214 = *&(*v23)[OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_onSelectBlock];

        v214(v215);

        [v228 reloadData];
        sub_1D6202060(&v279);

        goto LABEL_57;
      case 0x1Fu:
        v208 = *v23;
        v274 = v285;
        v275 = v286;
        v276 = v287;
        *&v277[0] = v288;
        v270 = v281;
        v271 = v282;
        v272 = v283;
        v273 = v284;
        v268 = v279;
        v269 = v280;
        *&v259 = v208;

        v209 = sub_1D5F518FC(&v268, &v259);
        sub_1D5C8500C(v259);
        sub_1D5B66F94(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
        v210 = swift_allocObject();
        *(v210 + 16) = xmmword_1D7273AE0;
        *(v210 + 32) = v209;
        v211 = sub_1D7258D4C();
        v212 = [v228 cellForRowAtIndexPath_];

        sub_1D6A7067C(v210, v212);

        sub_1D6202060(&v279);

LABEL_55:
        swift_setDeallocating();
LABEL_56:
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_57;
      case 0x20u:
        v47 = *v23;
        v48 = sub_1D7258D4C();
        [v228 deselectRowAtIndexPath:v48 animated:0];

        v49 = v47;
        v50 = sub_1D5EE7410(v47);
        v51 = sub_1D5EEAADC(v50);
        v53 = v52;

        v54 = type metadata accessor for DebugFormatErrorViewController();
        v55 = objc_allocWithZone(v54);
        v56 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView;
        v57 = objc_allocWithZone(MEMORY[0x1E69DD020]);

        v58 = v51;

        *&v55[v56] = [v57 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
        v59 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_styler;
        type metadata accessor for DebugFormatStyler();
        v60 = swift_allocObject();
        *(v60 + 16) = 0;
        *&v55[v59] = v60;
        *&v55[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_editor] = v32;
        v61 = &v55[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel];
        *v61 = v51;
        *(v61 + 1) = v53;
        v278.receiver = v55;
        v278.super_class = v54;
        v62 = objc_msgSendSuper2(&v278, sel_initWithNibName_bundle_, 0, 0);
        v63 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
        [v63 setModalPresentationStyle_];
        v64 = [v63 popoverPresentationController];
        if (v64)
        {
          v65 = v64;
          v66 = sub_1D7258D4C();
          v67 = [v228 cellForRowAtIndexPath_];

          [v65 setSourceView_];
        }

        v68 = [v63 popoverPresentationController];
        v69 = v227;
        if (v68)
        {
          v70 = v68;
          [v68 setPermittedArrowDirections_];
        }

        [v63 setPreferredContentSize_];

        [v69 presentViewController:v63 animated:1 completion:0];
        sub_1D6202060(&v279);

        goto LABEL_57;
      case 0x21u:
        v15 = 0xD00000000000001ELL;
        v27 = *v23;
        v107 = sub_1D7258D4C();
        [v228 deselectRowAtIndexPath:v107 animated:1];

        *&v268 = 0;
        *(&v268 + 1) = 0xE000000000000000;
        sub_1D7263D4C();

        *&v268 = 0xD00000000000001ELL;
        *(&v268 + 1) = 0x80000001D73E2250;
        v23 = &selRef_setFillMode_;
        v108 = [v27 attributedName];
        v28 = &selRef_setHyphenationFactor_;
        v109 = [v108 string];

        v110 = sub_1D726207C();
        v112 = v111;

        MEMORY[0x1DA6F9910](v110, v112);

        v32 = *(&v268 + 1);
        v35 = v268;
        if (qword_1EC87D498 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_70;
      default:
        sub_1D6A7DB0C(v230, type metadata accessor for FormatInspectionItem);
        sub_1D6202060(&v279);
        v125 = type metadata accessor for FormatInspectionItem.Value;
        v126 = v23;
        goto LABEL_58;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  v218 = v35;
  swift_once();
  v35 = v218;
LABEL_22:
  v113 = 2;
  sub_1D5F5EBA0(2, 0, 0, v35, v32);

  v114 = [v27 actionHandler];
  v79 = v230;
  if (v114)
  {
    v115 = v114;
    v113 = (*(v114 + 2))(v114, v27);
    _Block_release(v115);
  }

  *&v268 = 0;
  *(&v268 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v268 = v15 - 1;
  *(&v268 + 1) = 0x80000001D73E2270;
  v116 = [v27 v23[236]];
  v117 = [v116 v28[348]];

  v118 = sub_1D726207C();
  v120 = v119;

  MEMORY[0x1DA6F9910](v118, v120);

  MEMORY[0x1DA6F9910](0x746C75736572202CLL, 0xE90000000000003DLL);
  v121 = 1702195828;
  if ((v113 & 1) == 0)
  {
    v121 = 0x65736C6166;
  }

  v122 = 0xE500000000000000;
  if (v113)
  {
    v122 = 0xE400000000000000;
  }

  if (v113 == 2)
  {
    v123 = 0x6E776F6E6B6E75;
  }

  else
  {
    v123 = v121;
  }

  if (v113 == 2)
  {
    v124 = 0xE700000000000000;
  }

  else
  {
    v124 = v122;
  }

  MEMORY[0x1DA6F9910](v123, v124);

  sub_1D5F5EBA0(2, 0, 0, v268, *(&v268 + 1));
  sub_1D6202060(&v279);

LABEL_35:

  v125 = type metadata accessor for FormatInspectionItem;
  v126 = v79;
LABEL_58:
  sub_1D6A7DB0C(v126, v125);
LABEL_59:
  v40 = v229;
  return sub_1D6A7DB74(v40, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
}

id sub_1D6A7BD38(uint64_t a1)
{
  sub_1D6A7D8EC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for FormatInspectionItem(0);
  v11 = a1 + *(v10 + 28);
  v12 = *(v11 + 16);
  if (v12 == 255)
  {
    sub_1D6A7DC54(a1 + *(v10 + 24), v9, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    v30 = type metadata accessor for FormatInspectionItem.Value(0);
    if ((*(*(v30 - 8) + 48))(v9, 1, v30) != 1)
    {
      sub_1D6A7DC54(v9, v5, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        v45 = *v5;
        v32 = *(v5 + 2);
        v31 = *(v5 + 3);
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v45;
        *(v34 + 40) = v32;
        *(v34 + 48) = v31;

        v35 = sub_1D726203C();
        v50 = sub_1D6A7D8AC;
        v51 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = sub_1D6B276E0;
        v49 = &block_descriptor_68;
        v36 = _Block_copy(&aBlock);
        v37 = [objc_opt_self() contextualActionWithStyle:0 title:v35 handler:v36];

        _Block_release(v36);

        v38 = [objc_opt_self() systemRedColor];
        [v37 setBackgroundColor_];

        v39 = sub_1D726203C();
        v40 = [objc_opt_self() systemImageNamed_];

        [v37 setImage_];
        sub_1D5B66F94(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D72816C0;
        *(v41 + 32) = v37;
        sub_1D5B5A498(0, &unk_1EC890BF0, 0x1E69DC8E8);
        v42 = v37;
        v43 = sub_1D726265C();

        v29 = [objc_opt_self() configurationWithActions_];

        [v29 setPerformsFirstActionWithFullSwipe_];
        sub_1D6A7DB74(v9, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
        return v29;
      }

      sub_1D6A7DB0C(v5, type metadata accessor for FormatInspectionItem.Value);
    }

    sub_1D6A7DB74(v9, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    return 0;
  }

  v14 = *v11;
  v13 = *(v11 + 8);
  v15 = v12 & 1;
  sub_1D6821B94();
  v16 = sub_1D6A9E7C8(v14, v13, v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;
  *(v18 + 32) = v13;
  *(v18 + 40) = v15;

  if (v16)
  {
    v19 = &selRef_systemGrayColor;
  }

  else
  {
    v19 = &selRef_systemBlueColor;
  }

  v20 = sub_1D726203C();

  v50 = sub_1D6A7D8DC;
  v51 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1D6B276E0;
  v49 = &block_descriptor_32_0;
  v21 = _Block_copy(&aBlock);
  v22 = [objc_opt_self() contextualActionWithStyle:0 title:v20 handler:v21];

  _Block_release(v21);

  v23 = [objc_opt_self() *v19];
  [v22 setBackgroundColor_];

  v24 = sub_1D726203C();

  v25 = [objc_opt_self() systemImageNamed_];

  [v22 setImage_];
  sub_1D5B66F94(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D72816C0;
  *(v26 + 32) = v22;
  sub_1D5B5A498(0, &unk_1EC890BF0, 0x1E69DC8E8);
  v27 = v22;
  v28 = sub_1D726265C();

  v29 = [objc_opt_self() configurationWithActions_];

  [v29 setPerformsFirstActionWithFullSwipe_];
  return v29;
}

uint64_t sub_1D6A7C6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    sub_1D6A9E900(a6, a7, a8 & 1);
  }

  return a3(1);
}

void sub_1D6A7C790(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a3();
    return;
  }

  v33 = a3;
  v32 = Strong;

  sub_1D725B31C();

  v13 = v37;
  v14 = *(v37 + 16);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = 0;
  v16 = v37 + 56;
  v17 = MEMORY[0x1E69E7CC0];
  v31 = v37 + 56;
  do
  {
    v34 = v17;
    v18 = (v16 + 32 * v15);
    v19 = v15;
    while (1)
    {
      if (v19 >= *(v13 + 16))
      {
        __break(1u);
        return;
      }

      v25 = *(v18 - 3);
      v21 = *(v18 - 2);
      v23 = *(v18 - 1);
      v22 = *v18;
      if (v25 == a6 && v21 == a7)
      {
        break;
      }

      if ((sub_1D72646CC() & 1) == 0 || v23 != a8 || v22 != a9)
      {
        goto LABEL_19;
      }

LABEL_10:
      ++v19;
      v18 += 4;
      if (v14 == v19)
      {
        goto LABEL_26;
      }
    }

    if (v23 == a8 && v22 == a9)
    {
      goto LABEL_10;
    }

    v25 = a6;
LABEL_19:

    v17 = v34;
    v38 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D6999648(0, *(v34 + 16) + 1, 1);
      v17 = v34;
    }

    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v35 = v27 + 1;
      v30 = *(v17 + 16);
      sub_1D6999648((v26 > 1), v27 + 1, 1);
      v28 = v35;
      v27 = v30;
      v17 = v38;
    }

    v15 = v19 + 1;
    *(v17 + 16) = v28;
    v29 = (v17 + 32 * v27);
    v29[4] = v25;
    v29[5] = v21;
    v29[6] = v23;
    v29[7] = v22;
    v16 = v31;
  }

  while (v14 - 1 != v19);
LABEL_26:

  sub_1D725B32C();

  (v33)(1);
}

uint64_t sub_1D6A7CA30()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0x6F74636570736E49;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

void *sub_1D6A7CAA8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image);
  v2 = v1;
  return v1;
}

uint64_t sub_1D6A7CADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  sub_1D6A9DF10(v7, v24, 0.0, 0.0, v5, v6);
  v8 = *(a3 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D6999A08(0, v8, 0);
    v9 = v23;
    v10 = (a3 + 64);
    do
    {
      v11 = *(v10 - 4);
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v14 = *v10;
      v15 = *(v10 - 4);
      v21[6] = v24[6];
      v21[7] = v24[7];
      v21[8] = v24[8];
      v22 = v25;
      v21[2] = v24[2];
      v21[3] = v24[3];
      v21[4] = v24[4];
      v21[5] = v24[5];
      v21[0] = v24[0];
      v21[1] = v24[1];
      v20[0] = v11;
      v20[1] = v12;
      v20[2] = v13;
      v20[3] = v15;
      v20[4] = v14;

      v16 = sub_1D61825CC(v21, v20);
      sub_1D6A7CCBC(v20[0]);
      v23 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D6999A08((v17 > 1), v18 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v18 + 1;
      *(v9 + 8 * v18 + 32) = v16;
      v10 += 5;
      --v8;
    }

    while (v8);
  }

  sub_1D6A7067C(v9, a2);

  return sub_1D6202060(v24);
}

double sub_1D6A7CCBC(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

void sub_1D6A7CD1C()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections) = 4;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize) = xmmword_1D72EC9C0;
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver) = 0;
  sub_1D726402C();
  __break(1u);
}

unint64_t sub_1D6A7CE14()
{
  sub_1D6A7D8EC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups);
  if (result >= *(v15 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = *(v15 + 40 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v16 + 16))
  {
    sub_1D6A7D9C0(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * result, v13, type metadata accessor for FormatInspectionItem);

    sub_1D6A7DC54(&v13[*(v9 + 24)], v8, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    v17 = type metadata accessor for FormatInspectionItem.Value(0);
    if ((*(*(v17 - 8) + 48))(v8, 1, v17) != 1)
    {
      sub_1D6A7DC54(v8, v4, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 13 || EnumCaseMultiPayload == 27 || EnumCaseMultiPayload == 25)
      {
        sub_1D6A7DB0C(v13, type metadata accessor for FormatInspectionItem);
        sub_1D6A7DB0C(v4, type metadata accessor for FormatInspectionItem.Value);
        return sub_1D6A7DB74(v8, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      }

      sub_1D6A7DB0C(v4, type metadata accessor for FormatInspectionItem.Value);
    }

    sub_1D6A7DB0C(v13, type metadata accessor for FormatInspectionItem);
    return sub_1D6A7DB74(v8, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1D6A7D1E8(void *a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D6A7D8EC(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v37 - v6;
  sub_1D6A7D8EC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, v3);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v37 - v14;
  v16 = type metadata accessor for FormatInspectionItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v22 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups);
  if (result >= *(v22 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = *(v22 + 40 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (result < *(v23 + 16))
  {
    sub_1D6A7D9C0(v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * result, v20, type metadata accessor for FormatInspectionItem);

    sub_1D6A7DC54(&v20[*(v16 + 24)], v15, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
    v24 = type metadata accessor for FormatInspectionItem.Value(0);
    if ((*(*(v24 - 8) + 48))(v15, 1, v24) != 1)
    {
      sub_1D6A7DC54(v15, v11, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 28)
      {
        v33 = *(v11 + 1);
        v37[0] = *v11;
        v37[1] = v33;
        v38 = *(v11 + 1);

        sub_1D725B31C();

        v34 = sub_1D6F8B384(v7);
        sub_1D6A7DB74(v7, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, MEMORY[0x1E69E6720], sub_1D6A7D8EC);

        [a1 setSelected_];
      }

      else
      {
        if (EnumCaseMultiPayload == 30)
        {
          v27 = *v11;
          v28 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_workspaceFrame;
          v29 = *(type metadata accessor for FormatDebuggerWorkspaceStackFrame(0) + 20);
          v30 = (v27 + v28 + v29);
          v31 = (v27 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_selectedWorkspaceFrame + v29);
          if (*v30 == *v31 && v30[1] == v31[1])
          {
            v26 = 1;
          }

          else
          {
            v26 = sub_1D72646CC();
          }
        }

        else
        {
          if (EnumCaseMultiPayload != 29)
          {
            sub_1D6A7DB0C(v20, type metadata accessor for FormatInspectionItem);
            v35 = type metadata accessor for FormatInspectionItem.Value;
            v36 = v11;
LABEL_20:
            sub_1D6A7DB0C(v36, v35);
            return sub_1D6A7DB74(v15, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
          }

          v26 = sub_1D7133DF0();
        }

        [a1 setSelected_];
      }
    }

    v35 = type metadata accessor for FormatInspectionItem;
    v36 = v20;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1D6A7D740()
{
  v1 = type metadata accessor for FormatInspectionItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups);
  if (result >= *(v7 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(v7 + 40 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(v8 + 16))
  {
    sub_1D6A7D9C0(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * result, v5, type metadata accessor for FormatInspectionItem);

    v9 = sub_1D6A7BD38(v5);
    sub_1D6A7DB0C(v5, type metadata accessor for FormatInspectionItem);
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D6A7D8EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A7D950(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B66F94(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6A7D9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D6A7DA28(unint64_t a1)
{
  if ((~a1 & 7) != 0)
  {
    return sub_1D6086768(a1);
  }

  return result;
}

void sub_1D6A7DA3C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5A498(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D6A7DAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A7DB0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6A7DB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6A7DBD4(uint64_t a1)
{
  type metadata accessor for FormatInspectionFeedGroupItem(0);
  v3 = *(v1 + 16);

  sub_1D6A78968(a1, v3);
}

uint64_t sub_1D6A7DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_1D6A7DCC8()
{
  result = qword_1EC890C90;
  if (!qword_1EC890C90)
  {
    type metadata accessor for DebugFormatInspectorPaneViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890C90);
  }

  return result;
}

unint64_t sub_1D6A7DD40(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1DA6FB460](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_44;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_43;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 64);
      if (v6)
      {
        v7 = *(v6 + 16);
        swift_beginAccess();
        v8 = *(v7 + 16);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_1D7263BFC() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_42;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_21:
        sub_1D7263BFC();
        goto LABEL_22;
      }

      if (v11)
      {
        goto LABEL_21;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263DDC();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v33 = v10;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v33)
          {
            goto LABEL_46;
          }

          v31 = v3;
          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_48;
            }

            sub_1D60D186C(0);
            sub_1D6A85C4C(&unk_1EC890DA0, 255, sub_1D60D186C, MEMORY[0x1E69E6340]);
            for (i = 0; i != v16; ++i)
            {
              v19 = sub_1D6D876E0(v32, i, v8);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for FormatNodeDebugRecord();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_47;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_16;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1D7263BFC();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D6A7E0D4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1DA6FB460](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_44;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_43;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 64);
      if (v6)
      {
        v7 = *(v6 + 24);
        swift_beginAccess();
        v8 = *(v7 + 16);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_1D7263BFC() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_42;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_21:
        sub_1D7263BFC();
        goto LABEL_22;
      }

      if (v11)
      {
        goto LABEL_21;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263DDC();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v33 = v10;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v33)
          {
            goto LABEL_46;
          }

          v31 = v3;
          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_48;
            }

            sub_1D60D186C(0);
            sub_1D6A85C4C(&unk_1EC890DA0, 255, sub_1D60D186C, MEMORY[0x1E69E6340]);
            for (i = 0; i != v16; ++i)
            {
              v19 = sub_1D6D876E0(v32, i, v8);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for FormatNodeDebugRecord();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_47;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_16;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1D7263BFC();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D6A7E468(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v25 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v26 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v24 = v1;
    while (1)
    {
      if (v26)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1DA6FB460](v2, v23);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v25 + 16))
        {
          goto LABEL_41;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_40;
        }
      }

      sub_1D725A06C();
      v5 = sub_1D725A25C();

      v6 = v5 >> 62;
      v7 = v5 >> 62 ? sub_1D7263BFC() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          v10 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_1D7263BFC();
        goto LABEL_19;
      }

      if (v8)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263DDC();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v29 = v7;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v6)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
        v13 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v12 >> 1) - v11) < v29)
          {
            goto LABEL_43;
          }

          v27 = v3;
          v14 = v10 + 8 * v11 + 32;
          if (v6)
          {
            if (v13 < 1)
            {
              goto LABEL_45;
            }

            sub_1D6A86604(0);
            sub_1D6A85C4C(&qword_1EC890D98, 255, sub_1D6A86604, MEMORY[0x1E69E6340]);
            for (i = 0; i != v13; ++i)
            {
              v16 = sub_1D6D88D7C(v28, i, v5);
              v18 = *v17;

              (v16)(v28, 0);
              *(v14 + 8 * i) = v18;
            }
          }

          else
          {
            sub_1D725A1BC();
            swift_arrayInitWithCopy();
          }

          v1 = v24;
          v3 = v27;
          if (v29 >= 1)
          {
            v19 = *(v10 + 16);
            v4 = __OFADD__(v19, v29);
            v20 = v19 + v29;
            if (v4)
            {
              goto LABEL_44;
            }

            *(v10 + 16) = v20;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_24;
        }
      }

      if (v29 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v21 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1D7263BFC();
    isUniquelyReferenced_nonNull_bridgeObject = v21;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6A7E7E0(uint64_t a1, uint64_t (*a2)(void))
{
  v45 = a2;
  v3 = sub_1D725BD1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A7E0(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68D69D4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v43 - v25;
  sub_1D6A863D0(a1, v15, sub_1D68D69D4);
  v27 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v28 = 1;
  v29 = (*(*(v27 - 8) + 48))(v15, 1, v27);
  v30 = sub_1D68D69D4;
  if (v29 != 1)
  {
    (*(v4 + 16))(v26, &v15[*(v27 + 20)], v3);
    v28 = 0;
    v30 = type metadata accessor for DebugFormatFileDirectoryMetadata;
  }

  sub_1D5B6F2C8(v15, v30);
  v31 = *(v4 + 56);
  v31(v26, v28, 1, v3);
  v32 = v45(0);
  (*(v4 + 16))(v22, v46 + *(v32 + 28) + *(v27 + 20), v3);
  v31(v22, 0, 1, v3);
  v33 = *(v8 + 48);
  sub_1D6A863D0(v26, v11, sub_1D5B5C268);
  sub_1D6A863D0(v22, &v11[v33], sub_1D5B5C268);
  v34 = *(v4 + 48);
  if (v34(v11, 1, v3) == 1)
  {
    sub_1D5B6F2C8(v22, sub_1D5B5C268);
    sub_1D5B6F2C8(v26, sub_1D5B5C268);
    if (v34(&v11[v33], 1, v3) == 1)
    {
      sub_1D5B6F2C8(v11, sub_1D5B5C268);
LABEL_11:
      v36 = 3u >> (*(v46 + 16) & 7);
      return v36 & 1;
    }

    goto LABEL_8;
  }

  v35 = v44;
  sub_1D6A863D0(v11, v44, sub_1D5B5C268);
  if (v34(&v11[v33], 1, v3) == 1)
  {
    sub_1D5B6F2C8(v22, sub_1D5B5C268);
    sub_1D5B6F2C8(v26, sub_1D5B5C268);
    (*(v4 + 8))(v35, v3);
LABEL_8:
    sub_1D5B6F2C8(v11, sub_1D5D3A7E0);
    goto LABEL_9;
  }

  v37 = &v11[v33];
  v38 = v43;
  (*(v4 + 32))(v43, v37, v3);
  sub_1D6A85C4C(&qword_1EDF178B8, 255, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
  v39 = v35;
  v40 = sub_1D7261FBC();
  v41 = *(v4 + 8);
  v41(v38, v3);
  sub_1D5B6F2C8(v22, sub_1D5B5C268);
  sub_1D5B6F2C8(v26, sub_1D5B5C268);
  v41(v39, v3);
  sub_1D5B6F2C8(v11, sub_1D5B5C268);
  if (v40)
  {
    goto LABEL_11;
  }

LABEL_9:
  LOBYTE(v36) = 1;
  return v36 & 1;
}

uint64_t sub_1D6A7ED74()
{
  sub_1D5C39828(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_styleViewController);
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_optionViewController);
  *(v1 + 16) = xmmword_1D72EC970;
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_selectorViewController);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_animationViewController);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_maskViewController);
  *(v1 + 64) = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return v1;
}

id sub_1D6A7EE4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D725BFFC();

  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_socketServer];
  sub_1D717EB7C();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1D6A7F18C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;

  sub_1D725972C();

  if (v4 == 1 && v2 != 0)
  {
    sub_1D6A85C4C(&qword_1EC88DCD8, 255, type metadata accessor for DebugFormatLayoutTreeViewController, &unk_1D732AB24);
    sub_1D725E6BC();
  }
}

double sub_1D6A7F25C(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = *(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController);
      v4 = sub_1D725E67C();
      v6 = v5;
      type metadata accessor for DebugFormatDebuggerRestoreState();
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v6;

      sub_1D725B31C();

      *(v7 + 32) = v15;
      *(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_debuggerRestoreState) = v7;

      v8 = [v3 navigationController];
      if (v8)
      {
        v9 = v8;
      }

      sub_1D6A85C4C(&qword_1EC88DD00, 255, type metadata accessor for DebugFormatDebuggerViewController, &unk_1D73195D8);
      sub_1D725E6BC();
    }
  }

  else
  {
    v11 = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_debuggerRestoreState;
    if (!*(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_debuggerRestoreState) || (, , sub_1D725B32C(), , , (v12 = *(a1 + v11)) == 0) || (v13 = *(v12 + 16)) == 0)
    {
      v13 = *(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_inventoryViewController);
      sub_1D6A85C4C(&qword_1EC88DCC8, 255, type metadata accessor for DebugFormatInventoryTreeViewController, &unk_1D73427F8);
    }

    v14 = v13;
    sub_1D725E6BC();

    *(a1 + v11) = 0;
  }

  return result;
}

void sub_1D6A7F538()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  swift_beginAccess();

  sub_1D725B33C();

  sub_1D725B35C();

  swift_beginAccess();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_socketServer];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D717EC18(v1, v2);

  sub_1D717EDB4();
}

uint64_t sub_1D6A7F7D0()
{
  sub_1D6A86554(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_1D725B31C();

  memcpy(v9, v8, sizeof(v9));
  memcpy(v7, v8, sizeof(v7));
  v4 = sub_1D71689D8();
  sub_1D60CEF18(v9);
  v5 = type metadata accessor for DebugFormatPackagesDelta(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1D6A9ED58(v4, 1, v3);

  return sub_1D5B6F2C8(v3, sub_1D6A86554);
}

double sub_1D6A7F92C(void *a1)
{
  sub_1D6A85FFC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - v4;
  v6 = sub_1D726294C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D726290C();
  v7 = a1;
  v8 = sub_1D72628FC();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_1D6736BD4(0, 0, v5, &unk_1D7319810, v9);

  return result;
}

uint64_t sub_1D6A7FA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D726290C();
  v4[3] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D6A7FB10, v6, v5);
}

uint64_t sub_1D6A7FB10()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor);
  v0[6] = *(v1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D6A7FBE0;

  return sub_1D60C20E8(v1, 0);
}

uint64_t sub_1D6A7FBE0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1D6A7FD60;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1D6A7FCFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6A7FCFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A7FD60()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D6A7FDD0(uint64_t a1, __int128 *a2)
{
  sub_1D6A85FFC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - v5;
  v7 = a2[11];
  v37 = a2[10];
  v38 = v7;
  v39 = a2[12];
  v40 = *(a2 + 26);
  v8 = a2[7];
  v33 = a2[6];
  v34 = v8;
  v9 = a2[9];
  v35 = a2[8];
  v36 = v9;
  v10 = a2[3];
  v29 = a2[2];
  v30 = v10;
  v11 = a2[5];
  v31 = a2[4];
  v32 = v11;
  v12 = a2[1];
  v27 = *a2;
  v28 = v12;
  v13 = sub_1D726294C();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D726290C();

  sub_1D6A86590(&v27, &v26, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5C39828);
  v15 = sub_1D72628FC();
  v16 = swift_allocObject();
  v17 = v38;
  *(v16 + 200) = v37;
  *(v16 + 216) = v17;
  *(v16 + 232) = v39;
  v18 = v34;
  *(v16 + 136) = v33;
  *(v16 + 152) = v18;
  v19 = v36;
  *(v16 + 168) = v35;
  *(v16 + 184) = v19;
  v20 = v30;
  *(v16 + 72) = v29;
  *(v16 + 88) = v20;
  v21 = v32;
  *(v16 + 104) = v31;
  *(v16 + 120) = v21;
  v22 = v28;
  *(v16 + 40) = v27;
  v23 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v23;
  *(v16 + 32) = v14;
  *(v16 + 248) = v40;
  *(v16 + 56) = v22;

  sub_1D6736BD4(0, 0, v6, &unk_1D7319800, v16);

  return result;
}

uint64_t sub_1D6A80044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  sub_1D726290C();
  v5[34] = sub_1D72628FC();
  v7 = sub_1D726285C();
  v5[35] = v7;
  v5[36] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D6A800DC, v7, v6);
}

uint64_t sub_1D6A800DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor;
    v0[38] = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor;
    v3 = *(Strong + v2);
    v0[39] = v3;
    v0[40] = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);

    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_1D6A80220;

    return sub_1D60C20E8(v3, 0);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D6A80220()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1D6A80634;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1D6A80344;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6A80344()
{
  if ([*(*(*(v0 + 296) + *(v0 + 304)) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue) isSuspended])
  {
    v1 = *(v0 + 296);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 264);
    *(v0 + 344) = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editorViewController;
    v5 = *(v4 + 16);
    *(v0 + 16) = *v4;
    *(v0 + 32) = v5;
    v6 = *(v4 + 80);
    v8 = *(v4 + 32);
    v7 = *(v4 + 48);
    *(v0 + 80) = *(v4 + 64);
    *(v0 + 96) = v6;
    *(v0 + 48) = v8;
    *(v0 + 64) = v7;
    v9 = *(v4 + 144);
    v11 = *(v4 + 96);
    v10 = *(v4 + 112);
    *(v0 + 144) = *(v4 + 128);
    *(v0 + 160) = v9;
    *(v0 + 112) = v11;
    *(v0 + 128) = v10;
    v12 = *(v4 + 160);
    v13 = *(v4 + 176);
    v14 = *(v4 + 192);
    *(v0 + 224) = *(v4 + 208);
    *(v0 + 192) = v13;
    *(v0 + 208) = v14;
    *(v0 + 176) = v12;
    v15 = swift_task_alloc();
    *(v0 + 352) = v15;
    *v15 = v0;
    v15[1] = sub_1D6A8049C;

    return sub_1D6A057C4(v0 + 16, 0);
  }
}

uint64_t sub_1D6A8049C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1D6A806BC;
  }

  else
  {
    v5 = sub_1D6A805B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6A805B0()
{
  v1 = v0[43];
  v2 = v0[37];

  v3 = *&v2[v1];
  sub_1D6A11BB0();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6A80634()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6A806BC()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[37];

  v4 = *&v3[v2];
  sub_1D6A07778(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6A80758(uint64_t a1, void *a2, __n128 a3)
{
  if (*a2)
  {
    type metadata accessor for DebugFormatCanvasBindResult(0);

    sub_1D6A7DD40(v4);

    sub_1D6A7E0D4(v5);

    sub_1D6A7E468(v6);
  }

  type metadata accessor for DebugFormatDebuggerSourceMetricContext();
  v7 = swift_allocObject();
  sub_1D60D186C(0);
  sub_1D6A85C4C(&qword_1EC890D88, 255, sub_1D60D186C, MEMORY[0x1E69E6328]);
  sub_1D6007964();
  v7[2] = sub_1D72623DC();
  v7[4] = sub_1D72623DC();
  v8 = sub_1D72623DC();

  v7[3] = v8;
  v9 = sub_1D72623DC();

  v10 = *(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sourceViewController);
  v7[5] = v9;
  *(v10 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceMetrics) = v7;
  swift_retain_n();

  sub_1D6919718(0);

  *(*(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_fileViewController) + OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_sourceMetrics) = v7;

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6A80A9C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D6A85FFC(0, &qword_1EC88DD18, type metadata accessor for DebugFormatLayoutModelSelection, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  sub_1D6A86590(a1, &v17 - v5, &qword_1EC88DD18, type metadata accessor for DebugFormatLayoutModelSelection, v2, sub_1D6A85FFC);
  v7 = type metadata accessor for DebugFormatLayoutModelSelection(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1D6A7ED74();
      v10 = v9;
      if (v9 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1DA6FB460](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v16 = sub_1D725E67C();

          if (v16)
          {

            if (v14 == v16)
            {

              return sub_1D5B6F2C8(v6, type metadata accessor for DebugFormatLayoutModelSelection);
            }
          }

          ++v12;
          if (v15 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

LABEL_16:

      sub_1D6A85C4C(&qword_1EC88DCE0, 255, type metadata accessor for DebugFormatInspectorViewController, &unk_1D7371B64);
      sub_1D725E6BC();
    }

    return sub_1D5B6F2C8(v6, type metadata accessor for DebugFormatLayoutModelSelection);
  }

  return result;
}

uint64_t sub_1D6A80D38(uint64_t a1)
{
  sub_1D5C39828(0, &qword_1EC890D80, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6940]);
  v2 = objc_allocWithZone(v1);

  return sub_1D725B71C();
}

uint64_t sub_1D6A80DB4(uint64_t a1, uint64_t a2)
{
  sub_1D5C39828(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  sub_1D5B68374(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1D5B63F14(v6, v4 + 24);

  return sub_1D725BA6C();
}

uint64_t sub_1D6A80E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  sub_1D726290C();
  v3[7] = sub_1D72628FC();
  v5 = sub_1D726285C();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D6A80F10, v5, v4);
}

uint64_t sub_1D6A80F10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1D6A810B8;
    v3 = v0[6];

    return sub_1D6A812D0(v3);
  }

  else
  {

    v5 = sub_1D725AA6C();
    sub_1D6A85C4C(&unk_1EC896020, 255, MEMORY[0x1E69D64B0], MEMORY[0x1E69D64B8]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69D64A0], v5);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D6A810B8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1D6A81264;
  }

  else
  {
    v5 = sub_1D6A811F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D6A811F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A81264()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6A812D0(uint64_t a1)
{
  v2[749] = v1;
  v2[743] = a1;
  sub_1D68D69D4(0);
  v2[755] = swift_task_alloc();
  sub_1D6A85FC8(0);
  v2[761] = v3;
  v2[767] = swift_task_alloc();
  v2[773] = swift_task_alloc();
  sub_1D6A86060(0);
  v2[774] = v4;
  v2[775] = swift_task_alloc();
  v2[776] = swift_task_alloc();
  sub_1D5B4D3E0(0);
  v2[777] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v2[778] = v5;
  v6 = *(v5 - 8);
  v2[779] = v6;
  v2[780] = *(v6 + 64);
  v2[781] = swift_task_alloc();
  v2[782] = swift_task_alloc();
  v2[783] = swift_task_alloc();
  sub_1D726290C();
  v2[784] = sub_1D72628FC();
  v8 = sub_1D726285C();
  v2[785] = v8;
  v2[786] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D6A814BC, v8, v7);
}

uint64_t sub_1D6A814BC(uint64_t a1)
{
  v38 = v1;
  v2 = v1[779];
  v3 = v1[778];
  v4 = v1[777];
  v1[787] = *(v1[749] + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor);
  v5 = sub_1D6A9DC44(v4);
  if ((*(v2 + 48))(v4, 1, v3, v5) == 1)
  {
    v6 = v1[777];

    sub_1D5B6F2C8(v6, sub_1D5B4D3E0);
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(0, 0, 0, 0xD000000000000034, 0x80000001D73E2620);

    v7 = v1[1];
    goto LABEL_7;
  }

  v8 = v1[743];
  v9 = *(v1[779] + 32);
  v9(v1[783], v1[777], v1[778]);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  if (sub_1D725B2DC())
  {
    v10 = v1[783];
    v11 = v1[779];
    v12 = v1[778];

    sub_1D726289C();
    sub_1D6A85C4C(&qword_1EC890D70, 255, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1D7261D0C();
    swift_willThrow();
    (*(v11 + 8))(v10, v12);

    v7 = v1[1];
LABEL_7:

    return v7();
  }

  v36 = v9;
  v1[788] = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__packages;

  sub_1D725B31C();

  memcpy(v1 + 167, v1 + 251, 0x150uLL);
  memcpy(__dst, v1 + 251, sizeof(__dst));
  v14 = sub_1D7169B80();
  if (v14 >> 62)
  {
    v15 = sub_1D7263BFC();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D60CEF18((v1 + 167));

  v1[789] = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;

  sub_1D725B31C();

  v16 = *(v1[737] + 16);

  if (v16)
  {
    v35 = 0;
  }

  else
  {

    sub_1D725B31C();

    memcpy(v1 + 209, v1 + 377, 0x150uLL);
    memcpy(__dst, v1 + 377, sizeof(__dst));
    v17 = sub_1D7169B80();
    if (v17 >> 62)
    {
      v18 = sub_1D7263BFC();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1D60CEF18((v1 + 209));

    v35 = v18 == 0;
  }

  v32 = v15 == 0;
  v19 = v1[782];
  v20 = v1[780];
  v21 = v1[779];
  v22 = v1[778];
  v34 = v1[781];
  v33 = v1[783];
  v23 = v1[749];
  v24 = *(v21 + 16);
  v24(v19);
  v25 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v26 = v25 + v20;
  v27 = swift_allocObject();
  v1[790] = v27;
  *(v27 + 16) = v23;
  v36(v27 + v25, v19, v22);
  *(v27 + v26) = v32;
  v28 = v23;
  swift_asyncLet_begin();
  (v24)(v34, v33, v22);
  v29 = swift_allocObject();
  v1[791] = v29;
  *(v29 + 16) = v28;
  v36(v29 + v25, v34, v22);
  *(v29 + v26) = v35;
  v30 = v28;
  swift_asyncLet_begin();
  v31 = v1[776];

  return MEMORY[0x1EEE6DEC0](v1 + 2, v31, sub_1D6A81B1C, v1 + 744);
}

uint64_t sub_1D6A81B1C(__n128 a1)
{
  v2[792] = v1;
  if (v1)
  {
    v3 = v2[786];
    v4 = v2[785];

    return MEMORY[0x1EEE6DFA0](sub_1D6A824E8, v4, v3);
  }

  else
  {
    sub_1D6A863D0(v2[776], v2[775], sub_1D6A86060);
    v5 = v2[773];

    return MEMORY[0x1EEE6DEC0](v2 + 82, v5, sub_1D6A81BE4, v2 + 688);
  }
}

uint64_t sub_1D6A81BE4()
{
  v1[793] = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DFA0](sub_1D6A826AC, v1[785], v1[786]);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1D6A81C24, v1[785], v1[786]);
  }
}

uint64_t sub_1D6A81C24(__n128 a1)
{
  v33 = v1;
  v2 = *(v1 + 6200);
  sub_1D6A863D0(*(v1 + 6184), *(v1 + 6136), sub_1D6A85FC8);

  sub_1D725B31C();

  memcpy((v1 + 4360), (v1 + 4696), 0x150uLL);

  sub_1D725B31C();

  v3 = *(v1 + 5848);
  if (*(v2 + 16) && *(v2 + 16) != 1)
  {
    memcpy(__dst, (v1 + 4360), sizeof(__dst));
    v4 = sub_1D71689D8();
  }

  else
  {
  }

  v5 = *(v1 + 6136);
  sub_1D7168A94(v4, v1 + 4024);
  if (*(v5 + 16) <= 1u)
  {
    v6 = *v5;

    v3 = v6;
  }

  v7 = *(v1 + 6040);
  memcpy((v1 + 3688), (v1 + 4024), 0x150uLL);
  sub_1D6A86374(v1 + 4024, v1 + 3352);

  sub_1D725B32C();

  *(v1 + 5800) = v3;

  sub_1D725B32C();

  sub_1D725B31C();

  v8 = sub_1D6A7E7E0(v7, sub_1D6A85FC8);
  sub_1D5B6F2C8(v7, sub_1D68D69D4);
  if (v8)
  {

    sub_1D725B31C();

    v10 = *(v1 + 5192);
    v9 = *(v1 + 5208);
    v11 = *(v1 + 5176);
    *(v1 + 5704) = v10;
    *(v1 + 5720) = v9;
    v12 = *(v1 + 5208);
    *(v1 + 5736) = *(v1 + 5224);
    v14 = *(v1 + 5128);
    v13 = *(v1 + 5144);
    v15 = *(v1 + 5112);
    *(v1 + 5640) = v14;
    *(v1 + 5656) = v13;
    v16 = *(v1 + 5144);
    v18 = *(v1 + 5160);
    v17 = *(v1 + 5176);
    *(v1 + 5672) = v18;
    *(v1 + 5688) = v17;
    v20 = *(v1 + 5064);
    v19 = *(v1 + 5080);
    v21 = *(v1 + 5048);
    *(v1 + 5576) = v20;
    *(v1 + 5592) = v19;
    v22 = *(v1 + 5080);
    v24 = *(v1 + 5096);
    v23 = *(v1 + 5112);
    *(v1 + 5608) = v24;
    *(v1 + 5624) = v23;
    v25 = *(v1 + 5048);
    v26 = *(v1 + 5032);
    *(v1 + 5544) = v26;
    *(v1 + 5560) = v25;
    *(v1 + 5448) = v10;
    *(v1 + 5464) = v12;
    *(v1 + 5480) = *(v1 + 5224);
    *(v1 + 5384) = v14;
    *(v1 + 5400) = v16;
    *(v1 + 5416) = v18;
    *(v1 + 5432) = v11;
    *(v1 + 5320) = v20;
    *(v1 + 5336) = v22;
    *(v1 + 5352) = v24;
    *(v1 + 5368) = v15;
    *(v1 + 5752) = *(v1 + 5240);
    *(v1 + 5496) = *(v1 + 5240);
    *(v1 + 5288) = v26;
    *(v1 + 5304) = v21;
    v27 = sub_1D5DEA380(v1 + 5288);
    v28 = v27 != 1;
    if (v27 != 1)
    {
      sub_1D5F0B7F0(v1 + 5544);
    }
  }

  else
  {
    v28 = 0;
  }

  *(v1 + 6352) = *(*(v1 + 6296) + *(v1 + 6312));

  v29 = swift_task_alloc();
  *(v1 + 6360) = v29;
  *v29 = v1;
  v29[1] = sub_1D6A81FCC;
  v30 = *(v1 + 6296);

  return sub_1D60C20E8(v30, v28);
}

uint64_t sub_1D6A81FCC()
{
  v2 = *v1;
  v2[796] = v0;

  if (v0)
  {

    sub_1D60CEF18((v2 + 545));
    sub_1D60CEF18((v2 + 503));
    v3 = v2[786];
    v4 = v2[785];

    return MEMORY[0x1EEE6DFA0](sub_1D6A828CC, v4, v3);
  }

  else
  {

    memcpy(v2 + 335, v2 + 503, 0x150uLL);
    memcpy(v2 + 293, v2 + 545, 0x150uLL);
    v5 = swift_task_alloc();
    v2[797] = v5;
    *v5 = v2;
    v5[1] = sub_1D6A82198;
    v6 = v2[775];

    return sub_1D6A835D0(v6, v2 + 335, v2 + 293);
  }
}

uint64_t sub_1D6A82198()
{
  v2 = *v1;
  *(*v1 + 6384) = v0;

  if (v0)
  {
    v3 = *(v2 + 6288);
    v4 = *(v2 + 6280);
    v5 = sub_1D6A82B10;
  }

  else
  {
    sub_1D60CEF18(v2 + 4360);
    sub_1D60CEF18(v2 + 4024);
    v3 = *(v2 + 6288);
    v4 = *(v2 + 6280);
    v5 = sub_1D6A822C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D6A822C8()
{
  v1 = v0[775];
  sub_1D5B6F2C8(v0[767], sub_1D6A85FC8);
  sub_1D5B6F2C8(v1, sub_1D6A86060);
  v2 = v0[773];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v2, sub_1D6A8236C, v0 + 762);
}

uint64_t sub_1D6A823C8()
{
  v1 = v0[783];
  v2 = v0[779];
  v3 = v0[778];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6A82568()
{

  v1 = v0[792];
  v2 = v0[783];
  v3 = v0[779];
  v4 = v0[778];
  sub_1D6A07778(v1);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6A826AC()
{
  sub_1D5B6F2C8(*(v0 + 6200), sub_1D6A86060);
  v1 = *(v0 + 6184);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1D6A82730, v0 + 5248);
}

uint64_t sub_1D6A82788()
{

  v1 = v0[793];
  v2 = v0[783];
  v3 = v0[779];
  v4 = v0[778];
  sub_1D6A07778(v1);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6A828CC()
{
  v1 = v0[775];
  sub_1D5B6F2C8(v0[767], sub_1D6A85FC8);
  sub_1D5B6F2C8(v1, sub_1D6A86060);
  v2 = v0[773];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v2, sub_1D6A82970, v0 + 726);
}

uint64_t sub_1D6A829CC()
{

  v1 = v0[796];
  v2 = v0[783];
  v3 = v0[779];
  v4 = v0[778];
  sub_1D6A07778(v1);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6A82B10()
{
  v1 = v0[775];
  sub_1D5B6F2C8(v0[767], sub_1D6A85FC8);
  sub_1D5B6F2C8(v1, sub_1D6A86060);
  sub_1D60CEF18((v0 + 545));
  sub_1D60CEF18((v0 + 503));
  v2 = v0[773];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v2, sub_1D6A82BD0, v0 + 750);
}

uint64_t sub_1D6A82C2C()
{

  v1 = v0[798];
  v2 = v0[783];
  v3 = v0[779];
  v4 = v0[778];
  sub_1D6A07778(v1);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6A82EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 88) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6A82EDC, 0, 0);
}

uint64_t sub_1D6A82EDC()
{
  *(v0 + 40) = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor;
  sub_1D726290C();
  *(v0 + 48) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6A82F7C, v2, v1);
}

uint64_t sub_1D6A82F7C()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[7] = *(v2 + v1);

  return MEMORY[0x1EEE6DFA0](sub_1D6A82FF0, 0, 0);
}

uint64_t sub_1D6A82FF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  *(v0 + 64) = sub_1D6D3047C(v2, v1);

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1D6A830D4;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1D6A830D4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6A83210, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6A83210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A83274(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 88) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6A8329C, 0, 0);
}

uint64_t sub_1D6A8329C()
{
  *(v0 + 40) = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor;
  sub_1D726290C();
  *(v0 + 48) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6A8333C, v2, v1);
}

uint64_t sub_1D6A8333C()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[7] = *(v2 + v1);

  return MEMORY[0x1EEE6DFA0](sub_1D6A833B0, 0, 0);
}

uint64_t sub_1D6A833B0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  *(v0 + 64) = sub_1D6D30634(v2, v1);

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1D6A83494;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1D6A83494()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6A867B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6A835D0(uint64_t a1, const void *a2, const void *a3)
{
  v4[561] = v3;
  v4[560] = a1;
  sub_1D6A86060(0);
  v4[562] = v7;
  v4[563] = swift_task_alloc();
  v4[564] = type metadata accessor for DebugFormatPackagesDelta(0);
  v4[565] = swift_task_alloc();
  v4[566] = type metadata accessor for DebugFormatManagerError(0);
  v4[567] = swift_task_alloc();
  v8 = sub_1D725BD1C();
  v4[568] = v8;
  v4[569] = *(v8 - 8);
  v4[570] = swift_task_alloc();
  sub_1D5D3A7E0(0);
  v4[571] = v9;
  v4[572] = swift_task_alloc();
  v10 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v4[573] = v10;
  v4[574] = *(v10 - 8);
  v4[575] = swift_task_alloc();
  sub_1D5B5C268(0);
  v4[576] = swift_task_alloc();
  v4[577] = swift_task_alloc();
  v4[578] = swift_task_alloc();
  sub_1D68D69D4(0);
  v4[579] = swift_task_alloc();
  v4[580] = swift_task_alloc();
  v4[581] = swift_task_alloc();
  memcpy(v4 + 44, a2, 0x150uLL);
  memcpy(v4 + 2, a3, 0x150uLL);
  sub_1D726290C();
  v4[582] = sub_1D72628FC();
  v12 = sub_1D726285C();
  v4[583] = v12;
  v4[584] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D6A838A0, v12, v11);
}

char *sub_1D6A838A0()
{
  v136 = v0;
  v1 = *(*(v0 + 4488) + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor);
  *(v0 + 4680) = v1;
  v2 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_1D6AD348C(1);
  }

  v3 = *(v0 + 4648);

  sub_1D725B31C();

  v4 = sub_1D6A7E7E0(v3, sub_1D6A86060);
  sub_1D5B6F2C8(v3, sub_1D68D69D4);
  if ((v4 & 1) == 0)
  {
    v17 = *(v0 + 4648);
    v18 = *(v0 + 4632);
    v19 = *(v0 + 4592);
    v20 = *(v0 + 4584);
    v21 = *(v0 + 4496);
    v22 = *(v0 + 4480);

    sub_1D6A863D0(v22 + *(v21 + 28), v17, type metadata accessor for DebugFormatFileDirectoryMetadata);
    (*(v19 + 56))(v17, 0, 1, v20);
    sub_1D6A863D0(v17, v18, sub_1D68D69D4);

    sub_1D725B32C();

    v23 = sub_1D68D69D4;
    v24 = v17;
    goto LABEL_7;
  }

  v131 = v2;
  v5 = *(v0 + 4640);
  v6 = *(v0 + 4592);
  v7 = *(v0 + 4584);
  v8 = *(v0 + 4552);
  v133 = v1;

  sub_1D725B31C();

  v9 = (*(v6 + 48))(v5, 1, v7);
  v10 = (v8 + 16);
  v11 = *(v0 + 4640);
  v12 = *(v0 + 4624);
  if (v9)
  {
    v13 = *(v0 + 4552);
    v14 = *(v0 + 4544);
    sub_1D5B6F2C8(v11, sub_1D68D69D4);
    v15 = *(v13 + 56);
    v15(v12, 1, 1, v14);
    v16 = *v10;
  }

  else
  {
    v27 = *(v0 + 4600);
    v28 = *(v0 + 4584);
    v29 = *(v0 + 4552);
    v30 = *(v0 + 4544);
    v31 = *(v0 + 4640);
    sub_1D6A863D0(v11, v27, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D5B6F2C8(v31, sub_1D68D69D4);
    v32 = *v10;
    (*v10)(v12, v27 + *(v28 + 20), v30);
    sub_1D5B6F2C8(v27, type metadata accessor for DebugFormatFileDirectoryMetadata);
    v15 = *(v29 + 56);
    v15(v12, 0, 1, v30);
    v16 = v32;
  }

  v33 = *(v0 + 4624);
  v34 = *(v0 + 4616);
  v35 = *(v0 + 4576);
  v36 = *(v0 + 4568);
  v37 = *(v0 + 4552);
  v38 = *(v0 + 4544);
  v132 = *(v0 + 4480) + *(*(v0 + 4496) + 28);
  v16(v34, v132 + *(*(v0 + 4584) + 20), v38);
  v15(v34, 0, 1, v38);
  v39 = *(v36 + 48);
  sub_1D6A863D0(v33, v35, sub_1D5B5C268);
  sub_1D6A863D0(v34, v35 + v39, sub_1D5B5C268);
  v40 = *(v37 + 48);
  if (v40(v35, 1, v38) == 1)
  {
    v41 = *(v0 + 4624);
    v42 = *(v0 + 4544);
    sub_1D5B6F2C8(*(v0 + 4616), sub_1D5B5C268);
    sub_1D5B6F2C8(v41, sub_1D5B5C268);
    if (v40(v35 + v39, 1, v42) == 1)
    {
      sub_1D5B6F2C8(*(v0 + 4576), sub_1D5B5C268);
      v43 = 0;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v44 = *(v0 + 4544);
  sub_1D6A863D0(*(v0 + 4576), *(v0 + 4608), sub_1D5B5C268);
  v45 = v40(v35 + v39, 1, v44);
  v46 = *(v0 + 4624);
  v47 = *(v0 + 4616);
  v48 = *(v0 + 4608);
  if (v45 == 1)
  {
    v49 = *(v0 + 4552);
    v50 = *(v0 + 4544);
    sub_1D5B6F2C8(*(v0 + 4616), sub_1D5B5C268);
    sub_1D5B6F2C8(v46, sub_1D5B5C268);
    (*(v49 + 8))(v48, v50);
LABEL_16:
    sub_1D5B6F2C8(*(v0 + 4576), sub_1D5D3A7E0);
    v43 = 1;
    goto LABEL_18;
  }

  v51 = *(v0 + 4576);
  v52 = *(v0 + 4560);
  v53 = *(v0 + 4552);
  v54 = *(v0 + 4544);
  (*(v53 + 32))(v52, v35 + v39, v54);
  sub_1D6A85C4C(&qword_1EDF178B8, 255, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
  v55 = sub_1D7261FBC();
  v56 = *(v53 + 8);
  v56(v52, v54);
  sub_1D5B6F2C8(v47, sub_1D5B5C268);
  sub_1D5B6F2C8(v46, sub_1D5B5C268);
  v56(v48, v54);
  sub_1D5B6F2C8(v51, sub_1D5B5C268);
  v43 = v55 ^ 1;
LABEL_18:
  *(v0 + 4760) = v43 & 1;
  v57 = *(v0 + 4648);
  v58 = *(v0 + 4632);
  v59 = *(v0 + 4592);
  v60 = *(v0 + 4584);
  sub_1D6A863D0(v132, v57, type metadata accessor for DebugFormatFileDirectoryMetadata);
  (*(v59 + 56))(v57, 0, 1, v60);
  sub_1D6A863D0(v57, v58, sub_1D68D69D4);

  sub_1D725B32C();

  sub_1D5B6F2C8(v57, sub_1D68D69D4);
  memcpy(__dst, (v0 + 352), sizeof(__dst));
  v61 = sub_1D7168C10();
  v62 = v61;
  v63 = v61 >> 62;
  if (v61 >> 62)
  {
    v64 = sub_1D7263BFC();
  }

  else
  {
    v64 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v64)
  {
    **(v0 + 4536) = v62;
    swift_storeEnumTagMultiPayload();
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = 0xE000000000000000;

    sub_1D7263D4C();

    *&__dst[0] = 0xD000000000000026;
    *(&__dst[0] + 1) = 0x80000001D73E2660;
    if (v63)
    {
      v65 = sub_1D7263BFC();
      if (v65)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v65 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
LABEL_23:
        v134[0] = MEMORY[0x1E69E7CC0];
        result = sub_1D5BFC364(0, v65 & ~(v65 >> 63), 0);
        if (v65 < 0)
        {
          __break(1u);
          return result;
        }

        v66 = 0;
        v67 = v134[0];
        do
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v68 = MEMORY[0x1DA6FB460](v66, v62);
          }

          else
          {
            v68 = *(v62 + 8 * v66 + 32);
          }

          v69 = *(v68 + 16);
          v70 = *(v69 + 16);
          v71 = *(v69 + 24);

          v134[0] = v67;
          v73 = *(v67 + 16);
          v72 = *(v67 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_1D5BFC364((v72 > 1), v73 + 1, 1);
            v67 = v134[0];
          }

          ++v66;
          *(v67 + 16) = v73 + 1;
          v74 = v67 + 16 * v73;
          *(v74 + 32) = v70;
          *(v74 + 40) = v71;
        }

        while (v65 != v66);

        goto LABEL_35;
      }
    }

    v67 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v75 = *(v0 + 4536);
    v76 = MEMORY[0x1DA6F9D20](v67, MEMORY[0x1E69E6158]);
    v78 = v77;

    MEMORY[0x1DA6F9910](v76, v78);

    v79 = __dst[0];
    sub_1D6A85C4C(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
    v80 = swift_allocError();
    sub_1D6A863D0(v75, v81, type metadata accessor for DebugFormatManagerError);
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(v80, 0, 0, v79, *(&v79 + 1));

    *(v0 + 4360) = 0;
    *(v0 + 4368) = 0xD000000000000012;
    *(v0 + 4376) = 0x80000001D73E2690;
    *(v0 + 4384) = 0xD000000000000022;
    *(v0 + 4392) = 0x80000001D73DF390;
    *(v0 + 4400) = 0u;
    *(v0 + 4416) = 0u;
    swift_beginAccess();
    v82 = *(v0 + 4536);
    if (*(v133 + v131))
    {
      swift_endAccess();

      sub_1D6AD3108(v0 + 4360);

      sub_1D5F181F4(v0 + 4360);
      sub_1D5B6F2C8(v82, type metadata accessor for DebugFormatManagerError);
    }

    else
    {
      sub_1D5B6F2C8(*(v0 + 4536), type metadata accessor for DebugFormatManagerError);
      swift_endAccess();
      sub_1D5F181F4(v0 + 4360);
    }

    goto LABEL_40;
  }

LABEL_40:
  v83 = (v0 + 688);
  v84 = (v0 + 1120);
  v85 = *(v0 + 4520);
  v86 = *(v0 + 4512);
  v87 = *(v0 + 4504);
  v88 = *(v0 + 4480);
  sub_1D6A857EC();
  sub_1D6A863D0(v88, v87, sub_1D6A86060);
  sub_1D6A863D0(v87, v85, sub_1D6A86060);
  memcpy(v134, (v0 + 352), sizeof(v134));
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  *(v85 + *(v86 + 20)) = sub_1D7168CCC(__dst);
  memcpy(v134, (v0 + 352), sizeof(v134));
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v89 = sub_1D7168CE4(__dst);
  sub_1D5B6F2C8(v87, sub_1D6A86060);
  *(v85 + *(v86 + 24)) = v89;
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&__dst[0] = 0xD00000000000001BLL;
  *(&__dst[0] + 1) = 0x80000001D73E26B0;
  v90 = sub_1D6FB64C0();
  MEMORY[0x1DA6F9910](v90);

  MEMORY[0x1DA6F9910](0x61646174656D202CLL, 0xEB00000000206174);
  v91 = sub_1D6E56610();
  MEMORY[0x1DA6F9910](v91);

  v93 = *(&__dst[0] + 1);
  v92 = *&__dst[0];
  if (qword_1EC87D498 != -1)
  {
    v130 = *&__dst[0];
    swift_once();
    v92 = v130;
  }

  sub_1D5F5EBA0(2, 0, 0, v92, v93);

  [*(v133 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue) setSuspended_];
  *(v0 + 4688) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspace;

  sub_1D725B31C();

  v95 = *(v0 + 1280);
  v94 = *(v0 + 1296);
  v96 = *(v0 + 1264);
  *(v0 + 1064) = v95;
  *(v0 + 1080) = v94;
  v97 = *(v0 + 1296);
  *(v0 + 1096) = *(v0 + 1312);
  v99 = *(v0 + 1216);
  v98 = *(v0 + 1232);
  v100 = *(v0 + 1200);
  *(v0 + 1000) = v99;
  *(v0 + 1016) = v98;
  v101 = *(v0 + 1232);
  v103 = *(v0 + 1248);
  v102 = *(v0 + 1264);
  *(v0 + 1032) = v103;
  *(v0 + 1048) = v102;
  v105 = *(v0 + 1152);
  v104 = *(v0 + 1168);
  v106 = *(v0 + 1136);
  *(v0 + 936) = v105;
  *(v0 + 952) = v104;
  v107 = *(v0 + 1168);
  v109 = *(v0 + 1184);
  v108 = *(v0 + 1200);
  *(v0 + 968) = v109;
  *(v0 + 984) = v108;
  v110 = *(v0 + 1136);
  v111 = *v84;
  *(v0 + 904) = *v84;
  *(v0 + 920) = v110;
  *(v0 + 848) = v95;
  *(v0 + 864) = v97;
  *(v0 + 880) = *(v0 + 1312);
  *(v0 + 784) = v99;
  *(v0 + 800) = v101;
  *(v0 + 816) = v103;
  *(v0 + 832) = v96;
  *(v0 + 720) = v105;
  *(v0 + 736) = v107;
  *(v0 + 752) = v109;
  *(v0 + 768) = v100;
  *(v0 + 1112) = *(v0 + 1328);
  *(v0 + 896) = *(v0 + 1328);
  *v83 = v111;
  *(v0 + 704) = v106;
  if (sub_1D5DEA380(v0 + 688) == 1)
  {
    *(v0 + 4696) = *(v133 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);

    v112 = swift_task_alloc();
    *(v0 + 4704) = v112;
    *v112 = v0;
    v112[1] = sub_1D6A84920;

    return sub_1D60BF454(v0 + 2632, v133);
  }

  v113 = *(v0 + 4520);
  v114 = *(v0 + 864);
  __dst[10] = *(v0 + 848);
  __dst[11] = v114;
  __dst[12] = *(v0 + 880);
  *&__dst[13] = *(v0 + 896);
  v115 = *(v0 + 800);
  __dst[6] = *(v0 + 784);
  __dst[7] = v115;
  v116 = *(v0 + 832);
  __dst[8] = *(v0 + 816);
  __dst[9] = v116;
  v117 = *(v0 + 736);
  __dst[2] = *(v0 + 720);
  __dst[3] = v117;
  v118 = *(v0 + 768);
  __dst[4] = *(v0 + 752);
  __dst[5] = v118;
  v119 = *(v0 + 704);
  __dst[0] = *v83;
  __dst[1] = v119;
  v120 = sub_1D6C570DC(v113);
  v121 = *(v0 + 4488);
  if (v120)
  {
    sub_1D6AA02BC();
    *(v0 + 4736) = *(v121 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editorViewController);

    sub_1D725B31C();

    v122 = *(v0 + 1512);
    *(v0 + 1712) = *(v0 + 1496);
    *(v0 + 1728) = v122;
    *(v0 + 1744) = *(v0 + 1528);
    v123 = *(v0 + 1448);
    *(v0 + 1648) = *(v0 + 1432);
    *(v0 + 1664) = v123;
    v124 = *(v0 + 1480);
    *(v0 + 1680) = *(v0 + 1464);
    *(v0 + 1696) = v124;
    v125 = *(v0 + 1384);
    *(v0 + 1584) = *(v0 + 1368);
    *(v0 + 1600) = v125;
    v126 = *(v0 + 1416);
    *(v0 + 1616) = *(v0 + 1400);
    *(v0 + 1632) = v126;
    v127 = *(v0 + 1352);
    *(v0 + 1552) = *(v0 + 1336);
    *(v0 + 1760) = *(v0 + 1544);
    *(v0 + 1568) = v127;
    v128 = swift_task_alloc();
    *(v0 + 4744) = v128;
    *v128 = v0;
    v128[1] = sub_1D6A851E8;

    return sub_1D6A057C4(v0 + 1552, 0);
  }

  sub_1D6A11BB0();
  sub_1D5F0B7F0(v0 + 904);
  v129 = *(v0 + 4520);
  sub_1D6A85998(*(v0 + 4488), (v0 + 352), *(v0 + 4760), v129);
  v23 = type metadata accessor for DebugFormatPackagesDelta;
  v24 = v129;
LABEL_7:
  sub_1D5B6F2C8(v24, v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D6A84920()
{
  v1 = *v0;

  v2 = *(v1 + 4672);
  v3 = *(v1 + 4664);

  return MEMORY[0x1EEE6DFA0](sub_1D6A84A64, v3, v2);
}

uint64_t sub_1D6A84A64()
{
  v60 = v0;
  v1 = *(v0 + 2776);
  *(v0 + 2576) = *(v0 + 2792);
  v2 = *(v0 + 2792);
  *(v0 + 2592) = *(v0 + 2808);
  v3 = *(v0 + 2808);
  *(v0 + 2608) = *(v0 + 2824);
  v4 = *(v0 + 2712);
  *(v0 + 2512) = *(v0 + 2728);
  v5 = *(v0 + 2728);
  *(v0 + 2528) = *(v0 + 2744);
  v6 = *(v0 + 2744);
  *(v0 + 2544) = *(v0 + 2760);
  v7 = *(v0 + 2760);
  *(v0 + 2560) = *(v0 + 2776);
  v8 = *(v0 + 2648);
  *(v0 + 2448) = *(v0 + 2664);
  v9 = *(v0 + 2664);
  *(v0 + 2464) = *(v0 + 2680);
  v10 = *(v0 + 2680);
  *(v0 + 2480) = *(v0 + 2696);
  v11 = *(v0 + 2696);
  *(v0 + 2496) = *(v0 + 2712);
  *(v0 + 2416) = *(v0 + 2632);
  v12 = *(v0 + 2632);
  *(v0 + 2432) = *(v0 + 2648);
  *(v0 + 2360) = v2;
  *(v0 + 2376) = v3;
  *(v0 + 2392) = *(v0 + 2824);
  *(v0 + 2296) = v5;
  *(v0 + 2312) = v6;
  *(v0 + 2328) = v7;
  *(v0 + 2344) = v1;
  *(v0 + 2232) = v9;
  *(v0 + 2248) = v10;
  *(v0 + 2264) = v11;
  *(v0 + 2280) = v4;
  *(v0 + 2624) = *(v0 + 2840);
  *(v0 + 2408) = *(v0 + 2840);
  *(v0 + 2200) = v12;
  *(v0 + 2216) = v8;
  if (sub_1D5DEA380(v0 + 2200) == 1)
  {

    sub_1D6A11BB0();
    v13 = *(v0 + 4520);
    sub_1D6A85998(*(v0 + 4488), (v0 + 352), *(v0 + 4760), v13);
    sub_1D5B6F2C8(v13, type metadata accessor for DebugFormatPackagesDelta);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 2592);
    v17 = *(v0 + 2560);
    v56 = *(v0 + 2576);
    v57 = v16;
    v18 = *(v0 + 2592);
    v58 = *(v0 + 2608);
    v19 = *(v0 + 2528);
    v21 = *(v0 + 2496);
    v52 = *(v0 + 2512);
    v20 = v52;
    v53 = v19;
    v22 = *(v0 + 2528);
    v23 = *(v0 + 2560);
    v54 = *(v0 + 2544);
    v24 = v54;
    v55 = v23;
    v25 = *(v0 + 2464);
    v27 = *(v0 + 2432);
    v48 = *(v0 + 2448);
    v26 = v48;
    v49 = v25;
    v28 = *(v0 + 2464);
    v29 = *(v0 + 2496);
    v50 = *(v0 + 2480);
    v30 = v50;
    v51 = v29;
    v31 = *(v0 + 2432);
    v47[0] = *(v0 + 2416);
    v32 = v47[0];
    v47[1] = v31;
    *(v0 + 3008) = v56;
    *(v0 + 3024) = v18;
    *(v0 + 3040) = *(v0 + 2608);
    *(v0 + 2944) = v20;
    *(v0 + 2960) = v22;
    *(v0 + 2976) = v24;
    *(v0 + 2992) = v17;
    *(v0 + 2880) = v26;
    *(v0 + 2896) = v28;
    *(v0 + 2912) = v30;
    *(v0 + 2928) = v21;
    *(v0 + 2848) = v32;
    v33 = *(v0 + 4488);
    v59 = *(v0 + 2624);
    *(v0 + 3056) = *(v0 + 2624);
    *(v0 + 2864) = v27;
    sub_1D5F2B0D8(v0 + 2848, v0 + 3064);
    sub_1D6AA103C(v47);
    v34 = *(v0 + 2592);
    *(v0 + 3440) = *(v0 + 2576);
    *(v0 + 3456) = v34;
    *(v0 + 3472) = *(v0 + 2608);
    v35 = *(v0 + 2528);
    *(v0 + 3376) = *(v0 + 2512);
    *(v0 + 3392) = v35;
    v36 = *(v0 + 2560);
    *(v0 + 3408) = *(v0 + 2544);
    *(v0 + 3424) = v36;
    v37 = *(v0 + 2464);
    *(v0 + 3312) = *(v0 + 2448);
    *(v0 + 3328) = v37;
    v38 = *(v0 + 2496);
    *(v0 + 3344) = *(v0 + 2480);
    *(v0 + 3360) = v38;
    v39 = *(v0 + 2432);
    *(v0 + 3280) = *(v0 + 2416);
    *(v0 + 3488) = *(v0 + 2624);
    *(v0 + 3296) = v39;

    sub_1D725B32C();

    sub_1D6AA1610();
    *(v0 + 4712) = *(v33 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editorViewController);

    sub_1D725B31C();

    v40 = *(v0 + 3672);
    *(v0 + 3872) = *(v0 + 3656);
    *(v0 + 3888) = v40;
    *(v0 + 3904) = *(v0 + 3688);
    v41 = *(v0 + 3608);
    *(v0 + 3808) = *(v0 + 3592);
    *(v0 + 3824) = v41;
    v42 = *(v0 + 3640);
    *(v0 + 3840) = *(v0 + 3624);
    *(v0 + 3856) = v42;
    v43 = *(v0 + 3544);
    *(v0 + 3744) = *(v0 + 3528);
    *(v0 + 3760) = v43;
    v44 = *(v0 + 3576);
    *(v0 + 3776) = *(v0 + 3560);
    *(v0 + 3792) = v44;
    v45 = *(v0 + 3512);
    *(v0 + 3712) = *(v0 + 3496);
    *(v0 + 3920) = *(v0 + 3704);
    *(v0 + 3728) = v45;
    v46 = swift_task_alloc();
    *(v0 + 4720) = v46;
    *v46 = v0;
    v46[1] = sub_1D6A84EB8;

    return sub_1D6A057C4(v0 + 3712, 0);
  }
}

uint64_t sub_1D6A84EB8()
{
  v2 = *v1;
  v3 = *v1 + 3712;
  *(*v1 + 4728) = v0;

  if (v0)
  {
    v4 = *(v3 + 16);
    *(v2 + 3928) = *v3;
    *(v2 + 3944) = v4;
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 80);
    *(v2 + 3992) = *(v3 + 64);
    *(v2 + 4008) = v7;
    *(v2 + 3960) = v5;
    *(v2 + 3976) = v6;
    v8 = *(v3 + 96);
    v9 = *(v3 + 112);
    v10 = *(v3 + 144);
    *(v2 + 4056) = *(v3 + 128);
    *(v2 + 4072) = v10;
    *(v2 + 4024) = v8;
    *(v2 + 4040) = v9;
    v11 = *(v3 + 160);
    v12 = *(v3 + 176);
    v13 = *(v3 + 192);
    *(v2 + 4136) = *(v3 + 208);
    *(v2 + 4104) = v12;
    *(v2 + 4120) = v13;
    *(v2 + 4088) = v11;
    sub_1D5F0B7F0(v2 + 3928);
    v14 = *(v2 + 4672);
    v15 = *(v2 + 4664);
    v16 = sub_1D6A85514;
  }

  else
  {
    v17 = *v3;
    *(v2 + 4160) = *(v3 + 16);
    *(v2 + 4144) = v17;
    v18 = *(v3 + 32);
    v19 = *(v3 + 48);
    v20 = *(v3 + 64);
    *(v2 + 4224) = *(v3 + 80);
    *(v2 + 4208) = v20;
    *(v2 + 4192) = v19;
    *(v2 + 4176) = v18;
    v21 = *(v3 + 96);
    v22 = *(v3 + 112);
    v23 = *(v3 + 128);
    *(v2 + 4288) = *(v3 + 144);
    *(v2 + 4272) = v23;
    *(v2 + 4256) = v22;
    *(v2 + 4240) = v21;
    v24 = *(v3 + 160);
    v25 = *(v3 + 176);
    v26 = *(v3 + 192);
    *(v2 + 4352) = *(v3 + 208);
    *(v2 + 4336) = v26;
    *(v2 + 4320) = v25;
    *(v2 + 4304) = v24;
    sub_1D5F0B7F0(v2 + 4144);
    v14 = *(v2 + 4672);
    v15 = *(v2 + 4664);
    v16 = sub_1D6A8508C;
  }

  return MEMORY[0x1EEE6DFA0](v16, v15, v14);
}

uint64_t sub_1D6A8508C()
{

  sub_1D6A11BB0();
  sub_1D5F0B7F0(v0 + 2416);
  v1 = *(v0 + 4520);
  sub_1D6A85998(*(v0 + 4488), (v0 + 352), *(v0 + 4760), v1);
  sub_1D5B6F2C8(v1, type metadata accessor for DebugFormatPackagesDelta);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6A851E8()
{
  v2 = *v1;
  v3 = *v1 + 1552;
  *(*v1 + 4752) = v0;

  if (v0)
  {
    v4 = *(v3 + 16);
    *(v2 + 1768) = *v3;
    *(v2 + 1784) = v4;
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 80);
    *(v2 + 1832) = *(v3 + 64);
    *(v2 + 1848) = v7;
    *(v2 + 1800) = v5;
    *(v2 + 1816) = v6;
    v8 = *(v3 + 96);
    v9 = *(v3 + 112);
    v10 = *(v3 + 144);
    *(v2 + 1896) = *(v3 + 128);
    *(v2 + 1912) = v10;
    *(v2 + 1864) = v8;
    *(v2 + 1880) = v9;
    v11 = *(v3 + 160);
    v12 = *(v3 + 176);
    v13 = *(v3 + 192);
    *(v2 + 1976) = *(v3 + 208);
    *(v2 + 1944) = v12;
    *(v2 + 1960) = v13;
    *(v2 + 1928) = v11;
    sub_1D5F0B7F0(v2 + 1768);
    v14 = *(v2 + 4672);
    v15 = *(v2 + 4664);
    v16 = sub_1D6A85680;
  }

  else
  {
    v17 = *v3;
    *(v2 + 2000) = *(v3 + 16);
    *(v2 + 1984) = v17;
    v18 = *(v3 + 32);
    v19 = *(v3 + 48);
    v20 = *(v3 + 64);
    *(v2 + 2064) = *(v3 + 80);
    *(v2 + 2048) = v20;
    *(v2 + 2032) = v19;
    *(v2 + 2016) = v18;
    v21 = *(v3 + 96);
    v22 = *(v3 + 112);
    v23 = *(v3 + 128);
    *(v2 + 2128) = *(v3 + 144);
    *(v2 + 2112) = v23;
    *(v2 + 2096) = v22;
    *(v2 + 2080) = v21;
    v24 = *(v3 + 160);
    v25 = *(v3 + 176);
    v26 = *(v3 + 192);
    *(v2 + 2192) = *(v3 + 208);
    *(v2 + 2176) = v26;
    *(v2 + 2160) = v25;
    *(v2 + 2144) = v24;
    sub_1D5F0B7F0(v2 + 1984);
    v14 = *(v2 + 4672);
    v15 = *(v2 + 4664);
    v16 = sub_1D6A853B8;
  }

  return MEMORY[0x1EEE6DFA0](v16, v15, v14);
}

uint64_t sub_1D6A853B8()
{

  sub_1D6A11BB0();
  sub_1D5F0B7F0(v0 + 904);
  v1 = *(v0 + 4520);
  sub_1D6A85998(*(v0 + 4488), (v0 + 352), *(v0 + 4760), v1);
  sub_1D5B6F2C8(v1, type metadata accessor for DebugFormatPackagesDelta);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6A85514()
{
  v1 = *(v0 + 4760);
  v2 = *(v0 + 4520);
  v3 = *(v0 + 4488);
  sub_1D5F0B7F0(v0 + 2416);

  sub_1D6A85998(v3, (v0 + 352), v1, v2);
  sub_1D5B6F2C8(*(v0 + 4520), type metadata accessor for DebugFormatPackagesDelta);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D6A85680()
{
  v1 = *(v0 + 4760);
  v2 = *(v0 + 4520);
  v3 = *(v0 + 4488);
  sub_1D5F0B7F0(v0 + 904);

  sub_1D6A85998(v3, (v0 + 352), v1, v2);
  sub_1D5B6F2C8(*(v0 + 4520), type metadata accessor for DebugFormatPackagesDelta);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1D6A857EC()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v12 = v1;
    type metadata accessor for DebugFormatInspectorPaneViewController();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      if (*(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange) == 1)
      {
        v3 = [v0 presentedViewController];
        if (v3)
        {
          v4 = v3;
          [v3 dismissViewControllerAnimated:1 completion:0];
LABEL_17:

          goto LABEL_18;
        }
      }

      goto LABEL_18;
    }
  }

  v5 = [v0 presentedViewController];
  if (!v5)
  {
    return;
  }

  v12 = v5;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 topViewController];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for DebugFormatInspectorPaneViewController();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        if (*(v9 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange) == 1)
        {
          v10 = [v0 presentedViewController];
          if (v10)
          {
            v11 = v10;
            [v10 dismissViewControllerAnimated:1 completion:0];
          }
        }

        v4 = v8;
      }

      else
      {
        v4 = v12;
        v12 = v8;
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

void sub_1D6A85998(uint64_t a1, const void *a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for DebugFormatPackagesDelta(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  [*(*(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue) setSuspended_];
  v12 = [objc_opt_self() sharedApplication];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D6A863D0(a4, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatPackagesDelta);
  v14 = (*(v9 + 80) + 361) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  memcpy((v15 + 24), a2, 0x150uLL);
  *(v15 + 360) = a3;
  sub_1D6A86484(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_1D6A864E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_69;
  v16 = _Block_copy(aBlock);
  sub_1D6A86374(a2, &v18);

  [v12 ts:v16 installCACommitCompletionBlock:?];
  _Block_release(v16);
}

uint64_t sub_1D6A85C4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1D6A85C94(uint64_t a1, const void *a2, char a3, uint64_t a4)
{
  sub_1D6A86554(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;

    memcpy(v16, a2, sizeof(v16));
    v13 = sub_1D71689D8();
    sub_1D6A863D0(a4, v10, type metadata accessor for DebugFormatPackagesDelta);
    v14 = type metadata accessor for DebugFormatPackagesDelta(0);
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
    sub_1D6A9ED58(v13, a3 & 1, v10);

    return sub_1D5B6F2C8(v10, sub_1D6A86554);
  }

  return result;
}

void sub_1D6A85E20(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6A85EA0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6A85F1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D6A80E78(a1, v4, v1 + 24);
}

void sub_1D6A85FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A86094(uint64_t a1)
{
  v4 = *(sub_1D72585BC() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));
  v7 = *(v6 + *(v4 + 64));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D6A82EB4(a1, v5, v6, v7);
}

uint64_t objectdestroy_9Tm_1()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D6A86268(uint64_t a1)
{
  v4 = *(sub_1D72585BC() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));
  v7 = *(v6 + *(v4 + 64));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D6A83274(a1, v5, v6, v7);
}

uint64_t sub_1D6A863D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D6A86438(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1D6A86484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatPackagesDelta(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D6A864E8()
{
  v1 = *(type metadata accessor for DebugFormatPackagesDelta(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 360);
  v4 = v0 + ((*(v1 + 80) + 361) & ~*(v1 + 80));

  return sub_1D6A85C94(v2, (v0 + 24), v3, v4);
}

uint64_t sub_1D6A86590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6A86638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6A80044(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1D6A866F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6A7FA78(a1, v4, v5, v6);
}

uint64_t sub_1D6A867B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for DateComparison(0);
  v121 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v119 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v14;
  v130 = type metadata accessor for FeedItemFilterHeadlineMatcher(0);
  MEMORY[0x1EEE9AC00](v130, v15);
  v123 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v132 = &v112 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v122 = &v112 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v112 - v25;
  sub_1D6A8BDC0(0);
  v129 = v27;
  v133 = *(v27 - 8);
  v28 = *(v133 + 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v128 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v131 = &v112 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v112 - v35;
  v114 = a1;
  if (a1 >> 62)
  {
    v118 = sub_1D7263BFC();
  }

  else
  {
    v118 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = sub_1D725C3FC();
  v38 = sub_1D7262EDC();

  v39 = os_log_type_enabled(v37, v38);
  v116 = a2;
  v117 = a6;
  v115 = a4;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = a2;
    v43 = a3;
    v44 = v41;
    v135[0] = v41;
    *v40 = 136446722;
    *(v40 + 4) = sub_1D5BC5100(v42, v43, v135);
    *(v40 + 12) = 2050;
    *(v40 + 14) = *(a5 + 16);

    *(v40 + 22) = 2050;
    *(v40 + 24) = v118;
    _os_log_impl(&dword_1D5B42000, v37, v38, "%{public}s applying %{public}ld filters to %{public}ld items.", v40, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v45 = v44;
    a3 = v43;
    MEMORY[0x1DA6FD500](v45, -1, -1);
    MEMORY[0x1DA6FD500](v40, -1, -1);
  }

  else
  {
  }

  v46 = MEMORY[0x1E69E7CC0];
  v135[0] = MEMORY[0x1E69E7CC0];
  v47 = *(a5 + 16);
  v48 = v132;
  if (v47)
  {
    v113 = a3;
    v134 = MEMORY[0x1E69E7CC0];
    sub_1D6999ACC(0, v47, 0);
    v49 = v133[80];
    v50 = (v49 + 32) & ~v49;
    v51 = a5 + v50;
    v126 = v50;
    v127 = v49;
    v125 = v50 + v28;
    v46 = v134;
    v124 = *(v133 + 9);
    v133 = v26;
    v52 = v131;
    do
    {
      sub_1D6A8E504(v51, v36, sub_1D6A8BDC0);
      sub_1D6A8E504(v36, v52, sub_1D6A8BDC0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6A8E3BC(v52, v48, type metadata accessor for FeedItemFilterHeadlineMatcher);
        sub_1D6A8E504(v48, v123, type metadata accessor for FeedItemFilterHeadlineMatcher);
        v53 = sub_1D6A8E0B8;
        v54 = sub_1D71A48C4;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v56 = 0;
        v57 = v48;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            sub_1D6A8D830(0);
            v75 = *(v123 + *(v74 + 48));
            v76 = v119;
            sub_1D6A8E3BC(v123, v119, type metadata accessor for DateComparison);
            v77 = (*(v121 + 80) + 17) & ~*(v121 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v75;
            sub_1D6A8E3BC(v76, v56 + v77, type metadata accessor for DateComparison);
            v53 = sub_1D6A8E0B8;
            v68 = sub_1D6A8E5F0;
            goto LABEL_24;
          case 2:
            sub_1D6A8D830(0);
            v83 = *(v123 + *(v82 + 48));
            v84 = v119;
            sub_1D6A8E3BC(v123, v119, type metadata accessor for DateComparison);
            v85 = (*(v121 + 80) + 17) & ~*(v121 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v83;
            sub_1D6A8E3BC(v84, v56 + v85, type metadata accessor for DateComparison);
            v53 = sub_1D6A8E0B8;
            v68 = sub_1D6A8E5EC;
            goto LABEL_24;
          case 3:
            sub_1D6A8D830(0);
            v65 = *(v123 + *(v64 + 48));
            v66 = v119;
            sub_1D6A8E3BC(v123, v119, type metadata accessor for DateComparison);
            v67 = (*(v121 + 80) + 17) & ~*(v121 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v65;
            sub_1D6A8E3BC(v66, v56 + v67, type metadata accessor for DateComparison);
            v53 = sub_1D6A8E0B8;
            v68 = sub_1D6A8E5E8;
LABEL_24:
            v54 = v68;
            v57 = v132;
            break;
          case 4:
            v90 = *v123;
            v91 = *(v123 + 8);
            v56 = swift_allocObject();
            *(v56 + 16) = v91;
            *(v56 + 24) = v90;
            v53 = sub_1D6A8E0B8;
            v59 = sub_1D6A8E5F8;
            goto LABEL_30;
          case 5:
            v56 = *v123;
            v53 = sub_1D6A8E0B8;
            v63 = sub_1D6A8E5D0;
            goto LABEL_37;
          case 6:
            break;
          case 7:
            v56 = 0;
            v53 = sub_1D6A8E0B8;
            v63 = sub_1D71A48E8;
            goto LABEL_37;
          case 8:
            v56 = 0;
            v53 = sub_1D6A8E0B8;
            v63 = sub_1D71A4938;
            goto LABEL_37;
          case 9:
            v56 = swift_allocObject();
            *(v56 + 16) = MEMORY[0x1E69E7CD0];
            v53 = sub_1D6A8E0B8;
            v63 = sub_1D6A8E5E4;
            goto LABEL_37;
          case 10:
            v56 = swift_allocObject();
            *(v56 + 16) = MEMORY[0x1E69E7CD0];
            v53 = sub_1D6A8E0B8;
            v63 = sub_1D6A8E5E0;
            goto LABEL_37;
          case 11:
            v56 = 0;
            v53 = sub_1D6A8E0B8;
            v63 = sub_1D5C00104;
            goto LABEL_37;
          case 12:
            v56 = 0;
            v53 = sub_1D6A8E0B8;
            v63 = sub_1D5DF55B8;
LABEL_37:
            v54 = v63;
            v57 = v48;
            break;
          default:
            v58 = *v123;

            v56 = swift_allocObject();
            *(v56 + 16) = v58;
            v53 = sub_1D6A8E0B8;
            v59 = sub_1D6A8E5FC;
LABEL_30:
            v54 = v59;
            v57 = v132;
            break;
        }
      }

      else
      {
        sub_1D6A8E3BC(v52, v26, type metadata accessor for FeedItemFilterHeadlineMatcher);
        sub_1D6A8E504(v26, v122, type metadata accessor for FeedItemFilterHeadlineMatcher);
        v53 = sub_1D6A8E26C;
        v54 = sub_1D71A48C4;
        v60 = swift_getEnumCaseMultiPayload();
        v56 = 0;
        v57 = v26;
        switch(v60)
        {
          case 1:
            sub_1D6A8D830(0);
            v79 = *(v122 + *(v78 + 48));
            v80 = v119;
            sub_1D6A8E3BC(v122, v119, type metadata accessor for DateComparison);
            v81 = (*(v121 + 80) + 17) & ~*(v121 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v79;
            sub_1D6A8E3BC(v80, v56 + v81, type metadata accessor for DateComparison);
            v53 = sub_1D6A8E26C;
            v73 = sub_1D6A8E5F0;
            goto LABEL_26;
          case 2:
            sub_1D6A8D830(0);
            v87 = *(v122 + *(v86 + 48));
            v88 = v119;
            sub_1D6A8E3BC(v122, v119, type metadata accessor for DateComparison);
            v89 = (*(v121 + 80) + 17) & ~*(v121 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v87;
            sub_1D6A8E3BC(v88, v56 + v89, type metadata accessor for DateComparison);
            v53 = sub_1D6A8E26C;
            v73 = sub_1D6A8E5EC;
            goto LABEL_26;
          case 3:
            sub_1D6A8D830(0);
            v70 = *(v122 + *(v69 + 48));
            v71 = v119;
            sub_1D6A8E3BC(v122, v119, type metadata accessor for DateComparison);
            v72 = (*(v121 + 80) + 17) & ~*(v121 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v70;
            sub_1D6A8E3BC(v71, v56 + v72, type metadata accessor for DateComparison);
            v53 = sub_1D6A8E26C;
            v73 = sub_1D6A8E5E8;
LABEL_26:
            v54 = v73;
            v57 = v133;
            break;
          case 4:
            v92 = *v122;
            v93 = *(v122 + 8);
            v56 = swift_allocObject();
            *(v56 + 16) = v93;
            *(v56 + 24) = v92;
            v53 = sub_1D6A8E26C;
            v62 = sub_1D6A8E5F8;
            goto LABEL_39;
          case 5:
            v56 = *v122;
            v53 = sub_1D6A8E26C;
            v62 = sub_1D6A8E5D0;
            goto LABEL_39;
          case 6:
            break;
          case 7:
            v56 = 0;
            v53 = sub_1D6A8E26C;
            v62 = sub_1D71A48E8;
            goto LABEL_39;
          case 8:
            v56 = 0;
            v53 = sub_1D6A8E26C;
            v62 = sub_1D71A4938;
            goto LABEL_39;
          case 9:
            v56 = swift_allocObject();
            *(v56 + 16) = MEMORY[0x1E69E7CD0];
            v53 = sub_1D6A8E26C;
            v62 = sub_1D6A8E5E4;
            goto LABEL_39;
          case 10:
            v56 = swift_allocObject();
            *(v56 + 16) = MEMORY[0x1E69E7CD0];
            v53 = sub_1D6A8E26C;
            v62 = sub_1D6A8E5E0;
            goto LABEL_39;
          case 11:
            v56 = 0;
            v53 = sub_1D6A8E26C;
            v62 = sub_1D5C00104;
            goto LABEL_39;
          case 12:
            v56 = 0;
            v53 = sub_1D6A8E26C;
            v62 = sub_1D5DF55B8;
            goto LABEL_39;
          default:
            v61 = *v122;

            v56 = swift_allocObject();
            *(v56 + 16) = v61;
            v53 = sub_1D6A8E26C;
            v62 = sub_1D6A8E5FC;
LABEL_39:
            v54 = v62;
            v57 = v133;
            break;
        }
      }

      sub_1D6A8E56C(v57, type metadata accessor for FeedItemFilterHeadlineMatcher);
      v94 = v128;
      sub_1D6A8E3BC(v36, v128, sub_1D6A8BDC0);
      v95 = swift_allocObject();
      *(v95 + 16) = v54;
      *(v95 + 24) = v56;
      sub_1D6A8E3BC(v94, v95 + v126, sub_1D6A8BDC0);
      v134 = v46;
      v97 = *(v46 + 16);
      v96 = *(v46 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1D6999ACC((v96 > 1), v97 + 1, 1);
        v46 = v134;
      }

      *(v46 + 16) = v97 + 1;
      v98 = v46 + 16 * v97;
      *(v98 + 32) = v53;
      *(v98 + 40) = v95;
      v51 += v124;
      --v47;
      v48 = v132;
      v26 = v133;
      v52 = v131;
    }

    while (v47);
    a3 = v113;
  }

  v100 = sub_1D6A8D2AC(v99, v46, v135, sub_1D6A8A520);

  v101 = sub_1D725C3FC();
  v102 = sub_1D7262EDC();

  v103 = os_log_type_enabled(v101, v102);
  v104 = v116;
  if (v103)
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v134 = v106;
    *v105 = 136446722;
    *(v105 + 4) = sub_1D5BC5100(v104, a3, &v134);
    *(v105 + 12) = 2050;
    *(v105 + 14) = v118;
    *(v105 + 22) = 2050;
    if (v100 >> 62)
    {
      v107 = sub_1D7263BFC();
    }

    else
    {
      v107 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v105 + 24) = v107;

    _os_log_impl(&dword_1D5B42000, v101, v102, "%{public}s filtered %{public}ld items to %{public}ld items.", v105, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x1DA6FD500](v106, -1, -1);
    MEMORY[0x1DA6FD500](v105, -1, -1);
  }

  else
  {
  }

  v108 = v117;
  v109 = v118;
  v110 = v135[0];
  *v117 = v100;
  v108[1] = v104;
  v108[2] = a3;
  v108[3] = v109;
  v108[4] = v110;
}

uint64_t sub_1D6A877E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for DateComparison(0);
  v124 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v123 = v14;
  v122 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for FeedItemFilterHeadlineMatcher(0);
  MEMORY[0x1EEE9AC00](v140, v15);
  v127 = v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v126 = v119 - v19;
  sub_1D69A8278(0);
  v139 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v125 = v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v137 = v119 - v25;
  v138 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v128 = v119 - v29;
  sub_1D69A8394(0);
  v136 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  v135 = v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = v119 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v144 = v119 - v40;
  v119[1] = a1;
  v41 = *(a1 + 16);

  v119[2] = a4;
  v42 = sub_1D725C3FC();
  v43 = sub_1D7262EDC();

  v44 = os_log_type_enabled(v42, v43);
  v141 = v37;
  v121 = a3;
  v120 = a6;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v146[0] = v46;
    *v45 = 136446722;
    *(v45 + 4) = sub_1D5BC5100(a2, a3, v146);
    *(v45 + 12) = 2050;
    *(v45 + 14) = *(a5 + 16);

    *(v45 + 22) = 2050;
    *(v45 + 24) = v41;
    _os_log_impl(&dword_1D5B42000, v42, v43, "%{public}s applying %{public}ld filters to %{public}ld items.", v45, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v47 = v46;
    v37 = v141;
    MEMORY[0x1DA6FD500](v47, -1, -1);
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  else
  {
  }

  v48 = MEMORY[0x1E69E7CC0];
  v146[0] = MEMORY[0x1E69E7CC0];
  v49 = *(a5 + 16);
  if (v49)
  {
    v145 = MEMORY[0x1E69E7CC0];
    sub_1D6999B1C(0, v49, 0);
    v50 = *(v31 + 80);
    v51 = (v50 + 32) & ~v50;
    v52 = a5 + v51;
    v131 = v51;
    v132 = v50;
    v130 = v51 + v32;
    v48 = v145;
    v129 = *(v31 + 72);
    v133 = v41;
    v134 = a2;
    do
    {
      v143 = v48;
      v53 = v144;
      sub_1D6A8E504(v52, v144, sub_1D69A8394);
      sub_1D6A8E504(v53, v37, sub_1D69A8394);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v142 = v49;
      if (EnumCaseMultiPayload == 1)
      {
        v55 = v125;
        sub_1D6A8E3BC(v37, v125, sub_1D69A8278);
        sub_1D6A8E504(v55, v127, type metadata accessor for FeedItemFilterHeadlineMatcher);
        v56 = swift_getEnumCaseMultiPayload();
        v57 = sub_1D6A8DB70;
        v58 = sub_1D6A8DB6C;
        v59 = sub_1D71A48C4;
        v60 = v56;
        v61 = 0;
        v62 = v55;
        switch(v60)
        {
          case 1:
            sub_1D6A8D830(0);
            v81 = *(v127 + *(v80 + 48));
            v82 = v122;
            sub_1D6A8E3BC(v127, v122, type metadata accessor for DateComparison);
            v83 = (*(v124 + 80) + 17) & ~*(v124 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = v81;
            sub_1D6A8E3BC(v82, v61 + v83, type metadata accessor for DateComparison);
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v74 = sub_1D6A8DBD4;
            goto LABEL_26;
          case 2:
            sub_1D6A8D830(0);
            v89 = *(v127 + *(v88 + 48));
            v90 = v122;
            sub_1D6A8E3BC(v127, v122, type metadata accessor for DateComparison);
            v91 = (*(v124 + 80) + 17) & ~*(v124 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = v89;
            sub_1D6A8E3BC(v90, v61 + v91, type metadata accessor for DateComparison);
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v74 = sub_1D6A8DBBC;
            goto LABEL_26;
          case 3:
            sub_1D6A8D830(0);
            v71 = *(v127 + *(v70 + 48));
            v72 = v122;
            sub_1D6A8E3BC(v127, v122, type metadata accessor for DateComparison);
            v73 = (*(v124 + 80) + 17) & ~*(v124 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = v71;
            sub_1D6A8E3BC(v72, v61 + v73, type metadata accessor for DateComparison);
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v74 = sub_1D6A8DBA4;
            goto LABEL_26;
          case 4:
            v96 = *v127;
            v97 = *(v127 + 8);
            v61 = swift_allocObject();
            *(v61 + 16) = v97;
            *(v61 + 24) = v96;
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v74 = sub_1D6A8DB98;
LABEL_26:
            v59 = v74;
            v62 = v55;
            break;
          case 5:
            v61 = *v127;
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D6A8C238;
            goto LABEL_34;
          case 6:
            break;
          case 7:
            v61 = 0;
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D71A48E8;
            goto LABEL_34;
          case 8:
            v61 = 0;
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D71A4938;
            goto LABEL_34;
          case 9:
            v61 = swift_allocObject();
            *(v61 + 16) = MEMORY[0x1E69E7CD0];
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D6A8DB90;
            goto LABEL_34;
          case 10:
            v61 = swift_allocObject();
            *(v61 + 16) = MEMORY[0x1E69E7CD0];
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D6A8DB88;
            goto LABEL_34;
          case 11:
            v61 = 0;
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D5C00104;
            goto LABEL_34;
          case 12:
            v61 = 0;
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D5DF55B8;
            goto LABEL_34;
          default:
            v63 = *v127;

            v61 = swift_allocObject();
            *(v61 + 16) = v63;
            v57 = sub_1D6A8DB70;
            v58 = sub_1D6A8DB6C;
            v64 = sub_1D6A8D470;
LABEL_34:
            v59 = v64;
            v62 = v55;
            break;
        }
      }

      else
      {
        v65 = v128;
        sub_1D6A8E3BC(v37, v128, sub_1D69A8278);
        sub_1D6A8E504(v65, v126, type metadata accessor for FeedItemFilterHeadlineMatcher);
        v66 = swift_getEnumCaseMultiPayload();
        v57 = sub_1D6A8DF74;
        v58 = sub_1D6A8E5DC;
        v59 = sub_1D71A48C4;
        v67 = v66;
        v61 = 0;
        v62 = v65;
        switch(v67)
        {
          case 1:
            sub_1D6A8D830(0);
            v85 = *(v126 + *(v84 + 48));
            v86 = v122;
            sub_1D6A8E3BC(v126, v122, type metadata accessor for DateComparison);
            v87 = (*(v124 + 80) + 17) & ~*(v124 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = v85;
            sub_1D6A8E3BC(v86, v61 + v87, type metadata accessor for DateComparison);
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v79 = sub_1D6A8E5F0;
            goto LABEL_28;
          case 2:
            sub_1D6A8D830(0);
            v93 = *(v126 + *(v92 + 48));
            v94 = v122;
            sub_1D6A8E3BC(v126, v122, type metadata accessor for DateComparison);
            v95 = (*(v124 + 80) + 17) & ~*(v124 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = v93;
            sub_1D6A8E3BC(v94, v61 + v95, type metadata accessor for DateComparison);
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v79 = sub_1D6A8E5EC;
            goto LABEL_28;
          case 3:
            sub_1D6A8D830(0);
            v76 = *(v126 + *(v75 + 48));
            v77 = v122;
            sub_1D6A8E3BC(v126, v122, type metadata accessor for DateComparison);
            v78 = (*(v124 + 80) + 17) & ~*(v124 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = v76;
            sub_1D6A8E3BC(v77, v61 + v78, type metadata accessor for DateComparison);
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v79 = sub_1D6A8E5E8;
            goto LABEL_28;
          case 4:
            v98 = *v126;
            v99 = *(v126 + 8);
            v61 = swift_allocObject();
            *(v61 + 16) = v99;
            *(v61 + 24) = v98;
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v79 = sub_1D6A8E5F8;
LABEL_28:
            v59 = v79;
            v62 = v128;
            break;
          case 5:
            v61 = *v126;
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D6A8E5D0;
            goto LABEL_36;
          case 6:
            break;
          case 7:
            v61 = 0;
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D71A48E8;
            goto LABEL_36;
          case 8:
            v61 = 0;
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D71A4938;
            goto LABEL_36;
          case 9:
            v61 = swift_allocObject();
            *(v61 + 16) = MEMORY[0x1E69E7CD0];
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D6A8E5E4;
            goto LABEL_36;
          case 10:
            v61 = swift_allocObject();
            *(v61 + 16) = MEMORY[0x1E69E7CD0];
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D6A8E5E0;
            goto LABEL_36;
          case 11:
            v61 = 0;
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D5C00104;
            goto LABEL_36;
          case 12:
            v61 = 0;
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D5DF55B8;
            goto LABEL_36;
          default:
            v68 = *v126;

            v61 = swift_allocObject();
            *(v61 + 16) = v68;
            v57 = sub_1D6A8DF74;
            v58 = sub_1D6A8E5DC;
            v69 = sub_1D6A8E5FC;
LABEL_36:
            v59 = v69;
            v62 = v128;
            break;
        }
      }

      v100 = v57;
      v101 = v137;
      sub_1D6A8E3BC(v62, v137, sub_1D69A8278);
      v102 = (*(v139 + 80) + 32) & ~*(v139 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = v59;
      *(v103 + 24) = v61;
      sub_1D6A8E3BC(v101, v103 + v102, sub_1D69A8278);
      v104 = v135;
      sub_1D6A8E3BC(v144, v135, sub_1D69A8394);
      v105 = swift_allocObject();
      *(v105 + 16) = v58;
      *(v105 + 24) = v103;
      sub_1D6A8E3BC(v104, v105 + v131, sub_1D69A8394);
      v48 = v143;
      v145 = v143;
      v107 = *(v143 + 16);
      v106 = *(v143 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_1D6999B1C((v106 > 1), v107 + 1, 1);
        v48 = v145;
      }

      *(v48 + 16) = v107 + 1;
      v108 = v48 + 16 * v107;
      *(v108 + 32) = v100;
      *(v108 + 40) = v105;
      v52 += v129;
      v37 = v141;
      v49 = v142 - 1;
      v41 = v133;
      a2 = v134;
    }

    while (v142 != 1);
  }

  v109 = v121;

  v111 = sub_1D6A8CF64(v110, v48, v146);

  v112 = sub_1D725C3FC();
  v113 = sub_1D7262EDC();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v145 = v115;
    *v114 = 136446722;
    *(v114 + 4) = sub_1D5BC5100(a2, v109, &v145);
    *(v114 + 12) = 2050;
    *(v114 + 14) = v41;
    *(v114 + 22) = 2050;
    *(v114 + 24) = *(v111 + 16);

    _os_log_impl(&dword_1D5B42000, v112, v113, "%{public}s filtered %{public}ld items to %{public}ld items.", v114, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x1DA6FD500](v115, -1, -1);
    MEMORY[0x1DA6FD500](v114, -1, -1);
  }

  else
  {
  }

  v116 = v120;
  v117 = v146[0];
  *v120 = v111;
  v116[1] = a2;
  v116[2] = v109;
  v116[3] = v41;
  v116[4] = v117;
}

uint64_t sub_1D6A88B10@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v95 = a2;
  v90 = a6;
  v10 = type metadata accessor for DateComparison(0);
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v92 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v12;
  v105 = type metadata accessor for FeedItemFilterIssueMatcher(0);
  MEMORY[0x1EEE9AC00](v105, v13);
  v97 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v96 = v88 - v18;
  sub_1D6A8D768(0, v17);
  v104 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v103 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v88 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v88 - v29;
  v88[1] = a1;
  if (a1 >> 62)
  {
    v31 = sub_1D7263BFC();
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88[2] = a4;
  v32 = sub_1D725C3FC();
  v33 = sub_1D7262EDC();

  v34 = os_log_type_enabled(v32, v33);
  v91 = a3;
  v89 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v102 = v20;
    v36 = v35;
    v37 = swift_slowAlloc();
    v107[0] = v37;
    *v36 = 136446722;
    *(v36 + 4) = sub_1D5BC5100(v95, a3, v107);
    *(v36 + 12) = 2050;
    *(v36 + 14) = *(a5 + 16);

    *(v36 + 22) = 2050;
    *(v36 + 24) = v31;
    _os_log_impl(&dword_1D5B42000, v32, v33, "%{public}s applying %{public}ld filters to %{public}ld items.", v36, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1DA6FD500](v37, -1, -1);
    v38 = v36;
    v20 = v102;
    MEMORY[0x1DA6FD500](v38, -1, -1);
  }

  else
  {
  }

  v39 = MEMORY[0x1E69E7CC0];
  v107[0] = MEMORY[0x1E69E7CC0];
  v40 = *(a5 + 16);
  if (v40)
  {
    v106 = MEMORY[0x1E69E7CC0];
    sub_1D6999BBC(0, v40, 0);
    v41 = v20[80];
    v42 = (v41 + 32) & ~v41;
    v43 = a5 + v42;
    v39 = v106;
    v100 = v42;
    v101 = v41;
    v99 = v42 + v21;
    v98 = *(v20 + 9);
    v102 = v26;
    do
    {
      sub_1D6A8E504(v43, v30, sub_1D6A8D768);
      sub_1D6A8E504(v30, v26, sub_1D6A8D768);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6A8E3BC(v26, v97, type metadata accessor for FeedItemFilterIssueMatcher);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v45 = sub_1D6A8D7FC;
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload <= 6)
          {
            if (EnumCaseMultiPayload != 5)
            {
              v68 = sub_1D70A89A8;
              v50 = 0;
              goto LABEL_47;
            }

            v50 = *v97;
            v45 = sub_1D6A8D7FC;
            v51 = sub_1D6A8C238;
          }

          else if (EnumCaseMultiPayload == 7)
          {
            v50 = 0;
            v45 = sub_1D6A8D7FC;
            v51 = sub_1D70A89CC;
          }

          else
          {
            v50 = 0;
            v45 = sub_1D6A8D7FC;
            if (EnumCaseMultiPayload == 8)
            {
              v51 = sub_1D5C00104;
            }

            else
            {
              v51 = sub_1D5DF55B8;
            }
          }
        }

        else if (EnumCaseMultiPayload <= 1)
        {
          v58 = *v97;
          if (EnumCaseMultiPayload)
          {
            v50 = swift_allocObject();
            *(v50 + 16) = v58;
            v45 = sub_1D6A8D7FC;
            v51 = sub_1D6A8D8C0;
          }

          else
          {

            v50 = swift_allocObject();
            *(v50 + 16) = v58;
            v45 = sub_1D6A8D7FC;
            v51 = sub_1D6A8D470;
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v60 = v97;
          v61 = *(v97 + 16);
          v50 = swift_allocObject();
          *(v50 + 16) = *v60;
          *(v50 + 32) = v61;
          v45 = sub_1D6A8D7FC;
          v51 = sub_1D6A8D8B4;
        }

        else if (EnumCaseMultiPayload == 3)
        {
          sub_1D6A8D830(0);
          v47 = *(v97 + *(v46 + 48));
          v48 = v92;
          sub_1D6A8E3BC(v97, v92, type metadata accessor for DateComparison);
          v49 = (*(v94 + 80) + 17) & ~*(v94 + 80);
          v50 = swift_allocObject();
          *(v50 + 16) = v47;
          sub_1D6A8E3BC(v48, v50 + v49, type metadata accessor for DateComparison);
          v45 = sub_1D6A8D7FC;
          v51 = sub_1D6A8D89C;
        }

        else
        {
          v64 = *v97;
          v65 = *(v97 + 8);
          v50 = swift_allocObject();
          *(v50 + 16) = v65;
          *(v50 + 24) = v64;
          v45 = sub_1D6A8D7FC;
          v51 = sub_1D6A8D828;
        }

        v68 = v51;
      }

      else
      {
        sub_1D6A8E3BC(v26, v96, type metadata accessor for FeedItemFilterIssueMatcher);
        v52 = swift_getEnumCaseMultiPayload();
        v45 = sub_1D6A8DA6C;
        if (v52 > 4)
        {
          if (v52 <= 6)
          {
            if (v52 != 5)
            {
              v68 = sub_1D70A89A8;
              v50 = 0;
              goto LABEL_47;
            }

            v50 = *v96;
            v45 = sub_1D6A8DA6C;
            v57 = sub_1D6A8E5D0;
          }

          else if (v52 == 7)
          {
            v50 = 0;
            v45 = sub_1D6A8DA6C;
            v57 = sub_1D70A89CC;
          }

          else
          {
            v50 = 0;
            v45 = sub_1D6A8DA6C;
            if (v52 == 8)
            {
              v57 = sub_1D5C00104;
            }

            else
            {
              v57 = sub_1D5DF55B8;
            }
          }
        }

        else if (v52 <= 1)
        {
          v59 = *v96;
          if (v52)
          {
            v50 = swift_allocObject();
            *(v50 + 16) = v59;
            v45 = sub_1D6A8DA6C;
            v57 = sub_1D6A8E600;
          }

          else
          {

            v50 = swift_allocObject();
            *(v50 + 16) = v59;
            v45 = sub_1D6A8DA6C;
            v57 = sub_1D6A8E5FC;
          }
        }

        else if (v52 == 2)
        {
          v62 = v96;
          v63 = *(v96 + 16);
          v50 = swift_allocObject();
          *(v50 + 16) = *v62;
          *(v50 + 32) = v63;
          v45 = sub_1D6A8DA6C;
          v57 = sub_1D6A8E5CC;
        }

        else if (v52 == 3)
        {
          sub_1D6A8D830(0);
          v54 = *(v96 + *(v53 + 48));
          v55 = v92;
          sub_1D6A8E3BC(v96, v92, type metadata accessor for DateComparison);
          v56 = (*(v94 + 80) + 17) & ~*(v94 + 80);
          v50 = swift_allocObject();
          *(v50 + 16) = v54;
          sub_1D6A8E3BC(v55, v50 + v56, type metadata accessor for DateComparison);
          v45 = sub_1D6A8DA6C;
          v57 = sub_1D6A8E5D8;
        }

        else
        {
          v66 = *v96;
          v67 = *(v96 + 8);
          v50 = swift_allocObject();
          *(v50 + 16) = v67;
          *(v50 + 24) = v66;
          v45 = sub_1D6A8DA6C;
          v57 = sub_1D6A8E5F4;
        }

        v68 = v57;
      }

LABEL_47:
      v69 = v103;
      sub_1D6A8E3BC(v30, v103, sub_1D6A8D768);
      v70 = swift_allocObject();
      *(v70 + 16) = v68;
      *(v70 + 24) = v50;
      sub_1D6A8E3BC(v69, v70 + v100, sub_1D6A8D768);
      v106 = v39;
      v72 = *(v39 + 16);
      v71 = *(v39 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_1D6999BBC((v71 > 1), v72 + 1, 1);
        v39 = v106;
      }

      *(v39 + 16) = v72 + 1;
      v73 = v39 + 16 * v72;
      *(v73 + 32) = v45;
      *(v73 + 40) = v70;
      v43 += v98;
      --v40;
      v26 = v102;
    }

    while (v40);
  }

  v75 = sub_1D6A8D108(v74, v39, v107);

  v76 = v91;

  v77 = sub_1D725C3FC();
  v78 = sub_1D7262EDC();

  v79 = os_log_type_enabled(v77, v78);
  v80 = v89;
  if (v79)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v106 = v82;
    *v81 = 136446722;
    *(v81 + 4) = sub_1D5BC5100(v95, v76, &v106);
    *(v81 + 12) = 2050;
    *(v81 + 14) = v80;
    *(v81 + 22) = 2050;
    if (v75 >> 62)
    {
      v83 = sub_1D7263BFC();
    }

    else
    {
      v83 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v81 + 24) = v83;

    _os_log_impl(&dword_1D5B42000, v77, v78, "%{public}s filtered %{public}ld items to %{public}ld items.", v81, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1DA6FD500](v82, -1, -1);
    MEMORY[0x1DA6FD500](v81, -1, -1);
  }

  else
  {
  }

  v84 = v90;
  v85 = v107[0];
  v86 = v95;
  *v90 = v75;
  v84[1] = v86;
  v84[2] = v76;
  v84[3] = v80;
  v84[4] = v85;
}

uint64_t sub_1D6A89794@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  if (a1 >> 62)
  {
    v9 = sub_1D7263BFC();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = sub_1D725C3FC();
  v11 = sub_1D7262EDC();

  v48 = v9;
  v49 = a2;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51 = v13;
    *v12 = 136446722;
    *(v12 + 4) = sub_1D5BC5100(a2, a3, &v51);
    *(v12 + 12) = 2050;
    *(v12 + 14) = *(a4 + 16);

    *(v12 + 22) = 2050;
    *(v12 + 24) = v9;
    _os_log_impl(&dword_1D5B42000, v10, v11, "%{public}s applying %{public}ld filters to %{public}ld items.", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {
  }

  v14 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  v15 = *(a4 + 16);
  if (v15)
  {
    v46 = a5;
    v47 = a3;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D6999C0C(0, v15, 0);
    v16 = (a4 + 57);
    v14 = v50;
    do
    {
      v17 = *(v16 - 25);
      v18 = *(v16 - 17);
      v19 = *(v16 - 9);
      v20 = *(v16 - 1);
      if (*v16)
      {
        if (*(v16 - 1))
        {
          if (v20 == 1)
          {
            sub_1D6A8C1DC(v17, v18, v19, 1);
            v21 = sub_1D6A8E5D0;
            v22 = v17;
          }

          else
          {
            v25 = v19 | v18;
            v26 = sub_1D6C6B52C;
            if (v19 | v18 | v17 && ((v26 = sub_1D6C6B568, v17 != 1) || v25) && ((v26 = sub_1D6C6B598, v17 != 2) || v25))
            {
              v22 = 0;
              if (v25)
              {
                v35 = 0;
              }

              else
              {
                v35 = v17 == 3;
              }

              if (v35)
              {
                v21 = sub_1D5C00104;
              }

              else
              {
                v21 = sub_1D5DF55B8;
              }
            }

            else
            {
              v21 = v26;
              v22 = 0;
            }
          }
        }

        else
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v17;

          v21 = sub_1D6A8E5FC;
        }

        v27 = swift_allocObject();
        *(v27 + 16) = v21;
        *(v27 + 24) = v22;
        *(v27 + 32) = v17;
        *(v27 + 40) = v18;
        *(v27 + 48) = v19;
        *(v27 + 56) = v20;
        *(v27 + 57) = 1;
        v28 = sub_1D6A8D5E8;
      }

      else
      {
        if (*(v16 - 1))
        {
          if (v20 == 1)
          {
            sub_1D6A8C1DC(v17, v18, v19, 1);
            v23 = sub_1D6A8E5D0;
            v24 = v17;
          }

          else
          {
            v29 = v19 | v18;
            v30 = sub_1D6C6B52C;
            if (v19 | v18 | v17 && ((v30 = sub_1D6C6B568, v17 != 1) || v29) && ((v30 = sub_1D6C6B598, v17 != 2) || v29))
            {
              v24 = 0;
              if (v29)
              {
                v36 = 0;
              }

              else
              {
                v36 = v17 == 3;
              }

              if (v36)
              {
                v23 = sub_1D5C00104;
              }

              else
              {
                v23 = sub_1D5DF55B8;
              }
            }

            else
            {
              v23 = v30;
              v24 = 0;
            }
          }
        }

        else
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v17;

          v23 = sub_1D6A8E5FC;
        }

        v27 = swift_allocObject();
        *(v27 + 16) = v23;
        *(v27 + 24) = v24;
        *(v27 + 32) = v17;
        *(v27 + 40) = v18;
        *(v27 + 48) = v19;
        *(v27 + 56) = v20;
        *(v27 + 57) = 0;
        v28 = sub_1D6A8D64C;
      }

      v31 = v28;
      sub_1D6A8C1D8(v17, v18, v19, v20);
      v50 = v14;
      v33 = *(v14 + 16);
      v32 = *(v14 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D6999C0C((v32 > 1), v33 + 1, 1);
        v14 = v50;
      }

      *(v14 + 16) = v33 + 1;
      v34 = v14 + 16 * v33;
      *(v34 + 32) = v31;
      *(v34 + 40) = v27;
      v16 += 32;
      --v15;
    }

    while (v15);
    a5 = v46;
    a3 = v47;
  }

  v38 = sub_1D6A8D2AC(v37, v14, &v51, sub_1D6A8AF94);

  v39 = sub_1D725C3FC();
  v40 = sub_1D7262EDC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v41 = 136446722;
    *(v41 + 4) = sub_1D5BC5100(v49, a3, &v50);
    *(v41 + 12) = 2050;
    *(v41 + 14) = v48;
    *(v41 + 22) = 2050;
    if (v38 >> 62)
    {
      v43 = sub_1D7263BFC();
    }

    else
    {
      v43 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 24) = v43;

    _os_log_impl(&dword_1D5B42000, v39, v40, "%{public}s filtered %{public}ld items to %{public}ld items.", v41, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1DA6FD500](v42, -1, -1);
    MEMORY[0x1DA6FD500](v41, -1, -1);
  }

  else
  {
  }

  v44 = v51;
  *a5 = v38;
  a5[1] = v49;
  a5[2] = a3;
  a5[3] = v48;
  a5[4] = v44;
}