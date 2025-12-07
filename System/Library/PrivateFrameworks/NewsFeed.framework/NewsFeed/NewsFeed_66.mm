uint64_t sub_1D613661C(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

void sub_1D6136680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D61366E0(uint64_t a1, uint64_t a2)
{
  sub_1D5B4D3E0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6136744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61367AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D613686C(uint64_t a1)
{
  if (!qword_1EDF18AB8)
  {
    sub_1D5B4D3E0(255);
    sub_1D5B4D72C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18AB8);
    }
  }
}

uint64_t sub_1D61368DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6136994()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v3 = sub_1D726203C();
  [v2 setTitle_];

  v4 = sub_1D726203C();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v5 style:2 target:v1 action:sel_doDismiss];

    v7 = [objc_opt_self() systemGrayColor];
    [v6 setTintColor_];

    v8 = [v1 navigationItem];
    sub_1D5E42B34();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D72816C0;
    *(v9 + 32) = v6;
    sub_1D5B816F8();
    v10 = v6;
    v11 = sub_1D726265C();

    [v8 setRightBarButtonItems_];

    v12 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tableView];
    [v12 setDelegate_];
    [v12 setDataSource_];
    [v12 setAlwaysBounceVertical_];
    type metadata accessor for DebugJournalTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for FeedItemTableViewCell();
    sub_1D7262DAC();
    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D6136DA8(id a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DebugJournalGroupItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v136 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_sections);
  v16 = sub_1D7258DAC();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_106;
  }

  if (v16 >= *(v15 + 16))
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v17 = *(v15 + 24 * v16 + 48);

  v18 = sub_1D7258D7C();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v18 >= *(v17 + 16))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  sub_1D6139070(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v14, type metadata accessor for DebugJournalGroupItem);

  sub_1D6139070(v14, v10, type metadata accessor for DebugJournalGroupItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = *(v10 + 2);
      v141 = *(v10 + 1);
      v142 = v26;
      v143 = *(v10 + 6);
      a1 = sub_1D6137F58(a1, a2);
      v27 = [a1 textLabel];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D726203C();

        [v28 setText_];
      }

      else
      {
      }

      v54 = [a1 detailTextLabel];
      if (v54)
      {
        v55 = v54;
        sub_1D6139070(&v141, &v139, sub_1D5F17E28);
        if (v140)
        {
          __swift_project_boxed_opaque_existential_1(&v139, v140);
          sub_1D72644BC();
          __swift_destroy_boxed_opaque_existential_1(&v139);
        }

        else
        {
          sub_1D6138F24(&v139, sub_1D5F17E28);
        }

        v86 = sub_1D726203C();

        [v55 setText_];
      }

      v87 = [a1 imageView];
      if (v87)
      {
        v88 = v87;
        [v87 setImage_];
      }

      sub_1D6138F24(&v141, sub_1D5F17E28);
      goto LABEL_103;
    }

    v37 = *(v10 + 2);
    v36 = *(v10 + 3);
    v38 = v10[32];
    a1 = sub_1D6137F58(a1, a2);
    v39 = [a1 textLabel];
    if (v39)
    {
      v40 = v39;
      v41 = sub_1D726203C();

      [v40 setText_];
    }

    else
    {
    }

    v56 = [a1 detailTextLabel];
    if (!v56)
    {
LABEL_69:
      if (!v38)
      {
        v97 = [a1 imageView];
        if (v97)
        {
          v98 = v97;
          v99 = sub_1D726203C();
          v100 = [objc_opt_self() systemImageNamed_];

          [v98 setImage_];
        }

        v101 = [a1 imageView];
        if (v101)
        {
          v102 = v101;
          v103 = [objc_opt_self() systemRedColor];
          [v102 setTintColor_];
        }

        sub_1D5DF6958(v37, v36, 0);
        goto LABEL_103;
      }

      if (v38 == 1)
      {
        v90 = [a1 imageView];
        if (v90)
        {
          v91 = v90;
          v92 = sub_1D726203C();
          v93 = [objc_opt_self() systemImageNamed_];

          [v91 setImage_];
        }

        v94 = [a1 imageView];
        if (v94)
        {
          v95 = v94;
          v96 = [objc_opt_self() systemGray2Color];
          [v95 setTintColor_];
        }

        sub_1D5DF6958(v37, v36, 1u);
        goto LABEL_103;
      }

      v104 = [a1 imageView];
      v105 = v104;
      if (v37 | v36)
      {
        if (v104)
        {
          v106 = sub_1D726203C();
          v107 = [objc_opt_self() systemImageNamed_];

          [v105 setImage_];
        }

        v108 = [a1 imageView];
        if (!v108)
        {
          goto LABEL_102;
        }

        v109 = v108;
        v110 = [objc_opt_self() systemGray2Color];
      }

      else
      {
        if (v104)
        {
          v131 = sub_1D726203C();
          v132 = [objc_opt_self() systemImageNamed_];

          [v105 setImage_];
        }

        v133 = [a1 imageView];
        if (!v133)
        {
          goto LABEL_102;
        }

        v109 = v133;
        v110 = [objc_opt_self() systemGreenColor];
      }

      v134 = v110;
      [v109 setTintColor_];

LABEL_102:
LABEL_103:
      sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);
      return a1;
    }

    v57 = v56;
    if (v38)
    {
      if (v38 != 1)
      {
LABEL_68:
        v89 = sub_1D726203C();

        [v57 setText_];

        goto LABEL_69;
      }

      v58 = 0x202C70696B53;
      v59 = 0xE600000000000000;
    }

    else
    {
      v58 = 0x202C65766F6D6552;
      v59 = 0xE800000000000000;
    }

    *&v141 = v58;
    *(&v141 + 1) = v59;
    MEMORY[0x1DA6F9910](v37, v36);
    goto LABEL_68;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      sub_1D5B63F14(v10, &v141);
      type metadata accessor for FeedItemTableViewCell();
      a1 = sub_1D7262D8C();
      v20 = [a1 textLabel];
      if (v20)
      {
        v21 = v20;
        v23 = *(&v142 + 1);
        v22 = v143;
        __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
        (*(*(v22 + 8) + 24))(v23);
        if (v24)
        {
          v25 = sub_1D726203C();
        }

        else
        {
          v25 = 0;
        }

        [v21 setText_];
      }

      v60 = [a1 textLabel];
      if (v60)
      {
        v61 = v60;
        v62 = [objc_opt_self() systemFontOfSize_];
        [v61 setFont_];
      }

      v63 = [a1 textLabel];
      if (v63)
      {
        v64 = v63;
        [v63 setNumberOfLines_];
      }

      v65 = [a1 detailTextLabel];
      if (v65)
      {
        v66 = v65;
        v67 = [objc_opt_self() systemFontOfSize_];
        [v66 setFont_];
      }

      [a1 setAccessoryType_];
      v68 = [a1 textLabel];
      if (v68)
      {
        v69 = v68;
        v70 = [objc_opt_self() labelColor];
        [v69 setTextColor_];
      }

      v71 = [a1 detailTextLabel];
      if (v71)
      {
        v72 = v71;
        v73 = [objc_opt_self() secondaryLabelColor];
        [v72 setTextColor_];
      }

      v74 = [a1 detailTextLabel];
      if (v74)
      {
        v75 = v74;
        [v74 setNumberOfLines_];
      }

      v77 = *(&v142 + 1);
      v76 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
      v78 = (*(*(v76 + 8) + 48))(v77);
      if (!v78)
      {
        v84 = [a1 detailTextLabel];
        if (!v84)
        {
          goto LABEL_89;
        }

        a2 = v84;
        v85 = sub_1D726203C();
LABEL_88:
        [a2 setText_];

LABEL_89:
        v111 = [a1 imageView];
        if (v111)
        {
          v112 = v111;
          [v111 setImage_];
        }

        v113 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D5B68374(&v141, &v139);
        sub_1D5B68374(&v139, v138);
        v114 = swift_allocObject();
        *(v114 + 16) = v113;
        sub_1D5B63F14(&v139, v114 + 24);
        __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));

        v115 = sub_1D725AA4C();
        v117 = v116;
        v118 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages;
        swift_beginAccess();
        v119 = *(v3 + v118);
        if (*(v119 + 16))
        {
          v120 = sub_1D5B69D90(v115, v117);
          v122 = v121;

          if (v122)
          {
            v123 = *(*(v119 + 56) + 8 * v120);
            swift_endAccess();
            v124 = v123;
            sub_1D61381B8(v124, v113, v138);

            sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);
LABEL_96:
            __swift_destroy_boxed_opaque_existential_1(v138);

            __swift_destroy_boxed_opaque_existential_1(&v141);
            return a1;
          }
        }

        else
        {
        }

        swift_endAccess();
        v125 = *(&v142 + 1);
        v126 = v143;
        __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
        v127 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_placeholderImage);
        v128 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D5B68374(&v141, v137);
        v129 = swift_allocObject();
        v129[2] = v128;
        sub_1D5B63F14(v137, (v129 + 3));
        v129[8] = sub_1D6139054;
        v129[9] = v114;
        v130 = *(v126 + 8);

        sub_1D70A59C8(v127, sub_1D6139060, v129, v125, v130);

        sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);

        goto LABEL_96;
      }

      v79 = v78;
      [v78 sortingScore];

      v80 = [a1 detailTextLabel];
      if (!v80)
      {
        goto LABEL_89;
      }

      a2 = v80;
      if (qword_1EC87DD88 == -1)
      {
LABEL_57:
        v81 = qword_1EC9BAF48;
        v82 = sub_1D725A62C();
        v83 = [v81 stringForObjectValue_];

        if (v83)
        {
          sub_1D726207C();
        }

        else
        {
          sub_1D7262A9C();
        }

        v85 = sub_1D726203C();

        goto LABEL_88;
      }

LABEL_109:
      swift_once();
      goto LABEL_57;
    }

    a1 = sub_1D6137F58(a1, a2);
    v33 = [a1 textLabel];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1D726203C();

      [v34 setText_];
    }

    else
    {
    }

    v50 = [a1 detailTextLabel];
    if (v50)
    {
      v51 = v50;
      [v50 setText_];
    }

    v52 = [a1 imageView];
    if (v52)
    {
      v53 = v52;
      [v52 setImage_];
    }

    goto LABEL_102;
  }

  a1 = sub_1D6137F58(a1, a2);
  v30 = [a1 textLabel];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1D726203C();

    [v31 setText_];
  }

  else
  {
  }

  v42 = [a1 detailTextLabel];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1D726203C();
    [v43 setText_];
  }

  v45 = [a1 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setImage_];
  }

  sub_1D6138FE8(0);
  v48 = *(v47 + 48);
  [a1 setSelectionStyle_];
  [a1 setAccessoryType_];

  sub_1D6138F24(v14, type metadata accessor for DebugJournalGroupItem);
  v49 = sub_1D725F88C();
  (*(*(v49 - 8) + 8))(&v10[v48], v49);
  return a1;
}

id sub_1D6137F58(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DebugJournalTableViewCell();
  v2 = sub_1D7262D8C();
  v3 = [v2 textLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemFontOfSize_];
    [v4 setFont_];
  }

  v6 = [v2 textLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() labelColor];
    [v7 setTextColor_];
  }

  v9 = [v2 textLabel];
  if (v9)
  {
    v10 = v9;
    [v9 setNumberOfLines_];
  }

  v11 = [v2 detailTextLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() secondaryLabelColor];
    [v12 setTextColor_];
  }

  v14 = [v2 detailTextLabel];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() systemFontOfSize_];
    [v15 setFont_];
  }

  v17 = [v2 detailTextLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setNumberOfLines_];
  }

  [v2 setSelectionStyle_];
  [v2 setAccessoryType_];

  return v2;
}

void sub_1D61381B8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    v9 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = [Strong textLabel];

  if (v7)
  {
    v8 = [v7 text];

    if (v8)
    {
      v9 = sub_1D726207C();
      v7 = v10;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v13 = (*(*(v12 + 8) + 24))(v11);
  if (!v7)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_16:

    return;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  if (v9 == v13 && v7 == v14)
  {
  }

  else
  {
    v16 = sub_1D72646CC();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

LABEL_19:
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 imageView];

    if (v19)
    {
      [v19 setImage_];
    }
  }
}

unint64_t sub_1D6138528(uint64_t a1)
{
  *&v47 = a1;
  v2 = sub_1D725F88C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v46 - v9;
  v11 = type metadata accessor for DebugJournalGroupItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v46 - v18;
  v48 = v1;
  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_sections];
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v20 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = *(v20 + 24 * result + 48);

  result = sub_1D7258D7C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < *(v22 + 16))
  {
    sub_1D6139070(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v19, type metadata accessor for DebugJournalGroupItem);

    sub_1D6139070(v19, v15, type metadata accessor for DebugJournalGroupItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D6138F24(v19, type metadata accessor for DebugJournalGroupItem);

        v36 = sub_1D5F17E28;
        v37 = (v15 + 16);
        return sub_1D6138F24(v37, v36);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v46[1] = *v15;
        sub_1D6138FE8(0);
        v39 = v3;
        (*(v3 + 32))(v10, &v15[*(v38 + 48)], v2);
        v40 = sub_1D7258D4C();
        [v47 deselectRowAtIndexPath:v40 animated:1];

        (*(v3 + 16))(v6, v10, v2);
        v41 = objc_allocWithZone(sub_1D725E39C());
        v42 = sub_1D725E38C();
        v43 = [v42 navigationItem];
        v44 = sub_1D726203C();

        [v43 setTitle_];

        v45 = [v48 navigationController];
        [v45 pushViewController:v42 animated:1];

        (*(v39 + 8))(v10, v2);
        goto LABEL_13;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v24 = *(v15 + 5);
        sub_1D5B63F14(v15, v52);
        v25 = sub_1D7258D4C();
        [v47 deselectRowAtIndexPath:v25 animated:1];

        sub_1D5B68374(v52, v51);
        v26 = v48;
        v27 = *&v48[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_cloudContext];
        v47 = *&v48[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_commandCenter];
        sub_1D5B68374(&v48[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_radarAttachmentProvider], v50);
        v28 = type metadata accessor for DebugInspectionViewController();
        v29 = objc_allocWithZone(v28);
        v30 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView;
        v31 = objc_allocWithZone(MEMORY[0x1E69DD020]);

        *&v29[v30] = [v31 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections] = MEMORY[0x1E69E7CC0];
        v32 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_coverViewManager;
        sub_1D725D7AC();
        swift_allocObject();
        *&v29[v32] = sub_1D725D79C();
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_inspector] = v24;
        sub_1D5B68374(v51, &v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem]);
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter] = v47;
        *&v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_cloudContext] = v27;
        sub_1D5B68374(v50, &v29[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider]);
        v49.receiver = v29;
        v49.super_class = v28;
        swift_unknownObjectRetain();
        v33 = v27;
        v34 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v51);
        v35 = [v26 navigationController];
        [v35 pushViewController:v34 animated:1];

        __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_13:
        v36 = type metadata accessor for DebugJournalGroupItem;
        v37 = v19;
        return sub_1D6138F24(v37, v36);
      }
    }

    sub_1D6138F24(v19, type metadata accessor for DebugJournalGroupItem);
    v37 = v15;
    v36 = type metadata accessor for DebugJournalGroupItem;
    return sub_1D6138F24(v37, v36);
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1D6138C9C(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = sub_1D725AA4C();
    v11 = v10;
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = *&v8[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage];
    }

    v13 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages;
    swift_beginAccess();
    v14 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v8[v13];
    *&v8[v13] = 0x8000000000000000;
    sub_1D6D7A208(v12, v9, v11, isUniquelyReferenced_nonNull_native);

    *&v8[v13] = v18;
    swift_endAccess();
    v16 = v14;
    if (!a1)
    {
      v16 = *&v8[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage];
    }

    v17 = v14;
    a4(v16);
  }
}

uint64_t sub_1D6138F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6138F84()
{
  result = qword_1EC884160;
  if (!qword_1EC884160)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC884160);
  }

  return result;
}

void sub_1D6138FE8(uint64_t a1)
{
  if (!qword_1EC89C820)
  {
    sub_1D725F88C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89C820);
    }
  }
}

uint64_t sub_1D6139070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61390D8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tableView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages] = MEMORY[0x1E69E7CC8];
  v27 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_placeholderImage;
  v28 = v0;
  v2 = objc_opt_self();
  v3 = [v2 systemGrayColor];
  v4 = [v2 lightGrayColor];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DB958];
  v26 = v5;
  v7 = [v5 systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v25 = vdupq_n_s64(0x4046000000000000uLL);
  *(v9 + 24) = v25;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = v7;
  *(v9 + 64) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D6139584;
  *(v10 + 24) = v9;
  v33 = sub_1D6139588;
  v34 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1D62E78B0;
  v32 = &block_descriptor_23;
  v11 = _Block_copy(&aBlock);
  v12 = v3;
  v13 = v7;
  v14 = v4;

  v15 = [v8 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    goto LABEL_4;
  }

  v11 = v28;
  *&v28[v27] = v15;
  v27 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage;
  v16 = [v2 lightGrayColor];
  v17 = [v26 systemFontOfSize:12.0 weight:v6];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = v25;
  *(v19 + 40) = xmmword_1D729E1B0;
  *(v19 + 56) = v17;
  *(v19 + 64) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D61395AC;
  *(v20 + 24) = v19;
  v33 = sub_1D61395B0;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1D62E78B0;
  v32 = &block_descriptor_27_0;
  v21 = _Block_copy(&aBlock);
  v22 = v17;
  v23 = v16;

  v15 = [v18 &selRef_darkStyleNavigationChromeBackgroundImage + 2];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_4:
    __break(1u);
  }

  *&v11[v27] = v15;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D6139614@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  *&v15 = MEMORY[0x1EEE9AC00](v13, v14).n128_u64[0];
  v17 = &v31 - v16;
  if (*v2)
  {
    if (*v2 == 1)
    {
      v18 = [a1 loadDate];
      if (v18)
      {
        v19 = v18;
        sub_1D72588BC();

        v20 = sub_1D725891C();
        (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
      }

      else
      {
        v27 = sub_1D725891C();
        (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
      }

      v17 = v12;
    }

    else
    {
      v24 = [a1 publisherSpecifiedArticleIDsModifiedDate];
      if (v24)
      {
        v25 = v24;
        sub_1D72588BC();

        v26 = sub_1D725891C();
        (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
      }

      else
      {
        v29 = sub_1D725891C();
        (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
      }

      v17 = v8;
    }
  }

  else
  {
    v21 = [a1 fetchDate];
    if (v21)
    {
      v22 = v21;
      sub_1D72588BC();

      v23 = sub_1D725891C();
      (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
    }

    else
    {
      v28 = sub_1D725891C();
      (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    }
  }

  return sub_1D5DF42F8(v17, a2);
}

uint64_t sub_1D6139900(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574614464616F6CLL;
  v5 = 0x80000001D73B9C60;
  if (v2 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = 0x80000001D73B9C60;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7461446863746566;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  v8 = 0x6574614464616F6CLL;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000028;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461446863746566;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D61399FC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6139AA8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6139B40(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6139BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D613AD60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6139C18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE800000000000000;
  v5 = 0x6574614464616F6CLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000028;
    v4 = 0x80000001D73B9C60;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461446863746566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatTagBinding.DateTime.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6139DCC()
{
  result = qword_1EC884168;
  if (!qword_1EC884168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884168);
  }

  return result;
}

unint64_t sub_1D6139E20(uint64_t a1)
{
  result = sub_1D6139E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6139E48()
{
  result = qword_1EC884170;
  if (!qword_1EC884170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884170);
  }

  return result;
}

unint64_t sub_1D6139E9C(void *a1)
{
  a1[1] = sub_1D6139ED4();
  a1[2] = sub_1D6139F28();
  result = sub_1D6139DCC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6139ED4()
{
  result = qword_1EC884178;
  if (!qword_1EC884178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884178);
  }

  return result;
}

unint64_t sub_1D6139F28()
{
  result = qword_1EC884180;
  if (!qword_1EC884180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884180);
  }

  return result;
}

unint64_t sub_1D6139FD0()
{
  result = qword_1EC884188;
  if (!qword_1EC884188)
  {
    sub_1D613A028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884188);
  }

  return result;
}

void sub_1D613A028()
{
  if (!qword_1EC884190)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884190);
    }
  }
}

unint64_t sub_1D613A07C()
{
  result = qword_1EC884198;
  if (!qword_1EC884198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884198);
  }

  return result;
}

unint64_t sub_1D613A0D0()
{
  result = qword_1EC8841A0;
  if (!qword_1EC8841A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841A0);
  }

  return result;
}

void sub_1D613A124(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v132 = a1;
  v115 = a2;
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v129 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v128 = &v115 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v116 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v126 = &v115 - v21;
  v22 = type metadata accessor for FormatInspectionItem(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v125 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v124 = &v115 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v123 = &v115 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v122 = &v115 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v121 = &v115 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v120 = &v115 - v40;
  v119 = 0x80000001D73CAF00;
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v135 = v41;
  v42 = 0;
  v136 = *(v23 + 72);
  v134 = *(v23 + 80);
  v43 = (v134 + 32) & ~v134;
  v44 = MEMORY[0x1E69E7CC0];
  v133 = xmmword_1D7273AE0;
  v118 = xmmword_1D729E260;
  v117 = xmmword_1D729E250;
  v127 = v14;
  v130 = v22;
  v131 = v18;
  while (1)
  {
    v45 = byte_1F50F5D98[v42 + 32];
    v46 = swift_allocObject();
    *(v46 + 16) = v133;
    if (!v45)
    {
      v51 = [v132 fetchDate];
      if (v51)
      {
        v52 = v51;
        sub_1D72588BC();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v68 = sub_1D725891C();
      v69 = *(v68 - 8);
      (*(v69 + 56))(v18, v53, 1, v68);
      v70 = v126;
      sub_1D5DF42F8(v18, v126);
      if ((*(v69 + 48))(v70, 1, v68) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v70);
      }

      else
      {
        v71 = sub_1D72587AC();
        v73 = v72;
        (*(v69 + 8))(v70, v68);
        if (v73)
        {
          v74 = HIBYTE(v73) & 0xF;
          if ((v73 & 0x2000000000000000) == 0)
          {
            v74 = v71 & 0xFFFFFFFFFFFFLL;
          }

          if (v74)
          {
            *&v137 = v71;
            *(&v137 + 1) = v73;
            *&v138 = 0;
            *(&v138 + 1) = MEMORY[0x1E69E6158];
            v22 = v130;
            v75 = *(v130 + 24);
            v76 = v123;
            sub_1D5EA7510(&v137, &v123[v75]);
            v77 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v77 - 8) + 56))(&v76[v75], 0, 1, v77);
            *v76 = v118;
            *(v76 + 2) = 0;
            *(v76 + 3) = 0;
            v78 = &v76[*(v22 + 28)];
            *v78 = 0;
            *(v78 + 1) = 0;
            v78[16] = -1;
            sub_1D5EA756C(&v137);
LABEL_41:
            v93 = v76;
            v94 = &v140;
            goto LABEL_42;
          }
        }
      }

      v137 = 0u;
      v138 = 0u;
      v22 = v130;
      v95 = *(v130 + 24);
      v96 = type metadata accessor for FormatInspectionItem.Value(0);
      v76 = v123;
      (*(*(v96 - 8) + 56))(&v123[v95], 1, 1, v96);
      *v76 = v118;
      *(v76 + 2) = 0;
      *(v76 + 3) = 0;
      v97 = &v76[*(v22 + 28)];
      *v97 = 0;
      *(v97 + 1) = 0;
      v97[16] = -1;
      goto LABEL_41;
    }

    if (v45 == 1)
    {
      v47 = [v132 loadDate];
      v48 = v116;
      if (v47)
      {
        v49 = v47;
        sub_1D72588BC();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v58 = sub_1D725891C();
      v59 = *(v58 - 8);
      (*(v59 + 56))(v48, v50, 1, v58);
      sub_1D5DF42F8(v48, v14);
      if ((*(v59 + 48))(v14, 1, v58) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v14);
      }

      else
      {
        v60 = sub_1D72587AC();
        v62 = v61;
        (*(v59 + 8))(v14, v58);
        if (v62)
        {
          v63 = HIBYTE(v62) & 0xF;
          if ((v62 & 0x2000000000000000) == 0)
          {
            v63 = v60 & 0xFFFFFFFFFFFFLL;
          }

          if (v63)
          {
            *&v137 = v60;
            *(&v137 + 1) = v62;
            *&v138 = 0;
            *(&v138 + 1) = MEMORY[0x1E69E6158];
            v64 = *(v22 + 24);
            v65 = v124;
            sub_1D5EA7510(&v137, &v124[v64]);
            v66 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v66 - 8) + 56))(&v65[v64], 0, 1, v66);
            *v65 = v117;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v67 = &v65[*(v22 + 28)];
            *v67 = 0;
            *(v67 + 1) = 0;
            v67[16] = -1;
            sub_1D5EA756C(&v137);
LABEL_38:
            v93 = v65;
            v94 = &v141;
LABEL_42:
            v98 = *(v94 - 32);
            sub_1D613ADAC(v93, v98);
            v99 = v98;
            goto LABEL_46;
          }
        }
      }

      v137 = 0u;
      v138 = 0u;
      v90 = *(v22 + 24);
      v91 = type metadata accessor for FormatInspectionItem.Value(0);
      v65 = v124;
      (*(*(v91 - 8) + 56))(&v124[v90], 1, 1, v91);
      *v65 = v117;
      *(v65 + 2) = 0;
      *(v65 + 3) = 0;
      v92 = &v65[*(v22 + 28)];
      *v92 = 0;
      *(v92 + 1) = 0;
      v92[16] = -1;
      goto LABEL_38;
    }

    v54 = [v132 publisherSpecifiedArticleIDsModifiedDate];
    v55 = v129;
    if (v54)
    {
      v56 = v54;
      sub_1D72588BC();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v79 = sub_1D725891C();
    v80 = *(v79 - 8);
    (*(v80 + 56))(v55, v57, 1, v79);
    v81 = v128;
    sub_1D5DF42F8(v55, v128);
    if ((*(v80 + 48))(v81, 1, v79) == 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v81);
LABEL_44:
      v137 = 0u;
      v138 = 0u;
      v22 = v130;
      v100 = *(v130 + 24);
      v101 = type metadata accessor for FormatInspectionItem.Value(0);
      v87 = v125;
      (*(*(v101 - 8) + 56))(&v125[v100], 1, 1, v101);
      *v87 = 0xD00000000000002CLL;
      *(v87 + 1) = v119;
      *(v87 + 2) = 0;
      *(v87 + 3) = 0;
      v102 = &v87[*(v22 + 28)];
      *v102 = 0;
      *(v102 + 1) = 0;
      v102[16] = -1;
      goto LABEL_45;
    }

    v82 = sub_1D72587AC();
    v84 = v83;
    (*(v80 + 8))(v81, v79);
    if (!v84)
    {
      goto LABEL_44;
    }

    v85 = HIBYTE(v84) & 0xF;
    if ((v84 & 0x2000000000000000) == 0)
    {
      v85 = v82 & 0xFFFFFFFFFFFFLL;
    }

    if (!v85)
    {

      goto LABEL_44;
    }

    *&v137 = v82;
    *(&v137 + 1) = v84;
    *&v138 = 0;
    *(&v138 + 1) = MEMORY[0x1E69E6158];
    v22 = v130;
    v86 = *(v130 + 24);
    v87 = v125;
    sub_1D5EA7510(&v137, &v125[v86]);
    v88 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v88 - 8) + 56))(&v87[v86], 0, 1, v88);
    *v87 = 0xD00000000000002CLL;
    *(v87 + 1) = v119;
    *(v87 + 2) = 0;
    *(v87 + 3) = 0;
    v89 = &v87[*(v22 + 28)];
    *v89 = 0;
    *(v89 + 1) = 0;
    v89[16] = -1;
    sub_1D5EA756C(&v137);
LABEL_45:
    v103 = v122;
    sub_1D613ADAC(v87, v122);
    v99 = v103;
    v14 = v127;
LABEL_46:
    v18 = v131;
    sub_1D613ADAC(v99, v46 + v43);
    v104 = *(v46 + 16);
    v105 = v44[2];
    v106 = v105 + v104;
    if (__OFADD__(v105, v104))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v106 <= v44[3] >> 1)
    {
      if (!v104)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v105 <= v106)
      {
        v108 = v105 + v104;
      }

      else
      {
        v108 = v105;
      }

      v44 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v108, 1, v44);
      if (!v104)
      {
LABEL_2:

        goto LABEL_3;
      }
    }

    if ((v44[3] >> 1) - v44[2] < v104)
    {
      goto LABEL_60;
    }

    swift_arrayInitWithCopy();

    v109 = v44[2];
    v110 = __OFADD__(v109, v104);
    v111 = v109 + v104;
    if (v110)
    {
      goto LABEL_61;
    }

    v44[2] = v111;
LABEL_3:
    if (++v42 == 3)
    {
      v112 = sub_1D5F62998(v44);

      sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v112, &v137);

      v113 = v138;
      v114 = v115;
      *v115 = v137;
      v114[1] = v113;
      *(v114 + 4) = v139;
      return;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

unint64_t sub_1D613AD60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D613ADAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatShineBlend.color.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D613AE5C(v8, v7);
}

void FormatShineBlend.alphaProcessor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

BOOL _s8NewsFeed16FormatShineBlendV2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v3;
  v4 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v42[2] = a2[2];
  v42[3] = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a2;
  v42[0] = v5;
  v42[1] = v8;
  v11 = *(a1 + 48);
  v35 = v39;
  v36 = v11;
  v41 = *(a1 + 64);
  v12 = *(a1 + 65);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 81);
  v43 = *(a2 + 64);
  v16 = *(a2 + 65);
  v17 = *(a2 + 9);
  v18 = *(a2 + 80);
  v19 = *(a2 + 81);
  v37 = *(a1 + 64);
  v33 = v38[0];
  v34 = v2;
  v20 = a2[3];
  v30 = v9;
  v31 = v20;
  v32 = *(a2 + 64);
  v28 = v10;
  v29 = v6;
  sub_1D613AE5C(v38, v46);
  sub_1D613AE5C(v42, v46);
  v21 = _s8NewsFeed16FormatShineColorO2eeoiySbAC_ACtFZ_0(&v33, &v28);
  v44[2] = v30;
  v44[3] = v31;
  v45 = v32;
  v44[0] = v28;
  v44[1] = v29;
  sub_1D613B3C4(v44);
  v46[2] = v35;
  v46[3] = v36;
  v47 = v37;
  v46[0] = v33;
  v46[1] = v34;
  sub_1D613B3C4(v46);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  if (v12 == 16)
  {
    if (v16 != 16)
    {
      return 0;
    }

LABEL_4:
    if (v15)
    {
      return (v19 & 1) != 0;
    }

    goto LABEL_11;
  }

  if (v16 == 16)
  {
    return 0;
  }

  LOBYTE(v33) = v12;
  LOBYTE(v28) = v16;
  v23 = FormatBlendMode.rawValue.getter();
  v25 = v24;
  if (v23 != FormatBlendMode.rawValue.getter() || v25 != v26)
  {
    v27 = sub_1D72646CC();

    if ((v27 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (v15)
  {
    return (v19 & 1) != 0;
  }

LABEL_11:
  if ((v19 & 1) == 0)
  {
    if (v14)
    {
      if (v13 == 0.0)
      {
        if ((v18 & 1) != 0 && v17 == 0.0)
        {
          return 1;
        }
      }

      else if ((v18 & 1) != 0 && v17 != 0.0)
      {
        return 1;
      }
    }

    else if ((v18 & 1) == 0 && v13 == v17)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D613B130(uint64_t a1)
{
  result = sub_1D613B158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B158()
{
  result = qword_1EC8841A8;
  if (!qword_1EC8841A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841A8);
  }

  return result;
}

unint64_t sub_1D613B1AC(void *a1)
{
  a1[1] = sub_1D613B1E4();
  a1[2] = sub_1D613B238();
  result = sub_1D613B28C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D613B1E4()
{
  result = qword_1EC8841B0;
  if (!qword_1EC8841B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841B0);
  }

  return result;
}

unint64_t sub_1D613B238()
{
  result = qword_1EC8841B8;
  if (!qword_1EC8841B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841B8);
  }

  return result;
}

unint64_t sub_1D613B28C()
{
  result = qword_1EC8841C0;
  if (!qword_1EC8841C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841C0);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D613B310(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D613B358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

BOOL sub_1D613B448(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1D5F3FE24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v4;
  *(inited + 40) = 0;
  sub_1D633A310(v3, inited);
  LOBYTE(v3) = v6;
  swift_setDeallocating();
  sub_1D613B818(0, qword_1EDF2C898, type metadata accessor for FormatEquationToken);
  swift_arrayDestroy();
  return (v3 & 1) == 0;
}

double sub_1D613B53C@<D0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_1D5F3FE24(0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0;
  *a1 = v5;
  return result;
}

double static FormatCodingSelectorFloatEquationZeroStrategy.defaultValue.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1D5F3FE24(0);
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  a1[1] = v5;
  return result;
}

double sub_1D613B63C@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1D5F3FE24(0);
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t _s8NewsFeed45FormatCodingSelectorFloatEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1D5F3FE24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  sub_1D633A310(v2, inited);
  if (v5)
  {

    v6 = MEMORY[0x1E69E7CC0];

    sub_1D634D564(v1, v6);
    v8 = v7;

    swift_bridgeObjectRelease_n();
    if (v8)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

unint64_t sub_1D613B79C(uint64_t a1)
{
  result = sub_1D613B7C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B7C4()
{
  result = qword_1EC8841C8;
  if (!qword_1EC8841C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841C8);
  }

  return result;
}

void sub_1D613B818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C35130();
    v7 = a3(a1, &type metadata for FormatFloat, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D613B87C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D613B818(255, &qword_1EDF32858, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D613B8DC(uint64_t a1)
{
  result = sub_1D613B904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B904()
{
  result = qword_1EC8841D0;
  if (!qword_1EC8841D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841D0);
  }

  return result;
}

unint64_t sub_1D613B958(uint64_t a1)
{
  result = sub_1D613B980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B980()
{
  result = qword_1EC8841D8;
  if (!qword_1EC8841D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841D8);
  }

  return result;
}

unint64_t sub_1D613B9D4(uint64_t a1)
{
  result = sub_1D613B9FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613B9FC()
{
  result = qword_1EC8841E0;
  if (!qword_1EC8841E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841E0);
  }

  return result;
}

uint64_t sub_1D613BA50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D613BA94(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D613BA94(uint64_t a1)
{
  if (!qword_1EDF24728)
  {
    sub_1D613B818(255, &qword_1EDF32858, type metadata accessor for FormatEquation);
    v3 = v2;
    v4 = sub_1D613B87C(qword_1EDF32870, &protocol conformance descriptor for FormatEquation<A>);
    v6 = type metadata accessor for FormatSelectorSimpleValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF24728);
    }
  }
}

uint64_t WebEmbedDataSourcesConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_1D613BE14(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D613C1FC(0, &qword_1EC884208, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D613BF7C();
  sub_1D7264B0C();
  if (!v2)
  {
    v14 = v10;
    sub_1D613BE6C(0);
    v16 = v15;
    sub_1D613BFD0();
    sub_1D726427C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v7, 1, v16) == 1)
    {
      sub_1D613C028(v7);
      v18 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = sub_1D725A74C();
      (*(v17 + 8))(v7, v16);
    }

    (*(v14 + 8))(v13, v9);
    *v21 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D613BE14(uint64_t a1)
{
  if (!qword_1EC8841E8)
  {
    sub_1D613BE6C(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8841E8);
    }
  }
}

void sub_1D613BE6C(uint64_t a1)
{
  if (!qword_1EC8841F0)
  {
    sub_1D613BED4();
    sub_1D613BF28();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8841F0);
    }
  }
}

unint64_t sub_1D613BED4()
{
  result = qword_1EC8841F8;
  if (!qword_1EC8841F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8841F8);
  }

  return result;
}

unint64_t sub_1D613BF28()
{
  result = qword_1EC884200;
  if (!qword_1EC884200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884200);
  }

  return result;
}

unint64_t sub_1D613BF7C()
{
  result = qword_1EC884210;
  if (!qword_1EC884210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884210);
  }

  return result;
}

unint64_t sub_1D613BFD0()
{
  result = qword_1EC884218;
  if (!qword_1EC884218)
  {
    sub_1D613BE6C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884218);
  }

  return result;
}

uint64_t sub_1D613C028(uint64_t a1)
{
  sub_1D613BE14(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WebEmbedDataSourcesConfiguration.encode(to:)(void *a1, __n128 a2)
{
  sub_1D613C1FC(0, &qword_1EC884220, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D613BF7C();

  sub_1D7264B5C();
  v12[1] = v10;
  sub_1D613C260();
  sub_1D613C2B0();
  sub_1D726443C();

  return (*(v6 + 8))(v9, v5);
}

void sub_1D613C1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D613BF7C();
    v7 = a3(a1, &type metadata for WebEmbedDataSourcesConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D613C260()
{
  if (!qword_1EC884228)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884228);
    }
  }
}

unint64_t sub_1D613C2B0()
{
  result = qword_1EC884230;
  if (!qword_1EC884230)
  {
    sub_1D613C260();
    sub_1D613BF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884230);
  }

  return result;
}

uint64_t sub_1D613C328()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D613C3A4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D613C3FC(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D613C494(BOOL *a3@<X8>)
{
  v4 = sub_1D72641CC();

  *a3 = v4 != 0;
}

uint64_t sub_1D613C4EC(uint64_t a1)
{
  v2 = sub_1D613BF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D613C528(uint64_t a1)
{
  v2 = sub_1D613BF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D613C5B8()
{
  result = qword_1EC884238;
  if (!qword_1EC884238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884238);
  }

  return result;
}

unint64_t sub_1D613C610()
{
  result = qword_1EC884240;
  if (!qword_1EC884240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884240);
  }

  return result;
}

unint64_t sub_1D613C668()
{
  result = qword_1EC884248;
  if (!qword_1EC884248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884248);
  }

  return result;
}

uint64_t sub_1D613C6BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 40);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (([*(a1 + 40) respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(v5, sel_thumbnailImageTextColor)) == 0)
        {
          result = swift_allocObject();
          v8 = 21;
LABEL_20:
          *(result + 16) = v8;
          *(result + 24) = 0x3FF0000000000000;
          *(result + 32) = 0;
          v23 = 0x1000000000000000;
          goto LABEL_23;
        }
      }

      else if (([*(a1 + 40) respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(v5, sel_thumbnailImageAccentColor)) == 0)
      {
        result = swift_allocObject();
        v8 = 8;
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (([*(a1 + 40) respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(v5, sel_thumbnailImageBackgroundColor)) == 0)
    {
LABEL_19:
      result = swift_allocObject();
      v8 = 29;
      goto LABEL_20;
    }

LABEL_18:
    v13 = v6;
    v14 = swift_allocObject();
    [v13 red];
    v16 = v15 * 255.0;
    [v13 green];
    v18 = v17 * 255.0;
    [v13 blue];
    v20 = v19 * 255.0;
    [v13 alpha];
    v22 = v21;

    result = v14;
    *(v14 + 16) = v16;
    *(v14 + 24) = v18;
    *(v14 + 32) = v20;
    *(v14 + 40) = v22;
    v23 = 0x6000000000000000;
    *(v14 + 48) = 0;
    goto LABEL_23;
  }

  if (v4)
  {
    if (([*(a1 + 40) respondsToSelector_] & 1) == 0)
    {
      goto LABEL_19;
    }

    v6 = [v5 thumbnailImagePrimaryColor];
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = [*(a1 + 40) storyStyle];
  v10 = swift_allocObject();
  if (v9)
  {
    sub_1D613C9EC(v9, &v28);
    v11 = v28;
    sub_1D613CB30(v9, &v27);

    v12 = v27;
    result = v10;
    *(v10 + 16) = v11;
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = vdupq_n_s64(0x404E000000000000uLL);
    *(v24 + 32) = 0x4050C00000000000;
    *(v24 + 40) = 0x3FE3333333333333;
    *(v24 + 48) = 0;
    v25 = v24 | 0x6000000000000000;
    v26 = swift_allocObject();
    *(v26 + 16) = vdupq_n_s64(0x4068600000000000uLL);
    *(v26 + 32) = 0x4067800000000000;
    *(v26 + 40) = 0x3FE3333333333333;
    *(v26 + 48) = 0;
    v12 = v26 | 0x6000000000000000;
    result = v10;
    *(v10 + 16) = v25;
  }

  *(v10 + 24) = v12;
  v23 = 0x3000000000000000;
LABEL_23:
  *a2 = v23 | result;
  return result;
}

void sub_1D613C9EC(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = [a1 foreground_color];
  v4 = swift_allocObject();
  v5 = v4;
  if (v3)
  {
    [v3 red];
    v7 = v6 * 255.0;
    [v3 green];
    v9 = v8 * 255.0;
    [v3 blue];
    v11 = v10 * 255.0;
    [v3 alpha];
    v13 = v12;

    *v5[1].i64 = v7;
    *&v5[1].i64[1] = v9;
    *v5[2].i64 = v11;
    v5[2].i64[1] = v13;
    v5[3].i8[0] = 0;
  }

  else
  {
    v4[1] = vdupq_n_s64(0x404E000000000000uLL);
    v4[2].i64[0] = 0x4050C00000000000;
    v4[2].i64[1] = 0x3FE3333333333333;
    v4[3].i8[0] = 0;
    v14 = swift_allocObject();
    v14[1] = vdupq_n_s64(0x4068600000000000uLL);
    v14[2].i64[0] = 0x4067800000000000;
    v14[2].i64[1] = 0x3FE3333333333333;
    v14[3].i8[0] = 0;
  }

  *a2 = v5 | 0x6000000000000000;
}

void sub_1D613CB30(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = [a1 dark_style_foreground_color];
  v4 = swift_allocObject();
  v5 = v4;
  if (v3)
  {
    [v3 red];
    v7 = v6 * 255.0;
    [v3 green];
    v9 = v8 * 255.0;
    [v3 blue];
    v11 = v10 * 255.0;
    [v3 alpha];
    v13 = v12;

    *v5[1].i64 = v7;
    *&v5[1].i64[1] = v9;
    *v5[2].i64 = v11;
    v5[2].i64[1] = v13;
    v5[3].i8[0] = 0;
  }

  else
  {
    v4[1] = vdupq_n_s64(0x404E000000000000uLL);
    v4[2].i64[0] = 0x4050C00000000000;
    v4[2].i64[1] = 0x3FE3333333333333;
    v4[3].i8[0] = 0;
    v14 = swift_allocObject();
    v14[1] = vdupq_n_s64(0x4068600000000000uLL);
    v14[2].i64[0] = 0x4067800000000000;
    v14[2].i64[1] = 0x3FE3333333333333;
    v14[3].i8[0] = 0;

    v5 = v14;
  }

  *a2 = v5 | 0x6000000000000000;
}

uint64_t sub_1D613CC88()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D613CD7C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D613CE5C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D613CF4C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x70795479726F7473;
  v5 = 0x80000001D73B7240;
  v6 = 0xD000000000000018;
  v7 = 0x80000001D73B7260;
  v8 = 0xD000000000000014;
  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v7 = 0x80000001D73B7280;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001D73B7220;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatHeadlineBinding.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D613D0E8()
{
  result = qword_1EC884250;
  if (!qword_1EC884250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884250);
  }

  return result;
}

unint64_t sub_1D613D13C(uint64_t a1)
{
  result = sub_1D613D164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D613D164()
{
  result = qword_1EC884258;
  if (!qword_1EC884258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884258);
  }

  return result;
}

unint64_t sub_1D613D1B8(void *a1)
{
  a1[1] = sub_1D5CDAA88();
  a1[2] = sub_1D613D1F0();
  result = sub_1D613D0E8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D613D1F0()
{
  result = qword_1EDF0E1C0;
  if (!qword_1EDF0E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E1C0);
  }

  return result;
}

unint64_t sub_1D613D280()
{
  result = qword_1EC884260;
  if (!qword_1EC884260)
  {
    sub_1D613D2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884260);
  }

  return result;
}

void sub_1D613D2D8()
{
  if (!qword_1EC884268)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884268);
    }
  }
}

unint64_t sub_1D613D32C()
{
  result = qword_1EC884270;
  if (!qword_1EC884270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884270);
  }

  return result;
}

uint64_t sub_1D613D380@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10 <= 1)
  {
    if (!*a1)
    {
      sub_1D5C0C74C(a2, v9);
      v32 = 0;
      sub_1D613C6BC(v9, &v33);
      v15 = v33;
      v12 = type metadata accessor for FormatInspectionItem(0);
      v16 = *(v12 + 24);
      *(a3 + v16) = v15;
      v17 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
      *a3 = xmmword_1D729EB30;
      goto LABEL_11;
    }

    v18 = 0x80000001D73BE350;
    sub_1D5C0C74C(a2, v9);
    v32 = 1;
    sub_1D613C6BC(v9, &v33);
    v26 = v33;
    v12 = type metadata accessor for FormatInspectionItem(0);
    v27 = *(v12 + 24);
    *(a3 + v27) = v26;
    v28 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(a3 + v27, 0, 1, v28);
    v22 = 0xD000000000000011;
LABEL_10:
    *a3 = v22;
    *(a3 + 8) = v18;
    goto LABEL_11;
  }

  if (v10 == 2)
  {
    v18 = 0x80000001D73BE330;
    sub_1D5C0C74C(a2, v9);
    v32 = 2;
    sub_1D613C6BC(v9, &v33);
    v19 = v33;
    v12 = type metadata accessor for FormatInspectionItem(0);
    v20 = *(v12 + 24);
    *(a3 + v20) = v19;
    v21 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(a3 + v20, 0, 1, v21);
    v22 = 0xD000000000000014;
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    v18 = 0x80000001D73BE310;
    sub_1D5C0C74C(a2, v9);
    v32 = 4;
    sub_1D613C6BC(v9, &v33);
    v23 = v33;
    v12 = type metadata accessor for FormatInspectionItem(0);
    v24 = *(v12 + 24);
    *(a3 + v24) = v23;
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(a3 + v24, 0, 1, v25);
    v22 = 0xD000000000000010;
    goto LABEL_10;
  }

  sub_1D5C0C74C(a2, v9);
  v32 = 3;
  sub_1D613C6BC(v9, &v33);
  v11 = v33;
  v12 = type metadata accessor for FormatInspectionItem(0);
  v13 = *(v12 + 24);
  *(a3 + v13) = v11;
  v14 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(a3 + v13, 0, 1, v14);
  *a3 = xmmword_1D7278730;
LABEL_11:
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v29 = a3 + *(v12 + 28);
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = -1;
  sub_1D5C10040(v9);
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_1D613D7F0(void *a1)
{
  v3 = v1;
  sub_1D5BE8F38(0, &qword_1EC884278, sub_1D5BD46E4, &type metadata for A6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BD46E4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BD3A4C(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5BD484C(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D613DA4C(uint64_t a1)
{
  v2 = sub_1D5BD46E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D613DA88(uint64_t a1)
{
  v2 = sub_1D5BD46E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D613DADC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D5C0B7A8();

  return sub_1D725A24C();
}

unint64_t sub_1D613DBC4()
{
  result = qword_1EC884280;
  if (!qword_1EC884280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884280);
  }

  return result;
}

void sub_1D613DC18(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 16))
  {
    v6 = sub_1D6D62820(0);
    if (v7)
    {
      a1 = *(*(a3 + 56) + 16 * v6);
    }
  }

  v8 = a1;
  if (v4)
  {
    sub_1D6DFBB8C(v4);
  }

  sub_1D726343C();
}

uint64_t sub_1D613DCC8(unint64_t *a1)
{
  if (*a1 >> 62)
  {
    type metadata accessor for UnwrappedSportsTaxonomyGraphNodeWeakReference();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v1 + 16) = v3;
  }

  else
  {
    type metadata accessor for UnwrappedSportsTaxonomyGraphNodeWeakReference();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v1 + 16) = v2;
  }

  return v1;
}

uint64_t sub_1D613DD8C()
{

  return swift_deallocClassInstance();
}

void sub_1D613DE0C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  sub_1D613EFE0(0);
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatTextLink.Link(0);
  v58 = *(v17 - 8);
  v59 = v17;
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1E69E7CC0];
  v22 = [a1 length];
  v23 = *MEMORY[0x1E69DB5F8];
  v24 = swift_allocObject();
  *(v24 + 16) = &v63;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D613F054;
  *(v25 + 24) = v24;
  v55 = v24;
  aBlock[4] = sub_1D613F05C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D613EB68;
  aBlock[3] = &block_descriptor_24;
  v26 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v23 inRange:0 options:v22 usingBlock:{0, v26}];
  _Block_release(v26);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (!*(v63 + 16))
  {

    swift_deallocPartialClassInstance();

    return;
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
  v28 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DB850]) initWithAttributedString_];
  [v27 addTextContainer_];
  [v29 addLayoutManager_];
  [v28 setLineFragmentPadding_];
  [v28 setLineBreakMode_];
  [v28 setMaximumNumberOfLines_];
  [v28 setSize_];
  [v27 usedRectForTextContainer_];
  v65 = CGRectIntegral(v64);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = a4;
  v65.size.height = a5;
  v34 = (CGRectGetWidth(v65) - width) * 0.5 - x;
  v66.origin.x = a2;
  v66.origin.y = a3;
  v66.size.width = a4;
  v66.size.height = a5;
  v35 = CGRectGetHeight(v66);
  *(v6 + 24) = v34;
  *(v6 + 32) = (v35 - height) * 0.5 - y;
  v54 = v6;
  v36 = v63;
  v37 = *(v63 + 16);
  if (v37)
  {
    v56 = v28;
    v52 = v29;
    v57 = v27;
    v53 = a1;
    aBlock[0] = MEMORY[0x1E69E7CC0];

    sub_1D6998BB8(0, v37, 0);
    v38 = 0;
    v39 = aBlock[0];
    v40 = v36 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    while (v38 < *(v36 + 16))
    {
      sub_1D613F0EC(v40 + *(v61 + 72) * v38, v16, sub_1D613EFE0);
      v41 = *v16;
      v42 = *(v16 + 1);
      v43 = *(v60 + 48);
      v44 = sub_1D72585BC();
      (*(*(v44 - 8) + 16))(v21, &v16[v43], v44);
      [v57 boundingRectForGlyphRange:v41 inTextContainer:{v42, v56}];
      v45 = &v21[*(v59 + 20)];
      *v45 = v46;
      *(v45 + 1) = v47;
      *(v45 + 2) = v48;
      *(v45 + 3) = v49;
      sub_1D613F154(v16, sub_1D613EFE0);
      aBlock[0] = v39;
      v51 = *(v39 + 16);
      v50 = *(v39 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D6998BB8((v50 > 1), v51 + 1, 1);
        v39 = aBlock[0];
      }

      ++v38;
      *(v39 + 16) = v51 + 1;
      sub_1D613F084(v21, v39 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v51, type metadata accessor for FormatTextLink.Link);
      if (v37 == v38)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *(v54 + 16) = v39;
}

uint64_t sub_1D613E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v70 = a5;
  v67 = a2;
  v68 = a3;
  sub_1D613EFE0(0);
  v66 = v6;
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v64 - v11);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v64 - v23;
  v25 = sub_1D72585BC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v64 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v64 - v31;
  sub_1D613F0EC(a1, v72, sub_1D5BE1404);
  if (v73)
  {
    v33 = swift_dynamicCast();
    v34 = *(v26 + 56);
    v34(v24, v33 ^ 1u, 1, v25);
    if ((*(v26 + 48))(v24, 1, v25) != 1)
    {
      (*(v26 + 32))(v32, v24, v25);
      v35 = *(v66 + 48);
      v36 = v68;
      *v12 = v67;
      v12[1] = v36;
      (*(v26 + 16))(v12 + v35, v32, v25);
      v37 = v70;
      v38 = *v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1D6992EF8(0, v38[2] + 1, 1, v38);
        *v37 = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        *v37 = sub_1D6992EF8((v40 > 1), v41 + 1, 1, v38);
      }

      (*(v26 + 8))(v32, v25);
      v42 = *v37;
      *(v42 + 16) = v41 + 1;
      v43 = v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41;
      v44 = v12;
      return sub_1D613F084(v44, v43, sub_1D613EFE0);
    }
  }

  else
  {
    sub_1D613F154(v72, sub_1D5BE1404);
    v34 = *(v26 + 56);
    v34(v24, 1, 1, v25);
  }

  sub_1D613F154(v24, sub_1D5B4D3E0);
  sub_1D613F0EC(a1, v72, sub_1D5BE1404);
  if (v73)
  {
    type metadata accessor for FormatAttributedStringLink();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v46 = v71;
    v47 = [v71 contents];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1D725867C();
      v51 = v50;

      v34(v16, 1, 1, v25);
      sub_1D725842C();
      sub_1D5B952F8(v49, v51);
      sub_1D613F154(v16, sub_1D5B4D3E0);
      if ((*(v26 + 48))(v20, 1, v25) != 1)
      {
        v54 = v64;
        (*(v26 + 32))(v64, v20, v25);
        v55 = v65;
        v56 = *(v66 + 48);
        v57 = v68;
        *v65 = v67;
        v55[1] = v57;
        (*(v26 + 16))(v55 + v56, v54, v25);
        v58 = v70;
        v59 = *v70;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        *v58 = v59;
        if ((v60 & 1) == 0)
        {
          v59 = sub_1D6992EF8(0, v59[2] + 1, 1, v59);
          *v58 = v59;
        }

        v62 = v59[2];
        v61 = v59[3];
        if (v62 >= v61 >> 1)
        {
          *v58 = sub_1D6992EF8((v61 > 1), v62 + 1, 1, v59);
        }

        (*(v26 + 8))(v54, v25);
        v63 = *v58;
        *(v63 + 16) = v62 + 1;
        v43 = v63 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v62;
        v44 = v55;
        return sub_1D613F084(v44, v43, sub_1D613EFE0);
      }
    }

    else
    {

      v34(v20, 1, 1, v25);
    }

    v52 = sub_1D5B4D3E0;
    v53 = v20;
  }

  else
  {
    v52 = sub_1D5BE1404;
    v53 = v72;
  }

  return sub_1D613F154(v53, v52);
}

uint64_t sub_1D613EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1D5B7C390(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1D613F154(v13, sub_1D5BE1404);
}

void sub_1D613EC18(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>)
{
  v5 = a2.n128_f64[0];
  v7 = type metadata accessor for FormatTextLink.Link(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a3 - *(v3 + 32);
    v16 = v5 - *(v3 + 24);
    while (v14 < *(v12 + 16))
    {
      sub_1D613F0EC(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, type metadata accessor for FormatTextLink.Link);
      v21.x = v16;
      v21.y = v15;
      if (CGRectContainsPoint(*&v11[*(v7 + 20)], v21))
      {
        v18 = sub_1D72585BC();
        v19 = *(v18 - 8);
        (*(v19 + 32))(a1, v11, v18);
        (*(v19 + 56))(a1, 0, 1, v18);
        return;
      }

      ++v14;
      sub_1D613F154(v11, type metadata accessor for FormatTextLink.Link);
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v17 = sub_1D72585BC();
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t FormatTextLink.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatTextLink.Link(uint64_t a1)
{
  result = qword_1EDF32320;
  if (!qword_1EDF32320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D613EF5C(uint64_t a1)
{
  sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D613EFE0(uint64_t a1)
{
  if (!qword_1EDF1A620)
  {
    type metadata accessor for _NSRange(255);
    sub_1D72585BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A620);
    }
  }
}

uint64_t sub_1D613F084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D613F0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D613F154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D613F1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 195);
  v3 = *(a1 + 196);
  v4 = *(a2 + 195);
  v5 = *(a2 + 196);
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = sub_1D6E23ADC(v2);
  v9 = v8;
  if (v7 == sub_1D6E23ADC(v4) && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
LABEL_11:
      v13 = 0;
      return v13 & 1;
    }
  }

  if (v3)
  {
    v14 = 0x70616373646E616CLL;
  }

  else
  {
    v14 = 0x7469617274726F70;
  }

  if (v3)
  {
    v15 = 0xE900000000000065;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  if (v5)
  {
    v16 = 0x70616373646E616CLL;
  }

  else
  {
    v16 = 0x7469617274726F70;
  }

  if (v5)
  {
    v17 = 0xE900000000000065;
  }

  else
  {
    v17 = 0xE800000000000000;
  }

  if (v14 == v16 && v15 == v17)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

NewsFeed::ManageChannelNotificationsCommandState_optional __swiftcall ManageChannelNotificationsCommandState.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D72641CC();

  if (v1 == 1)
  {
    v2.value = NewsFeed_ManageChannelNotificationsCommandState_showManageNotifications;
  }

  else
  {
    v2.value = NewsFeed_ManageChannelNotificationsCommandState_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t ManageChannelNotificationsCommandState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1D613F3B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "turnOnNotifications";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "turnOnNotifications";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D613F45C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D613F4DC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D613F548(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D613F5C4(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D613F624(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "turnOnNotifications";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1D613F664(uint64_t a1)
{
  v2 = sub_1D6140440();

  return MEMORY[0x1EEE48380](a1, v2);
}

NewsFeed::ManageNotificationsContext::TaglessNotification_optional __swiftcall ManageNotificationsContext.TaglessNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ManageNotificationsContext.TaglessNotification.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x73656C7A7A7570;
  v3 = 0x647541664F646E65;
  v4 = 0x7474656C7377656ELL;
  if (v1 != 4)
  {
    v4 = 0x7374726F7073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657573734977656ELL;
  if (v1 != 1)
  {
    v5 = 0x6E6974656B72616DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_1D613F7F4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D613F910(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73656C7A7A7570;
  v5 = 0xEF6B636172546F69;
  v6 = 0x647541664F646E65;
  v7 = 0xEA00000000007265;
  v8 = 0x7474656C7377656ELL;
  if (v2 != 4)
  {
    v8 = 0x7374726F7073;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x657573734977656ELL;
  if (v2 != 1)
  {
    v10 = 0x6E6974656B72616DLL;
    v9 = 0xE900000000000067;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t ManageNotificationsContext.identifier.getter()
{
  if (*(v0 + 16))
  {
    v1 = *v0;
    v2 = 0x73656C7A7A7570;
    v3 = 0x647541664F646E65;
    v4 = 0x7474656C7377656ELL;
    if (v1 != 4)
    {
      v4 = 0x7374726F7073;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x657573734977656ELL;
    if (v1 != 1)
    {
      v5 = 0x6E6974656B72616DLL;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
    return 979853684;
  }
}

uint64_t static ContextMenuItem.manageChannelNotifications(context:)(uint64_t a1)
{
  sub_1D613FD88(0, &unk_1EDF3B550, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D613FD88(0, &unk_1EDF3B630, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D613FD88(0, &unk_1EDF3B610, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  if (!a1)
  {
    return 0;
  }

  v8 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  sub_1D5B8D68C();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  sub_1D725DABC();
  sub_1D725DF0C();
  swift_allocObject();
  v9 = sub_1D725D3BC();
  swift_unknownObjectRelease();
  return v9;
}

void sub_1D613FD88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B8D68C();
    v7 = a3(a1, &type metadata for ManageChannelNotificationsCommandState, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D613FDEC(char *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1D725811C();

  return v3;
}

uint64_t static SharingActivity.manageChannelNotifications(context:)(uint64_t a1)
{
  sub_1D6140124(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D6140190(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  if (!a1)
  {
    return 0;
  }

  v6 = qword_1EDF169F8;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();

  sub_1D726203C();
  sub_1D5B8D68C();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  swift_allocObject();
  v7 = sub_1D725D5BC();
  swift_unknownObjectRelease();
  return v7;
}

void sub_1D6140124(uint64_t a1)
{
  if (!qword_1EDF17150)
  {
    sub_1D725DFEC();
    sub_1D5B8D68C();
    v1 = sub_1D725DB1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17150);
    }
  }
}

void sub_1D6140190(uint64_t a1)
{
  if (!qword_1EDF17140)
  {
    sub_1D5B8D68C();
    v1 = sub_1D725DB1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17140);
    }
  }
}

void sub_1D61401F4(uint64_t *a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_1D725811C();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1D61402F4()
{
  sub_1D725F71C();
  sub_1D725F6EC();

  return sub_1D725DFDC();
}

unint64_t sub_1D6140354()
{
  result = qword_1EC884288;
  if (!qword_1EC884288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884288);
  }

  return result;
}

unint64_t sub_1D61403B0()
{
  result = qword_1EC884290;
  if (!qword_1EC884290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884290);
  }

  return result;
}

unint64_t sub_1D6140440()
{
  result = qword_1EC884298;
  if (!qword_1EC884298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884298);
  }

  return result;
}

void sub_1D6140494(char a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_1D7262EBC();
    sub_1D5B67930(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7279970;
    v7 = sub_1D725F7AC();
    v9 = v8;
    v10 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1D5B7E2C0();
    *(v6 + 64) = v11;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_1D72585BC();
    sub_1D614088C();
    v12 = sub_1D72644BC();
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    sub_1D5B67930(0, &qword_1EC8842A0, MEMORY[0x1E69D7E38], MEMORY[0x1E69E6720]);

    v14 = sub_1D72620FC();
    *(v6 + 136) = v10;
    *(v6 + 144) = v11;
    *(v6 + 112) = v14;
    *(v6 + 120) = v15;
    sub_1D5B5F6D0();
    v16 = sub_1D72638FC();
    sub_1D725C30C("open url command handler failed, command=%{public}@, context=%{public}@, source=%{public}@", 90, 2, &dword_1D5B42000, v16, v5, v6);
  }
}

double sub_1D6140634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = *(*v5 + 40);
  v19[2] = *(*v5 + 48);
  v19[1] = __swift_project_boxed_opaque_existential_1((v13 + 16), v14);
  sub_1D605D330(MEMORY[0x1E69E7CC0]);
  (*(v9 + 16))(v12, a4, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v9 + 32))(v17 + v15, v12, v8);
  *(v17 + v16) = v20;

  sub_1D725D82C();

  return result;
}

void sub_1D61407EC(char a1)
{
  v3 = *(sub_1D72585BC() - 8);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D6140494(a1, v4, v6, v1 + v5, v7);
}

unint64_t sub_1D614088C()
{
  result = qword_1EDF18AC0;
  if (!qword_1EDF18AC0)
  {
    sub_1D72585BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18AC0);
  }

  return result;
}

uint64_t sub_1D61408F4(void *a1)
{
  v3 = v1;
  sub_1D6145614(0, &qword_1EC884358, sub_1D61455C0, &type metadata for A12_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61455C0();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D614567C(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6140B3C(uint64_t a1)
{
  v2 = sub_1D61455C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6140B78(uint64_t a1)
{
  v2 = sub_1D61455C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6140BB4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6145320(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6140C14(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6144FB4();

  return sub_1D725A24C();
}

uint64_t sub_1D6140C90@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6145614(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6140D4C(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v114 = a2;
  v118 = a1;
  v103 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v115 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v119 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v131 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v116 = &v102 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for GroupLayoutContext(0);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v23);
  v112 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v102 - v27;
  v108 = &v102 - v27;
  v117 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v117 - 1);
  MEMORY[0x1EEE9AC00](v117, v30);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v107 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v118, v32, type metadata accessor for GroupLayoutBindingContext);
  v109 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v114, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v106 = sub_1D725893C();
  v105 = v35;
  (*(v19 + 8))(v22, v18);
  v129 = &type metadata for A12_V2;
  v36 = sub_1D5ECE820();
  v130 = v36;
  LOBYTE(v127) = v33;
  *(&v127 + 1) = v34;
  v128 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v120[0] = sub_1D7264C5C();
  v120[1] = v39;
  v125 = 95;
  v126 = 0xE100000000000000;
  v123 = 45;
  v124 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v112;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v105;
  *v44 = v106;
  v44[1] = v45;
  sub_1D5B68374(&v127, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v117);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v108, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v110 + 56);
  v110 = v37;
  v48(v37 + v47, 0, 1, v111);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v129 = &type metadata for A12_V2;
  v130 = v36;
  LOBYTE(v127) = v107;
  v49 = v38;
  *(&v127 + 1) = v38;
  v128 = v5;
  sub_1D5BE3ED8(v114, v43, v109);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v51 = v50;
  inited = swift_initStackObject();
  v53 = MEMORY[0x1E69E7CC0];
  v114 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v54 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v55 = sub_1D5C0F8FC(0, 1, 1, v53);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  v58 = (v57 + 1);
  if (v57 >= v56 >> 1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *(v55 + 16) = v58;
    v59 = v55 + 16 * v57;
    *(v59 + 32) = sub_1D63106DC;
    *(v59 + 40) = 0;
    *v54 = v55;
    swift_endAccess();
    v57 = v117[14];
    v60 = *&v118[v57];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v58 = sub_1D5C14D80(v63), , v58))
    {
      v109 = v57;
      v111 = v51;
      v51 = *(v58 + 2);
      if (v51)
      {
        v43 = 0;
        v57 = MEMORY[0x1E69E7CC0];
        v54 = v115;
        v55 = v116;
        while (1)
        {
          v56 = *(v58 + 2);
          if (v43 >= v56)
          {
            break;
          }

          v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v53 = *(v54 + 72);
          sub_1D5BE3ED8(&v58[v36 + v53 * v43], v55, type metadata accessor for FeedHeadline);
          if ((*(v55 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v55, v131, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v120[0] = v57;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v57 + 16) + 1, 1);
              v54 = v115;
              v57 = v120[0];
            }

            v37 = *(v57 + 16);
            v65 = *(v57 + 24);
            if (v37 >= v65 >> 1)
            {
              sub_1D5C0F91C((v65 > 1), v37 + 1, 1);
              v54 = v115;
              v57 = v120[0];
            }

            *(v57 + 16) = v37 + 1;
            sub_1D5BDA904(v131, v57 + v36 + v37 * v53, type metadata accessor for FeedHeadline);
            v55 = v116;
          }

          else
          {
            sub_1D5BE780C(v55, type metadata accessor for FeedHeadline);
          }

          if (v51 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      v57 = MEMORY[0x1E69E7CC0];
LABEL_22:
      if ((*v118 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v70 = v69;

        v57 = v70;
      }

      v43 = v112;
      v53 = MEMORY[0x1E69E7CC0];
      v51 = v111;
      v71 = *&v118[v117[18]];
      v72 = *&v118[v117[19]];
      if (__OFSUB__(v71, v72))
      {
        goto LABEL_70;
      }

      v73 = sub_1D5C0FAD4(v57, v71 - v72);
      v36 = sub_1D5C11E10(&unk_1F5111D80, v73, v58);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5111D80, v57, v58);

        if (!v36)
        {
          v120[0] = &unk_1F5111D80;
          v4 = v104;
          sub_1D5E239F4(v120);
          if (v4)
          {
            goto LABEL_74;
          }

          if (!*(v120[0] + 2))
          {
            goto LABEL_72;
          }

          v98 = *(v120[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v99, "FeedHeadline");
          v99[13] = 0;
          *(v99 + 7) = -5120;
          *(v99 + 2) = 0;
          *(v99 + 3) = 0;
          *(v99 + 4) = 4;
          *(v99 + 5) = v98;
          *(v99 + 6) = 0;
          *(v99 + 7) = 0;
          v99[64] = 0;
          swift_willThrow();
          goto LABEL_63;
        }
      }

      strcpy(v120, "FeedHeadline");
      BYTE5(v120[1]) = 0;
      HIWORD(v120[1]) = -5120;
      v121 = 0;
      v122 = 0;

      v75 = sub_1D5C107C4(v74);

      sub_1D5BDACA8(v120, v75);
      swift_setDeallocating();

      v57 = v109;
    }

    else
    {
      if (qword_1F5111DA0)
      {
        v120[0] = &unk_1F5111D80;
        v4 = v104;
        sub_1D5E239F4(v120);
        if (v4)
        {
          goto LABEL_74;
        }

        v66 = *(v120[0] + 2);
        if (v66)
        {
          v67 = *(v120[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v68, "FeedHeadline");
          v68[13] = 0;
          *(v68 + 7) = -5120;
          *(v68 + 2) = 0;
          *(v68 + 3) = 0;
          *(v68 + 4) = 4;
          *(v68 + 5) = v67;
          *(v68 + 6) = 0;
          *(v68 + 7) = 0;
          v68[64] = 0;
          swift_willThrow();
LABEL_46:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v127);
          return;
        }

        __break(1u);
LABEL_68:
        v58 = sub_1D5C0F8FC((v66 > 1), v37, 1, v58);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v76 = swift_initStackObject();
    v131 = v76;
    *(v76 + 16) = v53;
    v60 = (v76 + 16);
    swift_beginAccess();
    v58 = sub_1D5C0F8FC(0, 1, 1, v53);
    v55 = *(v58 + 2);
    v66 = *(v58 + 3);
    v37 = v55 + 1;
    if (v55 >= v66 >> 1)
    {
      goto LABEL_68;
    }

LABEL_30:
    *(v58 + 2) = v37;
    v77 = &v58[16 * v55];
    *(v77 + 4) = sub_1D63106DC;
    *(v77 + 5) = 0;
    *v60 = v58;
    swift_endAccess();
    if (!*(*&v118[v57] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v79);

    if (!v37)
    {
      break;
    }

    v116 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_49:
      v86 = v118;
      if ((*v118 & 1) == 0)
      {

        sub_1D62F071C(v58);
        v88 = v87;

        v58 = v88;
      }

      v89 = *&v86[v117[18]];
      v90 = *&v86[v117[19]];
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_71;
      }

      v91 = sub_1D5C0FAD4(v58, v89 - v90);
      v85 = sub_1D5C11E10(&unk_1F5111DA8, v91, v37);

      if (v85)
      {

LABEL_55:
        strcpy(v120, "FeedHeadline");
        BYTE5(v120[1]) = 0;
        HIWORD(v120[1]) = -5120;
        v121 = 0;
        v122 = 0;

        v93 = sub_1D5C107C4(v92);

        sub_1D5BDACA8(v120, v93);
        swift_setDeallocating();

        v43 = v112;
        v36 = v116;
        goto LABEL_56;
      }

      v85 = sub_1D5C11E10(&unk_1F5111DA8, v58, v37);

      if (v85)
      {
        goto LABEL_55;
      }

      v120[0] = &unk_1F5111DA8;
      v4 = v104;
      sub_1D5E239F4(v120);
      if (v4)
      {
        goto LABEL_74;
      }

      v43 = v112;
      if (!*(v120[0] + 2))
      {
        goto LABEL_73;
      }

      v100 = *(v120[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v101, "FeedHeadline");
      v101[13] = 0;
      *(v101 + 7) = -5120;
      *(v101 + 2) = 0;
      *(v101 + 3) = 0;
      *(v101 + 4) = 0;
      *(v101 + 5) = v100;
      *(v101 + 6) = 0;
      *(v101 + 7) = 0;
      v101[64] = 0;
      swift_willThrow();
LABEL_63:
      swift_setDeallocating();
      goto LABEL_46;
    }

    v36 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v54 = v115;
    while (1)
    {
      v56 = *(v37 + 16);
      if (v36 >= v56)
      {
        break;
      }

      v53 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v51 = *(v54 + 72);
      v80 = v113;
      sub_1D5BE3ED8(v37 + v53 + v51 * v36, v113, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v80, v119, type metadata accessor for FeedHeadline);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v120[0] = v58;
      if ((v81 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v58 + 2) + 1, 1);
        v54 = v115;
        v58 = v120[0];
      }

      v55 = *(v58 + 2);
      v82 = *(v58 + 3);
      v57 = v55 + 1;
      if (v55 >= v82 >> 1)
      {
        sub_1D5C0F91C((v82 > 1), v55 + 1, 1);
        v54 = v115;
        v58 = v120[0];
      }

      ++v36;
      *(v58 + 2) = v57;
      sub_1D5BDA904(v119, &v58[v53 + v55 * v51], type metadata accessor for FeedHeadline);
      if (v43 == v36)
      {
        goto LABEL_49;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v55 = sub_1D5C0F8FC((v56 > 1), v58, 1, v55);
  }

  if (!qword_1F5111DC8)
  {

    v85 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v120[0] = v36;
    sub_1D5C122E4(v85);
    v94 = v120[0];
    v95 = type metadata accessor for A12_V2.Bound(0);
    v96 = v103;
    v103[3] = v95;
    v96[4] = sub_1D614567C(&qword_1EC8842B8, type metadata accessor for A12_V2.Bound, &unk_1D729F814);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
    *boxed_opaque_existential_1 = v110;
    sub_1D5B63F14(&v127, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v95 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v95 + 28)) = v94;
    return;
  }

  v120[0] = &unk_1F5111DA8;
  v4 = v104;
  sub_1D5E239F4(v120);
  if (!v4)
  {

    if (*(v120[0] + 2))
    {
      v83 = *(v120[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v84, "FeedHeadline");
      v84[13] = 0;
      *(v84 + 7) = -5120;
      *(v84 + 2) = 0;
      *(v84 + 3) = 0;
      *(v84 + 4) = 0;
      *(v84 + 5) = v83;
      *(v84 + 6) = 0;
      *(v84 + 7) = 0;
      v84[64] = 0;
      swift_willThrow();
      goto LABEL_46;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_74:

  __break(1u);
}

void sub_1D6141EF8(_BYTE *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1D725A36C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V2.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v43);
  sub_1D5B68374(v12 + 56, v42);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v43, v15 + 16);
  sub_1D5B63F14(v42, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v41[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v42);
  sub_1D5B68374(v16 + 56, v41);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v42, v18 + 16);
  sub_1D5B63F14(v41, v18 + 56);
  *(v18 + 96) = v17;
  v40[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v40, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v43, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v43[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v43[0];
  v39[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6144F50, v39);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v35);
  v37 = v22;
  v38 = v2;
  sub_1D614505C(0, &qword_1EC8842D8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v35 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v44;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v33 = v43[1];
  v34 = v43[0];
  *&v43[0] = v22;
  *&v42[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v36;
  *v36 = 0;
  v30 = v34;
  *(v29 + 24) = v33;
  *(v29 + 8) = v30;
  *&v43[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v32 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
}

uint64_t sub_1D6142444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v10, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v14);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v11, v10, v14, a4);
}

uint64_t sub_1D6142514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D614505C(0, &qword_1EC8842F8, MEMORY[0x1E69D7150]);
  sub_1D6145018(&qword_1EC884300, &qword_1EC8842F8, v13, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6142704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69D6F50], v10);
  *v9 = v11;
  v13 = *(v6 + 104);
  v13(v9, *MEMORY[0x1E69D73C0], v5);
  v14 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v14, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v21 = a1;
  v13(v9, *MEMORY[0x1E69D7460], v5);
  v19 = v17;
  v20 = v18;
  sub_1D72599EC();
  return (v15)(v9, v5);
}

uint64_t sub_1D614298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a3;
  v27 = a2;
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v26 - v8);
  v35 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v29 = *MEMORY[0x1E69D7490];
  v28 = *(v6 + 104);
  v28(v9);
  sub_1D61450E8(0);
  sub_1D6145614(0, &qword_1EC884320, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D70D8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  v16 = v15 + v14;
  sub_1D5ED83AC(0);
  v18 = (v16 + *(v17 + 48));
  v19 = *MEMORY[0x1E69D7238];
  v20 = sub_1D725A0DC();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  *v18 = 0x6C6F437468676972;
  v18[1] = 0xEB000000006E6D75;
  (*(v13 + 104))(v16, *MEMORY[0x1E69D7020], v12);
  v21 = v27;
  v34 = v27;
  v22 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v22, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();

  v23 = *(v6 + 8);
  v23(v9, v5);
  v35 = v30;
  v24 = swift_allocObject();
  *(v24 + 16) = 6;
  *v9 = v24;
  (v28)(v9, v29, v5);
  v32 = v21;
  v33 = v31;
  sub_1D7259A2C();
  return (v23)(v9, v5);
}

uint64_t sub_1D6142DA8(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 1;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D614337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v103 = a2;
  v120 = a1;
  v109 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v109, v5);
  v105 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = (&v87 - v12);
  v126 = a1;
  v14 = *MEMORY[0x1E69D74A8];
  v15 = v9 + 104;
  v119 = *(v9 + 104);
  v119(&v87 - v12, v14, v8, v11);
  sub_1D61450E8(0);
  v118 = v16;
  sub_1D6145614(0, &qword_1EC884320, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D70D8]);
  v18 = v17;
  v117 = v17;
  v19 = *(*(v17 - 8) + 72);
  v20 = *(v17 - 8);
  v114 = *(v20 + 80);
  v113 = ((v114 + 32) & ~v114) + v19;
  v21 = (v114 + 32) & ~v114;
  v115 = v21;
  v22 = swift_allocObject();
  v111 = xmmword_1D7273AE0;
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = *MEMORY[0x1E69D7098];
  v24 = *(v20 + 104);
  v116 = v20 + 104;
  v112 = v24;
  v24(v22 + v21, v23, v18);
  v125 = a2;
  v25 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  v27 = v26;
  v86 = sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v25, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();

  v28 = *(v9 + 8);
  v28(v13, v8);
  v29 = v120;
  v126 = v120;
  v30 = sub_1D725994C();
  v31 = swift_allocBox();
  v32 = *(v30 - 8);
  v33 = *(v32 + 104);
  v99 = *MEMORY[0x1E69D6F50];
  v100 = v30;
  v98 = v33;
  v97 = v32 + 104;
  v33(v34);
  *v13 = v31;
  v95 = *MEMORY[0x1E69D73C0];
  v35 = v119;
  (v119)(v13);
  v108 = v27;
  v107 = v86;
  sub_1D7259A9C();
  v110 = v9 + 8;
  v106 = v28;
  v28(v13, v8);
  v126 = v29;
  KeyPath = swift_getKeyPath();
  sub_1D60DF7C0(0);
  v37 = v36;
  v38 = swift_allocBox();
  v40 = v39;
  v96 = v37;
  v41 = *(v37 + 48);
  *v39 = 2;
  v42 = *MEMORY[0x1E69D7348];
  v43 = sub_1D725A34C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 104);
  v124 = v42;
  v122 = v44 + 104;
  v123 = v44;
  v121 = v45;
  v45(&v40[v41], v42, v43);
  *v13 = v38;
  v46 = *MEMORY[0x1E69D73E0];
  v47 = *MEMORY[0x1E69D73E0];
  v101 = v8;
  v102 = v15;
  v35(v13, v47, v8);
  v48 = v103;
  v49 = swift_allocObject();
  *(v49 + 16) = v111;
  v50 = v104 + *(type metadata accessor for A12_V2.Bound(0) + 24);
  v51 = *(v50 + *(type metadata accessor for GroupLayoutContext(0) + 32)) * 135.0;
  v52 = v115;
  *(v49 + v115) = v51;
  v53 = *MEMORY[0x1E69D70D0];
  result = v112(v49 + v52, *MEMORY[0x1E69D70D0], v117);
  if (*(v48 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v104 = *(v48 + 16);
    v55 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v56 = v48 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v57 = *(v55 + 72);
    LODWORD(v103) = v53;
    v89 = v57;
    v58 = 3 * v57;
    v93 = v46;
    v59 = v109;
    v60 = *(v109 + 20);
    v61 = v105;
    v121(&v105[v60], v124, v43);
    v62 = *(v123 + 56);
    v123 += 56;
    v91 = v62;
    v62(&v61[v60], 0, 1, v43);
    v63 = *MEMORY[0x1E69DDC70];
    *v61 = 0;
    *&v61[*(v59 + 24)] = 0;
    *&v61[*(v59 + 28)] = v63;
    v64 = *MEMORY[0x1E69DDCE0];
    v65 = *(MEMORY[0x1E69DDCE0] + 8);
    v66 = *(MEMORY[0x1E69DDCE0] + 16);
    v67 = *(MEMORY[0x1E69DDCE0] + 24);
    v88 = v63;
    v90 = v56;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v56 + v58, v61, v64, v65, v66, v67);
    sub_1D5BE780C(v61, type metadata accessor for HeadlineViewLayout.Options);
    v87 = sub_1D5BE8850();
    v92 = v43;
    v68 = v101;
    sub_1D7259A4C();

    v69 = v106;
    v106(v13, v68);
    v70 = v120;
    v126 = v120;
    v71 = v100;
    v72 = swift_allocBox();
    v98(v73, v99, v71);
    *v13 = v72;
    v74 = v119;
    (v119)(v13, v95, v68);
    sub_1D7259A9C();
    v69(v13, v68);
    v126 = v70;
    swift_getKeyPath();
    v75 = v96;
    v76 = swift_allocBox();
    v77 = *(v75 + 48);
    *v78 = 2;
    v79 = v92;
    (v121)(v78 + v77, v124);
    *v13 = v76;
    (v74)(v13, v93, v68);
    v80 = swift_allocObject();
    *(v80 + 16) = v111;
    v81 = v115;
    *(v80 + v115) = v51;
    result = v112(v80 + v81, v103, v117);
    if (v104 != 4)
    {
      v82 = v90 + 4 * v89;
      v83 = v109;
      v84 = *(v109 + 20);
      v85 = v105;
      v121(&v105[v84], v124, v79);
      v91(&v85[v84], 0, 1, v79);
      *v85 = 0;
      *&v85[*(v83 + 24)] = 0;
      *&v85[*(v83 + 28)] = v88;
      _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v82, v85, v64, v65, v66, v67);
      sub_1D5BE780C(v85, type metadata accessor for HeadlineViewLayout.Options);
      sub_1D7259A4C();

      return (v106)(v13, v68);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6143E4C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 3;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D61440F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D61446C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6144C98@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V2.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6144DAC(uint64_t a1)
{
  *(a1 + 8) = sub_1D6144DDC();
  result = sub_1D6144E30();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6144DDC()
{
  result = qword_1EC8842A8;
  if (!qword_1EC8842A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842A8);
  }

  return result;
}

unint64_t sub_1D6144E30()
{
  result = qword_1EC8842B0;
  if (!qword_1EC8842B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842B0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V2.Bound(uint64_t a1)
{
  result = qword_1EC8842C0;
  if (!qword_1EC8842C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6144EF8(uint64_t a1)
{
  result = sub_1D614567C(&qword_1EC8842D0, type metadata accessor for A12_V2.Bound, &unk_1D729F7EC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6144F60()
{
  result = qword_1EC8842E0;
  if (!qword_1EC8842E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842E0);
  }

  return result;
}

unint64_t sub_1D6144FB4()
{
  result = qword_1EC8842E8;
  if (!qword_1EC8842E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842E8);
  }

  return result;
}

uint64_t sub_1D6145018(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D614505C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D614505C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V2.Layout;
    v8[1] = &type metadata for A12_V2.Layout.Attributes;
    v8[2] = sub_1D6144F60();
    v8[3] = sub_1D6144FB4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D61450E8(uint64_t a1)
{
  if (!qword_1EC884318)
  {
    sub_1D6145614(255, &qword_1EC884320, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884318);
    }
  }
}

unint64_t sub_1D61451C4()
{
  result = qword_1EC884328;
  if (!qword_1EC884328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884328);
  }

  return result;
}

unint64_t sub_1D614521C()
{
  result = qword_1EC884330;
  if (!qword_1EC884330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884330);
  }

  return result;
}

unint64_t sub_1D6145274()
{
  result = qword_1EC884338;
  if (!qword_1EC884338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884338);
  }

  return result;
}

unint64_t sub_1D61452CC()
{
  result = qword_1EC884340;
  if (!qword_1EC884340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884340);
  }

  return result;
}

uint64_t sub_1D6145320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6145614(0, &qword_1EC884348, sub_1D61455C0, &type metadata for A12_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61455C0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D614567C(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D61455C0()
{
  result = qword_1EC884350;
  if (!qword_1EC884350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884350);
  }

  return result;
}

void sub_1D6145614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D614567C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D61456D8()
{
  result = qword_1EC884360;
  if (!qword_1EC884360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884360);
  }

  return result;
}

unint64_t sub_1D6145730()
{
  result = qword_1EC884368;
  if (!qword_1EC884368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884368);
  }

  return result;
}

unint64_t sub_1D6145788()
{
  result = qword_1EC884370;
  if (!qword_1EC884370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884370);
  }

  return result;
}

void sub_1D614583C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider;
  swift_beginAccess();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  sub_1D6145914();
}

uint64_t CoverIssueView.downloadButtonDataProvider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D6145914();
  return swift_unknownObjectRelease();
}

void sub_1D6145914()
{
  v1 = v0;
  v2 = sub_1D725D07C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v0[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v7 + 1);
    v10 = Strong;
    swift_getObjectType();
    sub_1D725EBCC();
    sub_1D725AE3C();

    sub_1D6145C80(v6, 0, v1, v10, v9);
    (*(v3 + 8))(v6, v2);
    sub_1D725EBCC();
    sub_1D5B5DA7C();
    v11 = sub_1D726308C();
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v10;
    v12[4] = v9;
    v13 = v1;
    swift_unknownObjectRetain();
    sub_1D725AE5C();

    v14 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable;
    swift_beginAccess();
    sub_1D6147FE4(&v19, v13 + v14);
    swift_endAccess();
    sub_1D725EBDC();
    v15 = sub_1D726308C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D725AE5C();
    swift_unknownObjectRelease();

    v16 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable;
    swift_beginAccess();
    sub_1D6147FE4(&v19, v13 + v16);
  }

  else
  {
    v17 = v1 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable;
    swift_beginAccess();
    if (*(v17 + 24))
    {
      sub_1D5B68374(v17, &v19);
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      sub_1D725A73C();
      __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    swift_beginAccess();
    sub_1D6147FE4(&v19, v17);
  }

  swift_endAccess();
  sub_1D61460CC();
}

void sub_1D6145C80(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D725D07C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == *MEMORY[0x1E69D7780])
  {
    (*(v9 + 8))(v13, v8);
    v15 = *(a3 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);
    swift_getObjectType();
    sub_1D725EBDC();
    sub_1D725AE3C();

    HIDWORD(v16) = HIDWORD(v19);
    *&v16 = v19;
    [v15 setProgress:0 animated:v16];
    [v15 setAlpha_];
    [v15 setHidden_];
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x1E69D7790])
  {
    (*(v9 + 8))(v13, v8);
    if ((a2 & 1) == 0)
    {
LABEL_7:
      sub_1D61460CC();
      return;
    }

LABEL_6:
    sub_1D6145F44();
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x1E69D7788])
  {
    v17 = *(a3 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);
    [v17 setProgress:0 animated:0.0];
    [v17 setAlpha_];
    [v17 setHidden_];
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x1E69D7798])
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1D726402C();
  __break(1u);
}

void sub_1D6145F44()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_1D6148114;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1D5B6B06C;
  v11 = &block_descriptor_25;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_1D6148134;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1D5DF8CE4;
  v11 = &block_descriptor_13_0;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.2];
  _Block_release(v6);
  _Block_release(v3);
}

void sub_1D61460CC()
{
  v1 = v0;
  v2 = sub_1D725D07C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar] isHidden] & 1) == 0)
  {
    v16 = v3;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    sub_1D725811C();

    v11 = [v9 bundleForClass_];
    sub_1D725811C();

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      v15 = sub_1D726203C();

      [v1 setTs:v15 accessibilityElementHelp:?];

      return;
    }

    swift_getObjectType();
    sub_1D725EBCC();
    sub_1D725AE3C();

    v12 = v16;
    v13 = (*(v16 + 88))(v7, v2);
    if (v13 == *MEMORY[0x1E69D7780])
    {

      (*(v12 + 8))(v7, v2);
      v14 = sub_1D726203C();
    }

    else
    {
      if (v13 == *MEMORY[0x1E69D7790])
      {

        (*(v12 + 8))(v7, v2);
      }

      else
      {
        if (v13 != *MEMORY[0x1E69D7788])
        {
          if (v13 != *MEMORY[0x1E69D7798])
          {
            sub_1D726402C();
            __break(1u);
            return;
          }

          [v1 setTs:0 accessibilityElementHelp:?];
          goto LABEL_15;
        }
      }

      v14 = sub_1D726203C();
    }

    [v1 setTs:v14 accessibilityElementHelp:?];

LABEL_15:
    swift_unknownObjectRelease();
    return;
  }

  [v1 setTs:0 accessibilityElementHelp:?];
}

void sub_1D6146528(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);

    *&v6 = v2;
    [v5 setProgress:1 animated:v6];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1D61460CC();
  }
}

void (*CoverIssueView.downloadButtonDataProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D6146688;
}

void sub_1D6146688(uint64_t a1, char a2)
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
    sub_1D6145914();
  }

  free(v3);
}

id CoverIssueView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CoverIssueView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton;
  *&v5[v12] = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch(0)) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView;
  v15 = type metadata accessor for IssueCoverView();
  *&v5[v14] = [objc_allocWithZone(v15) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView;
  *&v5[v16] = [objc_allocWithZone(v15) initWithFrame_];
  v17 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_accessoryLabel;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar;
  *&v5[v18] = [objc_allocWithZone(sub_1D725CD8C()) initWithFrame_];
  v19 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_cloudIcon;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_selectionImageView;
  *&v5[v20] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v21 = &v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection];
  *v21 = 0;
  v21[1] = 0;
  v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_isEditSelected] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = &v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable];
  sub_1D6147F80(0, &qword_1EDF3BDD8, type metadata accessor for DebugButton, MEMORY[0x1E69D63A0]);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_debugButton] = sub_1D725A80C();
  v34.receiver = v5;
  v34.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel;
  v26 = *&v24[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel];
  v27 = v24;
  [v27 addSubview_];
  v28 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView;
  [v27 addSubview_];
  v29 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView;
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [*&v24[v25] setLineBreakMode_];
  [*&v27[v29] setContentMode_];
  [*&v27[v29] setAccessibilityIgnoresInvertColors_];
  [*&v27[v28] setContentMode_];
  [*&v27[v28] setAccessibilityIgnoresInvertColors_];
  v30 = *MEMORY[0x1E69DDA38];
  v31 = [v27 accessibilityTraits];
  if ((v30 & ~v31) != 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  [v27 setAccessibilityTraits_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D725A7FC();

  return v27;
}

id sub_1D6146C54@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for DebugButton()) initWithFrame_];
  *a1 = result;
  return result;
}

void sub_1D6146CA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong addSubview_];
  }
}

id CoverIssueView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t CoverIssueView.accessibilityValue.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D725D07C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v28, sel_accessibilityValue, v5);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D726207C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v20 = 0;
    v21 = 0;
LABEL_13:
    sub_1D6147F80(0, &qword_1EDF195A0, sub_1D5B58D88, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7270C10;
    *(v25 + 32) = v10;
    *(v25 + 40) = v12;
    *(v25 + 48) = v20;
    *(v25 + 56) = v21;
    v19 = sub_1D725CE4C();
    goto LABEL_14;
  }

  swift_getObjectType();
  sub_1D725EBCC();
  sub_1D725AE3C();

  v13 = (*(v3 + 88))(v7, v2);
  if (v13 == *MEMORY[0x1E69D7780])
  {

    (*(v3 + 8))(v7, v2);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    sub_1D725EBDC();
    sub_1D725AE3C();

    v17 = v27 * 100.0;
    v18 = MEMORY[0x1E69E6438];
    *(v16 + 56) = MEMORY[0x1E69E63B0];
    *(v16 + 64) = v18;
    *(v16 + 32) = v17;
    v19 = sub_1D72620BC();
    swift_unknownObjectRelease();
LABEL_14:

    return v19;
  }

  if (v13 == *MEMORY[0x1E69D7790])
  {
    (*(v3 + 8))(v7, v2);
LABEL_12:
    type metadata accessor for Localized();
    v22 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v20 = sub_1D725811C();
    v21 = v24;
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x1E69D7788] || v13 == *MEMORY[0x1E69D7798])
  {
    goto LABEL_12;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

void CoverIssueView.accessibilityValue.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_1D726203C();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityValue_, v5);
}

void (*CoverIssueView.accessibilityValue.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v3[7] = swift_getObjectType();
  *v4 = CoverIssueView.accessibilityValue.getter();
  v4[1] = v5;
  return sub_1D61474FC;
}

void sub_1D61474FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_1D726203C();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 16) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 16), sel_setAccessibilityValue_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_1D726203C();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 32) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 32), sel_setAccessibilityValue_, v5);
  }

  free(v2);
}

id CoverIssueView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CoverIssueView.prepareForReuse()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v1 setAccessibilityLabel_];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_setAccessibilityValue_, 0);
  [v1 setTs:0 accessibilityElementHelp:?];
  v3 = &v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable];
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_1D5B68374(v3, &v12);
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    sub_1D725A73C();
    __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_beginAccess();
  sub_1D6147FE4(&v12, v3);
  swift_endAccess();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable];
  swift_beginAccess();
  if (*(v4 + 24))
  {
    sub_1D5B68374(v4, &v12);
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    sub_1D725A73C();
    __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_beginAccess();
  sub_1D6147FE4(&v12, v3);
  swift_endAccess();
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection];
  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection];
  v7 = *&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection + 8];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1D5B74328(v6, v7);
  sub_1D725A7CC();
  v8 = v12;
  if (v12)
  {
    v9 = sub_1D725F64C();
  }

  v10 = *(*&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_onTap);

  v11 = *(*&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_onTap);
}

Swift::Void __swiftcall CoverIssueView.setMultiSelectionEditing(_:selected:)(Swift::Bool _, Swift::Bool selected)
{
  if (_)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  if (_)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = 0.6;
  if (selected)
  {
    v5 = 1.0;
  }

  v6 = _;
  *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_isEditSelected) = selected;
  v7 = *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView);
  if (_)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView) layer];
  v10 = [v7 traitCollection];
  [v10 displayScale];
  v12 = v11;

  [v9 setRasterizationScale_];
  v13 = [v7 layer];
  [v13 setShouldRasterize_];

  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView);
  v15 = [v14 layer];
  v16 = [v14 traitCollection];
  [v16 displayScale];
  v18 = v17;

  [v15 setRasterizationScale_];
  v19 = [v14 layer];
  [v19 setShouldRasterize_];

  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_accessoryLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_selectionImageView) setAlpha_];
  [v7 setAlpha_];
  [v14 setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_cloudIcon) setAlpha_];
  v20 = *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection);
  if (v20)
  {
    v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection + 8);

    v20(v2, selected);

    sub_1D5B74328(v20, v21);
  }
}

void sub_1D6147CAC()
{
  sub_1D5BBB1FC(&qword_1EDF329B0, &protocol conformance descriptor for CoverIssueView);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed14CoverIssueViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch(0)) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView;
  v5 = type metadata accessor for IssueCoverView();
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView;
  *(v0 + v6) = [objc_allocWithZone(v5) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_accessoryLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar;
  *(v0 + v8) = [objc_allocWithZone(sub_1D725CD8C()) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_cloudIcon;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_selectionImageView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v11 = (v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_isEditSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  sub_1D726402C();
  __break(1u);
}

void sub_1D6147F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6147FE4(uint64_t a1, uint64_t a2)
{
  sub_1D5BFB840(0, &qword_1EDF3BE98, &qword_1EDF3BEA0, MEMORY[0x1E69D6360], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6148074(uint64_t a1)
{
  sub_1D5BFB840(0, &qword_1EDF3BE98, &qword_1EDF3BEA0, MEMORY[0x1E69D6360], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D6148134()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);
  [v1 setHidden_];

  return [v1 setProgress:0 animated:0.0];
}

uint64_t SportsTaxonomyGraphLeafEntityNode.__allocating_init(tagId:umcId:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = swift_allocObject();
  *(result + 56) = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

uint64_t SportsTaxonomyGraphLeafEntityNode.init(tagId:umcId:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_1D6148224(unint64_t *a1)
{
  v4[0] = *a1;
  type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
  swift_allocObject();

  sub_1D613DCC8(v4);
  v2 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v2);
  if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

void *SportsTaxonomyGraphLeafEntityNode.deinit()
{

  return v0;
}

uint64_t SportsTaxonomyGraphLeafEntityNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *ImagePersistenceProvider.__allocating_init(imageCache:rendererEnvironment:layoutCollectionProvider:layoutProvider:layoutOptionsProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_1D5B63F14(a1, (v12 + 2));
  sub_1D5B63F14(a2, (v12 + 7));
  v12[12] = a3;
  v12[13] = a4;
  v12[14] = a5;
  v12[15] = a6;
  return v12;
}

Swift::Void __swiftcall ImagePersistenceProvider.persist()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v148 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v140 = &v109 - v4;
  v5 = v2[13];
  v143 = sub_1D725DDFC();
  v117 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v6);
  v139 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v112 = &v109 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v120 = &v109 - v13;
  v14 = v2[10];
  *&v15 = v2[12];
  *&v16 = v14;
  v141 = v3;
  *(&v16 + 1) = v3;
  v149 = v16;
  *(&v15 + 1) = v5;
  v153 = v15;
  v159 = v16;
  v160 = v15;
  v124 = sub_1D725E28C();
  v116 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v17);
  v123 = &v109 - v18;
  v131 = v14;
  v115 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v122 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v130 = &v109 - v24;
  v154 = sub_1D7258DBC();
  v114 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v25);
  v119 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v109 - v30;
  sub_1D6149BD4(0, v29);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v152 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1D725EF6C();
  v113 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v35);
  v132 = &v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v138 = &v109 - v39;
  v159 = v149;
  v160 = v153;
  v136 = sub_1D725D34C();
  v121 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v40);
  v150 = &v109 - v41;
  v155 = sub_1D725E9DC();
  v42 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v43);
  v45 = &v109 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D725D58C();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v109 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_1D725E61C();
  sub_1D725F16C();
  sub_1D725D57C();
  sub_1D725D54C();
  sub_1D725D53C();
  v51 = sub_1D725E9BC();
  (*(v42 + 8))(v45, v155);
  if (v51)
  {
    v111 = v50;
    v155 = v47;
    v151 = v46;
    v144 = v1;
    *&v156 = v1[13];
    v159 = v149;
    v160 = v153;
    sub_1D725E48C();
    swift_getWitnessTable();
    v52 = v150;
    sub_1D725EBEC();
    v53 = v51;
    v147 = v51 & 0xFFFFFFFFFFFFFF8;
    if (v51 >> 62)
    {
      goto LABEL_47;
    }

    v54 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v55 = v151;
    v56 = v155;
    v57 = v136;
    if (v54)
    {
      v58 = 0;
      *&v153 = v53 & 0xC000000000000001;
      v145 = v53 + 32;
      v142 = (v114 + 1);
      v137 = v117 + 1;
      v135 = (v148 + 16);
      v134 = (v148 + 8);
      v133 = (v113 + 6);
      v129 = (v113 + 4);
      v128 = (v113 + 2);
      v127 = (v113 + 11);
      v126 = *MEMORY[0x1E69D8460];
      v110 = *MEMORY[0x1E69D8458];
      v125 = v113 + 1;
      v113 += 12;
      v114 += 4;
      v109 = (v117 + 2);
      v117 = (v116 + 1);
      v116 = (v115 + 2);
      ++v115;
      v148 = v53;
      *&v149 = v54;
      v118 = v31;
      do
      {
        if (v153)
        {
          v59 = v57;
          v60 = MEMORY[0x1DA6FB460](v58, v53);
          v61 = v154;
          v62 = __OFADD__(v58++, 1);
          if (v62)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v61 = v154;
          if (v58 >= *(v147 + 16))
          {
            goto LABEL_46;
          }

          v59 = v57;
          v60 = *(v145 + 8 * v58);
          v62 = __OFADD__(v58++, 1);
          if (v62)
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            v54 = sub_1D7263BFC();
            goto LABEL_4;
          }
        }

        v63 = [v60 representedElementCategory];
        if (v63)
        {
          if (v63 == 1)
          {
            sub_1D725C99C();
            v64 = v152;
            v65 = v146;
            if ((*v133)(v152, 1, v146) == 1)
            {

              sub_1D6149CC4(v64, sub_1D6149BD4);
              goto LABEL_38;
            }

            v73 = v138;
            (*v129)(v138, v64, v65);
            v74 = v132;
            (*v128)(v132, v73, v65);
            v75 = (*v127)(v74, v65);
            if (v75 == v126)
            {
              v76 = [v60 indexPath];
              sub_1D7258D6C();

              sub_1D7258DAC();
              (*v142)(v31, v61);
              v77 = v123;
              v59 = v136;
              v52 = v150;
              sub_1D725D36C();
              v78 = v130;
              v79 = v124;
              sub_1D725E24C();
              v80 = v77;
              v81 = v78;
              (*v117)(v80, v79);
              v82 = v131;
              *(&v160 + 1) = v131;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
              v84 = *v116;
              (*v116)(boxed_opaque_existential_1, v81, v82);
              sub_1D61497AC(&v159);
              __swift_destroy_boxed_opaque_existential_1(&v159);
              v84(v122, v81, v82);
              v85 = MEMORY[0x1E69D8728];
              sub_1D5B49474(0, &qword_1EDF3B468, MEMORY[0x1E69D8728]);
              v86 = swift_dynamicCast();
              v53 = v148;
              if (v86)
              {
                sub_1D5B63F14(&v156, &v159);
                __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
                v87 = sub_1D725F56C();
                if (v87)
                {
                  v88 = *(v87 + 16);
                  if (v88)
                  {
                    v89 = (v87 + 32);
                    do
                    {
                      v90 = v89[3];
                      v91 = __swift_project_boxed_opaque_existential_1(v89, v90);
                      *(&v157 + 1) = v90;
                      v92 = __swift_allocate_boxed_opaque_existential_1(&v156);
                      (*(*(v90 - 8) + 16))(v92, v91, v90);
                      sub_1D61497AC(&v156);
                      __swift_destroy_boxed_opaque_existential_1(&v156);
                      v89 += 5;
                      --v88;
                    }

                    while (v88);
                  }

                  (*v115)(v130, v131);
                  goto LABEL_42;
                }

                (*v115)(v81, v131);
                (*v125)(v138, v146);
                __swift_destroy_boxed_opaque_existential_1(&v159);
              }

              else
              {

                (*v115)(v81, v82);
                (*v125)(v138, v146);
                v158 = 0;
                v156 = 0u;
                v157 = 0u;
                sub_1D5BFB774(&v156, &unk_1EDF16E58, &qword_1EDF3B468, v85);
              }

              v31 = v118;
LABEL_38:
              v55 = v151;
              v57 = v59;
            }

            else
            {
              v93 = v136;
              v94 = v150;
              v53 = v148;
              if (v75 == v110)
              {
                v95 = v132;
                (*v113)(v132, v65);
                sub_1D6149C2C(0);
                v97 = v119;
                (*v114)(v119, &v95[*(v96 + 48)], v61);
                v98 = v120;
                sub_1D725D35C();
                v99 = v143;
                (*v109)(v112, v98, v143);
                sub_1D5B49474(0, &qword_1EDF3B468, MEMORY[0x1E69D8728]);
                v100 = v99;
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v156, &v159);
                  __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
                  v101 = sub_1D725F56C();
                  if (v101)
                  {
                    v102 = *(v101 + 16);
                    if (v102)
                    {
                      v103 = (v101 + 32);
                      do
                      {
                        v104 = v103[3];
                        v105 = __swift_project_boxed_opaque_existential_1(v103, v104);
                        *(&v157 + 1) = v104;
                        v106 = __swift_allocate_boxed_opaque_existential_1(&v156);
                        (*(*(v104 - 8) + 16))(v106, v105, v104);
                        sub_1D61497AC(&v156);
                        __swift_destroy_boxed_opaque_existential_1(&v156);
                        v103 += 5;
                        --v102;
                      }

                      while (v102);
                    }
                  }

                  else
                  {
                  }

                  (*v137)(v120, v143);
                  (*v142)(v119, v154);
LABEL_42:
                  (*v125)(v138, v146);
                  __swift_destroy_boxed_opaque_existential_1(&v159);
                  v31 = v118;
                  v57 = v136;
                  v52 = v150;
                  v55 = v151;
                  v53 = v148;
                }

                else
                {
                  v52 = v94;

                  (*v137)(v98, v100);
                  (*v142)(v97, v61);
                  (*v125)(v138, v146);
                  v158 = 0;
                  v156 = 0u;
                  v157 = 0u;
                  sub_1D5BFB774(&v156, &unk_1EDF16E58, &qword_1EDF3B468, MEMORY[0x1E69D8728]);
                  v31 = v118;
                  v55 = v151;
                  v57 = v136;
                }
              }

              else
              {

                v107 = v65;
                v108 = *v125;
                (*v125)(v138, v107);
                v108(v132, v107);
                v55 = v151;
                v57 = v93;
                v52 = v94;
              }
            }

            v54 = v149;
            goto LABEL_7;
          }

          v57 = v59;
        }

        else
        {
          v66 = [v60 indexPath];
          sub_1D7258D6C();

          v67 = v139;
          sub_1D725D35C();
          (*v142)(v31, v61);
          v68 = v140;
          v69 = v143;
          sub_1D725DDEC();
          (*v137)(v67, v69);
          v70 = v141;
          *(&v160 + 1) = v141;
          v71 = __swift_allocate_boxed_opaque_existential_1(&v159);
          (*v135)(v71, v68, v70);
          sub_1D61497AC(&v159);
          v54 = v149;
          v55 = v151;

          v57 = v59;
          v72 = v70;
          v53 = v148;
          v52 = v150;
          (*v134)(v68, v72);
          __swift_destroy_boxed_opaque_existential_1(&v159);
        }

LABEL_7:
        v56 = v155;
      }

      while (v58 != v54);
    }

    (*(v121 + 8))(v52, v57);
    (*(v56 + 8))(v111, v55);
  }

  else
  {
    (*(v47 + 8))(v50, v46);
  }
}

uint64_t sub_1D61497AC(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v33 = sub_1D725E23C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ImageRequestOptions(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1D725F1DC();
  sub_1D725E15C();
  v16 = v15;
  v17 = *(v3 + 8);
  v18 = v10;
  v19 = v33;
  v17(v18, v33);
  sub_1D725F1DC();
  v20 = sub_1D725E1AC();
  v17(v6, v19);
  v21 = *(v12 + 32);
  v22 = sub_1D725CB5C();
  v23 = &v35[v21];
  v24 = v35;
  (*(*(v22 - 8) + 56))(v23, 1, 1, v22);
  *v24 = v16;
  v24[1] = v20;
  sub_1D5B76B10(v34, v39);
  sub_1D5B49474(0, &qword_1EDF225F0, &protocol descriptor for FormatImageRequestProviding);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v36, v40);
    v25 = v41;
    v26 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v27 = (*(v26 + 8))(v24, v25, v26);
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + 32;
        do
        {
          sub_1D5B68374(v29, &v36);
          __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
          __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
          sub_1D725EAEC();
          __swift_destroy_boxed_opaque_existential_1(&v36);
          sub_1D725D09C();

          v29 += 40;
          --v28;
        }

        while (v28);
      }

      v30 = v35;
    }

    else
    {
      v30 = v24;
    }

    sub_1D6149CC4(v30, type metadata accessor for ImageRequestOptions);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1D6149CC4(v24, type metadata accessor for ImageRequestOptions);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    return sub_1D5BFB774(&v36, &qword_1EDF225E8, &qword_1EDF225F0, &protocol descriptor for FormatImageRequestProviding);
  }
}

void *ImagePersistenceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ImagePersistenceProvider.__deallocating_deinit()
{
  ImagePersistenceProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1D6149BD4(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF3B4B8)
  {
    sub_1D725EF6C();
    v2 = sub_1D726393C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF3B4B8);
    }
  }
}

void sub_1D6149C2C(uint64_t a1)
{
  if (!qword_1EDF04798)
  {
    sub_1D7258DBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04798);
    }
  }
}

uint64_t sub_1D6149CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatLocalization.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FormatLocalization.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t FormatLocalization.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FormatLocalization.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatLocalization.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void FormatLocalization.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t _s8NewsFeed18FormatLocalizationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (sub_1D72646CC() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_16:

  return sub_1D634D194(v5, v11);
}

unint64_t sub_1D614A010(uint64_t a1)
{
  result = sub_1D5B55BC8();
  *(a1 + 8) = result;
  return result;
}

uint64_t PuzzleComponentMenuEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t PuzzleComponentMenuEvent.scriptEventDetail.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D5C0BFF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 25705;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D614A228(inited + 32);
  return v4;
}

unint64_t sub_1D614A18C()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D5C0BFF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 25705;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D614A228(inited + 32);
  return v4;
}

uint64_t sub_1D614A228(uint64_t a1)
{
  sub_1D5BE1388();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DebugNewsroomThemeData(uint64_t a1)
{
  result = qword_1EC8843F0;
  if (!qword_1EC8843F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D614A308(uint64_t a1)
{
  sub_1D5B49CBC(319, &qword_1EDF1ADE0, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1D5B5BF24(319, &qword_1EC884400, sub_1D614A45C);
      if (v3 <= 0x3F)
      {
        sub_1D5B5BF24(319, &qword_1EC884408, sub_1D614A4B8);
        if (v4 <= 0x3F)
        {
          sub_1D5B5BF24(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D614A45C()
{
  if (!qword_1EDF05810)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05810);
    }
  }
}

void sub_1D614A4B8(uint64_t a1)
{
  if (!qword_1EC884410)
  {
    sub_1D72585BC();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884410);
    }
  }
}

void sub_1D614A520()
{
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25 - v3;
  v5 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 96);
  if (v10)
  {
    v29 = v9;
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = (v7 + 48);
    v27 = v7;
    v28 = (v7 + 32);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v16;
      if (!v13)
      {
        break;
      }

LABEL_9:
      v13 &= v13 - 1;

      sub_1D725BD4C();
      if ((*v15)(v4, 1, v5) == 1)
      {
        sub_1D5F40BCC(v4);
      }

      else
      {
        v18 = *v28;
        (*v28)(v29, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1D69903D0(0, *(v30 + 2) + 1, 1, v30);
        }

        v20 = *(v30 + 2);
        v19 = *(v30 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v26 = v20 + 1;
          v24 = sub_1D69903D0((v19 > 1), v20 + 1, 1, v30);
          v21 = v26;
          v30 = v24;
        }

        v22 = v29;
        v23 = v30;
        *(v30 + 2) = v21;
        v18(&v23[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v20], v22, v5);
      }
    }

    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v31 = v30;

        sub_1D61FBD38(&v31);

        return;
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++v17;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }
}

unint64_t sub_1D614A854(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 1701667182;
    if (a1 != 2)
    {
      v5 = 0x4A6567616B636170;
    }

    if (a1)
    {
      v4 = 0x6465766968637261;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x655674736574616CLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0x4A6567616B636170;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D614A990@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D614B930(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D614A9B8(uint64_t a1)
{
  v2 = sub_1D614B418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D614A9F4(uint64_t a1)
{
  v2 = sub_1D614B418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D614AA30(void *a1)
{
  v3 = v1;
  sub_1D614B65C(0, &qword_1EC884440, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D614B418();
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D726438C();
    LOBYTE(v13) = 2;
    sub_1D726437C();
    LOBYTE(v13) = 3;
    sub_1D726437C();
    LOBYTE(v13) = 4;
    sub_1D726437C();
    LOBYTE(v13) = 5;
    sub_1D726437C();
    v13 = *(v3 + 88);
    HIBYTE(v12) = 6;
    sub_1D614A45C();
    sub_1D614B6C0(&qword_1EC884448, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D72643BC();
    v13 = *(v3 + 96);
    HIBYTE(v12) = 7;
    sub_1D614A4B8(0);
    sub_1D614B720();
    sub_1D72643BC();
    type metadata accessor for DebugNewsroomThemeData(0);
    LOBYTE(v13) = 8;
    sub_1D725BD1C();
    sub_1D614B7D0(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D614AD50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v37 - v6;
  sub_1D614B65C(0, &qword_1EC884420, MEMORY[0x1E69E6F48]);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v37 - v10;
  v12 = type metadata accessor for DebugNewsroomThemeData(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  v18 = sub_1D725BD1C();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v20 = v15;
  v19(&v15[v17], 1, 1, v18);
  v21 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D614B418();
  v41 = v11;
  sub_1D7264B0C();
  if (v2)
  {
    v44 = v2;
    __swift_destroy_boxed_opaque_existential_1(v42);
    swift_bridgeObjectRelease_n();
LABEL_4:

    return sub_1D5F40BCC(v20 + v43);
  }

  v22 = v39;
  v23 = v40;
  LOBYTE(v46) = 0;
  v24 = v41;
  *v20 = sub_1D72642BC();
  *(v20 + 8) = v26;
  LOBYTE(v46) = 1;
  *(v20 + 16) = sub_1D726423C();
  LOBYTE(v46) = 2;
  *(v20 + 24) = sub_1D726422C();
  *(v20 + 32) = v27;
  LOBYTE(v46) = 3;
  v28 = sub_1D726422C();
  v30 = v29;
  *(v20 + 40) = v28;
  *(v20 + 48) = v29;
  LOBYTE(v46) = 4;
  *(v20 + 56) = sub_1D726422C();
  *(v20 + 64) = v31;
  v37[3] = v31;
  LOBYTE(v46) = 5;
  v32 = sub_1D726422C();
  v44 = 0;
  v37[1] = v33;
  v37[2] = v30;
  *(v20 + 72) = v32;
  *(v20 + 80) = v33;
  sub_1D614A45C();
  v45 = 6;
  sub_1D614B6C0(&qword_1EC884430, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  v34 = v44;
  sub_1D726427C();
  v44 = v34;
  if (v34)
  {
    (*(v22 + 8))(v24, v23);
    __swift_destroy_boxed_opaque_existential_1(v42);
LABEL_5:

    goto LABEL_4;
  }

  *(v20 + 88) = v46;
  sub_1D614A4B8(0);
  v45 = 7;
  sub_1D614B46C();
  v35 = v44;
  sub_1D726427C();
  v44 = v35;
  if (v35)
  {
    (*(v22 + 8))(v41, v23);
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_5;
  }

  *(v20 + 96) = v46;
  LOBYTE(v46) = 8;
  sub_1D614B7D0(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
  v36 = v44;
  sub_1D726427C();
  v44 = v36;
  if (v36)
  {
    (*(v22 + 8))(v41, v40);
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_5;
  }

  (*(v22 + 8))(v41, v40);
  sub_1D614B51C(v7, v20 + v43);
  sub_1D614B59C(v20, v38);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_1D614B600(v20);
}

uint64_t sub_1D614B394(uint64_t a1)
{
  *(a1 + 8) = sub_1D614B7D0(&qword_1EC884418, type metadata accessor for DebugNewsroomThemeData, &unk_1D729FE30);
  result = sub_1D614B7D0(&qword_1EC882C78, type metadata accessor for DebugNewsroomThemeData, &unk_1D729FE08);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D614B418()
{
  result = qword_1EC884428;
  if (!qword_1EC884428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884428);
  }

  return result;
}

unint64_t sub_1D614B46C()
{
  result = qword_1EC884438;
  if (!qword_1EC884438)
  {
    sub_1D614A4B8(255);
    sub_1D614B7D0(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884438);
  }

  return result;
}

uint64_t sub_1D614B51C(uint64_t a1, uint64_t a2)
{
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D614B59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugNewsroomThemeData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D614B600(uint64_t a1)
{
  v2 = type metadata accessor for DebugNewsroomThemeData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D614B65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D614B418();
    v7 = a3(a1, &type metadata for DebugNewsroomThemeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D614B6C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D614A45C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D614B720()
{
  result = qword_1EC884450;
  if (!qword_1EC884450)
  {
    sub_1D614A4B8(255);
    sub_1D614B7D0(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884450);
  }

  return result;
}

uint64_t sub_1D614B7D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D614B82C()
{
  result = qword_1EC884458;
  if (!qword_1EC884458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884458);
  }

  return result;
}

unint64_t sub_1D614B884()
{
  result = qword_1EC884460;
  if (!qword_1EC884460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884460);
  }

  return result;
}

unint64_t sub_1D614B8DC()
{
  result = qword_1EC884468;
  if (!qword_1EC884468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884468);
  }

  return result;
}

uint64_t sub_1D614B930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEB000000006E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xED000064496E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEE006C72556E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73CB7C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73CB7E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x655674736574616CLL && a2 == 0xED00006E6F697372)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void *FeedItemSorter.__allocating_init(sorter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1D614CA04(a1, a2);

  return v4;
}

void *FeedItemSorter.init(sorter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D614CA04(a1, a2);

  return v2;
}

uint64_t sub_1D614BCAC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v3 + 80);

  swift_getTupleTypeMetadata2();
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  if (sub_1D726279C())
  {

    v7 = 0;
    v28 = v4;
    v25 = FunctionTypeMetadata2;
    while (1)
    {
      v8 = sub_1D726277C();
      result = sub_1D726271C();
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_10;
      }

      v27 = v7 + 1;
      v10 = v28 + 16 * v7;
      v11 = swift_allocObject();
      v26 = *(v10 + 32);
      v12 = v26;
      *(v11 + 16) = v5;
      *(v11 + 24) = v12;
      v29 = a1;
      v13 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      MEMORY[0x1DA6F9AD0](&v30, v13, WitnessTable);

      v29 = v30;
      MEMORY[0x1EEE9AC00](v15, v16);
      v23[0] = v5;
      v23[1] = sub_1D614CC50;
      v24 = v11;
      sub_1D72640AC();

      swift_getWitnessTable();
      v17 = sub_1D72624AC();

      v30 = v17;
      MEMORY[0x1EEE9AC00](v18, v19);
      v24 = v5;
      swift_getTupleTypeMetadata2();
      v20 = sub_1D72627FC();
      v21 = swift_getWitnessTable();
      a1 = sub_1D5B874E4(sub_1D614CCE0, v23, v20, v5, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

      ++v7;
      if (v27 == sub_1D726279C())
      {

        return a1;
      }
    }

    result = sub_1D7263DBC();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D614C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, char *), uint64_t a6, uint64_t a7)
{
  v26[1] = a6;
  v27 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v26 - v20;
  *(v26 - v20) = a1;
  v23 = *(*(a7 - 8) + 16);
  v23(v26 + *(v22 + 48) - v20, a2, a7, v19);
  *v16 = a3;
  (v23)(&v16[*(TupleTypeMetadata2 + 48)], a4, a7);
  v27(&v28, v21, v16);
  v24 = *(v13 + 8);
  v24(v16, TupleTypeMetadata2);
  v24(v21, TupleTypeMetadata2);
  return v28;
}

uint64_t sub_1D614C1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, TupleTypeMetadata2, v8);
  return (*(*(a2 - 8) + 32))(a3, &v10[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t FeedItemSorter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double + infix<A>(_:_:)(uint64_t *a1, uint64_t a2)
{
  sub_1D614CB18(a1, a2);

  return result;
}

BOOL sub_1D614C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  sub_1D5B68374(a2, &v29);
  v26 = a3;
  sub_1D5B68374(a4, &v27);
  sub_1D614CD00(&v28, &v21, &qword_1EDF1AC70, sub_1D5EFF46C);
  v8 = v21;
  sub_1D5B63F14(v22, v23);
  sub_1D614CD00(&v26, &v21, &qword_1EDF1AC70, sub_1D5EFF46C);
  v9 = v21;
  sub_1D5B63F14(v22, v18);
  v10 = v24;
  v11 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v11 + 24))(&v21, v10, v11);
  if ((a5 & ~v21) != 0 || (v12 = v19, v13 = v20, __swift_project_boxed_opaque_existential_1(v18, v19), (*(v13 + 24))(&v21, v12, v13), (a5 & ~v21) != 0))
  {
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 24))(&v21, v15, v16);
    sub_1D614CD6C(&v26, &qword_1EDF1AC70, sub_1D5EFF46C);
    sub_1D614CD6C(&v28, &qword_1EDF1AC70, sub_1D5EFF46C);
    v14 = (a5 & ~v21) == 0;
  }

  else
  {
    sub_1D614CD6C(&v26, &qword_1EDF1AC70, sub_1D5EFF46C);
    sub_1D614CD6C(&v28, &qword_1EDF1AC70, sub_1D5EFF46C);
    v14 = v8 < v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v14;
}

void sub_1D614C5B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a4;
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  sub_1D5C14B84(0, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v45 - v22);
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v45 - v26) = a1;
  v27 = a2;
  v28 = &v45 - v26;
  sub_1D5C0C74C(v27, &v45 + *(v16 + 56) - v26);
  *v23 = a3;
  sub_1D5C0C74C(v48, v23 + *(v16 + 56));
  sub_1D614CD00(v28, v19, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  v47 = *v19;
  sub_1D5EC9594(v19 + *(v16 + 56), v14);
  v48 = v23;
  sub_1D614CD00(v23, v19, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  sub_1D5EC9594(v19 + *(v16 + 56), v10);
  v29 = *(v14 + 5);
  if (![v29 hasThumbnail] || (v30 = v10[5], !objc_msgSend(v30, sel_hasThumbnail)))
  {
    [v10[5] hasThumbnail];
    sub_1D614CD6C(v48, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
    sub_1D614CD6C(v28, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
LABEL_6:
    sub_1D5C10040(v14);
    sub_1D5C10040(v10);
    return;
  }

  v31 = v28;
  v32 = [v29 title];
  if (v32)
  {
    v33 = v32;
    sub_1D726207C();
  }

  v46 = v10;
  v34 = [v29 shortExcerpt];
  if (v34)
  {
    v35 = v34;
    sub_1D726207C();
  }

  v36 = sub_1D726221C();

  v37 = sub_1D726221C();

  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = [v30 title];
  if (v39)
  {
    v40 = v39;
    sub_1D726207C();
  }

  v41 = [v30 shortExcerpt];
  if (v41)
  {
    v42 = v41;
    sub_1D726207C();
  }

  v43 = sub_1D726221C();

  v44 = sub_1D726221C();

  if (__OFADD__(v43, v44))
  {
    goto LABEL_18;
  }

  sub_1D614CD6C(v48, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  sub_1D614CD6C(v31, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  if (!__OFSUB__(v38, v43 + v44))
  {
    v10 = v46;
    goto LABEL_6;
  }

LABEL_19:
  __break(1u);
}

void *sub_1D614CA04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 80);
  swift_getTupleTypeMetadata2();
  swift_getFunctionTypeMetadata2();
  v3[2] = sub_1D7261CFC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  swift_beginAccess();
  sub_1D72627FC();

  sub_1D72627BC();
  swift_endAccess();
  return v3;
}

uint64_t *sub_1D614CB18(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  swift_beginAccess();

  swift_getTupleTypeMetadata2();
  swift_getFunctionTypeMetadata2();
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D72627AC();
  swift_endAccess();
  return a1;
}

uint64_t sub_1D614CC5C(char *a1, char *a2)
{
  v5 = *(v2 + 24);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)], *a2, &a2[*(TupleTypeMetadata2 + 48)]) & 1;
}

uint64_t sub_1D614CD00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C14B84(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D614CD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C14B84(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D614CDC8@<X0>(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v7(v8, &a1[*(TupleTypeMetadata2 + 48)], *a2, &a2[*(TupleTypeMetadata2 + 48)]);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1D614CE58()
{
  result = qword_1EC884470;
  if (!qword_1EC884470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884470);
  }

  return result;
}

uint64_t sub_1D614CEAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616974726170;
  if (v2 != 1)
  {
    v4 = 0x6465646E61707865;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x657370616C6C6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (*a2 != 1)
  {
    v8 = 0x6465646E61707865;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657370616C6C6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D614CFB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D614D058(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D614D0EC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D614D190@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D614D328(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D614D1C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE700000000000000;
  v5 = 0x6C616974726170;
  if (v2 != 1)
  {
    v5 = 0x6465646E61707865;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657370616C6C6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D614D224(uint64_t a1)
{
  v2 = sub_1D614D374();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D614D278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D614D374();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D614D2D4(uint64_t a1)
{
  v2 = sub_1D614D374();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D614D328(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D614D374()
{
  result = qword_1EC884478;
  if (!qword_1EC884478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884478);
  }

  return result;
}

uint64_t FeedJournalEntry.chosenGroup.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 16))
  {
    return sub_1D5C0C678(*v1 + 32, a1);
  }

  __break(1u);
  return result;
}

unint64_t FeedJournalEntry.slots.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5C07390(v2);
}

void sub_1D614D414(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  sub_1D614D52C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;

  v9 = a2;
  sub_1D6A69914(a1, a2, v17, a4);
  v10 = v17[13];
  *(v8 + 224) = v17[12];
  *(v8 + 240) = v10;
  *(v8 + 256) = v17[14];
  *(v8 + 272) = v18;
  v11 = v17[9];
  *(v8 + 160) = v17[8];
  *(v8 + 176) = v11;
  v12 = v17[11];
  *(v8 + 192) = v17[10];
  *(v8 + 208) = v12;
  v13 = v17[5];
  *(v8 + 96) = v17[4];
  *(v8 + 112) = v13;
  v14 = v17[7];
  *(v8 + 128) = v17[6];
  *(v8 + 144) = v14;
  v15 = v17[1];
  *(v8 + 32) = v17[0];
  *(v8 + 48) = v15;
  v16 = v17[3];
  *(v8 + 64) = v17[2];
  *(v8 + 80) = v16;

  *a3 = v8;
}

void sub_1D614D52C()
{
  if (!qword_1EDF02300)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02300);
    }
  }
}

unint64_t sub_1D614D57C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (*(*v2 + 16))
  {
    v5 = result;
    v6 = v2[1];
    v7 = v2[2];
    sub_1D5C0C678(v4 + 32, &v12);
    sub_1D5C034F0(&v13, &v10);
    sub_1D5C074F4(&v12);
    if (v11 <= 2u)
    {
      sub_1D5B63F14(&v10, v14);
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      sub_1D6D92DCC(v5, v8, v9);
      *a2 = v4;
      a2[1] = v6;
      a2[2] = v7;

      sub_1D5C07390(v6);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      if (v11 == 3)
      {

        __swift_destroy_boxed_opaque_existential_1(&v10);
      }

      else
      {
        sub_1D5BC3420(&v10);
      }

      *a2 = v4;
      a2[1] = v6;
      a2[2] = v7;

      return sub_1D5C07390(v6);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

void sub_1D614D9A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v3[1];
  v9 = v3[2];
  sub_1D5C0C678(v5 + 32, &v66);
  sub_1D5C034F0(v77, &v49);
  sub_1D5C074F4(&v66);
  if (v53 <= 2u)
  {
    v10 = v52[1];
    sub_1D5B63F14(&v49, v85);
    __swift_project_boxed_opaque_existential_1(v85, v86);
    if (sub_1D725AA4C() == a1 && v11 == a2)
    {
    }

    else
    {
      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        *a3 = v5;
        a3[1] = v8;
        a3[2] = v9;

LABEL_16:
        sub_1D5C07390(v8);
        __swift_destroy_boxed_opaque_existential_1(v85);
        return;
      }
    }

    if (*(v5 + 16))
    {
      sub_1D5C0C678(v5 + 32, &v49);
      v15 = v86;
      v14 = v87;
      __swift_project_boxed_opaque_existential_1(v85, v86);
      (*(*(v14 + 8) + 64))(v15);
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_1D7263D4C();

      v66 = 0xD000000000000014;
      v67 = 0x80000001D73CB800;
      MEMORY[0x1DA6F9910](a1, a2);
      v16 = v66;
      v17 = v67;
      v18 = *(&v49 + 1);
      v19 = v51;
      v45 = v50;
      v46 = v49;
      sub_1D614DDE4(v52, v70);
      v20 = v54;
      v21 = v55;
      v44 = v56;
      v43 = v57;
      v42 = v58;
      v41 = v59;
      v39 = v61;
      v40 = v60;
      sub_1D5B68374(v85, v77);
      v77[5] = v10;
      v77[6] = v16;
      v77[7] = v17;
      v78 = 3;
      v22 = v62;
      v23 = v63;
      v24 = v64;
      v25 = v65;
      sub_1D614E334(&v49, v47);
      v26 = swift_allocObject();
      v27 = v47[13];
      *(v26 + 208) = v47[12];
      *(v26 + 224) = v27;
      *(v26 + 240) = v47[14];
      *(v26 + 256) = v48;
      v28 = v47[9];
      *(v26 + 144) = v47[8];
      *(v26 + 160) = v28;
      v29 = v47[11];
      *(v26 + 176) = v47[10];
      *(v26 + 192) = v29;
      v30 = v47[5];
      *(v26 + 80) = v47[4];
      *(v26 + 96) = v30;
      v31 = v47[7];
      *(v26 + 112) = v47[6];
      *(v26 + 128) = v31;
      v32 = v47[1];
      *(v26 + 16) = v47[0];
      *(v26 + 32) = v32;
      v33 = v47[3];
      *(v26 + 48) = v47[2];
      *(v26 + 64) = v33;
      v66 = v46;
      v67 = v18;
      v68 = v45;
      v69 = v19;
      v70[5] = v20;
      v70[6] = v21;
      v71 = v44;
      v72 = v43;
      v73 = v42;
      v74 = v41;
      v75 = v40;
      v76 = v39;
      v79 = v22;
      v80 = v23;
      v81 = v24;
      v82 = v25;
      v83 = sub_1D614E390;
      v84 = v26;

      sub_1D614E398(v22, v23);
      sub_1D5C074F4(&v49);
      sub_1D614D52C();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D7273AE0;
      sub_1D614E334(&v66, v34 + 32);
      v35 = *(v5 + 16);
      v36 = v35 != 0;
      v37 = (2 * v35) | 1;
      *&v49 = v34;

      sub_1D6987410(v38, v5 + 32, v36, v37);
      sub_1D5C074F4(&v66);
      *a3 = v49;
      a3[1] = v8;
      a3[2] = v9;
      goto LABEL_16;
    }

LABEL_18:
    __break(1u);
    return;
  }

  if (v53 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    sub_1D5BC3420(&v49);
  }

  *a3 = v5;
  a3[1] = v8;
  a3[2] = v9;

  sub_1D5C07390(v8);
}

uint64_t sub_1D614DDE4(uint64_t a1, uint64_t a2)
{
  sub_1D614DE48(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D614DE48(uint64_t a1)
{
  if (!qword_1EDF39E68)
  {
    sub_1D5B49474(255, qword_1EDF39E70, &protocol descriptor for ModernFeedGroupEmitterType);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF39E68);
    }
  }
}

void sub_1D614DEB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = v4[1];
  v11 = v4[2];
  sub_1D5C0C678(v6 + 32, &v72);
  sub_1D5C034F0(v83, &v55);
  sub_1D5C074F4(&v72);
  if (v59 <= 2u)
  {
    v12 = v58[1];
    sub_1D5B63F14(&v55, v91);
    __swift_project_boxed_opaque_existential_1(v91, v92);
    if (sub_1D725AA4C() == a1 && v13 == a2)
    {
    }

    else
    {
      v15 = sub_1D72646CC();

      if ((v15 & 1) == 0)
      {
        *a4 = v6;
        a4[1] = v10;
        a4[2] = v11;

LABEL_22:
        sub_1D5C07390(v10);
        __swift_destroy_boxed_opaque_existential_1(v91);
        return;
      }
    }

    if (*(v6 + 16))
    {
      sub_1D5C0C678(v6 + 32, &v55);
      v17 = v92;
      v16 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      (*(*(v16 + 8) + 64))(v17);
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000034, 0x80000001D73CB820);
      v18 = type metadata accessor for FeedContext(0);
      v19 = *(a3 + *(v18 + 24)) == 0;
      if (*(a3 + *(v18 + 24)))
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (v19)
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      MEMORY[0x1DA6F9910](v20, v21);

      v22 = v72;
      v23 = v73;
      v24 = *(&v55 + 1);
      v25 = v57;
      v51 = v56;
      v52 = v55;
      sub_1D614DDE4(v58, v76);
      v26 = v60;
      v27 = v61;
      v50 = v62;
      v49 = v63;
      v48 = v64;
      v47 = v65;
      v45 = v67;
      v46 = v66;
      sub_1D5B68374(v91, v83);
      v83[5] = v12;
      v83[6] = v22;
      v83[7] = v23;
      v84 = 3;
      v28 = v68;
      v29 = v69;
      v30 = v70;
      v31 = v71;
      sub_1D614E334(&v55, v53);
      v32 = swift_allocObject();
      v33 = v53[13];
      *(v32 + 208) = v53[12];
      *(v32 + 224) = v33;
      *(v32 + 240) = v53[14];
      *(v32 + 256) = v54;
      v34 = v53[9];
      *(v32 + 144) = v53[8];
      *(v32 + 160) = v34;
      v35 = v53[11];
      *(v32 + 176) = v53[10];
      *(v32 + 192) = v35;
      v36 = v53[5];
      *(v32 + 80) = v53[4];
      *(v32 + 96) = v36;
      v37 = v53[7];
      *(v32 + 112) = v53[6];
      *(v32 + 128) = v37;
      v38 = v53[1];
      *(v32 + 16) = v53[0];
      *(v32 + 32) = v38;
      v39 = v53[3];
      *(v32 + 48) = v53[2];
      *(v32 + 64) = v39;
      v72 = v52;
      v73 = v24;
      v74 = v51;
      v75 = v25;
      v76[5] = v26;
      v76[6] = v27;
      v77 = v50;
      v78 = v49;
      v79 = v48;
      v80 = v47;
      v81 = v46;
      v82 = v45;
      v85 = v28;
      v86 = v29;
      v87 = v30;
      v88 = v31;
      v89 = sub_1D614E3D8;
      v90 = v32;

      sub_1D614E398(v28, v29);
      sub_1D5C074F4(&v55);
      sub_1D614D52C();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D7273AE0;
      sub_1D614E334(&v72, v40 + 32);
      v41 = *(v6 + 16);
      v42 = v41 != 0;
      v43 = (2 * v41) | 1;
      *&v55 = v40;

      sub_1D6987410(v44, v6 + 32, v42, v43);
      sub_1D5C074F4(&v72);
      *a4 = v55;
      a4[1] = v10;
      a4[2] = v11;
      goto LABEL_22;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v59 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    sub_1D5BC3420(&v55);
  }

  *a4 = v6;
  a4[1] = v10;
  a4[2] = v11;

  sub_1D5C07390(v10);
}

unint64_t sub_1D614E398(unint64_t result, unint64_t a2)
{
  if (result)
  {

    return sub_1D5C07390(a2);
  }

  return result;
}

double sub_1D614E3DC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a1;
  v60 = a2;
  v57 = sub_1D72585BC();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v57 - v8;
  sub_1D614F57C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v57 - v16;
  v18 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = (&v57 - v25);
  v27 = v2[1];
  v71 = *v2;
  v72 = v27;
  v28 = v2[3];
  v73 = v2[2];
  v74 = v28;
  v75 = *(v2 + 64);
  v29 = *(&v71 + 1);
  if (v75 > 1u)
  {
    if (v75 != 2)
    {
LABEL_10:
      type metadata accessor for FormatPurchaseData(0);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      return result;
    }

    v32 = v72.n128_u64[0];
    v33 = v60;
    if ((v72.n128_u64[0] & 0xF000000000000007) == 0x7000000000000007)
    {
      v34 = v71;
      v35 = v24;
      v36 = type metadata accessor for FormatPostPurchaseData(0);
      (*(*(v36 - 8) + 56))(v13, 1, 1, v36);

LABEL_26:
      *v21 = v34;
      v21[1] = v29;
      sub_1D614F5D4(v13, v21 + *(v35 + 20), sub_1D614F57C);
      v48 = v21;
      goto LABEL_27;
    }

    v40 = (v72.n128_u64[0] >> 57) & 0x78 | v72.n128_u8[0] & 7;
    v34 = v71;
    v35 = v24;
    if (v40 == 95)
    {
      (*(v59 + 56))(v13, 2, 2, v57);
    }

    else
    {
      if (v40 != 127)
      {

        sub_1D614F63C(v32);
        v53 = v76;
        sub_1D6D4FCF8(v58, v32, v5);
        v54 = sub_1D614F680(v32);
        if (v53)
        {

          return result;
        }

        v55 = v5;
        v56 = v57;
        (*(v59 + 32))(v13, v55, v57, v54);
        (*(v59 + 56))(v13, 0, 2, v56);
        goto LABEL_25;
      }

      (*(v59 + 56))(v13, 1, 2, v57);
    }

LABEL_25:
    v49 = type metadata accessor for FormatPostPurchaseData(0);
    (*(*(v49 - 8) + 56))(v13, 0, 1, v49);
    goto LABEL_26;
  }

  if (v75)
  {
    if ((v74.n128_u64[1] & 0xF000000000000007) == 0x3000000000000007)
    {
      v37 = type metadata accessor for FormatPurchaseLandingPageData(0);
      (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
    }

    else
    {
      v65 = v71;
      v66 = v72;
      v67 = v73;
      v41 = v2[3];
      v69[2] = v2[2];
      v69[3] = v41;
      v70 = *(v2 + 64);
      v42 = *v2;
      v69[1] = v2[1];
      v68 = v74;
      v69[0] = v42;
      sub_1D614F6C4(v69, &v61);
      v43 = v60;
      v44 = v76;
      sub_1D6C14DEC(v58, v60);
      if (v44)
      {
        v61 = v65;
        v62 = v66;
        v63 = v67;
        v64 = v68;
        sub_1D614F778(&v61);
        return result;
      }

      v61 = v65;
      v62 = v66;
      v63 = v67;
      v64 = v68;
      sub_1D614F778(&v61);
      v46 = type metadata accessor for FormatPurchaseLandingPageData(0);
      (*(*(v46 - 8) + 56))(v43, 0, 1, v46);
    }

    goto LABEL_10;
  }

  if ((v71 & 0xF000000000000007) == 0x7000000000000007)
  {
    v30 = v24;
    v31 = type metadata accessor for FormatPostPurchaseData(0);
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
LABEL_22:
    *v26 = 0;
    v26[1] = 0;
    sub_1D614F5D4(v17, v26 + *(v30 + 20), sub_1D614F57C);
    v48 = v26;
    v33 = v60;
LABEL_27:
    sub_1D614F5D4(v48, v33, type metadata accessor for OsloSheetPurchaseDataModel);
    type metadata accessor for FormatPurchaseData(0);
    goto LABEL_28;
  }

  v38 = (v71 >> 57) & 0x78 | v71 & 7;
  v39 = v76;
  v30 = v24;
  if (v38 == 95)
  {
    (*(v59 + 56))(v17, 2, 2, v57, v72, v73, v74);
    goto LABEL_21;
  }

  if (v38 == 127)
  {
    (*(v59 + 56))(v17, 1, 2, v57, v72, v73, v74);
LABEL_21:
    v47 = type metadata accessor for FormatPostPurchaseData(0);
    (*(*(v47 - 8) + 56))(v17, 0, 1, v47);
    goto LABEL_22;
  }

  v50 = v71;
  sub_1D614F63C(v71);
  sub_1D6D4FCF8(v58, v50, v9);
  sub_1D614F7CC(&v71);
  if (!v39)
  {
    v51 = v59;
    v52 = v57;
    (*(v59 + 32))(v17, v9, v57);
    (*(v51 + 56))(v17, 0, 2, v52);
    goto LABEL_21;
  }

  return result;
}

BOOL _s8NewsFeed20FormatPurchaseActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v55 = *(a1 + 32);
  v56 = v2;
  v4 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v4;
  v5 = a2[3];
  v6 = a2[1];
  v60 = a2[2];
  v61 = v5;
  v7 = a2[1];
  v58 = *a2;
  v59 = v7;
  v8 = *(a1 + 48);
  v63[2] = v55;
  v63[3] = v8;
  v63[0] = v54[0];
  v63[1] = v3;
  v57 = *(a1 + 64);
  v62 = a2[4].i8[0];
  v64 = *(a1 + 64);
  v65 = v58;
  v69 = a2[4].i8[0];
  v68 = a2[3];
  v67 = v60;
  v66 = v6;
  v9 = v54[0];
  if (v57 <= 1u)
  {
    if (!v57)
    {
      if (!v62)
      {
        v10 = v58.i64[0];
        if ((*&v54[0] & 0xF000000000000007) == 0x7000000000000007)
        {
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F8F4(v63, sub_1D614F834);
          if ((v10 & 0xF000000000000007) == 0x7000000000000007)
          {
            sub_1D614F680(v9);
            return 1;
          }

          goto LABEL_33;
        }

        *&v41 = *&v54[0];
        if ((v58.i64[0] & 0xF000000000000007) == 0x7000000000000007)
        {
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F63C(v9);
          sub_1D614F8F4(v63, sub_1D614F834);
          sub_1D614F69C(v9);
LABEL_33:
          sub_1D614F680(v9);
          sub_1D614F680(v10);
          return 0;
        }

        v37.i64[0] = v58.i64[0];
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F63C(v9);
        v27 = _s8NewsFeed18FormatPostPurchaseO2eeoiySbAC_ACtFZ_0(&v41, &v37);
        sub_1D614F8F4(v63, sub_1D614F834);
        sub_1D614F7CC(&v58);
        sub_1D614F7CC(v54);
        sub_1D614F69C(v37.u64[0]);
        sub_1D614F69C(v41);
        sub_1D614F680(v9);
        return v27;
      }

      goto LABEL_24;
    }

    if (v62 == 1)
    {
      v12 = v61.i64[1];
      v29 = v56;
      v30 = v4;
      v28 = v55;
      if ((v56.i64[1] & 0xF000000000000007) == 0x3000000000000007)
      {
        v13 = a2;
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F8F4(v63, sub_1D614F834);
        if ((v12 & 0xF000000000000007) == 0x3000000000000007)
        {
          v45 = v9;
          v46 = v30;
          v47 = v28;
          v48 = v29;
          v14 = sub_1D614F728;
          v15 = &v45;
LABEL_22:
          sub_1D614F8F4(v15, v14);
          return 1;
        }
      }

      else
      {
        v41 = v54[0];
        v42 = v4;
        v43 = v55;
        v44 = v56;
        v37 = v54[0];
        v38 = v4;
        v39 = v55;
        v40 = v56;
        if ((v61.i64[1] & 0xF000000000000007) != 0x3000000000000007)
        {
          v25 = a2[1];
          v31 = *a2;
          v32 = v25;
          v33 = a2[2];
          *&v34 = a2[3].i64[0];
          *(&v34 + 1) = v61.i64[1];
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F6C4(&v41, &v45);
          v26 = _s8NewsFeed25FormatPurchaseLandingPageV2eeoiySbAC_ACtFZ_0(&v37, &v31);
          sub_1D614F8F4(v63, sub_1D614F834);
          sub_1D614F7CC(&v58);
          sub_1D614F7CC(v54);
          v35[0] = v31;
          v35[1] = v32;
          v35[2] = v33;
          v35[3] = v34;
          sub_1D614F778(v35);
          v36[0] = v37;
          v36[1] = v38;
          v36[2] = v39;
          v36[3] = v40;
          sub_1D614F778(v36);
          v45 = v9;
          v46 = v30;
          v47 = v28;
          v48 = v29;
          sub_1D614F8F4(&v45, sub_1D614F728);
          return v26;
        }

        v13 = a2;
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F6C4(&v41, &v45);
        sub_1D614F8F4(v63, sub_1D614F834);
        v45 = v37;
        v46 = v38;
        v47 = v39;
        v48 = v40;
        sub_1D614F778(&v45);
      }

      v45 = v9;
      v46 = v30;
      v47 = v28;
      v22 = *v13;
      v23 = v13[1];
      v48 = v29;
      v49 = v22;
      v24 = v13[2];
      v50 = v23;
      v51 = v24;
      v52 = v13[3].i64[0];
      v53 = v12;
      v19 = sub_1D614F890;
      v20 = &v45;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v57 != 2)
  {
    v16 = vorrq_s8(v56, v55);
    if (*&v54[0] | *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | v4 | *(&v54[0] + 1) | *(&v4 + 1))
    {
      if (v62 != 3)
      {
        goto LABEL_24;
      }

      if (v58.i64[0] != 1)
      {
        goto LABEL_24;
      }

      v17 = vorrq_s8(v60, v61);
      if (*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | v59.i64[1] | v59.i64[0] | v58.i64[1])
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v62 != 3)
      {
        goto LABEL_24;
      }

      v18 = vorrq_s8(vorrq_s8(v58, v60), vorrq_s8(v59, v61));
      if (vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
      {
        goto LABEL_24;
      }
    }

    v14 = sub_1D614F834;
    v15 = v63;
    goto LABEL_22;
  }

  if (v62 != 2)
  {
LABEL_24:
    sub_1D614F7FC(&v58, &v45);
    sub_1D614F7FC(v54, &v45);
    v19 = sub_1D614F834;
    v20 = v63;
LABEL_25:
    sub_1D614F8F4(v20, v19);
    return 0;
  }

  v41 = v54[0];
  *&v42 = v4;
  v37 = v58;
  *&v38 = v59.i64[0];
  sub_1D614F7FC(v54, &v45);
  sub_1D614F7FC(&v58, &v45);
  sub_1D614F7FC(&v58, &v45);
  sub_1D614F7FC(v54, &v45);
  v11 = _s8NewsFeed32FormatOsloSheetPurchaseDataModelV2eeoiySbAC_ACtFZ_0(&v41, &v37);
  sub_1D614F8F4(v63, sub_1D614F834);
  sub_1D614F7CC(&v58);
  sub_1D614F7CC(v54);
  return v11;
}

unint64_t sub_1D614F238(uint64_t a1)
{
  result = sub_1D614F260();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D614F260()
{
  result = qword_1EC884480;
  if (!qword_1EC884480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884480);
  }

  return result;
}

unint64_t sub_1D614F2B4(void *a1)
{
  a1[1] = sub_1D614F2EC();
  a1[2] = sub_1D614F340();
  result = sub_1D614F394();
  a1[3] = result;
  return result;
}

unint64_t sub_1D614F2EC()
{
  result = qword_1EDF2AD48;
  if (!qword_1EDF2AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD48);
  }

  return result;
}

unint64_t sub_1D614F340()
{
  result = qword_1EC884488;
  if (!qword_1EC884488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884488);
  }

  return result;
}

unint64_t sub_1D614F394()
{
  result = qword_1EC884490;
  if (!qword_1EC884490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884490);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatPostPurchaseO(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatPostPurchaseOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  v3 = (v1 >> 5) | (4 * v2);
  if (-v3 < -126 || v3 == 126)
  {
    v4 = -126;
  }

  else
  {
    v4 = -v3;
  }

  v5 = v4 + 126;
  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25FormatPurchaseLandingPageVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = (v1 >> 57) & 0x18 | v1 & 7;
  v3 = ((v1 >> 57) >> 5) | (4 * v2);
  if (-v3 < -125 || v3 == 125)
  {
    v4 = -125;
  }

  else
  {
    v4 = -v3;
  }

  v5 = v4 + 125;
  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed20FormatPurchaseActionO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t sub_1D614F4A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D614F4E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}